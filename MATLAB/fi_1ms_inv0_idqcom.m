function s = fi_1ms_inv0_idqcom(s, p)
% fi_1ms_inv0_idqcom — 1 ms timer-interrupt dq-axis current command computation
%
% Mirrors  fi_1ms_inv0_idqcom()  in PE1/src/fi_1ms_inv0_idqcom.c.
%
% Processing order (matches embedded 1 ms task):
%   1) Thermal derating gain computation
%   2) Active-discharge handling (simplified — flag checked only)
%   3) Speed-absolute value
%   4) Torque limit map look-up
%   5) dq current command mode switch
%      Mode 0 : current amplitude & advance-angle command
%      Mode 1 : torque map control  (normal drive mode)
%   6) Torque / DC-current estimation
%
% Input / output:  s — state struct (see im_vector_control_sim for fields)
%                  p — parameter struct (from params_inv0)
%
% EMBEDDED CORRESPONDENCE: PE1/src/fi_1ms_inv0_idqcom.c

    % ================================================================
    % 1) Thermal derating gain  (出力制限演算)
    % ================================================================
    k_igbt = clamp( ...
        (p.TMP_INV0_IGBT_LIMIT_FIN - s.tmp_igbt) / ...
        (p.TMP_INV0_IGBT_LIMIT_FIN - p.TMP_INV0_IGBT_LIMIT_START), 0, 1);
    k_mot1 = clamp( ...
        (p.TMP_INV0_MOT1_LIMIT_FIN - s.tmp_mot1) / ...
        (p.TMP_INV0_MOT1_LIMIT_FIN - p.TMP_INV0_MOT1_LIMIT_START), 0, 1);
    k_mot2 = clamp( ...
        (p.TMP_INV0_MOT2_LIMIT_FIN - s.tmp_mot2) / ...
        (p.TMP_INV0_MOT2_LIMIT_FIN - p.TMP_INV0_MOT2_LIMIT_START), 0, 1);
    s.k_tq_limit = min([k_igbt, k_mot1, k_mot2]);
    s.flag_derating = (s.k_tq_limit < 1.0);

    % ================================================================
    % 2) Active discharge handling  (アクティブ放電演算)
    %    SIMPLIFIED PLANT: active-discharge mode not simulated; flag is
    %    always 0 (normal operation) during normal drive runs.
    % ================================================================

    % ================================================================
    % 3) Speed absolute value  (モータ出力制限演算)
    % ================================================================
    s.speed_abs = abs(s.speed_lpf);   % [rpm]

    % ================================================================
    % 4) Torque limit map look-up  (トルクリミットマップ演算)
    % ================================================================
    [tq_min_tmp, tq_max_tmp] = map_tq_limit_get(s.speed_abs, s.vdc_lpf);

    % Direction-aware limit assignment
    if s.speed_lpf < 0
        s.tq_ref_min = -tq_max_tmp;
        s.tq_ref_max = -tq_min_tmp;
    else
        s.tq_ref_min =  tq_min_tmp;
        s.tq_ref_max =  tq_max_tmp;
    end
    s.tq_ref_min = s.tq_ref_min * s.k_tq_limit;
    s.tq_ref_max = s.tq_ref_max * s.k_tq_limit;

    % ================================================================
    % 5) dq-axis current command mode switch
    % ================================================================
    if s.pwm_status == 1    % PWM output enabled

        switch p.MODE_INV0_IDQCOM

            % ----------------------------------------------------------
            case 0  % Current amplitude & advance-angle mode
            % (電流振幅&進角設定モード演算)
            % ----------------------------------------------------------
            % Ramp irms reference
            s.irms_ref_tmp = ramp_to(s.irms_ref_tmp, s.irms_ref, ...
                p.DTQ_INV0_REF_UP * p.TS_1MS);
            % Ramp advance-angle reference
            s.theta_ref_tmp = ramp_to(s.theta_ref_tmp, s.theta_ref, ...
                p.DTQ_INV0_REF_UP * p.TS_1MS);
            theta_rad = s.theta_ref_tmp * (2*pi / 360.0);
            % id = Irms*sqrt(2) * cos(theta),  iq = Irms*sqrt(2) * sin(theta)
            s.id_ctrl = s.irms_ref_tmp * sqrt(2) * cos(theta_rad);
            s.iq_ctrl = s.irms_ref_tmp * sqrt(2) * sin(theta_rad);

            % ----------------------------------------------------------
            case 1  % Torque-map control mode  (トルクマップ制御モード演算)
            % ----------------------------------------------------------
            % Ramp torque reference
            s.tq_ref_tmp = ramp_to(s.tq_ref_tmp, s.tq_ref, ...
                p.DTQ_INV0_REF_UP * p.TS_1MS);

            % Apply speed-control output if speed control is enabled
            if p.ENABLE_INV0_WRCTRL
                s.tq_ref_tmp = clamp(s.tq_wrctrl, s.tq_ref_max, s.tq_ref_min);
            else
                s.tq_ref_tmp = clamp(s.tq_ref_tmp, s.tq_ref_max, s.tq_ref_min);
            end

            % Torque map look-up  (トルク(dq軸電流)マップ演算)
            % The map convention stores positive-speed torque → iq > 0.
            % For negative speed, the sign of the torque argument is flipped.
            tq_map_in = s.tq_ref_tmp;
            if s.speed_lpf < 0
                tq_map_in = -tq_map_in;
            end
            [id_map, iq_map, mot_loss, inv_loss] = ...
                map_tq_idq_get(s.speed_abs, tq_map_in, s.vdc_lpf);
            s.id_ctrl = id_map;
            if s.speed_lpf < 0
                s.iq_ctrl = -iq_map;
            else
                s.iq_ctrl =  iq_map;
            end
            s.power_mot_loss = max(mot_loss, 1.0);
            s.power_inv_loss = max(inv_loss, 1.0);

            otherwise
                s.id_ctrl    = 0;
                s.iq_ctrl    = 0;
                s.tq_ref_tmp = 0;
        end

    else   % PWM stopped → zero current commands
        s.id_ctrl    = 0;
        s.iq_ctrl    = 0;
        s.tq_ref_tmp = 0;
    end

    % ================================================================
    % 6) Torque & DC-current estimation  (トルク/DC電流推定演算)
    %
    % When speed exceeds LEV_INV0_SPEED_TQ_EST_CTRL, estimate from power;
    % otherwise use motor parameters.
    % EMBEDDED: fi_1ms_inv0_idqcom.c, end-of-function block.
    % ================================================================
    if (s.speed_abs > p.LEV_INV0_SPEED_TQ_EST_CTRL) && (s.speed_abs > 10.0)
        % Power-based torque estimate
        winv_abs = abs(s.winv_ref);   % [rad/s]
        if winv_abs > 0
            s.tq_est = (s.power_p123_lpf - s.power_mot_loss) / winv_abs * p.PF_INV0;
        end
    else
        % Motor-parameter-based torque estimate (LPF)
        tq_motor = p.PF_INV0 * s.lm * s.id_ad * s.iq_ad;
        err = tq_motor - s.tq_est;
        s.tq_est = s.tq_est + p.WCLPF_INV0_P123 * err * p.TS_1MS;
    end
    s.idc_est = (s.power_p123_lpf + s.power_inv_loss) / max(s.vdc_ad, 1e-3);
end

% ---- helper: clamp ------------------------------------------------
function v = clamp(x, hi, lo)
    v = max(lo, min(hi, x));
end

% ---- helper: ramp toward target -----------------------------------
function v = ramp_to(current, target, step)
    if current < target
        v = min(current + step, target);
    elseif current > target
        v = max(current - step, target);
    else
        v = current;
    end
end
