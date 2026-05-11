/*===============================================================
+                                                               +
+           Title:      CANサンプルプログラム                   +
+                  (RH850専用コントローラ対応品)                +
+                                                               +
+               date:        27 Jun,2024                        +
+            version:        1.010                              +
+                                                               +
+       Copyright (C) Aoyama Motor Drive Technology 2024        +
===============================================================*/
/*==============================================================*/
/*               ヘッダファイルのインクルード                   */
/*==============================================================*/
#include	"iodefine.h"										/* 周辺定義ヘッダファイル */
#include	"vals_typedef.h"									/* 変数型定義ヘッダファイル */
#include	"iolib/iolib_all.h"									/* IOライブラリヘッダファイル */
#include	<mathf.h>											/* 数学標準ライブラリ(float用) */
#include	<math.h>											/* 数学標準ライブラリ(double用) */

/* 制御プログラム関係           */
#include	"fim_gwork_inv0.h"									/* 制御プログラムヘッダファイル */
#include	"fim_user_inv0.h"									/* ユーザ設定パラメータヘッダファイル */

/* FCAN CH0制御関係             */
#include	"fb_can0_ctrl.h"									/* CAN通信ヘッダファイル */

#define		limit_can(a, b, c)		((a>b)?(b):((a<c)?(c):(a)))
/*==============================================================*/

/*==============================================================*/
/*                    CAN通信ID定義                             */
/*==============================================================*/
#define		CANID_0x010		(0x010)		/* 受信メッセージID(ID:0x010系統) */
#define		CANID_0x011		(0x011)		/* 受信メッセージID(ID:0x011系統) */

#define		CANID_0x030		(0x030)		/* 送信メッセージID(ID:0x030系統) */
#define		CANID_0x031		(0x031)		/* 送信メッセージID(ID:0x031系統) */
#define		CANID_0x032		(0x032)		/* 送信メッセージID(ID:0x032系統) */
#define		CANID_0x033		(0x033)		/* 送信メッセージID(ID:0x033系統) */
#define		CANID_0x034		(0x034)		/* 送信メッセージID(ID:0x034系統) */
#define		CANID_0x035		(0x035)		/* 送信メッセージID(ID:0x035系統) */
#define		CANID_0x036		(0x036)		/* 送信メッセージID(ID:0x036系統) */
#define		CANID_0x037		(0x037)		/* 送信メッセージID(ID:0x037系統) */
#define		CANID_0x038		(0x038)		/* 送信メッセージID(ID:0x038系統) */
/*==============================================================*/

/*==============================================================*/
/*                    CAN通信受信状態変数定義                   */
/*==============================================================*/
u4		u4_flag_rx0_flag;		/* 受信データ確認フラグ */
/*==============================================================*/

/*==============================================================*/
/*                      CAN通信ドライバ変数定義                 */
/*==============================================================*/
UN_CRX0x010		RX_DATA_0x010;		/* 受信メッセージデータバッファ(ID:0x010) */
UN_CRX0x011		RX_DATA_0x011;		/* 受信メッセージデータバッファ(ID:0x011) */

UN_CTX0x030		TX_DATA_0x030;		/* 送信メッセージデータバッファ(ID:0x030) */
CAN_ST_MBOX		CAN_MBOX_TX_ID0x030;		/* 送信メッセージボックス構造体(ID:0x030) */
UN_CTX0x031		TX_DATA_0x031;		/* 送信メッセージデータバッファ(ID:0x031) */
CAN_ST_MBOX		CAN_MBOX_TX_ID0x031;		/* 送信メッセージボックス構造体(ID:0x031) */
UN_CTX0x032		TX_DATA_0x032;		/* 送信メッセージデータバッファ(ID:0x032) */
CAN_ST_MBOX		CAN_MBOX_TX_ID0x032;		/* 送信メッセージボックス構造体(ID:0x032) */
UN_CTX0x033		TX_DATA_0x033;		/* 送信メッセージデータバッファ(ID:0x033) */
CAN_ST_MBOX		CAN_MBOX_TX_ID0x033;		/* 送信メッセージボックス構造体(ID:0x033) */
UN_CTX0x034		TX_DATA_0x034;		/* 送信メッセージデータバッファ(ID:0x034) */
CAN_ST_MBOX		CAN_MBOX_TX_ID0x034;		/* 送信メッセージボックス構造体(ID:0x034) */
UN_CTX0x035		TX_DATA_0x035;		/* 送信メッセージデータバッファ(ID:0x035) */
CAN_ST_MBOX		CAN_MBOX_TX_ID0x035;		/* 送信メッセージボックス構造体(ID:0x035) */
UN_CTX0x036		TX_DATA_0x036;		/* 送信メッセージデータバッファ(ID:0x036) */
CAN_ST_MBOX		CAN_MBOX_TX_ID0x036;		/* 送信メッセージボックス構造体(ID:0x036) */
UN_CTX0x037		TX_DATA_0x037;		/* 送信メッセージデータバッファ(ID:0x037) */
CAN_ST_MBOX		CAN_MBOX_TX_ID0x037;		/* 送信メッセージボックス構造体(ID:0x037) */
UN_CTX0x038		TX_DATA_0x038;		/* 送信メッセージデータバッファ(ID:0x038) */
CAN_ST_MBOX		CAN_MBOX_TX_ID0x038;		/* 送信メッセージボックス構造体(ID:0x038) */

u1		u1_flag_can0_initerr;		/* CAN初期化エラーフラグ */
/*==============================================================*/

/*==============================================================*/
/*                      CAN受信フラグ定数定義                   */
/*==============================================================*/
#define		ID_0x010_RX_FLG		(u4)(0x00000001)
#define		ID_0x011_RX_FLG		(u4)(0x00000002)
/*==============================================================*/

/*==============================================================*/
/*                      送受信データ変数定義                    */
/*==============================================================*/
u1		u1_flag_can0_debug;		/* CAN0通信デバッグフラグ 0:無効 1:有効 */

/* 受信データ */
u1		u1_com_state_ref_rx;		/* Unit=- LSB=1.0 運転指令 0：停止 1：スタンバイ 2：トルク指令運転 3：電流指令運転 4：速度指令運転 5:アクティブ放電 6：異常リセット */
u1		u1_com_state_ref_rx_tmp;		/* Unit=- LSB=1.0 運転指令 0：停止 1：スタンバイ 2：トルク指令運転 3：電流指令運転 4：速度指令運転 5:アクティブ放電 6：異常リセット */
u2		u2_com_tq_ref_rate_rx;		/* Unit=Nm/sec LSB=0.1 トルク指令値変化率  */
u2		u2_com_irms_ref_rate_rx;		/* Unit=A/sec LSB=0.1 電流指令値変化率  */
u2		u2_com_speed_ref_rate_rx;		/* Unit=rpm/sec LSB=1 速度指令値変化率  */
s2		s2_com_tq_ref_rx;		/* Unit=Nm LSB=0.1 トルク指令値  */
s2		s2_com_irms_ref_rx;		/* Unit=A LSB=0.1 電流指令値  */
s2		s2_com_f_slip_ref_rx;		/* Unit=Hz LSB=0.01 滑り周波数指令値  */
s2		s2_com_speed_ref_rx;		/* Unit=rpm LSB=1 速度指令値  */

/* 受信データ 追加 */

/* 受信データ float変数 */
f4		f4_com_tq_ref_rate_rx;		/* Unit=Nm/sec トルク指令値変化率  */
f4		f4_com_irms_ref_rate_rx;		/* Unit=A/sec 電流指令値変化率  */
f4		f4_com_speed_ref_rate_rx;		/* Unit=rpm/sec 速度指令値変化率  */
f4		f4_com_tq_ref_rx;		/* Unit=Nm トルク指令値  */
f4		f4_com_irms_ref_rx;		/* Unit=A 電流指令値  */
f4		f4_com_f_slip_ref_rx;		/* Unit=Hz 滑り周波数指令値  */
f4		f4_com_speed_ref_rx;		/* Unit=rpm 速度指令値  */

/* 受信データ 処理用変数 */
u1		u1_flag_inv0_state_start;	/* Unit:- 状態スタート監視フラグ	*/

