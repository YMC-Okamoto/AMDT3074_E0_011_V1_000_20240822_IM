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
/*				  			同期PWM制御変数定義			　 	   */
/*=============================================================*/
u1			u1_flag_enable_inv0_pwm_sync;						/* 同期PWM制御許可フラグ						*/
																/* 0:禁止, 1:許可								*/
u1			u1_flag_enable_inv0_pwm_sync_tmp;					/* 同期PWM制御許可フラグ(テンポラリ)			*/
s4			s4_cnt_inv0_pwm_sync;								/* 同期PWM制御カウンタ							*/
u4			u4_cnt_inv0_pwm_sync_max;							/* 同期PWM制御カウンタ上限						*/
f4			f4_k_inv0_pwm_sync;									/* 同期PWM制御カウンタ比						*/

u1			u1_flag_select_inv0_pwm_sync_mode;					/* 同期PWM制御モード選択フラグ					*/
																/* 0:高PWM基準同期PWM 1:低PWM基準同期PWM		*/

u4			u4_k_inv0_pwm_sync;									/* Unit=-:PWM周波数倍率(6の倍数)				*/
u4			u4_k_inv0_pwm_sync_tmp;								/* Unit=-:PWM周波数倍率(6の倍数)				*/
u4			u4_k_inv0_pwm_sync_new;								/* Unit=-:PWM周波数倍率(6の倍数)				*/
u4			u4_k_inv0_pwm_sync_max;								/* Unit=-:PWM周波数倍率(6の倍数)				*/
u4			u4_k_inv0_pwm_sync_min;								/* Unit=-:PWM周波数倍率(6の倍数)				*/

u4			u4_fc_inv0_max_lsb_0;								/* Unit=Hz:PWM周波数上限値						*/
u4			u4_fc_inv0_min_lsb_0;								/* Unit=Hz:PWM周波数下限値						*/

f4			f4_fmot_inv0_lpf;									/* Unit=Hz:モータ周波数LPF値					*/
f4			f4_fmot_inv0_lpf_tmp;								/* Unit=Hz:モータ周波数LPF値					*/
f4			f4_dfmot_inv0_lpf;									/* Unit=Hz:モータ周波数LPF値差分				*/
f4			f4_lev_dfmot_inv0_fc_hys;							/* Unit=Hz:fc変更モータ周波数差分ヒステリシスレベル	*/
f4			f4_wclpf_inv0_fmot;									/* Unit=rad/s:モータ周波数LPFカットオフ周波数	*/

// PI制御変数
f4			f4_wt_inv0_sync_ref;								/* Unit=rad:同期PWM角度指令値					*/
f4			f4_wt_inv0_sync_err;								/* Unit=rad:同期PWM角度誤差				 		*/

f4			f4_fc_inv0_sync_max;								/* Unit=-:同期PWM周波数補正上限					*/
f4			f4_kp_inv0_fc_sync;									/* Unit=-:同期PWM比例ゲイン						*/
f4			f4_ki_inv0_fc_sync;									/* Unit=-:同期PWM積分ゲイン						*/

f4			f4_fc_inv0_syncp;									/* Unit=rad/s:同期PWM補正値(比例項)				*/
f4			f4_fc_inv0_synci;									/* Unit=rad/s:同期PWM補正値(積分項)				*/
f4			f4_fc_inv0_sync;									/* Unit=rad/s:同期PWM補正値						*/

u1			u1_flag_inv0_status_pwm_sync_limit;					/* 同期PWM割り込み回数制限状態フラグ			*/
																/* 0:-,1:制限									*/
u1			u1_flag_inv0_status_pwm_sync_change;				/* 同期PWM割り込み回数変更状態フラグ			*/
																/* 0:前回と同じ,1:前回と変更					*/
/*=============================================================*/

/*=============================================================*/
/* 					関数のプロトタイプ宣言					   */
/*=============================================================*/
void 		fi_pwm_inv0_syncctrl			(void);				/* キャリア割込み同期PWM制御関数				*/
void 		fb_pwm_inv0_syncctrl_init		(void);				/* キャリア割込み同期PWM初期化関数				*/
/*=============================================================*/

