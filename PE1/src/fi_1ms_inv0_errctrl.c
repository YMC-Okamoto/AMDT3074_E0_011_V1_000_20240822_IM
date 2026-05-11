/*===============================================================
+																+
+			Title:		IPMSMモータ制御ソフトウェア				+
+					　(RH850/C1M専用コントローラ対応品)			+
+																+
+				date:		 10th Mar,2017						+
+  	 	Copyright (C) Aoyama Motor Drive Technology 2017		+
+																+
===============================================================*/

/*=============================================================*/
/* 				 ヘッダファイルのインクルード				   */
/*=============================================================*/
#include	"CPU_common.h"										/* CPU共通ヘッダファイル						*/

/* 制御プログラム関係			*/
#include    "fim_gwork_inv0.h"									/* 制御プログラムヘッダファイル					*/
#include    "fim_user_inv0.h"									/* ユーザ設定パラメータヘッダファイル			*/
/*=============================================================*/

/*=============================================================*/
/* 						システム保護変数定義 	 			   */
/*=============================================================*/
/* 保護レベル				*/
f4			f4_lev_uv_inv0_vdc;									/* Unit=V:直流低電圧レベル						*/
f4			f4_lev_oh_inv0_igbt;								/* Unit=℃:IGBT温度エラーレベル					*/
f4			f4_lev_oh_inv0_mot1;								/* Unit=℃:モータ温度エラーレベル				*/
f4			f4_lev_oh_inv0_mot2;								/* Unit=℃:モータ温度エラーレベル				*/
f4			f4_lev_os_inv0_speed;								/* Unit=rpm:過速度エラーレベル					*/
f4			f4_lev_oh_inv0_int;									/* Unit=℃:内部高温度異常レベル					*/
f4			f4_lev_ov_inv0_ctrlbd;								/* Unit=V:制御電源高電圧異常レベル				*/
f4			f4_lev_uv_inv0_ctrlbd;								/* Unit=V:制御電源低電圧異常レベル				*/

s4			s4_lev_snsr_inv0_iinv;								/* Unit=-:電流センサ異常レベル					*/
s4			s4_lev_snsr_inv0_tmp_igbt;							/* Unit=-:IGBT温度センサ異常レベル				*/
s4			s4_lev_snsr_inv0_tmp_int;							/* Unit=-:内部温度センサ異常レベル				*/
s4			s4_lev_snsr_inv0_tmp_mot1;							/* Unit=-:モータ1温度センサ異常レベル			*/
s4			s4_lev_snsr_inv0_tmp_mot2;							/* Unit=-:モータ2温度センサ異常レベル			*/

/* 温度保護時限			*/
u2			u2_cnt_uv_inv0_vdc_1ms_max;							/* 直流低電圧エラー時限							*/
u2			u2_cnt_oh_inv0_igbt_1ms_max;						/* IGBT温度エラー時限							*/
u2			u2_cnt_oh_inv0_mot1_1ms_max;						/* モータ温度エラー時限							*/
u2			u2_cnt_oh_inv0_mot2_1ms_max;						/* モータ温度エラー時限							*/
u2			u2_cnt_os_inv0_speed_1ms_max;						/* 過速度エラー時限								*/
u2			u2_cnt_oh_inv0_int_1ms_max;							/* 内部高温度異常時限							*/
u2			u2_cnt_ov_inv0_ctrlbd_1ms_max;						/* 制御電源高電圧異常時限						*/
u2			u2_cnt_uv_inv0_ctrlbd_1ms_max;						/* 制御電源低電圧異常時限						*/

u2			u2_cnt_snsr_inv0_tmp_int_1ms_max;					/* 内部温度センサ異常時限						*/
u2			u2_cnt_snsr_inv0_tmp_igbt_1ms_max;					/* IGBT温度センサ異常時限						*/
u2			u2_cnt_snsr_inv0_tmp_mot1_1ms_max;					/* モータ1温度センサ異常時限					*/
u2			u2_cnt_snsr_inv0_tmp_mot2_1ms_max;					/* モータ2温度センサ異常時限					*/

u2			u2_cnt_uv_inv0_vdc_1ms;								/* 直流低電圧エラータイマ						*/
u2			u2_cnt_oh_inv0_igbt_up_1ms;							/* IGBT温度エラータイマ							*/
u2			u2_cnt_oh_inv0_igbt_vp_1ms;							/* IGBT温度エラータイマ							*/
u2			u2_cnt_oh_inv0_igbt_wp_1ms;							/* IGBT温度エラータイマ							*/
u2			u2_cnt_oh_inv0_igbt_un_1ms;							/* IGBT温度エラータイマ							*/
u2			u2_cnt_oh_inv0_igbt_vn_1ms;							/* IGBT温度エラータイマ							*/
u2			u2_cnt_oh_inv0_igbt_wn_1ms;							/* IGBT温度エラータイマ							*/
u2			u2_cnt_oh_inv0_mot1_1ms;							/* モータ温度エラータイマ						*/
u2			u2_cnt_oh_inv0_mot2_1ms;							/* モータ温度エラータイマ						*/
u2			u2_cnt_os_inv0_speed_1ms;							/* 過速度エラータイマ							*/
u2			u2_cnt_oh_inv0_int_1ms;								/* 内部高温度異常タイマ							*/
u2			u2_cnt_ov_inv0_ctrlbd_1ms;							/* 制御電源高電圧異常タイマ						*/
u2			u2_cnt_uv_inv0_ctrlbd_1ms;							/* 制御電源低電圧異常タイマ						*/


