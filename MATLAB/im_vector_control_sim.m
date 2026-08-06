% ==========================================================================
% im_vector_control_sim.m
%
% 誘導モータ（IM）ベクトル制御シミュレーション メインファイル
%
% 概要:
%   本ファイルはシミュレーションの「入口（エントリポイント）」である。
%   組み込みソフトの処理を模したヘルパー関数を順番に呼び出し、
%   IM ベクトル制御の動作を時間ステップごとに計算・記録・表示する。
%
% ファイル構成（呼び出し関係）:
%
%   im_vector_control_sim.m  ← 本ファイル（メイン）
%     │
%     ├── params_inv0()               パラメータ定義
%     │       └─ モータ定数・制御ゲイン・タイミング設定を返す
%     │
%     ├── fi_1ms_inv0_idqcom()        1msタスク（10PWM周期ごとに実行）
%     │       └─ トルク指令 → dq電流指令（id_ref, iq_ref）を生成
%     │
%     ├── fi_pwm_inv0_encctrl()       PWMタスク（100µsごとに実行）
%     │       └─ エンコーダ処理・PLLによる速度推定・dq角度演算
%     │
%     ├── fi_pwm_inv0_idqctrl()       PWMタスク
%     │       └─ dq電流PIフィードバック制御 + 非干渉補償 → 電圧指令(Vd/Vq)
%     │
%     ├── fi_pwm_inv0_svctrl()        PWMタスク
%     │       └─ dq→αβ→3相変換 + 空間ベクトルPWM変調率演算
%     │
%     └── plant_model_im()            プラントモデル（シミュレーション専用）
%             └─ 電圧指令を入力に電流・磁束・トルク・速度を積分演算
%
% データフロー:
%   (上位指令) tq_ref → [fi_1ms_inv0_idqcom] → id_ref, iq_ref
%   → [fi_pwm_inv0_encctrl] → theta_dq, wr_pll_lpf, wsl_ref
%   → [fi_pwm_inv0_idqctrl] → Vd_ref, Vq_ref
%   → [fi_pwm_inv0_svctrl]  → mu, mv, mw（変調率）
%   → [plant_model_im]       → id, iq, torque, wr_mech, theta_mech
%   → (フィードバック) iu_ad, iv_ad, iw_ad → [fi_pwm_inv0_idqctrl] へ戻る
%
% 組み込みソフトとの対応:
%   本シミュレーションは PE1/src/ 以下の C ファイルに対応する。
%   各ヘルパー関数のファイル名は組み込みソフトのファイル名と
%   できるだけ対応させている。
%
% 実行方法:
%   MATLAB コマンドウィンドウで以下を実行:
%     >> run('MATLAB/im_vector_control_sim.m')
%   または MATLAB エディタから「実行（Run）」ボタンを押す。
%
% 動作確認環境:
%   MATLAB R2021a 以降（Simulink 不要）
%
% 注意事項:
%   - 本ファイルと全ヘルパーファイルは同じフォルダに置くこと
%   - シミュレーション時間・トルク指令は「シミュレーション設定」セクションで変更可能
%
% ==========================================================================

clear;       % ワークスペースの変数をすべてクリア
clc;         % コマンドウィンドウをクリア
close all;   % 全グラフウィンドウを閉じる

fprintf('===================================================\n');
fprintf(' 誘導モータ ベクトル制御シミュレーション 開始\n');
fprintf('===================================================\n');

% ==========================================================================
% [STEP 1] パラメータの読み込み
% ==========================================================================
% params_inv0() がモータ定数・制御ゲイン・タイミング設定をまとめた
% 構造体 p を返す。以降の全ヘルパー関数に p を渡すことで
% パラメータが共有される。

p = params_inv0();   % → モータ定数・制御ゲイン・サンプリング時間等を格納

fprintf('[STEP 1] パラメータ読み込み完了\n');
fprintf('  PWMキャリア周波数 : %d Hz\n', p.Fc_pwm);
fprintf('  制御周期 (Ts_pwm) : %.1f µs\n', p.Ts_pwm * 1e6);
fprintf('  1msタスク間引き比: %d\n', p.N_1ms);

