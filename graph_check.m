%% ===== すべてのログを LOG_T（時間）基準で表示 =====

%% トルク指令値
figure;
plot(LOG_T, LOG_TQ_REF, 'LineWidth', 1.2);
grid on;
xlabel('時間 [s]');
ylabel('トルク [Nm]');
title('トルク指令');
legend('トルク指令値');

%% トルク推定値
figure;
plot(LOG_T, LOG_TQ_EST, 'LineWidth', 1.2);
grid on;
xlabel('時間 [s]');
ylabel('トルク [Nm]');
title('トルク推定');
legend('トルク推定値');

%% プラント発生トルク
figure;
plot(LOG_T, LOG_TQ_PLANT, 'LineWidth', 1.2);
grid on;
xlabel('時間 [s]');
ylabel('トルク [Nm]');
title('プラントトルク');
legend('プラントトルク');

%% d軸電流指令
figure;
plot(LOG_T, LOG_ID_REF, 'LineWidth', 1.2);
grid on;
xlabel('時間 [s]');
ylabel('電流 [A]');
title('d軸電流指令');
legend('d軸電流指令 id*');

%% q軸電流指令
figure;
plot(LOG_T, LOG_IQ_REF, 'LineWidth', 1.2);
grid on;
xlabel('時間 [s]');
ylabel('電流 [A]');
title('q軸電流指令');
legend('q軸電流指令 iq*');

%% d軸電流実測
figure;
plot(LOG_T, LOG_ID_MEAS, 'LineWidth', 1.2);
grid on;
xlabel('時間 [s]');
ylabel('電流 [A]');
title('d軸電流実測');
legend('d軸電流実測 id');

%% q軸電流実測
figure;
plot(LOG_T, LOG_IQ_MEAS, 'LineWidth', 1.2);
grid on;
xlabel('時間 [s]');
ylabel('電流 [A]');
title('q軸電流実測');
legend('q軸電流実測 iq');

%% d軸電圧指令
figure;
plot(LOG_T, LOG_VD, 'LineWidth', 1.2);
grid on;
xlabel('時間 [s]');
ylabel('電圧 [V]');
title('d軸電圧指令');
legend('d軸電圧指令 vd');

%% q軸電圧指令
figure;
plot(LOG_T, LOG_VQ, 'LineWidth', 1.2);
grid on;
xlabel('時間 [s]');
ylabel('電圧 [V]');
title('q軸電圧指令');
legend('q軸電圧指令 vq');

%% a相電圧指令
figure;
plot(LOG_T, LOG_VA, 'LineWidth', 1.2);
grid on;
xlabel('時間 [s]');
ylabel('電圧 [V]');
title('a相電圧指令');
legend('a相電圧指令 va');

%% b相電圧指令
figure;
plot(LOG_T, LOG_VB, 'LineWidth', 1.2);
grid on;
xlabel('時間 [s]');
ylabel('電圧 [V]');
title('b相電圧指令');
legend('b相電圧指令 vb');

%% SVPWM 変調率（u相）
figure;
plot(LOG_T, LOG_MU, 'LineWidth', 1.2);
grid on;
xlabel('時間 [s]');
ylabel('変調率 [-]');
title('SVPWM変調率（u相）');
legend('u相変調率 mu');

%% SVPWM 変調率（v相）
figure;
plot(LOG_T, LOG_MV, 'LineWidth', 1.2);
grid on;
xlabel('時間 [s]');
ylabel('変調率 [-]');
title('SVPWM変調率（v相）');
legend('v相変調率 mv');

%% SVPWM 変調率（w相）
figure;
plot(LOG_T, LOG_MW, 'LineWidth', 1.2);
grid on;
xlabel('時間 [s]');
ylabel('変調率 [-]');
title('SVPWM変調率（w相）');
legend('w相変調率 mw');

%% 回転速度（rpm）
figure;
plot(LOG_T, LOG_RPM, 'LineWidth', 1.2);
grid on;
xlabel('時間 [s]');
ylabel('回転数 [rpm]');
title('ロータ回転速度');
legend('回転速度 rpm');

%% すべり角周波数
figure;
plot(LOG_T, LOG_WSL, 'LineWidth', 1.2);
grid on;
xlabel('時間 [s]');
ylabel('角周波数 [rad/s]');
title('すべり角周波数');
legend('すべり角周波数 \omega_{sl}');

%% インバータ角周波数
figure;
plot(LOG_T, LOG_WINV, 'LineWidth', 1.2);
grid on;
xlabel('時間 [s]');
ylabel('角周波数 [rad/s]');
title('インバータ角周波数');
legend('インバータ角周波数 \omega_{inv}');

%% トルク演算用角周波数
figure;
plot(LOG_T, LOG_WTQ, 'LineWidth', 1.2);
grid on;
xlabel('時間 [s]');
ylabel('角周波数 [rad/s]');
title('トルク演算用角周波数');
legend('トルク演算用角周波数 \omega_{tq}');

%% 励磁インダクタンス
figure;
plot(LOG_T, LOG_LM, 'LineWidth', 1.2);
grid on;
xlabel('時間 [s]');
ylabel('インダクタンス');
title('励磁インダクタンス');
legend('励磁インダクタンス Lm');