/* 送信データ */
u1		u1_com_actual_state_tx;		/* Unit=- LSB=1.0 運転指令状態 0：停止 1：スタンバイ 2：トルク指令運転 3：電流指令運転 4：速度指令運転 5:アクティブ放電 6：異常リセット 7:異常 */
u1		u1_com_drive_state_tx;		/* Unit=- LSB=1.0 インバータ運転状態 0:PWM停止状態 1:PWM制御状態 2:1パルス制御状態 */
s2		s2_com_tq_ref_tx;		/* Unit=Nm LSB=0.1 実トルク指令値  */
s2		s2_com_irms_ad_tx;		/* Unit=A LSB=0.1 実相電流値  */
s2		s2_com_speed_lpf_tx;		/* Unit=rpm LSB=1 実回転数  */
s2		s2_com_id_ref_tx;		/* Unit=A LSB=0.1 d軸電流指令値  */
s2		s2_com_iq_ref_tx;		/* Unit=A LSB=0.1 q軸電流指令値  */
u2		u2_com_irms_ref_tx;		/* Unit=rms LSB=0.1 相電流指令値  */
s2		s2_com_f_slip_ref_tx;		/* Unit=Hz LSB=0.01 滑り周波数指令値  */
s2		s2_com_id_ad_tx;		/* Unit=A LSB=0.1 d軸電流  */
s2		s2_com_iq_ad_tx;		/* Unit=A LSB=0.1 q軸電流  */
s2		s2_com_idc_est_tx;		/* Unit=A LSB=0.1 DC電流推定値 インバータ出力およびインバータ損失データから推定　推定値において、精度補償はいたしません。 */
s2		s2_com_speed_ref_tx;		/* Unit=rpm LSB=1.0 実回転数指令値  */
s2		s2_com_vd_ref_tx;		/* Unit=V LSB=0.1 d軸電圧指令値  */
s2		s2_com_vq_ref_tx;		/* Unit=V LSB=0.1 q軸電圧指令値  */
u2		u2_com_vdc_ad_tx;		/* Unit=V LSB=0.1 DC電圧  */
u2		u2_com_vrms_ref_tx;		/* Unit=V LSB=0.1 相電圧指令値  */
s2		s2_com_tq_limit_p_tx;		/* Unit=Nm LSB=0.1 トルクリミット：正  */
s2		s2_com_tq_limit_n_tx;		/* Unit=Nm LSB=0.1 トルクリミット：負  */
u1		u1_com_tmp_mot1_tx;		/* Unit=degC LSB=1.0 モータ温度1  */
u1		u1_com_tmp_mot2_tx;		/* Unit=degC LSB=1.0 モータ温度2  */
u1		u1_com_tmp_int_tx;		/* Unit=degC LSB=1.0 インバータ内部温度  */
u1		u1_com_tmp_igbt1_tx;		/* Unit=degC LSB=1.0 IGBT温度1 U */
u1		u1_com_tmp_igbt2_tx;		/* Unit=degC LSB=1.0 IGBT温度2 V */
u1		u1_com_tmp_igbt3_tx;		/* Unit=degC LSB=1.0 IGBT温度3 W */
u1		u1_com_tmp_igbt4_tx;		/* Unit=degC LSB=1.0 IGBT温度4 なし */
u1		u1_com_tmp_igbt5_tx;		/* Unit=degC LSB=1.0 IGBT温度5 なし */
u1		u1_com_tmp_igbt6_tx;		/* Unit=degC LSB=1.0 IGBT温度6 なし */
u4		u4_com_flag_error1_tx;		/* Unit=- LSB=1.0 異常検知 u4_flag_inv0_error1と同値 :インバータ出力停止 */
u4		u4_com_flag_error2_tx;		/* Unit=- LSB=1.0 異常検知 u4_flag_inv0_error2と同値 :インバータ出力停止 */
u4		u4_com_flag_error_hw_tx;		/* Unit=- LSB=1.0 異常検知 u4_flag_inv0_error_hwと同値 :インバータ出力停止 */
u4		u4_com_flag_error_hw_lev_tx;		/* Unit=- LSB=1.0 異常検知 u4_flag_inv0_error_hw_levと同値 :インバータ出力停止 */

/* 送信データ 追加 */

/* 送信データ float変数 */
f4		f4_com_tq_ref_tx;		/* Unit=Nm 実トルク指令値  */
f4		f4_com_irms_ad_tx;		/* Unit=A 実相電流値  */
f4		f4_com_speed_lpf_tx;		/* Unit=rpm 実回転数  */
f4		f4_com_id_ref_tx;		/* Unit=A d軸電流指令値  */
f4		f4_com_iq_ref_tx;		/* Unit=A q軸電流指令値  */
f4		f4_com_irms_ref_tx;		/* Unit=rms 相電流指令値  */
f4		f4_com_f_slip_ref_tx;		/* Unit=Hz 滑り周波数指令値  */
f4		f4_com_id_ad_tx;		/* Unit=A d軸電流  */
f4		f4_com_iq_ad_tx;		/* Unit=A q軸電流  */
f4		f4_com_idc_est_tx;		/* Unit=A DC電流推定値 インバータ出力およびインバータ損失データから推定　推定値において、精度補償はいたしません。 */
f4		f4_com_speed_ref_tx;		/* Unit=rpm 実回転数指令値  */
f4		f4_com_vd_ref_tx;		/* Unit=V d軸電圧指令値  */
f4		f4_com_vq_ref_tx;		/* Unit=V q軸電圧指令値  */
f4		f4_com_vdc_ad_tx;		/* Unit=V DC電圧  */
f4		f4_com_vrms_ref_tx;		/* Unit=V 相電圧指令値  */
f4		f4_com_tq_limit_p_tx;		/* Unit=Nm トルクリミット：正  */
f4		f4_com_tq_limit_n_tx;		/* Unit=Nm トルクリミット：負  */
f4		f4_com_tmp_mot1_tx;		/* Unit=degC モータ温度1  */
f4		f4_com_tmp_mot2_tx;		/* Unit=degC モータ温度2  */
f4		f4_com_tmp_int_tx;		/* Unit=degC インバータ内部温度  */
f4		f4_com_tmp_igbt1_tx;		/* Unit=degC IGBT温度1 U */
f4		f4_com_tmp_igbt2_tx;		/* Unit=degC IGBT温度2 V */
f4		f4_com_tmp_igbt3_tx;		/* Unit=degC IGBT温度3 W */
f4		f4_com_tmp_igbt4_tx;		/* Unit=degC IGBT温度4 なし */
f4		f4_com_tmp_igbt5_tx;		/* Unit=degC IGBT温度5 なし */
f4		f4_com_tmp_igbt6_tx;		/* Unit=degC IGBT温度6 なし */

/* 送信データ 処理用変数 */

/*==============================================================*/

/*==============================================================*/
/*                      CAN通信送信カウンタ定義                 */
/*==============================================================*/
u2		u2_cnt_10ms_tx0;		/* CAN0 送信間隔カウンタ 10msec */
/*==============================================================*/

/*==============================================================*/
/*                      CAN0バスエラー変数定義                  */
/*==============================================================*/
u4		u4_status_can0;		/* CANステータス*/
u4		u4_status_can0_tmp;		/* CANステータステンポラリ */

u1		u1_flag_can0_com_id0x010_startchk;		/* ID0x010未着チェックスタートフラグ */
u2		u2_cnt_can0_1ms_id0x010_comchk;		/* ID未着カウンタ */
u2		u2_cnt_can0_1ms_id0x010_comchk_max;		/* ID未着エラー時限 */

u1		u1_flag_can0_com_id0x011_startchk;		/* ID0x011未着チェックスタートフラグ */
u2		u2_cnt_can0_1ms_id0x011_comchk;		/* ID未着カウンタ */
u2		u2_cnt_can0_1ms_id0x011_comchk_max;		/* ID未着エラー時限 */

/* ID未着エラー時限定義 */
#define		CNT_ERR_CAN0_ID0x010_RX		(100)		/* [msec] */
#define		CNT_ERR_CAN0_ID0x011_RX		(100)		/* [msec] */

/* CANエラー定義 */
#define		CAN0_WARING_BUSOFF_EPASSIVE		(u4)(0x00000001)
#define		CAN0_NOT_ID0x010_ARRIVE		(u4)(0x00000002)
#define		CAN0_NOT_ID0x011_ARRIVE		(u4)(0x00000004)
/*==============================================================*/

/*==============================================================*/
/*                      関数のプロトタイプ宣言                  */
/*==============================================================*/
void	fb_can0_ctrl			(void);		/* CAN0通信パラメータIF関数 */
u4		fb_can0_rx_data			(void);		/* CAN0通信データ受信関数 */
void	fb_can0_ctrl_init		(void);		/* CAN0通信IFパラメータ初期化関数 */
void	fb_can0_driver_init		(void);		/* CAN0通信ドライバ初期化関数 */
/*==============================================================*/

