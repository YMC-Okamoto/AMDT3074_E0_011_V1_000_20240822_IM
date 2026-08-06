function p = params_inv0()
% params_inv0 — Controller and motor parameters for inverter 0
%
% Mirrors the compile-time constants defined in PE1/src/fim_user_inv0.h.
% All values are taken directly from that header; see it for detailed
% unit and description comments.
%
% EMBEDDED CORRESPONDENCE: fim_user_inv0.h

    % ---------------------------------------------------------------
    % Motor parameters  (fim_user_inv0.h: PF_INV0, R1_INV0, ...)
    % ---------------------------------------------------------------
    p.PF_INV0          = 2.0;        % Number of pole pairs
    p.R1_INV0          = 0.0044;     % [Ω] Primary (stator) resistance
    p.R2_INV0          = 0.0023;     % [Ω] Secondary (rotor) resistance
    p.LS_INV0          = 0.00005;    % [H] Leakage inductance (sigma*(L1+L2))
    p.LM_INV0          = 0.00021;    % [H] Magnetising inductance (nominal)
    p.LM_INV0_MODE     = 1;          % 0: fixed Lm, 1: use Lm map

    % ---------------------------------------------------------------
    % Temperature-compensation flags and reference temperatures
    % EMBEDDED: u1_flag_enable_inv0_r1_cmp / r2_cmp  (0 = disabled)
    % ---------------------------------------------------------------
    p.ENABLE_INV0_R1_CMP = 0;        % 1 → apply R1 temperature correction
    p.ENABLE_INV0_R2_CMP = 0;        % 1 → apply R2 temperature correction
    p.TMP_INV0_R1        = 25.6;     % [°C] R1 reference temperature
    p.TMP_INV0_R2        = 25.6;     % [°C] R2 reference temperature
    % Copper temperature coefficient (used in correction formula)
    p.ALPHA_COPPER       = 0.00393;  % [1/°C]

    % ---------------------------------------------------------------
    % Current limits  (fim_user_inv0.h: IDQ_INV0_MAX, ID_INV0_REF_MIN/MAX)
    % ---------------------------------------------------------------
    p.IDQ_INV0_MAX     = 10.0 * 1.732051;  % [A] Peak current vector limit
    p.ID_INV0_REF_MIN  = 3.0;              % [A] Minimum d-axis current ref
    p.ID_INV0_REF_MAX  = p.IDQ_INV0_MAX;  % [A] Maximum d-axis current ref

    % ---------------------------------------------------------------
    % PWM / control timing
    % ---------------------------------------------------------------
    p.FC_PWM_INV0      = 10000;      % [Hz] PWM carrier frequency
    p.TS_INV0_CTRL     = 1 / p.FC_PWM_INV0;   % [s] PWM interrupt period
    p.TS_1MS           = 0.001;      % [s] 1 ms task period

    % ---------------------------------------------------------------
    % dq current PI gains  (fim_user_inv0.h: KP_INV0_IDQ_CTRL_MAX …)
    % The embedded code computes:
    %   kp_idctrl = Ls * fs_ctrl * kp_idq_cmp * dk_modu_kp
    %   ki_idctrl = kp_idctrl * ki_idq_cmp * dk_modu_ki
    % Here we fold everything into single Kp/Ki values for clarity.
    % ---------------------------------------------------------------
    p.KP_INV0_IDQ_CTRL_MAX = 0.10;   % dimensionless Kp normalised gain
    p.KP_INV0_IDQ_CTRL_MIN = 0.10;
    p.KI_INV0_IDQ_CTRL_MAX = 0.10;   % dimensionless Ki normalised gain
    p.KI_INV0_IDQ_CTRL_MIN = 0.10;
    % Modulation-rate thresholds for gain droop
    p.LEV_M_KP_INV0_IDQ_CTRL_MAX = 0.85;
    p.LEV_M_KP_INV0_IDQ_CTRL_MIN = 0.99;
    p.LEV_M_KI_INV0_IDQ_CTRL_MAX = 1.00;
    p.LEV_M_KI_INV0_IDQ_CTRL_MIN = 1.10;

    % ---------------------------------------------------------------
    % Voltage limits  (fim_user_inv0.h: VDQ_INV0_CTRL_MAX, K_INV0_VDQ_MAX)
    % ---------------------------------------------------------------
    p.VDQ_INV0_CTRL_MAX = 300.0;    % [V] Integrator clamping limit
    p.K_INV0_VDQ_MAX    = 1.20;     % Voltage vector limit factor
    p.K_INV0_VDQ_VCTRL  = 1.13;     % Field-weakening voltage ratio
    p.ENABLE_INV0_KICTRL = 1;        % 1 → integral enabled

    % ---------------------------------------------------------------
    % Field-weakening PI (fim_user_inv0.h: KP_INV0_VDQCTRL …)
    % ---------------------------------------------------------------
    p.KP_INV0_VDQCTRL  = 0.001;     % Proportional gain (FW)
    p.KI_INV0_VDQCTRL  = 0.0001;    % Integral gain (FW) — per PWM step

    % ---------------------------------------------------------------
    % Speed PI  (fim_user_inv0.h: KP_INV0_WRCTRL …)
    % ---------------------------------------------------------------
    p.ENABLE_INV0_WRCTRL     = 0;    % 0 → torque command, 1 → speed control
    p.KP_INV0_WRCTRL         = 0.05;
    p.KI_INV0_WRCTRL         = 0.00005;
    p.ENABLE_INV0_WRLIMITCTRL = 0;

    % ---------------------------------------------------------------
    % Angle PLL  (fim_user_inv0.h: KP_INV0_WRPLL …)
    % ---------------------------------------------------------------
    p.KP_INV0_WRPLL    = 1000.0;    % [rad/s / rad]
    p.KI_INV0_WRPLL    = 10000.0;   % [rad/s^2 / rad]
    p.WCLPF_INV0_WRPLL = 800.0;     % [rad/s] speed LPF cut-off
    p.WR_INV0_PLL_MAX  = 20000.0;   % [rad/s] PLL speed limit

    % ---------------------------------------------------------------
    % Slip frequency limit
    % ---------------------------------------------------------------
    p.FSL_INV0_REF_MAX = 20.0;      % [Hz] Slip frequency limit

    % ---------------------------------------------------------------
    % Torque command ramp rates and limits
    % ---------------------------------------------------------------
    p.DTQ_INV0_REF_UP  = 10000.0;   % [Nm/s] Torque ramp rate
    p.MODE_INV0_IDQCOM = 1;          % 1 → torque-map mode (normal), 0 → irms/theta

    % ---------------------------------------------------------------
    % Torque estimation LPF cut-off
    % ---------------------------------------------------------------
    p.WCLPF_INV0_P123         = 200.0;  % [rad/s]
    p.LEV_INV0_SPEED_TQ_EST_CTRL = 100.0; % [rpm] below → motor param estimate

    % ---------------------------------------------------------------
    % Thermal derating limits  (fim_user_inv0.h: TMP_INV0_*)
    % ---------------------------------------------------------------
    p.TMP_INV0_IGBT_LIMIT_START = 90.0;   % [°C]
    p.TMP_INV0_IGBT_LIMIT_FIN   = 100.0;  % [°C]
    p.TMP_INV0_MOT1_LIMIT_START = 120.0;  % [°C]
    p.TMP_INV0_MOT1_LIMIT_FIN   = 130.0;  % [°C]
    p.TMP_INV0_MOT2_LIMIT_START = 120.0;  % [°C]
    p.TMP_INV0_MOT2_LIMIT_FIN   = 130.0;  % [°C]

    % ---------------------------------------------------------------
    % SVPWM modulation  (fim_user_inv0.h: M_INV0_MAX, K_INV0_MODU_MAX)
    % ---------------------------------------------------------------
    p.M_INV0_MAX        = 1.10;     % Max modulation index
    p.K_INV0_MODU_MAX   = 27.259;   % PWM modulation gain

    % ---------------------------------------------------------------
    % DC bus nominal (simulation default — not in header)
    % ---------------------------------------------------------------
    p.VDC_NOM           = 48.0;     % [V] Nominal DC bus voltage
end
