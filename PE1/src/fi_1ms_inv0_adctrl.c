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
#include    "fb_therm_calc.h"									/* 温度変換ヘッダファイル						*/
/*=============================================================*/

/*=============================================================*/
/* 			 			温度センサ変換変数定義				   */
/*=============================================================*/
extern f4 f4_thermister_calc_2_8(u2 in, TH_PARAM param);

TH_PARAM	th_IGBT;											/* IGBT温度サーミスタデータ						*/
TH_PARAM	th_103JT;											/* IGBT温度サーミスタデータ						*/
TH_PARAM	th_MOTOR1_INV0;										/* モータ温度サーミスタデータ					*/
TH_PARAM	th_MOTOR2_INV0;										/* モータ温度サーミスタデータ					*/
TH_PARAM	th_493HT;											/* モータ温度サーミスタデータ					*/
TH_PARAM	th_AL03006_1753K_98_G1;								/* モータ温度(AL03006-17.53K-98-G1)				*/
TH_PARAM	th_PSB_S3;											/* モータ温度(PSB-S3)							*/
TH_PARAM	th_NCP18XH103;										/* 雰囲気温度									*/
TH_PARAM	th_NCU18WB473F6SRB_10k;								/* サーミスタ									*/
TH_PARAM	th_FMF800DX_24B;									/* SiCモジュール内蔵サーミスタデータ			*/
TH_PARAM	th_NTCALUG01T103G;									/* NTCALUG01T103Gサーミスタデータ				*/

f4			f4_tmp_inv0_igbt_up;								/* Unit=℃:インバータ温度UP						*/
f4			f4_tmp_inv0_igbt_vp;								/* Unit=℃:インバータ温度VP						*/
f4			f4_tmp_inv0_igbt_wp;								/* Unit=℃:インバータ温度WP						*/
f4			f4_tmp_inv0_igbt_un;								/* Unit=℃:インバータ温度UN						*/
f4			f4_tmp_inv0_igbt_vn;								/* Unit=℃:インバータ温度VN						*/
f4			f4_tmp_inv0_igbt_wn;								/* Unit=℃:インバータ温度WN						*/

f4			f4_tmp_inv0_igbtp_max;								/* Unit=℃:ハイサイド温度センサMAX値			*/
f4			f4_tmp_inv0_igbtn_max;								/* Unit=℃:ロウサイド温度センサMAX値			*/

f4			f4_tmp_inv0_igbt_max;								/* Unit=℃:IGBT温度最大値						*/

f4			f4_tmp_inv0_mot1;									/* Unit=℃:モータ温度							*/
f4			f4_tmp_inv0_mot2;									/* Unit=℃:モータ温度							*/
f4			f4_tmp_inv0_mot_max;								/* Unit=℃:モータ温度最大値						*/

f4			f4_tmp_inv0_int;									/* Unit=℃:内部温度								*/

f4			f4_tmp_inv0_busbar_p;								/* Unit=℃:バスバーP温度						*/
f4			f4_tmp_inv0_busbar_w;								/* Unit=℃:バスバーW温度						*/
f4			f4_tmp_inv0_film_cap;								/* Unit=℃:フィルムコンデンサ温度				*/

f4			f4_wclpf_inv0_tmp;									/* Unit=rad/s:温度センサLPFカットオフ周波数		*/
/*=============================================================*/

/*=============================================================*/
/*				  			デバッグ変数定義				　 */
/*=============================================================*/

/*=============================================================*/

/*=============================================================*/
/* 					関数のプロトタイプ宣言					   */
/*=============================================================*/
void		fi_1ms_inv0_adctrl			(void);					/* 1msタイマ割込みADデータ処理関数				*/
void 		fb_1ms_inv0_adctrl_init		(void);					/* 1msタイマ割込みADデータ処理初期化関数		*/
/*=============================================================*/