/*===============================================================
+                                                               +
+               Name:     void fb_can0_ctrl (void)              +
+           Function:   　CAN通信パラメータIF関数               +
+                                                               +
+               date:        27 Jun,2024                        +
+            version:        1.010                              +
================================================================*/
void fb_can0_ctrl (void)
{
	/*============================================================*/
	/*                     ローカル変数定義     　                */
	/*============================================================*/
	u4				u4_temp_1;									/* テンポラリ変数 */
	s4				s4_temp_1, s4_temp_2;						/* テンポラリ変数 */
	f4				f4_temp_1, f4_temp_2, f4_temp_3;			/* テンポラリ変数 */
	unsigned char	u1_temp_1, u1_temp_2;						/* テンポラリ変数 */
	signed char		s1_temp_1;									/* テンポラリ変数 */
	unsigned short	u2_temp_1, u2_temp_2;						/* テンポラリ変数 */
	signed short	s2_temp_1, s2_temp_2;						/* テンポラリ変数 */
	unsigned char	i;											/* テンポラリ変数 */
	/*============================================================*/

	/*============================================================*/
	/*                     CAN通信(受信)処理    　                */
	/*============================================================*/
	u4_flag_rx0_flag		= fb_can0_rx_data();		/* 受信データ退避 */
	
	if(ID_0x010_RX_FLG == (u4_flag_rx0_flag & ID_0x010_RX_FLG))
	{
		
		/* 受信処理 */
		u1_com_state_ref_rx = (u1)((u4)(RX_DATA_0x010.val.u1_0x010_rx_0 & 0xFF) );
		
		u2_com_tq_ref_rate_rx = (u2)((u4)(RX_DATA_0x010.val.u1_0x010_rx_2 & 0xFF)  |
		(u4)(RX_DATA_0x010.val.u1_0x010_rx_3 & 0xFF) << 8);
		
		u2_com_irms_ref_rate_rx = (u2)((u4)(RX_DATA_0x010.val.u1_0x010_rx_4 & 0xFF)  |
		(u4)(RX_DATA_0x010.val.u1_0x010_rx_5 & 0xFF) << 8);
		
		u2_com_speed_ref_rate_rx = (u2)((u4)(RX_DATA_0x010.val.u1_0x010_rx_6 & 0xFF)  |
		(u4)(RX_DATA_0x010.val.u1_0x010_rx_7 & 0xFF) << 8);
		
		
		u4_flag_rx0_flag = u4_flag_rx0_flag & (~ID_0x010_RX_FLG);
		u1_flag_can0_com_id0x010_startchk = 1; /* 受信タイムアウトチェックスタート */
		u2_cnt_can0_1ms_id0x010_comchk = 0; /* カウンタクリア */
	}
	else{}
	
	if(ID_0x011_RX_FLG == (u4_flag_rx0_flag & ID_0x011_RX_FLG))
	{
		
		/* 受信処理 */
		s2_com_tq_ref_rx = (s2)((u4)(RX_DATA_0x011.val.u1_0x011_rx_0 & 0xFF)  |
		(u4)(RX_DATA_0x011.val.u1_0x011_rx_1 & 0xFF) << 8);
		
		s2_com_irms_ref_rx = (s2)((u4)(RX_DATA_0x011.val.u1_0x011_rx_2 & 0xFF)  |
		(u4)(RX_DATA_0x011.val.u1_0x011_rx_3 & 0xFF) << 8);
		
		s2_com_f_slip_ref_rx = (s2)((u4)(RX_DATA_0x011.val.u1_0x011_rx_4 & 0xFF)  |
		(u4)(RX_DATA_0x011.val.u1_0x011_rx_5 & 0xFF) << 8);
		
		s2_com_speed_ref_rx = (s2)((u4)(RX_DATA_0x011.val.u1_0x011_rx_6 & 0xFF)  |
		(u4)(RX_DATA_0x011.val.u1_0x011_rx_7 & 0xFF) << 8);
		
		
		u4_flag_rx0_flag = u4_flag_rx0_flag & (~ID_0x011_RX_FLG);
		u1_flag_can0_com_id0x011_startchk = 1; /* 受信タイムアウトチェックスタート */
		u2_cnt_can0_1ms_id0x011_comchk = 0; /* カウンタクリア */
	}
	else{}
	
	/* スケーリング処理 */
	{
		u2_temp_1		= limit_can(u2_com_tq_ref_rate_rx, (u2)(65535), (u2)(0));
		f4_com_tq_ref_rate_rx		= (f4)(u2_temp_1) * (f4)(0.1) + (f4)(0.0);

		u2_temp_1		= limit_can(u2_com_irms_ref_rate_rx, (u2)(65535), (u2)(0));
		f4_com_irms_ref_rate_rx		= (f4)(u2_temp_1) * (f4)(0.1) + (f4)(0.0);

		u2_temp_1		= limit_can(u2_com_speed_ref_rate_rx, (u2)(65535), (u2)(0));
		f4_com_speed_ref_rate_rx		= (f4)(u2_temp_1) * (f4)(1) + (f4)(0);

		s2_temp_1		= limit_can(s2_com_tq_ref_rx, (s2)(32767), (s2)(-32768));
		f4_com_tq_ref_rx		= (f4)(s2_temp_1) * (f4)(0.1) + (f4)(0.0);

		s2_temp_1		= limit_can(s2_com_irms_ref_rx, (s2)(32767), (s2)(-32768));
		f4_com_irms_ref_rx		= (f4)(s2_temp_1) * (f4)(0.1) + (f4)(0.0);

		s2_temp_1		= limit_can(s2_com_f_slip_ref_rx, (s2)(32767), (s2)(-32768));
		f4_com_f_slip_ref_rx		= (f4)(s2_temp_1) * (f4)(0.01) + (f4)(0);

		s2_temp_1		= limit_can(s2_com_speed_ref_rx, (s2)(32767), (s2)(-32768));
		f4_com_speed_ref_rx		= (f4)(s2_temp_1) * (f4)(1) + (f4)(0.0);

	}
	if((u1_flag_can0_debug != 1)&&
	((u1_flag_can0_com_id0x010_startchk == 1) ||
	(u1_flag_can0_com_id0x011_startchk == 1)))
	/* CAN通信デバッグ無効 && 各IDを1度でも受信したか */
	{
	/* CAN通信と制御の紐付け */
	
		// u1_state_ref =		u1_com_state_ref_rx;
		// f4_tq_ref_rate =		f4_com_tq_ref_rate_rx;
		// f4_irms_ref_rate =		f4_com_irms_ref_rate_rx;
		// f4_speed_ref_rate =		f4_com_speed_ref_rate_rx;
		// f4_tq_ref =		f4_com_tq_ref_rx;
		// f4_irms_ref =		f4_com_irms_ref_rx;
		// f4_theta_ref =		f4_com_theta_ref_rx;
		// f4_speed_ref =		f4_com_speed_ref_rx;
		
		f4_dtq_inv0_ref_up =		f4_com_tq_ref_rate_rx;
		f4_dirms_inv0_ref_up =		f4_com_irms_ref_rate_rx;
		f4_didq_inv0_adj = 		f4_com_irms_ref_rate_rx * (f4)(1.732);
		f4_dspeed_inv0_ref_up =		f4_com_speed_ref_rate_rx;
	
		switch(u1_com_state_ref_rx)
		{
			case 0:	/* 停止			*/
				u1_flag_inv0_sysctrl_active_discharge	= 0;
				u1_flag_inv0_sysctrl		= 0;
				u1_flag_mode_inv0_idqcom		= 0;
				u1_flag_inv0_adj		= 0;

				u1_flag_inv0_state_start			= 0;

				u1_com_state_ref_rx_tmp	= u1_com_state_ref_rx;
			break;

			case 1:	/* スタンバイ	*/
				u1_flag_inv0_sysctrl_active_discharge	= 0;
				u1_flag_inv0_sysctrl		= 0;
				u1_flag_mode_inv0_idqcom		= 0;
				u1_flag_inv0_adj		= 0;

				u1_flag_inv0_state_start			= 1;

				u1_com_state_ref_rx_tmp	= u1_com_state_ref_rx;
			break;

			case 2: /* トルク制御	*/

				f4_tq_inv0_ref			= f4_com_tq_ref_rx;
				f4_speed_inv0_ref		= f4_com_speed_ref_rx;

				if((u1_flag_inv0_state_start == 1)||(u1_com_actual_state_tx == 4))
				{


					u1_flag_inv0_sysctrl_active_discharge	= 0;
					u1_flag_inv0_sysctrl		= 1;
					u1_flag_enable_inv0_wrctrl	= 0;
					u1_flag_mode_inv0_idqcom		= 1;
					u1_flag_inv0_adj		= 0;

					u1_flag_inv0_state_start			= 0;

					u1_com_state_ref_rx_tmp	= u1_com_state_ref_rx;
				}
				else{}
			break;

			case 3: /* 電流制御		*/

				f4_irms_inv0_ref		= f4_com_irms_ref_rx;
				f4_id_inv0_dc_adj		= f4_com_irms_ref_rx * (f4)(1.732);
				f4_f_inv0_slip_ref		= f4_com_f_slip_ref_rx;
				f4_speed_inv0_ref		= f4_com_speed_ref_rx;

				if(u1_flag_inv0_state_start == 1)
				{
					u1_flag_inv0_sysctrl_active_discharge	= 0;
					u1_flag_inv0_sysctrl		= 1;
					u1_flag_enable_inv0_wrctrl	= 0;
					u1_flag_mode_inv0_idqcom		= 0;
					u1_flag_inv0_adj		= 100;

					u1_flag_inv0_state_start			= 0;

					u1_com_state_ref_rx_tmp	= u1_com_state_ref_rx;
				}
				else{}
			break;

			case 4: /* 速度制御		*/
				f4_speed_inv0_ref		= f4_com_speed_ref_rx;

				if((u1_flag_inv0_state_start == 1)||(u1_com_actual_state_tx == 2))
				{
					u1_flag_inv0_sysctrl_active_discharge	= 0;
					u1_flag_inv0_sysctrl		= 1;
					u1_flag_enable_inv0_wrctrl	= 1;
					u1_flag_mode_inv0_idqcom		= 1;
					u1_flag_inv0_adj		= 0;

					u1_flag_inv0_state_start			= 0;

					u1_com_state_ref_rx_tmp	= u1_com_state_ref_rx;
				}
				else{}
			break;

			case 5: /* アクティブ放電	*/
				if(u1_flag_inv0_state_start == 1)
				{
					u1_flag_inv0_sysctrl_active_discharge	= 1;

					u1_flag_inv0_sysctrl		= 1;
					u1_flag_enable_inv0_wrctrl	= 0;
					u1_flag_mode_inv0_idqcom		= 0;
					u1_flag_inv0_adj		= 0;

					u1_flag_inv0_state_start			= 0;

					u1_com_state_ref_rx_tmp	= u1_com_state_ref_rx;
				}
				else{}

			break;

			case 6: /* 異常リセット	*/

				if(u4_flag_inv0_error != 0)
				{
					u1_flag_inv0_sysctrl		= 2;

					u1_flag_inv0_state_start			= 0;

					u1_com_state_ref_rx_tmp	= u1_com_state_ref_rx;
				}
				else{}
			break;

			default:
			break;
			}
	}
	else{}
	/*============================================================*/

	/*============================================================*/
	/*                     CAN通信(送信)処理    　                */
	/*============================================================*/
	if(u1_flag_can0_debug != 1)		/* CAN通信デバッグ無効 */
	{
	/* CAN通信と制御の紐付け */
		
		//運転指令状態判定シーケンス
		if(u4_flag_inv0_error != 0)
		{
			//Fault
			u1_com_actual_state_tx	= 7;
		}
		else
		{
			u1_com_actual_state_tx	= u1_com_state_ref_rx_tmp ;
		}

	//動作状態判定シーケンス
		if(1 == u1_pwm_inv0_status)
		{
			if(u1_flag_inv0_modevctrl == 1)		/* 1パルス */
			{
				/* 1パルス */
				u1_com_drive_state_tx		= 2;
			}
			else
			{
				/* 通常運転 */
				u1_com_drive_state_tx		= 1;
			}
		}
		else
		{
			/* PWM停止*/
			u1_com_drive_state_tx		= 0;
		}
		
		f4_com_tq_ref_tx		= f4_tq_inv0_ref_tmp;

		//Irms_ad演算
		f4_temp_1			= f4_id_inv0_ad * f4_id_inv0_ad;
		f4_temp_2			= f4_iq_inv0_ad * f4_iq_inv0_ad;
		f4_temp_3			= sqrtf(f4_temp_1 + f4_temp_2) * ((f4)(1.0/1.732));
		f4_com_irms_ad_tx		= f4_temp_3;

		f4_com_speed_lpf_tx		= f4_speed_inv0_lpf;
		f4_com_id_ref_tx		= f4_id_inv0_ref;
		f4_com_iq_ref_tx		= f4_iq_inv0_ref;
		//Irms_ref演算
		f4_temp_1			= f4_id_inv0_ref * f4_id_inv0_ref;
		f4_temp_2			= f4_iq_inv0_ref * f4_iq_inv0_ref;
		f4_temp_3			= sqrtf(f4_temp_1 + f4_temp_2) * ((f4)(1.0/1.732));
		f4_com_irms_ref_tx		= f4_temp_3;

		if(u1_flag_inv0_adj != 0)
		{
			f4_com_f_slip_ref_tx		= f4_f_inv0_slip_ref;
		}
		else
		{
			f4_com_f_slip_ref_tx		= f4_fsl_inv0_ref;
		}

		f4_com_id_ad_tx		= f4_id_inv0_ad;
		f4_com_iq_ad_tx		= f4_iq_inv0_ad;
		// f4_com_idc_est_tx		= f4_idc_inv0_ad;
		f4_com_idc_est_tx		= f4_idc_inv0_est;

		f4_com_speed_ref_tx		= f4_wr_inv0_ref * (f4)(60./TWOPI) / f4_pf_inv0;
		f4_com_vd_ref_tx		= f4_vd_inv0_ref;
		f4_com_vq_ref_tx		= f4_vq_inv0_ref;
		f4_com_vdc_ad_tx		= f4_vdc_inv0_ad;

		//vrms_ref演算
		f4_temp_1			= f4_vdq_inv0_ref * ((f4)(1.0/1.732));
		f4_com_vrms_ref_tx	= f4_temp_1;
		f4_com_tq_limit_p_tx		= f4_tq_inv0_ref_max;
		f4_com_tq_limit_n_tx		= f4_tq_inv0_ref_min;
		f4_com_tmp_mot1_tx		= f4_tmp_inv0_mot1;
		f4_com_tmp_mot2_tx		= f4_tmp_inv0_mot2;
		f4_com_tmp_int_tx		= f4_tmp_inv0_int;

		f4_com_tmp_igbt1_tx		= f4_tmp_inv0_igbt_up;
		f4_com_tmp_igbt2_tx		= f4_tmp_inv0_igbt_vp;
		f4_com_tmp_igbt3_tx		= f4_tmp_inv0_igbt_wp;
		f4_com_tmp_igbt4_tx		= f4_tmp_inv0_igbt_un;
		f4_com_tmp_igbt5_tx		= f4_tmp_inv0_igbt_vn;
		f4_com_tmp_igbt6_tx		= f4_tmp_inv0_igbt_wn;

		u4_com_flag_error1_tx		= u4_flag_inv0_error1;
		u4_com_flag_error2_tx		= u4_flag_inv0_error2;
		u4_com_flag_error_hw_tx		= u4_flag_inv0_error_hw;
		u4_com_flag_error_hw_lev_tx		= u4_flag_inv0_error_hw_lev;

	}
	else{}

	/* スケーリング処理 */
	{
		f4_temp_1		= (f4_com_tq_ref_tx - (f4)(0.0)) * (f4)(1.0 / 0.1);
		f4_temp_1		 = limit_can(f4_temp_1, (f4)(32767), (f4)(-32768));
		s2_com_tq_ref_tx		=(s2)(f4_temp_1);

		f4_temp_1		= (f4_com_irms_ad_tx - (f4)(0.0)) * (f4)(1.0 / 0.1);
		f4_temp_1		 = limit_can(f4_temp_1, (f4)(32767), (f4)(-32768));
		s2_com_irms_ad_tx		=(s2)(f4_temp_1);

		f4_temp_1		= (f4_com_speed_lpf_tx - (f4)(0.0)) * (f4)(1.0 / 1);
		f4_temp_1		 = limit_can(f4_temp_1, (f4)(32767), (f4)(-32768));
		s2_com_speed_lpf_tx		=(s2)(f4_temp_1);

		f4_temp_1		= (f4_com_id_ref_tx - (f4)(0.0)) * (f4)(1.0 / 0.1);
		f4_temp_1		 = limit_can(f4_temp_1, (f4)(32767), (f4)(-32768));
		s2_com_id_ref_tx		=(s2)(f4_temp_1);

		f4_temp_1		= (f4_com_iq_ref_tx - (f4)(0.0)) * (f4)(1.0 / 0.1);
		f4_temp_1		 = limit_can(f4_temp_1, (f4)(32767), (f4)(-32768));
		s2_com_iq_ref_tx		=(s2)(f4_temp_1);

		f4_temp_1		= (f4_com_irms_ref_tx - (f4)(0)) * (f4)(1.0 / 0.1);
		f4_temp_1		 = limit_can(f4_temp_1, (f4)(65535), (f4)(0));
		u2_com_irms_ref_tx		=(u2)(f4_temp_1);

		f4_temp_1		= (f4_com_f_slip_ref_tx - (f4)(0)) * (f4)(1.0 / 0.01);
		f4_temp_1		 = limit_can(f4_temp_1, (f4)(32767), (f4)(-32768));
		s2_com_f_slip_ref_tx		=(s2)(f4_temp_1);

		f4_temp_1		= (f4_com_id_ad_tx - (f4)(0)) * (f4)(1.0 / 0.1);
		f4_temp_1		 = limit_can(f4_temp_1, (f4)(32767), (f4)(-32768));
		s2_com_id_ad_tx		=(s2)(f4_temp_1);

		f4_temp_1		= (f4_com_iq_ad_tx - (f4)(0)) * (f4)(1.0 / 0.1);
		f4_temp_1		 = limit_can(f4_temp_1, (f4)(32767), (f4)(-32768));
		s2_com_iq_ad_tx		=(s2)(f4_temp_1);

		f4_temp_1		= (f4_com_idc_est_tx - (f4)(0)) * (f4)(1.0 / 0.1);
		f4_temp_1		 = limit_can(f4_temp_1, (f4)(32767), (f4)(-32768));
		s2_com_idc_est_tx		=(s2)(f4_temp_1);

		f4_temp_1		= (f4_com_speed_ref_tx - (f4)(0)) * (f4)(1.0 / 1.0);
		f4_temp_1		 = limit_can(f4_temp_1, (f4)(32767), (f4)(-32768));
		s2_com_speed_ref_tx		=(s2)(f4_temp_1);

		f4_temp_1		= (f4_com_vd_ref_tx - (f4)(0)) * (f4)(1.0 / 0.1);
		f4_temp_1		 = limit_can(f4_temp_1, (f4)(32767), (f4)(-32768));
		s2_com_vd_ref_tx		=(s2)(f4_temp_1);

		f4_temp_1		= (f4_com_vq_ref_tx - (f4)(0)) * (f4)(1.0 / 0.1);
		f4_temp_1		 = limit_can(f4_temp_1, (f4)(32767), (f4)(-32768));
		s2_com_vq_ref_tx		=(s2)(f4_temp_1);

		f4_temp_1		= (f4_com_vdc_ad_tx - (f4)(0)) * (f4)(1.0 / 0.1);
		f4_temp_1		 = limit_can(f4_temp_1, (f4)(65535), (f4)(0));
		u2_com_vdc_ad_tx		=(u2)(f4_temp_1);

		f4_temp_1		= (f4_com_vrms_ref_tx - (f4)(0)) * (f4)(1.0 / 0.1);
		f4_temp_1		 = limit_can(f4_temp_1, (f4)(65535), (f4)(0));
		u2_com_vrms_ref_tx		=(u2)(f4_temp_1);

		f4_temp_1		= (f4_com_tq_limit_p_tx - (f4)(0)) * (f4)(1.0 / 0.1);
		f4_temp_1		 = limit_can(f4_temp_1, (f4)(32767), (f4)(-32768));
		s2_com_tq_limit_p_tx		=(s2)(f4_temp_1);

		f4_temp_1		= (f4_com_tq_limit_n_tx - (f4)(0)) * (f4)(1.0 / 0.1);
		f4_temp_1		 = limit_can(f4_temp_1, (f4)(32767), (f4)(-32768));
		s2_com_tq_limit_n_tx		=(s2)(f4_temp_1);

		f4_temp_1		= (f4_com_tmp_mot1_tx - (f4)(-40)) * (f4)(1.0 / 1.0);
		f4_temp_1		 = limit_can(f4_temp_1, (f4)(255), (f4)(0));
		u1_com_tmp_mot1_tx		=(u1)(f4_temp_1);

		f4_temp_1		= (f4_com_tmp_mot2_tx - (f4)(-40)) * (f4)(1.0 / 1.0);
		f4_temp_1		 = limit_can(f4_temp_1, (f4)(255), (f4)(0));
		u1_com_tmp_mot2_tx		=(u1)(f4_temp_1);

		f4_temp_1		= (f4_com_tmp_int_tx - (f4)(-40)) * (f4)(1.0 / 1.0);
		f4_temp_1		 = limit_can(f4_temp_1, (f4)(255), (f4)(0));
		u1_com_tmp_int_tx		=(u1)(f4_temp_1);

		f4_temp_1		= (f4_com_tmp_igbt1_tx - (f4)(-40)) * (f4)(1.0 / 1.0);
		f4_temp_1		 = limit_can(f4_temp_1, (f4)(255), (f4)(0));
		u1_com_tmp_igbt1_tx		=(u1)(f4_temp_1);

		f4_temp_1		= (f4_com_tmp_igbt2_tx - (f4)(-40)) * (f4)(1.0 / 1.0);
		f4_temp_1		 = limit_can(f4_temp_1, (f4)(255), (f4)(0));
		u1_com_tmp_igbt2_tx		=(u1)(f4_temp_1);

		f4_temp_1		= (f4_com_tmp_igbt3_tx - (f4)(-40)) * (f4)(1.0 / 1.0);
		f4_temp_1		 = limit_can(f4_temp_1, (f4)(255), (f4)(0));
		u1_com_tmp_igbt3_tx		=(u1)(f4_temp_1);

		f4_temp_1		= (f4_com_tmp_igbt4_tx - (f4)(-40)) * (f4)(1.0 / 1.0);
		f4_temp_1		 = limit_can(f4_temp_1, (f4)(255), (f4)(0));
		u1_com_tmp_igbt4_tx		=(u1)(f4_temp_1);

		f4_temp_1		= (f4_com_tmp_igbt5_tx - (f4)(-40)) * (f4)(1.0 / 1.0);
		f4_temp_1		 = limit_can(f4_temp_1, (f4)(255), (f4)(0));
		u1_com_tmp_igbt5_tx		=(u1)(f4_temp_1);

		f4_temp_1		= (f4_com_tmp_igbt6_tx - (f4)(-40)) * (f4)(1.0 / 1.0);
		f4_temp_1		 = limit_can(f4_temp_1, (f4)(255), (f4)(0));
		u1_com_tmp_igbt6_tx		=(u1)(f4_temp_1);

	}

	/* 送信処理変数初期化 */
	TX_DATA_0x030.val.u1_0x030_tx_0		= (u1)(0);
	TX_DATA_0x030.val.u1_0x030_tx_1		= (u1)(0);
	TX_DATA_0x030.val.u1_0x030_tx_2		= (u1)(0);
	TX_DATA_0x030.val.u1_0x030_tx_3		= (u1)(0);
	TX_DATA_0x030.val.u1_0x030_tx_4		= (u1)(0);
	TX_DATA_0x030.val.u1_0x030_tx_5		= (u1)(0);
	TX_DATA_0x030.val.u1_0x030_tx_6		= (u1)(0);
	TX_DATA_0x030.val.u1_0x030_tx_7		= (u1)(0);
	TX_DATA_0x031.val.u1_0x031_tx_0		= (u1)(0);
	TX_DATA_0x031.val.u1_0x031_tx_1		= (u1)(0);
	TX_DATA_0x031.val.u1_0x031_tx_2		= (u1)(0);
	TX_DATA_0x031.val.u1_0x031_tx_3		= (u1)(0);
	TX_DATA_0x031.val.u1_0x031_tx_4		= (u1)(0);
	TX_DATA_0x031.val.u1_0x031_tx_5		= (u1)(0);
	TX_DATA_0x031.val.u1_0x031_tx_6		= (u1)(0);
	TX_DATA_0x031.val.u1_0x031_tx_7		= (u1)(0);
	TX_DATA_0x032.val.u1_0x032_tx_0		= (u1)(0);
	TX_DATA_0x032.val.u1_0x032_tx_1		= (u1)(0);
	TX_DATA_0x032.val.u1_0x032_tx_2		= (u1)(0);
	TX_DATA_0x032.val.u1_0x032_tx_3		= (u1)(0);
	TX_DATA_0x032.val.u1_0x032_tx_4		= (u1)(0);
	TX_DATA_0x032.val.u1_0x032_tx_5		= (u1)(0);
	TX_DATA_0x032.val.u1_0x032_tx_6		= (u1)(0);
	TX_DATA_0x032.val.u1_0x032_tx_7		= (u1)(0);
	TX_DATA_0x033.val.u1_0x033_tx_0		= (u1)(0);
	TX_DATA_0x033.val.u1_0x033_tx_1		= (u1)(0);
	TX_DATA_0x033.val.u1_0x033_tx_2		= (u1)(0);
	TX_DATA_0x033.val.u1_0x033_tx_3		= (u1)(0);
	TX_DATA_0x033.val.u1_0x033_tx_4		= (u1)(0);
	TX_DATA_0x033.val.u1_0x033_tx_5		= (u1)(0);
	TX_DATA_0x033.val.u1_0x033_tx_6		= (u1)(0);
	TX_DATA_0x033.val.u1_0x033_tx_7		= (u1)(0);
	TX_DATA_0x034.val.u1_0x034_tx_0		= (u1)(0);
	TX_DATA_0x034.val.u1_0x034_tx_1		= (u1)(0);
	TX_DATA_0x034.val.u1_0x034_tx_2		= (u1)(0);
	TX_DATA_0x034.val.u1_0x034_tx_3		= (u1)(0);
	TX_DATA_0x034.val.u1_0x034_tx_4		= (u1)(0);
	TX_DATA_0x034.val.u1_0x034_tx_5		= (u1)(0);
	TX_DATA_0x034.val.u1_0x034_tx_6		= (u1)(0);
	TX_DATA_0x034.val.u1_0x034_tx_7		= (u1)(0);
	TX_DATA_0x035.val.u1_0x035_tx_0		= (u1)(0);
	TX_DATA_0x035.val.u1_0x035_tx_1		= (u1)(0);
	TX_DATA_0x035.val.u1_0x035_tx_2		= (u1)(0);
	TX_DATA_0x035.val.u1_0x035_tx_3		= (u1)(0);
	TX_DATA_0x035.val.u1_0x035_tx_4		= (u1)(0);
	TX_DATA_0x035.val.u1_0x035_tx_5		= (u1)(0);
	TX_DATA_0x035.val.u1_0x035_tx_6		= (u1)(0);
	TX_DATA_0x035.val.u1_0x035_tx_7		= (u1)(0);
	TX_DATA_0x036.val.u1_0x036_tx_0		= (u1)(0);
	TX_DATA_0x036.val.u1_0x036_tx_1		= (u1)(0);
	TX_DATA_0x036.val.u1_0x036_tx_2		= (u1)(0);
	TX_DATA_0x036.val.u1_0x036_tx_3		= (u1)(0);
	TX_DATA_0x036.val.u1_0x036_tx_4		= (u1)(0);
	TX_DATA_0x036.val.u1_0x036_tx_5		= (u1)(0);
	TX_DATA_0x036.val.u1_0x036_tx_6		= (u1)(0);
	TX_DATA_0x036.val.u1_0x036_tx_7		= (u1)(0);
	TX_DATA_0x037.val.u1_0x037_tx_0		= (u1)(0);
	TX_DATA_0x037.val.u1_0x037_tx_1		= (u1)(0);
	TX_DATA_0x037.val.u1_0x037_tx_2		= (u1)(0);
	TX_DATA_0x037.val.u1_0x037_tx_3		= (u1)(0);
	TX_DATA_0x037.val.u1_0x037_tx_4		= (u1)(0);
	TX_DATA_0x037.val.u1_0x037_tx_5		= (u1)(0);
	TX_DATA_0x037.val.u1_0x037_tx_6		= (u1)(0);
	TX_DATA_0x037.val.u1_0x037_tx_7		= (u1)(0);
	TX_DATA_0x038.val.u1_0x038_tx_0		= (u1)(0);
	TX_DATA_0x038.val.u1_0x038_tx_1		= (u1)(0);
	TX_DATA_0x038.val.u1_0x038_tx_2		= (u1)(0);
	TX_DATA_0x038.val.u1_0x038_tx_3		= (u1)(0);
	TX_DATA_0x038.val.u1_0x038_tx_4		= (u1)(0);
	TX_DATA_0x038.val.u1_0x038_tx_5		= (u1)(0);
	TX_DATA_0x038.val.u1_0x038_tx_6		= (u1)(0);
	TX_DATA_0x038.val.u1_0x038_tx_7		= (u1)(0);

	/* 送信処理 */
	TX_DATA_0x030.val.u1_0x030_tx_0		|= (u1)((u4)(u1_com_actual_state_tx) ) & 0xFF;
	
	TX_DATA_0x030.val.u1_0x030_tx_1		|= (u1)((u4)(u1_com_drive_state_tx) ) & 0xFF;
	
	TX_DATA_0x030.val.u1_0x030_tx_2		|= (u1)((u4)(s2_com_tq_ref_tx) ) & 0xFF;
	TX_DATA_0x030.val.u1_0x030_tx_3		|= (u1)((u4)(s2_com_tq_ref_tx) >> 8) & 0xFF;
	
	TX_DATA_0x030.val.u1_0x030_tx_4		|= (u1)((u4)(s2_com_irms_ad_tx) ) & 0xFF;
	TX_DATA_0x030.val.u1_0x030_tx_5		|= (u1)((u4)(s2_com_irms_ad_tx) >> 8) & 0xFF;
	
	TX_DATA_0x030.val.u1_0x030_tx_6		|= (u1)((u4)(s2_com_speed_lpf_tx) ) & 0xFF;
	TX_DATA_0x030.val.u1_0x030_tx_7		|= (u1)((u4)(s2_com_speed_lpf_tx) >> 8) & 0xFF;
	

	TX_DATA_0x031.val.u1_0x031_tx_0		|= (u1)((u4)(s2_com_id_ref_tx) ) & 0xFF;
	TX_DATA_0x031.val.u1_0x031_tx_1		|= (u1)((u4)(s2_com_id_ref_tx) >> 8) & 0xFF;
	
	TX_DATA_0x031.val.u1_0x031_tx_2		|= (u1)((u4)(s2_com_iq_ref_tx) ) & 0xFF;
	TX_DATA_0x031.val.u1_0x031_tx_3		|= (u1)((u4)(s2_com_iq_ref_tx) >> 8) & 0xFF;
	
	TX_DATA_0x031.val.u1_0x031_tx_4		|= (u1)((u4)(u2_com_irms_ref_tx) ) & 0xFF;
	TX_DATA_0x031.val.u1_0x031_tx_5		|= (u1)((u4)(u2_com_irms_ref_tx) >> 8) & 0xFF;
	
	TX_DATA_0x031.val.u1_0x031_tx_6		|= (u1)((u4)(s2_com_f_slip_ref_tx) ) & 0xFF;
	TX_DATA_0x031.val.u1_0x031_tx_7		|= (u1)((u4)(s2_com_f_slip_ref_tx) >> 8) & 0xFF;
	

	TX_DATA_0x032.val.u1_0x032_tx_0		|= (u1)((u4)(s2_com_id_ad_tx) ) & 0xFF;
	TX_DATA_0x032.val.u1_0x032_tx_1		|= (u1)((u4)(s2_com_id_ad_tx) >> 8) & 0xFF;
	
	TX_DATA_0x032.val.u1_0x032_tx_2		|= (u1)((u4)(s2_com_iq_ad_tx) ) & 0xFF;
	TX_DATA_0x032.val.u1_0x032_tx_3		|= (u1)((u4)(s2_com_iq_ad_tx) >> 8) & 0xFF;
	
	TX_DATA_0x032.val.u1_0x032_tx_4		|= (u1)((u4)(s2_com_idc_est_tx) ) & 0xFF;
	TX_DATA_0x032.val.u1_0x032_tx_5		|= (u1)((u4)(s2_com_idc_est_tx) >> 8) & 0xFF;
	
	TX_DATA_0x032.val.u1_0x032_tx_6		|= (u1)((u4)(s2_com_speed_ref_tx) ) & 0xFF;
	TX_DATA_0x032.val.u1_0x032_tx_7		|= (u1)((u4)(s2_com_speed_ref_tx) >> 8) & 0xFF;
	

	TX_DATA_0x033.val.u1_0x033_tx_0		|= (u1)((u4)(s2_com_vd_ref_tx) ) & 0xFF;
	TX_DATA_0x033.val.u1_0x033_tx_1		|= (u1)((u4)(s2_com_vd_ref_tx) >> 8) & 0xFF;
	
	TX_DATA_0x033.val.u1_0x033_tx_2		|= (u1)((u4)(s2_com_vq_ref_tx) ) & 0xFF;
	TX_DATA_0x033.val.u1_0x033_tx_3		|= (u1)((u4)(s2_com_vq_ref_tx) >> 8) & 0xFF;
	
	TX_DATA_0x033.val.u1_0x033_tx_4		|= (u1)((u4)(u2_com_vdc_ad_tx) ) & 0xFF;
	TX_DATA_0x033.val.u1_0x033_tx_5		|= (u1)((u4)(u2_com_vdc_ad_tx) >> 8) & 0xFF;
	
	TX_DATA_0x033.val.u1_0x033_tx_6		|= (u1)((u4)(u2_com_vrms_ref_tx) ) & 0xFF;
	TX_DATA_0x033.val.u1_0x033_tx_7		|= (u1)((u4)(u2_com_vrms_ref_tx) >> 8) & 0xFF;
	

	TX_DATA_0x034.val.u1_0x034_tx_0		|= (u1)((u4)(s2_com_tq_limit_p_tx) ) & 0xFF;
	TX_DATA_0x034.val.u1_0x034_tx_1		|= (u1)((u4)(s2_com_tq_limit_p_tx) >> 8) & 0xFF;
	
	TX_DATA_0x034.val.u1_0x034_tx_2		|= (u1)((u4)(s2_com_tq_limit_n_tx) ) & 0xFF;
	TX_DATA_0x034.val.u1_0x034_tx_3		|= (u1)((u4)(s2_com_tq_limit_n_tx) >> 8) & 0xFF;
	
	TX_DATA_0x034.val.u1_0x034_tx_4		|= (u1)((u4)(u1_com_tmp_mot1_tx) ) & 0xFF;
	
	TX_DATA_0x034.val.u1_0x034_tx_5		|= (u1)((u4)(u1_com_tmp_mot2_tx) ) & 0xFF;
	
	TX_DATA_0x034.val.u1_0x034_tx_6		|= (u1)((u4)(u1_com_tmp_int_tx) ) & 0xFF;
	

	TX_DATA_0x035.val.u1_0x035_tx_0		|= (u1)((u4)(u1_com_tmp_igbt1_tx) ) & 0xFF;
	
	TX_DATA_0x035.val.u1_0x035_tx_1		|= (u1)((u4)(u1_com_tmp_igbt2_tx) ) & 0xFF;
	
	TX_DATA_0x035.val.u1_0x035_tx_2		|= (u1)((u4)(u1_com_tmp_igbt3_tx) ) & 0xFF;
	
	TX_DATA_0x035.val.u1_0x035_tx_3		|= (u1)((u4)(u1_com_tmp_igbt4_tx) ) & 0xFF;
	
	TX_DATA_0x035.val.u1_0x035_tx_4		|= (u1)((u4)(u1_com_tmp_igbt5_tx) ) & 0xFF;
	
	TX_DATA_0x035.val.u1_0x035_tx_5		|= (u1)((u4)(u1_com_tmp_igbt6_tx) ) & 0xFF;
	

	TX_DATA_0x036.val.u1_0x036_tx_0		|= (u1)((u4)(u4_com_flag_error1_tx) ) & 0xFF;
	TX_DATA_0x036.val.u1_0x036_tx_1		|= (u1)((u4)(u4_com_flag_error1_tx) >> 8) & 0xFF;
	TX_DATA_0x036.val.u1_0x036_tx_2		|= (u1)((u4)(u4_com_flag_error1_tx) >> 16) & 0xFF;
	TX_DATA_0x036.val.u1_0x036_tx_3		|= (u1)((u4)(u4_com_flag_error1_tx) >> 24) & 0xFF;
	
	TX_DATA_0x036.val.u1_0x036_tx_4		|= (u1)((u4)(u4_com_flag_error2_tx) ) & 0xFF;
	TX_DATA_0x036.val.u1_0x036_tx_5		|= (u1)((u4)(u4_com_flag_error2_tx) >> 8) & 0xFF;
	TX_DATA_0x036.val.u1_0x036_tx_6		|= (u1)((u4)(u4_com_flag_error2_tx) >> 16) & 0xFF;
	TX_DATA_0x036.val.u1_0x036_tx_7		|= (u1)((u4)(u4_com_flag_error2_tx) >> 24) & 0xFF;
	

	TX_DATA_0x037.val.u1_0x037_tx_0		|= (u1)((u4)(u4_com_flag_error_hw_tx) ) & 0xFF;
	TX_DATA_0x037.val.u1_0x037_tx_1		|= (u1)((u4)(u4_com_flag_error_hw_tx) >> 8) & 0xFF;
	TX_DATA_0x037.val.u1_0x037_tx_2		|= (u1)((u4)(u4_com_flag_error_hw_tx) >> 16) & 0xFF;
	TX_DATA_0x037.val.u1_0x037_tx_3		|= (u1)((u4)(u4_com_flag_error_hw_tx) >> 24) & 0xFF;
	
	TX_DATA_0x037.val.u1_0x037_tx_4		|= (u1)((u4)(u4_com_flag_error_hw_lev_tx) ) & 0xFF;
	TX_DATA_0x037.val.u1_0x037_tx_5		|= (u1)((u4)(u4_com_flag_error_hw_lev_tx) >> 8) & 0xFF;
	TX_DATA_0x037.val.u1_0x037_tx_6		|= (u1)((u4)(u4_com_flag_error_hw_lev_tx) >> 16) & 0xFF;
	TX_DATA_0x037.val.u1_0x037_tx_7		|= (u1)((u4)(u4_com_flag_error_hw_lev_tx) >> 24) & 0xFF;
	


	/*============================================================*/

	/*============================================================*/
	/*                       送信データ設定     　                */
	/*============================================================*/
	for(i = 0; i < 8 ; i++)
	{
		CAN_MBOX_TX_ID0x030.union_data.data[i] = TX_DATA_0x030.u1b[i];
	}

	for(i = 0; i < 8 ; i++)
	{
		CAN_MBOX_TX_ID0x031.union_data.data[i] = TX_DATA_0x031.u1b[i];
	}

	for(i = 0; i < 8 ; i++)
	{
		CAN_MBOX_TX_ID0x032.union_data.data[i] = TX_DATA_0x032.u1b[i];
	}

	for(i = 0; i < 8 ; i++)
	{
		CAN_MBOX_TX_ID0x033.union_data.data[i] = TX_DATA_0x033.u1b[i];
	}

	for(i = 0; i < 8 ; i++)
	{
		CAN_MBOX_TX_ID0x034.union_data.data[i] = TX_DATA_0x034.u1b[i];
	}

	for(i = 0; i < 8 ; i++)
	{
		CAN_MBOX_TX_ID0x035.union_data.data[i] = TX_DATA_0x035.u1b[i];
	}

	for(i = 0; i < 8 ; i++)
	{
		CAN_MBOX_TX_ID0x036.union_data.data[i] = TX_DATA_0x036.u1b[i];
	}

	for(i = 0; i < 8 ; i++)
	{
		CAN_MBOX_TX_ID0x037.union_data.data[i] = TX_DATA_0x037.u1b[i];
	}

	for(i = 0; i < 8 ; i++)
	{
		CAN_MBOX_TX_ID0x038.union_data.data[i] = TX_DATA_0x038.u1b[i];
	}

	/*============================================================*/

	/*============================================================*/
	/*                         データ送信       　                */
	/*============================================================*/
	u2_cnt_10ms_tx0++;

	if(u2_cnt_10ms_tx0 >= (u2)(10))		/* 10ms間隔送信 */
	{
		can_tx_data( CAN_CH, &CAN_MBOX_TX_ID0x030);
		can_tx_data( CAN_CH, &CAN_MBOX_TX_ID0x031);
		can_tx_data( CAN_CH, &CAN_MBOX_TX_ID0x032);
		can_tx_data( CAN_CH, &CAN_MBOX_TX_ID0x033);
		can_tx_data( CAN_CH, &CAN_MBOX_TX_ID0x034);
		can_tx_data( CAN_CH, &CAN_MBOX_TX_ID0x035);
		can_tx_data( CAN_CH, &CAN_MBOX_TX_ID0x036);
		can_tx_data( CAN_CH, &CAN_MBOX_TX_ID0x037);
		can_tx_data( CAN_CH, &CAN_MBOX_TX_ID0x038);

		u2_cnt_10ms_tx0 = 0;
	}
	else{}

	/*============================================================*/

	/*============================================================*/
	/*                       CAN0バス異常検出                     */
	/*============================================================*/
	u4_status_can0_tmp = can_module_busoffchk(CAN_CH);
	if ( 0x04 ==  (u4_status_can0_tmp & 0x04 ) )
	{
		u4_status_can0 = u4_status_can0 | CAN0_WARING_BUSOFF_EPASSIVE;
	}
	else
	{
		u4_status_can0 = u4_status_can0 & ~CAN0_WARING_BUSOFF_EPASSIVE;
	}

	if(1 == u1_flag_can0_com_id0x010_startchk)
	{
		u2_cnt_can0_1ms_id0x010_comchk++;
	}
	else{}

	if((u2_cnt_can0_1ms_id0x010_comchk >= u2_cnt_can0_1ms_id0x010_comchk_max) && (u2_cnt_can0_1ms_id0x010_comchk_max != 0))
	{
		u1_flag_can0_com_id0x010_startchk = 0;
		u2_cnt_can0_1ms_id0x010_comchk = u2_cnt_can0_1ms_id0x010_comchk_max + 1;
		u4_status_can0 = u4_status_can0 | CAN0_NOT_ID0x010_ARRIVE;
	}
	else
	{
		u4_status_can0 = u4_status_can0 & ~CAN0_NOT_ID0x010_ARRIVE;
	}

	if(1 == u1_flag_can0_com_id0x011_startchk)
	{
		u2_cnt_can0_1ms_id0x011_comchk++;
	}
	else{}

	if((u2_cnt_can0_1ms_id0x011_comchk >= u2_cnt_can0_1ms_id0x011_comchk_max) && (u2_cnt_can0_1ms_id0x011_comchk_max != 0))
	{
		u1_flag_can0_com_id0x011_startchk = 0;
		u2_cnt_can0_1ms_id0x011_comchk = u2_cnt_can0_1ms_id0x011_comchk_max + 1;
		u4_status_can0 = u4_status_can0 | CAN0_NOT_ID0x011_ARRIVE;
	}
	else
	{
		u4_status_can0 = u4_status_can0 & ~CAN0_NOT_ID0x011_ARRIVE;
	}

	/*============================================================*/
}

