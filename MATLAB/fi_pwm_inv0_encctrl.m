function s = fi_pwm_inv0_encctrl(s, p)
% =========================================================================
% fi_pwm_inv0_encctrl.m
%
% 機能:
%   PWM割込タスク: エンコーダ処理・速度推定・dq角度演算
%
%   組み込みソフトの fi_pwm_inv0_encctrl.c に対応するMATLAB版関数。
%   エンコーダカウント値（シミュレーションでは実角度から生成）から
%   回転速度を推定し、dq軸制御に必要な角度・角周波数を演算する。
%
%   処理内容:
%     1) エンコーダカウント → 機械角変換
%     2) 角度PLL（位相ロックループ）による角速度推定
%     3) 速度LPF（ローパスフィルタ）処理
%     4) すべり角周波数指令の演算
%     5) 一次角周波数（インバータ周波数）の演算
%     6) dq軸角度の積分・更新
%     7) sin/cos の計算（dq変換用）
%
% 入力:
%   s   状態構造体（s.theta_mech, s.id_ref, s.iq_ref などを参照）
%   p   パラメータ構造体
%
% 出力:
%   s   更新後の状態構造体
%       - s.wr_pll_lpf   [rad/s]  速度推定値（LPF後）
%       - s.speed_lpf    [rpm]    速度推定値（rpm換算）
%       - s.wsl_ref      [rad/s]  すべり角周波数指令
%       - s.winv_ref     [rad/s]  一次角周波数（インバータ周波数）
%       - s.theta_dq     [rad]    dq軸角度（-π〜+π）
%       - s.sin_dq       [-]      sin(theta_dq)
%       - s.cos_dq       [-]      cos(theta_dq)
%
% データフロー:
%   s.theta_mech（プラント）→ [エンコーダ量子化] → [PLL] → s.wr_pll_lpf
%   s.wr_pll_lpf + s.wsl_ref → s.winv_ref → [積分] → s.theta_dq
%
% 呼び出し元:
%   im_vector_control_sim.m（PWM割込ごとに呼び出し）
% =========================================================================

% =========================================================================
% エンコーダカウント値の生成（シミュレーション用）
% =========================================================================
% 実機ではハードウェアエンコーダが生成するカウント値を読み取る。
% シミュレーションでは実際の機械角 s.theta_mech（プラントモデルが出力）を
% エンコーダ分解能で量子化して模擬する。
%
% エンコーダカウント: 0 〜 CNT_ENC0_MAX (= 255)
% 機械角 0 〜 2π に対応
%
% 組み込み: u2_cnt_inv0_ecd_get = u2_enca0_cnt_read(...)

% 機械角 → エンコーダカウント値に変換（量子化）
theta_mech_mod = mod(s.theta_mech, 2*pi);   % 0〜2πに正規化
cnt_enc = floor(theta_mech_mod / (2*pi) * (p.Cnt_enc_max + 1));
cnt_enc = max(0, min(cnt_enc, p.Cnt_enc_max));  % クランプ

% =========================================================================
% エンコーダカウント → 電気角（dq角の入力）への変換
% =========================================================================
% 量子化されたカウント値を float の角度値（0〜2π）に変換する。
% さらに極数比（Rezo_pole）を掛けて電気角に換算する。
%
% 組み込み:
%   f4_wt_inv0_dq_tmp = (float)cnt * (2π / (CNT_ENC0_MAX+1))

theta_enc_float = cnt_enc * (2*pi / (p.Cnt_enc_max + 1));   % エンコーダ角（機械角）[rad]
theta_enc_elec  = theta_enc_float * p.Rezo_pole;             % 電気角に換算 [rad]

% 電気角を 0〜2π に正規化
theta_enc_elec = mod(theta_enc_elec, 2*pi);

% さらに -π〜+π に変換（PLL処理のため）
s.theta_enc = theta_enc_elec;
if s.theta_enc > pi
    s.theta_enc = s.theta_enc - 2*pi;
end

% =========================================================================
% 角度PLL（位相ロックループ）による角速度推定
% =========================================================================
% 目的: 量子化ノイズを含むエンコーダ角度から滑らかな角速度を推定する。
%
% アルゴリズム:
%   1) PLL推定角 s.theta_pll とエンコーダ測定角 s.theta_enc の偏差を計算
%   2) 偏差が ±π を超えた場合は 2π 補正（折り返し処理）
%   3) 比例+積分（PI）フィルタで角速度誤差を計算
%   4) 角速度出力を積分して PLL推定角を更新
%
% 組み込み: KP_INV0_WRPLL = 1000, KI_INV0_WRPLL = 10000

% --- PLL角度誤差の計算 ---
theta_pll_err = s.theta_enc - s.theta_pll;

% 折り返し処理: エンコーダ値が 0→2π を跨いだ時の不連続を補正
if theta_pll_err > pi
    theta_pll_err = theta_pll_err - 2*pi;
