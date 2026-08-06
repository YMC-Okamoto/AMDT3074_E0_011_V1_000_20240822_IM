% im_vector_control_sim.m  —  Main simulation entry script
%
% Induction Motor Vector-Control Simulation
% Mirrors the dual-rate control architecture of the embedded software:
%   • 100 µs  PWM-interrupt: encctrl → idqctrl → svctrl → plant
%   • 1 ms    timer task   : idqcom  (torque limits, current commands)
%
% Usage:
%   Run this script directly in MATLAB.  All parameters are loaded from
%   params_inv0.m.  Edit the "Scenario" section below to change the
%   torque profile or simulation duration.
%
% EMBEDDED CORRESPONDENCE:
%   PE1/src/fi_pwm_inv0_encctrl.c   → fi_pwm_inv0_encctrl()
%   PE1/src/fi_pwm_inv0_idqctrl.c   → fi_pwm_inv0_idqctrl()
%   PE1/src/fi_pwm_inv0_svctrl.c    → fi_pwm_inv0_svctrl()
%   PE1/src/fi_1ms_inv0_idqcom.c    → fi_1ms_inv0_idqcom()
%
%   plant_model_im()  is a SIMPLIFIED PLANT MODEL (no embedded counterpart).
%
% Assumptions that differ from embedded code:
%   • No real encoder hardware; rotor speed estimated from plant dynamics.
%   • Vdc treated as constant (ideal DC bus).
%   • ADC current sensing noise not modelled.
%   • No dead-time compensation.
%   • Coordinate transforms in idqctrl use plant dq currents directly
%     (Clarke+Park not needed in simulation).
%   See README_simulation.md for a full list.

clear; clc; close all;

%% =====================================================================
%  1. Load parameters
% ======================================================================
p = params_inv0();

%% =====================================================================
%  2. Scenario — edit here
% ======================================================================
T_SIM      = 2.0;        % [s]   Total simulation time
TQ_PROFILE = @(t) ...    % [Nm]  External torque reference profile
    (t <  0.2) * 0.0 + ...
    (t >= 0.2 & t < 1.0) * 30.0 + ...
    (t >= 1.0 & t < 1.5) * 50.0 + ...
    (t >= 1.5) * 20.0;

% Load torque profile (constant for this example)
LOAD_PROFILE = @(t) 5.0;  % [Nm]  Mechanical load torque

% DC bus voltage
VDC = 48.0;               % [V]

% Initial motor temperature / reference resistance temperature [°C]
T_MOT_INIT = 25.0;        % °C  (matches fim_user_inv0.h TMP_INV0_R1 = 25)
T_R1_REF   = p.TMP_INV0_R1;
T_R2_REF   = p.TMP_INV0_R2;

% Control mode (SIMPLIFIED PLANT: always torque-map mode = 1)
CTRL_MODE  = 1;           % 0 = irms/angle mode, 1 = torque-map mode

%% =====================================================================
%  3. Timing
% ======================================================================
Ts_pwm  = p.TS_INV0_CTRL;             % 100 µs  PWM interrupt period
Ts_1ms  = p.TS_INV0_CTRL * 10;        % 1 ms   task period
N_SIM   = round(T_SIM / Ts_pwm);      % Total PWM steps
N_1MS   = round(Ts_1ms / Ts_pwm);     % PWM steps per 1 ms task (= 10)

%% =====================================================================
%  4. State initialisation
%     Mirrors global work variables in fim_gwork_inv0.h
% ======================================================================
s = struct();

% Plant state (SIMPLIFIED PLANT)
s.id_meas       = 0.0;   % [A]   d-axis current (measured)
s.iq_meas       = 0.0;   % [A]   q-axis current (measured)
s.omega_mech    = 0.0;   % [rad/s] rotor mechanical speed
s.theta_mech    = 0.0;   % [rad]   rotor mechanical angle
s.speed_mech_rpm= 0.0;   % [rpm]
s.tq_plant      = 0.0;   % [Nm]  plant electrical torque
s.tq_load       = 5.0;   % [Nm]  load torque (overwritten each step)
s.J             = 0.05;  % [kg·m²] rotor inertia — SIMPLIFIED PLANT

% Motor model parameters (updated by encctrl/idqctrl each cycle)
s.r1_cmp        = p.R1_INV0;
s.r2_cmp        = p.R2_INV0;
s.lm            = p.LM_INV0;

% DC bus (ideal — SIMPLIFIED PLANT)
s.vdc_ad        = VDC;

% Motor temperature (constant for this scenario — SIMPLIFIED PLANT)
s.tmp_mot_max   = T_MOT_INIT;