u2			u2_cnt_snsr_inv0_tmp_int_1ms;						/* 内部温度センサ異常タイマ						*/
u2			u2_cnt_snsr_inv0_tmp_igbt_up_1ms;					/* IGBT温度センサ異常タイマ						*/
u2			u2_cnt_snsr_inv0_tmp_igbt_vp_1ms;					/* IGBT温度センサ異常タイマ						*/
u2			u2_cnt_snsr_inv0_tmp_igbt_wp_1ms;					/* IGBT温度センサ異常タイマ						*/
u2			u2_cnt_snsr_inv0_tmp_igbt_un_1ms;					/* IGBT温度センサ異常タイマ						*/
u2			u2_cnt_snsr_inv0_tmp_igbt_vn_1ms;					/* IGBT温度センサ異常タイマ						*/
u2			u2_cnt_snsr_inv0_tmp_igbt_wn_1ms;					/* IGBT温度センサ異常タイマ						*/
u2			u2_cnt_snsr_inv0_tmp_mot1_1ms;						/* モータ1温度センサ異常タイマ					*/
u2			u2_cnt_snsr_inv0_tmp_mot2_1ms;						/* モータ2温度センサ異常タイマ					*/

u4			u4_flag_inv0_error_hw;								/* ハードウェアエラー要因フラグ					*/

u1			u1_flag_can0_err_enable;							/* CAN通信エラー有効フラグ						*/
																/* 0:無効 1:有効								*/
/*=============================================================*/

/*=============================================================*/
/* 						端子レベル判定変数定義 				　 */
/*=============================================================*/
u4			u4_flag_inv0_error_hw_lev;							/* ハードウェア異常レベル要因フラグ				*/
u2			u2_cnt_di_inv0_safty;								/* Enable Open(緊急停止)タイマ					*/
u2			u2_cnt_di_inv0_safty_max;							/* Enable Open(緊急停止)異常時限				*/

u2			u2_cnt_di_inv0_gb;									/* Gate Blockタイマ								*/
u2			u2_cnt_di_inv0_gb_max;								/* Gate Block異常時限							*/
/*=============================================================*/

/*============================================================*/
/*			CPLD保護要因ソフトウェアシリアル通信変数定義	　*/
/*============================================================*/
u1			u1_cpldspi_cs;										/* CPLD_CS端子制御変数							*/
u1			u1_cpldspi_clk;										/* CPLD_SCLK端子制御変数						*/
u1			u1_cpldspi_in;										/* CPLD_SDI端子読み込み変数						*/
u1			u1_cpldspi_out;										/* CPLD_SDO端子制御変数							*/
u4			u4_cpldspi_indata;									/* CPLD保護要因受信変数							*/
u4			u4_cpldspi_indata_tmp;								/* CPLD保護要因受信変数テンポラリ				*/
u1			u1_cpldspi_cnt;										/* CPLDソフトウェアシリアル制御基準タイマ		*/
/*=============================================================*/

/*=============================================================*/
/* 						デバッグ用変数定義			   		   */
/*=============================================================*/
u1		u1_err_MCU;
/*=============================================================*/


/*=============================================================*/
/* 					関数のプロトタイプ宣言					   */
/*=============================================================*/
void 	fi_1ms_inv0_errctrl			(void);		   				/* 1msタイマ割込みエラー検出関数				*/
void 	fb_1ms_inv0_errctrl_init	(void);						/* 1msタイマ割込みエラー検出初期化関数			*/
/*=============================================================*/