/*===============================================================
+																+
+				Name:		void fi_pwm_inv0_syncctrl (void)	+
+			Function:	キャリア割込み同期PWM制御関数			+
+																+
+					1)	同期PWM制御								+
+																+
+		Return Value:		No									+
+				date:		 10th Mar,2017						+
+																+
===============================================================*/
void fi_pwm_inv0_syncctrl (void)
{
	/*============================================================*/
	/*					   ローカル変数定義		  				  */
	/*============================================================*/
	f4		f4_temp_1;
	s4		s4_temp_1;
	u4		u4_temp_1;
	/*============================================================*/

	/*============================================================*/
	/*     				 		同期PWM制御 					  */
	/*============================================================*/
	// f4_temp_1						= f4_wr_inv0_pll_lpf_abs * ((f4)(1.0/TWOPI)) - f4_fmot_inv0_lpf;
	f4_temp_1						= f4_winv_inv0_ref_abs * ((f4)(1.0/TWOPI)) - f4_fmot_inv0_lpf;
	f4_fmot_inv0_lpf				= f4_fmot_inv0_lpf + (f4_wclpf_inv0_fmot * f4_temp_1 * f4_ts_inv0_ctrl);

																/* モータ周波数LPF値=>同期PWM用					*/

	u4_k_inv0_pwm_sync_tmp		= u4_k_inv0_pwm_sync;
	if(u1_flag_select_inv0_pwm_sync_mode == 0)	/* 高PWM基準同期PWM */
	{
		f4_temp_1				= (f4)(u4_fc_inv0_max_lsb_0) / (f4_fmot_inv0_lpf * (f4)(6.0));
		u4_k_inv0_pwm_sync_new		= (u4)(f4_temp_1) * (u4)(6);
	}
	else	/* 低PWM基準同期PWM */
	{
		f4_temp_1				= (f4)(u4_fc_inv0_min_lsb_0) / (f4_fmot_inv0_lpf * (f4)(6.0));
		u4_k_inv0_pwm_sync_new		= ((u4)(f4_temp_1) + (u4)(1)) * (u4)(6);
	}

	if(u4_k_inv0_pwm_sync_new > u4_k_inv0_pwm_sync_max) /* 最大割込み回数制限 */
	{
		u4_k_inv0_pwm_sync_new		= u4_k_inv0_pwm_sync_max;
		u1_flag_inv0_status_pwm_sync_limit		= 1;
	}
	else if(u4_k_inv0_pwm_sync_new < u4_k_inv0_pwm_sync_min) /* 最小割込み回数制限 */
	{
		u4_k_inv0_pwm_sync_new		= u4_k_inv0_pwm_sync_min;
		u1_flag_inv0_status_pwm_sync_limit		= 1;
	}
	else
	{
		u1_flag_inv0_status_pwm_sync_limit		= 0;
	}

	if(u4_k_inv0_pwm_sync_tmp < u4_k_inv0_pwm_sync_new) /* 割込み回数が増えるとき */
	{
		f4_dfmot_inv0_lpf			= f4_fmot_inv0_lpf_tmp - f4_fmot_inv0_lpf;
		if(f4_dfmot_inv0_lpf > f4_lev_dfmot_inv0_fc_hys) /* モータ周波数の差が大きい場合 */
		{
			u4_k_inv0_pwm_sync		= u4_k_inv0_pwm_sync_new;	/* 割込み回数最新値を使用 */
		}
		else
		{
			u4_k_inv0_pwm_sync		= u4_k_inv0_pwm_sync_tmp;	/* 割込み回数前回値を使用 */
		}
	}
	else /* 割込み回数が減るまたは前回と同値の場合 */
	{
		f4_fmot_inv0_lpf_tmp		= f4_fmot_inv0_lpf;		/* 値保存 */
		u4_k_inv0_pwm_sync		= u4_k_inv0_pwm_sync_new;	/* 割込み回数最新値を使用 */
	}

	if(u4_k_inv0_pwm_sync != u4_k_inv0_pwm_sync_tmp) /* 割り込み回数が前回と変更 */
	{
		u1_flag_inv0_status_pwm_sync_change		= 1;
	}
	else /* 割り込み回数が前回と同じ */
	{
		u1_flag_inv0_status_pwm_sync_change		= 0;
	}


	if(0 == u1_flag_inv0_adj)									/* 通常モード					*/
	{
		if(1 == u1_flag_enable_inv0_pwm_sync)						/* 同期PWMが有効な場合							*/
		{
			// 同期PWMカウンタ

			if(3 == u1_flag_pwm_inv0_source)
			{
				// 山谷割込み
				u4_cnt_inv0_pwm_sync_max		= (u4_k_inv0_pwm_sync * 2);
																	/* 山谷制御で2倍のカウンタにする				*/
			}
			else
			{
				// 山または谷割込み
				u4_cnt_inv0_pwm_sync_max		= (u4_k_inv0_pwm_sync / (u4)(N_FC_INV0+1));
																	/* 山または谷制御で1倍のカウンタにする			*/
			}

			// f4_wt_inv0_sync_ref		= f4_wt_inv0_dq;
			f4_wt_inv0_sync_ref		= f4_wt_inv0_dq + f4_wt_inv0_vdq + ((f4)(1.0)) * (f4_winv_inv0_ref) * f4_ts_inv0_ctrl; /* 電圧位相を合わせる */
			// f4_wt_inv0_sync_ref		= f4_wt_inv0_dq  + ((f4)(1.0)) * (f4_winv_inv0_ref) * f4_ts_inv0_ctrl; /* 電圧位相を合わせる */

			if(f4_wt_inv0_sync_ref > f4_TWOPI)
			{
				f4_temp_1					= f4_wt_inv0_sync_ref * ((f4)(1.0/TWOPI));
				s4_temp_1					= (s4)(f4_temp_1);
				f4_wt_inv0_sync_ref			= f4_wt_inv0_sync_ref - (f4)(s4_temp_1) * ((f4)(TWOPI));
			}
			else if(f4_wt_inv0_sync_ref < (f4)(0.))
			{
				f4_temp_1					= f4_wt_inv0_sync_ref * ((f4)(1.0/TWOPI));
				s4_temp_1					= (s4)(f4_temp_1) - (s4)(1);
				f4_wt_inv0_sync_ref			= f4_wt_inv0_sync_ref - (f4)(s4_temp_1) * ((f4)(TWOPI));
			}
			else{}


			if(f4_winv_inv0_ref > (f4)(0.0))
			{
				s4_cnt_inv0_pwm_sync++; /* PWM同期回数のカウンタ */
			}
			else
			{
				s4_cnt_inv0_pwm_sync--; /* PWM同期回数のカウンタ */
			}

			if(u1_flag_inv0_status_pwm_sync_limit == 1) /* 割り込み回数の制限状態 */
			{
				s4_cnt_inv0_pwm_sync			= (u4)(f4_wt_inv0_sync_ref * (f4)(1.0/TWOPI) * (f4)(u4_cnt_inv0_pwm_sync_max));
			}
			else if(u1_flag_inv0_status_pwm_sync_change == 1) /* 割り込み回数が前回と変更 */
			{
				s4_cnt_inv0_pwm_sync			= (u4)(f4_wt_inv0_sync_ref * (f4)(1.0/TWOPI) * (f4)(u4_cnt_inv0_pwm_sync_max));
			}
			else{}

			if(s4_cnt_inv0_pwm_sync >= (s4)(u4_cnt_inv0_pwm_sync_max))	/* 同期PWM周期検出								*/
			{
				s4_cnt_inv0_pwm_sync		= 0;
			}
			else if(s4_cnt_inv0_pwm_sync < 0)
			{
				s4_cnt_inv0_pwm_sync		= (s4)(u4_cnt_inv0_pwm_sync_max -1);
			}
			else{}

			f4_k_inv0_pwm_sync		= (f4)(s4_cnt_inv0_pwm_sync) / (f4)(u4_cnt_inv0_pwm_sync_max);


			{

				if(f4_winv_inv0_ref > (f4)(0.0))
				{
					f4_wt_inv0_sync_err		= f4_wt_inv0_sync_ref - f4_TWOPI * f4_k_inv0_pwm_sync;
				}
				else
				{
					f4_wt_inv0_sync_err		= -f4_wt_inv0_sync_ref + f4_TWOPI * f4_k_inv0_pwm_sync;
				}


				if(f4_wt_inv0_sync_err > f4_ONEPI)						/* (0≦θ≦2π) = > (-π≦θ≦π)に変換			*/
				{
					f4_wt_inv0_sync_err		= f4_wt_inv0_sync_err - f4_TWOPI;
				}
				else if(f4_wt_inv0_sync_err < -f4_ONEPI)
				{
					f4_wt_inv0_sync_err		= f4_wt_inv0_sync_err + f4_TWOPI;
				}
				else{}

				/* 同期PWM周波数補正			*/
				f4_fc_inv0_syncp			= f4_kp_inv0_fc_sync * f4_wt_inv0_sync_err;
																	/* 同期PWM周波数補比例項						*/
				f4_fc_inv0_synci			= f4_fc_inv0_synci + (f4_ki_inv0_fc_sync * f4_wt_inv0_sync_err);
				f4_fc_inv0_synci			= limit(f4_fc_inv0_synci, f4_fc_inv0_sync_max, -f4_fc_inv0_sync_max);
																	/* 同期PWM周波数補積分項						*/
				f4_temp_1					= f4_fc_inv0_syncp + f4_fc_inv0_synci;
				f4_fc_inv0_sync				= limit(f4_temp_1, f4_fc_inv0_sync_max, -f4_fc_inv0_sync_max);
																	/*同期PWM周波数補出力							*/

				// キャリア周波数設定値
				u4_fc_inv0_lsb_0					= (u4)(f4_fmot_inv0_lpf * (f4)(u4_k_inv0_pwm_sync) + f4_fc_inv0_sync);
																	/* 補正項を加算してリミット						*/
				if(u4_fc_inv0_lsb_0 > u4_fc_inv0_max_lsb_0)
				{
					u4_fc_inv0_lsb_0			= u4_fc_inv0_max_lsb_0;
					f4_fc_inv0_synci			= (f4)(0.0);		/* キャリア周波数が制限されるので補正積分項は0にする*/
				}
				else if(u4_fc_inv0_lsb_0 < u4_fc_inv0_min_lsb_0)
				{
					u4_fc_inv0_lsb_0			= u4_fc_inv0_min_lsb_0;
					f4_fc_inv0_synci			= (f4)(0.0);		/* キャリア周波数が制限されるので補正積分項は0にする*/
				}
				else{}

				if(u1_flag_select_inv0_pwm_sync_mode == 0)	/* 高PWM基準同期PWM */
				{
					if(u4_fc_inv0_lsb_0 == u4_fc_inv0_min_lsb_0)
					{
						if(u4_k_inv0_pwm_sync != u4_k_inv0_pwm_sync_max)
						{
							/* 高回転時には最大キャリア周波数にする*/
							u4_fc_inv0_lsb_0		= u4_fc_inv0_max_lsb_0;
						}
						else{}
					}
					else{}
				}
				else{}

			}

			u1_flag_enable_inv0_pwm_sync_tmp		= u1_flag_enable_inv0_pwm_sync;
		}
		else														/* 同期PWMが無効な場合							*/
		{
			if(u1_flag_enable_inv0_pwm_sync != u1_flag_enable_inv0_pwm_sync_tmp)
			{
				u4_fc_inv0_lsb_0				= ((u4)(FC_PWM_INV0));	/* 同期PWMを無効に変更したら、初期PWM周波数に戻す*/
				u1_flag_enable_inv0_pwm_sync_tmp		= u1_flag_enable_inv0_pwm_sync;

			}
			else{}

			f4_fc_inv0_syncp				= ((f4)(0.));
			f4_fc_inv0_synci				= ((f4)(0.));
			f4_fc_inv0_sync					= ((f4)(0.));

		}
	}
	else	/* パラメータ測定測定モードはPWM同期しない		*/
	{
		if(u1_flag_enable_inv0_pwm_sync == (u1)(1))
		{
			if(u1_flag_enable_inv0_pwm_sync == u1_flag_enable_inv0_pwm_sync_tmp)
			{
				u4_fc_inv0_lsb_0				= ((u4)(FC_PWM_INV0));	/* 同期PWMを無効に変更したら、初期PWM周波数に戻す*/
				u1_flag_enable_inv0_pwm_sync_tmp		= (u1)(0);
			}
			else{}
		}
		else{}

		f4_fc_inv0_syncp				= ((f4)(0.));
		f4_fc_inv0_synci				= ((f4)(0.));
		f4_fc_inv0_sync					= ((f4)(0.));

	}


	/*============================================================*/
}

