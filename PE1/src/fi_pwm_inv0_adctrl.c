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
/* 						 ADデータバッファ					   */
/*=============================================================*/
s2			s2_ad000;											/* ADCC0I00 端子　バッファ						*/
s2			s2_ad001;											/* ADCC0I01 端子　バッファ						*/
s2			s2_ad002;											/* ADCC0I02 端子　バッファ						*/
s2			s2_ad003;											/* ADCC0I03 端子　バッファ						*/
s2			s2_ad010;											/* ADCC0I10 端子　バッファ						*/
s2			s2_ad011;											/* ADCC0I11 端子　バッファ						*/
s2			s2_ad012;											/* ADCC0I12 端子　バッファ		 				*/
s2			s2_ad013;											/* ADCC0I13 端子　バッファ		 				*/
s2			s2_ad020;											/* ADCC0I20 端子　バッファ						*/
s2			s2_ad021;											/* ADCC0I21 端子　バッファ						*/
s2			s2_ad022;											/* ADCC0I22 端子　バッファ(T&H4) 				*/
s2			s2_ad023;											/* ADCC0I23 端子　バッファ(T&H5) 				*/
s2			s2_ad030;											/* ADCC0I30 端子　バッファ(T&H0)				*/
s2			s2_ad031;											/* ADCC0I31 端子　バッファ(T&H1) 				*/
s2			s2_ad032;											/* ADCC0I32 端子　バッファ(T&H2) 				*/
s2			s2_ad033;											/* ADCC0I33 端子　バッファ(T&H3) 				*/

s2			s2_ad100;											/* ADCC1I00 端子　バッファ						*/
s2			s2_ad101;											/* ADCC1I01 端子　バッファ						*/
s2			s2_ad102;											/* ADCC1I02 端子　バッファ						*/
s2			s2_ad110;											/* ADCC1I10 端子　バッファ						*/
s2			s2_ad111;											/* ADCC1I11 端子　バッファ						*/
s2			s2_ad112;											/* ADCC1I12 端子　バッファ						*/

s2			s2_ad120;											/* ADCC1I20 端子　バッファ						*/
s2			s2_ad121;											/* ADCC1I22 端子　バッファ						*/
s2			s2_ad122;											/* ADCC1I21 端子　バッファ						*/

s2			s2_ad130;											/* ADCC1I30 端子　バッファ(T&H0)				*/
s2			s2_ad131;											/* ADCC1I31 端子　バッファ(T&H1) 				*/
s2			s2_ad132;											/* ADCC1I32 端子　バッファ(T&H2) 				*/
s2			s2_ad140;											/* ADCC1I40 端子　バッファ(T&H3)				*/
s2			s2_ad141;											/* ADCC1I41 端子　バッファ(T&H4) 				*/
s2			s2_ad142;											/* ADCC1I42 端子　バッファ(T&H5) 				*/

s2			s2_ad150;											/* ADCC1I50 端子　バッファ						*/
s2			s2_ad151;											/* ADCC1I51 端子　バッファ						*/
s2			s2_ad152;											/* ADCC1I52 端子　バッファ						*/
s2			s2_ad160;											/* ADCC1I60 端子　バッファ						*/
s2			s2_ad161;											/* ADCC1I61 端子　バッファ						*/
s2			s2_ad162;											/* ADCC1I62 端子　バッファ						*/
/*=============================================================*/

/*=============================================================*/
/* 						 ADデータバッファ2					   */
/*=============================================================*/
s2			s2_ad_inv0_vdc;										/* 直流電圧AD値									*/
s2			s2_ad_inv0_vdc_tmp;									/* 直流電圧AD値									*/
s2			s2_ad_inv0_idc;										/* 直流電流AD値									*/
s2			s2_ad_inv0_iu;										/* U相電流AD値									*/
s2			s2_ad_inv0_iv;										/* V相電流AD値									*/
s2			s2_ad_inv0_iw;										/* W相電流AD値									*/
s2			s2_ad_inv0_vuv;										/* UV間電圧AD値									*/
s2			s2_ad_inv0_vwv;										/* WV間電圧AD値									*/
s2			s2_ad_inv0_tmp_igbt_up;								/* UPサーミスタAD値								*/
s2			s2_ad_inv0_tmp_igbt_un;								/* UNサーミスタAD値								*/
s2			s2_ad_inv0_tmp_igbt_vp;								/* VPサーミスタAD値								*/
s2			s2_ad_inv0_tmp_igbt_vn;								/* VNサーミスタAD値								*/
s2			s2_ad_inv0_tmp_igbt_wp;								/* WPサーミスタAD値								*/
s2			s2_ad_inv0_tmp_igbt_wn;								/* WNサーミスタAD値								*/
s2			s2_ad_inv0_tmp_mot1;								/* MOT1サーミスタAD値							*/
s2			s2_ad_inv0_tmp_mot2;								/* MOT2サーミスタAD値							*/
s2			s2_ad_inv0_tmp_int;									/* 内部サーミスタAD値							*/
s2			s2_ad_inv0_vctrlbd;									/* 制御電源電圧AD値								*/
s2			s2_ad_inv0_tmp_ai0;									/* AI0AD値										*/
s2			s2_ad_inv0_tmp_ai1;									/* AI1AD値										*/
s2			s2_ad_inv0_tmp_ai2;									/* AI2AD値										*/
s2			s2_ad_inv0_tmp_ai3;									/* AI3AD値										*/
s2			s2_ad_inv0_tmp_ai4;									/* AI4AD値										*/
s2			s2_ad_inv0_tmp_th1;									/* TH1AD値										*/
s2			s2_ad_inv0_tmp_th2;									/* TH2AD値										*/
s2			s2_ad_inv0_tmp_th3;									/* TH3AD値										*/
s2			s2_ad_inv0_tmp_th4;									/* TH4AD値										*/
s2			s2_ad_inv0_tmp_th5;									/* TH5AD値										*/
s2			s2_ad_inv0_tmp_th6;									/* TH6AD値										*/
s2			s2_ad_inv0_tmp_th7;									/* TH7AD値										*/
s2			s2_ad_inv0_tmp_th8;									/* TH8AD値										*/
/*=============================================================*/