% ==========================================================================
% [STEP 2] シミュレーション設定
% ==========================================================================
% シミュレーション全体のタイムスパンと入力指令を設定する。
% この部分を変更することで、さまざまな動作条件を試すことができる。

% --- シミュレーション時間 ---
T_sim  = 0.5;                     % シミュレーション総時間 [s]
N_sim  = round(T_sim / p.Ts_pwm); % 総ステップ数 [-]

% --- トルク指令スケジュール ---
% ステップ状のトルク指令を設定する（時刻 t_step 以降に tq_step を印加）
t_step  = 0.1;   % トルクステップ開始時刻 [s]
tq_step = 20.0;  % ステップ後のトルク指令値 [N·m]

fprintf('[STEP 2] シミュレーション設定完了\n');
fprintf('  シミュレーション時間: %.2f s\n', T_sim);
fprintf('  総ステップ数: %d\n', N_sim);
fprintf('  トルクステップ: t=%.2fs 以降 %.1f N·m\n', t_step, tq_step);

% ==========================================================================
% [STEP 3] 状態変数の初期化
% ==========================================================================
% シミュレーションで使用するすべての状態変数を構造体 s にまとめる。
% 各ヘルパー関数は s を入力・出力として受け渡し、状態を更新する。

s = struct();

% --- 入力指令 ---
s.tq_ref      = 0.0;    % [N·m]  トルク指令値（上位から与える）
s.tq_ref_tmp  = 0.0;    % [N·m]  レートリミット後トルク指令

% --- 1msタスク出力（電流指令） ---
s.id_ref      = p.Id_ref_min;  % [A]   d軸電流指令（励磁成分）
s.iq_ref      = 0.0;           % [A]   q軸電流指令（トルク成分）
s.fd_ref      = p.Lm * p.Id_ref_min;  % [Wb]  二次磁束指令

% --- エンコーダ・速度推定関連 ---
s.theta_enc   = 0.0;   % [rad]   エンコーダ角度（-π〜+π）
s.theta_pll   = 0.0;   % [rad]   PLL推定角度
s.wr_pll_i    = 0.0;   % [rad/s] PLL積分項
s.wr_pll_lpf  = 0.0;   % [rad/s] PLL速度LPF出力
s.wr_pll_lpf_abs = 0.0;% [rad/s] PLL速度絶対値
s.speed_lpf   = 0.0;   % [rpm]   速度rpm換算
s.wsl_ref     = 0.0;   % [rad/s] すべり角周波数指令
s.winv_ref    = 0.0;   % [rad/s] 一次角周波数（インバータ周波数）

% --- dq軸角度・三角関数 ---
s.theta_dq    = 0.0;   % [rad]   dq軸角度（-π〜+π）
s.sin_dq      = 0.0;   % [-]     sin(theta_dq)
s.cos_dq      = 1.0;   % [-]     cos(theta_dq)

% --- dq電流制御 ---
s.id_ad       = 0.0;   % [A]   測定d軸電流（Park変換後）
s.iq_ad       = 0.0;   % [A]   測定q軸電流
s.Vd_i        = 0.0;   % [V]   d軸PI積分項
s.Vq_i        = 0.0;   % [V]   q軸PI積分項
s.Vd_ref      = 0.0;   % [V]   d軸電圧指令
s.Vq_ref      = 0.0;   % [V]   q軸電圧指令
s.vdq_ctrli   = 0.0;   % [A]   弱め磁束PI積分項

% --- SVPWM変調率 ---
s.Va_ref      = 0.0;   % [V]   α軸電圧
s.Vb_ref      = 0.0;   % [V]   β軸電圧
s.Vu          = 0.0;   % [V]   U相電圧指令
s.Vv          = 0.0;   % [V]   V相電圧指令
s.Vw          = 0.0;   % [V]   W相電圧指令
s.mu          = 0.0;   % [-]   U相PWM変調率
s.mv          = 0.0;   % [-]   V相PWM変調率
s.mw          = 0.0;   % [-]   W相PWM変調率

% --- 3相電流（コントローラへのフィードバック） ---
s.iu_ad       = 0.0;   % [A]   U相電流
s.iv_ad       = 0.0;   % [A]   V相電流
s.iw_ad       = 0.0;   % [A]   W相電流

