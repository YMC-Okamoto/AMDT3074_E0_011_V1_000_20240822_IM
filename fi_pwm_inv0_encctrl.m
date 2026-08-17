function s = fi_pwm_inv0_encctrl(s, p)
% fi_pwm_inv0_encctrl
% PWM割り込み周期で実行する、エンコーダ相当処理・すべり周波数計算・電気角更新
%
% 【この関数の目的】
% ベクトル制御に必要な「角度」と「速度」を更新し、次段の電流制御で使う
% 同期座標（dq座標）の回転角を生成することが主目的です。
%
% 本来の組み込み実装では、エンコーダカウンタをハードウェアから読み取り、
% そこから角度・速度を推定します。
% 一方このシミュレーションでは、プラントモデルから機械角 s.theta_mech が
% 与えられるため、それを使って同等の処理を行います。
%
% 【組み込みコード対応】
%   PE1/src/fi_pwm_inv0_encctrl.c の fi_pwm_inv0_encctrl() 相当
%
% 【処理の流れ（組み込み順序に合わせる）】
%   1) 機械角 → 電気角へ変換（実機のエンコーダ読取り代替）
%   2) PLLで角速度を平滑推定
%   3) すべり周波数を計算
%      wsl = iq_ref * R2_cmp / (Lm * id_ref) [rad/s]
%   4) 一次周波数指令（インバータ周波数）を計算
%      winv = wr_pll_lpf + wsl
%   5) dq座標角を積分更新
%      wt_dq += winv * Ts

    % 制御周期 [s]（PWM割り込み周期）
    Ts = p.TS_INV0_CTRL;

    % ================================================================
    % 1) 機械角 → 電気角変換（エンコーダ読取りの代替）
    % ================================================================
    % プラントから得た機械角 theta_mech [rad] を極対数 PF_INV0 倍して
    % 電気角へ変換します。角度は wrap_pi() で [-pi, pi] に折り返します。
    %
    %   電気角 = 機械角 × 極対数
    wt_dq_tmp = wrap_pi(s.theta_mech * p.PF_INV0);

    % ================================================================
    % 2) 角速度PLL演算
    % ================================================================
    % 目的：
    %   電気角 wt_dq_tmp をPLLで追従し、ノイズに強い速度推定値を得ること。
    %
    % 手順：
    %   - 位相誤差 err を算出
    %   - P項とI項を更新
    %   - I項および合成出力を上限下限で飽和
    %   - 出力角速度でPLL内部角を1ステップ進める
    %
    % ここで得られる wr_enc_pll は「電気角速度 [rad/s]」です。
    err = wrap_pi(wt_dq_tmp - s.wt_pll);

    % PLL比例項
    s.wr_enc_pllp = p.KP_INV0_WRPLL * err;

    % PLL積分項（時間積分）
    s.wr_enc_plli = s.wr_enc_plli + p.KI_INV0_WRPLL * err * Ts;

    % 積分飽和（アンチワインドアップの簡易形）
    s.wr_enc_plli = clamp(s.wr_enc_plli, p.WR_INV0_PLL_MAX, -p.WR_INV0_PLL_MAX);

    % PLL出力速度（比例 + 積分）も同様に飽和
    s.wr_enc_pll  = clamp(s.wr_enc_pllp + s.wr_enc_plli, ...
                          p.WR_INV0_PLL_MAX, -p.WR_INV0_PLL_MAX);

    % PLL追従角を更新（次サイクルの誤差計算に使用）
    s.wt_pll = wrap_pi(s.wt_pll + s.wr_enc_pll * Ts);

    % ロータ電気角速度（PLL出力）
    s.wr_pll = s.wr_enc_pll;

    % 速度LPF（f4_wr_inv0_pll_lpf 相当）
    % PLL出力に一次LPFをかけ、さらに安定した速度値を得ます。
    err = s.wr_pll - s.wr_pll_lpf;
    s.wr_pll_lpf = s.wr_pll_lpf + p.WCLPF_INV0_WRPLL * err * Ts;
    s.wr_pll_lpf_abs = abs(s.wr_pll_lpf);

    % 電気角速度 [rad/s] → 機械回転速度 [rpm] へ換算
    %   rpm = (wr_elec / PF) * 60 / (2*pi)
    s.speed_lpf = s.wr_pll_lpf * (60.0 / (2*pi)) / p.PF_INV0;

    % ================================================================
    % 3) すべり周波数演算
    % ================================================================
    % 誘導機の基本式に基づき、すべり周波数を算出します。
    %
    %   wsl = iq_ref * R2_cmp / fd_ref
    %       = iq_ref * R2_cmp / (Lm * id_ref)
    %
    % fd_ref がゼロ以下のときはゼロ除算回避のため wsl = 0 とします。
    % また、最終値は上限 wsl_max でクリップします。
    wsl_max = p.FSL_INV0_REF_MAX * 2 * pi;  % [rad/s]
    if s.fd_ref > 0
        wsl = s.iq_ref * s.r2_cmp / s.fd_ref;
    else
        wsl = 0;
    end
    s.wsl_ref = clamp(wsl, wsl_max, -wsl_max);

    % ================================================================
    % 4) 一次周波数指令値（インバータ電気角速度指令）
    % ================================================================
    % 同期角速度は「ロータ電気角速度 + すべり周波数」で決まります。
    %
    %   winv = wr_pll_lpf + wsl_ref
    s.winv_ref = s.wr_pll_lpf + s.wsl_ref;
    s.winv_ref_abs = abs(s.winv_ref);

    % ================================================================
    % 5) dq軸角度演算（角速度の積分）
    % ================================================================
    % dq制御で使う回転角を更新します。
    %
    %   wt_dq(k+1) = wt_dq(k) + winv_ref * Ts
    %
    % 角度は wrap_pi() で [-pi, pi] に正規化し続けます。
    s.wt_dq = wrap_pi(s.wt_dq + s.winv_ref * Ts);

    % 後段（座標変換・SVPWMなど）で使う三角関数を事前計算
    s.sin_wtdq = sin(s.wt_dq);
    s.cos_wtdq = cos(s.wt_dq);
end

% ---- 補助関数群 ----------------------------------------------------

function v = wrap_pi(x)
% 角度 x [rad] を [-pi, pi) の範囲へ折り返します。
% 角度の累積で値が発散しないようにするための標準処理です。
    v = mod(x + pi, 2*pi) - pi;
end

function v = clamp(x, hi, lo)
% 値 x を [lo, hi] の範囲に制限します（飽和処理）。
% 制御器の内部状態や指令値が過大にならないようにします。
    v = max(lo, min(hi, x));
end