/*=============================================================*/
/* 						 AD変換待ち変数定義					   */
/*=============================================================*/
#define		AD0_WAITMAX_CNT				( 100 )					/* 評価後決定									*/
#define		AD0_WAIT_RES()				(s2_AD0_cnt = AD0_WAITMAX_CNT)
s2			s2_AD0_cnt;
s2			s2_AD0_wait_warning;
/*=============================================================*/

/*=============================================================*/
/* 						ADトリガディレイ定義				   */
/*=============================================================*/
s4			s4_adtrig_inv0_delay_ns;							/* Unit=ns:ADトリガディレイ						*/
/*=============================================================*/

/*=============================================================*/
/* 							A/D変換変数定義					   */
/*=============================================================*/
f4			f4_k_iu_inv0_adscale;								/* U相電流スケーリングゲイン					*/
f4			f4_k_iv_inv0_adscale;								/* V相電流スケーリングゲイン					*/
f4			f4_k_iw_inv0_adscale;								/* W相電流スケーリングゲイン					*/

f4			f4_k_vdc_inv0_adscale;								/* 直流電圧スケーリングゲイン					*/
f4			f4_k_idc_inv0_adscale;								/* 直流電流スケーリングゲイン					*/

f4			f4_k_vuvw_inv0_adscale;								/* UVW間電圧スケーリングゲイン					*/

s4			s4_iu_inv0_adfs;									/* lsb:12bit, Unit=A:U相電流AD値				*/
s4			s4_iv_inv0_adfs;									/* lsb:12bit, Unit=A:V相電流AD値				*/
s4			s4_iw_inv0_adfs;									/* lsb:12bit, Unit=A:W相電流AD値				*/

f4			f4_iu_inv0_ad;										/* Unit=A:U相電流AD値							*/
f4			f4_iv_inv0_ad;										/* Unit=A:V相電流AD値							*/
f4			f4_iw_inv0_ad;										/* Unit=A:W相電流AD値							*/

f4			f4_iu_inv0_tmp_ad;									/* Unit=A:U相電流AD値(テンポラリ)				*/
f4			f4_iv_inv0_tmp_ad;									/* Unit=A:V相電流AD値(テンポラリ)				*/
f4			f4_iw_inv0_tmp_ad;									/* Unit=A:W相電流AD値(テンポラリ)				*/

u1			u1_flag_ictrl_inv0_select;							/* 電流推定値選択相フラグ						*/
																/* 0:U相, 1:V相, 2:W相, 3:3相すべて使用			*/

u1			u1_flag_iad_inv0_avg;								/* 電流平均化フラグ								*/
																/* 0:無効(AD値直接)	1:有効(2回平均)				*/

f4			f4_iu_inv0_ctrl;									/* Unit=A:U相電流(制御用)						*/
f4			f4_iv_inv0_ctrl;									/* Unit=A:V相電流(制御用)						*/
f4			f4_iw_inv0_ctrl;									/* Unit=A:W相電流(制御用)						*/

f4			f4_vdc_inv0_ad;										/* Unit=V:直流電圧AD値							*/
f4			f4_vdc_inv0_ad_offset;								/* Unit=V:直流電圧ADオフセット値				*/
f4			f4_vuv_inv0_ad;										/* Unit=V:UV間電圧AD値							*/
f4			f4_vwv_inv0_ad;										/* Unit=V:WV間電圧AD値							*/
f4			f4_vu_inv0_ad;										/* Unit=V:U相電圧AD値							*/
f4			f4_vv_inv0_ad;										/* Unit=V:V相電圧AD値							*/
f4			f4_vw_inv0_ad;										/* Unit=V:W相電圧AD値							*/

f4			f4_vuv_inv0_ad;										/* Unit=V:UV線間電圧AD値						*/
f4			f4_vvw_inv0_ad;										/* Unit=V:VW線間電圧AD値						*/
f4			f4_vwu_inv0_ad;										/* Unit=V:WU線間電圧AD値						*/

f4			f4_vu_inv0_ad_tmp;									/* Unit=V:U相電圧AD値							*/
f4			f4_vv_inv0_ad_tmp;									/* Unit=V:V相電圧AD値							*/
f4			f4_vw_inv0_ad_tmp;									/* Unit=V:W相電圧AD値							*/
f4			f4_vuvw_inv0_ad_offset;								/* Unit=V:相電圧オフセット値					*/

f4			f4_va_inv0_ad;										/* Unit=V:a軸電圧AD値							*/
f4			f4_vb_inv0_ad;										/* Unit=V:b軸電圧AD値							*/
f4			f4_vdq_inv0_ad;										/* Unit=V:dq軸電圧AD値							*/

f4			f4_wt_inv0_vuvw_ad;									/* Unit=rads:角度PLL値							*/

f4			f4_wt_inv0_pll_vuvw_ad;								/* Unit=rad:dq軸PLL演算角度						*/
f4			f4_wt_inv0_pll_vuvw_ad_err;							/* Unit=rad:PLL角度誤差					 		*/