elseif theta_pll_err < -pi
    theta_pll_err = theta_pll_err + 2*pi;
end

% --- PLL PI演算（比例+積分） ---
% 比例項
wr_pll_p = p.Kp_wrpll * theta_pll_err;

% 積分項（前回値に角速度偏差 × 積分ゲイン × 制御周期を加算）
s.wr_pll_i = s.wr_pll_i + (p.Ki_wrpll * theta_pll_err * p.Ts_pwm);

% 積分項の制限（ワインドアップ防止）
s.wr_pll_i = max(-p.Wr_pll_max, min(p.Wr_pll_max, s.wr_pll_i));

% PLL出力角速度（比例+積分の合計）
wr_pll_out = wr_pll_p + s.wr_pll_i;
wr_pll_out = max(-p.Wr_pll_max, min(p.Wr_pll_max, wr_pll_out));

% --- PLL推定角の更新（積分） ---
s.theta_pll = s.theta_pll + wr_pll_out * p.Ts_pwm;

% -π〜+π に正規化
if s.theta_pll > pi
    s.theta_pll = s.theta_pll - 2*pi;
elseif s.theta_pll < -pi
    s.theta_pll = s.theta_pll + 2*pi;
end

% =========================================================================
% 電気角速度の演算（極数比変換）
% =========================================================================
% PLL出力はセンサの角速度 [rad/s]。
% モータの電気角速度に変換するため、極数比（Rezo_pole）を掛ける。
%
% 組み込み: f4_wr_inv0_pll = f4_wr_inv0_enc_pll * (float)(MOT_INV0_REZO_POLE)

wr_elec = wr_pll_out * p.Rezo_pole;   % 電気角速度 [rad/s]

% =========================================================================
% 速度LPFフィルタ処理
% =========================================================================
% 電気角速度のノイズを除去するため、一次ローパスフィルタを適用する。
%
% 組み込み: f4_wclpf_inv0_wrpll = 800.0 [rad/s]
%
% 離散化 (オイラー前進法):
%   y[k+1] = y[k] + Ts * ωc * (x[k] - y[k])

s.wr_pll_lpf = s.wr_pll_lpf + p.Wclpf_wrpll * (wr_elec - s.wr_pll_lpf) * p.Ts_pwm;

% 速度の絶対値
s.wr_pll_lpf_abs = abs(s.wr_pll_lpf);

% rpm換算（プロット・モニタリング用）
% rpm = wr [rad/s] / (2π) * 60 / 極対数
s.speed_lpf = s.wr_pll_lpf / (2*pi) * 60.0 / p.Pp;

% =========================================================================
% すべり角周波数指令値の演算
% =========================================================================
% 誘導モータのすべり周波数:
%   wsl = R2 * iq_ref / (Lm * id_ref)
%      = R2 * iq_ref / fd_ref  （fd_ref = Lm * id_ref）
%
% 分母（二次磁束）がほぼゼロの場合はすべり周波数をゼロにする（ゼロ割り防止）
%
% 組み込み: f4_wsl_inv0_ref = f4_iq_inv0_ref * f4_r2_inv0_cmp / f4_fd_inv0_ref

if abs(s.fd_ref) > 1e-6
    s.wsl_ref = (s.iq_ref * p.R2) / s.fd_ref;
else
    s.wsl_ref = 0.0;
end

% すべり周波数の上下限クランプ
s.wsl_ref = max(-p.Wsl_max, min(p.Wsl_max, s.wsl_ref));

% =========================================================================
% 一次角周波数（インバータ周波数）の演算
% =========================================================================
% 一次角周波数 = 速度フィードバック（電気角速度）+ すべり角周波数指令
%
% 組み込み: f4_winv_inv0_ref = f4_wr_inv0_pll_lpf + f4_wsl_inv0_ref

s.winv_ref = s.wr_pll_lpf + s.wsl_ref;

% =========================================================================
% dq軸角度の積分・更新
% =========================================================================
% 一次角周波数を積分してdq軸角度を更新する。
% dq角度はPI制御・座標変換に使用する。
%
% 組み込み: f4_wt_inv0_dq = f4_wt_inv0_dq + f4_winv_inv0_ref * f4_ts_inv0_ctrl

s.theta_dq = s.theta_dq + s.winv_ref * p.Ts_pwm;

% -π〜+π に正規化
if s.theta_dq > pi
    s.theta_dq = s.theta_dq - 2*pi;
elseif s.theta_dq < -pi
    s.theta_dq = s.theta_dq + 2*pi;
end

% =========================================================================
% sin/cos の計算（dq座標変換用）
% =========================================================================
% dq⇔αβ座標変換（Park変換・逆Park変換）に使用する。
%
% 組み込み:
%   f4_sin_inv0_wtdq = sinf(f4_wt_inv0_dq)
%   f4_cos_inv0_wtdq = cosf(f4_wt_inv0_dq)

s.sin_dq = sin(s.theta_dq);
s.cos_dq = cos(s.theta_dq);

end
