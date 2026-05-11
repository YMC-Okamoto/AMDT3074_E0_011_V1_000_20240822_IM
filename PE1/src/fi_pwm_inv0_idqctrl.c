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
/* 						モータパラメータ定義 				   */
/*=============================================================*/
f4			f4_pf_inv0;											/* Unit=-:極対数								*/
f4			f4_dpf_inv0;										/* Unit=-:1.0/極対数							*/

f4			f4_r1_inv0;											/* Unit=Ω:一次抵抗(ノミナル値)					*/
f4			f4_r2_inv0;											/* Unit=Ω:二次抵抗(ノミナル値)					*/
f4			f4_lm_inv0;											/* Unit=H:励磁インダクタンス					*/
f4			f4_lm_inv0_const;									/* Unit=H:励磁インダクタンス定常値				*/
f4			f4_ls_inv0;											/* Unit=H:漏れインダクタンス					*/
f4			f4_rm_inv0;											/* Unit=Ω:鉄損抵抗								*/

u1			u1_flag_lm_inv0_mode;								/* 励磁インダクタンス演算モード					*/
																/* 0:固定、1:マップデータ						*/

u1			u1_flag_enable_inv0_r2_cmp;							/* Unit=-:二次抵抗補正許可フラグ				*/
u1			u1_flag_enable_inv0_r1_cmp;							/* Unit=-:一次抵抗補正許可フラグ				*/

f4			f4_tmp_inv0_r1;										/* Unit=-:一次抵抗基準温度						*/
f4			f4_tmp_inv0_r2;										/* Unit=-:二次抵抗基準温度						*/
f4			f4_r1_inv0_cmp;										/* Unit=Ω一次抵抗温度補正値					*/
f4			f4_r2_inv0_cmp;										/* Unit=Ω二次抵抗温度補正値					*/
/*=============================================================*/

/*=============================================================*/
/* 						弱め磁束制御変数定義				   */
/*=============================================================*/
f4			f4_kp_inv0_vdqctrl;									/* Unit=-:弱め磁束比例ゲイン					*/
f4			f4_ki_inv0_vdqctrl;									/* Unit=-:弱め磁束積分ゲイン					*/

f4			f4_k_inv0_vdq_vctrl;								/* Unit=-:弱め磁束制御電圧比率					*/
f4			f4_vdq_inv0_vctrl;									/* Unit=V:弱め磁束制御電圧指令値				*/

f4			f4_vdqctrl_inv0_err;								/* Unit=V:弱め磁束制御偏差						*/

f4			f4_idq_inv0_vdqctrlp;								/* Unit=A:弱め磁束制御比例項					*/
f4			f4_idq_inv0_vdqctrli;								/* Unit=A:弱め磁束制御積分項					*/
f4			f4_idq_inv0_vdqctrl;								/* Unit=A:弱め磁束制御出力						*/
f4			f4_id_inv0_vdqctrl;									/* Unit=A:弱め磁束制御出力d軸					*/
f4			f4_iq_inv0_vdqctrl;									/* Unit=A:弱め磁束制御出力q軸					*/

f4			f4_idq_inv0_vdqctrl_max;							/* Unit=A:弱め磁束制御出力最大値				*/
/*=============================================================*/

/*=============================================================*/
/* 			　　		磁束指令値演算変数定義				　 */
/*=============================================================*/
f4			f4_fd_inv0_ref;										/* Unit=Wb:d軸磁束指令値						*/
f4			f4_fq_inv0_ref;										/* Unit=Wb:q軸磁束指令値						*/
/*=============================================================*/

/*=============================================================*/
/* 							dq軸電流変数定義				   */
/*=============================================================*/
f4			f4_id_inv0_ad;										/* Unit=A:d軸電流								*/
f4			f4_iq_inv0_ad;										/* Unit=A:q軸電流								*/

f4			f4_id_inv0_ref;										/* Unit=A:d軸電流指令値							*/
f4			f4_iq_inv0_ref;										/* Unit=A:q軸電流指令値							*/

f4			f4_id_inv0_ref_min;									/* Unit=A:d軸電流指令最小値 					*/
f4			f4_id_inv0_ref_max;									/* Unit=A:d軸電流指令最大値 					*/

f4			f4_idq_inv0_ref;									/* Unit=A:電流ベクトル指令値					*/

/* 電力演算用 */
f4			f4_k_inv0_idq_cmp;									/* Unit=-:dq軸角度補正ゲイン					*/
f4			f4_wt_inv0_idq_cmp;									/* Unit=rad:dq軸角度補正値						*/
f4			f4_sin_inv0_wtidq_cmp;								/* Unit=-:sin									*/
f4			f4_cos_inv0_wtidq_cmp;								/* Unit=-:cos									*/
f4			f4_id_inv0_ad_cmp;									/* Unit=A:d軸電流検出補正値						*/
f4			f4_iq_inv0_ad_cmp;									/* Unit=A:q軸電流検出補正値						*/
/*=============================================================*/

/*=============================================================*/
/* 						dq軸電流PI制御変数定義				   */
/*=============================================================*/
u1			u1_flag_enable_inv0_kictrl;							/* 電流制御モード設定							*/
																/* 0:P制御, 1:PI制御							*/

/* 制御ゲイン&リミッタ	*/
f4			f4_kp_inv0_idq_cmp;									/* Unit=-:電流制御比例ゲイン補正値				*/
f4			f4_ki_inv0_idq_cmp;									/* Unit=-:電流制御積分ゲイン補正値				*/

f4			f4_vdq_inv0_ctrl_max;								/* Unit=V:dq軸電流PI制御電圧制限   			 	*/
f4			f4_vdq_inv0_ctrl_max_adj;							/* Unit=V:dq軸電流PI制御電圧制限測定モード用 	*/

/* 比例ゲイン垂下特性	*/
f4			f4_kp_inv0_idq_ctrl_max;							/* Unit=-:電流制御比例ゲイン補正項上限			*/
f4			f4_kp_inv0_idq_ctrl_min;							/* Unit=-:電流制御比例ゲイン補正項下限			*/

f4			f4_lev_m_kp_inv0_idq_ctrl_max;						/* Unit=-:電流制御比例ゲイン垂下開始変調率		*/
f4			f4_lev_m_kp_inv0_idq_ctrl_min;						/* Unit=-:電流制御比例ゲイン垂下終了変調率		*/

f4			f4_a_kp_inv0_idq_cmp;								/* Unit=-:変調率垂下特性傾き					*/
f4			f4_b_kp_inv0_idq_cmp;								/* Unit=-:変調率垂下特性切片					*/

/* 積分ゲイン垂下特性	*/
f4			f4_ki_inv0_idq_ctrl_max;							/* Unit=-:電流制御積分ゲイン補正項上限			*/
f4			f4_ki_inv0_idq_ctrl_min;							/* Unit=-:電流制御積分ゲイン補正項下限			*/

f4			f4_lev_m_ki_inv0_idq_ctrl_max;						/* Unit=-:電流制御積分ゲイン垂下開始変調率		*/
f4			f4_lev_m_ki_inv0_idq_ctrl_min;						/* Unit=-:電流制御積分ゲイン垂下終了変調率		*/

f4			f4_a_ki_inv0_idq_cmp;								/* Unit=-:変調率垂下特性傾き					*/
f4			f4_b_ki_inv0_idq_cmp;								/* Unit=-:変調率垂下特性切片					*/

u1			u1_cnt_idq_inv0_ctrli_delay;						/* 電流I制御指令値遅れカウンタ					*/
u1			u1_cnt_idq_inv0_ctrli_delay_max;					/* 電流I制御指令値遅れカウンタ最大値			*/

/* d軸電流制御		*/

f4			f4_kp_inv0_idctrl;									/* Unit=-:d軸電流制御比例ゲイン					*/
f4			f4_ki_inv0_idctrl;									/* Unit=-:d軸電流制御積分ゲイン					*/

f4			f4_id_inv0_ctrlperr;								/* Unit=A:d軸電流P制御偏差						*/
f4			f4_id_inv0_ctrlierr;								/* Unit=A:d軸電流I制御偏差						*/
f4			f4_id_inv0_ctrliref;								/* Unit=A:d軸電流I制御指令値					*/
f4			f4_id_inv0_ctrliref_array[CNT_IDQ_INV0_CTRLI_DELAY_MAX+1];
																/* Unit=A:d軸電流I制御指令値配列				*/
f4			f4_vd_inv0_ctrl;									/* Unit=V:d軸電流PI制御出力     			 	*/
f4			f4_vd_inv0_ctrlp;									/* Unit=V:d軸電流PI制御比例項  					*/
f4			f4_vd_inv0_ctrli;									/* Unit=V:d軸電流PI制御積分項   				*/


/* q軸電流制御		*/
f4			f4_kp_inv0_iqctrl;									/* Unit=-:q軸電流制御比例ゲイン					*/
f4			f4_ki_inv0_iqctrl;									/* Unit=-:q軸電流制御積分ゲイン					*/

f4			f4_iq_inv0_ctrlperr;								/* Unit=A:q軸電流P制御偏差						*/
f4			f4_iq_inv0_ctrlierr;								/* Unit=A:q軸電流I制御偏差						*/
f4			f4_iq_inv0_ctrliref;								/* Unit=A:q軸電流I制御指令値					*/
f4			f4_iq_inv0_ctrliref_array[CNT_IDQ_INV0_CTRLI_DELAY_MAX+1];
																/* Unit=A:q軸電流I制御指令値配列				*/
f4			f4_vq_inv0_ctrl;									/* Unit=V:q軸電流PI制御出力     	        	*/
f4			f4_vq_inv0_ctrlp;									/* Unit=V:q軸電流PI制御比例項 				 	*/
f4			f4_vq_inv0_ctrli;									/* Unit=V:q軸電流PI制御積分項 				 	*/

u1			u1_flag_inv0_status_idqctrl;						/* 電流制御軸状況								*/
																/* 2:電圧制限 + 電流制御						*/
																/* 4:通常領域 + 電流制御						*/
/*=============================================================*/

/*=============================================================*/
/*               			非干渉制御変数定義       	       */
/*=============================================================*/
f4			f4_vd_inv0_emf;										/* Unit=V:d軸逆起電圧					 		*/
f4			f4_vq_inv0_emf;										/* Unit=V:q軸逆起電圧			 				*/
f4			f4_vd_inv0_rs;										/* Unit=V:d軸抵抗電圧							*/
f4			f4_vq_inv0_rs;										/* Unit=V:d軸抵抗電圧							*/

f4			f4_vd_inv0_ref_tmp;									/* Unit=V:d軸電圧指令値(制限前)					*/
f4			f4_vq_inv0_ref_tmp;									/* Unit=V:q軸電圧指令値(制限前)					*/
/*=============================================================*/

/*=============================================================*/
/*  	    		dq軸電圧指令値制限変数定義       	　　   */
/*=============================================================*/
u1			u1_flag_inv0_status_vdq_max;						/* dq軸電圧制限状態								*/
																/* 0:- 1:制限									*/

f4			f4_k_inv0_vdq_max;									/* Unit=－:dq軸電圧指令値制限値比率				*/

f4			f4_vdq_inv0_ref;									/* Unit=V:dq軸電圧指令値ベクトル				*/
f4			f4_vdq_inv0_max;									/* Unit=V:dq軸電圧指令値制限					*/

f4			f4_vd_inv0_ref;										/* Unit=V:d軸電圧指令値							*/
f4			f4_vq_inv0_ref;										/* Unit=V:q軸電圧指令値							*/

f4			f4_wt_inv0_vdq;										/* Unit=rad:電圧進み角							*/
f4			f4_wt_inv0_vdq_tmp;									/* Unit=rad:電圧進み角(テンポラリ)				*/
/*=============================================================*/

/*=============================================================*/
/*					PWM変調ゲインテーブル変数定義			　 */
/*=============================================================*/
f4			f4_m_inv0_ref;										/* Unit=%:空間ベクトル変調率					*/
f4			f4_k_inv0_modu;										/* Unit=%:PWM変調ゲイン(過変調領域)				*/
f4			f4_k_inv0_modu_max;									/* Unit=%:PWM変調ゲイン上限値					*/

