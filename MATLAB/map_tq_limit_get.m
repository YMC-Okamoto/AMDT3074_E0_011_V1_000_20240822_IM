function [tq_min, tq_max] = map_tq_limit_get(speed_rpm, vdc)
% map_tq_limit_get — Torque limit look-up (speed × DC-bus)
%
% Mirrors  u1_tq_map_limit()  in PE1/src/mapdata_trq_inv0_limit.c.
%
% Axis definition (from PE1/src/mapdata_trq_inv0_limit.h):
%   N_X_2D   = 11
%   ORIGIN_X = 0.0,   RESO_X = 500.0  → speed axis: 0…5000 rpm
%   N_Z_2D   = 1      (only 1 DC-voltage layer → Z interpolation ignored)
%   ORIGIN_Z = 48.0,  RESO_Z = 35.0   → 48 V layer
%   SCALLING_A_2D = 1.0
%
% Output: regenerative limit (tq_min < 0) and powering limit (tq_max > 0).
% Units: [Nm]
%
% EMBEDDED CORRESPONDENCE: PE1/src/mapdata_trq_inv0_limit.c
%                           PE1/src/mapdata_trq_inv0_map_limit.c (table)

    N_X     = 11;
    ORIGIN_X = 0.0;
    RESO_X   = 500.0;
    SCALLING = 1.0;

    % Source: PE1/src/mapdata_trq_inv0_map_limit.c  (48 V layer only)
    % Layout: map_tq_limit[1][2][11]
    %         [0][*] = regenerative limit (negative values)
    %         [1][*] = powering limit (positive values)
    % Columns = speed axis, x=0 → 0 rpm … x=10 → 5000 rpm
    map_regen   = [-70, -75, -70, -70, -70, -65, -55, -45, -40, -30, -25];
    map_power   = [ 75,  70,  70,  60,  45,  35,  30,  25,  20,  15,  15];

    % Normalise X (speed)
    x_nom = (abs(speed_rpm) - ORIGIN_X) / RESO_X;
    x_nom = max(0, min(N_X - 1, x_nom));
    xi    = min(floor(x_nom), N_X - 2);
    kw    = x_nom - xi;

    xi1 = xi + 1;  xi2 = xi1 + 1;
    tq_min = SCALLING * ((1-kw)*map_regen(xi1) + kw*map_regen(xi2));
    tq_max = SCALLING * ((1-kw)*map_power(xi1) + kw*map_power(xi2));
end
