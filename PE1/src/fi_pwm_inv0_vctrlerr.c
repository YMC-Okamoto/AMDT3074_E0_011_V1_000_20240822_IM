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
/* 						電圧制御誤差補償変数定義			   */
/*=============================================================*/
f4			f4_v_vctrlerr_inv0_max;								/* Unit=V:電圧制御誤差飽和電圧					*/
f4			f4_i_vctrlerr_inv0_max;								/* Unit=A:電圧制御誤差飽和電流					*/

f4			f4_dfc_inv0_vctrl;									/* Unit=V:電圧制御誤差測定PWM周波数(1/FC)		*/
f4			f4_k_dfc_inv0_vctrl;								/* Unit=-:PWM変動率補償ゲイン					*/

f4			f4_dvdc_inv0_vctrl;									/* Unit=V:電圧制御誤差測定電圧(1/測定電圧)		*/
f4			f4_k_dvdc_inv0_vctrl;								/* Unit=-:電圧変動率補償ゲイン					*/

f4			f4_vuctrl_inv0_err;									/* Unit=V:U相電圧制御誤差補償値					*/
f4			f4_vvctrl_inv0_err;									/* Unit=V:V相電圧制御誤差補償値					*/
f4			f4_vwctrl_inv0_err;									/* Unit=V:W相電圧制御誤差補償値					*/
/*=============================================================*/

/*=============================================================*/
/*				  			デバッグ用変数定義			　 	   */
/*=============================================================*/

/*=============================================================*/

/*=============================================================*/
/* 					関数のプロトタイプ宣言					   */
/*=============================================================*/
void 		fi_pwm_inv0_vctrlerr 		(void);					/* キャリア割込み電圧制御誤差補償関数			*/
void 		fb_pwm_inv0_vctrlerr_init	(void);					/* キャリア割込み電圧制御誤差補償初期化関数		*/
/*=============================================================*/

