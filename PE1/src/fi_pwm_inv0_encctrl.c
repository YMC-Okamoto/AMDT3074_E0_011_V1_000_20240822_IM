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
/* 				　エンコーダカウンタ&dq軸角度変数定義		   */
/*=============================================================*/
u2			u2_cnt_inv0_ecd_get;								/* エンコーダカウンタ取得値						*/

f4			f4_wt_inv0_dq;										/* Unit=rad:dq軸角度							*/
f4			f4_wt_inv0_dq_tmp;									/* Unit=rad:dq軸角度(オフセット無)				*/

f4			f4_sin_inv0_wtdq;									/* Unit=-:cos(wt_dq)							*/
f4			f4_cos_inv0_wtdq;									/* Unit=-:sin(wt_dq)							*/

u4			u4_flag_dir_inv0_enc;								/*　エンコーダカウント方向定義値				*/
/*=============================================================*/

/*=============================================================*/
/*             		     角速度PLL変数定義              	   */
/*=============================================================*/
f4			f4_wt_inv0_pll;										/* Unit=rad:dq軸PLL演算角度						*/
f4			f4_wt_inv0_pll_err;									/* Unit=rad:PLL角度誤差					 		*/

f4			f4_wr_inv0_pll_max;									/* Unit=-:PLL演算角速度上限値					*/
f4			f4_kp_inv0_wrpll;									/* Unit=-:PLL演算比例ゲイン						*/
f4			f4_ki_inv0_wrpll;									/* Unit=-:PLL演算積分ゲイン						*/

f4			f4_wr_inv0_enc_pllp;								/* Unit=rad/s:PLL演算角速度(比例項)				*/
f4			f4_wr_inv0_enc_plli;								/* Unit=rad/s:PLL演算角速度(積分項)				*/
f4			f4_wr_inv0_enc_pll;									/* Unit=rad/s:PLL演算角速度						*/

f4			f4_wr_inv0_pll;										/* Unit=rad/s:PLL演算角速度						*/

f4			f4_wclpf_inv0_wrpll;								/* Unit=rad/s:PLL演算角速度LPFカットオフ周波数	*/
f4			f4_wr_inv0_pll_lpf;									/* Unit=rad/s:PLL演算角速度LPF値				*/
f4			f4_wr_inv0_pll_lpf_abs;								/* Unit=rad/s:PLL演算角速度LPF絶対値			*/

f4			f4_speed_inv0_lpf;									/* Unit=rpm:モータ速度LPF値						*/
/*=============================================================*/

/*=============================================================*/
/* 			　		　一次周波数&すべり周波数変数定義		　 */
/*=============================================================*/
f4			f4_winv_inv0_ref;									/* Unit=rad/s:一次周波数指令値					*/
f4			f4_winv_inv0_ref_abs;								/* Unit=rad/s:一次周波数指令絶対値				*/
f4			f4_wsl_inv0_ref;									/* Unit=rad/s:すべり周波数指令値				*/
f4			f4_fsl_inv0_ref;									/* Unit=Hz:すべり周波数指令値					*/

f4			f4_wt_inv0_wsl_ref;									/* Unit=rad:すべり周波数指令値積分値			*/

f4			f4_wsl_inv0_ref_max;								/* Unit=rad/s:すべり角周波数指令最大値			*/
f4			f4_fsl_inv0_ref_max;								/* Unit=Hz:すべり周波数指令最大値				*/
/*=============================================================*/

/*=============================================================*/
/*				  			デバッグ用変数定義			　 	   */
/*=============================================================*/

/*=============================================================*/

/*=============================================================*/
/* 					関数のプロトタイプ宣言					   */
/*=============================================================*/
void 		fi_pwm_inv0_encctrl			(void);					/* キャリア割込みエンコーダ処理関数				*/
void 		fb_pwm_inv0_encctrl_init	(void);					/* キャリア割込みエンコーダ処理初期化関数		*/
/*=============================================================*/