/*===============================================================
+																+
+				Name:		void fi_1ms_inv0_adctrl (void)		+
+			Function:	1msタイマ割込みADデータ処理関数			+
+																+
+					1)		温度センサ変換						+
+																+
+		Return Value:		No									+
+				date:		 10th Mar,2017						+
+																+
===============================================================*/
void fi_1ms_inv0_adctrl (void)
{
	/*============================================================*/
	/*					   ローカル変数定義		　				  */
	/*============================================================*/
	f4		f4_temp_1;											/* テンポラリ変数(f4)							*/
	/*============================================================*/

	/*============================================================*/
	/* 			 		インバータ温度センサ変換				  */
	/*============================================================*/
	f4_temp_1						= f4_thermister_calc_2_8(s2_ad_inv0_tmp_igbt_up, th_FMF800DX_24B);
	f4_temp_1						= f4_temp_1 - f4_tmp_inv0_igbt_up;
	f4_tmp_inv0_igbt_up				= f4_tmp_inv0_igbt_up + (f4_wclpf_inv0_tmp * f4_temp_1 * ((f4)(0.001)));

	f4_temp_1						= f4_thermister_calc_2_8(s2_ad_inv0_tmp_igbt_vp, th_FMF800DX_24B);
	f4_temp_1						= f4_temp_1 - f4_tmp_inv0_igbt_vp;
	f4_tmp_inv0_igbt_vp				= f4_tmp_inv0_igbt_vp + (f4_wclpf_inv0_tmp * f4_temp_1 * ((f4)(0.001)));

	f4_temp_1						= f4_thermister_calc_2_8(s2_ad_inv0_tmp_igbt_wp, th_FMF800DX_24B);
	f4_temp_1						= f4_temp_1 - f4_tmp_inv0_igbt_wp;
	f4_tmp_inv0_igbt_wp				= f4_tmp_inv0_igbt_wp + (f4_wclpf_inv0_tmp * f4_temp_1 * ((f4)(0.001)));

	f4_temp_1						= f4_thermister_calc_2_8(s2_ad_inv0_tmp_igbt_un, th_FMF800DX_24B);
	f4_temp_1						= f4_temp_1 - f4_tmp_inv0_igbt_un;
	f4_tmp_inv0_igbt_un				= f4_tmp_inv0_igbt_un + (f4_wclpf_inv0_tmp * f4_temp_1 * ((f4)(0.001)));

	f4_temp_1						= f4_thermister_calc_2_8(s2_ad_inv0_tmp_igbt_vn, th_FMF800DX_24B);
	f4_temp_1						= f4_temp_1 - f4_tmp_inv0_igbt_vn;
	f4_tmp_inv0_igbt_vn				= f4_tmp_inv0_igbt_vn + (f4_wclpf_inv0_tmp * f4_temp_1 * ((f4)(0.001)));

	f4_temp_1						= f4_thermister_calc_2_8(s2_ad_inv0_tmp_igbt_wn, th_FMF800DX_24B);
	f4_temp_1						= f4_temp_1 - f4_tmp_inv0_igbt_wn;
	f4_tmp_inv0_igbt_wn				= f4_tmp_inv0_igbt_wn + (f4_wclpf_inv0_tmp * f4_temp_1 * ((f4)(0.001)));

	// f4_tmp_inv0_igbt_un	= ((f4)(s2_therm_module_calc_lsb2(s2_ad_inv0_tmp_igbt_un>>2))) * ((f4)0.01);
	// f4_tmp_inv0_igbt_vn	= ((f4)(s2_therm_module_calc_lsb2(s2_ad_inv0_tmp_igbt_vn>>2))) * ((f4)0.01);
	// f4_tmp_inv0_igbt_wn	= ((f4)(s2_therm_module_calc_lsb2(s2_ad_inv0_tmp_igbt_wn>>2))) * ((f4)0.01);

	// /* サーミスタは相毎	*/
	// f4_tmp_inv0_igbt_up				= f4_tmp_inv0_igbt_un;
	// f4_tmp_inv0_igbt_vp				= f4_tmp_inv0_igbt_vn;
	// f4_tmp_inv0_igbt_wp				= f4_tmp_inv0_igbt_wn;
	f4_tmp_inv0_igbt_un				= f4_tmp_inv0_igbt_up;
	f4_tmp_inv0_igbt_vn				= f4_tmp_inv0_igbt_vp;
	f4_tmp_inv0_igbt_wn				= f4_tmp_inv0_igbt_wp;

	f4_tmp_inv0_igbtp_max			= max(max(f4_tmp_inv0_igbt_up, f4_tmp_inv0_igbt_vp), f4_tmp_inv0_igbt_wp);
	f4_tmp_inv0_igbtn_max			= max(max(f4_tmp_inv0_igbt_un, f4_tmp_inv0_igbt_vn), f4_tmp_inv0_igbt_wn);

	f4_tmp_inv0_igbt_max			= max(f4_tmp_inv0_igbtp_max, f4_tmp_inv0_igbtn_max);
	/*============================================================*/

	/*============================================================*/
	/* 			 			モータ温度センサ変換				  */
	/*============================================================*/
	f4_temp_1						= f4_thermister_calc_2_8(s2_ad_inv0_tmp_mot1, th_MOTOR1_INV0);
	f4_temp_1						= f4_temp_1 - f4_tmp_inv0_mot1;
	f4_tmp_inv0_mot1				= f4_tmp_inv0_mot1 + (f4_wclpf_inv0_tmp * f4_temp_1 * ((f4)(0.001)));

	f4_temp_1						= f4_thermister_calc_2_8(s2_ad_inv0_tmp_mot2, th_MOTOR2_INV0);
	f4_temp_1						= f4_temp_1 - f4_tmp_inv0_mot2;
	f4_tmp_inv0_mot2				= f4_tmp_inv0_mot2 + (f4_wclpf_inv0_tmp * f4_temp_1 * ((f4)(0.001)));

	f4_tmp_inv0_mot_max				= max(f4_tmp_inv0_mot1, f4_tmp_inv0_mot2);
	/*============================================================*/

	/*============================================================*/
	/* 			 			内部温度センサ変換					  */
	/*============================================================*/
	// f4_temp_1						= f4_thermister_calc_2_8(s2_ad_inv0_tmp_int, th_NCP18XH103);
	// f4_temp_1						= f4_temp_1 - f4_tmp_inv0_int;
	// f4_tmp_inv0_int					= f4_tmp_inv0_int + (f4_wclpf_inv0_tmp * f4_temp_1 * ((f4)(0.001)));
																/* 内部温度										*/

	f4_temp_1						= f4_thermister_calc_2_8(s2_ad_inv0_tmp_th1, th_NTCALUG01T103G);
	f4_temp_1						= f4_temp_1 - f4_tmp_inv0_film_cap;
	f4_tmp_inv0_film_cap					= f4_tmp_inv0_film_cap + (f4_wclpf_inv0_tmp * f4_temp_1 * ((f4)(0.001)));

	f4_temp_1						= f4_thermister_calc_2_8(s2_ad_inv0_tmp_th2, th_NTCALUG01T103G);
	f4_temp_1						= f4_temp_1 - f4_tmp_inv0_busbar_w;
	f4_tmp_inv0_busbar_w					= f4_tmp_inv0_busbar_w + (f4_wclpf_inv0_tmp * f4_temp_1 * ((f4)(0.001)));


	f4_temp_1						= f4_thermister_calc_2_8(s2_ad_inv0_tmp_th3, th_NTCALUG01T103G);
	f4_temp_1						= f4_temp_1 - f4_tmp_inv0_busbar_p;
	f4_tmp_inv0_busbar_p					= f4_tmp_inv0_busbar_p + (f4_wclpf_inv0_tmp * f4_temp_1 * ((f4)(0.001)));
	/*============================================================*/

}