% Torque/current command state (1 ms task)
s.tq_ref_ext    = 0.0;   % [Nm]  external torque request
s.tq_ref        = 0.0;   % [Nm]  f4_tq_inv0_ref
s.tq_ref_tmp    = 0.0;   % [Nm]  f4_tq_inv0_ref_tmp (rate-limited)
s.id_ctrl       = p.ID_INV0_MIN;  % [A]  f4_id_inv0_ctrl
s.iq_ctrl       = 0.0;   % [A]  f4_iq_inv0_ctrl
s.tq_est        = 0.0;   % [Nm] f4_tq_inv0_est  (LPF output)
s.idc_est       = 0.0;   % [A]  f4_idc_inv0_est (LPF output)
s.tq_ref_max    = 0.0;   % [Nm] f4_tq_inv0_ref_max
s.tq_ref_min    = 0.0;   % [Nm] f4_tq_inv0_ref_min
s.ctrl_mode     = CTRL_MODE;

% Encoder / angle state (PWM interrupt)
s.wt_dq         = 0.0;   % [rad] electrical angle (integrator)
s.sin_wt        = 0.0;
s.cos_wt        = 1.0;
s.sin_wtsvctrl  = 0.0;
s.cos_wtsvctrl  = 1.0;
s.winv_ref      = 0.0;   % [rad/s] inverter electrical frequency
s.wsl_ref       = 0.0;   % [rad/s] slip frequency
s.wr_pll        = 0.0;   % [rad/s] rotor PLL speed
s.wr_pll_lpf    = 0.0;   % [rad/s] PLL speed LPF
s.wr_pll_intg   = 0.0;   % PLL integrator state
s.fd_ref        = p.LM_INV0 * p.ID_INV0_MIN;  % [Wb] flux reference

% idq PI controller state (PWM interrupt)
s.id_intg       = 0.0;   % d-axis integrator
s.iq_intg       = 0.0;   % q-axis integrator
s.id_ref        = p.ID_INV0_MIN;
s.iq_ref        = 0.0;
s.vd_ref        = 0.0;   % [V] d-axis voltage reference
s.vq_ref        = 0.0;   % [V] q-axis voltage reference
s.va_ref        = 0.0;   % [V] α-axis
s.vb_ref        = 0.0;   % [V] β-axis
s.pwr_lpf       = 0.0;   % Power LPF state
s.fw_intg       = 0.0;   % Field-weakening integrator
s.fw_id_cmp     = 0.0;   % FW id compensation
s.m_lpf         = 0.0;   % Modulation index LPF

% SVPWM output
s.vu = 0.0; s.vv = 0.0; s.vw = 0.0;
s.mu = 0.0; s.mv = 0.0; s.mw = 0.0;

% Enable flags (mirrors u1_flag_enable_* in embedded code)
s.flag_r1_cmp   = p.ENABLE_INV0_R1_CMP;
s.flag_r2_cmp   = p.ENABLE_INV0_R2_CMP;

%% =====================================================================
%  5. Logging arrays
% ======================================================================
LOG_T   = zeros(1, N_SIM);
LOG_TQ_REF = zeros(1, N_SIM);
LOG_TQ_EST = zeros(1, N_SIM);
LOG_TQ_PLANT = zeros(1, N_SIM);
LOG_ID_REF = zeros(1, N_SIM);
LOG_IQ_REF = zeros(1, N_SIM);
LOG_ID_MEAS = zeros(1, N_SIM);
LOG_IQ_MEAS = zeros(1, N_SIM);
LOG_VD = zeros(1, N_SIM);
LOG_VQ = zeros(1, N_SIM);
LOG_VA = zeros(1, N_SIM);
LOG_VB = zeros(1, N_SIM);
LOG_MU = zeros(1, N_SIM);
LOG_MV = zeros(1, N_SIM);
LOG_MW = zeros(1, N_SIM);
LOG_RPM = zeros(1, N_SIM);
LOG_WSL = zeros(1, N_SIM);
LOG_WINV = zeros(1, N_SIM);
LOG_WTQ  = zeros(1, N_SIM);
LOG_LM   = zeros(1, N_SIM);

%% =====================================================================
%  6. Main simulation loop
% ======================================================================
fprintf('Starting simulation: %.1f s, Ts_pwm=%.0f µs ...\n', T_SIM, Ts_pwm*1e6);
t_now = 0.0;