/*===============================================================
+																+
+				Name:	void fb_pwm_inv0_syncctrl_init (void)	+
+			Function:	キャリア割込み同期PWM制御初期化関数		+
+																+
+		Return Value:		No									+
+				date:		 10th Mar,2017						+
+																+
===============================================================*/
void fb_pwm_inv0_syncctrl_init (void)
{

	/*=============================================================*/
	/*				  		同期PWM制御変数初期化			　 	   */
	/*=============================================================*/
	u1_flag_enable_inv0_pwm_sync		= (u1)(ENABLE_INV0_PWM_SYNC);
	u1_flag_enable_inv0_pwm_sync_tmp	= (u1)(ENABLE_INV0_PWM_SYNC);

	s4_cnt_inv0_pwm_sync				= 0;
	u4_cnt_inv0_pwm_sync_max			= 0;
	f4_k_inv0_pwm_sync					= (f4)(0.0);

	u1_flag_select_inv0_pwm_sync_mode	= (u1)(SELECT_INV0_PWM_SYNC_MODE);

	u4_k_inv0_pwm_sync					= ((u4)(K_INV0_PWM_SYNC_MAX));
	u4_k_inv0_pwm_sync_tmp				= ((u4)(K_INV0_PWM_SYNC_MAX));
	u4_k_inv0_pwm_sync_new				= ((u4)(K_INV0_PWM_SYNC_MAX));
	u4_k_inv0_pwm_sync_max				= ((u4)(K_INV0_PWM_SYNC_MAX));
	u4_k_inv0_pwm_sync_min				= ((u4)(K_INV0_PWM_SYNC_MIN));

	u4_fc_inv0_max_lsb_0				= ((f4)(FC_PWM_INV0_MAX));
	u4_fc_inv0_min_lsb_0				= ((f4)(FC_PWM_INV0_MIN));

	f4_fmot_inv0_lpf					= ((f4)(0.));
	f4_fmot_inv0_lpf_tmp				= ((f4)(0.));
	f4_dfmot_inv0_lpf					= ((f4)(0.));
	f4_lev_dfmot_inv0_fc_hys			= ((f4)(LEV_DFMOT_INV0_FC_HYS));
	f4_wclpf_inv0_fmot					= ((f4)(WCLPF_INV0_FMOT));

	f4_wt_inv0_sync_ref					= ((f4)(0.));
	f4_wt_inv0_sync_err					= ((f4)(0.));

	f4_fc_inv0_sync_max					= ((f4)(FC_INV0_SYNC_MAX));
	f4_kp_inv0_fc_sync					= ((f4)(KP_INV0_FC_SYNC));
	f4_ki_inv0_fc_sync					= ((f4)(KI_INV0_FC_SYNC));

	f4_fc_inv0_syncp					= ((f4)(0.));
	f4_fc_inv0_synci					= ((f4)(0.));
	f4_fc_inv0_sync						= ((f4)(0.));


	u1_flag_inv0_status_pwm_sync_limit	= 0;
	u1_flag_inv0_status_pwm_sync_change	= 0;
	/*=============================================================*/

}