u1			u1_flag_enable_inv0_dk_modu;						/* 過変調領域における電流制御ゲイン低減フラグ	*/
																/* 0:禁止 1:許可								*/
f4			f4_dk_inv0_modu_kp;									/* Unit=-:1.0/PWM変調ゲイン(電流制御比例補正)	*/
f4			f4_dk_inv0_modu_ki;									/* Unit=-:1.0/PWM変調ゲイン(電流制御積分補正)	*/
f4			f4_dk_inv0_modu_kicmp;								/* Unit=-:1/変調率ゲイン積分補正値				*/

u4			u4_n_k_inv0_modu;									/* PWM変調ゲインテーブルカウンタ				*/

f4			f4_m_inv0_lpf;										/* Unit=%:空間ベクトル変調率LPF値				*/
f4			f4_wclpf_inv0_m;									/* Unit=rad/s:空間ベクトル変調理LPF周波数		*/
/*=============================================================*/

/*=============================================================*/
/*						電圧制御モード切替変数定義			   */
/*=============================================================*/
u1			u1_flag_inv0_modevctrl;								/* 電圧制御モードフラグ							*/
																/* 0:SVPWM,1:1パルス							*/
u1			u1_flag_inv0_modevctrl_tmp;							/* 電圧制御モードフラグ							*/
																/* 0:SVPWM,1:1パルス							*/

u2			u2_cnt_inv0_vctrlmode;								/* 電圧制御モード切替カウンタ					*/

u2			u2_cnt_inv0_1pulsemode;								/* SVPWM=>1パルス切替カウンタ設定値				*/
u2			u2_cnt_inv0_svpwmmode;								/* 1パルス => SVPWM切替カウンタ設定値			*/

u1			u1_flag_enable_inv0_1pulse;							/* 1パルス制御許可フラグ(0:禁止,1:許可)			*/

f4			f4_lev_m_inv0_1pulse;								/* Unit=-:1パルス制御モード切替レベル			*/
f4			f4_lev_m_inv0_svpwm;								/* Unit=-:SVPWM制御切替レベル					*/

u1			u1_flag_inv0_modetiming;							/* モード切替タイミングフラグ					*/
/*=============================================================*/

/*=============================================================*/
/*						電圧位相変数定義					   */
/*=============================================================*/
f4			f4_wt_inv0_delay;									/* Unit=rad:制御遅れ補正角						*/
f4			f4_wt_inv0_svctrl;									/* Unit=rad:インバータ電圧位相角				*/

f4			f4_sin_inv0_wtsvctrl;								/* Unit=-:sin(wt_ref)          				   	*/
f4			f4_cos_inv0_wtsvctrl;								/* Unit=-:cos(wt_ref)          				   	*/

s4			s4_wt_inv0_dq_2pi_2_31;								/* lsb=2pi/2^31,Unit=rad:dq軸角度				*/
s4			s4_wt_inv0_delay_2pi_2_31;							/* lsb=2pi/2^31,Unit=rad:制御遅れ補正角			*/

s4			s4_wt_inv0_vdq_2pi_2_31;							/* lsb=2pi/2^31,Unit=rad:電圧進み角				*/

f4			f4_wt_inv0_1pulse_pwm;								/* Unit=rad:1パルス電圧位相角@PWM				*/
s4			s4_wt_inv0_1pulse_pwm_2pi_2_31;						/* lsb=2pi/2^31,Unit=rad:1パルス電圧位相角@PWM	*/
/*=============================================================*/

/*=============================================================*/
/*				  			デバッグ用変数定義			　 	   */
/*=============================================================*/

/*=============================================================*/

/*=============================================================*/
/* 					関数のプロトタイプ宣言					   */
/*=============================================================*/
void 		fi_pwm_inv0_idqctrl			(void);					/* キャリア割込みdq軸電流制御関数				*/
void 		fb_pwm_inv0_idqctrl_init	(void);					/* キャリア割込みdq軸電流制御初期化関数			*/
/*=============================================================*/

