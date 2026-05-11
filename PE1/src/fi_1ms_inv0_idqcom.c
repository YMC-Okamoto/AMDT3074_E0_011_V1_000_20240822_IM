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
/* 							 出力制限変数定義				   */
/*=============================================================*/
u1			u1_flag_inv0_derating_status;						/* 出力制限状態フラグ							*/

f4			f4_k_inv0_tmp_igbt_limit;							/* Unit=-:主回路温度制限ゲイン					*/
f4			f4_tmp_inv0_igbt_limit_start;						/* Unit=degC:主回路温度制限開始温度				*/
f4			f4_tmp_inv0_igbt_limit_fin;							/* Unit=degC:主回路温度制限完了温度				*/

f4			f4_k_inv0_tmp_mot1_limit;							/* Unit=-:モータ温度1制限ゲイン					*/
f4			f4_tmp_inv0_mot1_limit_start;						/* Unit=degC:モータ温度1制限開始温度			*/
f4			f4_tmp_inv0_mot1_limit_fin;							/* Unit=degC:モータ温度1制限完了温度			*/

f4			f4_k_inv0_tmp_mot2_limit;							/* Unit=-:モータ温度2制限ゲイン					*/
f4			f4_tmp_inv0_mot2_limit_start;						/* Unit=degC:モータ温度2制限開始温度			*/
f4			f4_tmp_inv0_mot2_limit_fin;							/* Unit=degC:モータ温度2制限完了温度			*/

f4			f4_k_inv0_tq_limit;									/* 出力制限ゲイン								*/
/*=============================================================*/

/*=============================================================*/
/* 					 アクティブ放電演算変数定義				   */
/*=============================================================*/
f4			f4_speed_inv0_enable_active_discharge;				/* Unit:rpm アクティブ放電有効回転数			*/
f4			f4_irms_inv0_ref_active_discharge;					/* Unit:A アクティブ放電電流指令値				*/
u1			u1_flag_inv0_sysctrl_active_discharge;				/* Unit:- アクティブ動作指令フラグ				*/
																/* 0:通常 1:アクティブ放電						*/
u1			u1_flag_inv0_sysctrl_active_discharge_tmp;			/* Unit:- アクティブ動作指令フラグ(テンポラリ)	*/
/*=============================================================*/

/*=============================================================*/
/* 					 dq軸電流指令値モード定義				   */
/*=============================================================*/
u1			u1_flag_mode_inv0_idqcom;							/* dq軸電流指令値設定モード						*/
																/* 0:電流振幅&進角指令, 1:トルクマップ制御		*/

f4			f4_id_inv0_ctrl;									/* Unit=A:d軸電流指令値(ランプ後)				*/
f4			f4_iq_inv0_ctrl;									/* Unit=A:q軸電流指令値(ランプ後)				*/
/*=============================================================*/

/*=============================================================*/
/* 				 電流振幅&進角設定モード変数定義			   */
/*=============================================================*/
f4			f4_irms_inv0_ref;									/* Unit=A:相電流実効値指令値(ユーザ設定)		*/
f4			f4_theta_inv0_ref;									/* Unit=deg:進角指令値(ユーザ設定)				*/

f4			f4_irms_inv0_ref_tmp;								/* Unit=A:相電流実効値指令値(テンポラリ)		*/
f4			f4_dirms_inv0_ref_up;								/* Unit=A/sec:電流指令値変化率					*/

f4			f4_theta_inv0_ref_tmp;								/* Unit=A:進角指令値(テンポラリ)				*/
f4			f4_dtheta_inv0_ref_up;								/* Unit=deg/sec:進角指令値変化率				*/


f4			f4_idq_inv0_ctrl;									/* Unit=A:dq軸電流指令値						*/

f4			f4_irms_inv0_ref_ctrl;								/* Unit=A:相電流実効値指令値(制御値)			*/
f4			f4_theta_inv0_ref_ctrl;								/* Unit=deg:進角指令値(制御値)					*/

