function s = fi_pwm_inv0_svctrl(s, p)
% fi_pwm_inv0_svctrl
% PWM割り込み周期で実行する SVPWM（空間ベクトルPWM）演算
%
% 【この関数の目的】
% dq軸で作成した電圧指令（vd_ref, vq_ref）を、
% 実際に三相インバータへ与えるための三相変調指令（mu, mv, mw）へ変換します。
%
% 流れとしては次の3段です：
%   1) 座標変換：dq → αβ → UVW
%   2) SVPWM演算：零相オフセット注入（zero-sequence injection）
%   3) 変調率の大きさ指標を更新（監視・ゲイン補正用途）
%
% 【組み込みコード対応】
%   PE1/src/fi_pwm_inv0_svctrl.c の fi_pwm_inv0_svctrl() 相当
%
% 【補足】
% 実機ではこの後、PWMタイマレジスタへデューティを書き込みますが、
% 本シミュレーションでは「最終的な変調指令値（mu,mv,mw）の算出」までを行います。

    % ================================================================
    % 1) dq → αβ → UVW 電圧座標変換
    % ================================================================
    % まず dq電圧を回転座標から固定座標（αβ）へ戻します。
    %   va = cos(wt)*vd - sin(wt)*vq   （α成分）
    %   vb = sin(wt)*vd + cos(wt)*vq   （β成分）
    %
    % その後 αβ → 三相（UVW）へ変換します。
    % 係数は組み込み実装に合わせた定数です。
    c  = s.cos_wtsvctrl;   % cos(wt_dq)
    sn = s.sin_wtsvctrl;   % sin(wt_dq)

    % dq → αβ
    va = c  * s.vd_ref - sn * s.vq_ref;
    vb = sn * s.vd_ref +  c * s.vq_ref;

    % ログ・デバッグ用に保持
    s.va_ref = va;
    s.vb_ref = vb;

    % αβ → UVW（三相電圧指令）
    % 0.816496581 ≒ sqrt(2/3)
    vu = va  * 0.816496581;
    vv = va  * (-0.40824829) + vb * 0.70710678;
    vw = va  * (-0.40824829) - vb * 0.70710678;

    s.vu = vu;
    s.vv = vv;
    s.vw = vw;

    % ================================================================
    % 2) 空間ベクトル変調（SVPWM）
    % ================================================================
    % 手順：
    %   (a) 三相電圧をDCバス電圧で正規化し、暫定変調率 mu_tmp等を作る
    %   (b) 3相の最大値・最小値から offset を求める
    %   (c) 全相から offset を引く（零相成分注入）ことで、
    %       各相の変調率を許容範囲内に収めやすくする
    %   (d) 最終的に上限 M_MAX でクリップ
    %
    % dvdc は 1/Vdc。Vdcゼロ近傍の除算不安定を避けるため下限を設けます。
    dvdc = 1.0 / max(s.vdc_ad, 1e-3);   % [1/V]

    % 暫定変調率（正規化）
    mu_tmp = 2.0 * vu * dvdc;
    mv_tmp = 2.0 * vv * dvdc;
    mw_tmp = 2.0 * vw * dvdc;

    % 零相オフセット計算
    m_max  = max([mu_tmp, mv_tmp, mw_tmp]);
    m_min  = min([mu_tmp, mv_tmp, mw_tmp]);
    offset = (m_max + m_min) * 0.5;

    % 変調ゲイン
    % 本モデルでは過変調領域の補正を簡略化し、1.0固定とします。
    k_modu = 1.0;
    M_MAX  = p.M_INV0_MAX;  % 許容変調率上限

    % 零相注入後に上限クリップして最終変調率を得る
    s.mu = clamp((mu_tmp - offset) * k_modu, M_MAX, -M_MAX);
    s.mv = clamp((mv_tmp - offset) * k_modu, M_MAX, -M_MAX);
    s.mw = clamp((mw_tmp - offset) * k_modu, M_MAX, -M_MAX);

    % ================================================================
    % 3) 変調率指標の更新（LPF）
    % ================================================================
    % 変調率の大きさ指標（m_lpf）を更新します。
    % これは弱め界磁時のゲイン調整や監視用途で使われることがあります。
    %
    % ここでは簡易的に hypot(mu_tmp, mv_tmp) を入力としてLPFしています。
    m_lpf_in = hypot(mu_tmp, mv_tmp);
    s.m_lpf = s.m_lpf + p.WCLPF_INV0_M * (m_lpf_in - s.m_lpf) * p.TS_INV0_CTRL;
end

% ---- 補助関数 ------------------------------------------------------
function v = clamp(x, hi, lo)
% 値 x を [lo, hi] に制限する飽和関数
% PWM変調率の上限逸脱を防ぐために使用します。
    v = max(lo, min(hi, x));
end