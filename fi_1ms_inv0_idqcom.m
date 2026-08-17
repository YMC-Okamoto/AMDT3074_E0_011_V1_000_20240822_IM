function s = fi_1ms_inv0_idqcom(s, p)

s.tq_ref = s.tq_ref_ext;   % 外部要求を内部参照へ取り込み

% fi_1ms_inv0_idqcom
% 1ms周期タスクで実行する、dq軸電流指令計算および推定演算
%
% 【この関数の役割】
% 本関数は、制御全体のうち「比較的遅い周期（1ms）」で十分な処理を担当します。
% 具体的には、以下を実行します。
%   1) 温度に応じたトルク制限率（デレーティング係数）の算出
%   2) 回転速度とDC電圧に応じたトルク上下限制限の適用
%   3) 制御モードに応じた id/iq 指令値の生成
%   4) トルク推定値・DC電流推定値の更新
%
% 【組み込みコードとの対応】
%   PE1/src/fi_1ms_inv0_idqcom.c の fi_1ms_inv0_idqcom() 相当
%
% 【入力】
%   s : 状態構造体（制御状態、計測値、内部状態を保持）
%   p : パラメータ構造体（params_inv0.m で定義される定数・設定）
%
% 【出力】
%   s : 更新後の状態構造体
%
% 【処理順（組み込み実装の流れに合わせる）】
%   1. 熱デレーティング演算
%   2. アクティブ放電関連（本モデルでは簡略化）
%   3. 速度絶対値計算
%   4. トルク制限マップ参照
%   5. dq電流指令生成（モード分岐）
%   6. トルク推定・DC電流推定

    % ================================================================
    % 1) 熱デレーティング係数の算出（温度上昇時の出力制限）
    % ================================================================
    % 各温度（IGBT / モータ1 / モータ2）について、
    % 「制限開始温度～制限終了温度」の範囲を 1→0 に線形換算した係数を求めます。
    %   係数 = 1 : 制限なし
    %   係数 = 0 : 最大制限
    % 最終的なトルク制限係数は、最も厳しい（最小の）係数を採用します。
    k_igbt = clamp( ...
        (p.TMP_INV0_IGBT_LIMIT_FIN - s.tmp_igbt) / ...
        (p.TMP_INV0_IGBT_LIMIT_FIN - p.TMP_INV0_IGBT_LIMIT_START), 0, 1);

    k_mot1 = clamp( ...
        (p.TMP_INV0_MOT1_LIMIT_FIN - s.tmp_mot1) / ...
        (p.TMP_INV0_MOT1_LIMIT_FIN - p.TMP_INV0_MOT1_LIMIT_START), 0, 1);

    k_mot2 = clamp( ...
        (p.TMP_INV0_MOT2_LIMIT_FIN - s.tmp_mot2) / ...
        (p.TMP_INV0_MOT2_LIMIT_FIN - p.TMP_INV0_MOT2_LIMIT_START), 0, 1);

    s.k_tq_limit   = min([k_igbt, k_mot1, k_mot2]);
    s.flag_derating = (s.k_tq_limit < 1.0);  % 1.0未満ならデレーティング中

    % ================================================================
    % 2) アクティブ放電関連
    % ================================================================
    % 本シミュレーションではアクティブ放電動作を詳細には再現しません。
    % 通常走行条件では「通常運転（放電モードではない）」前提です。
    % ※必要になった場合は、ここに放電モード時の指令変更ロジックを追加します。

    % ================================================================
    % 3) 速度絶対値の計算
    % ================================================================
    % トルク制限マップは速度の符号ではなく絶対値を主に使うため、
    % ここで絶対値を作っておきます。
    s.speed_abs = abs(s.speed_lpf);   % [rpm]

    % ================================================================
    % 4) トルク制限マップ参照
    % ================================================================
    % 速度とDC電圧から、トルクの仮上限・仮下限を取得します。
    [tq_min_tmp, tq_max_tmp] = map_tq_limit_get(s.speed_abs, s.vdc_lpf);

    % 回転方向（speed_lpfの符号）に応じて、上限/下限の符号関係を整えます。
    % 逆転時は正転時とトルク符号の関係が逆になるため、入れ替え＋符号反転します。
    if s.speed_lpf < 0
        s.tq_ref_min = -tq_max_tmp;
        s.tq_ref_max = -tq_min_tmp;
    else
        s.tq_ref_min =  tq_min_tmp;
        s.tq_ref_max =  tq_max_tmp;
    end

    % 熱デレーティング係数を掛けて、最終的なトルク制限値を確定します。
    s.tq_ref_min = s.tq_ref_min * s.k_tq_limit;
    s.tq_ref_max = s.tq_ref_max * s.k_tq_limit;

    % ================================================================
    % 5) dq軸電流指令値の生成（モード分岐）
    % ================================================================
    if s.pwm_status == 1    % PWM有効時のみ指令を生成

        switch p.MODE_INV0_IDQCOM

            % ----------------------------------------------------------
            case 0  % 電流振幅 + 進角指令モード
            % ----------------------------------------------------------
            % irms_ref_tmp を irms_ref に向けてなめらかに追従（ランプ制限）
            s.irms_ref_tmp = ramp_to(s.irms_ref_tmp, s.irms_ref, ...
                p.DTQ_INV0_REF_UP * p.TS_1MS);

            % theta_ref_tmp も同様にランプ制限で追従
            s.theta_ref_tmp = ramp_to(s.theta_ref_tmp, s.theta_ref, ...
                p.DTQ_INV0_REF_UP * p.TS_1MS);

            % 角度を度→ラジアンに変換
            theta_rad = s.theta_ref_tmp * (2*pi / 360.0);

            % 極座標（電流振幅・角度）→ dq成分へ変換
            %   id = I * cos(theta), iq = I * sin(theta)
            % ここで I = Irms * sqrt(2) （実効値→振幅値）
            s.id_ctrl = s.irms_ref_tmp * sqrt(2) * cos(theta_rad);
            s.iq_ctrl = s.irms_ref_tmp * sqrt(2) * sin(theta_rad);

            % ----------------------------------------------------------
            case 1  % トルクマップ制御モード（通常運転の主モード）
            % ----------------------------------------------------------
            % 外部トルク参照を内部参照へランプ制限して追従
            s.tq_ref_tmp = ramp_to(s.tq_ref_tmp, s.tq_ref, ...
                p.DTQ_INV0_REF_UP * p.TS_1MS);

            % 速度制御が有効な場合は速度制御器出力トルクを優先、
            % 無効な場合は通常のトルク参照を使います。
            if p.ENABLE_INV0_WRCTRL
                s.tq_ref_tmp = min(max(s.tq_wrctrl,  s.tq_ref_min), s.tq_ref_max);
            else
                s.tq_ref_tmp = min(max(s.tq_ref_tmp, s.tq_ref_min), s.tq_ref_max);
            end

            % トルクマップ参照
            % マップは「正回転時のトルク定義」で保持されている前提のため、
            % 逆回転時は入力トルク符号を反転して参照し、
            % 最終的なiqの符号で回転方向を反映します。
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

            % 損失値はゼロ割り・不安定化回避のため最小値を持たせます。
            s.power_mot_loss = max(mot_loss, 1.0);
            s.power_inv_loss = max(inv_loss, 1.0);

            % ----------------------------------------------------------
            otherwise
                % 想定外モード時は安全側としてゼロ指令
                s.id_ctrl    = 0;
                s.iq_ctrl    = 0;
                s.tq_ref_tmp = 0;
        end

    else
        % PWM停止時は、電流を流さないように必ずゼロ指令にします。
        s.id_ctrl    = 0;
        s.iq_ctrl    = 0;
        s.tq_ref_tmp = 0;
    end

    % ================================================================
    % 6) トルク推定値・DC電流推定値の更新
    % ================================================================
    % 速度が十分高い場合：
    %   電力ベース推定（P / ω）でトルク推定
    % 速度が低い場合：
    %   モータ定数ベース推定（Lm, id, iq）をLPFで更新
    if (s.speed_abs > p.LEV_INV0_SPEED_TQ_EST_CTRL) && (s.speed_abs > 10.0)
        % --- 高速域：電力ベース推定 ---
        winv_abs = abs(s.winv_ref);   % [rad/s]
        winv_abs = max(winv_abs, 1.0); % 0近傍保護（ゼロ割れ防止）
        s.tq_est = (s.power_p123_lpf - s.power_mot_loss) / winv_abs * p.PF_INV0;
    else
        % --- 低速域：モータ定数ベース推定（一次遅れ更新） ---
        tq_motor = p.PF_INV0 * s.lm * s.id_ad * s.iq_ad;
        err      = tq_motor - s.tq_est;
        s.tq_est = s.tq_est + p.WCLPF_INV0_P123 * err * p.TS_1MS;
    end

    % DC電流推定：
    %   損失込み電力 / DC電圧
    % 電圧ゼロ近傍での数値不安定回避のため、分母下限を与えます。
    s.idc_est = (s.power_p123_lpf + s.power_inv_loss) / max(s.vdc_ad, 1e-3);
end

% ---- 補助関数: clamp ----------------------------------------------
function v = clamp(x, hi, lo)
% 値 x を [lo, hi] の範囲に制限します。
%   x < lo のとき lo
%   x > hi のとき hi
%   それ以外は x
    v = max(lo, min(hi, x));
end

% ---- 補助関数: ramp_to ---------------------------------------------
function v = ramp_to(current, target, step)
% current を target に向けて、最大 step だけ変化させます。
% 急激な指令変化を避けるためのランプ（スルーレート制限）です。
    if current < target
        v = min(current + step, target);
    elseif current > target
        v = max(current - step, target);
    else
        v = current;
    end
end