# IM ベクトル制御 MATLAB シミュレーション

## 概要

本ディレクトリには、誘導モータ（IM）ベクトル制御シミュレーションの MATLAB コードが格納されています。  
`im_vector_control_sim.m` がエントリポイントとなり、複数のヘルパー関数を呼び出してシミュレーションを実行します。

組み込みソフト（`PE1/src/` 以下の C ファイル）の制御ロジックを MATLAB で再現し、制御アルゴリズムの検証・理解に利用できます。

---

## ファイル構成

| ファイル名 | 役割 | 対応する組み込みファイル |
|---|---|---|
| `im_vector_control_sim.m` | **メインファイル（エントリポイント）**。初期化・ループ・ログ・プロットを担当 | ― |
| `params_inv0.m` | モータ定数・制御ゲイン・タイミング設定を返す関数 | `fim_user_inv0.h` |
| `fi_1ms_inv0_idqcom.m` | 1msタスク：トルク指令 → dq電流指令の演算 | `fi_1ms_inv0_idqcom.c` |
| `fi_pwm_inv0_encctrl.m` | PWMタスク：エンコーダ処理・PLL速度推定・dq角度演算 | `fi_pwm_inv0_encctrl.c` |
| `fi_pwm_inv0_idqctrl.m` | PWMタスク：dq電流PI制御・非干渉補償・電圧指令生成 | `fi_pwm_inv0_idqctrl.c` |
| `fi_pwm_inv0_svctrl.m` | PWMタスク：dq→αβ→3相変換・空間ベクトルPWM演算 | `fi_pwm_inv0_svctrl.c` |
| `plant_model_im.m` | シミュレーション専用プラントモデル（誘導モータ応答計算） | ―（シミュレーション専用） |

---

## 呼び出し構造

```
im_vector_control_sim.m  (メイン)
  │
  ├── params_inv0()              パラメータ構造体 p を生成
  │
  └── ループ（100µs/ステップ）
        │
        ├── fi_1ms_inv0_idqcom(s, p)      [10周期ごと]  id_ref, iq_ref を更新
        ├── fi_pwm_inv0_encctrl(s, p)     [毎周期]      theta_dq, wr_pll_lpf を更新
        ├── fi_pwm_inv0_idqctrl(s, p)     [毎周期]      Vd_ref, Vq_ref を更新
        ├── fi_pwm_inv0_svctrl(s, p)      [毎周期]      mu, mv, mw を更新
        └── plant_model_im(s, p, Ts_pwm) [毎周期]      id, iq, 速度, 角度を更新
```

---

## データフロー

```
トルク指令 (tq_ref)
    ↓
[fi_1ms_inv0_idqcom]
    id_ref（d軸電流指令、励磁成分）
    iq_ref（q軸電流指令、トルク成分）
    fd_ref（二次磁束指令）
    ↓
[fi_pwm_inv0_encctrl] ← theta_mech（プラントモデル出力）
    theta_dq（dq軸角度）
    wr_pll_lpf（速度推定値）
    wsl_ref（すべり角周波数指令）
    winv_ref（一次角周波数）
    ↓
[fi_pwm_inv0_idqctrl] ← iu_ad, iv_ad, iw_ad（プラントモデル出力）
    Vd_ref（d軸電圧指令）
    Vq_ref（q軸電圧指令）
    ↓
[fi_pwm_inv0_svctrl]
    mu, mv, mw（PWM変調率）
    ↓
[plant_model_im]
    id_plant, iq_plant（実電流）
    psi_r（二次磁束）
    torque（発生トルク）
    wr_mech（機械角速度）
    theta_mech（機械角） ─→ fi_pwm_inv0_encctrl へフィードバック
    iu_ad, iv_ad, iw_ad  ─→ fi_pwm_inv0_idqctrl へフィードバック
```

---

## 実行方法

### 前提条件
- MATLAB R2021a 以降
- Simulink は不要

### 手順

1. MATLAB の「現在のフォルダ」を `MATLAB/` ディレクトリに変更する：
   ```matlab
   cd('AMDT3074_E0_011_V1_000_20240822_IM/MATLAB')
   ```

2. メインファイルを実行する：
   ```matlab
   run('im_vector_control_sim.m')
   ```
   または MATLAB エディタで `im_vector_control_sim.m` を開いて「実行（Run）」ボタンを押す。

3. シミュレーション完了後、結果グラフが自動表示される。

---

## 制御ゲインと主要パラメータ