/*===============================================================
+                                                               +
+               Name:     void fb_can0_rx_data (void)           +
+           Function:   　CAN通信データ受信関数                 +
+                                                               +
+               date:        27 Jun,2024                        +
+            version:        1.010                              +
================================================================*/
u4		u4_chk;
u4		u4_chk_id;
u4 fb_can0_rx_data (void)
{
	/*============================================================*/
	/*                     ローカル変数定義     　                */
	/*============================================================*/
	u4				i;												/* テンポラリ変数 */
	CAN_ST_MBOX		CAN_MBOX_RX;									/* テンポラリ変数 */
	u4				u4_can_status;									/* テンポラリ変数 */
	u4				u4_id;											/* テンポラリ変数 */
	/*============================================================*/

	/*============================================================*/
	/*                     受信メッセージ取得   　                */
	/*============================================================*/
	u4_can_status = 0;
	while ( 1 == u4_rx_fifo_chk( (u1)(CAN_CH)) )		/* CH0 FIFO 未読データあり */
	{
		can_rx_data(CAN_CH, &CAN_MBOX_RX);		/* 受信データ格納 */
		u4_chk++;
		u4_id   = CAN_MBOX_RX.id ;
		u4_chk_id = u4_id ;
		switch ( u4_id )
		{
			case CANID_0x010:
				for(i = 0; i < 8 ; i++)
				{
					RX_DATA_0x010.u1b[i] = CAN_MBOX_RX.union_data.data[i];
				}
				u4_can_status |= ID_0x010_RX_FLG;
			break;

			case CANID_0x011:
				for(i = 0; i < 8 ; i++)
				{
					RX_DATA_0x011.u1b[i] = CAN_MBOX_RX.union_data.data[i];
				}
				u4_can_status |= ID_0x011_RX_FLG;
			break;

			default:
			break;
		}
	}
	/*============================================================*/
	return ( u4_can_status ) ;

}

