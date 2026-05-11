/*===============================================================
+																+
+			Title:		IPMSMモータ制御ソフトウェア				+
+					　(RH850/C1M専用コントローラ対応品)			+
+																+
+				date:		 10th Mar,2017						+
+  	 	Copyright (C) Aoyama Motor Drive Technology 2016		+
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
/* 					  角速度制御許可設定					   */
/*=============================================================*/
u1			u1_flag_enable_inv0_wrctrl;							/* 速度制御許可設定								*/
/*=============================================================*/

/*=============================================================*/
/* 					  角速度リミット制御許可設定			   */
/*=============================================================*/
u1			u1_flag_enable_inv0_wrlimitctrl;					/* 速度リミット制御許可設定						*/
/*=============================================================*/

/*=============================================================*/
/* 					角速度/角速度リミット指令値変数定義		   */
/*=============================================================*/
f4			f4_speed_inv0_ref;									/* Unit=rpm:回転数指令値(ユーザ設定)			*/
f4			f4_wr_inv0_ref;										/* Unit=rad/s:角速度指令値						*/

f4			f4_dspeed_inv0_ref_up;								/* Unit=rpm/s:回転数指令値変化レート			*/
f4			f4_dwr_inv0_ref_up;									/* Unit=rad/s/msec:角速度指令値増加レート		*/

u1			u1_flag_wr_inv0_ref_check;							/* 速度指令値確認フラグ							*/

f4			f4_speed_inv0_limit_ref;							/* Unit=rpm:回転数リミット指令値(ユーザ設定)	*/
f4			f4_wr_inv0_limit_ref;								/* Unit=rad/s:角速度リミット指令値				*/
/*=============================================================*/

/*=============================================================*/
/* 							速度制御変数定義				   */
/*=============================================================*/
f4			f4_kp_inv0_wrctrl;									/* Unit=-:速度制御比例ゲイン					*/
f4			f4_ki_inv0_wrctrl;									/* Unit=-:速度制御積分ゲイン					*/

f4			f4_wr_inv0_ctrlerr;									/* Unit=rad/s:速度制御偏差						*/

f4			f4_tq_inv0_wrctrlp;									/* Unit=Nm:速度制御比例項						*/
f4			f4_tq_inv0_wrctrli;									/* Unit=Nm:速度制御積分項						*/
f4			f4_tq_inv0_wrctrl;									/* Unit=Nm:速度制御出力							*/

f4			f4_iq_inv0_wrctrlp;									/* Unit=A:速度制御比例項						*/
f4			f4_iq_inv0_wrctrli;									/* Unit=A:速度制御積分項						*/
f4			f4_iq_inv0_wrctrl;									/* Unit=A:速度制御出力							*/
/*=============================================================*/

/*=============================================================*/
/* 						速度リミット制御変数定義			   */
/*=============================================================*/
f4			f4_kp_inv0_wrlimitctrl;								/* Unit=-:速度リミット制御比例ゲイン			*/
f4			f4_ki_inv0_wrlimitctrl;								/* Unit=-:速度リミット制御積分ゲイン			*/

f4			f4_wr_inv0_limitctrlerr;							/* Unit=rad/s:速度リミット制御偏差				*/

f4			f4_tq_inv0_wrlimitctrlp;							/* Unit=Nm:速度リミット制御比例項				*/
f4			f4_tq_inv0_wrlimitctrli;							/* Unit=Nm:速度リミット制御積分項				*/
f4			f4_tq_inv0_wrlimitctrl;								/* Unit=Nm:速度リミット制御出力					*/
f4			f4_iq_inv0_wrlimitctrl;								/* Unit=A:速度リミット制御出力					*/

f4			f4_idq_inv0_max;									/* Unit=A:dq軸電流制限値						*/
/*=============================================================*/

/*=============================================================*/
/* 						デバッグ用変数定義	         	  	   */
/*=============================================================*/

/*=============================================================*/

/*=============================================================*/
/* 						関数のプロトタイプ宣言				　 */
/*=============================================================*/
void 		fi_1ms_inv0_wrctrl			(void);					/* 1msタイマ割込み速度制御関数					*/
void		fb_1ms_inv0_wrctrl_init		(void);					/* 1msタイマ割込み速度制御初期化関数			*/
/*=============================================================*/