% --- プラントモデル内部状態 ---
s.id_plant    = 0.0;   % [A]   プラント d軸電流（実電流）
s.iq_plant    = 0.0;   % [A]   プラント q軸電流
s.psi_r       = p.Lm * p.Id_ref_min;  % [Wb]  二次磁束（初期値 = 励磁電流基準）
s.torque      = 0.0;   % [N·m] 発生トルク
s.wr_mech     = 0.0;   % [rad/s] 機械角速度
s.theta_mech  = 0.0;   % [rad]   機械角（0〜2π）

fprintf('[STEP 3] 状態変数初期化完了\n');

% ==========================================================================
% [STEP 4] ログ用バッファの確保
% ==========================================================================
% シミュレーション結果を記録するための配列をあらかじめ確保する。
% ループ内で末尾に追加（append）するより大幅に高速。

log_t        = zeros(1, N_sim);    % 時刻 [s]
log_tq_ref   = zeros(1, N_sim);    % トルク指令 [N·m]
log_id_ref   = zeros(1, N_sim);    % d軸電流指令 [A]
log_iq_ref   = zeros(1, N_sim);    % q軸電流指令 [A]
log_id_ad    = zeros(1, N_sim);    % d軸電流測定値 [A]
log_iq_ad    = zeros(1, N_sim);    % q軸電流測定値 [A]
log_Vd_ref   = zeros(1, N_sim);    % d軸電圧指令 [V]
log_Vq_ref   = zeros(1, N_sim);    % q軸電圧指令 [V]
log_speed    = zeros(1, N_sim);    % 速度 [rpm]
log_torque   = zeros(1, N_sim);    % 発生トルク [N·m]
log_theta_dq = zeros(1, N_sim);    % dq軸角度 [rad]
log_mu       = zeros(1, N_sim);    % U相変調率 [-]
log_psi_r    = zeros(1, N_sim);    % 二次磁束 [Wb]

fprintf('[STEP 4] ログバッファ確保完了（%d ステップ分）\n', N_sim);

% ==========================================================================
% [STEP 5] メインシミュレーションループ
% ==========================================================================
% 各制御周期（100 µs）ごとに以下の順でヘルパー関数を呼び出す:
%
%  [1] 1msタスク判定 → fi_1ms_inv0_idqcom()    (10周期ごと)
%  [2] fi_pwm_inv0_encctrl()  エンコーダ処理・速度推定・dq角度演算
%  [3] fi_pwm_inv0_idqctrl()  dq電流PIフィードバック制御・電圧指令生成
%  [4] fi_pwm_inv0_svctrl()   電圧→変調率変換（SVPWM演算）
%  [5] plant_model_im()       プラントモデル積分（電流・速度・角度更新）
%  [6] ログ記録

fprintf('[STEP 5] メインシミュレーションループ開始...\n');

