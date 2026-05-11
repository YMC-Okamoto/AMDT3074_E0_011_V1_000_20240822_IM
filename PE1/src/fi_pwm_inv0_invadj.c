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
/* 					 	パラメータ測定変数定義				   */
/*=============================================================*/
u1			u1_flag_inv0_adj;									/* パラメータ測定モードフラグ					*/
																/* 0:測定禁止									*/
																/* 1:電圧制御誤差測定モード						*/
																/* 2:d軸インダクタンス測定モード				*/
																/* 3:q軸インダクタンス測定モード				*/
																/* 4:オープンループ駆動モード(ECDチェック用)	*/
																/* 5:エンコーダオフセット測定モード				*/
																/* 6:CVCF駆動モード(INVチェック用)				*/
																/* 7:d軸インダクタンス測定(モータベンチ)		*/
																/* 8:q軸インダクタンス測定(モータベンチ)		*/
																/* 9:エンコーダオフセット測定(モータベンチ)		*/
																/* 100:IM用電流制御モード						*/
																/* 101:IM用CV駆動モード							*/
/* 周波数設定値				*/
f4			f4_f_inv0_adj;										/* Unit=Hz:測定信号周波数						*/
f4			f4_f_inv0_adj_tmp;									/* Unit=Hz:測定信号周波数(テンポラリ)			*/
f4			f4_df_inv0_adj;										/* Unit=Hz:測定信号周波数変化率					*/

f4			f4_wr_inv0_adj;										/* Unit=rad/s:測定信号角速度					*/
f4			f4_wt_inv0_adj;										/* Unit=rad:測定信号位相角						*/

f4			f4_sin_inv0_wtadj;									/* lsb=1/2^31,Unit=-:sin(wt_adj)				*/
f4			f4_cos_inv0_wtadj;									/* lsb=1/2^31,Unit=-:cos(wt_adj)				*/

/* 指令値設定				*/
f4			f4_id_inv0_adj;										/* Unit=A:d軸測定電流指令値						*/
f4			f4_iq_inv0_adj;										/* Unit=A:d軸測定電流指令値						*/
f4			f4_id_inv0_dc_adj;									/* Unit=A:d軸測定電流指令値(直流分)				*/
f4			f4_id_inv0_ac_adj;									/* Unit=A:d軸測定電流指令値(交流分)				*/
f4			f4_iq_inv0_dc_adj;									/* Unit=A:q軸測定電流指令値(直流分)				*/
f4			f4_iq_inv0_ac_adj;									/* Unit=A:q軸測定電流指令値(交流分)				*/
f4			f4_id_inv0_dc_adj_tmp;								/* Unit=A:d軸測定電流指令値(直流分)(テンポラリ)	*/
f4			f4_id_inv0_ac_adj_tmp;								/* Unit=A:d軸測定電流指令値(交流分)(テンポラリ)	*/
f4			f4_iq_inv0_dc_adj_tmp;								/* Unit=A:q軸測定電流指令値(直流分)(テンポラリ)	*/
f4			f4_iq_inv0_ac_adj_tmp;								/* Unit=A:q軸測定電流指令値(交流分)(テンポラリ)	*/
f4			f4_didq_inv0_adj;									/* Unit=A:dq軸測定電流指令値変化率				*/

f4			f4_vd_inv0_adj_ref;									/* Unit=V:d軸CVCF電圧指令値						*/
f4			f4_vd_inv0_adj_ref_tmp;								/* Unit=V:d軸CVCF電圧指令値						*/
f4			f4_vq_inv0_adj_ref;									/* Unit=V:q軸CVCF電圧指令値						*/

f4			f4_dvd_inv0_adj_ref;								/* Unit=V:測定電圧指令値変化率					*/

f4			f4_wtdq_inv0_adj;									/* Unit=rad:unit=rad:測定dq軸位相角				*/

f4			f4_f_inv0_slip_ref;									/* Unit=Hz:滑り周波数							*/
f4			f4_f_inv0_slip_ref_diff;							/* Unit=Hz:滑り周波数差分						*/

/* 測定データ関連			*/
f4			f4_vd_inv0_adj_ad;									/* Unit=V:d軸電圧観測値							*/
f4			f4_vq_inv0_adj_ad;									/* Unit=V:d軸電圧観測値							*/

u1			u1_flag_inv0_vctrlerr_adj;							/* 電圧制御誤差確認フラグ						*/
f4			f4_vctrlerr_inv0_adj;								/* Unit=V:電圧制御誤差測定値					*/
f4			f4_rs_inv0_adj;										/* Unit=Ω:電圧制御誤差測定用抵抗値				*/

f4			f4_wt_inv0_offset_adj;								/* Unit=rad:エンコーダオフセット値				*/