f4			f4_irms_inv0_ad_lpf;								/* Unit=A:相電流実効値検出値(LPF値)				*/
f4			f4_theta_inv0_ad_lpf;								/* Unit=deg:進角検出値(LPF値)					*/
/*=============================================================*/

/*=============================================================*/
/* 				 	トルクマップ制御モード変数定義			   */
/*=============================================================*/
f4			f4_tq_inv0_ref;										/* Unit=Nm:トルク指令値	(ユーザ設定)			*/

f4			f4_tq_inv0_ref_tmp;									/* Unit=Nm:トルク指令値(ランプ後)				*/
f4			f4_dtq_inv0_ref_up;									/* Unit=Nm/sec:トルク指令値変化率				*/

f4			f4_tq_inv0_ref_max;									/* Unit=Nm:トルク指令最大値						*/
f4			f4_tq_inv0_ref_min;									/* Unit=Nm:トルク指令最小値						*/

f4			f4_tq_inv0_ref_max_tmp;								/* Unit=Nm:トルク指令最大値(テンポラリ)			*/
f4			f4_tq_inv0_ref_min_tmp;								/* Unit=Nm:トルク指令最小値(テンポラリ)			*/

f4			f4_speed_inv0_abs;									/* Unit=min-1:回転数検出値(絶対値)				*/

f4			f4_power_inv0_mot_loss;								/* Unit=W:モータ損失							*/
f4			f4_power_inv0_inv_loss;								/* Unit=W:インバータ損失						*/
/*=============================================================*/

/*=============================================================*/
/* 				 	トルク/DC電流推定演算変数定義			   */
/*=============================================================*/
f4			f4_wclpf_inv0_p123;									/* Unit=rad/s:インバータ出力電力カットオフ周波数*/
f4			f4_power_inv0_p123;									/* Unit=W:インバータ出力						*/
f4			f4_power_inv0_p123_lpf;								/* Unit=W:インバータ出力LPF						*/
f4			f4_tq_inv0_est;										/* Unit=Nm:トルク出力推定値						*/
f4			f4_idc_inv0_est;									/* Unit=A:直流電流推定値						*/
f4			f4_lev_inv0_speed_tq_est_ctrl;						/* Unit=rpm:トルク推定方式切り替え回転数		*/
																/* 指定回転数以下はモータパラメータで推定		*/
																/* 指定回転数を超えたら、電力から推定			*/
/*=============================================================*/

/*=============================================================*/
/* 						デバッグ用変数定義	         	  	   */
/*=============================================================*/

/*=============================================================*/

/*=============================================================*/
/* 						関数のプロトタイプ宣言				　 */
/*=============================================================*/
void 		fi_1ms_inv0_idqcom			(void);					/* 1msタイマ割込みdq軸電流指令値演算関数		*/
void		fb_1ms_inv0_idqcom_init		(void);					/* 1msタイマ割込みdq軸電流指令値演算初期化関数	*/
/*=============================================================*/