/*===============================================================
+																+
+				Name:	void fb_1ms_inv0_adctrl_init (void)		+
+			Function:	1msタイマ割込みADデータ処理初期化		+
+																+
+		Return Value:		No									+
+				date:		 10th Mar,2017						+
+																+
===============================================================*/
void fb_1ms_inv0_adctrl_init (void)
{
	/*=============================================================*/
	/*						温度センサ変換変数初期化			　 */
	/*=============================================================*/
	f4_tmp_inv0_igbt_up				= ((f4)(0.));
	f4_tmp_inv0_igbt_vp				= ((f4)(0.));
	f4_tmp_inv0_igbt_wp				= ((f4)(0.));
	f4_tmp_inv0_igbt_un				= ((f4)(0.));
	f4_tmp_inv0_igbt_vn				= ((f4)(0.));
	f4_tmp_inv0_igbt_wn				= ((f4)(0.));

	f4_tmp_inv0_igbtp_max			= ((f4)(0.));
	f4_tmp_inv0_igbtn_max			= ((f4)(0.));

	f4_tmp_inv0_igbt_max			= ((f4)(0.));

	f4_tmp_inv0_mot1				= ((f4)(0.));
	f4_tmp_inv0_mot2				= ((f4)(0.));
	f4_tmp_inv0_mot_max					= ((f4)(0.));

	f4_tmp_inv0_int					= ((f4)(0.));

	f4_tmp_inv0_busbar_p			= ((f4)(0.));
	f4_tmp_inv0_busbar_w			= ((f4)(0.));
	f4_tmp_inv0_film_cap			= ((f4)(0.));

	f4_wclpf_inv0_tmp				= ((f4)(WCLPF_INV0_TMP));

	th_MOTOR1_INV0.B				= (f4)(TH_MOTOR1_INV0_B);
	th_MOTOR1_INV0.R_T1				= (f4)(TH_MOTOR1_INV0_R_T1);
	th_MOTOR1_INV0.T1				= (f4)(TH_MOTOR1_INV0_T1);
	th_MOTOR1_INV0.D				= (f4)(1e-3);
	th_MOTOR1_INV0.R_PU				= (f4)(2000.0);
	th_MOTOR1_INV0.R_PD				= (f4)(0.0);
	th_MOTOR1_INV0.VCC				= (f4)(5.0);
	th_MOTOR1_INV0.ADRES			= (f4)(4096.0);
	th_MOTOR1_INV0.H_L				= (u1)(TH_H);

	th_MOTOR2_INV0.B				= (f4)(TH_MOTOR2_INV0_B);
	th_MOTOR2_INV0.R_T1				= (f4)(TH_MOTOR2_INV0_R_T1);
	th_MOTOR2_INV0.T1				= (f4)(TH_MOTOR2_INV0_T1);
	th_MOTOR2_INV0.D				= (f4)(1e-3);
	th_MOTOR2_INV0.R_PU				= (f4)(2000.0);
	th_MOTOR2_INV0.R_PD				= (f4)(0.0);
	th_MOTOR2_INV0.VCC				= (f4)(5.0);
	th_MOTOR2_INV0.ADRES			= (f4)(4096.0);
	th_MOTOR2_INV0.H_L				= (u1)(TH_H);

	th_493HT.B						= 3970.0;
	th_493HT.R_T1					= 3300.0;
	th_493HT.T1						= 100.0;
	th_493HT.D						= 1e-3;
	th_493HT.R_PU					= 2000.0;
	th_493HT.R_PD					= 0.0;
	th_493HT.VCC					= 5.0;
	th_493HT.ADRES					= 4096.0;
	th_493HT.H_L					= TH_H;

	th_IGBT.B						= 3433.0;
	th_IGBT.R_T1					= 5000.0;
	th_IGBT.T1						= 25.0;
	th_IGBT.D						= 1e-3;
	th_IGBT.R_PU					= 2000.0;
	th_IGBT.R_PD					= 0.0;
	th_IGBT.VCC						= 5.0;
	th_IGBT.ADRES					= 4096.0;
	th_IGBT.H_L						= TH_H;

	th_103JT.B						= 3435.0;
	th_103JT.R_T1					= 10000.0;
	th_103JT.T1						= 25.0;
	th_103JT.D						= 1e-3;
	th_103JT.R_PU					= 2000.0;
	th_103JT.R_PD					= 0.0;
	th_103JT.VCC					= 5.0;
	th_103JT.ADRES					= 4096.0;
	th_103JT.H_L					= TH_H;

	th_AL03006_1753K_98_G1.B		= 3974.0;
	th_AL03006_1753K_98_G1.R_T1		= 30000.0;
	th_AL03006_1753K_98_G1.T1		= 25.0;
	th_AL03006_1753K_98_G1.D		= 1e-3;
	th_AL03006_1753K_98_G1.R_PU		= 2000.0;
	th_AL03006_1753K_98_G1.R_PD		= 0.0;
	th_AL03006_1753K_98_G1.VCC		= 5.0;
	th_AL03006_1753K_98_G1.ADRES	= 4096.0;
	th_AL03006_1753K_98_G1.H_L		= TH_H;

	th_PSB_S3.B						= 2240.0;
	th_PSB_S3.R_T1					= 1000.0;
	th_PSB_S3.T1					= 200.0;
	th_PSB_S3.D						= 1e-3;
	th_PSB_S3.R_PU					= 2000.0;
	th_PSB_S3.R_PD					= 0.0;
	th_PSB_S3.VCC					= 5.0;
	th_PSB_S3.ADRES					= 4096.0;
	th_PSB_S3.H_L					= TH_H;

	th_NCP18XH103.B					= 3380.0;
	th_NCP18XH103.R_T1				= 10000.0;
	th_NCP18XH103.T1				= 25.0;
	th_NCP18XH103.D					= 1e-3;
	th_NCP18XH103.R_PU				= 2000.0;
	th_NCP18XH103.R_PD				= 0.0;
	th_NCP18XH103.VCC				= 5.0;
	th_NCP18XH103.ADRES				= 4096.0;
	th_NCP18XH103.H_L				= TH_H;

	th_NCU18WB473F6SRB_10k.B			= (f4)(4050.0);
	th_NCU18WB473F6SRB_10k.R_T1			= (f4)(47000.0);
	th_NCU18WB473F6SRB_10k.T1			= (f4)(25.0);
	th_NCU18WB473F6SRB_10k.D			= (f4)(1e-3);
	th_NCU18WB473F6SRB_10k.R_PU			= (f4)(10000.0);
	th_NCU18WB473F6SRB_10k.R_PD			= (f4)(0.0);
	th_NCU18WB473F6SRB_10k.VCC			= (f4)(5.0);
	th_NCU18WB473F6SRB_10k.ADRES		= (f4)(4096.0);
	th_NCU18WB473F6SRB_10k.H_L			= (u1)(TH_H);

	th_FMF800DX_24B.B				= (f4)(3375.0);
	th_FMF800DX_24B.R_T1			= (f4)(5000.0);
	th_FMF800DX_24B.T1				= (f4)(25.0);
	th_FMF800DX_24B.D				= (f4)(10e-3);
	th_FMF800DX_24B.R_PU			= (f4)(2000.0);
	th_FMF800DX_24B.R_PD			= (f4)(0.0);
	th_FMF800DX_24B.VCC				= (f4)(5.0);
	th_FMF800DX_24B.ADRES			= (f4)(4096.0);
	th_FMF800DX_24B.H_L				= (u1)(TH_H);

	th_NTCALUG01T103G.B				= (f4)(3984.0);
	th_NTCALUG01T103G.R_T1			= (f4)(10000.0);
	th_NTCALUG01T103G.T1			= (f4)(25.0);
	th_NTCALUG01T103G.D				= (f4)(10e-3);
	th_NTCALUG01T103G.R_PU			= (f4)(2000.0);
	th_NTCALUG01T103G.R_PD			= (f4)(0.0);
	th_NTCALUG01T103G.VCC			= (f4)(5.0);
	th_NTCALUG01T103G.ADRES			= (f4)(4096.0);
	th_NTCALUG01T103G.H_L			= (u1)(TH_H);
	/*=============================================================*/
}



