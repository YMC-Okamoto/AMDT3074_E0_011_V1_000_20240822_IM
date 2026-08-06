function s = fi_pwm_inv0_svctrl(s, p)
% fi_pwm_inv0_svctrl — SVPWM voltage control
%
% Mirrors  fi_pwm_inv0_svctrl()  in PE1/src/fi_pwm_inv0_svctrl.c.
%
% Processing order (matches embedded interrupt handler):
%   1) Voltage coordinate transform  dq → αβ → UVW  (電圧座標変換)
%   2) Space-vector modulation  (空間ベクトル変調)
%   3) Compute modulation magnitudes (replaces HW timer write)
%
% The UVW voltage components are computed and the SVPWM algorithm applies
% a zero-sequence offset so that all three modulation indices fit within
% [-M_MAX, +M_MAX].
%
% EMBEDDED CORRESPONDENCE: PE1/src/fi_pwm_inv0_svctrl.c

    % ================================================================
    % 1) dq → αβ → UVW voltage transform
    %
    % Embedded (fi_pwm_inv0_svctrl.c):
    %   va = cos(wt)*vd - sin(wt)*vq        ← α component
    %   vb = sin(wt)*vd + cos(wt)*vq        ← β component
    %   vu = va * 0.816497                  ← (= √(2/3))
    %   vv = -va*0.408248 + vb*0.707107     ← (-1/√6 + j/√2)
    %   vw = -va*0.408248 - vb*0.707107
    % ================================================================
    c = s.cos_wtsvctrl;   % cos(wt_dq) from angle path
    sn = s.sin_wtsvctrl;  % sin(wt_dq)

    va = c  * s.vd_ref - sn * s.vq_ref;
    vb = sn * s.vd_ref +  c * s.vq_ref;

    s.va_ref = va;
    s.vb_ref = vb;

    vu = va  * 0.816496581;
    vv = va  * (-0.40824829) + vb * 0.70710678;
    vw = va  * (-0.40824829) - vb * 0.70710678;

    s.vu = vu;
    s.vv = vv;
    s.vw = vw;

    % ================================================================
    % 2) Space-vector modulation  (空間ベクトル変調演算)
    %
    % Embedded algorithm:
    %   mu_tmp = 2 * vu / Vdc
    %   mv_tmp = 2 * vv / Vdc
    %   mw_tmp = 2 * vw / Vdc
    %   offset = (max(mu,mv,mw) + min(mu,mv,mw)) / 2
    %   mu = (mu_tmp - offset) * k_modu     (zero-seq injection SV-PWM)
    %   mv = (mv_tmp - offset) * k_modu
    %   mw = (mw_tmp - offset) * k_modu
    % ================================================================
    dvdc = 1.0 / max(s.vdc_ad, 1e-3);   % 1/Vdc (f4_dvdc_inv0_ad)

    mu_tmp = 2.0 * vu * dvdc;
    mv_tmp = 2.0 * vv * dvdc;
    mw_tmp = 2.0 * vw * dvdc;

    m_max = max([mu_tmp, mv_tmp, mw_tmp]);
    m_min = min([mu_tmp, mv_tmp, mw_tmp]);
    offset = (m_max + m_min) * 0.5;

    k_modu = 1.0;   % SIMPLIFIED PLANT: over-modulation gain = 1
    M_MAX  = p.M_INV0_MAX;

    s.mu = clamp((mu_tmp - offset) * k_modu, M_MAX, -M_MAX);
    s.mv = clamp((mv_tmp - offset) * k_modu, M_MAX, -M_MAX);
    s.mw = clamp((mw_tmp - offset) * k_modu, M_MAX, -M_MAX);

    % Track modulation index magnitude (used by FW gain droop)
    m_lpf_in = hypot(mu_tmp, mv_tmp);   % approximate magnitude
    s.m_lpf = s.m_lpf + p.WCLPF_INV0_M * (m_lpf_in - s.m_lpf) * p.TS_INV0_CTRL;
end

% ---- helper --------------------------------------------------------
function v = clamp(x, hi, lo)
    v = max(lo, min(hi, x));
end