for k = 1 : N_sim

    % ------
    % 現在時刻 [s]
    % ------
    t = (k - 1) * p.Ts_pwm;

    % ======================================================================
    % トルク指令の更新（ステップ入力）
    % ======================================================================
    % 時刻 t_step 以降にトルク指令をステップ変化させる。
    % 実機では上位コントローラ（CAN受信等）から指令が与えられる。
    if t >= t_step
        s.tq_ref = tq_step;
    else
        s.tq_ref = 0.0;
    end

    % ======================================================================
    % [1] 1msタスク: dq電流指令値演算
    %     10PWM周期（= 1ms）ごとに1回実行
    % ======================================================================
    % fi_1ms_inv0_idqcom.m
    %   入力: s.tq_ref（トルク指令）
    %   出力: s.id_ref, s.iq_ref, s.fd_ref
    if mod(k - 1, p.N_1ms) == 0
        s = fi_1ms_inv0_idqcom(s, p);
    end

    % ======================================================================
    % [2] PWMタスク: エンコーダ処理・速度推定・dq軸角度演算
    % ======================================================================
    % fi_pwm_inv0_encctrl.m
    %   入力: s.theta_mech（プラントモデルが更新した実機械角）
    %         s.id_ref, s.iq_ref, s.fd_ref（すべり周波数演算に使用）
    %   出力: s.wr_pll_lpf, s.speed_lpf, s.wsl_ref, s.winv_ref
    %         s.theta_dq, s.sin_dq, s.cos_dq
    s = fi_pwm_inv0_encctrl(s, p);

    % ======================================================================
    % [3] PWMタスク: dq電流PIフィードバック制御・電圧指令演算
    % ======================================================================
    % fi_pwm_inv0_idqctrl.m
    %   入力: s.iu_ad, s.iv_ad, s.iw_ad（プラントが出力した3相電流）
    %         s.id_ref, s.iq_ref（電流指令）
    %         s.sin_dq, s.cos_dq（座標変換用）
    %         s.winv_ref（非干渉補償用）
    %   出力: s.id_ad, s.iq_ad（測定dq電流）
    %         s.Vd_ref, s.Vq_ref（電圧指令）
    s = fi_pwm_inv0_idqctrl(s, p);

    % ======================================================================
    % [4] PWMタスク: 電圧指令→SVPWM変調率変換
    % ======================================================================
    % fi_pwm_inv0_svctrl.m
    %   入力: s.Vd_ref, s.Vq_ref, s.sin_dq, s.cos_dq
    %   出力: s.Va_ref, s.Vb_ref, s.Vu, s.Vv, s.Vw, s.mu, s.mv, s.mw
    s = fi_pwm_inv0_svctrl(s, p);

    % ======================================================================
    % [5] プラントモデル: 誘導モータの電気・機械応答を計算
    % ======================================================================
    % plant_model_im.m
    %   入力: s.Vd_ref, s.Vq_ref（電圧指令）
    %         s.sin_dq, s.cos_dq, s.winv_ref（変換・角速度）
    %         p.Tload（負荷トルク）
    %   出力: s.id_plant, s.iq_plant（実電流）
    %         s.psi_r（二次磁束）, s.torque（発生トルク）
    %         s.wr_mech（機械角速度）, s.theta_mech（機械角）
    %         s.iu_ad, s.iv_ad, s.iw_ad（3相電流フィードバック）
    s = plant_model_im(s, p, p.Ts_pwm);

    % ======================================================================
    % [6] ログ記録
    % ======================================================================
    log_t(k)        = t;
    log_tq_ref(k)   = s.tq_ref;
    log_id_ref(k)   = s.id_ref;
    log_iq_ref(k)   = s.iq_ref;
    log_id_ad(k)    = s.id_ad;
    log_iq_ad(k)    = s.iq_ad;
    log_Vd_ref(k)   = s.Vd_ref;
    log_Vq_ref(k)   = s.Vq_ref;
    log_speed(k)    = s.speed_lpf;
    log_torque(k)   = s.torque;
    log_theta_dq(k) = s.theta_dq;
    log_mu(k)       = s.mu;
    log_psi_r(k)    = s.psi_r;

end % メインループ終了

fprintf('[STEP 5] シミュレーションループ完了\n');

% ==========================================================================
% [STEP 6] 結果のプロット
% ==========================================================================
% ループ終了後、記録したデータをグラフ表示する。

fprintf('[STEP 6] 結果プロット中...\n');

figure('Name', 'IM ベクトル制御シミュレーション結果', 'NumberTitle', 'off', ...
       'Position', [50, 50, 1200, 900]);

% ---- サブプロット 1: トルク指令・発生トルク ----
subplot(3, 3, 1);
plot(log_t, log_tq_ref, 'b--', 'LineWidth', 1.5, 'DisplayName', 'トルク指令 [N·m]');
hold on;
plot(log_t, log_torque,  'r-',  'LineWidth', 1.5, 'DisplayName', '発生トルク [N·m]');
hold off;
xlabel('時刻 [s]');
ylabel('トルク [N·m]');
title('トルク指令 vs 発生トルク');
legend('show', 'Location', 'best');
grid on;

% ---- サブプロット 2: 回転速度 ----
subplot(3, 3, 2);
plot(log_t, log_speed, 'g-', 'LineWidth', 1.5);
xlabel('時刻 [s]');
ylabel('速度 [rpm]');
title('回転速度（LPF後）');
grid on;