/*===============================================================
+																+
+				Name:	void fi_1ms_inv0_idqcom (void)			+
+			Function:	1msタイマ割込みdq軸電流指令値演算関数	+
+																+
+					1)	電流振幅&進角設定モード演算				+
+					2)	トルクマップ制御モード演算				+
+					3)	dq軸電流指令値演算						+
+																+
+		Return Value:		No									+
+				date:		 10th Mar,2017						+
+																+
===============================================================*/
void fi_1ms_inv0_idqcom ( void )
{
	/*============================================================*/
	/*					   ローカル変数定義		　				  */
	/*============================================================*/
	f4		f4_temp_1, f4_temp_2, f4_temp_3, f4_temp_4;			/* テンポラリ変数(f4)							*/
	s4		s4_temp_1;											/* テンポラリ変数(s4)							*/
	f4		t_f4_vdc_inv0_lpf;
	f4		t_f4_speed_inv0_lpf;
	
	
	t_f4_vdc_inv0_lpf		= f4_vdc_inv0_lpf;
	t_f4_speed_inv0_lpf		= f4_speed_inv0_lpf;
	/*============================================================*/

	/*============================================================*/
	/* 						 出力制限演算						  */
	/*============================================================*/
	// 主回路温度制限
	f4_temp_1						= ((f4)(1.0)) / (f4_tmp_inv0_igbt_limit_fin - f4_tmp_inv0_igbt_limit_start) * (f4_tmp_inv0_igbt_limit_fin - f4_tmp_inv0_igbt_max);
	f4_k_inv0_tmp_igbt_limit		= limit(f4_temp_1, ((f4)(1.)), ((f4)(0.)));

	// モータ温度1制限
	f4_temp_1						= ((f4)(1.0)) / (f4_tmp_inv0_mot1_limit_fin - f4_tmp_inv0_mot1_limit_start) * (f4_tmp_inv0_mot1_limit_fin - f4_tmp_inv0_mot1);
	f4_k_inv0_tmp_mot1_limit		= limit(f4_temp_1, ((f4)(1.)), ((f4)(0.)));

	// モータ温度2制限
	f4_temp_1						= ((f4)(1.0)) / (f4_tmp_inv0_mot2_limit_fin - f4_tmp_inv0_mot2_limit_start) * (f4_tmp_inv0_mot2_limit_fin - f4_tmp_inv0_mot2);
	f4_k_inv0_tmp_mot2_limit		= limit(f4_temp_1, ((f4)(1.)), ((f4)(0.)));

	f4_temp_1						= min(f4_k_inv0_tmp_igbt_limit,f4_k_inv0_tmp_mot1_limit);
	f4_k_inv0_tq_limit				= min(f4_temp_1,f4_k_inv0_tmp_mot2_limit);

	if(f4_k_inv0_tq_limit < ((f4)(1.0)))
	{
		u1_flag_inv0_derating_status			= 1;
	}
	else
	{
		u1_flag_inv0_derating_status			= 0;
	}
	/*============================================================*/

	/*============================================================*/
	/*						アクティブ放電演算				　	  */
	/*============================================================*/
	if(u1_flag_inv0_sysctrl_active_discharge == 0)	/* 通常 */
	{
		if(u1_flag_inv0_sysctrl_active_discharge_tmp != 0)	/* 切り替え時を想定 */
		{
			u1_flag_inv0_sysctrl_active_discharge_tmp		= u1_flag_inv0_sysctrl_active_discharge;

			if(u1_flag_mode_inv0_idqcom == 0) /* dq軸電流指令 */
			{
				/* 電流指令値を0にする*/
				f4_irms_inv0_ref		= (f4)(0.0);
				f4_irms_inv0_ref_tmp	= (f4)(0.0);
				f4_theta_inv0_ref		= (f4)(0.0);
			}
			else /* トルク指令 */
			{
				/* トルク指令値を0にする*/
				f4_tq_inv0_ref			= (f4)(0.0);
				f4_tq_inv0_ref_tmp		= (f4)(0.0);
			}

			if(u1_flag_enable_inv0_wrctrl == 1)	/* 速度制御 */
			{
				/* 速度指令値を0にする*/
				f4_speed_inv0_ref		= (f4)(0.0);
			}
			else{}
		}
		else{}
	}
	else if(u1_flag_inv0_sysctrl_active_discharge == 1)	/* アクティブ放電 */
	{
		if(u1_flag_inv0_sysctrl_active_discharge_tmp != 1)
		{
			u1_flag_inv0_sysctrl_active_discharge_tmp		= u1_flag_inv0_sysctrl_active_discharge;
		}
		else{}

		u1_flag_mode_inv0_idqcom	= 0;	/* 電流指令にする */
		u1_flag_enable_inv0_wrctrl	= 0;	/* 速度制御無効にする */

		f4_theta_inv0_ref		= (f4)(0.0);	/* d軸電流だけに指令する */
		if(f4_speed_inv0_abs <= f4_speed_inv0_enable_active_discharge)	/* 指定速度以下の場合*/
		{
			f4_irms_inv0_ref		= f4_irms_inv0_ref_active_discharge;
		}
		else /* 指定速度以上の場合 */
		{
			f4_irms_inv0_ref		= (f4)(0.0);
		}
	}
	else{}
	/*============================================================*/
	
	/*============================================================*/
	/* 						モータ出力制限演算					  */
	/*============================================================*/
	if(t_f4_speed_inv0_lpf < ((f4)(0.0)))
	{
		f4_speed_inv0_abs	= -t_f4_speed_inv0_lpf;
	}
	else
	{
		f4_speed_inv0_abs	= t_f4_speed_inv0_lpf;
	}

	/* トルクリミットマップ演算		*/
	u1_tq_map_limit(f4_speed_inv0_abs, t_f4_vdc_inv0_lpf, &f4_tq_inv0_ref_min_tmp, &f4_tq_inv0_ref_max_tmp);
																/* 回転数, 直流電圧, 回生制限, 力行制限)		*/

	/*============================================================*/

	/*============================================================*/
	/*						dq軸電流指令値モード			　	  */
	/*============================================================*/
	if(t_f4_speed_inv0_lpf < ((f4)(0.0)))
	{
		f4_tq_inv0_ref_min	= -f4_tq_inv0_ref_max_tmp;
		f4_tq_inv0_ref_max	= -f4_tq_inv0_ref_min_tmp;
	}
	else
	{
		f4_tq_inv0_ref_min	= f4_tq_inv0_ref_min_tmp;
		f4_tq_inv0_ref_max	= f4_tq_inv0_ref_max_tmp;
	}

	if((u1_flag_enable_inv0_wrctrl == 0)&&(1 == u1_flag_enable_inv0_wrlimitctrl))
																/* 速度リミット制御有効							*/
																/* 速度制御無効									*/
	{
		if(t_f4_speed_inv0_lpf < ((f4)(0.0)))
		{
			f4_tq_inv0_ref_min	= -f4_tq_inv0_wrlimitctrl;
			f4_tq_inv0_ref_max	= -f4_tq_inv0_ref_min_tmp;
		}
		else
		{
			f4_tq_inv0_ref_min	= f4_tq_inv0_ref_min_tmp;
			f4_tq_inv0_ref_max	= f4_tq_inv0_wrlimitctrl;
		}
	}
	else{}

	f4_tq_inv0_ref_min		= f4_tq_inv0_ref_min * f4_k_inv0_tq_limit;

	f4_tq_inv0_ref_max		= f4_tq_inv0_ref_max * f4_k_inv0_tq_limit;

	switch(u1_flag_mode_inv0_idqcom)
	{
		case 0:

			/*=============================================================*/
			/* 					 電流振幅&進角設定モード演算			   */
			/*=============================================================*/
			if(1 == u1_pwm_inv0_status)							/* インバータPWM許可中							*/
			{
				/* 電流指令値変化率演算		*/
				if(f4_irms_inv0_ref > f4_irms_inv0_ref_tmp)
				{
					f4_irms_inv0_ref_tmp 		= f4_irms_inv0_ref_tmp + f4_dirms_inv0_ref_up * (f4)(0.001);
					if(f4_irms_inv0_ref_tmp > f4_irms_inv0_ref)
					{											/* 電流指令値を増加								*/
						f4_irms_inv0_ref_tmp	= f4_irms_inv0_ref;
					}
					else{}
				}
				else if(f4_irms_inv0_ref < f4_irms_inv0_ref_tmp)
				{
					f4_irms_inv0_ref_tmp 		= f4_irms_inv0_ref_tmp - f4_dirms_inv0_ref_up * (f4)(0.001);
					if(f4_irms_inv0_ref_tmp < f4_irms_inv0_ref)
					{											/* 電流指令値を減少								*/
						f4_irms_inv0_ref_tmp	= f4_irms_inv0_ref;
					}
					else{}
				}
				else{}

				/* 進角指令値変化率演算		*/
				if(f4_theta_inv0_ref > f4_theta_inv0_ref_tmp)
				{
					f4_theta_inv0_ref_tmp 		= f4_theta_inv0_ref_tmp + f4_dtheta_inv0_ref_up * (f4)(0.001);
					if(f4_theta_inv0_ref_tmp > f4_theta_inv0_ref)
					{											/* 進角指令値を増加								*/
						f4_theta_inv0_ref_tmp	= f4_theta_inv0_ref;
					}
					else{}
				}
				else if(f4_theta_inv0_ref < f4_theta_inv0_ref_tmp)
				{
					f4_theta_inv0_ref_tmp 		= f4_theta_inv0_ref_tmp - f4_dtheta_inv0_ref_up * (f4)(0.001);
					if(f4_theta_inv0_ref_tmp < f4_theta_inv0_ref)
					{											/* 進角指令値を減少								*/
						f4_theta_inv0_ref_tmp	= f4_theta_inv0_ref;
					}
					else{}
				}
				else{}

				/* sin/cos演算				*/
				f4_temp_1			= f4_theta_inv0_ref_tmp * ((f4)(TWOPI / 360.0));

				f4_temp_2			= sinf(f4_temp_1);
				f4_temp_3			= cosf(f4_temp_1);

				/* PMSMとは異なり、theta = 0で id のみになる。 */
				if(f4_irms_inv0_ref_tmp > ((f4)(0.)))
				{
					f4_id_inv0_ctrl	= (f4_irms_inv0_ref_tmp * f4_temp_3) * ((f4)(1.73205));
																/* d軸電流指令値								*/
				}
				else
				{
					f4_id_inv0_ctrl	= (-f4_irms_inv0_ref_tmp * f4_temp_3) * ((f4)(1.73205));
																/* d軸電流指令値								*/
				}



				if(u1_flag_enable_inv0_wrctrl == 1)				/* 速度制御有効									*/
				{
					f4_iq_inv0_ctrl		= f4_iq_inv0_wrctrl;
				}
				else
				{
					f4_temp_4			= (f4_irms_inv0_ref_tmp * f4_temp_2) * ((f4)(1.73205));
					f4_iq_inv0_ctrl		= limit(f4_temp_4, f4_iq_inv0_wrlimitctrl, -f4_iq_inv0_wrlimitctrl);
				}
																/* q軸電流指令値								*/
			}
			else												/* インバータPWM禁止中							*/
			{
				f4_id_inv0_ctrl			= ((f4)(0.));
				f4_iq_inv0_ctrl			= ((f4)(0.));
				f4_irms_inv0_ref_tmp	= ((f4)(0.));
				f4_theta_inv0_ref_tmp	= f4_theta_inv0_ref;
			}

			f4_power_inv0_mot_loss		= (f4)(1.0);
			f4_power_inv0_inv_loss		= (f4)(1.0);
			/*============================================================*/

		break;

		case 1:

			/*=============================================================*/
			/* 					 トルクマップ制御モード演算				   */
			/*=============================================================*/
			if(1 == u1_pwm_inv0_status)							/* インバータPWM許可中							*/
			{
				/* トルク指令値変化率演算		*/
				if(f4_tq_inv0_ref > f4_tq_inv0_ref_tmp)
				{
					f4_tq_inv0_ref_tmp 		= f4_tq_inv0_ref_tmp + f4_dtq_inv0_ref_up * (f4)(0.001);
					if(f4_tq_inv0_ref_tmp > f4_tq_inv0_ref)		/* トルク指令値を増加							*/
					{
						f4_tq_inv0_ref_tmp	= f4_tq_inv0_ref;
					}
					else{}
				}
				else if(f4_tq_inv0_ref < f4_tq_inv0_ref_tmp)
				{
					f4_tq_inv0_ref_tmp 		= f4_tq_inv0_ref_tmp - f4_dtq_inv0_ref_up * (f4)(0.001);
					if(f4_tq_inv0_ref_tmp < f4_tq_inv0_ref)		/* トルク指令値を減少							*/
					{
						f4_tq_inv0_ref_tmp	= f4_tq_inv0_ref;
					}
					else{}
				}
				else{}

				/* トルク指令値					*/
				if(u1_flag_enable_inv0_wrctrl == 1)				/* 速度制御有効									*/
				{
					f4_tq_inv0_ref_tmp		= limit(f4_tq_inv0_wrctrl, f4_tq_inv0_ref_max, f4_tq_inv0_ref_min);
				}
				else											/* 速度制御無効									*/
				{
					f4_tq_inv0_ref_tmp		= limit(f4_tq_inv0_ref_tmp, f4_tq_inv0_ref_max, f4_tq_inv0_ref_min);
				}

				/* トルク(dq軸電流)マップ演算	*/
				if(t_f4_speed_inv0_lpf < ((f4)(0.0)))
				{
					f4_temp_1			= -f4_tq_inv0_ref_tmp;
				}
				else
				{
					f4_temp_1			= f4_tq_inv0_ref_tmp;
				}

				u1_tq_map_get(f4_speed_inv0_abs, f4_temp_1, t_f4_vdc_inv0_lpf, &f4_id_inv0_ctrl, &f4_temp_2, &f4_power_inv0_mot_loss, &f4_power_inv0_inv_loss);
																/* 回転数, トルク指令, 入力電圧, &id*, &iq 		*/

				if(t_f4_speed_inv0_lpf < ((f4)(0.0)))
				{
					f4_iq_inv0_ctrl		= -f4_temp_2;
				}
				else
				{
					f4_iq_inv0_ctrl		= f4_temp_2;
				}
			}
			else
			{
				f4_id_inv0_ctrl			= ((f4)(0.));
				f4_iq_inv0_ctrl			= ((f4)(0.));

				f4_tq_inv0_ref_tmp		= ((f4)(0.));
			}
			/*============================================================*/

		break;


		default:
		break;
	}
	
	f4_temp_1		= f4_id_inv0_ctrl * f4_id_inv0_ctrl;
	f4_temp_2		= f4_iq_inv0_ctrl * f4_iq_inv0_ctrl;
	f4_temp_1		= f4_temp_1 + f4_temp_2;
	f4_idq_inv0_ctrl		= sqrtf(f4_temp_1);

	f4_temp_1		= f4_id_inv0_ref * f4_id_inv0_ref;
	f4_temp_2		= f4_iq_inv0_ref * f4_iq_inv0_ref;
	f4_temp_1		= f4_temp_1 + f4_temp_2;
	f4_irms_inv0_ref_ctrl		= sqrtf(f4_temp_1) * ((f4)(1.0/1.73205));

	if(f4_iq_inv0_ref < (f4)(0.0))
	{
		f4_irms_inv0_ref_ctrl		= -f4_irms_inv0_ref_ctrl;
	}
	else{}

	f4_temp_1		= f4_id_inv0_ref;
	if(f4_temp_1 < (f4)(0.0))
	{
		f4_temp_1		= -f4_temp_1;
	}
	else{}

	if((f4_temp_1 > (f4)(0.0))||(f4_temp_1 < (f4)(0.0)))
	{
		f4_temp_1		= f4_iq_inv0_ref / f4_temp_1;
		f4_theta_inv0_ref_ctrl		= atanf(f4_temp_1) *  ((f4)(360.0 / TWOPI));
	}
	else
	{
		/* id = 0,iq != 0 のときに90度を取るようにする */
		s4_temp_1		= (s4)(f4_iq_inv0_ref * (f4)(1000));
		if(s4_temp_1 == 0)
		{
			f4_theta_inv0_ref_ctrl		= (f4)(0.0);
		}
		else
		{
			f4_theta_inv0_ref_ctrl		= (f4)(90.0);
		}
	}



	f4_temp_1		= f4_id_inv0_ad_adj_lpf * f4_id_inv0_ad_adj_lpf;
	f4_temp_2		= f4_iq_inv0_ad_adj_lpf * f4_iq_inv0_ad_adj_lpf;
	f4_temp_1		= f4_temp_1 + f4_temp_2;
	f4_irms_inv0_ad_lpf		= sqrtf(f4_temp_1) * ((f4)(1.0/1.73205));

	if(f4_iq_inv0_ad_adj_lpf < (f4)(0.0))
	{
		f4_irms_inv0_ad_lpf		= -f4_irms_inv0_ad_lpf;
	}
	else{}

	f4_temp_1		= f4_id_inv0_ad_adj_lpf;
	if(f4_temp_1 < (f4)(0.0))
	{
		f4_temp_1		= -f4_temp_1;
	}
	else{}

	if((f4_temp_1 > (f4)(0.0))||(f4_temp_1 < (f4)(0.0)))
	{
		f4_temp_1		= f4_iq_inv0_ad_adj_lpf / f4_temp_1;
	}
	else
	{
		f4_temp_1		= (f4)(0.0);
	}
	f4_theta_inv0_ad_lpf		= atanf(f4_temp_1) *  ((f4)(360.0 / TWOPI));
	/*============================================================*/

	/*============================================================*/
	/* 				 		トルク/DC電流推定演算				  */
	/*============================================================*/

	if((f4_lev_inv0_speed_tq_est_ctrl < f4_speed_inv0_abs)&&((f4)(10.0) < f4_speed_inv0_abs))	/* ゼロ割防止	*/
	{
		/* 電力で推定	*/
		f4_tq_inv0_est				= (f4_power_inv0_p123_lpf - f4_power_inv0_mot_loss) / f4_winv_inv0_ref * f4_pf_inv0;
	}
	else
	{
		/* モータパラメータで推定 */
		f4_temp_1					= f4_pf_inv0 * (f4_lm_inv0 * f4_id_inv0_ad) * f4_iq_inv0_ad;
		f4_temp_1					= f4_temp_1 - f4_tq_inv0_est;
		f4_tq_inv0_est				= f4_tq_inv0_est + (f4_wclpf_inv0_p123 * f4_temp_1 * (f4)(0.001));
	}

	f4_idc_inv0_est				= (f4_power_inv0_p123_lpf + f4_power_inv0_inv_loss) / f4_vdc_inv0_ad;
	/*============================================================*/
}