for k = 1:N_SIM
    t_now = (k-1) * Ts_pwm;

    % -- Update external inputs each step ----------------------------
    s.tq_ref_ext = TQ_PROFILE(t_now);
    s.tq_load    = LOAD_PROFILE(t_now);

    % ----------------------------------------------------------------
    % 6a)  1 ms task  (fires once every N_1MS PWM cycles)
    %      Mirrors: fi_1ms_inv0_idqcom() in fi_1ms_inv0_idqcom.c
    % ----------------------------------------------------------------
    if mod(k-1, N_1MS) == 0
        s = fi_1ms_inv0_idqcom(s, p);
    end

    % ----------------------------------------------------------------
    % 6b)  PWM interrupt — encoder / angle / slip
    %      Mirrors: fi_pwm_inv0_encctrl() in fi_pwm_inv0_encctrl.c
    %
    %      SIMPLIFIED PLANT: rotor speed from mechanical integrator
    %      instead of hardware encoder.
    % ----------------------------------------------------------------
    s.wr_pll = s.omega_mech * p.PF_INV0;  % electrical rotor speed (rad/s)
    s = fi_pwm_inv0_encctrl(s, p);

    % ----------------------------------------------------------------
    % 6c)  PWM interrupt — dq current PI control
    %      Mirrors: fi_pwm_inv0_idqctrl() in fi_pwm_inv0_idqctrl.c
    % ----------------------------------------------------------------
    s = fi_pwm_inv0_idqctrl(s, p);

    % ----------------------------------------------------------------
    % 6d)  PWM interrupt — SVPWM generation
    %      Mirrors: fi_pwm_inv0_svctrl() in fi_pwm_inv0_svctrl.c
    % ----------------------------------------------------------------
    s = fi_pwm_inv0_svctrl(s, p);

    % ----------------------------------------------------------------
    % 6e)  Plant model — induction motor dynamics
    %      *** SIMPLIFIED PLANT MODEL — no embedded counterpart ***
    % ----------------------------------------------------------------
    s = plant_model_im(s, p, Ts_pwm);

    % ----------------------------------------------------------------
    % 6f)  Logging
    % ----------------------------------------------------------------
    LOG_T(k)        = t_now;
    LOG_TQ_REF(k)   = s.tq_ref_tmp;
    LOG_TQ_EST(k)   = s.tq_est;
    LOG_TQ_PLANT(k) = s.tq_plant;
    LOG_ID_REF(k)   = s.id_ref;
    LOG_IQ_REF(k)   = s.iq_ref;
    LOG_ID_MEAS(k)  = s.id_meas;
    LOG_IQ_MEAS(k)  = s.iq_meas;
    LOG_VD(k)       = s.vd_ref;
    LOG_VQ(k)       = s.vq_ref;
    LOG_VA(k)       = s.va_ref;
    LOG_VB(k)       = s.vb_ref;
    LOG_MU(k)       = s.mu;
    LOG_MV(k)       = s.mv;
    LOG_MW(k)       = s.mw;
    LOG_RPM(k)      = s.speed_mech_rpm;
    LOG_WSL(k)      = s.wsl_ref;
    LOG_WINV(k)     = s.winv_ref;
    LOG_WTQ(k)      = s.wt_dq;
    LOG_LM(k)       = s.lm;
end

fprintf('Simulation complete.\n');

%% =====================================================================
%  7. Plotting
% ======================================================================
figure('Name','IM Vector Control — Torque & Speed','NumberTitle','off');

subplot(3,1,1);
plot(LOG_T, LOG_TQ_REF,'b--', LOG_T, LOG_TQ_EST,'r-', LOG_T, LOG_TQ_PLANT,'k-');
ylabel('Torque [Nm]'); legend('Tq ref','Tq est','Tq plant'); grid on;
title('Torque');

subplot(3,1,2);
plot(LOG_T, LOG_RPM,'k-');
ylabel('Speed [rpm]'); xlabel('Time [s]'); grid on;
title('Rotor Speed');

subplot(3,1,3);
plot(LOG_T, LOG_WSL,'b-', LOG_T, LOG_WINV,'r-');
ylabel('[rad/s]'); xlabel('Time [s]'); legend('\omega_{sl}','\omega_{inv}'); grid on;
title('Slip / Inverter frequency');

figure('Name','IM Vector Control — dq Currents','NumberTitle','off');

subplot(2,1,1);
plot(LOG_T, LOG_ID_REF,'b--', LOG_T, LOG_ID_MEAS,'b-');
ylabel('id [A]'); legend('id ref','id meas'); grid on; title('d-axis Current');

subplot(2,1,2);
plot(LOG_T, LOG_IQ_REF,'r--', LOG_T, LOG_IQ_MEAS,'r-');
ylabel('iq [A]'); xlabel('Time [s]'); legend('iq ref','iq meas'); grid on;
title('q-axis Current');

figure('Name','IM Vector Control — dq Voltages','NumberTitle','off');

subplot(2,1,1);
plot(LOG_T, LOG_VD,'b-', LOG_T, LOG_VQ,'r-');
ylabel('Voltage [V]'); legend('vd','vq'); grid on; title('dq Voltage References');

subplot(2,1,2);
plot(LOG_T, LOG_MU,'b-', LOG_T, LOG_MV,'g-', LOG_T, LOG_MW,'r-');
ylabel('Modulation'); xlabel('Time [s]'); legend('mu','mv','mw'); grid on;
title('SVPWM Modulation Indices');

figure('Name','IM Vector Control — Lm','NumberTitle','off');
plot(LOG_T, LOG_LM * 1e3);
ylabel('Lm [mH]'); xlabel('Time [s]'); grid on;
title('Magnetising Inductance (Lm map output)');