/*===============================================================
+																+
+				Name:	  void fi_1ms_inv0_errctrl (void)		+
+			Function:	  1msタイマ割込みエラー検出関数			+
+																+
+					2)	直流低電圧検出							+
+					3)	IGBT温度エラー検出						+
+					4)	モータ温度エラー検出					+
+					5)	過速度エラー							+
+																+
+		Return Value:		No									+
+				date:		 10th Mar,2017						+
+																+
===============================================================*/
void fi_1ms_inv0_errctrl (void)
{
	/*============================================================*/
	/*					   ローカル変数定義		　				  */
	/*============================================================*/
	u1		u1_temp_1;											/* テンポラリ変数(u1)							*/
	/*============================================================*/

	/*============================================================*/
	/*						直流低電圧検出						　*/
	/*============================================================*/
	// if(0 != u1_pwm_inv0_status)									/* PWM出力状態									*/
	if((0 != u1_pwm_inv0_status)&&(u1_flag_inv0_sysctrl_active_discharge != 1))	/* PWM出力状態かつアクティブ放電モードではない	*/
	{
		if(f4_vdc_inv0_ad < f4_lev_uv_inv0_vdc)
		{
			u2_cnt_uv_inv0_vdc_1ms++;
			if(u2_cnt_uv_inv0_vdc_1ms >= u2_cnt_uv_inv0_vdc_1ms_max)
			{
				u4_flag_inv0_error1 		= u4_flag_inv0_error1 | u4_ERR_UV_VDC;
																/* エラーフラグ書き込み							*/
				u2_cnt_uv_inv0_vdc_1ms	= 0;
			}
			else{}
		}
		else
		{
			u2_cnt_uv_inv0_vdc_1ms		= 0;
		}
	}
	else
	{
			u2_cnt_uv_inv0_vdc_1ms		= 0;
	}
	/*============================================================*/

	/*============================================================*/
	/*							IGBT温度エラー検出				　*/
	/*============================================================*/
	if(f4_tmp_inv0_igbt_up > f4_lev_oh_inv0_igbt)
	{
		u2_cnt_oh_inv0_igbt_up_1ms++;
		if(u2_cnt_oh_inv0_igbt_up_1ms >= u2_cnt_oh_inv0_igbt_1ms_max)
		{
			u4_flag_inv0_error1 		= u4_flag_inv0_error1 | u4_ERR_OH_IGBT_UP;
																/* エラーフラグ書き込み							*/
			u2_cnt_oh_inv0_igbt_up_1ms	= 0;
		}
		else{}
	}
	else
	{
		u2_cnt_oh_inv0_igbt_up_1ms		= 0;
	}
	/*============================================================*/

	/*============================================================*/
	/*							IGBT温度エラー検出				　*/
	/*============================================================*/
	if(f4_tmp_inv0_igbt_vp > f4_lev_oh_inv0_igbt)
	{
		u2_cnt_oh_inv0_igbt_vp_1ms++;
		if(u2_cnt_oh_inv0_igbt_vp_1ms >= u2_cnt_oh_inv0_igbt_1ms_max)
		{
			u4_flag_inv0_error1 		= u4_flag_inv0_error1 | u4_ERR_OH_IGBT_VP;
																/* エラーフラグ書き込み							*/
			u2_cnt_oh_inv0_igbt_vp_1ms	= 0;
		}
		else{}
	}
	else
	{
		u2_cnt_oh_inv0_igbt_vp_1ms		= 0;
	}
	/*============================================================*/

	/*============================================================*/
	/*							IGBT温度エラー検出				　*/
	/*============================================================*/
	if(f4_tmp_inv0_igbt_wp > f4_lev_oh_inv0_igbt)
	{
		u2_cnt_oh_inv0_igbt_wp_1ms++;
		if(u2_cnt_oh_inv0_igbt_wp_1ms >= u2_cnt_oh_inv0_igbt_1ms_max)
		{
			u4_flag_inv0_error1 		= u4_flag_inv0_error1 | u4_ERR_OH_IGBT_WP;
																/* エラーフラグ書き込み							*/
			u2_cnt_oh_inv0_igbt_wp_1ms	= 0;
		}
		else{}
	}
	else
	{
		u2_cnt_oh_inv0_igbt_wp_1ms		= 0;
	}
	/*============================================================*/

	/*============================================================*/
	/*							IGBT温度エラー検出				　*/
	/*============================================================*/
	if(f4_tmp_inv0_igbt_un > f4_lev_oh_inv0_igbt)
	{
		u2_cnt_oh_inv0_igbt_un_1ms++;
		if(u2_cnt_oh_inv0_igbt_un_1ms >= u2_cnt_oh_inv0_igbt_1ms_max)
		{
			u4_flag_inv0_error1 		= u4_flag_inv0_error1 | u4_ERR_OH_IGBT_UN;
																/* エラーフラグ書き込み							*/
			u2_cnt_oh_inv0_igbt_un_1ms	= 0;
		}
		else{}
	}
	else
	{
		u2_cnt_oh_inv0_igbt_un_1ms		= 0;
	}
	/*============================================================*/

	/*============================================================*/
	/*							IGBT温度エラー検出				　*/
	/*============================================================*/
	if(f4_tmp_inv0_igbt_vn > f4_lev_oh_inv0_igbt)
	{
		u2_cnt_oh_inv0_igbt_vn_1ms++;
		if(u2_cnt_oh_inv0_igbt_vn_1ms >= u2_cnt_oh_inv0_igbt_1ms_max)
		{
			u4_flag_inv0_error1 		= u4_flag_inv0_error1 | u4_ERR_OH_IGBT_VN;
																/* エラーフラグ書き込み							*/
			u2_cnt_oh_inv0_igbt_vn_1ms	= 0;
		}
		else{}
	}
	else
	{
		u2_cnt_oh_inv0_igbt_vn_1ms		= 0;
	}
	/*============================================================*/

	/*============================================================*/
	/*							IGBT温度エラー検出				　*/
	/*============================================================*/
	if(f4_tmp_inv0_igbt_wn > f4_lev_oh_inv0_igbt)
	{
		u2_cnt_oh_inv0_igbt_wn_1ms++;
		if(u2_cnt_oh_inv0_igbt_wn_1ms >= u2_cnt_oh_inv0_igbt_1ms_max)
		{
			u4_flag_inv0_error1 		= u4_flag_inv0_error1 | u4_ERR_OH_IGBT_WN;
																/* エラーフラグ書き込み							*/
			u2_cnt_oh_inv0_igbt_wn_1ms	= 0;
		}
		else{}
	}
	else
	{
		u2_cnt_oh_inv0_igbt_wn_1ms		= 0;
	}
	/*============================================================*/

	/*============================================================*/
	/*							モータ温度エラー検出			　*/
	/*============================================================*/
#if USE_TH_MOTOR1_INV0 == 1
	if(f4_tmp_inv0_mot1 > f4_lev_oh_inv0_mot1)
	{
		u2_cnt_oh_inv0_mot1_1ms++;
		if(u2_cnt_oh_inv0_mot1_1ms >= u2_cnt_oh_inv0_mot1_1ms_max)
		{
			u4_flag_inv0_error1 		= u4_flag_inv0_error1 | u4_ERR_OH_MOT1;
																/* エラーフラグ書き込み							*/
			u2_cnt_oh_inv0_mot1_1ms	= 0;
		}
		else{}
	}
	else
	{
		u2_cnt_oh_inv0_mot1_1ms		= 0;
	}
#endif
	/*============================================================*/

	/*============================================================*/
	/*							モータ温度エラー検出			　*/
	/*============================================================*/
#if USE_TH_MOTOR2_INV0 == 1
	if(f4_tmp_inv0_mot2 > f4_lev_oh_inv0_mot2)
	{
		u2_cnt_oh_inv0_mot2_1ms++;
		if(u2_cnt_oh_inv0_mot2_1ms >= u2_cnt_oh_inv0_mot2_1ms_max)
		{
			u4_flag_inv0_error1 		= u4_flag_inv0_error1 | u4_ERR_OH_MOT2;
																/* エラーフラグ書き込み							*/
			u2_cnt_oh_inv0_mot2_1ms	= 0;
		}
		else{}
	}
	else
	{
		u2_cnt_oh_inv0_mot2_1ms		= 0;
	}
#endif
	/*============================================================*/

	/*============================================================*/
	/*						内部高温度検出						　*/
	/*============================================================*/
	if(f4_tmp_inv0_int > f4_lev_oh_inv0_int)
	{
		u2_cnt_oh_inv0_int_1ms++;
		if(u2_cnt_oh_inv0_int_1ms >= u2_cnt_oh_inv0_int_1ms_max)
		{
			u4_flag_inv0_error1 			= u4_flag_inv0_error1 | u4_ERR_OH_INT;
																/* エラーフラグ書き込み							*/
			u2_cnt_oh_inv0_int_1ms		= 0;
		}
		else{}
	}
	else
	{
		u2_cnt_oh_inv0_int_1ms			= 0;
	}
	/*============================================================*/

	/*============================================================*/
	/*						制御電源高電圧検出					　*/
	/*============================================================*/
	if(f4_vctrlbd_inv0_ad > f4_lev_ov_inv0_ctrlbd)
	{
		u2_cnt_ov_inv0_ctrlbd_1ms++;
		if(u2_cnt_ov_inv0_ctrlbd_1ms >= u2_cnt_ov_inv0_ctrlbd_1ms_max)
		{
			u4_flag_inv0_error1 		= u4_flag_inv0_error1 | u4_ERR_OV_CTRLBD;
															/* エラーフラグ書き込み							*/
			u2_cnt_ov_inv0_ctrlbd_1ms		= 0;
		}
		else{}
	}
	else
	{
		u2_cnt_ov_inv0_ctrlbd_1ms			= 0;
	}
	/*============================================================*/

	/*============================================================*/
	/*						制御電源低電圧検出					　*/
	/*============================================================*/
	if(f4_vctrlbd_inv0_ad < f4_lev_uv_inv0_ctrlbd)
	{
		u2_cnt_uv_inv0_ctrlbd_1ms++;
		if(u2_cnt_uv_inv0_ctrlbd_1ms >= u2_cnt_uv_inv0_ctrlbd_1ms_max)
		{
			u4_flag_inv0_error1 		= u4_flag_inv0_error1 | u4_ERR_UV_CTRLBD;
															/* エラーフラグ書き込み							*/
			u2_cnt_uv_inv0_ctrlbd_1ms		= 0;
		}
		else{}
	}
	else
	{
		u2_cnt_uv_inv0_ctrlbd_1ms			= 0;
	}
	/*============================================================*/

	/*============================================================*/
	/*						モータ過速度検出					　*/
	/*============================================================*/
	if((f4_speed_inv0_lpf > f4_lev_os_inv0_speed)||( f4_speed_inv0_lpf < -f4_lev_os_inv0_speed))
	{
		u2_cnt_os_inv0_speed_1ms++;
		if(u2_cnt_os_inv0_speed_1ms >= u2_cnt_os_inv0_speed_1ms_max)
		{
			u4_flag_inv0_error1 			= u4_flag_inv0_error1 | u4_ERR_OS_SPEED;
																/* エラーフラグ書き込み							*/
			u2_cnt_os_inv0_speed_1ms	= 0;
		}
		else{}
	}
	else
	{
		u2_cnt_os_inv0_speed_1ms		= 0;
	}
	/*============================================================*/

	/*============================================================*/
	/*					CAN通信エラー判別						　*/
	/*============================================================*/
	if(( 0 != u4_status_can0 )&&(u1_flag_can0_err_enable == 1))
	{
		u4_flag_inv0_error1			= u4_flag_inv0_error1 | u4_ERR_CAN ;
	}
	else
	{

	}
	/*============================================================*/

	/*============================================================*/
	/*						電流センサ異常						　*/
	/*============================================================*/
	{
		if((s4_offset_iu_inv0_adfs > s4_lev_snsr_inv0_iinv)
							||(s4_offset_iu_inv0_adfs < -s4_lev_snsr_inv0_iinv))
		{
			u4_flag_inv0_error2 			= u4_flag_inv0_error2 | u4_ERR_SNSR_IU;
		}
		else{}

		if((s4_offset_iv_inv0_adfs > s4_lev_snsr_inv0_iinv)
							||(s4_offset_iv_inv0_adfs < -s4_lev_snsr_inv0_iinv))
		{
			u4_flag_inv0_error2 			= u4_flag_inv0_error2 | u4_ERR_SNSR_IV;
		}
		else{}

		if((s4_offset_iw_inv0_adfs > s4_lev_snsr_inv0_iinv)
							||(s4_offset_iw_inv0_adfs < -s4_lev_snsr_inv0_iinv))
		{
			u4_flag_inv0_error2 			= u4_flag_inv0_error2 | u4_ERR_SNSR_IW;
		}
		else{}

		if((s4_offset_idc_inv0_adfs > s4_lev_snsr_inv0_iinv)
							||(s4_offset_idc_inv0_adfs < -s4_lev_snsr_inv0_iinv))
		{
			u4_flag_inv0_error2 			= u4_flag_inv0_error2 | u4_ERR_SNSR_IDC;
		}
		else{}
	}
	/*============================================================*/

	/*============================================================*/
	/*						温度センサ異常						　*/
	/*============================================================*/
	//IGBT_UP温度センサ
	if(s2_ad_inv0_tmp_igbt_up < s4_lev_snsr_inv0_tmp_igbt)
	{
		u2_cnt_snsr_inv0_tmp_igbt_up_1ms++;
		if(u2_cnt_snsr_inv0_tmp_igbt_up_1ms > u2_cnt_snsr_inv0_tmp_igbt_1ms_max)
		{
			u2_cnt_snsr_inv0_tmp_igbt_up_1ms	= 0;
			u4_flag_inv0_error2 			= u4_flag_inv0_error2 | u4_ERR_SNSR_TMP_IGBT_UP;
		}
		else{}
	}
	else{}

	//IGBT_VP温度センサ
	if(s2_ad_inv0_tmp_igbt_vp < s4_lev_snsr_inv0_tmp_igbt)
	{
		u2_cnt_snsr_inv0_tmp_igbt_vp_1ms++;
		if(u2_cnt_snsr_inv0_tmp_igbt_vp_1ms > u2_cnt_snsr_inv0_tmp_igbt_1ms_max)
		{
			u2_cnt_snsr_inv0_tmp_igbt_vp_1ms	= 0;
			u4_flag_inv0_error2 			= u4_flag_inv0_error2 | u4_ERR_SNSR_TMP_IGBT_VP;
		}
		else{}
	}
	else{}

	//IGBT_WP温度センサ
	if(s2_ad_inv0_tmp_igbt_wp < s4_lev_snsr_inv0_tmp_igbt)
	{
		u2_cnt_snsr_inv0_tmp_igbt_wp_1ms++;
		if(u2_cnt_snsr_inv0_tmp_igbt_wp_1ms > u2_cnt_snsr_inv0_tmp_igbt_1ms_max)
		{
			u2_cnt_snsr_inv0_tmp_igbt_wp_1ms	= 0;
			u4_flag_inv0_error2 			= u4_flag_inv0_error2 | u4_ERR_SNSR_TMP_IGBT_WP;
		}
		else{}
	}
	else{}

	//IGBT_UN温度センサ
	if(s2_ad_inv0_tmp_igbt_un < s4_lev_snsr_inv0_tmp_igbt)
	{
		u2_cnt_snsr_inv0_tmp_igbt_un_1ms++;
		if(u2_cnt_snsr_inv0_tmp_igbt_un_1ms > u2_cnt_snsr_inv0_tmp_igbt_1ms_max)
		{
			u2_cnt_snsr_inv0_tmp_igbt_un_1ms	= 0;
			u4_flag_inv0_error2 			= u4_flag_inv0_error2 | u4_ERR_SNSR_TMP_IGBT_UN;
		}
		else{}
	}
	else{}

	//IGBT_VN温度センサ
	if(s2_ad_inv0_tmp_igbt_vn < s4_lev_snsr_inv0_tmp_igbt)
	{
		u2_cnt_snsr_inv0_tmp_igbt_vn_1ms++;
		if(u2_cnt_snsr_inv0_tmp_igbt_vn_1ms > u2_cnt_snsr_inv0_tmp_igbt_1ms_max)
		{
			u2_cnt_snsr_inv0_tmp_igbt_vn_1ms	= 0;
			u4_flag_inv0_error2 			= u4_flag_inv0_error2 | u4_ERR_SNSR_TMP_IGBT_VN;
		}
		else{}
	}
	else{}

	//IGBT_WN温度センサ
	if(s2_ad_inv0_tmp_igbt_wn < s4_lev_snsr_inv0_tmp_igbt)
	{
		u2_cnt_snsr_inv0_tmp_igbt_wn_1ms++;
		if(u2_cnt_snsr_inv0_tmp_igbt_wn_1ms > u2_cnt_snsr_inv0_tmp_igbt_1ms_max)
		{
			u2_cnt_snsr_inv0_tmp_igbt_wn_1ms	= 0;
			u4_flag_inv0_error2 			= u4_flag_inv0_error2 | u4_ERR_SNSR_TMP_IGBT_WN;
		}
		else{}
	}
	else{}

	//内部温度センサ
	if(s2_ad_inv0_tmp_int < s4_lev_snsr_inv0_tmp_int)
	{
		u2_cnt_snsr_inv0_tmp_int_1ms++;
		if(u2_cnt_snsr_inv0_tmp_int_1ms > u2_cnt_snsr_inv0_tmp_int_1ms_max)
		{
			u2_cnt_snsr_inv0_tmp_int_1ms	= 0;
			u4_flag_inv0_error2 			= u4_flag_inv0_error2 | u4_ERR_SNSR_TMP_INT;
		}
		else{}
	}
	else{}

#if USE_TH_MOTOR1_INV0 == 1
	//モータ1温度センサ
	if(s2_ad_inv0_tmp_mot1 < s4_lev_snsr_inv0_tmp_mot1)
	{
		u2_cnt_snsr_inv0_tmp_mot1_1ms++;
		if(u2_cnt_snsr_inv0_tmp_mot1_1ms > u2_cnt_snsr_inv0_tmp_mot1_1ms_max)
		{
			u2_cnt_snsr_inv0_tmp_mot1_1ms	= 0;
			u4_flag_inv0_error2 			= u4_flag_inv0_error2 | u4_ERR_SNSR_TMP_MOT1;
		}
		else{}
	}
	else{}
#endif

#if USE_TH_MOTOR2_INV0 == 1
	//モータ2温度センサ
	if(s2_ad_inv0_tmp_mot2 < s4_lev_snsr_inv0_tmp_mot2)
	{
		u2_cnt_snsr_inv0_tmp_mot2_1ms++;
		if(u2_cnt_snsr_inv0_tmp_mot2_1ms > u2_cnt_snsr_inv0_tmp_mot2_1ms_max)
		{
			u2_cnt_snsr_inv0_tmp_mot2_1ms	= 0;
			u4_flag_inv0_error2 			= u4_flag_inv0_error2 | u4_ERR_SNSR_TMP_MOT2;
		}
		else{}
	}
	else{}
#endif
	/*============================================================*/

	/*============================================================*/
	/*					インバータハードウェアエラー検出		　*/
	/*============================================================*/
	if( 0 == Get_EMG_IN() )
	{
		u2_cnt_di_inv0_safty++;
		if(u2_cnt_di_inv0_safty >= u2_cnt_di_inv0_safty_max)
		{
			u4_flag_inv0_error_hw_lev			= u4_flag_inv0_error_hw_lev | u4_ERR_HW_LEV_EMG;
													/* エラーフラグ書き込み							*/
			u2_cnt_di_inv0_safty		= 0;
		}
		else{}
	}
	else
	{
		u2_cnt_di_inv0_safty			= 0;
	}

	if( 1 == Get_GB() )
	{
		u2_cnt_di_inv0_gb++;
		if(u2_cnt_di_inv0_gb >= u2_cnt_di_inv0_gb_max)
		{
			u4_flag_inv0_error_hw_lev			= u4_flag_inv0_error_hw_lev | u4_ERR_HW_LEV_GB;
													/* エラーフラグ書き込み							*/
			u2_cnt_di_inv0_gb		= 0;
		}
		else{}
	}
	else
	{
		u2_cnt_di_inv0_gb			= 0;
	}


	if(u4_flag_inv0_error_hw_lev != 0)
	{
		u4_flag_inv0_error1				= u4_flag_inv0_error1 | u4_ERR_HW_LEV;
	}
	else{}
	/*============================================================*/

	/*============================================================*/
	/*						CPLD保護要因シリアル通信		 	  */
	/*============================================================*/
	/*  備考													  */
	/*	・255ms間隔で送受信										  */
	/*	・32Bit受信												  */
	/*	・クロックデータ位相									  */
	/*	CLKの立下りでデータ更新、立ち上がりでデータ取り込み		  */
	/*															  */
	/*															  */
	/*		SCLK     ~~~~~~~|_|~|_|~|_|~|_|~|_|~|_|~|__			  */
	/*															  */
	/*		SI		~~~~~~~~x~~~x~~~x~~~x~~~x~~~x~~~			  */
	/*				~~~~~~~ ~ ~~~ ~~~ ~~~ ~~~ ~~~ ~~~			  */
	/*						  ↑  ↑  ↑  ↑  ↑  ↑			  */
	/*															  */
	/*															  */
	/*															  */
	/*															  */
	/*============================================================*/

	u1_cpldspi_in	= DI_PLDSPI_IN;								/* CPLD_SI端子読み込み					*/

	if ( u1_cpldspi_cnt == 0 )									/* 0サイクル目でCS/SCLKをインアクティブ	*/
	{
		u1_cpldspi_cs	= 1;
		u1_cpldspi_clk	= 1;
		u4_cpldspi_indata_tmp	= 0;							/* テンポラリデータ初期化				*/
	}
	else if (u1_cpldspi_cnt == 1)								/* 1サイクル目でCSをアクティブ			*/
	{
		u1_cpldspi_cs	= 0;
	}
	else if (u1_cpldspi_cnt < 66)								/* 66：32Bitクロック発生用カウント値	*/
	{
		if(0 == u1_cpldspi_clk)									/* 前サイクル：LOW（今のサイクルでクロックHI)	*/
		{
			/* テンポラリデータシフト	　LSBファースト対応		*/
			u4_cpldspi_indata_tmp	=	u4_cpldspi_indata_tmp >> 1;
			u4_cpldspi_indata_tmp	|=	u1_cpldspi_in << 31;	/* 最上位にデータ（BIT)を設定			*/
			u1_cpldspi_out	= 1;								/* データHI								*/
		}
		else													/* 前サイクル：HI（今のサイクルでクロックLOW)	*/
		{
			u1_cpldspi_out	= 0;								/* データLOW							*/
		}

		u1_cpldspi_clk	^= 1;									/* CLK トグル							*/
	}
	else
	{
		u1_cpldspi_cs	= 1;									/* CS/SCLKをインアクティブ				*/
		u1_cpldspi_clk	= 1;
		u4_cpldspi_indata	= u4_cpldspi_indata_tmp;			/* 受信データを更新						*/
	}

	/* 制御値を端子に反映		*/
	DO_PLDSPI_CS	= u1_cpldspi_cs;
	DO_PLDSPI_CLK	= u1_cpldspi_clk;
	DO_PLDSPI_OUT	= u1_cpldspi_out;

	u1_cpldspi_cnt++;												/* シリアル制御カウンタインクリメント	*/
	u1_cpldspi_cnt	= 	u1_cpldspi_cnt & 0xff;						/* カウンタリミット 0-255 				*/
	/*============================================================*/

	/*============================================================*/
	/*						CPLD保護要因をエラーフラグに設定 	  */
	/*============================================================*/
	u4_flag_inv0_error_hw	= u4_cpldspi_indata&0x0000FFFF;			/* 下位16Bitのみ有効					*/
	if(0 != u4_flag_inv0_error_hw)
	{
		u4_flag_inv0_error1 				= u4_flag_inv0_error1 | u4_ERR_HW;
	}
	else{}
	/*============================================================*/

	/*============================================================*/
	/*						MCU異常チェック						　*/
	/*============================================================*/
	if ( 0x02 == (u4_RESF_reg & 0x02) )
	{
		u1_err_MCU = 1;
		u4_flag_inv0_error1				= u4_flag_inv0_error1 | u4_ERR_MCU;
	}
	else{}
	/*============================================================*/

	/*============================================================*/
	/*							エラーフラグ管理				　*/
	/*============================================================*/
	if(u4_flag_inv0_error1 != 0)
	{
		u4_flag_inv0_error				= u4_flag_inv0_error | u4_ERR1;
	}
	else{}

	if(u4_flag_inv0_error2 != 0)
	{
		u4_flag_inv0_error				= u4_flag_inv0_error | u4_ERR2;
	}
	else{}

	/*============================================================*/

}