/*===============================================================
+                                                               +
+               Name:     void fb_can0_ctrl_init (void)         +
+           Function:   　CAN通信IFパラメータ初期化関数         +
+                                                               +
+               date:        27 Jun,2024                        +
+            version:        1.010                              +
================================================================*/
void fb_can0_ctrl_init (void)
{
	/*============================================================*/
	/*                   CAN通信受信状態変数初期化                */
	/*============================================================*/
	u4_flag_rx0_flag		= (u4)(0);
	/*============================================================*/

	/*============================================================*/
	/*                     送受信データ変数初期化                 */
	/*============================================================*/
	u1_flag_can0_debug		= (u1)(CAN0_DEBUG);

	/* 受信データ */
	u1_com_state_ref_rx		= (u1)(0);
	u1_com_state_ref_rx_tmp		= (u1)(0);
	u2_com_tq_ref_rate_rx		= (u2)(0);
	u2_com_irms_ref_rate_rx		= (u2)(0);
	u2_com_speed_ref_rate_rx		= (u2)(0);
	s2_com_tq_ref_rx		= (s2)(0);
	s2_com_irms_ref_rx		= (s2)(0);
	s2_com_f_slip_ref_rx		= (s2)(0);
	s2_com_speed_ref_rx		= (s2)(0);

	/* 受信データ 追加 */

	/* 受信データ float変数 */
	f4_com_tq_ref_rate_rx		= (f4)(0.0);
	f4_com_irms_ref_rate_rx		= (f4)(0.0);
	f4_com_speed_ref_rate_rx		= (f4)(0.0);
	f4_com_tq_ref_rx		= (f4)(0.0);
	f4_com_irms_ref_rx		= (f4)(0.0);
	f4_com_f_slip_ref_rx		= (f4)(0.0);
	f4_com_speed_ref_rx		= (f4)(0.0);

	/* 受信データ 処理用変数 */
	u1_flag_inv0_state_start	= 0;

	/* 送信データ */
	u1_com_actual_state_tx		= (u1)(0);
	u1_com_drive_state_tx		= (u1)(0);
	s2_com_tq_ref_tx		= (s2)(0);
	s2_com_irms_ad_tx		= (s2)(0);
	s2_com_speed_lpf_tx		= (s2)(0);
	s2_com_id_ref_tx		= (s2)(0);
	s2_com_iq_ref_tx		= (s2)(0);
	u2_com_irms_ref_tx		= (u2)(0);
	s2_com_f_slip_ref_tx		= (s2)(0);
	s2_com_id_ad_tx		= (s2)(0);
	s2_com_iq_ad_tx		= (s2)(0);
	s2_com_idc_est_tx		= (s2)(0);
	s2_com_speed_ref_tx		= (s2)(0);
	s2_com_vd_ref_tx		= (s2)(0);
	s2_com_vq_ref_tx		= (s2)(0);
	u2_com_vdc_ad_tx		= (u2)(0);
	u2_com_vrms_ref_tx		= (u2)(0);
	s2_com_tq_limit_p_tx		= (s2)(0);
	s2_com_tq_limit_n_tx		= (s2)(0);
	u1_com_tmp_mot1_tx		= (u1)(40);
	u1_com_tmp_mot2_tx		= (u1)(40);
	u1_com_tmp_int_tx		= (u1)(40);
	u1_com_tmp_igbt1_tx		= (u1)(40);
	u1_com_tmp_igbt2_tx		= (u1)(40);
	u1_com_tmp_igbt3_tx		= (u1)(40);
	u1_com_tmp_igbt4_tx		= (u1)(40);
	u1_com_tmp_igbt5_tx		= (u1)(40);
	u1_com_tmp_igbt6_tx		= (u1)(40);
	u4_com_flag_error1_tx		= (u4)(0);
	u4_com_flag_error2_tx		= (u4)(0);
	u4_com_flag_error_hw_tx		= (u4)(0);
	u4_com_flag_error_hw_lev_tx		= (u4)(0);

	/* 送信データ 追加 */

	/* 送信データ float変数 */
	f4_com_tq_ref_tx		= (f4)(0.0);
	f4_com_irms_ad_tx		= (f4)(0.0);
	f4_com_speed_lpf_tx		= (f4)(0.0);
	f4_com_id_ref_tx		= (f4)(0.0);
	f4_com_iq_ref_tx		= (f4)(0.0);
	f4_com_irms_ref_tx		= (f4)(0.0);
	f4_com_f_slip_ref_tx		= (f4)(0.0);
	f4_com_id_ad_tx		= (f4)(0.0);
	f4_com_iq_ad_tx		= (f4)(0.0);
	f4_com_idc_est_tx		= (f4)(0.0);
	f4_com_speed_ref_tx		= (f4)(0.0);
	f4_com_vd_ref_tx		= (f4)(0.0);
	f4_com_vq_ref_tx		= (f4)(0.0);
	f4_com_vdc_ad_tx		= (f4)(0.0);
	f4_com_vrms_ref_tx		= (f4)(0.0);
	f4_com_tq_limit_p_tx		= (f4)(0.0);
	f4_com_tq_limit_n_tx		= (f4)(0.0);
	f4_com_tmp_mot1_tx		= (f4)(0.0);
	f4_com_tmp_mot2_tx		= (f4)(0.0);
	f4_com_tmp_int_tx		= (f4)(0.0);
	f4_com_tmp_igbt1_tx		= (f4)(0.0);
	f4_com_tmp_igbt2_tx		= (f4)(0.0);
	f4_com_tmp_igbt3_tx		= (f4)(0.0);
	f4_com_tmp_igbt4_tx		= (f4)(0.0);
	f4_com_tmp_igbt5_tx		= (f4)(0.0);
	f4_com_tmp_igbt6_tx		= (f4)(0.0);

	/* 送信データ 処理用変数 */

	/*============================================================*/

	/*============================================================*/
	/*                  CAN通信送信カウンタ初期化                 */
	/*============================================================*/
	u2_cnt_10ms_tx0		= (u2)(10);
	/*============================================================*/

	/*============================================================*/
	/*                  CAN通信送信カウンタ初期化                 */
	/*============================================================*/
	u4_status_can0_tmp		= (u4)(0);
	u4_status_can0		= (u4)(0);

	u1_flag_can0_com_id0x010_startchk		= (u1)(0);
	u2_cnt_can0_1ms_id0x010_comchk		= (u2)(0);
	u2_cnt_can0_1ms_id0x010_comchk_max		= (u2)(CNT_ERR_CAN0_ID0x010_RX);

	u1_flag_can0_com_id0x011_startchk		= (u1)(0);
	u2_cnt_can0_1ms_id0x011_comchk		= (u2)(0);
	u2_cnt_can0_1ms_id0x011_comchk_max		= (u2)(CNT_ERR_CAN0_ID0x011_RX);

	/*============================================================*/

}