/*===============================================================
+																+
+				Name:		void fi_pwm_inv0_encctrl (void)		+
+			Function:	キャリア割込みエンコーダ処理関数		+
+																+
+					1)		エンコーダカウンタ取得				+
+					2)		dq軸角度演算						+
+					3)		 角速度PLL演算						+
+																+
+		Return Value:		No									+
+				date:		 10th Mar,2017						+
+																+
===============================================================*/
void fi_pwm_inv0_encctrl (void)
{
	/*============================================================*/
	/*					   ローカル変数定義		　				  */
	/*============================================================*/
	f4		f4_temp_1, f4_temp_2;								/* テンポラリ変数(f4)							*/
	s4		s4_temp_1;											/* テンポラリ変数(s4)							*/
	u4		u4_temp_1;											/* テンポラリ変数(u4)							*/
	s2		s2_temp_1;											/* テンポラリ変数(s2)							*/
	/*============================================================*/

	/*============================================================*/
	/*				エンコーダカウンタ取得						　*/
	/*============================================================*/
	/* エンコーダカウンタ			*/

	u2_cnt_inv0_ecd_get				= u2_enca0_cnt_read(u4_flag_dir_inv0_enc);

#if USE_RDC_INV0 == 1
//レゾルバ使用時
		//1:1 12bit
	s4_temp_1						= (((s4)(u2_cnt_inv0_ecd_get))<<19);

#else /* USE_RDC_INV0 == 0 */
//エンコーダ使用時
	f4_temp_1						= ((f4)(u2_cnt_inv0_ecd_get)) * ((f4)(TWOPI/(f4)(CNT_ENC0_MAX+1))); /* floatにキャスト */
	s4_temp_1						= (s4)(f4_temp_1 * ((f4)(DEF_2_31 / TWOPI))); /* lsb:2pi/2^31 */
#endif /* USE_RDC_INV0 */

	s4_temp_1						&= 0x7FFFFFFF;				/* 2πリミット(0≦θ≦2π)						*/

	f4_wt_inv0_dq_tmp				= ((f4)(s4_temp_1)) * ((f4)(TWOPI/DEF_2_31));
																/* floatにキャスト								*/
	/*============================================================*/

	/*============================================================*/
	/*				           角速度PLL演算			　		  */
	/*============================================================*/
	/* 角度誤差演算				*/
	f4_wt_inv0_pll_err				= f4_wt_inv0_dq_tmp - f4_wt_inv0_pll;
																/* 角度誤差演算値								*/
																/* (0≦θ≦2π) = > (-π≦θ≦π)に変換			*/
	if(f4_wt_inv0_pll_err > f4_ONEPI)
	{
		f4_wt_inv0_pll_err			= f4_wt_inv0_pll_err - f4_TWOPI;
	}
	else if(f4_wt_inv0_pll_err < -f4_ONEPI)
	{
		f4_wt_inv0_pll_err			= f4_wt_inv0_pll_err + f4_TWOPI;
	}
	else{}

	/* 角速度PLL演算			*/
	f4_wr_inv0_enc_pllp					= f4_kp_inv0_wrpll * f4_wt_inv0_pll_err;
																/* 角速度PLL比例項								*/
	f4_wr_inv0_enc_plli					= f4_wr_inv0_enc_plli + (f4_ki_inv0_wrpll * f4_wt_inv0_pll_err * f4_ts_inv0_ctrl);
	f4_wr_inv0_enc_plli					= limit(f4_wr_inv0_enc_plli, f4_wr_inv0_pll_max, -f4_wr_inv0_pll_max);
																/* 角速度PLL積分項								*/
	f4_temp_1						= f4_wr_inv0_enc_pllp + f4_wr_inv0_enc_plli;
	f4_wr_inv0_enc_pll					= limit(f4_temp_1, f4_wr_inv0_pll_max, -f4_wr_inv0_pll_max);
																/* 角速度PLL出力								*/
	/* PLL角度演算				*/
	f4_wt_inv0_pll					= f4_wt_inv0_pll + (f4_wr_inv0_enc_pll * f4_ts_inv0_ctrl);
																/* (0≦θ≦2π) = > (-π≦θ≦π)に変換			*/
	if(f4_wt_inv0_pll > f4_ONEPI)		{f4_wt_inv0_pll	= f4_wt_inv0_pll - f4_TWOPI;}
	else if(f4_wt_inv0_pll < -f4_ONEPI)	{f4_wt_inv0_pll	= f4_wt_inv0_pll + f4_TWOPI;}
	else{}

	/* PLL角速度LPF演算			*/
	f4_wr_inv0_pll					= f4_wr_inv0_enc_pll * (f4)(MOT_INV0_REZO_POLE);
	f4_temp_1						= f4_wr_inv0_pll - f4_wr_inv0_pll_lpf;
	f4_wr_inv0_pll_lpf				= f4_wr_inv0_pll_lpf + (f4_wclpf_inv0_wrpll * f4_temp_1 * f4_ts_inv0_ctrl);

	f4_temp_1						= f4_wr_inv0_pll_lpf;
	if(f4_temp_1 < (f4)(0.0))
	{
		f4_temp_1						= -f4_temp_1;
	}
	else{}
	f4_wr_inv0_pll_lpf_abs			= f4_temp_1;

	f4_speed_inv0_lpf				= f4_wr_inv0_pll_lpf * ((f4)(60.0/f4_TWOPI)) * f4_dpf_inv0;
	/*============================================================*/

	/*============================================================*/
	/*					一次周波数&滑り周波数演算				　*/
	/*============================================================*/
	/* 滑り周波数指令値演算		*/
	if(0 == u1_flag_inv0_adj)									/* 通常モード									*/
	{
		if(f4_fd_inv0_ref > ((f4)(0.0)))
		{
			f4_wsl_inv0_ref				= ((f4_iq_inv0_ref) * f4_r2_inv0_cmp) / f4_fd_inv0_ref;
																/* 二次抵抗温度補正追加							*/
		}
		else{}
	}
	else
	{
		f4_wsl_inv0_ref		= (f4)(0.0);
	}
	f4_wsl_inv0_ref_max			= f4_fsl_inv0_ref_max * f4_TWOPI;
	f4_wsl_inv0_ref				= limit(f4_wsl_inv0_ref, f4_wsl_inv0_ref_max, -f4_wsl_inv0_ref_max);

	f4_fsl_inv0_ref		= f4_wsl_inv0_ref * f4_dTWOPI;

	f4_wt_inv0_wsl_ref					= f4_wt_inv0_wsl_ref + f4_wsl_inv0_ref * f4_ts_inv0_ctrl;

	if(f4_wt_inv0_wsl_ref > f4_TWOPI)
	{
		f4_temp_1					= f4_wt_inv0_wsl_ref * f4_dTWOPI;
		s4_temp_1					= (s4)f4_temp_1;
		f4_wt_inv0_wsl_ref				= f4_wt_inv0_wsl_ref - (f4)s4_temp_1 * f4_TWOPI;
	}
	else if(f4_wt_inv0_wsl_ref < ((f4)(0.)))
	{
		f4_temp_1					= f4_wt_inv0_wsl_ref * f4_dTWOPI;
		s4_temp_1					= (s4)f4_temp_1;
		f4_wt_inv0_wsl_ref				= f4_wt_inv0_wsl_ref - (f4)s4_temp_1 * f4_TWOPI;
	}
	else{}

	/* 一次周波数指令値演算		*/
	f4_winv_inv0_ref						= f4_wr_inv0_pll_lpf + f4_wsl_inv0_ref;
																/* 角速度検出+すべり周波数指令値				*/
																/* =>一次周波数									*/
	f4_temp_1						= f4_winv_inv0_ref;
	if(f4_temp_1 < (f4)(0.0))
	{
		f4_temp_1						= -f4_temp_1;
	}
	else{}
	f4_winv_inv0_ref_abs			= f4_temp_1;
	/*============================================================*/

	/*============================================================*/
	/*						dq軸角度演算						　*/
	/*============================================================*/
	/* dq軸角度					*/
	if(0 == u1_flag_inv0_adj)									/* パラメータ測定が無効							*/
	{
		f4_wt_inv0_dq		= f4_wt_inv0_dq + f4_winv_inv0_ref * f4_ts_inv0_ctrl;
	}
	else														/* パラメータ測定が有効							*/
	{
		if((7 != u1_flag_inv0_adj)&&(8 != u1_flag_inv0_adj)&&(9 != u1_flag_inv0_adj))
		{														/* インダクタンス測定(モータベンチ以外)			*/
			f4_wt_inv0_dq			= f4_wtdq_inv0_adj;			/* パラメータ測定用位相角設定					*/
		}
		else
		{
			f4_wt_inv0_dq		= f4_wt_inv0_dq + f4_winv_inv0_ref * f4_ts_inv0_ctrl;
		}
	}

	if(f4_wt_inv0_dq > f4_ONEPI)		{f4_wt_inv0_dq	= f4_wt_inv0_dq - f4_TWOPI;}
	else if(f4_wt_inv0_dq < -f4_ONEPI)	{f4_wt_inv0_dq	= f4_wt_inv0_dq + f4_TWOPI;}
	else{}														/* (0≦θ≦2π) = > (-π≦θ≦π)に変換			*/

	/* ab=>dq変換用変数			*/
	f4_sin_inv0_wtdq				= sinf(f4_wt_inv0_dq);
	f4_cos_inv0_wtdq				= cosf(f4_wt_inv0_dq);
	/*============================================================*/
}

