function s = fi_pwm_inv0_idqctrl(s, p)
% fi_pwm_inv0_idqctrl
% PWM割り込み周期で実行する dq軸電流PI制御（電流制御の中核）
%
% 【この関数の目的】
% 誘導機ベクトル制御における「電流ループ」を実行し、
% 最終的に d軸/q軸の電圧指令（vd_ref, vq_ref）を生成します。
%
% 具体的には、
%   - 電流計測値の取り込み
%   - 弱め界磁（電圧飽和回避）
%   - 抵抗温度補正
%   - 電流指令の制限
%   - PI制御
%   - 非干渉（デカップリング）補償
%   - 電圧ベクトル制限
% を順番に行います。
%
% 【組み込みコード対応】
%   PE1/src/fi_pwm_inv0_idqctrl.c の fi_pwm_inv0_idqctrl() 相当
%
% 【処理順（組み込みに合わせた流れ）】
%   1) 電流計測値演算（本SIMではdq値を直接使用）
%   2) 電力演算（1ms側トルク推定で利用）
%   3) 弱め界磁PI
%   4) 一次/二次抵抗の温度補正
%   5) 磁束指令値更新
%   6) dq電流指令値生成＋電流ベクトル制限
%   7) Lmマップ更新
%   8) PIゲイン計算
%   9) 電流PI制御
%  10) 非干渉（フィードフォワード）補償
%  11) 電圧ベクトル制限

    Ts = p.TS_INV0_CTRL;  % PWM制御周期 [s]

    % ================================================================
    % 1) 電流計測値の取り込み（本SIMではdq電流が直接得られる）
    % ================================================================
    % 実機では通常、UVW相電流 → αβ変換（Clarke）→ dq変換（Park）を行います。
    % しかし本シミュレーションではプラント側が id_meas / iq_meas を
    % 直接出力するため、ここでは命名整合のために代入のみ行います。
    s.id_ad = s.id_meas;   % [A] d軸電流計測値
    s.iq_ad = s.iq_meas;   % [A] q軸電流計測値

    % ================================================================
    % 2) 出力電力演算（1ms側のトルク/DC電流推定で使用）
    % ================================================================
    % dq座標系での瞬時有効電力の近似:
    %   p123 ≈ vd*id + vq*iq
    % これをLPFして、推定処理で使いやすい値にします。
    p123 = s.vd_ref * s.id_ad + s.vq_ref * s.iq_ad;
    err  = p123 - s.power_p123_lpf;
    s.power_p123_lpf = s.power_p123_lpf + p.WCLPF_INV0_P123 * err * Ts;
    s.power_p123 = p123;  % LPF前の瞬時値も保持

    % ================================================================
    % 3) 弱め界磁PI（電圧飽和回避）
    % ================================================================
    % 目的：
    %   要求電圧ベクトル |Vdq| が許容値を超えそうなとき、
    %   d軸電流指令を調整して電圧飽和を回避すること。
    %
    % 電圧目標上限:
    %   vdq_vctrl = Vdc * 0.707 * K_INV0_VDQ_VCTRL
    % 誤差:
    %   fw_err = vdq_vctrl - |Vdq_ref|
    %   正なら余裕あり、負なら飽和方向
    vdq_vctrl = s.vdc_lpf * 0.707106 * p.K_INV0_VDQ_VCTRL;
    fw_err    = vdq_vctrl - s.vdq_ref;

    if s.pwm_status == 1
        % 弱め界磁PI（d軸補正量を生成）
        s.idq_vdqctrlp = p.KP_INV0_VDQCTRL * fw_err;
        s.idq_vdqctrli = s.idq_vdqctrli + p.KI_INV0_VDQCTRL * fw_err;

        % 補正方向は主に負方向（磁束低下方向）になるよう制限
        s.idq_vdqctrli = clamp(s.idq_vdqctrli, 0, -s.idq_ctrl);
        idq_fw = clamp(s.idq_vdqctrlp + s.idq_vdqctrli, 0, -s.idq_ctrl);
    else
        % PWM停止時はPI状態をリセット
        s.idq_vdqctrlp = 0;
        s.idq_vdqctrli = 0;
        idq_fw = 0;
    end

    s.idq_vdqctrl = idq_fw;
    s.id_vdqctrl  = idq_fw;   % d軸側へ補正量として適用

    % ================================================================
    % 4) 抵抗温度補正（R1/R2）
    % ================================================================
    % 銅抵抗の温度特性:
    %   R_cmp = R_base * (1 + α*(T_now - T_ref))
    % ここで α = ALPHA_COPPER
    %
    % パラメータで有効/無効を切り替え可能です。
    if p.ENABLE_INV0_R1_CMP
        s.r1_cmp = p.R1_INV0 * (1 + p.ALPHA_COPPER * (s.tmp_mot_max - p.TMP_INV0_R1));
    else
        s.r1_cmp = p.R1_INV0;
    end

    if p.ENABLE_INV0_R2_CMP
        s.r2_cmp = p.R2_INV0 * (1 + p.ALPHA_COPPER * (s.tmp_mot_max - p.TMP_INV0_R2));
    else
        s.r2_cmp = p.R2_INV0;
    end

    % ================================================================
    % 5) 磁束指令値演算
    % ================================================================
    % 二次磁束指令の簡易モデル:
    %   fd_ref = Lm * id_ref
    %   fq_ref = 0
    s.fd_ref = s.lm * s.id_ref;
    s.fq_ref = 0;

    % ================================================================
    % 6) dq電流指令値生成 + 電流ベクトル制限
    % ================================================================
    % d軸には弱め界磁補正を加算し、上下限で制限
    id_cmd = s.id_ctrl + s.id_vdqctrl;
    id_cmd = clamp(id_cmd, p.ID_INV0_REF_MAX, p.ID_INV0_REF_MIN);

    % q軸はトルク生成寄与が主のため、まずはそのまま採用
    iq_cmd = s.iq_ctrl;

    % 電流ベクトル大きさ制限:
    %   sqrt(id^2 + iq^2) <= IDQ_INV0_MAX
    % 超える場合は id を優先し、iq のみ縮小（組み込みロジックに合わせる）
    idq_mag = hypot(id_cmd, iq_cmd);
    if idq_mag > p.IDQ_INV0_MAX
        iq_lim = sqrt(max(0, p.IDQ_INV0_MAX^2 - id_cmd^2));
        iq_cmd = sign(iq_cmd) * iq_lim;
    end

    s.id_ref  = id_cmd;
    s.iq_ref  = iq_cmd;
    s.idq_ref = hypot(s.id_ref, s.iq_ref);  % 現在の電流指令ベクトル大きさ
    s.idq_ctrl = s.idq_ref;                 % 次周期FW制御で利用

    % ================================================================
    % 7) Lmマップ更新（磁気飽和特性）
    % ================================================================
    % LM_INV0_MODE=1 の場合、d軸電流に応じた Lm をマップから取得。
    % 0の場合は固定値を使用。
    if p.LM_INV0_MODE == 1
        s.lm = map_lm_1d_get(s.id_ref);
    else
        s.lm = p.LM_INV0;
    end

    % ================================================================
    % 8) PIゲイン演算
    % ================================================================
    % 組み込み式ベース:
    %   kp = Ls * fs_ctrl * kp_idq
    %   ki = kp * ki_idq
    %
    % 本SIMでは変調率依存のゲイン低下（droop）は簡略化し固定とします。
    fs_ctrl = 1.0 / Ts;
    kp_idq  = p.KP_INV0_IDQ_CTRL_MAX;
    ki_idq  = p.KI_INV0_IDQ_CTRL_MAX;

    s.kp_idctrl = p.LS_INV0 * fs_ctrl * kp_idq;
    s.ki_idctrl = s.kp_idctrl * ki_idq;
    s.kp_iqctrl = s.kp_idctrl;
    s.ki_iqctrl = s.ki_idctrl;

    % ================================================================
    % 9) dq軸電流PI制御
    % ================================================================
    if s.pwm_status == 1
        % 偏差
        id_err_p = s.id_ref - s.id_ad;
        iq_err_p = s.iq_ref - s.iq_ad;
        id_err_i = id_err_p;
        iq_err_i = iq_err_p;

        vdq_ctrl_max = p.VDQ_INV0_CTRL_MAX;

        % --- d軸PI ---
        s.vd_ctrlp = id_err_p * s.kp_idctrl;
        if p.ENABLE_INV0_KICTRL
            s.vd_ctrli = s.vd_ctrli + s.ki_idctrl * id_err_i;
            s.vd_ctrli = clamp(s.vd_ctrli, vdq_ctrl_max, -vdq_ctrl_max);
        else
            s.vd_ctrli = 0;
        end
        s.vd_ctrl = clamp(s.vd_ctrlp + s.vd_ctrli, vdq_ctrl_max, -vdq_ctrl_max);

        % --- q軸PI ---
        s.vq_ctrlp = iq_err_p * s.kp_iqctrl;
        if p.ENABLE_INV0_KICTRL
            s.vq_ctrli = s.vq_ctrli + s.ki_iqctrl * iq_err_i;
            s.vq_ctrli = clamp(s.vq_ctrli, vdq_ctrl_max, -vdq_ctrl_max);
        else
            s.vq_ctrli = 0;
        end
        s.vq_ctrl = clamp(s.vq_ctrlp + s.vq_ctrli, vdq_ctrl_max, -vdq_ctrl_max);

    else
        % PWM停止時はPI関連出力をゼロ化
        s.vd_ctrl  = 0;  s.vd_ctrlp = 0;  s.vd_ctrli = 0;
        s.vq_ctrl  = 0;  s.vq_ctrlp = 0;  s.vq_ctrli = 0;
    end

    % ================================================================
    % 10) 非干渉制御（フィードフォワード補償）
    % ================================================================
    % d/q軸の相互干渉や抵抗降下を見越して、PI出力に補償項を加えます。
    %
    % 抵抗降下項:
    %   vd_rs = R1 * id
    %   vq_rs = R1 * iq
    %
    % 速度起電力項:
    %   vd_emf = -winv * Ls * iq
    %   vq_emf =  winv * (Ls*id + fd)
    winv = s.winv_ref;

    s.vd_rs  = s.r1_cmp * s.id_ref;
    s.vq_rs  = s.r1_cmp * s.iq_ref;
    s.vd_emf = -winv * p.LS_INV0 * s.iq_ref;
    s.vq_emf =  winv * (p.LS_INV0 * s.id_ref + s.fd_ref);

    vdq_max = p.VDQ_INV0_CTRL_MAX;
    vd_tmp  = clamp(s.vd_ctrl + s.vd_emf + s.vd_rs, vdq_max, -vdq_max);
    vq_tmp  = clamp(s.vq_ctrl + s.vq_emf + s.vq_rs, vdq_max, -vdq_max);

    % ================================================================
    % 11) dq電圧ベクトル制限
    % ================================================================
    % インバータが出力できる電圧限界を超えないよう、ベクトル全体を縮小します。
    %
    %   vdq_lim = Vdc * 0.707 * K_INV0_VDQ_MAX
    %   if |Vdq| > vdq_lim:
    %       [vd, vq] を同一比率でスケーリング
    vdq_lim = s.vdc_ad * 0.707106 * p.K_INV0_VDQ_MAX;
    vdq_mag = hypot(vd_tmp, vq_tmp);

    if vdq_mag > vdq_lim && vdq_mag > 0
        vd_tmp = vd_tmp * vdq_lim / vdq_mag;
        vq_tmp = vq_tmp * vdq_lim / vdq_mag;
        s.flag_vdq_max = 1;  % 飽和発生フラグ
    else
        s.flag_vdq_max = 0;  % 飽和なし
    end

    % 最終的なdq電圧指令を保存
    s.vd_ref  = vd_tmp;
    s.vq_ref  = vq_tmp;
    s.vdq_ref = hypot(s.vd_ref, s.vq_ref);
end

% ---- 補助関数 ------------------------------------------------------
function v = clamp(x, hi, lo)
% 値 x を [lo, hi] の範囲に制限する飽和関数です。
% 制御器の内部状態や指令値の暴走を防ぐ基本処理として使います。
    v = max(lo, min(hi, x));
end