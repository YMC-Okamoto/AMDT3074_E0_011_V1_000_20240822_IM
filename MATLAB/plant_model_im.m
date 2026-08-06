function s = plant_model_im(s, p, Ts)
% plant_model_im — Simplified induction-motor plant model
%
% *** SIMPLIFIED PLANT MODEL — not embedded code ***
%
% This function approximates the electrical and mechanical behaviour of
% an induction motor driven by the dq-frame voltages vd_ref / vq_ref
% produced by the controller.  It is used in place of real hardware to
% close the simulation loop.
%
% Assumptions / simplifications:
%   • Rotor-flux oriented frame assumed (fd = Lm*id, fq = 0) — standard
%     indirect vector-control model.
%   • Motor equations linearised at current operating point.
%   • Mechanical model: J * domega/dt = Te - Tload (fixed load torque).
%   • Viscous friction, iron losses and cross-saturation ignored.
%   • DC bus voltage treated as ideal (constant Vdc).
%
% State variables updated:
%   s.id_meas, s.iq_meas — measured dq currents (plant output)
%   s.theta_mech          — rotor mechanical angle [rad]
%   s.omega_mech          — rotor mechanical speed [rad/s]
%   s.tq_plant            — electrical torque produced [Nm]
%
% Motor parameters used (from state s, updated by controller):
%   s.r1_cmp, s.r2_cmp, s.lm, p.LS_INV0, p.PF_INV0
%
% EMBEDDED CORRESPONDENCE: no direct counterpart — simplified plant.

    % --- Motor parameters -------------------------------------------
    R1 = s.r1_cmp;              % [Ω] Stator resistance (temp-compensated)
    R2 = s.r2_cmp;              % [Ω] Rotor  resistance (temp-compensated)
    Lm = s.lm;                  % [H] Magnetising inductance
    Ls = p.LS_INV0;             % [H] Total leakage inductance
    pf = p.PF_INV0;             % Pole pairs
    J  = s.J;                   % [kg·m²] Rotor inertia

    % Applied dq voltages (from previous control cycle)
    vd = s.vd_ref;
    vq = s.vq_ref;

    % Current electrical angular velocity (inverter frequency used as
    % synchronous frame speed)
    winv = s.winv_ref;

    % --- Electrical state equations (synchronous dq frame) ----------
    % Simplified IM model in dq:
    %   vd = R1*id + Ls*d(id)/dt - winv*Ls*iq
    %   vq = R1*iq + Ls*d(iq)/dt + winv*(Ls*id + Lm*id)
    %      = R1*iq + Ls*d(iq)/dt + winv*(Ls+Lm)*id
    %
    % Back-EMF terms cancel the feedforward in ideal tracking.
    % Residual error drives id/iq via plant dynamics.
    did_dt = (vd - R1*s.id_meas + winv*Ls*s.iq_meas) / Ls;
    diq_dt = (vq - R1*s.iq_meas - winv*(Ls + Lm)*s.id_meas) / Ls;

    s.id_meas = s.id_meas + did_dt * Ts;
    s.iq_meas = s.iq_meas + diq_dt * Ts;

    % --- Electromagnetic torque (IM formula) ------------------------
    % Te = (3/2) * pf * Lm * id * iq
    % (Rotor-flux oriented; fd = Lm*id assumed)
    s.tq_plant = (3/2) * pf * Lm * s.id_meas * s.iq_meas;

    % --- Mechanical dynamics ----------------------------------------
    % J * domega/dt = Te - Tload - b*omega
    domega = (s.tq_plant - s.tq_load) / J;
    s.omega_mech = s.omega_mech + domega * Ts;

    % Rotor angle integration
    s.theta_mech = s.theta_mech + s.omega_mech * Ts;
    % No wrapping needed — encctrl handles it via PF scaling

    % Mechanical speed in rpm (for logging / 1ms task)
    s.speed_mech_rpm = s.omega_mech * (60.0 / (2*pi));
end