/*===============================================================
+                                                               +
+               Name:     void fb_can0_driver_init (void)       +
+           Function:   　CAN通信ドライバ初期化関数             +
+                                                               +
+               date:        27 Jun,2024                        +
+            version:        1.010                              +
================================================================*/
void fb_can0_driver_init (void)
{
	/*============================================================*/
	/*                     ローカル変数定義                       */
	/*============================================================*/
	CAN_ST_MBOX		CAN_MBOX_RX;									/* テンポラリ変数 */
	/*============================================================*/

	/*============================================================*/
	/*                   初期化エラーフラグ初期化                 */
	/*============================================================*/
	u1_flag_can0_initerr		= (u1)(0);
	/*============================================================*/

	/*============================================================*/
	/*                 受信用メッセージボックス初期化             */
	/*                can_initの前に読み出す事（RS-CAN)           */
	/*                  実際の設定は、can_initで設定              */
	/*============================================================*/
	CAN_MBOX_RX.mb		= 0;
	CAN_MBOX_RX.dlc		= 8;
	CAN_MBOX_RX.id		= CANID_0x010;
	CAN_MBOX_RX.extended		= 0;
	u1_flag_can0_initerr		|= can_setup_rx_mbox( CAN_CH, &CAN_MBOX_RX);

	CAN_MBOX_RX.mb		= 1;
	CAN_MBOX_RX.dlc		= 8;
	CAN_MBOX_RX.id		= CANID_0x011;
	CAN_MBOX_RX.extended		= 0;
	u1_flag_can0_initerr		|= can_setup_rx_mbox( CAN_CH, &CAN_MBOX_RX);

	/*============================================================*/

	/*============================================================*/
	/*                 送信用メッセージボックス初期化             */
	/*============================================================*/
	CAN_MBOX_TX_ID0x030.mb 		= 0;
	CAN_MBOX_TX_ID0x030.dlc		= 8;
	CAN_MBOX_TX_ID0x030.id		= CANID_0x030;
	CAN_MBOX_TX_ID0x030.extended		= 0;
	u1_flag_can0_initerr		|= can_setup_tx_mbox( CAN_CH, &CAN_MBOX_TX_ID0x030);

	CAN_MBOX_TX_ID0x031.mb 		= 1;
	CAN_MBOX_TX_ID0x031.dlc		= 8;
	CAN_MBOX_TX_ID0x031.id		= CANID_0x031;
	CAN_MBOX_TX_ID0x031.extended		= 0;
	u1_flag_can0_initerr		|= can_setup_tx_mbox( CAN_CH, &CAN_MBOX_TX_ID0x031);

	CAN_MBOX_TX_ID0x032.mb 		= 2;
	CAN_MBOX_TX_ID0x032.dlc		= 8;
	CAN_MBOX_TX_ID0x032.id		= CANID_0x032;
	CAN_MBOX_TX_ID0x032.extended		= 0;
	u1_flag_can0_initerr		|= can_setup_tx_mbox( CAN_CH, &CAN_MBOX_TX_ID0x032);

	CAN_MBOX_TX_ID0x033.mb 		= 3;
	CAN_MBOX_TX_ID0x033.dlc		= 8;
	CAN_MBOX_TX_ID0x033.id		= CANID_0x033;
	CAN_MBOX_TX_ID0x033.extended		= 0;
	u1_flag_can0_initerr		|= can_setup_tx_mbox( CAN_CH, &CAN_MBOX_TX_ID0x033);

	CAN_MBOX_TX_ID0x034.mb 		= 4;
	CAN_MBOX_TX_ID0x034.dlc		= 8;
	CAN_MBOX_TX_ID0x034.id		= CANID_0x034;
	CAN_MBOX_TX_ID0x034.extended		= 0;
	u1_flag_can0_initerr		|= can_setup_tx_mbox( CAN_CH, &CAN_MBOX_TX_ID0x034);

	CAN_MBOX_TX_ID0x035.mb 		= 5;
	CAN_MBOX_TX_ID0x035.dlc		= 8;
	CAN_MBOX_TX_ID0x035.id		= CANID_0x035;
	CAN_MBOX_TX_ID0x035.extended		= 0;
	u1_flag_can0_initerr		|= can_setup_tx_mbox( CAN_CH, &CAN_MBOX_TX_ID0x035);

	CAN_MBOX_TX_ID0x036.mb 		= 6;
	CAN_MBOX_TX_ID0x036.dlc		= 8;
	CAN_MBOX_TX_ID0x036.id		= CANID_0x036;
	CAN_MBOX_TX_ID0x036.extended		= 0;
	u1_flag_can0_initerr		|= can_setup_tx_mbox( CAN_CH, &CAN_MBOX_TX_ID0x036);

	CAN_MBOX_TX_ID0x037.mb 		= 7;
	CAN_MBOX_TX_ID0x037.dlc		= 8;
	CAN_MBOX_TX_ID0x037.id		= CANID_0x037;
	CAN_MBOX_TX_ID0x037.extended		= 0;
	u1_flag_can0_initerr		|= can_setup_tx_mbox( CAN_CH, &CAN_MBOX_TX_ID0x037);

	CAN_MBOX_TX_ID0x038.mb 		= 8;
	CAN_MBOX_TX_ID0x038.dlc		= 8;
	CAN_MBOX_TX_ID0x038.id		= CANID_0x038;
	CAN_MBOX_TX_ID0x038.extended		= 0;
	u1_flag_can0_initerr		|= can_setup_tx_mbox( CAN_CH, &CAN_MBOX_TX_ID0x038);

	/*============================================================*/

	/*============================================================*/
	/*                        CANモジュール初期化                 */
	/*============================================================*/
	/* FCAN0初期化
	1 規格                  ISO 11898 CAN ver2.0B
	2 ボーレート            500[kbps]
	3 データフォーマット    通常(bit)
	4 サンプリングポイント  75[%]
	5 再同期ジャンプ幅(SJW) 2[TQ]
	6 Byte Order            Little Endian Intel
	7 BTL                   8
	*/
	can0_init(500, 4, 1, 1);
	/*============================================================*/

}