/*===============================================================
+																+
+				Name:	void fb_pwm_inv0_encctrl_init (void)	+
+			Function:	キャリア割込みエンコーダ処理初期化関数	+
+																+
+		Return Value:		No									+
+				date:		 10th Mar,2017						+
+																+
===============================================================*/
void fb_pwm_inv0_encctrl_init (void)
{

	/*=============================================================*/
	/* 			　エンコーダカウンタ&dq軸角度変数初期化			   */
	/*=============================================================*/
	f4_wt_inv0_dq					= ((f4)(0.));
	f4_wt_inv0_dq_tmp				= ((f4)(0.));

	f4_sin_inv0_wtdq				= ((f4)(0.));
	f4_cos_inv0_wtdq				= ((f4)(0.));

	u4_flag_dir_inv0_enc			= ((u4)(DIR_INV0_ENC));
	/*=============================================================*/

	/*=============================================================*/
	/*             		     角速度PLL変数初期化              	   */
	/*=============================================================*/
	f4_wt_inv0_pll					= ((f4)(0.));
	f4_wt_inv0_pll_err				= ((f4)(0.));

	f4_wr_inv0_pll_max				= ((f4)(WR_INV0_PLL_MAX));
	f4_kp_inv0_wrpll				= ((f4)(KP_INV0_WRPLL));
	f4_ki_inv0_wrpll				= ((f4)(KI_INV0_WRPLL));

	f4_wr_inv0_enc_pllp				= ((f4)(0.));
	f4_wr_inv0_enc_plli				= ((f4)(0.));
	f4_wr_inv0_enc_pll				= ((f4)(0.));
	f4_wr_inv0_pll					= ((f4)(0.));

	f4_wclpf_inv0_wrpll				= ((f4)(WCLPF_INV0_WRPLL));
	f4_wr_inv0_pll_lpf				= ((f4)(0.));

	f4_speed_inv0_lpf				= ((f4)(0.));
	/*=============================================================*/
	
	/*=============================================================*/
	/* 			　　	一次周波数&すべり周波数変数初期化		　 */
	/*=============================================================*/
	f4_winv_inv0_ref					= ((f4)(0.));
	f4_winv_inv0_ref_abs				= ((f4)(0.));
	f4_wsl_inv0_ref						= ((f4)(0.));
	f4_fsl_inv0_ref						= ((f4)(0.));
	f4_wt_inv0_wsl_ref					= ((f4)(0.));
	
	f4_wsl_inv0_ref_max					= (f4)(0.0);
	f4_fsl_inv0_ref_max					= (f4)(FSL_INV0_REF_MAX);
	/*=============================================================*/

}