% ---- サブプロット 3: d軸電流（指令・実測）----
subplot(3, 3, 3);
plot(log_t, log_id_ref, 'b--', 'LineWidth', 1.5, 'DisplayName', 'id指令 [A]');
hold on;
plot(log_t, log_id_ad,  'r-',  'LineWidth', 1.5, 'DisplayName', 'id実測 [A]');
hold off;
xlabel('時刻 [s]');
ylabel('d軸電流 [A]');
title('d軸電流（励磁成分）');
legend('show', 'Location', 'best');
grid on;

% ---- サブプロット 4: q軸電流（指令・実測）----
subplot(3, 3, 4);
plot(log_t, log_iq_ref, 'b--', 'LineWidth', 1.5, 'DisplayName', 'iq指令 [A]');
hold on;
plot(log_t, log_iq_ad,  'r-',  'LineWidth', 1.5, 'DisplayName', 'iq実測 [A]');
hold off;
xlabel('時刻 [s]');
ylabel('q軸電流 [A]');
title('q軸電流（トルク成分）');
legend('show', 'Location', 'best');
grid on;

% ---- サブプロット 5: dq電圧指令 ----
subplot(3, 3, 5);
plot(log_t, log_Vd_ref, 'b-', 'LineWidth', 1.5, 'DisplayName', 'Vd指令 [V]');
hold on;
plot(log_t, log_Vq_ref, 'r-', 'LineWidth', 1.5, 'DisplayName', 'Vq指令 [V]');
hold off;
xlabel('時刻 [s]');
ylabel('電圧指令 [V]');
title('dq軸電圧指令');
legend('show', 'Location', 'best');
grid on;

% ---- サブプロット 6: dq軸角度 ----
subplot(3, 3, 6);
plot(log_t, log_theta_dq, 'm-', 'LineWidth', 1.0);
xlabel('時刻 [s]');
ylabel('角度 [rad]');
title('dq軸角度 θ_{dq} (-π〜+π)');
grid on;

% ---- サブプロット 7: U相PWM変調率 ----
subplot(3, 3, 7);
plot(log_t, log_mu, 'k-', 'LineWidth', 1.0);
xlabel('時刻 [s]');
ylabel('変調率 [-]');
title('U相PWM変調率 (SVPWM)');
ylim([-1.2, 1.2]);
grid on;

% ---- サブプロット 8: 二次磁束 ----
subplot(3, 3, 8);
plot(log_t, log_psi_r, 'c-', 'LineWidth', 1.5);
hold on;
psi_r_ref_val = p.Lm * p.Id_ref_min;
plot([log_t(1), log_t(end)], [psi_r_ref_val, psi_r_ref_val], ...
     'b--', 'LineWidth', 1.0, 'DisplayName', '磁束指令（定常）');
hold off;
xlabel('時刻 [s]');
ylabel('二次磁束 [Wb]');
title('二次磁束 ψ_r');
legend({'実磁束', '指令値（定常）'}, 'Location', 'best');
grid on;

% ---- サブプロット 9: トルク-速度特性（Lissajous）----
subplot(3, 3, 9);
% ステップ後データのみ表示
idx_step = log_t >= t_step;
if any(idx_step)
    scatter(log_speed(idx_step), log_torque(idx_step), 5, ...
            (1:sum(idx_step)), 'filled');
    colorbar;
    xlabel('速度 [rpm]');
    ylabel('トルク [N·m]');
    title('トルク-速度軌跡');
    grid on;
end

sgtitle('IM ベクトル制御シミュレーション結果', 'FontSize', 14);

fprintf('[STEP 6] プロット完了\n');

% ==========================================================================
% [STEP 7] 最終状態のサマリ表示
% ==========================================================================
fprintf('\n--- シミュレーション終了サマリ ---\n');
fprintf('  最終回転速度   : %.1f rpm\n',    s.speed_lpf);
fprintf('  最終発生トルク : %.2f N·m\n',   s.torque);
fprintf('  最終d軸電流    : %.2f A\n',      s.id_ad);
fprintf('  最終q軸電流    : %.2f A\n',      s.iq_ad);
fprintf('  最終二次磁束   : %.5f Wb\n',     s.psi_r);
fprintf('  最終U相変調率  : %.4f\n',        s.mu);
fprintf('===================================================\n');
