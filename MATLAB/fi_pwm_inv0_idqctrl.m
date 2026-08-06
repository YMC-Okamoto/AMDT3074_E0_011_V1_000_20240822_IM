function s = fi_pwm_inv0_idqctrl(s, p)
% fi_pwm_inv0_idqctrl — PWM-interrupt dq-axis current PI control
%
% Mirrors  fi_pwm_inv0_idqctrl()  in PE1/src/fi_pwm_inv0_idqctrl.c.
%
% Processing order (matches embedded interrupt handler):
%   1) UVW → αβ → dq current measurement  (dq軸電流検出値演算)
%   2) Power computation for torque estimation
%   3) Field-weakening PI  (弱め磁束制御演算)
%   4) R1/R2 temperature compensation  (抵抗温度補正演算)
%   5) Flux reference  (磁束指令値演算)
%   6) dq current command + vector limiting  (dq軸電流指令値演算)
%   7) Lm map update  (インダクタンス飽和特性演算)
%   8) PI gain computation  (dq軸電流PI制御演算)
%   9) PI control  (電流制御)
%  10) Non-interference / feedforward  (非干渉制御演算)
%  11) Voltage vector limiting  (dq軸電圧指令値制限)
%
% EMBEDDED CORRESPONDENCE: PE1/src/fi_pwm_inv0_idqctrl.c

    Ts = p.TS_INV0_CTRL;

    % ================================================================
    % 1) UVW → αβ → dq current measurement
    % (電流検出値 — Clarke + Park transform)
    %
    % Embedded normalisation (identical coefficients used in C code):
    %   ia = (iu - 0.5*(iv+iw)) * 0.816497   [αβ frame α component]
    %   ib = 0.5*(iv - iw)     * 1.414214
    %   id =  cos(wt)*ia + sin(wt)*ib
    %   iq = -sin(wt)*ia + cos(wt)*ib
    %
    % In this simulation the plant model provides id_meas / iq_meas
    % directly in the dq frame (eliminating the ABC→dq transform).
    % These are assigned here so later stages use consistent names.
    % ================================================================
    s.id_ad = s.id_meas;   % d-axis measured current  [A]
    s.iq_ad = s.iq_meas;   % q-axis measured current  [A]

    % ================================================================
    % 2) Output power for torque / DC-current estimation
    %    (電力演算 — used in fi_1ms_inv0_idqcom for tq_est)
    % ================================================================
    p123 = s.vd_ref * s.id_ad + s.vq_ref * s.iq_ad;
    err  = p123 - s.power_p123_lpf;
    s.power_p123_lpf = s.power_p123_lpf + p.WCLPF_INV0_P123 * err * Ts;
    s.power_p123 = p123;

    % ================================================================
    % 3) Field-weakening PI  (弱め磁束制御演算)
    %
    % Target: |Vdq| ≤ Vdc * 0.707 * k_vdq_vctrl
    % The FW controller output reduces id_ref when voltage saturates.
    % ================================================================
    vdq_vctrl = s.vdc_lpf * 0.707106 * p.K_INV0_VDQ_VCTRL;
    fw_err    = vdq_vctrl - s.vdq_ref;            % positive → no saturation

    if s.pwm_status == 1
        s.idq_vdqctrlp = p.KP_INV0_VDQCTRL * fw_err;
        s.idq_vdqctrli = s.idq_vdqctrli + p.KI_INV0_VDQCTRL * fw_err;
        s.idq_vdqctrli = clamp(s.idq_vdqctrli, 0, -s.idq_ctrl);
        idq_fw = clamp(s.idq_vdqctrlp + s.idq_vdqctrli, 0, -s.idq_ctrl);
    else
        s.idq_vdqctrlp = 0;
        s.idq_vdqctrli = 0;
        idq_fw = 0;
    end
    s.idq_vdqctrl = idq_fw;
    s.id_vdqctrl  = idq_fw;   % FW correction applied to d-axis only

    % ================================================================
    % 4) Resistance temperature compensation  (抵抗温度補正演算)
    %
    % Formula (copper thermal coefficient α = 0.00393):
    %   R_cmp = R_base * (1 + α * (T_now - T_ref))
    %
    % Flags ENABLE_INV0_R1_CMP / R2_CMP from params_inv0 (default = 0).
    % EMBEDDED: fi_pwm_inv0_idqctrl.c — R1/R2 temperature correction block.
    % NOTE: The embedded source has a copy-paste error in comments — the
    % second block is labelled "一次抵抗" but actually computes R2_cmp.
    % ================================================================
    if p.ENABLE_INV0_R1_CMP
        s.r1_cmp = p.R1_INV0 * (1 + p.ALPHA_COPPER * (s.tmp_mot_max - p.TMP_INV0_R1));
    else
        s.r1_cmp = p.R1_INV0;
    end
    if p.ENABLE_INV0_R2_CMP
        % (Secondary resistance — r2 — temperature correction)
        s.r2_cmp = p.R2_INV0 * (1 + p.ALPHA_COPPER * (s.tmp_mot_max - p.TMP_INV0_R2));
    else
        s.r2_cmp = p.R2_INV0;
    end

    % ================================================================
    % 5) Flux reference  (磁束指令値演算)
    %   fd_ref = Lm * id_ref   (secondary flux command)
    %   fq_ref = 0
    % ================================================================
    s.fd_ref = s.lm * s.id_ref;
    s.fq_ref = 0;

    % ================================================================
    % 6) dq current command + vector limiting  (dq軸電流指令値演算)
    % ================================================================
    % Apply field-weakening offset to d-axis
    id_cmd = s.id_ctrl + s.id_vdqctrl;
    id_cmd = clamp(id_cmd, p.ID_INV0_REF_MAX, p.ID_INV0_REF_MIN);
    iq_cmd = s.iq_ctrl;

    % Current vector limit  √(id²+iq²) ≤ IDQ_MAX
    idq_mag = hypot(id_cmd, iq_cmd);
    if idq_mag > p.IDQ_INV0_MAX
        % Limit iq while preserving id, matching embedded logic
        iq_lim = sqrt(max(0, p.IDQ_INV0_MAX^2 - id_cmd^2));
        iq_cmd  = sign(iq_cmd) * iq_lim;
    end

    s.id_ref   = id_cmd;
    s.iq_ref   = iq_cmd;
    s.idq_ref  = hypot(s.id_ref, s.iq_ref);
    s.idq_ctrl = s.idq_ref;   % used by FW controller on next cycle

    % ================================================================
    % 7) Lm map update  (インダクタンス飽和特性演算)
    % ================================================================
    if p.LM_INV0_MODE == 1
        s.lm = map_lm_1d_get(s.id_ref);
    else
        s.lm = p.LM_INV0;
    end

    % ================================================================
    % 8) PI gain computation  (dq軸電流PI制御ゲイン演算)
    %
    % Embedded formula:
    %   kp_idctrl = Ls * fs_ctrl * kp_idq_cmp * dk_modu_kp
    %   ki_idctrl = kp_idctrl * ki_idq_cmp * dk_modu_ki
    %
    % Here dk_modu_kp / ki = 1 (normal modulation range; over-modulation
    % gain droop is not simulated — marked as SIMPLIFIED PLANT).
    % ================================================================
    fs_ctrl = 1.0 / Ts;
    kp_idq  = p.KP_INV0_IDQ_CTRL_MAX;   % gain droop vs modulation index
    ki_idq  = p.KI_INV0_IDQ_CTRL_MAX;   % simplified: fixed gains

    s.kp_idctrl = p.LS_INV0 * fs_ctrl * kp_idq;
    s.ki_idctrl = s.kp_idctrl * ki_idq;
    s.kp_iqctrl = s.kp_idctrl;
    s.ki_iqctrl = s.ki_idctrl;

    % ================================================================
    % 9) PI current control  (dq軸電流制御)
    % ================================================================
    if s.pwm_status == 1

        % Error signals (proportional and integral use same reference here)
        id_err_p = s.id_ref - s.id_ad;
        iq_err_p = s.iq_ref - s.iq_ad;
        id_err_i = id_err_p;
        iq_err_i = iq_err_p;

        vdq_ctrl_max = p.VDQ_INV0_CTRL_MAX;

        % d-axis PI
        s.vd_ctrlp = id_err_p * s.kp_idctrl;
        if p.ENABLE_INV0_KICTRL
            s.vd_ctrli = s.vd_ctrli + s.ki_idctrl * id_err_i;
            s.vd_ctrli = clamp(s.vd_ctrli, vdq_ctrl_max, -vdq_ctrl_max);
        else
            s.vd_ctrli = 0;
        end
        s.vd_ctrl = clamp(s.vd_ctrlp + s.vd_ctrli, vdq_ctrl_max, -vdq_ctrl_max);

        % q-axis PI
        s.vq_ctrlp = iq_err_p * s.kp_iqctrl;
        if p.ENABLE_INV0_KICTRL
            s.vq_ctrli = s.vq_ctrli + s.ki_iqctrl * iq_err_i;
            s.vq_ctrli = clamp(s.vq_ctrli, vdq_ctrl_max, -vdq_ctrl_max);
        else
            s.vq_ctrli = 0;
        end
        s.vq_ctrl = clamp(s.vq_ctrlp + s.vq_ctrli, vdq_ctrl_max, -vdq_ctrl_max);

    else   % PWM stopped
        s.vd_ctrl  = 0;  s.vd_ctrlp = 0;  s.vd_ctrli = 0;
        s.vq_ctrl  = 0;  s.vq_ctrlp = 0;  s.vq_ctrli = 0;
    end

    % ================================================================
    % 10) Non-interference / feedforward  (非干渉制御演算)
    %
    % Embedded formulas (fi_pwm_inv0_idqctrl.c):
    %   vd_rs  = R1_cmp * id_ref           ← resistive drop, d-axis
    %   vq_rs  = R1_cmp * iq_ref           ← resistive drop, q-axis
    %   vd_emf = -winv * Ls * iq_ref       ← speed EMF, d-axis
    %   vq_emf =  winv * (Ls*id_ref + fd_ref) ← speed EMF, q-axis (fd=Lm*id)
    %   vd_ref_tmp = vd_ctrl + vd_emf + vd_rs
    %   vq_ref_tmp = vq_ctrl + vq_emf + vq_rs
    % ================================================================
    winv = s.winv_ref;

    s.vd_rs  = s.r1_cmp * s.id_ref;
    s.vq_rs  = s.r1_cmp * s.iq_ref;
    s.vd_emf = -winv * p.LS_INV0 * s.iq_ref;
    s.vq_emf =  winv * (p.LS_INV0 * s.id_ref + s.fd_ref);

    vdq_max = p.VDQ_INV0_CTRL_MAX;
    vd_tmp  = clamp(s.vd_ctrl + s.vd_emf + s.vd_rs, vdq_max, -vdq_max);
    vq_tmp  = clamp(s.vq_ctrl + s.vq_emf + s.vq_rs, vdq_max, -vdq_max);

    % ================================================================
    % 11) Voltage vector limiting  (dq軸電圧指令値制限)
    %
    %   Vdq_max = Vdc * 0.707 * K_VDQ_MAX
    %   if |Vdq| > Vdq_max → scale down the vector
    % ================================================================
    vdq_lim = s.vdc_ad * 0.707106 * p.K_INV0_VDQ_MAX;
    vdq_mag = hypot(vd_tmp, vq_tmp);

    if vdq_mag > vdq_lim && vdq_mag > 0
        vd_tmp = vd_tmp * vdq_lim / vdq_mag;
        vq_tmp = vq_tmp * vdq_lim / vdq_mag;
        s.flag_vdq_max = 1;
    else
        s.flag_vdq_max = 0;
    end

    s.vd_ref   = vd_tmp;
    s.vq_ref   = vq_tmp;
    s.vdq_ref  = hypot(s.vd_ref, s.vq_ref);
end

% ---- helper --------------------------------------------------------
function v = clamp(x, hi, lo)
    v = max(lo, min(hi, x));
end