/*===============================================================
+																+
+				Name:		void fi_pwm_inv0_idqctrl (void)		+
+			Function:		キャリア割込みdq軸電流制御関数		+
+																+
+					1)		PWM出力許可設定						+
+					2)		dq軸電流検出値および指令値演算		+
+					3)		インダクタンス飽和特性演算			+
+					4)		dq軸電流PI制御演算					+
+					5)		非干渉制御演算						+
+					6)		dq軸電圧指令値制限・				+
+					7)		PWM変調ゲインテーブル演算			+
+					8)		電圧制御モード切替					+
+																+
+		Return Value:		No									+
+				date:		 10th Mar,2017						+
+																+
===============================================================*/
void fi_pwm_inv0_idqctrl (void)
{

	/*============================================================*/
	/*					   ローカル変数定義		　				  */
	/*============================================================*/
	f4		f4_temp_1, f4_temp_2, f4_temp_3, f4_temp_4;			/* テンポラリ変数(f4)							*/
	s4		s4_temp_1;
	/*============================================================*/

	/*============================================================*/
	/*						dq軸電流検出値演算					　*/
	/*============================================================*/
	/* 電流検出値				*/
	{
		f4	t_f4_ia_inv0_ad, t_f4_ib_inv0_ad;
		f4	t_f4_wt_inv0_idq_cmp;

		/* UVW=>ab変換 			*/
		t_f4_ia_inv0_ad				= (f4_iu_inv0_ctrl - ((f4)(0.5)) * (f4_iv_inv0_ctrl + f4_iw_inv0_ctrl)) * ((f4)(0.816496581));
																/* a相電流変換値								*/
		t_f4_ib_inv0_ad				= ((f4)(0.5)) * (f4_iv_inv0_ctrl - f4_iw_inv0_ctrl) * ((f4)(1.414213562));
																/* b相電流変換値								*/
		/* ab=>dq変換 				*/
		f4_id_inv0_ad				= (f4_cos_inv0_wtdq * t_f4_ia_inv0_ad ) + (f4_sin_inv0_wtdq * t_f4_ib_inv0_ad);
																/* d軸電流変換値								*/
		f4_iq_inv0_ad				= -(f4_sin_inv0_wtdq * t_f4_ia_inv0_ad) + (f4_cos_inv0_wtdq * t_f4_ib_inv0_ad);
																/* q軸電流変換値								*/


		/* 電力演算用軸*/
		t_f4_wt_inv0_idq_cmp				= f4_k_inv0_idq_cmp * f4_wr_inv0_pll_lpf * f4_ts_inv0_ctrl;

		f4_wt_inv0_idq_cmp				= f4_wt_inv0_dq + t_f4_wt_inv0_idq_cmp;
		if(f4_wt_inv0_idq_cmp > f4_ONEPI)		{f4_wt_inv0_idq_cmp	= f4_wt_inv0_idq_cmp - f4_TWOPI;}
		else if(f4_wt_inv0_idq_cmp < -f4_ONEPI)	{f4_wt_inv0_idq_cmp	= f4_wt_inv0_idq_cmp + f4_TWOPI;}
		else{}														/* (0≦θ≦2π) = > (-π≦θ≦π)に変換			*/

		/* ab=>dq変換用変数			*/
		f4_sin_inv0_wtidq_cmp			= sinf(f4_wt_inv0_idq_cmp);
		f4_cos_inv0_wtidq_cmp			= cosf(f4_wt_inv0_idq_cmp);

		/* ab=>dq変換 				*/
		f4_id_inv0_ad_cmp				= (f4_cos_inv0_wtidq_cmp * t_f4_ia_inv0_ad ) + (f4_sin_inv0_wtidq_cmp * t_f4_ib_inv0_ad);
																/* d軸電流変換値								*/
		f4_iq_inv0_ad_cmp				= -(f4_sin_inv0_wtidq_cmp * t_f4_ia_inv0_ad) + (f4_cos_inv0_wtidq_cmp * t_f4_ib_inv0_ad);
																/* q軸電流変換値								*/

		f4_power_inv0_p123				= f4_vd_inv0_ref * f4_id_inv0_ad_cmp + f4_vq_inv0_ref * f4_iq_inv0_ad_cmp;
		f4_temp_1						= f4_power_inv0_p123 - f4_power_inv0_p123_lpf;
		f4_power_inv0_p123_lpf				= f4_power_inv0_p123_lpf + (f4_wclpf_inv0_p123 * f4_temp_1 * f4_ts_inv0_ctrl);
	}
	/*============================================================*/

	/*============================================================*/
	/*		  				  弱め磁束制御演算					  */
	/*============================================================*/
	/* 電圧指令値演算			*/
	f4_vdq_inv0_vctrl						= f4_vdc_inv0_lpf * ((f4)(0.707106)) * f4_k_inv0_vdq_vctrl;
																/* 弱め磁束制御電圧指令値						*/
	if(u1_flag_inv0_adj == 100)
	{
		f4_idq_inv0_vdqctrl_max					= f4_id_inv0_adj;
	}
	else
	{
		f4_idq_inv0_vdqctrl_max					= f4_idq_inv0_ctrl;
	}
	/* 弱め磁束制御(PIで処理)	*/
	if(1 == u1_pwm_inv0_status)									/* インバータPWM出力中							*/
	{
		{
			f4_vdqctrl_inv0_err				= f4_vdq_inv0_vctrl - f4_vdq_inv0_ref;
																	/* 弱め磁束制御電圧制御偏差						*/
			f4_idq_inv0_vdqctrlp				= f4_kp_inv0_vdqctrl * f4_vdqctrl_inv0_err;
																	/* 弱め磁束制御比例項							*/
			f4_idq_inv0_vdqctrli				= f4_idq_inv0_vdqctrli + (f4_ki_inv0_vdqctrl * f4_vdqctrl_inv0_err);
			f4_idq_inv0_vdqctrli				= limit(f4_idq_inv0_vdqctrli, ((f4)(0.)), -f4_idq_inv0_vdqctrl_max);
																	/* 弱め磁束制御積分項							*/
			f4_temp_1					= f4_idq_inv0_vdqctrlp + f4_idq_inv0_vdqctrli;
			f4_idq_inv0_vdqctrl				= limit(f4_temp_1, ((f4)(0.)), -f4_idq_inv0_vdqctrl_max);
																	/* 弱め磁束制御出力値							*/

			{
				f4_id_inv0_vdqctrl			= f4_idq_inv0_vdqctrl;
				f4_iq_inv0_vdqctrl			= ((f4)(0.));
			}
		}
	}
	else														/* インバータPWM停止中							*/
	{
		f4_idq_inv0_vdqctrl					= ((f4)(0.));			/* PI変数をリセットする							*/
		f4_idq_inv0_vdqctrlp				= ((f4)(0.));
		f4_idq_inv0_vdqctrli				= ((f4)(0.));
		f4_id_inv0_vdqctrl					= ((f4)(0.));
		f4_iq_inv0_vdqctrl					= ((f4)(0.));
	}
	/*============================================================*/

	/*============================================================*/
	/*						一次抵抗温度補正演算				　*/
	/*============================================================*/
	if(1 == u1_flag_enable_inv0_r1_cmp)
	{
		// 補正許可時は、巻き線抵抗温度に合わせて変化させる
		f4_r1_inv0_cmp					= f4_r1_inv0* (((f4)(1.0)) + ((f4)(0.00393))*(f4_tmp_inv0_mot_max - f4_tmp_inv0_r1));
	}
	else
	{
		f4_r1_inv0_cmp					= f4_r1_inv0;
	}
	/*============================================================*/

	/*============================================================*/
	/*						一次抵抗温度補正演算				　*/
	/*============================================================*/
	if(1 == u1_flag_enable_inv0_r2_cmp)
	{
		// 補正許可時は、巻き線抵抗温度に合わせて変化させる
		f4_r2_inv0_cmp					= f4_r2_inv0* (((f4)(1.0)) + ((f4)(0.00393))*(f4_tmp_inv0_mot_max - f4_tmp_inv0_r2));
	}
	else
	{
		f4_r2_inv0_cmp					= f4_r2_inv0;
	}
	/*============================================================*/

	/*============================================================*/
	/*							磁束指令値演算 					  */
	/*============================================================*/
	/* 磁束指令値は、id一定の場合変化しない	*/
	f4_fd_inv0_ref						= f4_lm_inv0 * f4_id_inv0_ref;		/* 二次磁束指令値								*/
	f4_fq_inv0_ref						= ((f4)(0.));				/* 二次磁束指令値								*/
	/*============================================================*/

	/*============================================================*/
	/*						dq軸電流指令値演算					　*/
	/*============================================================*/
	/* 電流指令値設定			*/
	if(0 == u1_flag_inv0_adj)									/* パラメータ測定が無効							*/
	{
		f4_temp_1					= f4_id_inv0_ctrl + f4_id_inv0_vdqctrl;
		f4_id_inv0_ref				= limit(f4_temp_1, f4_id_inv0_ref_max, f4_id_inv0_ref_min);
																/* d軸電流指令値								*/

		if(u1_flag_mode_inv0_idqcom == 2) /* トルク指令トルク測定モード */
		{
			/* 励磁電流を制限した場合におけるq軸電流指令値対策 */
			if(f4_fd_inv0_ref > (f4)(0.))
			{
				f4_iq_inv0_ctrl	= f4_tq_inv0_ref_tmp / f4_fd_inv0_ref * f4_dpf_inv0; /* モータパラメータよりトルク演算 */
			}
			else{}
		}
		else{}

		f4_iq_inv0_ref				= f4_iq_inv0_ctrl + f4_iq_inv0_vdqctrl;
																/* q軸電流指令値								*/

		/* 電流ベクトル制限		*/
		{
			f4	t_f4_id_inv0_max_tmp;							/* Unit=A:d軸電流制限変数						*/
			f4	t_f4_iq_inv0_max_tmp;							/* Unit=A:q軸電流制限変数						*/
			f4	t_f4_idq_inv0_max_tmp;							/* Unit=A:dq軸電流制限変数						*/

			t_f4_id_inv0_max_tmp				= f4_id_inv0_ref;
			t_f4_iq_inv0_max_tmp				= f4_iq_inv0_ref;

			/* 電流指令ベクトル			*/
			f4_temp_1					= t_f4_id_inv0_max_tmp * t_f4_id_inv0_max_tmp;
																/* id_ref^2を演算								*/
			f4_temp_2					= t_f4_iq_inv0_max_tmp * t_f4_iq_inv0_max_tmp;
																/* iq_ref^2を演算								*/
			f4_idq_inv0_ref				= sqrtf(f4_temp_1 + f4_temp_2);
																/* 電流指令値ベクトル							*/
																/* √(id^2+iq^2)を演算							*/
			/* 電流ベクトル制限			*/
			f4_id_inv0_ref				= t_f4_id_inv0_max_tmp;
																/* d軸電流はそのまま設定						*/

			if((u1_flag_mode_inv0_idqcom == 0)&&(u1_flag_enable_inv0_wrctrl == 0)) /* 電流指令駆動かつ速度制御無効の場合 */
			{
				f4_temp_1		= f4_irms_inv0_ref_tmp;
				if(f4_temp_1 < (f4)(0.0))	{f4_temp_1 =-f4_temp_1;}
				else{}

				t_f4_idq_inv0_max_tmp		= f4_temp_1 * (f4)(1.73205);
				t_f4_idq_inv0_max_tmp		= min(t_f4_idq_inv0_max_tmp,f4_idq_inv0_max);
			}
			else
			{
				t_f4_idq_inv0_max_tmp		= f4_idq_inv0_max;
			}

			if(f4_idq_inv0_ref > t_f4_idq_inv0_max_tmp)				/* 電流制限を超える場合							*/
			{													/* =>q軸電流を制限する							*/
				f4_temp_1				= f4_id_inv0_ref * f4_id_inv0_ref;
																/* id_ref^2を演算								*/
				f4_temp_2				= t_f4_idq_inv0_max_tmp * t_f4_idq_inv0_max_tmp;
																/* idq_max^2を演算								*/
				f4_temp_3				= f4_temp_2 - f4_temp_1;
				if(f4_temp_3 < ((f4)(0.)))	{f4_temp_3 = ((f4)(0.));}
				else{}

				f4_temp_4			 	= sqrtf(f4_temp_3);		/* √(idq_max^2-id^2)を演算						*/
				if(t_f4_iq_inv0_max_tmp > ((f4)(0.)))
				{
					f4_iq_inv0_ref 			= f4_temp_4;
				}
				else
				{
					f4_iq_inv0_ref 			= -f4_temp_4;
				}

				f4_idq_inv0_ref				= sqrtf(f4_id_inv0_ref * f4_id_inv0_ref + f4_iq_inv0_ref * f4_iq_inv0_ref);
																/* 電流ベクトルは再演算する						*/
			}
			else												/* 電流ベクトル制限を超えない場合				*/
			{
				f4_iq_inv0_ref				= t_f4_iq_inv0_max_tmp;
																/* q軸電流指令値をそのまま設定					*/
			}
		}
	}
	else														/* パラメータ測定が有効							*/
	{
		if(u1_flag_inv0_adj == 100)
		{
			f4_temp_1					= f4_id_inv0_adj + f4_id_inv0_vdqctrl;			/* d軸電流指令値(測定用電流)					*/
			f4_id_inv0_ref				= limit(f4_temp_1, f4_id_inv0_ref_max, f4_id_inv0_ref_min);
			f4_iq_inv0_ref				= f4_iq_inv0_adj;			/* q軸電流指令値(測定用電流)					*/

			/* 電流ベクトル制限		*/
			{
				f4	t_f4_id_inv0_max_tmp;							/* Unit=A:d軸電流制限変数						*/
				f4	t_f4_iq_inv0_max_tmp;							/* Unit=A:q軸電流制限変数						*/

				t_f4_id_inv0_max_tmp				= f4_id_inv0_ref;
				t_f4_iq_inv0_max_tmp				= f4_iq_inv0_ref;

				/* 電流指令ベクトル			*/
				f4_temp_1					= t_f4_id_inv0_max_tmp * t_f4_id_inv0_max_tmp;
																	/* id_ref^2を演算								*/
				f4_temp_2					= t_f4_iq_inv0_max_tmp * t_f4_iq_inv0_max_tmp;
																	/* iq_ref^2を演算								*/
				f4_idq_inv0_ref				= sqrtf(f4_temp_1 + f4_temp_2);
																	/* 電流指令値ベクトル							*/
																	/* √(id^2+iq^2)を演算							*/
				/* 電流ベクトル制限			*/
				f4_id_inv0_ref				= t_f4_id_inv0_max_tmp;
																	/* d軸電流はそのまま設定						*/

				if(f4_idq_inv0_ref > f4_idq_inv0_max)				/* 電流制限を超える場合							*/
				{													/* =>q軸電流を制限する							*/
					f4_temp_1				= f4_id_inv0_ref * f4_id_inv0_ref;
																	/* id_ref^2を演算								*/
					f4_temp_2				= f4_idq_inv0_max * f4_idq_inv0_max;
																	/* idq_max^2を演算								*/
					f4_temp_3				= f4_temp_2 - f4_temp_1;
					if(f4_temp_3 < ((f4)(0.)))	{f4_temp_3 = ((f4)(0.));}
					else{}

					f4_temp_4			 	= sqrtf(f4_temp_3);		/* √(idq_max^2-id^2)を演算						*/
					if(t_f4_iq_inv0_max_tmp > ((f4)(0.)))
					{
						f4_iq_inv0_ref 			= f4_temp_4;
					}
					else
					{
						f4_iq_inv0_ref 			= -f4_temp_4;
					}

					f4_idq_inv0_ref				= f4_idq_inv0_max;	/* 電流ベクトルを制限値に合わせる				*/
				}
				else												/* 電流ベクトル制限を超えない場合				*/
				{
					f4_iq_inv0_ref				= t_f4_iq_inv0_max_tmp;
																	/* q軸電流指令値をそのまま設定					*/
				}
			}
		}
		else
		{
			f4_id_inv0_ref				= f4_id_inv0_adj;			/* d軸電流指令値(測定用電流)					*/
			f4_iq_inv0_ref				= f4_iq_inv0_adj;			/* q軸電流指令値(測定用電流)					*/
		}

	}
	/*============================================================*/

	/*============================================================*/
	/*			  	    インダクタンス飽和特性演算				　*/
	/*============================================================*/
	if(0 == u1_flag_inv0_adj)									/* パラメータ測定が無効							*/
	{
		if(0 == u1_flag_lm_inv0_mode)							/* d軸固定モード								*/
		{
			f4_lm_inv0				= f4_lm_inv0_const;			/* 定常値を使用									*/
		}
		else													/* ベンチマップデータ2D							*/
		{
			f4_temp_1				= f4_id_inv0_ref;			/* d軸電流										*/
			if(f4_temp_1 < (f4)(0.))
			{
				f4_temp_1				= -f4_temp_1;			/* 絶対値処理									*/
			}
			else{}

			/*					d軸電流指令, &LM_INV0		 											*/
			u1_lm_map_1d_get(f4_temp_1, &f4_lm_inv0);
		}
	}
	else
	{
		f4_lm_inv0				= f4_lm_inv0_const;			/* 定常値を使用									*/

	}
	/*============================================================*/

	/*============================================================*/
	/*      				 dq軸電流PI制御演算				      */
	/*============================================================*/
	f4_temp_1						= f4_lev_m_kp_inv0_idq_ctrl_min - f4_lev_m_kp_inv0_idq_ctrl_max;
	if(f4_temp_1 > ((f4)(0.)))
	{
		f4_a_kp_inv0_idq_cmp		= (f4_kp_inv0_idq_ctrl_min - f4_kp_inv0_idq_ctrl_max) / f4_temp_1;
	}
	else{}

	f4_b_kp_inv0_idq_cmp			= f4_kp_inv0_idq_ctrl_max - f4_a_kp_inv0_idq_cmp * f4_lev_m_kp_inv0_idq_ctrl_max;

	/* 電流制御ゲイン垂下特性	*/
	if(f4_m_inv0_lpf <= f4_lev_m_kp_inv0_idq_ctrl_max)			/* 設定変調率以下								*/
	{
		f4_kp_inv0_idq_cmp			= f4_kp_inv0_idq_ctrl_max;
	}
	else														/* 設定変調率以上ではゲインを垂下				*/
	{
		f4_temp_1					= f4_a_kp_inv0_idq_cmp * f4_m_inv0_lpf + f4_b_kp_inv0_idq_cmp;
		f4_kp_inv0_idq_cmp			= limit(f4_temp_1, f4_kp_inv0_idq_ctrl_max, f4_kp_inv0_idq_ctrl_min);
	}


	f4_temp_1						= f4_lev_m_ki_inv0_idq_ctrl_min - f4_lev_m_ki_inv0_idq_ctrl_max;
	if(f4_temp_1 > ((f4)(0.)))
	{
		f4_a_ki_inv0_idq_cmp		= (f4_ki_inv0_idq_ctrl_min - f4_ki_inv0_idq_ctrl_max) / f4_temp_1;
	}
	else{}

	f4_b_ki_inv0_idq_cmp			= f4_ki_inv0_idq_ctrl_max - f4_a_ki_inv0_idq_cmp * f4_lev_m_ki_inv0_idq_ctrl_max;

	/* 電流制御ゲイン垂下特性	*/
	if(f4_m_inv0_lpf <= f4_lev_m_ki_inv0_idq_ctrl_max)			/* 設定変調率以下								*/
	{
		f4_ki_inv0_idq_cmp			= f4_ki_inv0_idq_ctrl_max;
	}
	else														/* 設定変調率以上ではゲインを垂下				*/
	{
		f4_temp_1					= f4_a_ki_inv0_idq_cmp * f4_m_inv0_lpf + f4_b_ki_inv0_idq_cmp;
		f4_ki_inv0_idq_cmp			= limit(f4_temp_1, f4_ki_inv0_idq_ctrl_max, f4_ki_inv0_idq_ctrl_min);
	}

	/* 電流制御ゲイン演算		*/
	f4_kp_inv0_idctrl				= (f4_ls_inv0 * f4_fs_inv0_ctrl * f4_kp_inv0_idq_cmp) * f4_dk_inv0_modu_kp;
	f4_ki_inv0_idctrl				= f4_kp_inv0_idctrl * f4_ki_inv0_idq_cmp * f4_dk_inv0_modu_ki;
																/* 過変調領域では電流制御ゲインを1/k倍			*/
	f4_kp_inv0_iqctrl				= (f4_ls_inv0 * f4_fs_inv0_ctrl * f4_kp_inv0_idq_cmp) * f4_dk_inv0_modu_kp;
	f4_ki_inv0_iqctrl				= f4_kp_inv0_iqctrl * f4_ki_inv0_idq_cmp * f4_dk_inv0_modu_ki;
																/* 過変調領域では電流制御ゲインを1/k倍			*/


	if(1 == u1_pwm_inv0_status)									/* PWM出力状態									*/
	{
		/*============================================================*/
		/*					dq軸電流制御積分指令					  */
		/*============================================================*/
		f4_id_inv0_ctrliref_array[u1_cnt_idq_inv0_ctrli_delay]		= f4_id_inv0_ref;
																/* d軸電流積分指令値保存						*/
		f4_iq_inv0_ctrliref_array[u1_cnt_idq_inv0_ctrli_delay]		= f4_iq_inv0_ref;
																/* q軸電流積分指令値保存						*/

		/* ベクトル制御									*/
		{
			u1_cnt_idq_inv0_ctrli_delay++;
		}

		if(u1_cnt_idq_inv0_ctrli_delay > u1_cnt_idq_inv0_ctrli_delay_max)
		{
			u1_cnt_idq_inv0_ctrli_delay		= 0;
		}
		else{}

		f4_id_inv0_ctrliref						= f4_id_inv0_ctrliref_array[u1_cnt_idq_inv0_ctrli_delay];
																/* d軸電流積分指令値							*/
		f4_iq_inv0_ctrliref						= f4_iq_inv0_ctrliref_array[u1_cnt_idq_inv0_ctrli_delay];
																/* q軸電流積分指令値							*/
		/*============================================================*/

		/*============================================================*/
		/*      					dq軸電流偏差				      */
		/*============================================================*/
		/* ベクトル制御									*/
		{
			{
				f4_id_inv0_ctrlperr 		= f4_id_inv0_ref - f4_id_inv0_ad;
																/* d軸電流制御偏差								*/

				f4_id_inv0_ctrlierr			= f4_id_inv0_ctrliref - f4_id_inv0_ad;
																/* d軸電流制御偏差								*/

				f4_iq_inv0_ctrlperr 		= f4_iq_inv0_ref - f4_iq_inv0_ad;
																/* q軸電流制御偏差								*/

				f4_iq_inv0_ctrlierr			= f4_iq_inv0_ctrliref - f4_iq_inv0_ad;
																/* q軸電流I制御偏差								*/
			}
		}

		/*============================================================*/
		/*      					dq軸電流制御				      */
		/*============================================================*/
		if(0 == u1_flag_inv0_adj)								/* パラメータ測定が無効							*/
		{

			if(u1_flag_inv0_status_vdq_max == 1) /* 電圧制限時 */
			{

				u1_flag_inv0_status_idqctrl		= 2;	/*電圧制限時 + 電流制御*/

				/* d軸電流制御 */

				if(1 == u1_flag_enable_inv0_kictrl)			/* 積分制御が許可状態							*/
				{
					if(f4_vd_inv0_ref > (f4)(0.0)) /* 正 */
					{
						if(f4_id_inv0_ctrlierr < (f4)(0.0))
						{
							f4_vd_inv0_ctrlp    		= f4_id_inv0_ctrlperr * f4_kp_inv0_idctrl;
															/* d軸電流制御比例項							*/
							f4_vd_inv0_ctrli	= f4_vd_inv0_ctrli + (f4_ki_inv0_idctrl * f4_id_inv0_ctrlierr);
							f4_vd_inv0_ctrli	= limit(f4_vd_inv0_ctrli, f4_vdq_inv0_ctrl_max, -f4_vdq_inv0_ctrl_max);
															/* d軸電流制御積分項							*/
															/* 積分出力を制限(垂下特性なし)					*/
						}
						else
						{
							/* 電圧制限時は大きさが大きくなる方向へのPI制御はしない */
						}
					}
					else /* 負 */
					{
						if(f4_id_inv0_ctrlierr > (f4)(0.0))
						{
							f4_vd_inv0_ctrlp    		= f4_id_inv0_ctrlperr * f4_kp_inv0_idctrl;
															/* d軸電流制御比例項							*/
							f4_vd_inv0_ctrli	= f4_vd_inv0_ctrli + (f4_ki_inv0_idctrl * f4_id_inv0_ctrlierr);
							f4_vd_inv0_ctrli	= limit(f4_vd_inv0_ctrli, f4_vdq_inv0_ctrl_max, -f4_vdq_inv0_ctrl_max);
															/* d軸電流制御積分項							*/
															/* 積分出力を制限(垂下特性なし)					*/
						}
						else
						{
							/* 電圧制限時は大きさが大きくなる方向へのPI制御はしない */
						}
					}

				}
				else
				{
					f4_vd_inv0_ctrlp    		= f4_id_inv0_ctrlperr * f4_kp_inv0_idctrl;
															/* d軸電流制御比例項							*/
					f4_vd_inv0_ctrli	= (f4)(0.0);
				}

				f4_temp_2					= (f4_vd_inv0_ctrlp + f4_vd_inv0_ctrli);
				f4_vd_inv0_ctrl				= limit(f4_temp_2, f4_vdq_inv0_ctrl_max, -f4_vdq_inv0_ctrl_max);
															/* d軸電流制御出力								*/

				/* q軸電流制御 */


				if(1 == u1_flag_enable_inv0_kictrl)			/* 積分制御が許可状態							*/
				{
					if(f4_vq_inv0_ref > (f4)(0.0)) /* 正 */
					{
						if(f4_iq_inv0_ctrlierr < (f4)(0.0))
						{
							f4_vq_inv0_ctrlp    		= f4_iq_inv0_ctrlperr * f4_kp_inv0_iqctrl;
															/* q軸電流制御比例項							*/
							f4_vq_inv0_ctrli   	= f4_vq_inv0_ctrli + (f4_ki_inv0_iqctrl * f4_iq_inv0_ctrlierr);
							f4_vq_inv0_ctrli	= limit(f4_vq_inv0_ctrli, f4_vdq_inv0_ctrl_max, -f4_vdq_inv0_ctrl_max);
															/* q軸電流制御積分項							*/
															/* 積分出力を制限(垂下特性あり)					*/
						}
						else
						{
							/* 電圧制限時は大きさが大きくなる方向へのPI制御はしない */
						}
					}
					else
					{
						if(f4_iq_inv0_ctrlierr > (f4)(0.0))
						{
							f4_vq_inv0_ctrlp    		= f4_iq_inv0_ctrlperr * f4_kp_inv0_iqctrl;
															/* q軸電流制御比例項							*/
							f4_vq_inv0_ctrli   	= f4_vq_inv0_ctrli + (f4_ki_inv0_iqctrl * f4_iq_inv0_ctrlierr);
							f4_vq_inv0_ctrli	= limit(f4_vq_inv0_ctrli, f4_vdq_inv0_ctrl_max, -f4_vdq_inv0_ctrl_max);
															/* q軸電流制御積分項							*/
															/* 積分出力を制限(垂下特性あり)					*/
						}
						else
						{
							/* 電圧制限時は大きさが大きくなる方向へのPI制御はしない */
						}
					}
				}
				else
				{
					f4_vq_inv0_ctrlp    		= f4_iq_inv0_ctrlperr * f4_kp_inv0_iqctrl;
															/* q軸電流制御比例項							*/
					f4_vq_inv0_ctrli	= (f4)(0.0);
				}

				f4_temp_2					= f4_vq_inv0_ctrlp + f4_vq_inv0_ctrli;
				f4_vq_inv0_ctrl				= limit(f4_temp_2, f4_vdq_inv0_ctrl_max, -f4_vdq_inv0_ctrl_max);
																/* q軸電流制御出力								*/

			}
			else
			{
				u1_flag_inv0_status_idqctrl		= 4;	/*	通常領域 + 電流制御*/

				/* d軸電流制御 */
				f4_vd_inv0_ctrlp    		= f4_id_inv0_ctrlperr * f4_kp_inv0_idctrl;
															/* d軸電流制御比例項							*/

				if(1 == u1_flag_enable_inv0_kictrl)			/* 積分制御が許可状態							*/
				{
					f4_vd_inv0_ctrli	= f4_vd_inv0_ctrli + (f4_ki_inv0_idctrl * f4_id_inv0_ctrlierr);
					f4_vd_inv0_ctrli	= limit(f4_vd_inv0_ctrli, f4_vdq_inv0_ctrl_max, -f4_vdq_inv0_ctrl_max);
															/* d軸電流制御積分項							*/
															/* 積分出力を制限(垂下特性なし)					*/
				}
				else
				{
					f4_vd_inv0_ctrli	= (f4)(0.0);
				}

				f4_temp_2					= (f4_vd_inv0_ctrlp + f4_vd_inv0_ctrli);
				f4_vd_inv0_ctrl				= limit(f4_temp_2, f4_vdq_inv0_ctrl_max, -f4_vdq_inv0_ctrl_max);
															/* d軸電流制御出力								*/

				/* q軸電流制御 */
				f4_vq_inv0_ctrlp    		= f4_iq_inv0_ctrlperr * f4_kp_inv0_iqctrl;
															/* q軸電流制御比例項							*/

				if(1 == u1_flag_enable_inv0_kictrl)			/* 積分制御が許可状態							*/
				{
					f4_vq_inv0_ctrli   	= f4_vq_inv0_ctrli + (f4_ki_inv0_iqctrl * f4_iq_inv0_ctrlierr);
					f4_vq_inv0_ctrli	= limit(f4_vq_inv0_ctrli, f4_vdq_inv0_ctrl_max, -f4_vdq_inv0_ctrl_max);
															/* q軸電流制御積分項							*/
															/* 積分出力を制限(垂下特性あり)					*/
				}
				else
				{
					f4_vq_inv0_ctrli	= (f4)(0.0);
				}

				f4_temp_2					= f4_vq_inv0_ctrlp + f4_vq_inv0_ctrli;
				f4_vq_inv0_ctrl				= limit(f4_temp_2, f4_vdq_inv0_ctrl_max, -f4_vdq_inv0_ctrl_max);
																/* q軸電流制御出力								*/

			}

		}
		else if(100 == u1_flag_inv0_adj) /* IM電流測定モード */
		{
			f4_vdq_inv0_ctrl_max_adj				= f4_vdc_inv0_lpf * ((f4)(0.707106));

			if(u1_flag_inv0_status_vdq_max == 1) /* 電圧制限時 */
			{

				u1_flag_inv0_status_idqctrl		= 2;	/*電圧制限時 + 電流制御*/

				/* d軸電流制御 */

				if(1 == u1_flag_enable_inv0_kictrl)			/* 積分制御が許可状態							*/
				{
					if(f4_vd_inv0_ref > (f4)(0.0)) /* 正 */
					{
						if(f4_id_inv0_ctrlierr < (f4)(0.0))
						{
							f4_vd_inv0_ctrlp    		= f4_id_inv0_ctrlperr * f4_kp_inv0_idctrl;
															/* d軸電流制御比例項							*/
							f4_vd_inv0_ctrli	= f4_vd_inv0_ctrli + (f4_ki_inv0_idctrl * f4_id_inv0_ctrlierr);
							f4_vd_inv0_ctrli	= limit(f4_vd_inv0_ctrli, f4_vdq_inv0_ctrl_max_adj, -f4_vdq_inv0_ctrl_max_adj);
															/* d軸電流制御積分項							*/
															/* 積分出力を制限(垂下特性なし)					*/
						}
						else
						{
							/* 電圧制限時は大きさが大きくなる方向へのPI制御はしない */
						}
					}
					else /* 負 */
					{
						if(f4_id_inv0_ctrlierr > (f4)(0.0))
						{
							f4_vd_inv0_ctrlp    		= f4_id_inv0_ctrlperr * f4_kp_inv0_idctrl;
															/* d軸電流制御比例項							*/
							f4_vd_inv0_ctrli	= f4_vd_inv0_ctrli + (f4_ki_inv0_idctrl * f4_id_inv0_ctrlierr);
							f4_vd_inv0_ctrli	= limit(f4_vd_inv0_ctrli, f4_vdq_inv0_ctrl_max_adj, -f4_vdq_inv0_ctrl_max_adj);
															/* d軸電流制御積分項							*/
															/* 積分出力を制限(垂下特性なし)					*/
						}
						else
						{
							/* 電圧制限時は大きさが大きくなる方向へのPI制御はしない */
						}
					}

				}
				else
				{
					f4_vd_inv0_ctrlp    		= f4_id_inv0_ctrlperr * f4_kp_inv0_idctrl;
															/* d軸電流制御比例項							*/
					f4_vd_inv0_ctrli	= (f4)(0.0);
				}

				f4_temp_2					= (f4_vd_inv0_ctrlp + f4_vd_inv0_ctrli);
				f4_vd_inv0_ctrl				= limit(f4_temp_2, f4_vdq_inv0_ctrl_max_adj, -f4_vdq_inv0_ctrl_max_adj);
															/* d軸電流制御出力								*/

				/* q軸電流制御 */


				if(1 == u1_flag_enable_inv0_kictrl)			/* 積分制御が許可状態							*/
				{
					if(f4_vq_inv0_ref > (f4)(0.0)) /* 正 */
					{
						if(f4_iq_inv0_ctrlierr < (f4)(0.0))
						{
							f4_vq_inv0_ctrlp    		= f4_iq_inv0_ctrlperr * f4_kp_inv0_iqctrl;
															/* q軸電流制御比例項							*/
							f4_vq_inv0_ctrli   	= f4_vq_inv0_ctrli + (f4_ki_inv0_iqctrl * f4_iq_inv0_ctrlierr);
							f4_vq_inv0_ctrli	= limit(f4_vq_inv0_ctrli, f4_vdq_inv0_ctrl_max_adj, -f4_vdq_inv0_ctrl_max_adj);
															/* q軸電流制御積分項							*/
															/* 積分出力を制限(垂下特性あり)					*/
						}
						else
						{
							/* 電圧制限時は大きさが大きくなる方向へのPI制御はしない */
						}
					}
					else
					{
						if(f4_iq_inv0_ctrlierr > (f4)(0.0))
						{
							f4_vq_inv0_ctrlp    		= f4_iq_inv0_ctrlperr * f4_kp_inv0_iqctrl;
															/* q軸電流制御比例項							*/
							f4_vq_inv0_ctrli   	= f4_vq_inv0_ctrli + (f4_ki_inv0_iqctrl * f4_iq_inv0_ctrlierr);
							f4_vq_inv0_ctrli	= limit(f4_vq_inv0_ctrli, f4_vdq_inv0_ctrl_max_adj, -f4_vdq_inv0_ctrl_max_adj);
															/* q軸電流制御積分項							*/
															/* 積分出力を制限(垂下特性あり)					*/
						}
						else
						{
							/* 電圧制限時は大きさが大きくなる方向へのPI制御はしない */
						}
					}
				}
				else
				{
					f4_vq_inv0_ctrlp    		= f4_iq_inv0_ctrlperr * f4_kp_inv0_iqctrl;
															/* q軸電流制御比例項							*/
					f4_vq_inv0_ctrli	= (f4)(0.0);
				}

				f4_temp_2					= f4_vq_inv0_ctrlp + f4_vq_inv0_ctrli;
				f4_vq_inv0_ctrl				= limit(f4_temp_2, f4_vdq_inv0_ctrl_max_adj, -f4_vdq_inv0_ctrl_max_adj);
																/* q軸電流制御出力								*/

			}
			else
			{
				u1_flag_inv0_status_idqctrl		= 4;	/*	通常領域 + 電流制御*/

				/* d軸電流制御 */
				f4_vd_inv0_ctrlp    		= f4_id_inv0_ctrlperr * f4_kp_inv0_idctrl;
															/* d軸電流制御比例項							*/

				if(1 == u1_flag_enable_inv0_kictrl)			/* 積分制御が許可状態							*/
				{
					f4_vd_inv0_ctrli	= f4_vd_inv0_ctrli + (f4_ki_inv0_idctrl * f4_id_inv0_ctrlierr);
					f4_vd_inv0_ctrli	= limit(f4_vd_inv0_ctrli, f4_vdq_inv0_ctrl_max_adj, -f4_vdq_inv0_ctrl_max_adj);
															/* d軸電流制御積分項							*/
															/* 積分出力を制限(垂下特性なし)					*/
				}
				else
				{
					f4_vd_inv0_ctrli	= (f4)(0.0);
				}

				f4_temp_2					= (f4_vd_inv0_ctrlp + f4_vd_inv0_ctrli);
				f4_vd_inv0_ctrl				= limit(f4_temp_2, f4_vdq_inv0_ctrl_max_adj, -f4_vdq_inv0_ctrl_max_adj);
															/* d軸電流制御出力								*/

				/* q軸電流制御 */
				f4_vq_inv0_ctrlp    		= f4_iq_inv0_ctrlperr * f4_kp_inv0_iqctrl;
															/* q軸電流制御比例項							*/

				if(1 == u1_flag_enable_inv0_kictrl)			/* 積分制御が許可状態							*/
				{
					f4_vq_inv0_ctrli   	= f4_vq_inv0_ctrli + (f4_ki_inv0_iqctrl * f4_iq_inv0_ctrlierr);
					f4_vq_inv0_ctrli	= limit(f4_vq_inv0_ctrli, f4_vdq_inv0_ctrl_max_adj, -f4_vdq_inv0_ctrl_max_adj);
															/* q軸電流制御積分項							*/
															/* 積分出力を制限(垂下特性あり)					*/
				}
				else
				{
					f4_vq_inv0_ctrli	= (f4)(0.0);
				}

				f4_temp_2					= f4_vq_inv0_ctrlp + f4_vq_inv0_ctrli;
				f4_vq_inv0_ctrl				= limit(f4_temp_2, f4_vdq_inv0_ctrl_max_adj, -f4_vdq_inv0_ctrl_max_adj);
																/* q軸電流制御出力								*/

			}

		}
		else
		{
			u1_flag_inv0_status_idqctrl		= 4;	/*	通常領域 + 電流制御*/
			
			f4_vdq_inv0_ctrl_max_adj				= f4_vdc_inv0_lpf * ((f4)(0.707106));

			/* d軸電流制御 */
			f4_vd_inv0_ctrlp    		= f4_id_inv0_ctrlperr * f4_kp_inv0_idctrl;
																/* d軸電流制御比例項							*/
			f4_vd_inv0_ctrli   		= f4_vd_inv0_ctrli + (f4_ki_inv0_idctrl * f4_id_inv0_ctrlierr);
			f4_vd_inv0_ctrli		= limit(f4_vd_inv0_ctrli, f4_vdq_inv0_ctrl_max_adj, -f4_vdq_inv0_ctrl_max_adj);
																/* d軸電流制御積分項							*/
																/* 積分出力を制限								*/
			f4_temp_2					= (f4_vd_inv0_ctrlp + f4_vd_inv0_ctrli);
			f4_vd_inv0_ctrl				= limit(f4_temp_2, f4_vdq_inv0_ctrl_max_adj, -f4_vdq_inv0_ctrl_max_adj);
																/* d軸電流制御出力								*/

			/* q軸電流制御 */
			f4_vq_inv0_ctrlp    		= f4_iq_inv0_ctrlperr * f4_kp_inv0_iqctrl;
																/* q軸電流制御比例項							*/

			f4_vq_inv0_ctrli   		= f4_vq_inv0_ctrli + (f4_ki_inv0_iqctrl * f4_iq_inv0_ctrlierr);
			f4_vq_inv0_ctrli		= limit(f4_vq_inv0_ctrli, f4_vdq_inv0_ctrl_max_adj, -f4_vdq_inv0_ctrl_max_adj);
																/* q軸電流制御積分項							*/
																/* 積分出力を制限								*/
			f4_temp_2					= f4_vq_inv0_ctrlp + f4_vq_inv0_ctrli;
			f4_vq_inv0_ctrl				= limit(f4_temp_2, f4_vdq_inv0_ctrl_max_adj, -f4_vdq_inv0_ctrl_max_adj);
																/* q軸電流制御出力								*/
		}
		/*============================================================*/

	}
	else														/* PWM停止状態									*/
	{
		u1_flag_inv0_status_idqctrl		= 4;	/*	通常領域 + 電流制御*/

		f4_vd_inv0_ctrl				= ((f4)(0.));				/* 電流制御パラメータの初期化					*/
		f4_vd_inv0_ctrlp			= ((f4)(0.));
		f4_vd_inv0_ctrli			= ((f4)(0.));

		f4_vq_inv0_ctrl				= ((f4)(0.));				/* 電流制御パラメータの初期化					*/
		f4_vq_inv0_ctrlp			= ((f4)(0.));
		f4_vq_inv0_ctrli			= ((f4)(0.));

		f4_id_inv0_ctrliref				= (f4)(0.0);
		f4_iq_inv0_ctrliref				= (f4)(0.0);

		/* 配列初期化		*/
		for (u1_cnt_idq_inv0_ctrli_delay = 0; u1_cnt_idq_inv0_ctrli_delay < u1_cnt_idq_inv0_ctrli_delay_max; u1_cnt_idq_inv0_ctrli_delay++)
		{

			f4_id_inv0_ctrliref_array[u1_cnt_idq_inv0_ctrli_delay]			= (f4)(0.0);
			f4_iq_inv0_ctrliref_array[u1_cnt_idq_inv0_ctrli_delay]			= (f4)(0.0);
		}

		u1_cnt_idq_inv0_ctrli_delay		= 0;


	}
	/*============================================================*/

	/*============================================================*/
	/*     					 非干渉制御演算  				      */
	/*============================================================*/
	if(0 == u1_flag_inv0_adj)									/* パラメータ測定が無効							*/
	{
		/* 非干渉電圧演算			*/
		f4_vd_inv0_rs					= f4_r1_inv0_cmp * f4_id_inv0_ref;	/* d軸電圧抵抗分								*/
		f4_vq_inv0_rs					= f4_r1_inv0_cmp * f4_iq_inv0_ref;	/* q軸電圧抵抗分								*/

		f4_vd_inv0_emf					= -f4_winv_inv0_ref * f4_ls_inv0 * f4_iq_inv0_ref;
																/* d軸電圧速度起電力分							*/
		f4_vq_inv0_emf					= f4_winv_inv0_ref * (f4_ls_inv0 * f4_id_inv0_ref + f4_fd_inv0_ref);
																/* q軸電圧速度起電力分							*/

		/* dq軸電圧指令値			*/
		f4_temp_1						= f4_vd_inv0_ctrl + f4_vd_inv0_emf + f4_vd_inv0_rs;
		f4_vd_inv0_ref_tmp				= limit(f4_temp_1, f4_vdq_inv0_max, -f4_vdq_inv0_max);
																/* d軸電圧指令値(制限前)						*/

		f4_temp_1						= f4_vq_inv0_ctrl + f4_vq_inv0_emf + f4_vq_inv0_rs;
		f4_vq_inv0_ref_tmp				= limit(f4_temp_1, f4_vdq_inv0_max, -f4_vdq_inv0_max);
																/* q軸電圧指令値(制限前)						*/

	}
	else														/* 測定モード									*/
	{
		/* d軸電圧非干渉制御項	*/
		f4_vd_inv0_emf				= ((f4)(0.));

		/* q軸電圧非干渉制御項	*/
		f4_vq_inv0_emf				= ((f4)(0.));


		if(1 == u1_flag_inv0_adj)								/* 電圧制御誤差計測モード						*/
		{
			/* 電圧降下分演算		*/
			f4_vd_inv0_rs			= f4_rs_inv0_adj * f4_id_inv0_ref;
																/* d軸抵抗電圧									*/
			f4_vq_inv0_rs			= f4_rs_inv0_adj * f4_iq_inv0_ref;
																/* q軸抵抗電圧									*/

			/* dq軸電圧指令値		*/
			f4_temp_1				= f4_vd_inv0_ctrl + f4_vd_inv0_rs;
			f4_vd_inv0_ref_tmp  	= limit(f4_temp_1, f4_vdq_inv0_max, -f4_vdq_inv0_max);
																/* d軸電圧指令値(制限前)						*/
			f4_temp_1				= f4_vq_inv0_ctrl + f4_vq_inv0_rs;
			f4_vq_inv0_ref_tmp  	= limit(f4_temp_1, f4_vdq_inv0_max, -f4_vdq_inv0_max);
	 															/* q軸電圧指令値(制限前)						*/
		}
		else if(6 == u1_flag_inv0_adj)							/* CVCF駆動モード								*/
		{
			/* 電圧降下分演算		*/
			f4_vd_inv0_rs			= ((f4)(0.));
			f4_vq_inv0_rs			= ((f4)(0.));

			/* dq軸電圧指令値		*/
			f4_vd_inv0_ref_tmp		= f4_vd_inv0_adj_ref;
			f4_vq_inv0_ref_tmp		= f4_vq_inv0_adj_ref;
		}
		else if(7 == u1_flag_inv0_adj)							/* d軸インダクタンス測定(モータベンチ)			*/
		{
			/* 非干渉電圧演算			*/
			f4_vd_inv0_emf				= ((f4)(0.));
																/* d軸逆起電圧									*/
			f4_vq_inv0_emf				= ((f4)(0.));
																/* q軸逆起電圧									*/
			f4_vd_inv0_rs				= f4_r1_inv0_cmp * f4_id_inv0_ref;
																/* d軸抵抗電圧									*/
			f4_vq_inv0_rs				= f4_r1_inv0_cmp * f4_iq_inv0_ref;
																/* q軸抵抗電圧									*/

			/* dq軸電圧指令値			*/
			f4_temp_1					= f4_vd_inv0_ctrl + f4_vd_inv0_emf + f4_vd_inv0_rs;
			f4_vd_inv0_ref_tmp  		= limit(f4_temp_1, f4_vdq_inv0_max, -f4_vdq_inv0_max);
																/* d軸電圧指令値(制限前)						*/
			f4_temp_1					= f4_vq_inv0_ctrl + f4_vq_inv0_emf + f4_vq_inv0_rs;
			f4_vq_inv0_ref_tmp  	   	= limit(f4_temp_1, f4_vdq_inv0_max, -f4_vdq_inv0_max);
		 														/* q軸電圧指令値(制限前)						*/
		}
		else if(8 == u1_flag_inv0_adj)							/* q軸インダクタンス測定(モータベンチ)			*/
		{
			/* 非干渉電圧演算			*/
			f4_vd_inv0_emf				= ((f4)(0.));
																/* d軸逆起電圧									*/
			f4_vq_inv0_emf				= ((f4)(0.));
																/* q軸逆起電圧									*/
			f4_vd_inv0_rs				= f4_r1_inv0_cmp * f4_id_inv0_ref;
																/* d軸抵抗電圧									*/
			f4_vq_inv0_rs				= f4_r1_inv0_cmp * f4_iq_inv0_ref;
																/* q軸抵抗電圧									*/

			/* dq軸電圧指令値			*/
			f4_temp_1					= f4_vd_inv0_ctrl + f4_vd_inv0_emf + f4_vd_inv0_rs;
			f4_vd_inv0_ref_tmp  		= limit(f4_temp_1, f4_vdq_inv0_max, -f4_vdq_inv0_max);
																/* d軸電圧指令値(制限前)						*/
			f4_temp_1					= f4_vq_inv0_ctrl + f4_vq_inv0_emf + f4_vq_inv0_rs;
			f4_vq_inv0_ref_tmp  	   	= limit(f4_temp_1, f4_vdq_inv0_max, -f4_vdq_inv0_max);
		 														/* q軸電圧指令値(制限前)						*/
		}
		else if(9 == u1_flag_inv0_adj)							/* エンコーダオフセット測定(モータベンチ)		*/
		{
			/* 非干渉電圧演算			*/
			f4_vd_inv0_emf				= ((f4)(0.));
																/* d軸逆起電圧									*/
			f4_vq_inv0_emf				= ((f4)(0.));
																/* q軸逆起電圧									*/
			f4_vd_inv0_rs				= f4_r1_inv0_cmp * f4_id_inv0_ref;
																/* d軸抵抗電圧									*/
			f4_vq_inv0_rs				= f4_r1_inv0_cmp * f4_iq_inv0_ref;
																/* q軸抵抗電圧									*/

			/* dq軸電圧指令値			*/
			f4_temp_1					= f4_vd_inv0_ctrl + f4_vd_inv0_emf + f4_vd_inv0_rs;
			f4_vd_inv0_ref_tmp  		= limit(f4_temp_1, f4_vdq_inv0_max, -f4_vdq_inv0_max);
																/* d軸電圧指令値(制限前)						*/
			f4_temp_1					= f4_vq_inv0_ctrl + f4_vq_inv0_emf + f4_vq_inv0_rs;
			f4_vq_inv0_ref_tmp  	   	= limit(f4_temp_1, f4_vdq_inv0_max, -f4_vdq_inv0_max);
		 														/* q軸電圧指令値(制限前)						*/
		}
		else if(101 == u1_flag_inv0_adj)							/* IM用CV駆動モード								*/
		{

			/* 非干渉電圧演算			*/
			f4_vd_inv0_emf				= ((f4)(0.));
																/* d軸逆起電圧									*/
			f4_vq_inv0_emf				= ((f4)(0.));
																/* q軸逆起電圧									*/
			/* 電圧降下分演算		*/
			f4_vd_inv0_rs			= ((f4)(0.));
			f4_vq_inv0_rs			= ((f4)(0.));

			/* dq軸電圧指令値		*/
			f4_vd_inv0_ref_tmp		= f4_vd_inv0_adj_ref_tmp;
			f4_vq_inv0_ref_tmp		= f4_vq_inv0_adj_ref;
		}
		else													/* インダクタンス測定モード						*/
		{														/* オープンループ制御モード						*/

			/* 非干渉電圧演算			*/
			f4_vd_inv0_emf				= ((f4)(0.));
																/* d軸逆起電圧									*/
			f4_vq_inv0_emf				= ((f4)(0.));
																/* q軸逆起電圧									*/
			/* 電圧降下分演算		*/
			f4_vd_inv0_rs			= f4_r1_inv0_cmp * f4_id_inv0_ref;
																/* d軸抵抗電圧									*/
			f4_vq_inv0_rs			= f4_r1_inv0_cmp * f4_iq_inv0_ref;
																/* q軸抵抗電圧									*/

			/* dq軸電圧指令値		*/
			f4_temp_1				= f4_vd_inv0_ctrl + f4_vd_inv0_rs + f4_vd_inv0_plid;
			f4_vd_inv0_ref_tmp  	= limit(f4_temp_1, f4_vdq_inv0_max, -f4_vdq_inv0_max);
																/* d軸電圧指令値(制限前)						*/
			f4_temp_1				= f4_vq_inv0_ctrl + f4_vq_inv0_rs + f4_vq_inv0_plid;
			f4_vq_inv0_ref_tmp  	= limit(f4_temp_1, f4_vdq_inv0_max, -f4_vdq_inv0_max);
	 															/* q軸電圧指令値(制限前)						*/
		}

	}
	/*============================================================*/

	/*============================================================*/
	/*  	   				 dq軸電圧指令値制限　		          */
	/*============================================================*/
	/* ベクトル制御									*/
	{
		f4	t_f4_vd_inv0_max_tmp;								/* Unit=A:d軸電圧制限変数						*/
		f4	t_f4_vq_inv0_max_tmp;								/* Unit=A:q軸電圧制限変数						*/

		/* 電圧指令値ベクトル演算	*/
		t_f4_vd_inv0_max_tmp		= f4_vd_inv0_ref_tmp;
		t_f4_vq_inv0_max_tmp		= f4_vq_inv0_ref_tmp;

		if((f4_vd_inv0_ref_tmp > ((f4)(0.0)))||(f4_vd_inv0_ref_tmp < ((f4)(0.0))))
		{
			f4_wt_inv0_vdq_tmp				= atan2f(f4_vq_inv0_ref_tmp, f4_vd_inv0_ref_tmp);
																	/* 位相進み角									*/
		}
		else
		{
			if(f4_vq_inv0_ref_tmp > ((f4)(0.0)))
			{
				f4_wt_inv0_vdq_tmp			= ((f4)(TWOPI / 4.0));
			}
			else
			{
				f4_wt_inv0_vdq_tmp			= -((f4)(TWOPI / 4.0));
			}
		}

		f4_temp_1					= t_f4_vd_inv0_max_tmp * t_f4_vd_inv0_max_tmp;
																/* vd_ref^2を演算								*/
		f4_temp_2					= t_f4_vq_inv0_max_tmp * t_f4_vq_inv0_max_tmp;
																/* vq_ref^2を演算								*/
		f4_vdq_inv0_ref				= sqrtf(f4_temp_1 + f4_temp_2);
																 /* 電圧指令値ベクトル							*/
																/* √(vd^2+vq^2)を演算							*/
		/* 電圧ベクトル制限			*/
		f4_vdq_inv0_max				= f4_vdc_inv0_ad * ((f4)(0.707106)) * f4_k_inv0_vdq_max;
																/* k_vdq_max = 1.15%							*/
																/* 0.707106 = 1/√2(実効値で演算)				*/

		{
			if(f4_vdq_inv0_ref > f4_vdq_inv0_max)					/* 電圧ベクトル制限を超える場合					*/
			{														/* => q軸電圧を制限						*/

				u1_flag_inv0_status_vdq_max			= 1;			/* 電圧ベクトル制限中							*/

				// f4_vdq_inv0_ref			= f4_vdq_inv0_max;			/* dq軸電圧指令値ベクトルを制限値に合わせる		*/

				// f4_vd_inv0_ref			= f4_vdq_inv0_ref * cosf(f4_wt_inv0_vdq_tmp);
				// f4_vq_inv0_ref			= f4_vdq_inv0_ref * sinf(f4_wt_inv0_vdq_tmp);

				// if(1 == u1_flag_enable_inv0_kictrl)					/* 積分制御が許可状態							*/
				// {
					// f4_vd_inv0_ctrli	= f4_vd_inv0_ref - (f4_vd_inv0_emf + f4_vd_inv0_rs) - f4_vd_inv0_ctrlp;
																	// /* 積分値の飽和補正								*/
					// f4_vd_inv0_ctrl		= f4_vd_inv0_ctrlp + f4_vd_inv0_ctrli;
				// }
				// else{}

				// if(1 == u1_flag_enable_inv0_kictrl)					/* 積分制御が許可状態							*/
				// {
					// f4_vq_inv0_ctrli	= f4_vq_inv0_ref - (f4_vq_inv0_rs + f4_vq_inv0_emf) - f4_vq_inv0_ctrlp;
																	// /* 積分値の飽和補正								*/
					// f4_vq_inv0_ctrl		= f4_vq_inv0_ctrlp + f4_vq_inv0_ctrli;
				// }
				// else{}

				f4_vd_inv0_ref			= t_f4_vd_inv0_max_tmp;		/* d軸電圧指令値はそのまま設定					*/
				f4_vq_inv0_ref			= t_f4_vq_inv0_max_tmp;		/* q軸電圧指令値をそのまま設定					*/

			}
			else													/* 電圧ベクトル制限を超えない場合				*/
			{
				u1_flag_inv0_status_vdq_max			= 0;			/* 電圧ベクトル未制限							*/

				f4_vd_inv0_ref			= t_f4_vd_inv0_max_tmp;		/* d軸電圧指令値はそのまま設定					*/
				f4_vq_inv0_ref			= t_f4_vq_inv0_max_tmp;		/* q軸電圧指令値をそのまま設定					*/
			}
		}
	}

	if((f4_vd_inv0_ref > ((f4)(0.0)))||(f4_vd_inv0_ref < ((f4)(0.0))))
	{
		f4_wt_inv0_vdq				= atan2f(f4_vq_inv0_ref, f4_vd_inv0_ref);
																/* 位相進み角									*/
	}
	else
	{
		if(f4_vq_inv0_ref > ((f4)(0.0)))
		{
			f4_wt_inv0_vdq			= ((f4)(TWOPI / 4.0));
		}
		else
		{
			f4_wt_inv0_vdq			= -((f4)(TWOPI / 4.0));
		}
	}
	/*============================================================*/

	/*============================================================*/
	/*					PWM変調ゲインテーブル演算				　*/
	/*============================================================*/
	/* 変調率演算				*/
	f4_m_inv0_ref					= ((f4)(1.4142135)) * f4_vdq_inv0_ref * f4_dvdc_inv0_ad;
																/* PWM変調率(空間ベクトル)						*/
	f4_temp_1						= f4_m_inv0_ref - f4_m_inv0_lpf;
	f4_m_inv0_lpf					= f4_m_inv0_lpf + (f4_wclpf_inv0_m * f4_temp_1 * f4_ts_inv0_ctrl);
																/* 変調率LPF値									*/

	/* PWM変調ゲイン			*/
	if(f4_m_inv0_lpf > ((f4)(1.0)))								/* 過変調領域									*/
	{
		u4	t_u4_h9bit;											/* テーブル参照データ上位9bit					*/
		u4	t_u4_l6bit;											/* テーブル参照データ下位6bit					*/
		u4  t_u4_get_bit;										/* テーブル増分カウンタ							*/
		f4	t_f4_lower, t_f4_upper, t_f4_lcmp;					/* テーブル取得データ							*/

		u4_n_k_inv0_modu			= ((u4)((f4_m_inv0_lpf-((f4)(1.0))) * 262144.0));
																/* LSB=0.125/2^15(262144=32767/0.125)			*/
		if(u4_n_k_inv0_modu > 32767) {u4_n_k_inv0_modu = 32767;}/* 9bitテーブル参照のためのカウンタ演算			*/
		else{}

		t_u4_h9bit					= ((u4_n_k_inv0_modu>>6) & 0x1ff);
																/* 上位9ビット									*/
		t_u4_l6bit					= (u4_n_k_inv0_modu & 0x3f);/* 下位6ビット									*/

		t_f4_upper					= f4_k_pwm_tbl[t_u4_h9bit];	/* PWMゲインテーブルを参照（ベース）			*/

		t_u4_get_bit				= t_u4_h9bit + 1;			/* PWMゲインテーブル増分カウンタの設定			*/
		if(t_u4_get_bit < 511)
		{
			t_f4_lower 				= f4_k_pwm_tbl[t_u4_get_bit];
																/*  PWMゲインテーブルを参照（増分）				*/
			t_f4_lcmp				= (((t_f4_upper - t_f4_lower) * ((f4)(t_u4_l6bit)))*((f4)(0.015625)));
																/* 線形補間分演算								*/
		}
		else
		{
			t_f4_lcmp				= 0;						/* 線形補間を行わない							*/
		}

		f4_k_inv0_modu				= t_f4_upper - t_f4_lcmp;	/* PWM変調ゲイン								*/
		if(f4_k_inv0_modu > f4_k_inv0_modu_max)
		{
			f4_k_inv0_modu			= f4_k_inv0_modu_max;
		}
		else{}
	}
	else														/* 過変調領域以下								*/
	{
		f4_k_inv0_modu 				= ((f4)(1.0));				/* PWM変調ゲインテーブルを1に設定				*/
	}

	if(u1_flag_enable_inv0_dk_modu == 1)						/* 過変調領域におkる電流制御ゲイン低減許可		*/
	{
		if(f4_k_inv0_modu > ((f4)(1.)))
		{
			/* 過変調領域で電流制御ゲインを減衰させる		*/
			f4_dk_inv0_modu_kp					= ((f4)(1.)) / f4_k_inv0_modu;
			f4_dk_inv0_modu_ki					= f4_dk_inv0_modu_kp * f4_dk_inv0_modu_kicmp;
		}
		else
		{
			f4_dk_inv0_modu_kp					= ((f4)(1.));
			f4_dk_inv0_modu_ki			= ((f4)(1.));
		}
	}
	else														/* 過変調領域におkる電流制御ゲイン低減禁止		*/
	{
		f4_dk_inv0_modu_kp					= ((f4)(1.));
		f4_dk_inv0_modu_ki			= ((f4)(1.));
	}
	/*============================================================*/

	/*============================================================*/
	/*						電圧制御モード切替					  */
	/*============================================================*/
	u1_flag_inv0_modevctrl_tmp		= u1_flag_inv0_modevctrl;

	if(0 == u1_flag_inv0_adj)									/* パラメータ測定が無効							*/
	{

		if(0 == u1_flag_inv0_modevctrl)							/* SVPWM制御モード時							*/
		{
				/* => 1pulse				*/
				if(f4_m_inv0_lpf > f4_lev_m_inv0_1pulse)		/* 1パルス切替レベル以上						*/
				{
					u2_cnt_inv0_vctrlmode++;
					if((u2_cnt_inv0_vctrlmode > u2_cnt_inv0_1pulsemode)&&(1 == u1_flag_enable_inv0_1pulse))
					{
						u1_flag_inv0_modevctrl		= 1;
															/* =>1パルス制御モードへ						*/
						u2_cnt_inv0_vctrlmode		= 0;

					}
					else{}
				}
				else
				{
					if(u2_cnt_inv0_vctrlmode > 0)
					{
						u2_cnt_inv0_vctrlmode--;
					}
					else{}
				}
				u1_flag_inv0_modetiming				= 0;
		}
		else													/* 1パルス制御モード時							*/
		{
			if(1 == u1_flag_inv0_modetiming)					/* 60度のエッジ毎でモードタイミング生成			*/
			{
				/* =>SVPWM					*/
				if(f4_m_inv0_lpf < f4_lev_m_inv0_svpwm)
				{
					u2_cnt_inv0_vctrlmode++;
					if(u2_cnt_inv0_vctrlmode > u2_cnt_inv0_svpwmmode)
					{
						u1_flag_inv0_modevctrl		= 0;		/* =>SVPWM制御モードへ							*/
						u2_cnt_inv0_vctrlmode		= 0;
					}
					else{}
				}
				else
				{
					if(u2_cnt_inv0_vctrlmode > 0)
					{
						u2_cnt_inv0_vctrlmode--;
					}
					else{}
				}

				if(0 == u1_flag_enable_inv0_1pulse)				/* 1パルス制御が禁止された場合					*/
				{
					u1_flag_inv0_modevctrl	= 0;				/* =>SVPWM制御モードへ							*/
					u2_cnt_inv0_vctrlmode	= 0;
				}
				else{}

				u1_flag_inv0_modetiming		= 0;
			}
			else{}
		}
	}
	else														/* パラメータ測定が有効							*/
	{
		u1_flag_inv0_modevctrl	= 0;							/* =>SVPWM制御モードへ							*/
		u2_cnt_inv0_vctrlmode	= 0;
	}
	/*============================================================*/

	/*============================================================*/
	/*						電圧位相演算						  */
	/*============================================================*/
	{
		/* 電圧位相角				*/
		if(0 == u1_flag_inv0_adj)								/* パラメータ測定が無効							*/
		{
			f4_wt_inv0_delay		= ((f4)(1.5)) * f4_winv_inv0_ref * f4_ts_inv0_ctrl;
		}
		else
		{
			if((7 != u1_flag_inv0_adj)&&(8 != u1_flag_inv0_adj)&&(9 != u1_flag_inv0_adj))
			{													/* インダクタンス測定(モータベンチ以外)			*/
				f4_wt_inv0_delay	= ((f4)(0.));				/* 測定モードでは補償しない						*/
			}
			else
			{
				f4_wt_inv0_delay	= ((f4)(1.5)) * f4_winv_inv0_ref * f4_ts_inv0_ctrl;

			}
		}

		f4_wt_inv0_svctrl			= f4_wt_inv0_dq + f4_wt_inv0_delay;
		if(f4_wt_inv0_svctrl > f4_TWOPI)		{f4_wt_inv0_svctrl	= f4_wt_inv0_svctrl - f4_TWOPI;}
		else if(f4_wt_inv0_svctrl < ((f4)(0.)))	{f4_wt_inv0_svctrl	= f4_wt_inv0_svctrl + f4_TWOPI;}
		else{}													/* 1.5は、制御遅れ補償							*/

		f4_sin_inv0_wtsvctrl		= sinf(f4_wt_inv0_svctrl);
		f4_cos_inv0_wtsvctrl		= cosf(f4_wt_inv0_svctrl);
	}

	/* 制御遅れ補正値			*/
	f4_temp_2						= f4_wt_inv0_delay * ((f4)(DEF_2_31 / TWOPI));
	s4_wt_inv0_delay_2pi_2_31		= ((s4)(f4_temp_2));		/* float => intにキャスト						*/

	s4_wt_inv0_vdq_2pi_2_31			= ((s4)(f4_wt_inv0_vdq * ((f4)(DEF_2_31 / TWOPI))));

	/* dq軸角度					*/
	f4_temp_1						= f4_wt_inv0_dq;
	if(f4_temp_1 > f4_TWOPI)		{f4_temp_1	= f4_temp_1 - f4_TWOPI;}
	else if(f4_temp_1 < ((f4)(0.)))	{f4_temp_1	= f4_temp_1 + f4_TWOPI;}
	else{}														/* 0<θ<2πに変更								*/

	f4_temp_2						= f4_temp_1 * ((f4)(DEF_2_31 / TWOPI));
	s4_wt_inv0_dq_2pi_2_31			= ((s4)(f4_temp_2));		/* float => intにキャスト						*/

	/* 1パルス電圧位相角		*/
	f4_wt_inv0_1pulse_pwm			= f4_wt_inv0_dq + f4_wt_inv0_vdq + f4_wt_inv0_delay;

	if(f4_wt_inv0_1pulse_pwm > f4_TWOPI)
	{
		f4_temp_1					= f4_wt_inv0_1pulse_pwm * ((f4)(1.0/TWOPI));
		s4_temp_1					= (s4)(f4_temp_1);
		f4_wt_inv0_1pulse_pwm			= f4_wt_inv0_1pulse_pwm - (f4)(s4_temp_1) * ((f4)(TWOPI));
	}
	else if(f4_wt_inv0_1pulse_pwm < (f4)(0.))
	{
		f4_temp_1					= f4_wt_inv0_1pulse_pwm * ((f4)(1.0/TWOPI));
		s4_temp_1					= (s4)(f4_temp_1) - 1;
		f4_wt_inv0_1pulse_pwm			= f4_wt_inv0_1pulse_pwm - (f4)(s4_temp_1) * ((f4)(TWOPI));
	}
	else{}

	// s4_wt_inv0_1pulse_pwm_2pi_2_31	= s4_wt_inv0_dq_2pi_2_31 + s4_wt_inv0_vdq_2pi_2_31 + s4_wt_inv0_delay_2pi_2_31;

	f4_temp_1						= f4_wt_inv0_1pulse_pwm;
	f4_temp_2						= f4_temp_1 * ((f4)(DEF_2_31 / TWOPI));
	s4_wt_inv0_1pulse_pwm_2pi_2_31	= ((s4)(f4_temp_2));		/* float => intにキャスト						*/
	s4_wt_inv0_1pulse_pwm_2pi_2_31	&= 0x7FFFFFFF;				/* 2πリミット(0≦θ≦2π)						*/

	/*============================================================*/

}