/*===============================================================
+																+
+				Name:		void fi_1ms_inv0_wrctrl (void)		+
+			Function:		1msタイマ割込み速度制御関数			+
+																+
+					1)	速度リミット指令値演算					+
+					2)	速度リミット制御演算					+
+																+
+		Return Value:		No									+
+				date:		 10th Mar,2017						+
+																+
===============================================================*/
void fi_1ms_inv0_wrctrl ( void )
{
	/*============================================================*/
	/*					   ローカル変数定義		　				  */
	/*============================================================*/
	f4		f4_temp_1, f4_temp_2;								/* テンポラリ変数(f4)							*/
	/*============================================================*/

	/*============================================================*/
	/*						速度/速度リミット指令値演算		　	  */
	/*============================================================*/
	f4_dwr_inv0_ref_up				= f4_dspeed_inv0_ref_up * ((f4)(TWOPI/60.0)) * f4_pf_inv0;
	
	if((1 == u1_pwm_inv0_status)&&(u1_flag_enable_inv0_wrctrl == 1))
																/* 速度制御許可									*/
	{
		f4	t_f4_wr_ref;										/* Unit=rad/s:角速度指令値						*/

		if(u1_flag_wr_inv0_ref_check != 1)
		{
			u1_flag_wr_inv0_ref_check	= 1;
			f4_wr_inv0_ref				= f4_wr_inv0_pll_lpf;
		}
		else{}

		t_f4_wr_ref					= f4_speed_inv0_ref * ((f4)(TWOPI/60.0)) * f4_pf_inv0;
		if(t_f4_wr_ref > f4_wr_inv0_ref)
		{
			f4_wr_inv0_ref 			= f4_wr_inv0_ref + f4_dwr_inv0_ref_up * (f4)(0.001);
			if(f4_wr_inv0_ref > t_f4_wr_ref)					/* 角速度指令値を増加							*/
			{
				f4_wr_inv0_ref		= t_f4_wr_ref;
			}
			else{}
		}
		else if(t_f4_wr_ref < f4_wr_inv0_ref)
		{
		f4_wr_inv0_ref 			= f4_wr_inv0_ref - f4_dwr_inv0_ref_up * (f4)(0.001);
			if(f4_wr_inv0_ref < t_f4_wr_ref)					/* 角速度指令値を減少							*/
			{
				f4_wr_inv0_ref		= t_f4_wr_ref;
			}
			else{}
		}
		else{}
	}
	else
	{
		u1_flag_wr_inv0_ref_check	= 0;

		if(u1_flag_enable_inv0_wrctrl == 1)						/* 速度制御許可									*/
		{
			f4_wr_inv0_ref				= f4_wr_inv0_pll_lpf;
		}
		else													/* 速度リミット制御								*/
		{
			f4_wr_inv0_ref				= f4_wr_inv0_pll_lpf;
		}
	}

	f4_wr_inv0_limit_ref					= f4_speed_inv0_limit_ref * ((f4)(TWOPI/60.0)) * f4_pf_inv0;
	/*============================================================*/

	/*============================================================*/
	/*		  			 	 	速度制御演算				  	  */
	/*============================================================*/
	if((1 == u1_pwm_inv0_status)&&(u1_flag_enable_inv0_wrctrl == 1)&&(u1_flag_mode_inv0_idqcom == 1))
	{															/* インバータPWM許可中							*/
																/* 速度制御有効									*/
																/* トルク指令モード								*/

		f4_temp_1					= f4_wr_inv0_pll_lpf;

		f4_temp_2					= f4_wr_inv0_ref;

		f4_wr_inv0_ctrlerr			= f4_temp_2 - f4_temp_1;
																/* 速度制御偏差									*/

		f4_tq_inv0_wrctrlp			= f4_kp_inv0_wrctrl * f4_wr_inv0_ctrlerr;
																/* 速度制御比例項								*/
		f4_tq_inv0_wrctrli			= f4_tq_inv0_wrctrli + (f4_ki_inv0_wrctrl * f4_wr_inv0_ctrlerr);
		f4_tq_inv0_wrctrli			= limit(f4_tq_inv0_wrctrli, f4_tq_inv0_ref_max, f4_tq_inv0_ref_min);
																/* 速度制御積分項								*/
		f4_temp_1						= f4_tq_inv0_wrctrlp + f4_tq_inv0_wrctrli;
		f4_tq_inv0_wrctrl			= limit(f4_temp_1, f4_tq_inv0_ref_max, f4_tq_inv0_ref_min);
																/* 速度制御出力									*/

	}
	else if((1 == u1_pwm_inv0_status)&&(u1_flag_enable_inv0_wrctrl == 0)&&(u1_flag_mode_inv0_idqcom == 1))
	{															/* インバータPWM許可中							*/
																/* 速度制御無効									*/
																/* トルク指令モード								*/
		f4_tq_inv0_wrctrli			= f4_tq_inv0_ref_tmp;
		f4_tq_inv0_wrctrl			= f4_tq_inv0_ref_tmp;



	}
	else if((1 == u1_pwm_inv0_status)&&(u1_flag_enable_inv0_wrctrl == 1)&&(u1_flag_mode_inv0_idqcom == 0))
	{															/* インバータPWM許可中							*/
																/* 速度制御有効									*/
																/* 電流指令モード								*/
		f4_temp_1					= f4_wr_inv0_pll_lpf;

		f4_temp_2					= f4_wr_inv0_ref;

		f4_wr_inv0_ctrlerr			= f4_temp_2 - f4_temp_1;
																/* 速度制御偏差									*/

		f4_iq_inv0_wrctrlp			= f4_kp_inv0_wrctrl * f4_wr_inv0_ctrlerr;
																/* 速度制御比例項								*/
		f4_iq_inv0_wrctrli			= f4_iq_inv0_wrctrli + (f4_ki_inv0_wrctrl * f4_wr_inv0_ctrlerr);
		f4_iq_inv0_wrctrli			= limit(f4_iq_inv0_wrctrli, f4_idq_inv0_max, -f4_idq_inv0_max);
																/* 速度制御積分項								*/
		f4_temp_1						= f4_iq_inv0_wrctrlp + f4_iq_inv0_wrctrli;
		f4_iq_inv0_wrctrl			= limit(f4_temp_1, f4_idq_inv0_max, -f4_idq_inv0_max);
																/* 速度制御出力									*/


	}
	else														/* インバータPWM禁止中							*/
	{
		f4_tq_inv0_wrctrlp			= ((f4)(0.));				/* 速度制御初期値設定							*/
		f4_tq_inv0_wrctrli			= ((f4)(0.));
		f4_tq_inv0_wrctrl			= ((f4)(0.));
		
		f4_iq_inv0_wrctrlp			= ((f4)(0.));				/* 速度制御初期値設定							*/
		f4_iq_inv0_wrctrli			= ((f4)(0.));
		f4_iq_inv0_wrctrl			= ((f4)(0.));
		
	}
	/*============================================================*/

	/*============================================================*/
	/*		  			  	速度リミット制御演算			  	  */
	/*============================================================*/
	if((1 == u1_pwm_inv0_status)&&(1 == u1_flag_enable_inv0_wrlimitctrl)&&(u1_flag_enable_inv0_wrctrl == 0))
	{															/* インバータPWM許可中							*/
																/* 速度リミット制御有効							*/
																/* 速度制御無効									*/

		f4_temp_1					= f4_wr_inv0_pll_lpf;		/* 角速度の絶対値を取る							*/
		if(f4_temp_1 < ((f4)(0.)))	{f4_temp_1 = -f4_temp_1;}
		else{}
		
		f4_temp_2					= f4_wr_inv0_limit_ref;		/* 角速度の絶対値を取る							*/
		if(f4_temp_2 < ((f4)(0.)))	{f4_temp_2 = -f4_temp_2;}
		else{}

		f4_wr_inv0_limitctrlerr			= f4_temp_2 - f4_temp_1;
																/* 速度リミット制御偏差							*/

		
		
		if(u1_flag_mode_inv0_idqcom == 0)						/* 電流指令モード								*/
		{
			f4_temp_2						= f4_idq_inv0_max * f4_pf_inv0 * f4_fd_inv0_ref;
			
			f4_tq_inv0_wrlimitctrlp			= f4_kp_inv0_wrlimitctrl * f4_wr_inv0_limitctrlerr;
																/* 速度リミット制御比例項						*/
			f4_tq_inv0_wrlimitctrli			= f4_tq_inv0_wrlimitctrli + (f4_ki_inv0_wrlimitctrl * f4_wr_inv0_limitctrlerr);
			f4_tq_inv0_wrlimitctrli			= limit(f4_tq_inv0_wrlimitctrli, f4_temp_2, ((f4)(-0.)));
																/* 速度リミット制御積分項						*/
			f4_temp_1						= f4_tq_inv0_wrlimitctrlp + f4_tq_inv0_wrlimitctrli;
			f4_tq_inv0_wrlimitctrl			= limit(f4_temp_1, f4_temp_2, (f4_temp_2 * (f4)(-0.01)));
																/* 速度リミット制御出力							*/

			if(f4_fd_inv0_ref > (f4)(0.))
			{
				f4_iq_inv0_wrlimitctrl			= f4_tq_inv0_wrlimitctrl * f4_dpf_inv0 / f4_fd_inv0_ref;
			}
			else{}

		}
		else
		{
			f4_tq_inv0_wrlimitctrlp			= f4_kp_inv0_wrlimitctrl * f4_wr_inv0_limitctrlerr;
																/* 速度リミット制御比例項						*/
			f4_tq_inv0_wrlimitctrli			= f4_tq_inv0_wrlimitctrli + (f4_ki_inv0_wrlimitctrl * f4_wr_inv0_limitctrlerr);
			f4_tq_inv0_wrlimitctrli			= limit(f4_tq_inv0_wrlimitctrli, f4_tq_inv0_ref_max_tmp, ((f4)(-0.)));
																/* 速度リミット制御積分項						*/
			f4_temp_1						= f4_tq_inv0_wrlimitctrlp + f4_tq_inv0_wrlimitctrli;
			f4_tq_inv0_wrlimitctrl			= limit(f4_temp_1, f4_tq_inv0_ref_max_tmp, (f4_tq_inv0_ref_max_tmp * (f4)(-0.01)));
																/* 速度リミット制御出力							*/
			
		}
	}
	else														/* インバータPWM禁止中							*/
	{
		f4_tq_inv0_wrlimitctrlp			= ((f4)(0.));				/* 速度リミット制御初期値設定					*/
		f4_tq_inv0_wrlimitctrli			= f4_tq_inv0_ref_max_tmp;
		f4_tq_inv0_wrlimitctrl			= f4_tq_inv0_ref_max_tmp;
		
		f4_iq_inv0_wrlimitctrl			= f4_idq_inv0_max;
	}
	/*============================================================*/
}