f4			f4_kp_inv0_wrpll_vuvw_ad;							/* Unit=-:PLL演算比例ゲイン						*/
f4			f4_ki_inv0_wrpll_vuvw_ad;							/* Unit=-:PLL演算積分ゲイン						*/

f4			f4_wr_inv0_pll_vuvw_ad_p;							/* Unit=rad/s:PLL演算角速度(比例項)				*/
f4			f4_wr_inv0_pll_vuvw_ad_i;							/* Unit=rad/s:PLL演算角速度(積分項)				*/
f4			f4_wr_inv0_pll_vuvw_ad;								/* Unit=rad/s:PLL演算角速度						*/

f4			f4_wclpf_inv0_wrpll_vuvw_ad;						/* Unit=-:PLL演算角速度LPFゲイン				*/
f4			f4_wr_inv0_pll_vuvw_ad_lpf;							/* Unit=rad/s:PLL演算角速度LPF値				*/

s4			s4_idc_inv0_adfs;									/* lsb:12bit, Unit=A:直流電流AD値				*/
f4			f4_idc_inv0_ad;										/* Unit=A:直流電流AD値							*/
f4			f4_idc_inv0_tmp_ad;									/* Unit=A:直流電流AD値(テンポラリ)				*/

f4			f4_vctrlbd_inv0_ad;									/* Unit=V:制御電源電圧							*/
f4			f4_k_vctrlbd_inv0_adscale;							/* 制御電源電圧スケーリングゲイン				*/
/*=============================================================*/

/*=============================================================*/
/* 						　直流電圧LPF変数定義				   */
/*=============================================================*/
f4			f4_wclpf_inv0_vdc;									/* Unit=-:直流電圧LPFゲイン						*/
f4			f4_vdc_inv0_lpf;									/* Unit=V:直流電圧LPF値							*/
f4			f4_wclpf_inv0_idc;									/* Unit=-:直流電流LPFゲイン						*/
f4			f4_idc_inv0_lpf;									/* Unit=A:直流電流LPF値							*/
f4			f4_wclpf_inv0_v_ai;									/* Unit=-:アナログ入力電圧LPFゲイン				*/
f4			f4_v_ai_inv0_lpf;									/* Unit=V:アナログ入力電圧LPF値					*/
/*=============================================================*/

/*=============================================================*/
/* 						　1/vdc演算変数定義					   */
/*=============================================================*/
f4			f4_dvdc_inv0_ad;									/* Unit=-:1/vdc演算値							*/
/*=============================================================*/

/*=============================================================*/
/* 						A/Dオフセット変数定義	 		 	   */
/*=============================================================*/
s4			s4_offset_iu_inv0_adfs;								/* Unit=A:U相電流オフセット						*/
s4			s4_offset_iv_inv0_adfs;								/* Unit=A:V相電流オフセット						*/
s4			s4_offset_iw_inv0_adfs;								/* Unit=A:W相電流オフセット						*/
s4			s4_offset_idc_inv0_adfs;							/* Unit=A:直流電流オフセット					*/

s4			s4_offset_iu_inv0_adfs_sum;							/* Unit=A:オフセット用積分値(U相)				*/
s4			s4_offset_iv_inv0_adfs_sum;							/* Unit=A:オフセット用積分値(V相)				*/
s4			s4_offset_iw_inv0_adfs_sum;							/* Unit=A:オフセット用積分値(W相)				*/
s4			s4_offset_idc_inv0_adfs_sum;						/* Unit=A:オフセット用積分値(IDC)				*/

u2			u2_cnt_inv0_offsetadj;								/* オフセット自動調整カウンタ					*/
u1			u1_flag_inv0_offsetadj_ok;							/* オフセット調整完了フラグ						*/
/*=============================================================*/

/*=============================================================*/
/*				  			デバッグ変数定義				　 */
/*=============================================================*/

/*=============================================================*/

/*=============================================================*/
/* 					関数のプロトタイプ宣言					   */
/*=============================================================*/
void		fi_pwm_inv0_adctrl			(void);					/* キャリア割込みADデータ処理関数				*/
void 		fb_pwm_inv0_adctrl_init		(void);					/* キャリア割込みADデータ処理初期化関数			*/
/*=============================================================*/

