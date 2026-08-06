function s = fi_pwm_inv0_encctrl(s, p)
% fi_pwm_inv0_encctrl — PWM-interrupt encoder / slip / electrical-angle update
%
% Mirrors  fi_pwm_inv0_encctrl()  in PE1/src/fi_pwm_inv0_encctrl.c.
%
% In the embedded software the encoder counter is read from hardware.
% In this simulation the rotor mechanical angle (s.theta_mech) is provided
% by the plant model; the PLL tracks it to produce a smoothed speed estimate.
%
% Processing order (matches embedded interrupt handler):
%   1) Rotor angle → dq_tmp (from plant model — replaces encoder read)
%   2) Speed PLL   (角速度PLL演算)
%   3) Slip frequency computation  (すべり周波数演算)
%        wsl = iq_ref * R2_cmp / (Lm * id_ref)   [rad/s]
%   4) Inverter primary frequency  (一次周波数指令値)
%        winv = wr_pll + wsl
%   5) dq-axis angle integration  (dq軸角度演算)
%        wt_dq += winv * Ts
%
% EMBEDDED CORRESPONDENCE: PE1/src/fi_pwm_inv0_encctrl.c

    Ts = p.TS_INV0_CTRL;

    % ================================================================
    % 1) Mechanical angle → electrical angle (replaces encoder read)
    % SIMPLIFIED PLANT: theta_mech [rad, mechanical] from plant model.
    % Electrical angle = pf * theta_mech (wrapped to [-pi, pi]).
    % ================================================================
    wt_dq_tmp = wrap_pi(s.theta_mech * p.PF_INV0);

    % ================================================================
    % 2) Speed PLL  (角速度PLL演算)
    %
    % Tracks wt_dq_tmp with a 2nd-order PLL to extract a smooth speed.
    % Matches: f4_wr_inv0_pll_lpf  (LPF'd electrical speed, rad/s)
    % ================================================================
    err = wrap_pi(wt_dq_tmp - s.wt_pll);

    s.wr_enc_pllp = p.KP_INV0_WRPLL * err;
    s.wr_enc_plli = s.wr_enc_plli + p.KI_INV0_WRPLL * err * Ts;
    s.wr_enc_plli = clamp(s.wr_enc_plli, p.WR_INV0_PLL_MAX, -p.WR_INV0_PLL_MAX);
    s.wr_enc_pll  = clamp(s.wr_enc_pllp + s.wr_enc_plli, ...
                          p.WR_INV0_PLL_MAX, -p.WR_INV0_PLL_MAX);

    s.wt_pll = wrap_pi(s.wt_pll + s.wr_enc_pll * Ts);

    % Electrical angular velocity of rotor (PLL output is already in
    % electrical rad/s because it tracked the electrical angle wt_dq_tmp)
    s.wr_pll = s.wr_enc_pll;

    % LPF on rotor speed  (f4_wr_inv0_pll_lpf)
    err = s.wr_pll - s.wr_pll_lpf;
    s.wr_pll_lpf = s.wr_pll_lpf + p.WCLPF_INV0_WRPLL * err * Ts;

    s.wr_pll_lpf_abs = abs(s.wr_pll_lpf);

    % Speed in rpm  (f4_speed_inv0_lpf)
    s.speed_lpf = s.wr_pll_lpf * (60.0 / (2*pi)) / p.PF_INV0;

    % ================================================================
    % 3) Slip frequency  (すべり周波数演算)
    %
    %   wsl = iq_ref * R2_cmp / fd_ref
    %       = iq_ref * R2_cmp / (Lm * id_ref)
    %
    % Matches embedded code (fi_pwm_inv0_encctrl.c):
    %   f4_wsl_inv0_ref = f4_iq_inv0_ref * f4_r2_inv0_cmp / f4_fd_inv0_ref;
    % ================================================================
    wsl_max = p.FSL_INV0_REF_MAX * 2 * pi;
    if s.fd_ref > 0
        wsl = s.iq_ref * s.r2_cmp / s.fd_ref;
    else
        wsl = 0;
    end
    s.wsl_ref = clamp(wsl, wsl_max, -wsl_max);

    % ================================================================
    % 4) Inverter primary frequency  (一次周波数指令値)
    %   winv = wr_pll_lpf + wsl
    % ================================================================
    s.winv_ref = s.wr_pll_lpf + s.wsl_ref;
    s.winv_ref_abs = abs(s.winv_ref);

    % ================================================================
    % 5) dq-axis angle integration  (dq軸角度演算)
    %   wt_dq += winv * Ts
    % ================================================================
    s.wt_dq = wrap_pi(s.wt_dq + s.winv_ref * Ts);
    s.sin_wtdq = sin(s.wt_dq);
    s.cos_wtdq = cos(s.wt_dq);
end

% ---- helpers -------------------------------------------------------
function v = wrap_pi(x)
    v = mod(x + pi, 2*pi) - pi;
end

function v = clamp(x, hi, lo)
    v = max(lo, min(hi, x));
end