/*===============================================================
+																+
+				Name:		void fi_pwm_inv0_vctrlerr (void)	+
+			Function:	キャリア割込み電圧制御誤差補償関数		+
+																+
+		Return Value:		No									+
+				date:		 10th Mar,2017						+
+																+
===============================================================*/
void fi_pwm_inv0_vctrlerr (void)
{
	/*============================================================*/
	/*					   ローカル変数定義		　				  */
	/*============================================================*/
	f4		f4_temp_1, f4_temp_2;								/* テンポラリ変数(f4)							*/
	/*============================================================*/

	/*============================================================*/
	/*					   電圧制御誤差補償演算					　*/
	/*============================================================*/
	{
		f4		t_f4_ia_inv0_ref;								/* Unit=A:a相電流指令値							*/
		f4		t_f4_ib_inv0_ref;								/* Unit=A:b相電流指令値							*/

		f4		t_f4_iu_inv0_ref;								/* Unit=A:U相電流指令値							*/
		f4		t_f4_iv_inv0_ref;								/* Unit=A:V相電流指令値							*/
		f4		t_f4_iw_inv0_ref;								/* Unit=A:W相電流指令値							*/

		f4		t_f4_vuctrl_inv0_err;							/* Unit=V:U相電圧制御誤差補償値					*/
		f4		t_f4_vvctrl_inv0_err;							/* Unit=V:V相電圧制御誤差補償値					*/
		f4		t_f4_vwctrl_inv0_err;							/* Unit=V:W相電圧制御誤差補償値					*/

		/* dq=>ab変換				*/
		t_f4_ia_inv0_ref			= (f4_cos_inv0_wtsvctrl * f4_id_inv0_ref) - (f4_sin_inv0_wtsvctrl * f4_iq_inv0_ref);
																/* a相電流指令値に変換							*/
		t_f4_ib_inv0_ref			= (f4_sin_inv0_wtsvctrl * f4_id_inv0_ref) + (f4_cos_inv0_wtsvctrl * f4_iq_inv0_ref);
																/* b相電流指令値に変換							*/
 		/* ab=>uvw変換				*/
		t_f4_iu_inv0_ref			= (t_f4_ia_inv0_ref * ((f4)(0.816496581)));
																/* U相電流指令値に変換							*/
		t_f4_iv_inv0_ref			= (t_f4_ia_inv0_ref * ((f4)(-0.40824829))) + (t_f4_ib_inv0_ref * ((f4)(0.70710678)));
																/* V相電流指令値に変換							*/
		t_f4_iw_inv0_ref			= (t_f4_ia_inv0_ref * ((f4)(-0.40824829))) - (t_f4_ib_inv0_ref * ((f4)(0.70710678)));
																/* W相電流指令値に変換							*/
		/* PWM変動補償率			*/
		f4_k_dfc_inv0_vctrl			= f4_dfc_inv0_vctrl * ((f4)(u4_fc_inv0_lsb_0));
																/* テーブル測定時とのPWM変動率を補償			*/
		/* 電圧変動補償率			*/
		f4_k_dvdc_inv0_vctrl		= f4_vdc_inv0_ad * f4_dvdc_inv0_vctrl;
																/* テーブル測定時との電圧変動率を補償			*/

		/* U相補償電圧				*/
		fi_pwm_vctrlerrtbl(t_f4_iu_inv0_ref, f4_v_vctrlerr_inv0_max, f4_i_vctrlerr_inv0_max, &f4_temp_1);
		f4_temp_2					= f4_temp_1 * f4_k_dvdc_inv0_vctrl;
																/* 電圧変動率補償								*/
		t_f4_vuctrl_inv0_err		= f4_temp_2 * f4_k_dfc_inv0_vctrl;
																/* キャリア周波数比補償							*/

		/* V相補償電圧				*/
		fi_pwm_vctrlerrtbl(t_f4_iv_inv0_ref, f4_v_vctrlerr_inv0_max, f4_i_vctrlerr_inv0_max, &f4_temp_1);
		f4_temp_2					= f4_temp_1 * f4_k_dvdc_inv0_vctrl;
																/* 電圧変動率補償								*/
		t_f4_vvctrl_inv0_err		= f4_temp_2 * f4_k_dfc_inv0_vctrl;
																/* キャリア周波数比補償							*/

		/* W相補償電圧				*/
		fi_pwm_vctrlerrtbl(t_f4_iw_inv0_ref, f4_v_vctrlerr_inv0_max, f4_i_vctrlerr_inv0_max, &f4_temp_1);
		f4_temp_2					= f4_temp_1 * f4_k_dvdc_inv0_vctrl;
																/* 電圧変動率補償								*/
		t_f4_vwctrl_inv0_err		= f4_temp_2 * f4_k_dfc_inv0_vctrl;
																/* キャリア周波数比補償							*/

		/* 中性点電圧演算			*/
		f4_temp_1					= (t_f4_vuctrl_inv0_err + t_f4_vvctrl_inv0_err + t_f4_vwctrl_inv0_err) * ((f4)(0.333333333));
		t_f4_vuctrl_inv0_err		= t_f4_vuctrl_inv0_err - f4_temp_1;
		t_f4_vvctrl_inv0_err		= t_f4_vvctrl_inv0_err - f4_temp_1;
		t_f4_vwctrl_inv0_err		= t_f4_vwctrl_inv0_err - f4_temp_1;


		/* 電圧制御誤差設定	*/
		if((1 != u1_flag_inv0_adj)&&(6 != u1_flag_inv0_adj))	/* 電圧制御誤差測定およびCVCF制御以外			*/
		{
			f4_vuctrl_inv0_err		= t_f4_vuctrl_inv0_err;
			f4_vvctrl_inv0_err		= t_f4_vvctrl_inv0_err;
			f4_vwctrl_inv0_err		= t_f4_vwctrl_inv0_err;
		}
		else
		{
			if(1 == u1_flag_inv0_vctrlerr_adj)					/* 電圧制御誤差確認設定							*/
			{
				f4_vuctrl_inv0_err	= t_f4_vuctrl_inv0_err;		/* 補償値を設定して効果を確認					*/
				f4_vvctrl_inv0_err	= t_f4_vvctrl_inv0_err;
				f4_vwctrl_inv0_err	= t_f4_vwctrl_inv0_err;
			}
			else												/* 電圧制御誤差測定中およびCVCFでは補償しない	*/
			{
				f4_vuctrl_inv0_err	= ((f4)(0.));				/* 測定モードでは補償しない						*/
				f4_vvctrl_inv0_err	= ((f4)(0.));
				f4_vwctrl_inv0_err	= ((f4)(0.));
			}
		}
	}
	/*============================================================*/

}

/*===============================================================
+																+
+				Name:	void fb_pwm_inv0_vctrlerr_init (void)	+
+			Function:キャリア割込み電圧制御誤差補償初期化関数	+
+																+
+		Return Value:		No									+
+				date:		 10th Mar,2017						+
+																+
===============================================================*/
void fb_pwm_inv0_vctrlerr_init (void)
{

	/*=============================================================*/
	/* 						電圧制御誤差補償変数初期化			   */
	/*=============================================================*/
	f4_v_vctrlerr_inv0_max			= ((f4)(V_VCTRLERR_INV0_MAX));
	f4_i_vctrlerr_inv0_max			= ((f4)(I_VCTRLERR_INV0_MAX));

	f4_dfc_inv0_vctrl				= ((f4)(1.0/FC_INV0_VCTRLERR));
	f4_k_dfc_inv0_vctrl				= ((f4)(0.));

	f4_dvdc_inv0_vctrl				= ((f4)(1.0/VDC_INV0_VCTRLERR));
	f4_k_dvdc_inv0_vctrl			= ((f4)(0.));

	f4_vuctrl_inv0_err				= ((f4)(0.));
	f4_vvctrl_inv0_err				= ((f4)(0.));
	f4_vwctrl_inv0_err				= ((f4)(0.));
	/*=============================================================*/

}