/* エンコーダオフセット測定(モータベンチ)モード */
f4			f4_wt_inv0_dq_offset_err_adj;						/* Unit=rad:dq軸オフセット誤差測定値			*/
f4			f4_sin_inv0_wtdq_offset_adj;						/* Unit=-:sin									*/
f4			f4_cos_inv0_wtdq_offset_adj;						/* Unit=-:cos									*/
f4			f4_vd_inv0_wtdq_offset_adj;							/* Unit=V:エンコーダオフセット用d軸電圧測定値	*/
f4			f4_vq_inv0_wtdq_offset_adj;							/* Unit=V:エンコーダオフセット用q軸電圧測定値	*/
f4			f4_time_inv0_enc_delay_us_adj;						/* Unit=us:エンコーダ遅れ時間測定値				*/
f4			f4_ki_inv0_wtdq_offset_adj;							/* Unit=-:エンコーダオフセット測定用積分ゲイン	*/
/*=============================================================*/

/*=============================================================*/
/* 					パラメータ測定電圧補正値定義			   */
/*=============================================================*/
f4			f4_vd_inv0_plid;									/* Unit=V:d軸微分項(電圧補正値)					*/
f4			f4_vq_inv0_plid;									/* Unit=V:q軸微分項(電圧補正値)					*/

f4			f4_id_inv0_adj_lpf;									/* Unit=A:d軸測定電流指令値LPF					*/
f4			f4_iq_inv0_adj_lpf;									/* Unit=A:q軸測定電流指令値LPF					*/
f4			f4_vd_inv0_adj_ad_lpf;								/* Unit=V:d軸電圧観測値LPF						*/
f4			f4_vq_inv0_adj_ad_lpf;								/* Unit=V:q軸電圧観測値LPF						*/
f4			f4_wr_inv0_pll_lpf_adj_lpf;							/* Unit=rad/s:測定角速度検出値LPF				*/
f4			f4_id_inv0_ad_adj_lpf;								/* Unit=A:d軸測定電流検出値LPF					*/
f4			f4_iq_inv0_ad_adj_lpf;								/* Unit=A:q軸測定電流検出値LPF					*/
f4			f4_wclpf_inv0_adj;									/* Unit=rad/s:測定カットオフ周波数				*/
/*=============================================================*/

/*=============================================================*/
/* 					関数のプロトタイプ宣言					   */
/*=============================================================*/
void 		fi_pwm_inv0_invadj			(void);					/* キャリア割込みパラメータ測定関数				*/
void 		fb_pwm_inv0_invadj_init		(void);					/* キャリア割込みパラメータ測定初期化関数		*/
/*=============================================================*/