/*===============================================================
+																+
+				Name:		void fi_pwm_inv0_adctrl (void)		+
+			Function:	キャリア割込みADデータ処理関数			+
+																+
+					1)	AD変換終了待ち処理						+
+					2)	ADデータ取得							+
+					3)	スケーリング							+
+					4)	直流電圧LPF演算							+
+					5)	1/vdc演算								+
+					6)	オフセット自動調整						+
+																+
+		Return Value:		No									+
+				date:		 10th Mar,2017						+
+																+
===============================================================*/
void fi_pwm_inv0_adctrl (void)
{
	/*============================================================*/
	/*					   ローカル変数定義		　				  */
	/*============================================================*/
	f4		f4_temp_1,f4_temp_2;								/* テンポラリ変数(f4)							*/
	s4		s4_temp_1;											/* テンポラリ変数(s4)							*/
	s2		s2_temp_1;											/* テンポラリ変数(s2)							*/
	/*============================================================*/

	/*============================================================*/
	/*				AD変換終了待ち処理（ADCC0 SG4)				  */
	/*============================================================*/
#if 1
	AD0_WAIT_RES();
	while ( ( 0 == Get_ADC0_SG4_IRF() ) && ( --s2_AD0_cnt > 0 ) ) {;;}	/* 変換終了待ち					*/
	if (  s2_AD0_cnt  <= 0 ) { s2_AD0_wait_warning++ ; }
#else
#endif
	/*============================================================*/

	/*============================================================*/
	/*		　　　				ADデータ取得					　*/
	/*============================================================*/
	// s2_ad000		= 	Get_AD_AN000();							/* TH5_AD										*/
	s2_ad001  		= 	Get_AD_AN001();							/* TH_MT1_AD									*/
	s2_ad002  		= 	Get_AD_AN002();							/* TH_MT2_AD									*/
	// s2_ad003		= 	Get_AD_AN003();							/* TH6_AD										*/
	s2_ad010 		= 	Get_AD_AN010();							/* TH1_AD										*/
	s2_ad011 		= 	Get_AD_AN011();							/* TH2_AD										*/
	s2_ad012 		= 	Get_AD_AN012();							/* TH3_AD										*/
	// s2_ad013		= 	Get_AD_AN013();							/* TH4_AD										*/
	// s2_ad020 		= 	Get_AD_AN020();							/* TH7_AD										*/
	// s2_ad021		= 	Get_AD_AN021();							/* TH8_AD										*/
	// s2_ad022		= 	Get_AD_AN022();							/* VDC0/VUV0_AD									*/
	// s2_ad023 		= 	Get_AD_AN023();							/* VWV0_AD										*/
	s2_ad030		= 	Get_AD_AN030();							/* IU0_AD										*/
	s2_ad031		= 	Get_AD_AN031();							/* IV0_AD										*/
	s2_ad032 		= 	Get_AD_AN032();							/* IW0_AD										*/
	// s2_ad033 		= 	Get_AD_AN033();							/* IDC0_AD										*/

	// ADCC1
	s2_ad100		= 	Get_AD_AN100();							/* TH_UP0										*/
	s2_ad101		= 	Get_AD_AN101();							/* TH_UN0										*/
	s2_ad102		= 	Get_AD_AN102();							/* TH_VP0										*/
	s2_ad110		= 	Get_AD_AN110();							/* TH_VN0										*/
	s2_ad111		= 	Get_AD_AN111();							/* TH_WP0										*/
	s2_ad112		= 	Get_AD_AN112();							/* TH_WN0										*/

	// s2_ad120		= 	Get_AD_AN120();							/* TH_UP1										*/
	// s2_ad121		= 	Get_AD_AN121();							/* TH_UN1										*/
	s2_ad122		= 	Get_AD_AN122();							/* VWV1_AD										*/

	// s2_ad130		= 	Get_AD_AN130();							/* IU1_AD										*/
	// s2_ad131		= 	Get_AD_AN131();							/* IV1_AD										*/
	// s2_ad132		= 	Get_AD_AN132();							/* IW1_AD										*/

	// s2_ad140		= 	Get_AD_AN140();							/* IDC1_AD										*/
	s2_ad141		= 	Get_AD_AN141();							/* VDC1_AD										*/
	s2_ad142		= 	Get_AD_AN142();							/* VUV1_AD										*/

	// s2_ad150		= 	Get_AD_AN150();							/* TH_VP1										*/
	// s2_ad151		= 	Get_AD_AN151();							/* TH_VN1										*/
	// s2_ad152		= 	Get_AD_AN152();							/* TH_WP1										*/
	// s2_ad160		= 	Get_AD_AN160();							/* TH_WN1										*/
	s2_ad161		= 	Get_AD_AN161();							/* 12V_AD										*/
	// s2_ad162		= 	Get_AD_AN162();							/* AD_PM										*/

	s2_ad_inv0_vdc_tmp				= s2_ad_inv0_vdc;
	s2_ad_inv0_vdc					= s2_ad141;
	// s2_ad_inv0_idc					= s2_ad033;
	s2_ad_inv0_iu					= s2_ad030;
	s2_ad_inv0_iv					= s2_ad031;
	s2_ad_inv0_iw					= s2_ad032;
	// s2_ad_inv0_vuv					= s2_ad142;
	// s2_ad_inv0_vwv					= s2_ad122;
	s2_ad_inv0_tmp_igbt_up			= s2_ad100;
	s2_ad_inv0_tmp_igbt_un			= s2_ad101;
	s2_ad_inv0_tmp_igbt_vp			= s2_ad102;
	s2_ad_inv0_tmp_igbt_vn			= s2_ad110;
	s2_ad_inv0_tmp_igbt_wp			= s2_ad111;
	s2_ad_inv0_tmp_igbt_wn			= s2_ad112;
	s2_ad_inv0_tmp_mot1				= s2_ad001;
	s2_ad_inv0_tmp_mot2				= s2_ad002;
	// s2_ad_inv0_tmp_int				= s2_ad013;
	s2_ad_inv0_vctrlbd				= s2_ad161;

	// s2_ad_inv0_tmp_ai0				= s2_ad022;
	// s2_ad_inv0_tmp_ai1				= s2_ad141;
	
	s2_ad_inv0_tmp_th1				= s2_ad010;
	s2_ad_inv0_tmp_th2				= s2_ad011;
	s2_ad_inv0_tmp_th3				= s2_ad012;

	/*============================================================*/

	/*============================================================*/
	/*							スケーリング処理				  */
	/*============================================================*/
	if(3 == u1_flag_pwm_inv0_source)									/* 山谷割込み時									*/
	{
		if(u1_flag_iad_inv0_avg == 1)							/* AD値平均化									*/
		{
			// U相電流
			s4_iu_inv0_adfs				= ((s4)(s2_ad_inv0_iu - 0x07ff));
			s4_temp_1					= s4_iu_inv0_adfs - s4_offset_iu_inv0_adfs;

			f4_temp_1					= ((f4)(s4_temp_1)) * f4_k_iu_inv0_adscale;
			f4_iu_inv0_ad				= ((f4)(0.5)) * (f4_temp_1 + f4_iu_inv0_tmp_ad);
			f4_iu_inv0_tmp_ad			= f4_temp_1;			/* U相電流AD値									*/

			// V相電流
			s4_iv_inv0_adfs				= ((s4)(s2_ad_inv0_iv - 0x07ff));
			s4_temp_1					= s4_iv_inv0_adfs - s4_offset_iv_inv0_adfs;

			f4_temp_1					= ((f4)(s4_temp_1)) * f4_k_iv_inv0_adscale;
			f4_iv_inv0_ad				= ((f4)(0.5)) * (f4_temp_1 + f4_iv_inv0_tmp_ad);
			f4_iv_inv0_tmp_ad			= f4_temp_1;			/* V相電流AD値									*/

			// W相電流
			s4_iw_inv0_adfs				= ((s4)(s2_ad_inv0_iw - 0x07ff));
			s4_temp_1					= s4_iw_inv0_adfs - s4_offset_iw_inv0_adfs;

			f4_temp_1					= ((f4)(s4_temp_1)) * f4_k_iw_inv0_adscale;
			f4_iw_inv0_ad				= ((f4)(0.5)) * (f4_temp_1 + f4_iw_inv0_tmp_ad);
			f4_iw_inv0_tmp_ad			= f4_temp_1;			/* W相電流AD値									*/

			// 直流電流
			s4_idc_inv0_adfs			= ((s4)(s2_ad_inv0_idc - 0x07ff));
			s4_temp_1					= s4_idc_inv0_adfs - s4_offset_idc_inv0_adfs;

			f4_temp_1					= ((f4)(s4_temp_1)) * f4_k_idc_inv0_adscale;
			f4_idc_inv0_ad				= ((f4)(0.5)) * (f4_temp_1 + f4_idc_inv0_tmp_ad);
			f4_idc_inv0_tmp_ad			= f4_temp_1;			/* 直流電流AD値									*/
		}
		else													/* AD値直接										*/
		{
			// U相電流
			s4_iu_inv0_adfs				= ((s4)(s2_ad_inv0_iu - 0x07ff));
			s4_temp_1					= s4_iu_inv0_adfs - s4_offset_iu_inv0_adfs;

			f4_iu_inv0_ad				= ((f4)(s4_temp_1)) * f4_k_iu_inv0_adscale;
			f4_iu_inv0_tmp_ad			= f4_iu_inv0_ad;		/* U相電流AD値									*/

			// V相電流
			s4_iv_inv0_adfs				= ((s4)(s2_ad_inv0_iv - 0x07ff));
			s4_temp_1					= s4_iv_inv0_adfs - s4_offset_iv_inv0_adfs;

			f4_iv_inv0_ad				= ((f4)(s4_temp_1)) * f4_k_iv_inv0_adscale;
			f4_iv_inv0_tmp_ad			= f4_iv_inv0_ad;		/* V相電流AD値									*/

			// W相電流
			s4_iw_inv0_adfs				= ((s4)(s2_ad_inv0_iw - 0x07ff));
			s4_temp_1					= s4_iw_inv0_adfs - s4_offset_iw_inv0_adfs;

			f4_iw_inv0_ad				= ((f4)(s4_temp_1)) * f4_k_iw_inv0_adscale;
			f4_iw_inv0_tmp_ad			= f4_iw_inv0_ad;		/* W相電流AD値									*/

			// 直流電流
			s4_idc_inv0_adfs			= ((s4)(s2_ad_inv0_idc - 0x07ff));
			s4_temp_1					= s4_idc_inv0_adfs - s4_offset_idc_inv0_adfs;

			f4_idc_inv0_ad				= ((f4)(s4_temp_1)) * f4_k_idc_inv0_adscale;
			f4_idc_inv0_tmp_ad			= f4_idc_inv0_ad;		/* 直流電流AD値									*/
		}

	}
	else														/* 山または谷割込み時							*/
	{
		// U相電流
		s4_iu_inv0_adfs				= ((s4)(s2_ad_inv0_iu - 0x07ff));
		s4_temp_1					= s4_iu_inv0_adfs - s4_offset_iu_inv0_adfs;

		f4_iu_inv0_ad				= ((f4)(s4_temp_1)) * f4_k_iu_inv0_adscale;
		f4_iu_inv0_tmp_ad			= f4_iu_inv0_ad;			/* U相電流AD値									*/

		// V相電流
		s4_iv_inv0_adfs				= ((s4)(s2_ad_inv0_iv - 0x07ff));
		s4_temp_1					= s4_iv_inv0_adfs - s4_offset_iv_inv0_adfs;

		f4_iv_inv0_ad				= ((f4)(s4_temp_1)) * f4_k_iv_inv0_adscale;
		f4_iv_inv0_tmp_ad			= f4_iv_inv0_ad;			/* V相電流AD値									*/

		// W相電流
		s4_iw_inv0_adfs				= ((s4)(s2_ad_inv0_iw - 0x07ff));
		s4_temp_1					= s4_iw_inv0_adfs - s4_offset_iw_inv0_adfs;

		f4_iw_inv0_ad				= ((f4)(s4_temp_1)) * f4_k_iw_inv0_adscale;
		f4_iw_inv0_tmp_ad			= f4_iw_inv0_ad;			/* W相電流AD値									*/

		// 直流電流
		s4_idc_inv0_adfs			= ((s4)(s2_ad_inv0_idc - 0x07ff));
		s4_temp_1					= s4_idc_inv0_adfs - s4_offset_idc_inv0_adfs;

		f4_idc_inv0_ad				= ((f4)(s4_temp_1)) * f4_k_idc_inv0_adscale;
		f4_idc_inv0_tmp_ad			= f4_idc_inv0_ad;			/* 直流電流AD値									*/

	}

	f4_temp_1						= ((f4)(s2_ad_inv0_vdc) + (f4)(s2_ad_inv0_vdc_tmp)) * (f4)(0.5) * f4_k_vdc_inv0_adscale;
	f4_vdc_inv0_ad					= f4_temp_1 - f4_vdc_inv0_ad_offset;
																/* 直流電圧AD値									*/

	f4_vuv_inv0_ad					= ((f4)(s2_ad_inv0_vuv - 0x07ff)) * f4_k_vuvw_inv0_adscale;
																/* UV間電圧AD値									*/

	f4_vwv_inv0_ad					= ((f4)(s2_ad_inv0_vwv - 0x07ff)) * f4_k_vuvw_inv0_adscale;
																/* WV間電圧AD値									*/

	/* 線間電圧=>相電圧変換	*/
	f4_vu_inv0_ad					= f4_vuv_inv0_ad * ((f4)(0.6666)) -  f4_vwv_inv0_ad * ((f4)(0.3333));
																/* U相電圧										*/
	f4_vw_inv0_ad					= f4_vwv_inv0_ad * ((f4)(0.6666)) - f4_vuv_inv0_ad * ((f4)(0.3333));
																/* U相電圧										*/

	f4_vv_inv0_ad					= - f4_vu_inv0_ad - f4_vw_inv0_ad;
																/* W相電圧										*/


	// フィードバック電流の選択
	if(0 == u1_flag_ictrl_inv0_select)
	{
		 // U相を推定の場合
		 f4_iv_inv0_ctrl			= f4_iv_inv0_ad;
		 f4_iw_inv0_ctrl			= f4_iw_inv0_ad;

		 f4_iu_inv0_ctrl			= -(f4_iv_inv0_ctrl + f4_iw_inv0_ctrl);
	}
	else if(1 == u1_flag_ictrl_inv0_select)
	{
		 // V相を推定の場合
		 f4_iu_inv0_ctrl			= f4_iu_inv0_ad;
		 f4_iw_inv0_ctrl			= f4_iw_inv0_ad;

		 f4_iv_inv0_ctrl			= -(f4_iu_inv0_ctrl + f4_iw_inv0_ctrl);
	}
	else if(2 == u1_flag_ictrl_inv0_select)
	{
		 // W相を推定の場合
		 f4_iu_inv0_ctrl			= f4_iu_inv0_ad;
		 f4_iv_inv0_ctrl			= f4_iv_inv0_ad;

		 f4_iw_inv0_ctrl			= -(f4_iu_inv0_ctrl + f4_iv_inv0_ctrl);
	}
	else
	{
		// 三相のAD値をそのまま使う
		 f4_iu_inv0_ctrl			= f4_iu_inv0_ad;
		 f4_iv_inv0_ctrl			= f4_iv_inv0_ad;
		 f4_iw_inv0_ctrl			= f4_iw_inv0_ad;
	}

	f4_vctrlbd_inv0_ad				= ((f4)(s2_ad_inv0_vctrlbd)) * f4_k_vctrlbd_inv0_adscale;
																/* 12V電圧AD値									*/
	/*============================================================*/

	/*============================================================*/
	/*							直流電圧LPF演算					　*/
	/*============================================================*/
	f4_temp_1						= f4_vdc_inv0_ad - f4_vdc_inv0_lpf;
	f4_vdc_inv0_lpf					= f4_vdc_inv0_lpf + (f4_wclpf_inv0_vdc * f4_temp_1) * f4_ts_inv0_ctrl;
																/* 直流電圧LPF値								*/

	f4_temp_1						= f4_idc_inv0_ad - f4_idc_inv0_lpf;
	f4_idc_inv0_lpf					= f4_idc_inv0_lpf + (f4_wclpf_inv0_idc * f4_temp_1) * f4_ts_inv0_ctrl;
																/* 直流電流LPF値								*/
	/*============================================================*/

	/*============================================================*/
	/*							　1/vdc演算						　*/
	/*============================================================*/
	if(f4_vdc_inv0_ad > ((f4)(0.0)))							/* 1/vdc(変調率演算用)							*/
	{
		f4_dvdc_inv0_ad 			= ((f4)(1.0)) / f4_vdc_inv0_ad;
	}
	else
	{
		f4_dvdc_inv0_ad 			= ((f4)(0.0));
	}
	/*=============================================================*/

	/*=============================================================*/
	/*						  ADオフセット自動調整				   */
	/*=============================================================*/
	if((1 == u1_flag_inv0_offsetadjl)&&(0 == u1_flag_inv0_offsetadj_ok))
	{
		u2_cnt_inv0_offsetadj 		= u2_cnt_inv0_offsetadj + 1;/* オフセット調整カウンタ						*/

		/* オフセット積算	*/
		s4_offset_iu_inv0_adfs		= 0;						/* オフセット値をゼロにする						*/
		s4_offset_iv_inv0_adfs		= 0;						/* 以前の設定を使うと正しく設定できないため		*/
		s4_offset_iw_inv0_adfs		= 0;
		s4_offset_idc_inv0_adfs		= 0;

		s4_offset_iu_inv0_adfs_sum 	= s4_offset_iu_inv0_adfs_sum + s4_iu_inv0_adfs;
		s4_offset_iv_inv0_adfs_sum 	= s4_offset_iv_inv0_adfs_sum + s4_iv_inv0_adfs;
		s4_offset_iw_inv0_adfs_sum 	= s4_offset_iw_inv0_adfs_sum + s4_iw_inv0_adfs;
		s4_offset_idc_inv0_adfs_sum = s4_offset_idc_inv0_adfs_sum + s4_idc_inv0_adfs;

		if(u2_cnt_inv0_offsetadj >= 128)
		{
			/* オフセット演算	*/
			s4_offset_iu_inv0_adfs		= (s4_offset_iu_inv0_adfs_sum>>7);
			s4_offset_iv_inv0_adfs		= (s4_offset_iv_inv0_adfs_sum>>7);
			s4_offset_iw_inv0_adfs		= (s4_offset_iw_inv0_adfs_sum>>7);
			s4_offset_idc_inv0_adfs		= (s4_offset_idc_inv0_adfs_sum>>7);

			u1_flag_inv0_offsetadj_ok	= 1;					/* オフセット調整完了フラグセット				*/
		}
		else{}
	}
	else if(0 == u1_flag_inv0_offsetadjl)						/* オフセット自動調整禁止						*/
	{
		u1_flag_inv0_offsetadj_ok		= 0;					/* 演算変数をリセットする						*/

		u2_cnt_inv0_offsetadj			= 0;

		s4_offset_iu_inv0_adfs_sum		= 0;
		s4_offset_iv_inv0_adfs_sum		= 0;
		s4_offset_iw_inv0_adfs_sum		= 0;
		s4_offset_idc_inv0_adfs_sum		= 0;
	}
	else{}
	/*=============================================================*/


}