/*===============================================================
+																+
+			Name:		void fb_1ms_inv0_idqcom_init (void)		+
+		Function:	1msタイマ割込みdq軸電流指令値演算初期化関数	+
+																+
+		Return Value:		No									+
+				date:		 10th Mar,2017						+
+																+
===============================================================*/
void fb_1ms_inv0_idqcom_init (void)
{
	/*=============================================================*/
	/* 							 出力制限変数初期化				   */
	/*=============================================================*/
	u1_flag_inv0_derating_status	= (u1)(0);

	f4_k_inv0_tmp_igbt_limit		= ((f4)(1.));
	f4_tmp_inv0_igbt_limit_start	= ((f4)(TMP_INV0_IGBT_LIMIT_START));
	f4_tmp_inv0_igbt_limit_fin		= ((f4)(TMP_INV0_IGBT_LIMIT_FIN));

	f4_k_inv0_tmp_mot1_limit		= ((f4)(1.));
	f4_tmp_inv0_mot1_limit_start	= ((f4)(TMP_INV0_MOT1_LIMIT_START));
	f4_tmp_inv0_mot1_limit_fin		= ((f4)(TMP_INV0_MOT1_LIMIT_FIN));

	f4_k_inv0_tmp_mot2_limit		= ((f4)(1.));
	f4_tmp_inv0_mot2_limit_start	= ((f4)(TMP_INV0_MOT2_LIMIT_START));
	f4_tmp_inv0_mot2_limit_fin		= ((f4)(TMP_INV0_MOT2_LIMIT_FIN));

	f4_k_inv0_tq_limit				= ((f4)(1.));
	/*=============================================================*/

	/*=============================================================*/
	/* 					 アクティブ放電演算変数初期化			   */
	/*=============================================================*/
	f4_speed_inv0_enable_active_discharge		= (f4)(SPEED_INV0_ENABLE_ACTIVE_DISCHARGE);
	f4_irms_inv0_ref_active_discharge			= (f4)(IRMS_INV0_REF_ACTIVE_DISCHARGE);
	u1_flag_inv0_sysctrl_active_discharge		= (u1)(0);
	/*=============================================================*/

	/*=============================================================*/
	/* 					 dq軸電流指令値モード初期化				   */
	/*=============================================================*/
	u1_flag_mode_inv0_idqcom		= ((u1)(MODE_INV0_IDQCOM));

	f4_id_inv0_ctrl					= ((f4)(0.));
	f4_iq_inv0_ctrl					= ((f4)(0.));
	/*=============================================================*/

	/*=============================================================*/
	/* 				 電流振幅&進角設定モード変数初期化			   */
	/*=============================================================*/
	f4_irms_inv0_ref				= ((f4)(0.));
	f4_irms_inv0_ref_tmp			= ((f4)(0.));

	f4_theta_inv0_ref				= ((f4)(0.));
	f4_theta_inv0_ref_tmp			= ((f4)(0.));

	f4_dirms_inv0_ref_up			= ((f4)(DIRMS_INV0_REF_UP));
	f4_dtheta_inv0_ref_up			= ((f4)(DTHETA_INV0_REF_UP));
	
	f4_idq_inv0_ctrl				= ((f4)(0.));

	f4_irms_inv0_ref_ctrl			= (f4)(0.0);
	f4_theta_inv0_ref_ctrl			= (f4)(0.0);

	f4_irms_inv0_ad_lpf				= (f4)(0.0);
	f4_theta_inv0_ad_lpf			= (f4)(0.0);
	/*=============================================================*/

	/*=============================================================*/
	/* 				 	トルクマップ制御モード変数初期化		   */
	/*=============================================================*/

	f4_tq_inv0_ref					= ((f4)(0.));
	f4_tq_inv0_ref_tmp				= ((f4)(0.));

	f4_dtq_inv0_ref_up				= ((f4)(DTQ_INV0_REF_UP));

	f4_tq_inv0_ref_max				= ((f4)(0.));
	f4_tq_inv0_ref_min				= ((f4)(0.));

	f4_tq_inv0_ref_max_tmp			= ((f4)(0.));
	f4_tq_inv0_ref_min_tmp			= ((f4)(0.));

	f4_speed_inv0_abs				= ((f4)(0.));

	f4_power_inv0_mot_loss			= (f4)(1.0);
	f4_power_inv0_inv_loss			= (f4)(1.0);
	/*=============================================================*/

	/*=============================================================*/
	/* 				 	トルク/DC電流推定演算変数初期化			   */
	/*=============================================================*/
	f4_wclpf_inv0_p123				= (f4)(WCLPF_INV0_P123);
	f4_power_inv0_p123				= (f4)(0.0);
	f4_power_inv0_p123_lpf			= (f4)(0.0);
	f4_tq_inv0_est					= (f4)(0.0);
	f4_idc_inv0_est					= (f4)(0.0);
	f4_lev_inv0_speed_tq_est_ctrl	= (f4)(LEV_INV0_SPEED_TQ_EST_CTRL);
	/*=============================================================*/

}