/*===============================================================
+																+
+				Name:		void fi_pwm_inv0_invadj (void)		+
+			Function:	キャリア割込みパラメータ測定関数		+
+																+
+					1)	電圧制御誤差測定モード					+
+					2)	d軸インダクタンス測定モード				+
+					3)	q軸インダクタンス測定モード				+
+					4)	オープンループ駆動モード(ECDチェック用)	+
+					5)	エンコーダオフセット測定モード			+
+					6)	CVCF駆動モード(INVチェック用)			+
+																+
+		Return Value:		No									+
+				date:		 10th Mar,2017						+
+																+
===============================================================*/
void fi_pwm_inv0_invadj (void)
{
	/*============================================================*/
	/*					   ローカル変数定義		  				  */
	/*============================================================*/
	f4		f4_temp_1, f4_temp_2;
	s4		s4_temp_1;
	/*============================================================*/

	/*============================================================*/
	/*				 		パラメータ測定モード処理			　*/
	/*============================================================*/
	if(0 != u1_flag_inv0_adj)									/* パラメータ測定モードが選択					*/
	{
		/*============================================================*/
		/*						パラメータ測定周波数設定			　*/
		/*============================================================*/
		if((u1_flag_inv0_adj == 100)||(u1_flag_inv0_adj == 101)) /* IMモード */
		{
			/* 測定信号周波数演算	*/
			f4_temp_1			= f4_speed_inv0_lpf * (f4)(1./60.) * f4_pf_inv0;
			
			f4_f_inv0_slip_ref		= f4_f_inv0_slip_ref + f4_f_inv0_slip_ref_diff;
			f4_f_inv0_slip_ref_diff			= (f4)(0.0);
			
			f4_f_inv0_adj		= f4_temp_1 + f4_f_inv0_slip_ref;
			
			if(0 != u1_pwm_inv0_status)								/* PWM出力状態									*/
			{
				/* 測定信号周波数演算	*/
				if(f4_f_inv0_adj > f4_f_inv0_adj_tmp)
				{
					f4_f_inv0_adj_tmp		= f4_f_inv0_adj_tmp + f4_df_inv0_adj;
					if(f4_f_inv0_adj_tmp > f4_f_inv0_adj)
					{
						f4_f_inv0_adj_tmp	= f4_f_inv0_adj;
					}
					else{}
				}
				else if(f4_f_inv0_adj < f4_f_inv0_adj_tmp)
				{
					f4_f_inv0_adj_tmp		= f4_f_inv0_adj_tmp - f4_df_inv0_adj;
					if(f4_f_inv0_adj_tmp < f4_f_inv0_adj)
					{
						f4_f_inv0_adj_tmp	= f4_f_inv0_adj;
					}
					else{}
				}
				else{}
			}
			else
			{
				f4_f_inv0_adj_tmp		= f4_f_inv0_adj;
			}
		}
		else
		{
			if(0 != u1_pwm_inv0_status)								/* PWM出力状態									*/
			{
				/* 測定信号周波数演算	*/
				if(f4_f_inv0_adj > f4_f_inv0_adj_tmp)
				{
					f4_f_inv0_adj_tmp		= f4_f_inv0_adj_tmp + f4_df_inv0_adj;
					if(f4_f_inv0_adj_tmp > f4_f_inv0_adj)
					{
						f4_f_inv0_adj_tmp	= f4_f_inv0_adj;
					}
					else{}
				}
				else if(f4_f_inv0_adj < f4_f_inv0_adj_tmp)
				{
					f4_f_inv0_adj_tmp		= f4_f_inv0_adj_tmp - f4_df_inv0_adj;
					if(f4_f_inv0_adj_tmp < f4_f_inv0_adj)
					{
						f4_f_inv0_adj_tmp	= f4_f_inv0_adj;
					}
					else{}
				}
				else{}
			}
			else
			{
				f4_f_inv0_adj_tmp		= ((f4)(0.));
			}
		}
		
		if(0 != u1_pwm_inv0_status)								/* PWM出力状態									*/
		{


			f4_wr_inv0_adj			= f4_TWOPI * f4_f_inv0_adj_tmp;

			/* 位相演算			*/
			f4_wt_inv0_adj			= f4_wt_inv0_adj + (f4_wr_inv0_adj * f4_ts_inv0_ctrl);
			if(f4_wt_inv0_adj > f4_TWOPI)						/* 2πリミット(0≦θ≦2π)						*/
			{
				f4_wt_inv0_adj		= f4_wt_inv0_adj - f4_TWOPI;
			}
			else if(f4_wt_inv0_adj < ((f4)(0.)))
			{
				f4_wt_inv0_adj		= f4_wt_inv0_adj + f4_TWOPI;
			}
			else{}

			/* 電流演算*/
			if(f4_id_inv0_dc_adj > f4_id_inv0_dc_adj_tmp)
			{
				f4_id_inv0_dc_adj_tmp		= f4_id_inv0_dc_adj_tmp + f4_didq_inv0_adj * f4_ts_inv0_ctrl;
				if(f4_id_inv0_dc_adj_tmp > f4_id_inv0_dc_adj)
				{
					f4_id_inv0_dc_adj_tmp	= f4_id_inv0_dc_adj;
				}
				else{}
			}
			else if(f4_id_inv0_dc_adj < f4_id_inv0_dc_adj_tmp)
			{
				f4_id_inv0_dc_adj_tmp		= f4_id_inv0_dc_adj_tmp - f4_didq_inv0_adj * f4_ts_inv0_ctrl;
				if(f4_id_inv0_dc_adj_tmp < f4_id_inv0_dc_adj)
				{
					f4_id_inv0_dc_adj_tmp	= f4_id_inv0_dc_adj;
				}
				else{}
			}
			else{}

			if(f4_id_inv0_ac_adj > f4_id_inv0_ac_adj_tmp)
			{
				f4_id_inv0_ac_adj_tmp		= f4_id_inv0_ac_adj_tmp + f4_didq_inv0_adj * f4_ts_inv0_ctrl;
				if(f4_id_inv0_ac_adj_tmp > f4_id_inv0_ac_adj)
				{
					f4_id_inv0_ac_adj_tmp	= f4_id_inv0_ac_adj;
				}
				else{}
			}
			else if(f4_id_inv0_ac_adj < f4_id_inv0_ac_adj_tmp)
			{
				f4_id_inv0_ac_adj_tmp		= f4_id_inv0_ac_adj_tmp - f4_didq_inv0_adj * f4_ts_inv0_ctrl;
				if(f4_id_inv0_ac_adj_tmp < f4_id_inv0_ac_adj)
				{
					f4_id_inv0_ac_adj_tmp	= f4_id_inv0_ac_adj;
				}
				else{}
			}
			else{}

			if(f4_iq_inv0_dc_adj > f4_iq_inv0_dc_adj_tmp)
			{
				f4_iq_inv0_dc_adj_tmp		= f4_iq_inv0_dc_adj_tmp + f4_didq_inv0_adj * f4_ts_inv0_ctrl;
				if(f4_iq_inv0_dc_adj_tmp > f4_iq_inv0_dc_adj)
				{
					f4_iq_inv0_dc_adj_tmp	= f4_iq_inv0_dc_adj;
				}
				else{}
			}
			else if(f4_iq_inv0_dc_adj < f4_iq_inv0_dc_adj_tmp)
			{
				f4_iq_inv0_dc_adj_tmp		= f4_iq_inv0_dc_adj_tmp - f4_didq_inv0_adj * f4_ts_inv0_ctrl;
				if(f4_iq_inv0_dc_adj_tmp < f4_iq_inv0_dc_adj)
				{
					f4_iq_inv0_dc_adj_tmp	= f4_iq_inv0_dc_adj;
				}
				else{}
			}
			else{}

			if(f4_iq_inv0_ac_adj > f4_iq_inv0_ac_adj_tmp)
			{
				f4_iq_inv0_ac_adj_tmp		= f4_iq_inv0_ac_adj_tmp + f4_didq_inv0_adj * f4_ts_inv0_ctrl;
				if(f4_iq_inv0_ac_adj_tmp > f4_iq_inv0_ac_adj)
				{
					f4_iq_inv0_ac_adj_tmp	= f4_iq_inv0_ac_adj;
				}
				else{}
			}
			else if(f4_iq_inv0_ac_adj < f4_iq_inv0_ac_adj_tmp)
			{
				f4_iq_inv0_ac_adj_tmp		= f4_iq_inv0_ac_adj_tmp - f4_didq_inv0_adj * f4_ts_inv0_ctrl;
				if(f4_iq_inv0_ac_adj_tmp < f4_iq_inv0_ac_adj)
				{
					f4_iq_inv0_ac_adj_tmp	= f4_iq_inv0_ac_adj;
				}
				else{}
			}
			else{}
			
			if(f4_vd_inv0_adj_ref > f4_vd_inv0_adj_ref_tmp)
			{
				f4_vd_inv0_adj_ref_tmp		= f4_vd_inv0_adj_ref_tmp + f4_dvd_inv0_adj_ref;
				if(f4_vd_inv0_adj_ref_tmp > f4_vd_inv0_adj_ref)
				{
					f4_vd_inv0_adj_ref_tmp	= f4_vd_inv0_adj_ref;
				}
				else{}
			}
			else if(f4_vd_inv0_adj_ref < f4_vd_inv0_adj_ref_tmp)
			{
				f4_vd_inv0_adj_ref_tmp		= f4_vd_inv0_adj_ref_tmp - f4_dvd_inv0_adj_ref;
				if(f4_vd_inv0_adj_ref_tmp < f4_vd_inv0_adj_ref)
				{
					f4_vd_inv0_adj_ref_tmp	= f4_vd_inv0_adj_ref;
				}
				else{}
			}
			else{}
		}
		else													/* PWM停止状態									*/
		{
			f4_wt_inv0_adj			= ((f4)(0.));

			f4_id_inv0_dc_adj_tmp	= ((f4)(0.));
			f4_id_inv0_ac_adj_tmp	= ((f4)(0.));
			f4_iq_inv0_dc_adj_tmp	= ((f4)(0.));
			f4_iq_inv0_ac_adj_tmp	= ((f4)(0.));
			f4_vd_inv0_adj_ref_tmp	= (f4)(0.);
		}

		/* sin/cos演算				*/
		f4_sin_inv0_wtadj			= sinf(f4_wt_inv0_adj);
		f4_cos_inv0_wtadj			= cosf(f4_wt_inv0_adj);
		/*============================================================*/

		/*============================================================*/
		/*				 測定モード別指令値/測定値設定				　*/
		/*============================================================*/
		switch(u1_flag_inv0_adj)
		{
			/*============================================================*/
			/*						 電圧制御誤差測定モード				　*/
			/*============================================================*/
			case 1:

				/* 指令値設定		*/
				f4_id_inv0_adj			= f4_id_inv0_dc_adj + f4_id_inv0_ac_adj * f4_sin_inv0_wtadj;
																/* d軸測定電流									*/
				f4_iq_inv0_adj			= ((f4)(0.));			/* q軸測定電流									*/

				f4_wtdq_inv0_adj		= ((f4)(TWOPI*(90./360.0)));
																/* pi/2に指定									*/

				/* 測定値設定		*/
				f4_vctrlerr_inv0_adj	= f4_vd_inv0_ctrl;
																/* 電圧制御誤差測定値							*/

			break;
			/*============================================================*/

			/*============================================================*/
			/*						d軸インダクタンス測定モード			　*/
			/*============================================================*/
			case 2:

				/* 指令値設定		*/
				f4_id_inv0_adj			= f4_id_inv0_dc_adj + f4_id_inv0_ac_adj * f4_sin_inv0_wtadj;
																/* d軸測定電流									*/
				f4_iq_inv0_adj			= ((f4)(0.));			/* q軸測定電流									*/

				f4_wtdq_inv0_adj		= ((f4)(0.));			/* "0"に指定									*/

				/* 測定値設定		*/
				f4_vd_inv0_adj_ad		= f4_vd_inv0_ref;		/* インダクタンス算出用d軸電圧					*/
				f4_vq_inv0_adj_ad		= f4_vq_inv0_ref;		/* インダクタンス算出用q軸電圧					*/

				/* dq軸電圧微分項演算	*/
				f4_vd_inv0_plid			= f4_wr_inv0_adj * f4_ls_inv0 * f4_id_inv0_ac_adj * f4_cos_inv0_wtadj;
																/* wLdidcoswtを演算(電圧微分項)					*/
				f4_vq_inv0_plid			= ((f4)(0.));

			break;
			/*============================================================*/

			/*============================================================*/
			/*						q軸インダクタンス測定モード			　*/
			/*============================================================*/
			case 3:

				/* 指令値設定		*/
				f4_id_inv0_adj			= f4_id_inv0_dc_adj;	/* d軸測定電流									*/
				f4_iq_inv0_adj			= f4_iq_inv0_ac_adj * f4_sin_inv0_wtadj;
																/* q軸測定電流									*/

				f4_wtdq_inv0_adj		= ((f4)(0.));			/* "0"に指定									*/

				/* 測定値設定		*/
				f4_vd_inv0_adj_ad		= f4_vd_inv0_ref;		/* インダクタンス算出用d軸電圧					*/
				f4_vq_inv0_adj_ad		= f4_vq_inv0_ref;		/* インダクタンス算出用q軸電圧					*/

				/* dq軸電圧微分項演算	*/
				f4_vd_inv0_plid			= ((f4)(0.));

				f4_vq_inv0_plid			= f4_wr_inv0_adj * f4_ls_inv0 * f4_iq_inv0_ac_adj * f4_cos_inv0_wtadj;
																/* wLdiqcoswtを演算(電圧微分項)					*/

			break;
			/*============================================================*/

			/*============================================================*/
			/*				オープンループ駆動モード(ECDチェック用)		　*/
			/*============================================================*/
			case 4:

				/* 指令値設定		*/
				f4_id_inv0_adj			= f4_id_inv0_dc_adj_tmp;	/* d軸測定電流									*/
				f4_iq_inv0_adj			= f4_iq_inv0_dc_adj_tmp;	/* q軸測定電流									*/

				f4_wtdq_inv0_adj		= f4_wt_inv0_adj;		/* dq軸角度指定									*/
			break;
			/*============================================================*/

			/*============================================================*/
			/*				エンコーダオフセット測定モード				　*/
			/*============================================================*/
			case 5:

				/* 指令値設定		*/
				f4_id_inv0_adj			= f4_id_inv0_dc_adj;
																/* d軸測定電流									*/
				f4_iq_inv0_adj			= ((f4)(0.));			/* q軸測定電流									*/

				f4_wtdq_inv0_adj		= ((f4)(0.));			/* dq軸角度指定=>回転子をd軸に固定				*/

				/* 測定値設定		*/
				f4_wt_inv0_offset_adj	= f4_wt_inv0_dq_tmp;	/* エンコーダオフセット計測値					*/

			break;
			/*============================================================*/

			/*============================================================*/
			/*					　CVCF駆動モード(INVチェック用)			　*/
			/*============================================================*/
			case 6:

				/* 指令値設定		*/
				f4_id_inv0_adj			= ((f4)(0.));			/* 電流指令値は設定不要							*/
				f4_iq_inv0_adj			= ((f4)(0.));

				f4_wtdq_inv0_adj		= f4_wt_inv0_adj;		/* dq軸角度指定									*/
			break;
			/*============================================================*/

			/*============================================================*/
			/*			d軸インダクタンス測定(モータベンチ)モード		　*/
			/*============================================================*/
			case 7:

				/* 指令値設定		*/
				f4_id_inv0_adj			= f4_id_inv0_dc_adj_tmp + f4_id_inv0_ac_adj_tmp * f4_sin_inv0_wtadj;
																/* d軸測定電流									*/
				f4_iq_inv0_adj			= f4_iq_inv0_dc_adj_tmp;	/* q軸測定電流									*/

				f4_wtdq_inv0_adj		= ((f4)(0.));			/* "0"に指定									*/

				/* 測定値設定		*/
				f4_vd_inv0_adj_ad		= f4_vd_inv0_ctrl;		/* インダクタンス算出用d軸電圧					*/
				f4_vq_inv0_adj_ad		= f4_vq_inv0_ctrl;		/* インダクタンス算出用q軸電圧					*/

			break;
			/*============================================================*/

			/*============================================================*/
			/*			q軸インダクタンス測定(モータベンチ)モード		　*/
			/*============================================================*/
			case 8:

				/* 指令値設定		*/
				f4_id_inv0_adj			= f4_id_inv0_dc_adj_tmp;
																/* d軸測定電流									*/
				f4_iq_inv0_adj			= f4_iq_inv0_dc_adj_tmp + f4_iq_inv0_ac_adj_tmp * f4_sin_inv0_wtadj;
																/* q軸測定電流									*/

				f4_wtdq_inv0_adj		= ((f4)(0.));			/* "0"に指定									*/

				/* 測定値設定		*/
				f4_vd_inv0_adj_ad		= f4_vd_inv0_ctrl;		/* インダクタンス算出用d軸電圧					*/
				f4_vq_inv0_adj_ad		= f4_vq_inv0_ctrl;		/* インダクタンス算出用q軸電圧					*/

			break;
			/*============================================================*/

			/*============================================================*/
			/*			エンコーダオフセット測定(モータベンチ)モード	　*/
			/*============================================================*/
			case 9:

				/* 指令値設定		*/
				f4_id_inv0_adj			= (f4)(0.0);			/* d軸測定電流									*/
				f4_iq_inv0_adj			= (f4)(0.0);			/* q軸測定電流									*/

				f4_wtdq_inv0_adj		= ((f4)(0.));			/* "0"に指定									*/

				/* 測定値設定		*/
				f4_vd_inv0_adj_ad		= f4_vd_inv0_ref;		/* インダクタンス算出用d軸電圧					*/
				f4_vq_inv0_adj_ad		= f4_vq_inv0_ref;		/* インダクタンス算出用q軸電圧					*/

				/* 変換用変数			*/
				f4_sin_inv0_wtdq_offset_adj			= sinf(f4_wt_inv0_dq_offset_err_adj);
				f4_cos_inv0_wtdq_offset_adj			= cosf(f4_wt_inv0_dq_offset_err_adj);

				f4_vd_inv0_wtdq_offset_adj			= f4_vd_inv0_adj_ad_lpf * f4_cos_inv0_wtdq_offset_adj + f4_vq_inv0_adj_ad_lpf * f4_sin_inv0_wtdq_offset_adj;
				f4_vq_inv0_wtdq_offset_adj			= -f4_vd_inv0_adj_ad_lpf * f4_sin_inv0_wtdq_offset_adj + f4_vq_inv0_adj_ad_lpf * f4_cos_inv0_wtdq_offset_adj;

				if(u1_pwm_inv0_status != 0)	/* PWM出力状態 */
				{
					if(f4_wr_inv0_pll_lpf_adj_lpf < (f4)(0.0))
					{
						f4_wt_inv0_dq_offset_err_adj		= f4_wt_inv0_dq_offset_err_adj + f4_vd_inv0_wtdq_offset_adj * f4_ki_inv0_wtdq_offset_adj * f4_ts_inv0_ctrl;
					}
					else
					{
						f4_wt_inv0_dq_offset_err_adj		= f4_wt_inv0_dq_offset_err_adj - f4_vd_inv0_wtdq_offset_adj * f4_ki_inv0_wtdq_offset_adj * f4_ts_inv0_ctrl;
					}

					f4_temp_1		= f4_wr_inv0_pll_lpf_adj_lpf;
					if(f4_temp_1 < (f4)(0.0))
					{
						f4_temp_1			= -f4_temp_1;
					}
					else{}
					if(f4_temp_1 > (f4)(10.0))		/* ゼロ割り防止*/
					{
						f4_temp_2						= f4_wt_inv0_dq_offset_err_adj / f4_wr_inv0_pll_lpf_adj_lpf * (f4)(1000.0) * (f4)(1000.0);
					}
					else
					{
						f4_temp_2						= (f4)(0.0);
					}
					f4_temp_2						= f4_temp_2 - f4_time_inv0_enc_delay_us_adj;
					f4_time_inv0_enc_delay_us_adj	= f4_time_inv0_enc_delay_us_adj + (f4_wclpf_inv0_adj * f4_temp_2 * f4_ts_inv0_ctrl);
				}
				else{}

			break;
			/*============================================================*/

			/*============================================================*/
			/*						IM電流制御モード					　*/
			/*============================================================*/
			case 100:

				/* 指令値設定		*/
				f4_id_inv0_adj			= f4_id_inv0_dc_adj_tmp;			/* d軸測定電流									*/
				f4_iq_inv0_adj			= f4_iq_inv0_dc_adj;				/* q軸測定電流									*/

				f4_wtdq_inv0_adj			= f4_wt_inv0_adj;				/* dq軸角度指定									*/

			break;
			/*============================================================*/

			/*============================================================*/
			/*						IM用CV駆動モード					　*/
			/*============================================================*/
			case 101:
				/* 指令値設定		*/
				f4_id_inv0_adj			= ((f4)(0.));			/* 電流指令値は設定不要							*/
				f4_iq_inv0_adj			= ((f4)(0.));

				f4_wtdq_inv0_adj		= f4_wt_inv0_adj;		/* dq軸角度指定									*/
			break;
			/*============================================================*/

			default:
			break;
		}
		/*============================================================*/

		if(0 != u1_pwm_inv0_status)								/* PWM出力状態									*/
		{
			/* 測定用LPF演算				*/

			/* d軸電流指令値測定用LPF		*/
			f4_temp_1						= f4_id_inv0_ref - f4_id_inv0_adj_lpf;
			f4_id_inv0_adj_lpf				= f4_id_inv0_adj_lpf + (f4_wclpf_inv0_adj * f4_temp_1 * f4_ts_inv0_ctrl);

			/* q軸電流指令値測定用LPF		*/
			f4_temp_1						= f4_iq_inv0_ref - f4_iq_inv0_adj_lpf;
			f4_iq_inv0_adj_lpf				= f4_iq_inv0_adj_lpf + (f4_wclpf_inv0_adj * f4_temp_1 * f4_ts_inv0_ctrl);

			/* d軸電圧値測定用LPF			*/
			f4_temp_1						= f4_vd_inv0_adj_ad - f4_vd_inv0_adj_ad_lpf;
			f4_vd_inv0_adj_ad_lpf			= f4_vd_inv0_adj_ad_lpf + (f4_wclpf_inv0_adj * f4_temp_1 * f4_ts_inv0_ctrl);

			/* q軸電圧値測定用LPF			*/
			f4_temp_1						= f4_vq_inv0_adj_ad - f4_vq_inv0_adj_ad_lpf;
			f4_vq_inv0_adj_ad_lpf			= f4_vq_inv0_adj_ad_lpf + (f4_wclpf_inv0_adj * f4_temp_1 * f4_ts_inv0_ctrl);

			/* 角速度測定用LPF				*/
			f4_temp_1						= f4_wr_inv0_pll_lpf - f4_wr_inv0_pll_lpf_adj_lpf;
			f4_wr_inv0_pll_lpf_adj_lpf		= f4_wr_inv0_pll_lpf_adj_lpf + (f4_wclpf_inv0_adj * f4_temp_1 * f4_ts_inv0_ctrl);

			/* d軸電流検出値測定用LPF		*/
			f4_temp_1						= f4_id_inv0_ad - f4_id_inv0_ad_adj_lpf;
			f4_id_inv0_ad_adj_lpf			= f4_id_inv0_ad_adj_lpf + (f4_wclpf_inv0_adj * f4_temp_1 * f4_ts_inv0_ctrl);

			/* q軸電流検出値測定用LPF		*/
			f4_temp_1						= f4_iq_inv0_ad - f4_iq_inv0_ad_adj_lpf;
			f4_iq_inv0_ad_adj_lpf			= f4_iq_inv0_ad_adj_lpf + (f4_wclpf_inv0_adj * f4_temp_1 * f4_ts_inv0_ctrl);

		}
		else
		{
			f4_id_inv0_adj_lpf					= (f4)(0.);
			f4_iq_inv0_adj_lpf					= (f4)(0.);
			f4_vd_inv0_adj_ad_lpf				= (f4)(0.);
			f4_vq_inv0_adj_ad_lpf				= (f4)(0.);
			f4_wr_inv0_pll_lpf_adj_lpf			= (f4)(0.);
			f4_id_inv0_ad_adj_lpf				= (f4)(0.);
			f4_iq_inv0_ad_adj_lpf				= (f4)(0.);
		}
	}
	else
	{
		if(0 != u1_pwm_inv0_status)								/* PWM出力状態									*/
		{
			/* d軸電流検出値測定用LPF		*/
			f4_temp_1						= f4_id_inv0_ad - f4_id_inv0_ad_adj_lpf;
			f4_id_inv0_ad_adj_lpf			= f4_id_inv0_ad_adj_lpf + (f4_wclpf_inv0_adj * f4_temp_1 * f4_ts_inv0_ctrl);

			/* q軸電流検出値測定用LPF		*/
			f4_temp_1						= f4_iq_inv0_ad - f4_iq_inv0_ad_adj_lpf;
			f4_iq_inv0_ad_adj_lpf			= f4_iq_inv0_ad_adj_lpf + (f4_wclpf_inv0_adj * f4_temp_1 * f4_ts_inv0_ctrl);
		}
		else
		{
			f4_id_inv0_ad_adj_lpf				= (f4)(0.);
			f4_iq_inv0_ad_adj_lpf				= (f4)(0.);
		}
	}
	/*============================================================*/
}