/*===============================================================
+																+
+				Name:	void fb_1ms_inv0_errctrl_init (void)	+
+			Function:	タイマ割込みエラー検出初期化関数		+
+																+
+		Return Value:		No									+
+				date:		 10th Mar,2017						+
+																+
===============================================================*/
void fb_1ms_inv0_errctrl_init (void)
{
	/*=============================================================*/
	/* 						システム保護変数初期化	 			   */
	/*=============================================================*/
	f4_lev_uv_inv0_vdc				= ((f4)(LEV_UV_INV0_VDC));
	f4_lev_oh_inv0_igbt				= ((f4)(LEV_OH_INV0_IGBT));
	f4_lev_oh_inv0_mot1				= ((f4)(LEV_OH_INV0_MOT1));
	f4_lev_oh_inv0_mot2				= ((f4)(LEV_OH_INV0_MOT2));
	f4_lev_os_inv0_speed			= ((f4)(LEV_OS_INV0_SPEED));

	f4_lev_oh_inv0_int				= ((f4)(LEV_OH_INV0_INT));
	f4_lev_ov_inv0_ctrlbd			= ((f4)(LEV_OV_INV0_CTRLBD));
	f4_lev_uv_inv0_ctrlbd			= ((f4)(LEV_UV_INV0_CTRLBD));

	s4_lev_snsr_inv0_iinv			= (s4)(LEV_SNSR_INV0_IINV);
	s4_lev_snsr_inv0_tmp_int			= (s4)(LEV_SNSR_INV0_TMP_INT);
	s4_lev_snsr_inv0_tmp_igbt			= (s4)(LEV_SNSR_INV0_TMP_IGBT);
	s4_lev_snsr_inv0_tmp_mot1			= (s4)(LEV_SNSR_INV0_TMP_MOT1);
	s4_lev_snsr_inv0_tmp_mot2			= (s4)(LEV_SNSR_INV0_TMP_MOT2);

	u2_cnt_uv_inv0_vdc_1ms_max		= ((u2)(CNT_UV_INV0_VDC_1MS_MAX));
	u2_cnt_oh_inv0_igbt_1ms_max		= ((u2)(CNT_OH_INV0_IGBT_1MS_MAX));
	u2_cnt_oh_inv0_mot1_1ms_max		= ((u2)(CNT_OH_INV0_MOT1_1MS_MAX));
	u2_cnt_oh_inv0_mot2_1ms_max		= ((u2)(CNT_OH_INV0_MOT2_1MS_MAX));
	u2_cnt_os_inv0_speed_1ms_max	= ((u2)(CNT_OS_INV0_SPEED_1MS_MAX));

	u2_cnt_oh_inv0_int_1ms_max		= ((u2)(CNT_OH_INV0_INT_1MS_MAX));
	u2_cnt_ov_inv0_ctrlbd_1ms_max	= ((u2)(CNT_OV_INV0_CTRLBD_1MS_MAX));
	u2_cnt_uv_inv0_ctrlbd_1ms_max	= ((u2)(CNT_UV_INV0_CTRLBD_1MS_MAX));

	u2_cnt_snsr_inv0_tmp_int_1ms_max	= ((u2)(CNT_SNSR_INV0_TMP_INT_1MS_MAX));
	u2_cnt_snsr_inv0_tmp_igbt_1ms_max	= ((u2)(CNT_SNSR_INV0_TMP_IGBT_1MS_MAX));
	u2_cnt_snsr_inv0_tmp_mot1_1ms_max	= ((u2)(CNT_SNSR_INV0_TMP_MOT1_1MS_MAX));
	u2_cnt_snsr_inv0_tmp_mot2_1ms_max	= ((u2)(CNT_SNSR_INV0_TMP_MOT2_1MS_MAX));

	u2_cnt_uv_inv0_vdc_1ms			= 0;
	u2_cnt_oh_inv0_igbt_up_1ms		= 0;
	u2_cnt_oh_inv0_igbt_vp_1ms		= 0;
	u2_cnt_oh_inv0_igbt_wp_1ms		= 0;
	u2_cnt_oh_inv0_igbt_un_1ms		= 0;
	u2_cnt_oh_inv0_igbt_vn_1ms		= 0;
	u2_cnt_oh_inv0_igbt_wn_1ms		= 0;
	u2_cnt_oh_inv0_mot1_1ms			= 0;
	u2_cnt_oh_inv0_mot2_1ms			= 0;
	u2_cnt_os_inv0_speed_1ms		= 0;

	u2_cnt_oh_inv0_int_1ms			= 0;
	u2_cnt_ov_inv0_ctrlbd_1ms		= 0;
	u2_cnt_uv_inv0_ctrlbd_1ms		= 0;

	u2_cnt_snsr_inv0_tmp_int_1ms		= 0;
	u2_cnt_snsr_inv0_tmp_igbt_up_1ms		= 0;
	u2_cnt_snsr_inv0_tmp_igbt_vp_1ms		= 0;
	u2_cnt_snsr_inv0_tmp_igbt_wp_1ms		= 0;
	u2_cnt_snsr_inv0_tmp_igbt_un_1ms		= 0;
	u2_cnt_snsr_inv0_tmp_igbt_vn_1ms		= 0;
	u2_cnt_snsr_inv0_tmp_igbt_wn_1ms		= 0;
	u2_cnt_snsr_inv0_tmp_mot1_1ms		= 0;
	u2_cnt_snsr_inv0_tmp_mot2_1ms		= 0;

	u4_flag_inv0_error_hw			= 0;

	u1_flag_can0_err_enable			= (u1)(CAN0_ERR_ENABLE);
	/*=============================================================*/

	/*=============================================================*/
	/*					端子レベル判定変数初期化				   */
	/*=============================================================*/
	u4_flag_inv0_error_hw_lev		= 0;

	u2_cnt_di_inv0_safty			= 0;
	u2_cnt_di_inv0_safty_max		= (u2)(CNT_DI_INV0_SAFTY_MAX);

	u2_cnt_di_inv0_gb				= 0;
	u2_cnt_di_inv0_gb_max			= (u2)(CNT_DI_INV0_GB_MAX);
	/*=============================================================*/

	/*============================================================*/
	/*			CPLD保護要因ソフトウェアシリアル通信変数定義	　*/
	/*============================================================*/
	u4_flag_inv0_error_hw			= 0;
	u1_cpldspi_cs					= 1;
	u1_cpldspi_clk					= 1;
	u1_cpldspi_in					= 0;
	u1_cpldspi_out					= 1;
	u4_cpldspi_indata				= 0;
	u4_cpldspi_indata_tmp			= 0;
	u1_cpldspi_cnt					= 0;
	/*=============================================================*/

}