`params_inv0.m` で設定する主なパラメータ：

| パラメータ | 変数名 | 値 | 単位 | 説明 |
|---|---|---|---|---|
| 極対数 | `p.Pp` | 2 | - | 組み込み `PF_INV0` |
| 一次抵抗 | `p.R1` | 0.0044 | Ω | 組み込み `R1_INV0` |
| 二次抵抗 | `p.R2` | 0.0023 | Ω | 組み込み `R2_INV0` |
| 漏れインダクタンス | `p.Ls` | 0.00005 | H | 組み込み `LS_INV0` |
| 励磁インダクタンス | `p.Lm` | 0.00021 | H | 組み込み `LM_INV0` |
| DC電圧 | `p.Vdc` | 800 | V | シミュレーション設定値 |
| PWM周波数 | `p.Fc_pwm` | 10000 | Hz | 組み込み `FC_PWM_INV0` |
| d軸電流指令最小値 | `p.Id_ref_min` | 3.0 | A | 組み込み `ID_INV0_REF_MIN` |
| dq電流最大値 | `p.Idq_max` | 17.32 | A | 組み込み `IDQ_INV0_MAX` |
| d軸PI比例ゲイン | `p.Kp_id` | 0.10 | V/A | 極零相殺設計：Kp = Ls×ωc |
| d軸PI積分ゲイン | `p.Ki_id` | 8.8 | V/(A·s) | Ki = R1×ωc（ωc = 2000 rad/s）|
| PLL比例ゲイン | `p.Kp_wrpll` | 1000 | - | 組み込み `KP_INV0_WRPLL` |
| PLL積分ゲイン | `p.Ki_wrpll` | 10000 | - | 組み込み `KI_INV0_WRPLL` |
| PLL速度LPF帯域 | `p.Wclpf_wrpll` | 800 | rad/s | 組み込み `WCLPF_INV0_WRPLL` |

---

## プラントモデルの簡略化について

`plant_model_im.m` は以下の簡略化を適用しています：

1. **ロータ漏れインダクタンス無視**: L2 = Lm（ロータ漏れ = 0）
2. **理想インバータ**: デッドタイム・スイッチング損失なし
3. **一定温度**: 抵抗値の温度変化なし
4. **準定常二次磁束近似**: 速い電気応答は電流方程式で、遅い磁束応答は一次遅れで近似
5. **エンコーダ量子化**: 分解能 256 パルス/rev で量子化（組み込み `CNT_ENC0_MAX = 255` に対応）

---

## シミュレーション条件のカスタマイズ

`im_vector_control_sim.m` の「シミュレーション設定」セクションで以下を変更できます：

```matlab
T_sim  = 0.5;     % シミュレーション時間 [s] を変更
t_step = 0.1;     % トルクステップ開始時刻 [s]
tq_step = 20.0;   % ステップ後のトルク指令値 [N·m]
```

負荷トルクや慣性モーメントは `params_inv0.m` で変更します：

```matlab
p.Tload = 5.0;    % 負荷トルク [N·m]
p.J     = 0.005;  % 慣性モーメント [kg·m²]
```

---

## 出力グラフの説明

シミュレーション実行後に表示される 9 枚のサブプロット：

| プロット | 内容 |
|---|---|
| トルク指令 vs 発生トルク | 指令と実トルクの追従確認 |
| 回転速度 | PLLで推定した速度 [rpm] |
| d軸電流（指令・実測） | 励磁電流の追従状況 |
| q軸電流（指令・実測） | トルク電流の追従状況 |
| dq電圧指令 | PI制御 + 非干渉補償後の電圧 |
| dq軸角度 | 一次周波数積分から得られる角度 |
| U相変調率 | SVPWM変調率（-1〜+1） |
| 二次磁束 | ロータ磁束の追従状況 |
| トルク-速度軌跡 | ステップ後の動的特性 |

---

## 関連する組み込みファイル（参照元）

本シミュレーションは `PE1/src/` 以下のファイルに基づいています：

- `fim_user_inv0.h` — モータ定数・制御ゲイン定義
- `fim_gwork_inv0.h` — グローバル変数定義
- `fi_1ms_inv0_idqcom.c` — 1msタスク処理
- `fi_pwm_inv0_encctrl.c` — エンコーダ処理
- `fi_pwm_inv0_idqctrl.c` — dq電流制御
- `fi_pwm_inv0_svctrl.c` — SVPWM演算