/*===============================================================
+																+
+				Name:	void fb_pwm_inv0_invadj_init (void)		+
+			Function:	キャリア割込みパラメータ測定初期化関数	+
+																+
+		Return Value:		No									+
+				date:		 10th Mar,2017						+
+																+
===============================================================*/
void fb_pwm_inv0_invadj_init (void)
{

	/*=============================================================*/
	/* 					 パラメータ測定変数初期化				   */
	/*=============================================================*/
	u1_flag_inv0_adj				= 0;

	/* 周波数設定値				*/
	f4_f_inv0_adj					= ((f4)(0.));
	f4_f_inv0_adj_tmp				= ((f4)(0.));
	f4_df_inv0_adj					= ((f4)(50./(f4_fs_inv0_ctrl)));

	f4_wr_inv0_adj					= ((f4)(0.));
	f4_wt_inv0_adj					= ((f4)(0.));

	f4_sin_inv0_wtadj				= ((f4)(0.));
	f4_cos_inv0_wtadj				= ((f4)(0.));

	/* 指令値設定				*/
	f4_id_inv0_adj					= ((f4)(0.));
	f4_iq_inv0_adj					= ((f4)(0.));
	f4_id_inv0_dc_adj				= ((f4)(0.));
	f4_id_inv0_ac_adj				= ((f4)(0.));
	f4_iq_inv0_dc_adj				= ((f4)(0.));
	f4_iq_inv0_ac_adj				= ((f4)(0.));
	f4_id_inv0_dc_adj_tmp			= ((f4)(0.));
	f4_id_inv0_ac_adj_tmp			= ((f4)(0.));
	f4_iq_inv0_dc_adj_tmp			= ((f4)(0.));
	f4_iq_inv0_ac_adj_tmp			= ((f4)(0.));
	f4_didq_inv0_adj				= (f4)(IDQ_INV0_MAX)/(f4)(1.0);
	f4_vd_inv0_adj_ref				= ((f4)(0.));
	f4_vd_inv0_adj_ref_tmp			= ((f4)(0.));
	f4_vq_inv0_adj_ref				= ((f4)(0.));

	f4_dvd_inv0_adj_ref				= ((f4)(25.0/ f4_fs_inv0_ctrl));

	f4_wtdq_inv0_adj				= ((f4)(0.));
	f4_f_inv0_slip_ref				= ((f4)(0.));
	f4_f_inv0_slip_ref_diff			= ((f4)(0.));

	/* 測定データ関連			*/
	f4_vd_inv0_adj_ad				= ((f4)(0.));
	f4_vq_inv0_adj_ad				= ((f4)(0.));

	u1_flag_inv0_vctrlerr_adj		= 0;

	f4_vctrlerr_inv0_adj			= ((f4)(0.));
	f4_rs_inv0_adj					= ((f4)(R1_INV0));

	f4_wt_inv0_offset_adj			= ((f4)(0.));

	f4_wt_inv0_dq_offset_err_adj		= ((f4)(0.));
	f4_sin_inv0_wtdq_offset_adj		= ((f4)(0.));
	f4_cos_inv0_wtdq_offset_adj		= ((f4)(0.));
	f4_vd_inv0_wtdq_offset_adj		= ((f4)(0.));
	f4_vq_inv0_wtdq_offset_adj		= ((f4)(0.));
	f4_time_inv0_enc_delay_us_adj	= ((f4)(0.));
	f4_ki_inv0_wtdq_offset_adj		= (f4)(0.01);
	/*=============================================================*/

	/*=============================================================*/
	/* 					パラメータ測定電圧補正値初期化			   */
	/*=============================================================*/
	f4_vd_inv0_plid					= ((f4)(0.));
	f4_vq_inv0_plid					= ((f4)(0.));

	f4_wclpf_inv0_adj				= (f4)(WCLPF_INV0_ADJ);

	f4_id_inv0_adj_lpf				= (f4)(0.);
	f4_iq_inv0_adj_lpf				= (f4)(0.);
	f4_vd_inv0_adj_ad_lpf			= (f4)(0.);
	f4_vq_inv0_adj_ad_lpf			= (f4)(0.);
	f4_wr_inv0_pll_lpf_adj_lpf		= (f4)(0.);
	f4_id_inv0_ad_adj_lpf			= (f4)(0.);
	f4_iq_inv0_ad_adj_lpf			= (f4)(0.);
	/*=============================================================*/

}