/*===============================================================
+																+
+				Name:	void fb_pwm_inv0_adctrl_init (void)		+
+			Function:	キャリア割込みADデータ処理初期化関数	+
																+
+		Return Value:		No									+
+				date:		 23th Mar,2016						+
+																+
===============================================================*/
void fb_pwm_inv0_adctrl_init (void)
{

	/*=============================================================*/
	/* 						 ADデータバッファ					   */
	/*=============================================================*/
	s2_ad000						= ((s2)(0));
	s2_ad001						= ((s2)(0));
	s2_ad002						= ((s2)(0));
	s2_ad003						= ((s2)(0));
	s2_ad010						= ((s2)(0));
	s2_ad011						= ((s2)(0));
	s2_ad012						= ((s2)(0));
	s2_ad013						= ((s2)(0));
	s2_ad020						= ((s2)(0));
	s2_ad021						= ((s2)(0));
	s2_ad022						= ((s2)(0));
	s2_ad023						= ((s2)(0));
	s2_ad030						= ((s2)(0));
	s2_ad031						= ((s2)(0));
	s2_ad032						= ((s2)(0));
	s2_ad033						= ((s2)(0));
	s2_ad100						= ((s2)(0));
	s2_ad101						= ((s2)(0));
	s2_ad102						= ((s2)(0));
	s2_ad110						= ((s2)(0));
	s2_ad111						= ((s2)(0));
	s2_ad112						= ((s2)(0));
	s2_ad161						= ((s2)(0));
	s2_ad162						= ((s2)(0));

	s2_ad142						= ((s2)(0));
	/*=============================================================*/

	/*=============================================================*/
	/* 						 ADデータバッファ2					   */
	/*=============================================================*/
	s2_ad_inv0_vdc					= ((s2)(0));
	s2_ad_inv0_vdc_tmp				= ((s2)(0));
	s2_ad_inv0_idc					= ((s2)(0));
	s2_ad_inv0_iu					= ((s2)(0));
	s2_ad_inv0_iv					= ((s2)(0));
	s2_ad_inv0_iw					= ((s2)(0));
	s2_ad_inv0_vuv					= ((s2)(0));
	s2_ad_inv0_vwv					= ((s2)(0));
	s2_ad_inv0_tmp_igbt_up			= ((s2)(0));
	s2_ad_inv0_tmp_igbt_un			= ((s2)(0));
	s2_ad_inv0_tmp_igbt_vp			= ((s2)(0));
	s2_ad_inv0_tmp_igbt_vn			= ((s2)(0));
	s2_ad_inv0_tmp_igbt_wp			= ((s2)(0));
	s2_ad_inv0_tmp_igbt_wn			= ((s2)(0));
	s2_ad_inv0_tmp_mot1				= ((s2)(0));
	s2_ad_inv0_tmp_mot2				= ((s2)(0));
	s2_ad_inv0_tmp_int				= ((s2)(0));
	s2_ad_inv0_vctrlbd				= ((s2)(0));

	s2_ad_inv0_tmp_ai0				= (s2)(0);
	s2_ad_inv0_tmp_ai1				= (s2)(0);
	s2_ad_inv0_tmp_ai2				= (s2)(0);
	s2_ad_inv0_tmp_ai3				= (s2)(0);
	s2_ad_inv0_tmp_ai4				= (s2)(0);
	s2_ad_inv0_tmp_th1				= (s2)(0);
	s2_ad_inv0_tmp_th2				= (s2)(0);
	s2_ad_inv0_tmp_th3				= (s2)(0);
	s2_ad_inv0_tmp_th4				= (s2)(0);
	s2_ad_inv0_tmp_th5				= (s2)(0);
	s2_ad_inv0_tmp_th6				= (s2)(0);
	s2_ad_inv0_tmp_th7				= (s2)(0);
	s2_ad_inv0_tmp_th8				= (s2)(0);
	/*=============================================================*/

	/*=============================================================*/
	/* 						ADトリガディレイ初期化				   */
	/*=============================================================*/
	s4_adtrig_inv0_delay_ns			= ((s4)(ADTRIG_INV0_DELAY_NS));
	/*=============================================================*/

	/*=============================================================*/
	/* 						インバータA/D変数初期化				   */
	/*=============================================================*/
	f4_k_iu_inv0_adscale			= ((f4)(R_IU_INV0_AD/4096.));
	f4_k_iv_inv0_adscale			= ((f4)(R_IV_INV0_AD/4096.));
	f4_k_iw_inv0_adscale			= ((f4)(R_IW_INV0_AD/4096.));
	f4_k_vdc_inv0_adscale			= ((f4)(R_VDC_INV0_AD/4096.));
	f4_k_idc_inv0_adscale			= ((f4)(R_IDC_INV0_AD/4096.));

	s4_iu_inv0_adfs					= 0;
	s4_iv_inv0_adfs					= 0;
	s4_iw_inv0_adfs					= 0;

	f4_iu_inv0_ad					= ((f4)(0.));
	f4_iv_inv0_ad					= ((f4)(0.));
	f4_iw_inv0_ad					= ((f4)(0.));

	f4_iu_inv0_tmp_ad				= ((f4)(0.));
	f4_iv_inv0_tmp_ad				= ((f4)(0.));
	f4_iw_inv0_tmp_ad				= ((f4)(0.));

	u1_flag_ictrl_inv0_select		= ((u1)(ICTRL_INV0_SELECT));

	u1_flag_iad_inv0_avg			= (u1)(IAD_INV0_AVG);


	f4_iu_inv0_ctrl					= ((f4)(0.));
	f4_iv_inv0_ctrl					= ((f4)(0.));
	f4_iw_inv0_ctrl					= ((f4)(0.));

	f4_vdc_inv0_ad					= ((f4)(0.));
	f4_vdc_inv0_ad_offset			= (f4)(VDC_INV0_AD_OFFSET);

	f4_k_vuvw_inv0_adscale				= ((f4)(R_VUVW_INV0_AD/4096.));
	f4_vuv_inv0_ad					= ((f4)(0.));
	f4_vwv_inv0_ad					= ((f4)(0.));
	f4_vu_inv0_ad					= ((f4)(0.));
	f4_vv_inv0_ad					= ((f4)(0.));
	f4_vw_inv0_ad					= ((f4)(0.));
	f4_va_inv0_ad					= ((f4)(0.));
	f4_vb_inv0_ad					= ((f4)(0.));
	f4_vdq_inv0_ad						= ((f4)(0.));

	f4_wt_inv0_vuvw_ad					= ((f4)(0.));

	f4_wt_inv0_pll_vuvw_ad				= ((f4)(0.));
	f4_wt_inv0_pll_vuvw_ad_err			= ((f4)(0.));

	f4_kp_inv0_wrpll_vuvw_ad			= ((f4)(KP_INV0_WRPLL_VUVW_AD));
	f4_ki_inv0_wrpll_vuvw_ad			= ((f4)(KI_INV0_WRPLL_VUVW_AD));

	f4_wr_inv0_pll_vuvw_ad_p			= ((f4)(0.));
	f4_wr_inv0_pll_vuvw_ad_i			= ((f4)(0.));
	f4_wr_inv0_pll_vuvw_ad				= ((f4)(0.));

	f4_wclpf_inv0_wrpll_vuvw_ad			= ((f4)(WCLPF_INV0_WRPLL_VUVW_AD));
	f4_wr_inv0_pll_vuvw_ad_lpf			= ((f4)(0.));

	s4_idc_inv0_adfs				= 0;
	f4_idc_inv0_ad					= ((f4)(0.));
	f4_idc_inv0_tmp_ad				= ((f4)(0.));

	f4_vctrlbd_inv0_ad				= (f4)(0.);
	f4_k_vctrlbd_inv0_adscale		= (f4)(R_VCTRLBD_INV0_AD/4096.);
	/*=============================================================*/

	/*=============================================================*/
	/* 						　直流電圧LPF変数初期化				   */
	/*=============================================================*/
	f4_wclpf_inv0_vdc				= ((f4)(WCLPF_INV0_VDC));
	f4_vdc_inv0_lpf					= ((f4)(0.));
	f4_wclpf_inv0_idc				= ((f4)(WCLPF_INV0_IDC));
	f4_idc_inv0_lpf					= ((f4)(0.));
	/*=============================================================*/

	/*=============================================================*/
	/* 						　1/vdc演算変数初期化				   */
	/*=============================================================*/
	f4_dvdc_inv0_ad					= ((f4)(0.));
	/*=============================================================*/

	/*=============================================================*/
	/* 						A/Dオフセット変数初期化				   */
	/*=============================================================*/
	s4_offset_iu_inv0_adfs			= (s4)(0);
	s4_offset_iv_inv0_adfs			= (s4)(0);
	s4_offset_iw_inv0_adfs			= (s4)(0);
	s4_offset_idc_inv0_adfs			= (s4)(0);

	s4_offset_iu_inv0_adfs_sum		= (s4)(0);
	s4_offset_iv_inv0_adfs_sum		= (s4)(0);
	s4_offset_iw_inv0_adfs_sum		= (s4)(0);
	s4_offset_idc_inv0_adfs_sum		= (s4)(0);

	u2_cnt_inv0_offsetadj			= 0;
	u1_flag_inv0_offsetadj_ok		= 0;
	/*=============================================================*/


}