/*===============================================================
+																+
+				Name:	void fb_1ms_inv0_wrctrl_init (void)		+
+			Function:	1msタイマ割込み速度制御初期化関数		+
+																+
+		Return Value:		No									+
+				date:		 10th Mar,2017						+
+																+
===============================================================*/
void fb_1ms_inv0_wrctrl_init (void)
{
	/*=============================================================*/
	/* 					  角速度制御許可設定					   */
	/*=============================================================*/
	u1_flag_enable_inv0_wrctrl		= ((u1)(ENABLE_INV0_WRCTRL));
	/*=============================================================*/
	
	/*=============================================================*/
	/* 					  角速度リミット制御許可設定			   */
	/*=============================================================*/
	u1_flag_enable_inv0_wrlimitctrl		= ((u1)(ENABLE_INV0_WRLIMITCTRL));
	/*=============================================================*/

	/*=============================================================*/
	/* 					 速度/速度リミット指令値変数初期化		   */
	/*=============================================================*/
	f4_speed_inv0_ref				= ((f4)(SPEED_INV0_REF));

	f4_wr_inv0_ref					= ((f4)(0.));
	f4_dspeed_inv0_ref_up			= (f4)(DSPEED_INV0_REF_UP);
	f4_dwr_inv0_ref_up				= ((f4)(DSPEED_INV0_REF_UP / 60. * TWOPI * PF_INV0 * 0.001));
	
	u1_flag_wr_inv0_ref_check		= 0;
	
	f4_speed_inv0_limit_ref			= (f4)(SPEED_INV0_LIMIT_REF);
	f4_wr_inv0_limit_ref			= (f4)(0.0);
	/*=============================================================*/

	/*=============================================================*/
	/* 						速度制御変数初期化					   */
	/*=============================================================*/
	f4_kp_inv0_wrctrl				= ((f4)(KP_INV0_WRCTRL));
	f4_ki_inv0_wrctrl				= ((f4)(KI_INV0_WRCTRL));

	f4_wr_inv0_ctrlerr				= ((f4)(0.));

	f4_tq_inv0_wrctrlp				= ((f4)(0.));
	f4_tq_inv0_wrctrli				= ((f4)(0.));
	f4_tq_inv0_wrctrl				= ((f4)(0.));

	f4_iq_inv0_wrctrlp				= ((f4)(0.));
	f4_iq_inv0_wrctrli				= ((f4)(0.));
	f4_iq_inv0_wrctrl				= ((f4)(0.));
	/*=============================================================*/

	/*=============================================================*/
	/* 						速度リミット制御変数初期化			   */
	/*=============================================================*/
	f4_kp_inv0_wrlimitctrl				= ((f4)(KP_INV0_WRLIMITCTRL));
	f4_ki_inv0_wrlimitctrl				= ((f4)(KI_INV0_WRLIMITCTRL));

	f4_wr_inv0_limitctrlerr				= ((f4)(0.));

	f4_tq_inv0_wrlimitctrlp				= ((f4)(0.));
	f4_tq_inv0_wrlimitctrli				= ((f4)(0.));
	f4_tq_inv0_wrlimitctrl				= ((f4)(0.));
	f4_iq_inv0_wrlimitctrl				= ((f4)(0.));

	f4_idq_inv0_max					= ((f4)(IDQ_INV0_MAX));
	/*=============================================================*/

}