/*===============================================================
+																+
+				Name:	void fb_pwm_inv0_idqctrl_init (void)	+
+			Function:	キャリア割込みインバータ初期化関数		+
+																+
+		Return Value:		No									+
+				date:		 10th Mar,2017						+
+																+
===============================================================*/
void fb_pwm_inv0_idqctrl_init (void)
{
	/*============================================================*/
	/*					   ローカル変数定義		　				  */
	/*============================================================*/
	f4		f4_temp_1;											/* テンポラリ変数(f4)							*/
	/*============================================================*/

	/*=============================================================*/
	/* 						モータパラメータ初期化 				   */
	/*=============================================================*/
	f4_pf_inv0						= ((f4)(PF_INV0));
	f4_dpf_inv0						= ((f4)(1.0/PF_INV0));

	f4_r1_inv0							= ((f4)(R1_INV0));
	f4_r2_inv0							= ((f4)(R2_INV0));
	f4_lm_inv0							= ((f4)(LM_INV0));
	f4_lm_inv0_const					= ((f4)(LM_INV0));
	f4_ls_inv0							= ((f4)(LS_INV0));

	u1_flag_lm_inv0_mode				= (u1)(LM_INV0_MODE);

	u1_flag_enable_inv0_r2_cmp			= (u1)(ENABLE_INV0_R2_CMP);
	u1_flag_enable_inv0_r1_cmp			= (u1)(ENABLE_INV0_R1_CMP);

	f4_tmp_inv0_r1						= ((f4)(TMP_INV0_R1));
	f4_tmp_inv0_r2						= ((f4)(TMP_INV0_R2));
	f4_r1_inv0_cmp						= f4_r1_inv0;
	f4_r2_inv0_cmp						= f4_r2_inv0;
	/*=============================================================*/

	/*=============================================================*/
	/* 						弱め磁束制御変数初期化				   */
	/*=============================================================*/
	f4_kp_inv0_vdqctrl				= ((f4)(KP_INV0_VDQCTRL));
	f4_ki_inv0_vdqctrl				= ((f4)(KI_INV0_VDQCTRL));

	f4_k_inv0_vdq_vctrl				= ((f4)(K_INV0_VDQ_VCTRL));
	f4_vdq_inv0_vctrl				= ((f4)(0.));

	f4_vdqctrl_inv0_err				= ((f4)(0.));

	f4_idq_inv0_vdqctrlp			= ((f4)(0.));
	f4_idq_inv0_vdqctrli			= ((f4)(0.));
	f4_idq_inv0_vdqctrl				= ((f4)(0.));
	f4_id_inv0_vdqctrl				= ((f4)(0.));
	f4_iq_inv0_vdqctrl				= ((f4)(0.));

	if((f4)(IDQ_INV0_VDQCTRL_MAX) < (f4)(IDQ_INV0_MAX))
	{
		f4_idq_inv0_vdqctrl_max			= (f4)(IDQ_INV0_VDQCTRL_MAX);
	}
	else
	{
		f4_idq_inv0_vdqctrl_max			= (f4)(IDQ_INV0_MAX);
	}
	/*=============================================================*/

	/*=============================================================*/
	/* 			　　		磁束指令値演算変数初期化			　 */
	/*=============================================================*/
	f4_fd_inv0_ref						= ((f4)(0.));
	f4_fq_inv0_ref						= ((f4)(0.));
	/*=============================================================*/

	/*=============================================================*/
	/* 						 dq軸電流変数初期化					   */
	/*=============================================================*/
	f4_id_inv0_ad					= ((f4)(0.));
	f4_iq_inv0_ad					= ((f4)(0.));

	f4_id_inv0_ref					= ((f4)(0.));
	f4_iq_inv0_ref					= ((f4)(0.));
	f4_idq_inv0_ref					= ((f4)(0.));

	f4_id_inv0_ref_min				= (f4)(ID_INV0_REF_MIN);
	f4_id_inv0_ref_max				= (f4)(ID_INV0_REF_MAX);

	f4_k_inv0_idq_cmp				= (f4)(0.0);
	f4_wt_inv0_idq_cmp				= (f4)(0.0);
	f4_sin_inv0_wtidq_cmp			= (f4)(0.0);
	f4_cos_inv0_wtidq_cmp			= (f4)(0.0);
	f4_id_inv0_ad_cmp				= (f4)(0.0);
	f4_iq_inv0_ad_cmp				= (f4)(0.0);
	/*=============================================================*/

	/*=============================================================*/
	/* 						dq軸電流PI制御変数初期化			   */
	/*=============================================================*/
	u1_flag_enable_inv0_kictrl		= ((u1)(ENABLE_INV0_KICTRL));

	/* 制御ゲイン&リミッタ	*/
	f4_kp_inv0_idq_cmp				= ((f4)(KP_INV0_IDQ_CTRL_MAX));
	f4_ki_inv0_idq_cmp				= ((f4)(KI_INV0_IDQ_CTRL_MAX));

	f4_vdq_inv0_ctrl_max			= ((f4)(VDQ_INV0_CTRL_MAX));
	f4_vdq_inv0_ctrl_max_adj		= ((f4)(0.0));
	/* 比例ゲイン垂下特性	*/
	f4_kp_inv0_idq_ctrl_max			= ((f4)(KP_INV0_IDQ_CTRL_MAX));
	f4_kp_inv0_idq_ctrl_min			= ((f4)(KP_INV0_IDQ_CTRL_MIN));

	f4_lev_m_kp_inv0_idq_ctrl_max	= ((f4)(LEV_M_KP_INV0_IDQ_CTRL_MAX));
	f4_lev_m_kp_inv0_idq_ctrl_min	= ((f4)(LEV_M_KP_INV0_IDQ_CTRL_MIN));

	f4_temp_1						= f4_lev_m_kp_inv0_idq_ctrl_min - f4_lev_m_kp_inv0_idq_ctrl_max;
	if(f4_temp_1 > ((f4)(0.)))
	{
		f4_a_kp_inv0_idq_cmp		= (f4_kp_inv0_idq_ctrl_min - f4_kp_inv0_idq_ctrl_max) / f4_temp_1;
	}
	else{}

	f4_b_kp_inv0_idq_cmp			= f4_kp_inv0_idq_ctrl_max - f4_a_kp_inv0_idq_cmp * f4_lev_m_kp_inv0_idq_ctrl_max;

	/* 積分ゲイン垂下特性	*/
	f4_ki_inv0_idq_ctrl_max			= ((f4)(KI_INV0_IDQ_CTRL_MAX));
	f4_ki_inv0_idq_ctrl_min			= ((f4)(KI_INV0_IDQ_CTRL_MIN));

	f4_lev_m_ki_inv0_idq_ctrl_max	= ((f4)(LEV_M_KI_INV0_IDQ_CTRL_MAX));
	f4_lev_m_ki_inv0_idq_ctrl_min	= ((f4)(LEV_M_KI_INV0_IDQ_CTRL_MIN));

	f4_temp_1						= f4_lev_m_ki_inv0_idq_ctrl_min - f4_lev_m_ki_inv0_idq_ctrl_max;
	if(f4_temp_1 > ((f4)(0.)))
	{
		f4_a_ki_inv0_idq_cmp		= (f4_ki_inv0_idq_ctrl_min - f4_ki_inv0_idq_ctrl_max) / f4_temp_1;
	}
	else{}

	f4_b_ki_inv0_idq_cmp			= f4_ki_inv0_idq_ctrl_max - f4_a_ki_inv0_idq_cmp * f4_lev_m_ki_inv0_idq_ctrl_max;

	u1_cnt_idq_inv0_ctrli_delay			= 0;
	u1_cnt_idq_inv0_ctrli_delay_max		= (u1)(CNT_IDQ_INV0_CTRLI_DELAY_MAX);

	/* d軸電流制御		*/
	f4_kp_inv0_idctrl				= ((f4)(0.));
	f4_ki_inv0_idctrl				= ((f4)(0.));

	f4_id_inv0_ctrliref				= (f4)(0.0);

	f4_id_inv0_ctrlperr				= ((f4)(0.));
	f4_id_inv0_ctrlierr				= ((f4)(0.));
	f4_vd_inv0_ctrl					= ((f4)(0.));
	f4_vd_inv0_ctrlp				= ((f4)(0.));
	f4_vd_inv0_ctrli				= ((f4)(0.));

	/* q軸電流制御		*/
	f4_kp_inv0_iqctrl				= ((f4)(0.));
	f4_ki_inv0_iqctrl				= ((f4)(0.));

	f4_iq_inv0_ctrliref				= (f4)(0.0);

	f4_iq_inv0_ctrlperr				= ((f4)(0.));
	f4_iq_inv0_ctrlierr				= ((f4)(0.));
	f4_vq_inv0_ctrl					= ((f4)(0.));
	f4_vq_inv0_ctrlp				= ((f4)(0.));
	f4_vq_inv0_ctrli				= ((f4)(0.));

	/* 配列初期化		*/
	for (u1_cnt_idq_inv0_ctrli_delay = 0; u1_cnt_idq_inv0_ctrli_delay < u1_cnt_idq_inv0_ctrli_delay_max; u1_cnt_idq_inv0_ctrli_delay++)
	{

		f4_id_inv0_ctrliref_array[u1_cnt_idq_inv0_ctrli_delay]			= (f4)(0.0);
		f4_iq_inv0_ctrliref_array[u1_cnt_idq_inv0_ctrli_delay]			= (f4)(0.0);
	}

	u1_cnt_idq_inv0_ctrli_delay		= 0;

	u1_flag_inv0_status_idqctrl		= (u1)(0);
	/*=============================================================*/

	/*=============================================================*/
	/*               			非干渉制御変数初期化       	       */
	/*=============================================================*/
	f4_vd_inv0_emf					= ((f4)(0.));
	f4_vq_inv0_emf					= ((f4)(0.));
	f4_vd_inv0_rs					= ((f4)(0.));
	f4_vq_inv0_rs					= ((f4)(0.));

	f4_vd_inv0_ref_tmp				= ((f4)(0.));
	f4_vq_inv0_ref_tmp				= ((f4)(0.));
	/*=============================================================*/

	/*=============================================================*/
	/*  	    		dq軸電圧指令値制限変数初期化       	　　   */
	/*=============================================================*/
	u1_flag_inv0_status_vdq_max		= (u1)(0);

	f4_k_inv0_vdq_max				= ((f4)(K_INV0_VDQ_MAX));

	f4_vdq_inv0_ref					= ((f4)(0.));
	f4_vdq_inv0_max					= ((f4)(0.));

	f4_vd_inv0_ref					= ((f4)(0.));
	f4_vq_inv0_ref					= ((f4)(0.));

	f4_wt_inv0_vdq					= ((f4)(0.));
	f4_wt_inv0_vdq_tmp				= ((f4)(0.));
	/*=============================================================*/

	/*=============================================================*/
	/*					PWM変調ゲインテーブル変数初期化			　 */
	/*=============================================================*/
	f4_m_inv0_lpf					= ((f4)(0.));
	f4_k_inv0_modu					= ((f4)(1.));
	f4_k_inv0_modu_max				= ((f4)(K_INV0_MODU_MAX));

	f4_dk_inv0_modu_kp				= ((f4)(1.));
	f4_dk_inv0_modu_ki				= ((f4)(1.));
	f4_dk_inv0_modu_kicmp			= ((f4)(1./K_INV0_MODU_KICMP));

	u1_flag_enable_inv0_dk_modu		= (u1)(ENABLE_INV0_DK_MODU);

	u4_n_k_inv0_modu				= 0;

	f4_m_inv0_lpf					= ((f4)(0.));
	f4_wclpf_inv0_m					= ((f4)(WCLPF_INV0_M));
	/*=============================================================*/

	/*=============================================================*/
	/*					電圧制御モード切替変数初期化			   */
	/*=============================================================*/
	u1_flag_inv0_modevctrl			= 0;
	u1_flag_inv0_modevctrl_tmp		= 0;

	u2_cnt_inv0_vctrlmode			= 0;
	u2_cnt_inv0_svpwmmode			= ((u2)(CNT_INV0_SVPWMMODE));
	u2_cnt_inv0_1pulsemode			= ((u2)(CNT_INV0_1PULSEMODE));

	u1_flag_enable_inv0_1pulse		= ((u1)(ENABLE_INV0_1PULSE));

	f4_lev_m_inv0_1pulse			= ((f4)(LEV_M_INV0_1PULSE));
	f4_lev_m_inv0_svpwm				= ((f4)(LEV_M_INV0_SVCTRL));

	u1_flag_inv0_modetiming			= 0;
	/*=============================================================*/

	/*=============================================================*/
	/*							電圧位相変数初期化				   */
	/*=============================================================*/
	f4_wt_inv0_delay				= ((f4)(0.));
	f4_wt_inv0_svctrl				= ((f4)(0.));

	f4_sin_inv0_wtsvctrl			= ((f4)(0.));
	f4_cos_inv0_wtsvctrl			= ((f4)(0.));

	s4_wt_inv0_dq_2pi_2_31				= 0;
	s4_wt_inv0_delay_2pi_2_31			= 0;

	s4_wt_inv0_vdq_2pi_2_31				= 0;

	f4_wt_inv0_1pulse_pwm				= (f4)(0.0);
	s4_wt_inv0_1pulse_pwm_2pi_2_31		= 0;
	/*=============================================================*/

}






