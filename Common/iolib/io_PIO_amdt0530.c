/*===============================================================
+																+
+			Title:	 AMDTCTRL-C1Hソフトウェア				    +
+																+
+				date:		1th Apri,2017						+
+																+
+  	 	Copyright (C) Aoyama Motor Drive Technology    2017		+
+																+
===============================================================*/

/*=============================================================*/
/* 				 ヘッダファイルのインクルード				   */
/*=============================================================*/
#include	"iodefine.h"										/* 周辺定義ヘッダファイル						*/
#include    "vals_typedef.h"									/* 変数型定義ヘッダファイル						*/
/* ライブラリ/デバッグ関係		*/
/*=============================================================*/

/*=============================================================*/
/* 					関数のプロトタイプ宣言					   */
/*=============================================================*/
void pio_init ( void );
void ex_intpx_int( u1 u1_intlv );
/*=============================================================*/


/*=============================================================
	IOポート設定						   
================================================================*/
void pio_init ( void )
{
	//・汎用IOポートの入出力を行う。
	//・兼用ポートは、各種IOライブラリにて設定する。
	//・PU/PDなし

	/*	＜PCRn_mレジスタメモ＞		*/
	/*出力バッファ強度設定 PUCC/PDSC 	:　00b:LOW/01b:HI/10b/Mid		*/
	/*		3322222222221111111111										*/
	/*		10987654321098765432109876543210							*/
	/*           PP     PPPP   P   P PPP PPP							*/
	/*		-----UD-----UDBI--- ---P-MIM-FFF							*/
	/*           CS       DB       R CP  CCC							*/
	/*           CC       CC          C  AE								*/
	/*                                   E								*/
	/*																	*/
	/*	入力端子設定		0x00010010(PIBC=1/PM=1)						*/
	/*  出力端子LOW設定		0x00000000(PM=0)							*/
	/*  出力端子HI設定		0x00001000(PM=0)							*/
	/*　入力端子&入力値無効	0x00000010(PM=1)							*/
	/*  入力端子&PULLUP		0x00090010(PU=1/PIBC=1/PM=1)				*/
	/*  入出力LOW出力		0x00020000									*/
	/*	入出力HI出力		0x00021000									*/
	/*-------------------------------------------------------------------------------*/
	/*---- P0グループ ----*/
	/*	P0_0 / TAUD0I0 / TAUD0O0 / TAUJ0I0 / TAUJ0O0					*/
		PORT.PCR0_0.UINT32		=	0x00010010;						/* 入力		*/
	/*	P0_1 / TAUD0I1 / TAUD0O1 / TAUJ0I1 / TAUJ0O1					*/
		PORT.PCR0_1.UINT32		=	0x00000000;						/* 出力		*/
	/*	P0_2 / TAUD0I2 / TAUD0O2 / TAUJ0I2 / TAUJ0O2					*/
		PORT.PCR0_2.UINT32		=	0x00000000;						/* 出力		*/
	/*	P0_3 / TAUD0I3 / TAUD0O3 / TAUJ0I3 / TAUJ0O3 / CAN2RX / INTP0*/
		PORT.PCR0_3.UINT32		=	0x00000000;						/* 出力		*/
	/*	P0_4 / TAUD0I4 / TAUD0O4 / CAN2TX / INTP1					*/
		PORT.PCR0_4.UINT32		=	0x00001000;						/* 出力(HI)	*/
	/*	P0_5 / TAUD0I5 / TAUD0O5 / TAUJ0I0 / TAUJ0O0 / INTP2			*/
		PORT.PCR0_5.UINT32		=	0x00000000;						/* 出力		*/
	/*	P0_6 / TAUD0I6 / TAUD0O6 / TAUJ0I1 / TAUJ0O1 / ENCA0E0 / INTP3*/
		PORT.PCR0_6.UINT32		=	0x00010010;						/* 入力		*/
	/*	P0_7 / TAUD0I7 / TAUD0O7 / TAUJ0I2 / TAUJ0O2 / ENCA0E1 / INTP4*/
		PORT.PCR0_7.UINT32		=	0x00010010;						/* 入力		*/
	/*	P0_8 / TAUD0I8 / TAUD0O8 / TAUJ0I3 / TAUJ0O3 / ENCA0EC / INTP5*/
		PORT.PCR0_8.UINT32		=	0x00010010;						/* 入力		*/
	/*	P0_9 / TAUD0I9 / TAUD0O9 / INTP6								*/
		PORT.PCR0_9.UINT32		=	0x00010010;						/* 入力		*/
	/*	P0_10 / TAUD0I10 / TAUD0O10 / TAPA1UP / INTP7 */
		PORT.PCR0_10.UINT32		=	0x00010010;						/* 入力		*/
	/*	P0_11 / TAUD0I11 / TAUD0O11 / TAPA1UN */
		PORT.PCR0_11.UINT32		=	0x00010010;						/* 入力		*/
	/*	P0_12 / TAUD0I12 / TAUD0O12 / TAPA1VP */
		PORT.PCR0_12.UINT32		=	0x00010010;						/* 入力		*/
	/*	P0_13 / TAUD0I13 / TAUD0O13 / TAPA1VN */
		PORT.PCR0_13.UINT32		=	0x00010010;						/* 入力		*/
	/*	P0_14 / TAUD0I14 / TAUD0O14 / TAPA1WP */
		PORT.PCR0_14.UINT32		=	0x00010010;						/* 入力		*/
	/*	P0_15 / TAUD0I15 / TAUD0O15 / TAPA1WN */
		PORT.PCR0_15.UINT32		=	0x00010010;						/* 入力		*/		
	/*-------------------------------------------------------------------------------*/
	/*---- P1グループ ----*/
	/*	P1_0 / TAUD1I0 / TAUD1O0 / TAUD1O1 / ENCA0TIN0 / TSG30O0 / TAPA2ESO	*/
		PORT.PCR1_0.UINT32		=	0x00000000;						/* 出力		*/
	/*	P1_1 / TAUD1I1 / TAUD1O1 / ENCA0TIN1 / TSG30O7				*/
		PORT.PCR1_1.UINT32		=	0x00010010;						/* 入力		*/
	/*	P1_2 / TAUD1I2 / TAUD1O2 / TAUD1O3 / TSG30O1					*/
		PORT.PCR1_2.UINT32		=	0x00010010;						/* 入力		*/
	/*	P1_3 / TAUD1I3 / TAUD1O3 / TSG30O3							*/
		PORT.PCR1_3.UINT32		=	0x00010010;						/* 入力		*/
	/*	P1_4 / TAUD1I4 / TAUD1O4 / TAUD1O5 / TSG30O5					*/
		PORT.PCR1_4.UINT32		=	0x00010010;						/* 入力		*/
	/*	P1_5 / TAUD1I5 / TAUD1O5 / TSG30O2							*/
		PORT.PCR1_5.UINT32		=	0x00010010;						/* 入力		*/
	/*	P1_6 / TAUD1I6 / TAUD1O6 / TAUD1O7 / TSG30O4					*/
		PORT.PCR1_6.UINT32		=	0x00010010;						/* 入力		*/
	/*	P1_7 / TAUD1I7 / TAUD1O7 / TSG30O6							*/
		PORT.PCR1_7.UINT32		=	0x00010010;						/* 入力		*/
	/*	P1_8 / TAUD1I8 / TAUD1O8 / TAUD1O9 / TSG31O1					*/
		PORT.PCR1_8.UINT32		=	0x00010010;						/* 入力		*/
	/*	P1_9 / TAUD1I9 / TAUD1O9 / TSG31O3							*/
		PORT.PCR1_9.UINT32		=	0x00010010;						/* 入力		*/
	/*	P1_10 / TAUD1I10 / TAUD1O10 / TAUD1O11 / TSG31O5				*/
		PORT.PCR1_10.UINT32		=	0x00010010;						/* 入力		*/
	/*	P1_11 / TAUD1I11 / TAUD1O11 / TSG31O2						*/
		PORT.PCR1_11.UINT32		=	0x00010010;						/* 入力		*/
	/*	P1_12 / TAUD1I12 / TAUD1O12 / TAUD1O13 / TSG31O4				*/
		PORT.PCR1_12.UINT32		=	0x00010010;						/* 入力		*/
	/*	P1_13 / TAUD1I13 / TAUD1O13 / TSG31O6						*/
		PORT.PCR1_13.UINT32		=	0x00010010;						/* 入力		*/
	/*	P1_14 / TAUD1I14 / TAUD1O14 / TAUD1O15 / TSG31O0 / TAPA3ESO	*/
		PORT.PCR1_14.UINT32		=	0x00000000;						/* 出力		*/
	/*	P1_15 / TAUD1I15 / TAUD1O15 / TSG31O7						*/
		PORT.PCR1_15.UINT32		=	0x00010010;						/* 入力		*/
	/*-------------------------------------------------------------------------------*/
	/*---- P2グループ ----*/
	/*	P2_0 / TAUD0I3 / TAUD0O3 / INTP0								*/
		PORT.PCR2_0.UINT32		=	0x00010010;						/* 入力		*/
	/*	P2_1 / TAUD0I4 / TAUD0O4 / INTP1								*/
		PORT.PCR2_1.UINT32		=	0x00010010;						/* 入力		*/
	/*	P2_2 / TAUD0I10 / TAUD0O10 / TAPA0UP / INTP2					*/
		// PORT.PCR2_2.UINT32		=	0x00000000;						/* 出力		*/
		PORT.PCR2_2.UINT32		=	0x00001000;						/* 出力(HI)	*/
	/*	P2_3 / TAUD0I11 / TAUD0O11 / TAPA0UN / INTP3					*/
		// PORT.PCR2_3.UINT32		=	0x00000000;						/* 出力		*/
		PORT.PCR2_3.UINT32		=	0x00001000;						/* 出力(HI)	*/
	/*	P2_4 / TAUD0I12 / TAUD0O12 / TAPA0VP / INTP4					*/
		// PORT.PCR2_4.UINT32		=	0x00000000;						/* 出力		*/
		PORT.PCR2_4.UINT32		=	0x00001000;						/* 出力(HI)	*/
	/*	P2_5 / TAUD0I13 / TAUD0O13 / TAPA0VN / INTP5					*/
		PORT.PCR2_5.UINT32		=	0x00010010;						/* 入力		*/
	/*	P2_6 / TAUD0I14 / TAUD0O14 / TAPA0WP / INTP6					*/
		PORT.PCR2_6.UINT32		=	0x00010010;						/* 入力		*/
	/*	 P2_7 / TAUD0I15 / TAUD0O15 / TAPA0WN / INTP7					*/
		// PORT.PCR2_7.UINT32		=	0x00000000;						/* 出力		*/
		PORT.PCR2_7.UINT32		=	0x00001000;						/* 出力(HI)	*/
	/*-------------------------------------------------------------------------------*/
	/*---- P3グループ ----*/
	/*	P3_0 / TAUD0I5 / TAUD0O5									*/
		// PORT.PCR3_0.UINT32		=	0x00000000;						/* 出力		*/
		PORT.PCR3_0.UINT32		=	0x00001000;						/* 出力(HI)	*/
	/*	P3_1 / TAUD0I7 / TAUD0O7 / ADCC0TRG							*/
		// PORT.PCR3_1.UINT32		=	0x00000000;						/* 出力		*/
		PORT.PCR3_1.UINT32		=	0x00001000;						/* 出力(HI)	*/
	/*	P3_2 / TAUD1I5 / TAUD1O5 / ADCC1TRG							*/
		// PORT.PCR3_2.UINT32		=	0x00000000;						/* 出力		*/
		PORT.PCR3_2.UINT32		=	0x00001000;						/* 出力(HI)	*/
	/*	P3_3 / TAUD1I7 / TAUD1O7 / TAPA2ESO							*/
		PORT.PCR3_3.UINT32		=	0x00010010;						/* 入力		*/
	/*	P3_4 / ADCC1TRG	 / TAPA3ESO									*/
		PORT.PCR3_4.UINT32		=	0x00010010;						/* 入力		*/
	/*	P3_5 / TAPA0ESO												*/
		// PORT.PCR3_5.UINT32		=	0x00000000;						/* 出力		*/
		PORT.PCR3_5.UINT32		=	0x00001000;						/* 出力(HI)	*/
	/*	P3_6 / TAPA1ESO												*/
		PORT.PCR3_6.UINT32		=	0x00001000;						/* 出力(HI)	*/
	/*	P3_7														*/
		PORT.PCR3_7.UINT32		=	0x00001000;						/* 出力(HI)	*/
	/*-------------------------------------------------------------------------------*/
	/*---- P4グループ ----*/
	/*	P4_0 / CSIH1SI												*/
		PORT.PCR4_0.UINT32		=	0x00010010;						/* 入力		*/
	/*	P4_1 / CSIH1SO												*/
		PORT.PCR4_1.UINT32		=	0x00010010;						/* 入力		*/
	/*	P4_2 / CSIH1SC												*/
		PORT.PCR4_2.UINT32		=	0x00010010;						/* 入力		*/
	/*	P4_3 / CAN3RX / CSIH0SSI / CSIH1CSS0							*/
		PORT.PCR4_3.UINT32		=	0x00010010;						/* 入力		*/
	/*	P4_4 / CAN3TX / CSIH0RYI / CSIH0RYO / CSIH1CSS1				*/
		PORT.PCR4_4.UINT32		=	0x00010010;						/* 入力		*/
	/*	P4_5 / CAN0RX / CSIH1CSS2									*/
		PORT.PCR4_5.UINT32		=	0x00010010;						/* 入力		*/
	/*	P4_6 / CAN0TX / CSIH1CSS3									*/
		PORT.PCR4_6.UINT32		=	0x00010010;						/* 入力		*/
	/*	P4_7 / CSIH0SI / CSIH1SSI									*/
		PORT.PCR4_7.UINT32		=	0x00010010;						/* 入力		*/
	/*	P4_8 / CSIH0SO / CSIH1RYI / CSIH1RYO						*/
		PORT.PCR4_8.UINT32		=	0x00001000;						/* 出力(HI)	*/
	/*	P4_9 / CSIH0SC												*/
		PORT.PCR4_9.UINT32		=	0x00001000;						/* 出力(HI)	*/
	/*	P4_10 / TPBA0O / CSIH0CSS0									*/
		PORT.PCR4_10.UINT32		=	0x00001000;						/* 出力(HI)	*/
	/*	P4_11 / ENCA1E0 / CSIH0CSS1									*/
		PORT.PCR4_11.UINT32		=	0x00010010;						/* 入力		*/
	/*	P4_12 / ENCA1E1 / CSIH0CSS2									*/
		PORT.PCR4_12.UINT32		=	0x00010010;						/* 入力		*/
	/*	P4_13 / ENCA1EC / CSIH0CSS3									*/
		PORT.PCR4_13.UINT32		=	0x00010010;						/* 入力		*/
	/*	P4_14 / CAN1RX												*/
		PORT.PCR4_14.UINT32		=	0x00010010;						/* 入力		*/
	/*	P4_15 / CAN1TX / ERROROUT_C									*/
		PORT.PCR4_15.UINT32		=	0x00010010;						/* 入力		*/
	/*-------------------------------------------------------------------------------*/
	/*---- P5グループ ----*/
	/*	P5_0 / RLIN22RX / SCI0RXD									*/
		PORT.PCR5_0.UINT32		=	0x00010010;						/* 入力		*/
	/*	P5_1 / RLIN22TX / SCI0TXD									*/
		PORT.PCR5_1.UINT32		=	0x00000000;						/* 出力		*/
	/*	P5_2 / RLIN21RX / SCI0SCK									*/
		PORT.PCR5_2.UINT32		=	0x00000000;						/* 出力		*/
	/*	P5_3 / RLIN21TX / SCI1RXD									*/
		PORT.PCR5_3.UINT32		=	0x00010010;						/* 入力		*/
	/*	P5_4 / RLIN20RX / SCI1TXD									*/
		PORT.PCR5_4.UINT32		=	0x00000000;						/* 出力		*/
	/*	P5_5 / RLIN20TX / SCI1SCK / ERROROUT_C						*/
//		PORT.PCR5_5.UINT32		=	0x00010010;						/* 入力		*/
		/* この端子は、cpu_intでERROROUT_Cに設定される為、未設定			*/
	/*	P5_6 / TPBA1O / TAPA0ESO									*/
		PORT.PCR5_6.UINT32		=	0x00000000;						/* 出力		*/
	/*	P5_7 / SCI2SCK												*/
		PORT.PCR5_7.UINT32		=	0x00010010;						/* 入力		*/
	/*	P5_8 / SCI2RXD												*/
		PORT.PCR5_8.UINT32		=	0x00010010;						/* 入力		*/
	/*	P5_9 / SCI2TXD												*/
		PORT.PCR5_9.UINT32		=	0x00000000;						/* 出力		*/
	/*-------------------------------------------------------------------------------*/
	/*---- P6グループ ----*/
	/*	P6_0 														*/
		PORT.PCR6_0.UINT32		=	0x00000000;						/* 出力		*/
	/*	P6_1														*/
		PORT.PCR6_1.UINT32		=	0x00000000;						/* 出力		*/
	/*	P6_2														*/
		PORT.PCR6_2.UINT32		=	0x00000000;						/* 出力		*/
	/*	P6_3 														*/
		PORT.PCR6_3.UINT32		=	0x00000000;						/* 出力		*/
	/*	P6_4 / TAPA0ESO												*/
		PORT.PCR6_4.UINT32		=	0x00010010;						/* 入力		*/
	/*	P6_5 / TAPA1ESO												*/
		PORT.PCR6_5.UINT32		=	0x00010010;						/* 入力		*/
	/*	P6_6 / TAUD1I5 / TAUD1O5 / ADCC1TRG 						*/
		PORT.PCR6_6.UINT32		=	0x00010010;						/* 入力		*/
	/*	P6_7 / TAUD1I7 / TAUD1O7 / ADCC0TRG 						*/
		PORT.PCR6_7.UINT32		=	0x00010010;						/* 入力		*/
	/*-------------------------------------------------------------------------------*/
	/*---- P7グループ ----*/
	/*	P7_0 / ENCA1TIN0												*/
		PORT.PCR7_0.UINT32		=	0x00010010;						/* 入力		*/
	/*	P7_1 / ENCA1TIN1												*/
		PORT.PCR7_1.UINT32		=	0x00010010;						/* 入力		*/
	/*	P7_2															*/
		PORT.PCR7_2.UINT32		=	0x00010010;						/* 入力		*/
	/*	P7_3 / SCI0RXD												*/
		PORT.PCR7_3.UINT32		=	0x00010010;						/* 入力 	 */
	/*	P7_4 / SCI0TXD												*/
		PORT.PCR7_4.UINT32		=	0x00010010;						/* 入力		*/

	/*-------------------------------------------------------------------------------*/		

}

/*==============================================================*/
/*	外部割り込み初期化関数										*/
/*	引数：														*/
/*      u1 u1_intpx  :外部割り込み指定							*/
/*						0: INTP0 ・・・　7:INTP7				*/
/*		u1 u1_filter :ディジタルフィルタ設定					*/
/*						下記以外:フィルタなし					*/
/*						0: PCLKでサンプリング					*/
/*						1: PCLKB/2でサンプリング				*/
/*						2: PCLKB/4でサンプリング				*/
/*						3: PCLKB/8でサンプリング				*/
/*						3: PCLKB/16でサンプリング				*/
/*		u1 u1_level		0: LOWレベル検出						*/
/*						1: HIレベル検出							*/
/*						2: 立下りエッジ検出						*/
/*						3: 立上りエッジ検出						*/
/*		u1 u1_intlv		割り込みレベル							*/
/* 戻り値：	なし												*/
/*--------------------------------------------------------------*/
/*	備考														*/
/*   フィルタのサンプリング回数は、2回固定						*/
/*                  (）端子選択は、defineで設定					*/
/*		INTP0:	P20												*/
/*		INTP1:	P21												*/
/*		INTP2:	P22 (P05) 　									*/
/*		INTP3:	P23	(P06)										*/
/*		INTP4:	P24												*/
/*		INTP5:	P25	(P08)										*/
/*		INTP6:	P26	(P09)										*/
/*		INTP7:	P27												*/
/*==============================================================*/
#define	INTP2_P22			(1)			/* 1: INTP2=P22  / 0: INTP2=P05			*/
#define	INTP3_P23			(1)			/* 1: INTP3=P23  / 0: INTP2=P06			*/
#define	INTP5_P25			(1)			/* 1: INTP5=P25  / 0: INTP2=P08			*/
#define	INTP6_P26			(1)			/* 1: INTP6=P26  / 0: INTP2=P09			*/


void ex_intpx_init ( u1 u1_intpx , u1 u1_filter , u1 u1_level , u1 u1_intlv )
{
	switch ( u1_intpx )
	{
		case 0:
			/*	割り込み禁止	*/
			INTC1.EIC9.BIT.EIMK9	= 1 ;						/* 割り込みマスク								*/
			/* ノイズ除去		*/
			if ( u1_filter < 4 )
			{
				DNF.P010CTL0.BIT.PRS	=	u1_filter;			/* サンプリングクロック分周比					*/
				DNF.P010CTL0.BIT.SLST	=	0;					/* ノイズ除去サンプリング回数	0:2/1:3/2:4/3:5	*/
				DNF.P010CTL0.BIT.NFEN	=	1;
			}
			else{}
			/* 兼用機能設定		*/
			PORT.PCR2_0.UINT32			= 	0x00000056;			/* 	(PIBC=0/PMC=1/PM=1/PFCAE=1/PFCE=1)	*/
			/* エッジ検出設定	*/
			EINT.EXINTCTL.BIT.IRQ0S	=	u1_level;			/* 0: LOWレベル/1:HIレベル/2:FALLエッジ/3:Riseエッジ	*/	
			if( u1_intlv < 16 )
			{
				INTC1.EIC9.BIT.EIRF9	= 0 ;					/* 割り込みフラグクリア								*/
				INTC1.EIC9.BIT.EIP9	= u1_intlv ;			/* 割り込みレベル設定								*/
				INTC1.EIC9.BIT.EITB9	= 1;					/* テーブル参照方式									*/
//				INTC1.EIC9.BIT.EITB9	= 0;					/* 直接分岐方式										*/
				INTC1.EIC9.BIT.EIMK9	= 0 ;					/* 割り込みマスククリア								*/
			}
			else
			{
				INTC1.EIC9.BIT.EIP9	= 15 ;					/* 割り込みレベル設定								*/
				INTC1.EIC9.BIT.EIMK9	= 1 ;					/* 割り込みマスク									*/
			}
		break;

		case 1:
			/*	割り込み禁止	*/
			INTC1.EIC10.BIT.EIMK10	= 1 ;						/* 割り込みマスク								*/
			/* ノイズ除去		*/
			if ( u1_filter < 4 )
			{
				DNF.P010CTL1.BIT.PRS	=	u1_filter;			/* サンプリングクロック分周比					*/
				DNF.P010CTL1.BIT.SLST	=	0;					/* ノイズ除去サンプリング回数	0:2/1:3/2:4/3:5	*/
				DNF.P010CTL1.BIT.NFEN	=	1;
			}
			else{}
			/* 兼用機能設定		*/
			PORT.PCR2_1.UINT32			= 	0x00000056;			/* 	(PIBC=0/PMC=1/PM=1/PFCAE=1/PFCE=1)	*/
			/* エッジ検出設定	*/
			EINT.EXINTCTL.BIT.IRQ1S	=	u1_level;			/* 0: LOWレベル/1:HIレベル/2:FALLエッジ/3:Riseエッジ	*/	
			if( u1_intlv < 16 )
			{
				INTC1.EIC10.BIT.EIRF10	= 0 ;					/* 割り込みフラグクリア								*/
				INTC1.EIC10.BIT.EIP10	= u1_intlv ;			/* 割り込みレベル設定								*/
				INTC1.EIC10.BIT.EITB10	= 1;					/* テーブル参照方式									*/
//				INTC1.EIC10.BIT.EITB10	= 0;					/* 直接分岐方式										*/
				INTC1.EIC10.BIT.EIMK10	= 0 ;					/* 割り込みマスククリア								*/
			}
			else
			{
				INTC1.EIC10.BIT.EIP10	= 15 ;					/* 割り込みレベル設定								*/
				INTC1.EIC10.BIT.EIMK10	= 1 ;					/* 割り込みマスク									*/
			}
		break;

		case 2:
			/*	割り込み禁止	*/
			INTC1.EIC11.BIT.EIMK11	= 1 ;						/* 割り込みマスク								*/
			/* ノイズ除去		*/
			if ( u1_filter < 4 )
			{
				DNF.P010CTL2.BIT.PRS	=	u1_filter;			/* サンプリングクロック分周比					*/
				DNF.P010CTL2.BIT.SLST	=	0;					/* ノイズ除去サンプリング回数	0:2/1:3/2:4/3:5	*/
				DNF.P010CTL2.BIT.NFEN	=	1;
			}
			else{}
			/* 兼用機能設定		*/
			#if INTP2_P22
				PORT.PCR2_2.UINT32			= 	0x00000056;			/* 	(PIBC=0/PMC=1/PM=1/PFCAE=1/PFCE=1)	*/
			#else
				PORT.PCR0_5.UINT32			= 	0x00000056;			/* 	(PIBC=0/PMC=1/PM=1/PFCAE=1/PFCE=1)	*/			
			#endif
			/* エッジ検出設定	*/
			EINT.EXINTCTL.BIT.IRQ2S	=	u1_level;			/* 0: LOWレベル/1:HIレベル/2:FALLエッジ/3:Riseエッジ	*/	
			if( u1_intlv < 16 )
			{
				INTC1.EIC11.BIT.EIRF11	= 0 ;					/* 割り込みフラグクリア								*/
				INTC1.EIC11.BIT.EIP11	= u1_intlv ;			/* 割り込みレベル設定								*/
				INTC1.EIC11.BIT.EITB11	= 1;					/* テーブル参照方式									*/
//				INTC1.EIC11.BIT.EITB11	= 0;					/* 直接分岐方式										*/
				INTC1.EIC11.BIT.EIMK11	= 0 ;					/* 割り込みマスククリア								*/
			}
			else
			{
				INTC1.EIC11.BIT.EIP11	= 15 ;					/* 割り込みレベル設定								*/
				INTC1.EIC11.BIT.EIMK11	= 1 ;					/* 割り込みマスク									*/
			}
		break;

		case 3:
			/*	割り込み禁止	*/
			INTC1.EIC12.BIT.EIMK12	= 1 ;						/* 割り込みマスク								*/
			/* ノイズ除去		*/
			if ( u1_filter < 4 )
			{
				DNF.P010CTL3.BIT.PRS	=	u1_filter;			/* サンプリングクロック分周比					*/
				DNF.P010CTL3.BIT.SLST	=	0;					/* ノイズ除去サンプリング回数	0:2/1:3/2:4/3:5	*/
				DNF.P010CTL3.BIT.NFEN	=	1;
			}
			else{}
			/* 兼用機能設定		*/
			#if INTP3_P23			
				PORT.PCR2_3.UINT32			= 	0x00000056;			/* 	(PIBC=0/PMC=1/PM=1/PFCAE=1/PFCE=1)	*/
			#else
				PORT.PCR0_6.UINT32			= 	0x00000056;			/* 	(PIBC=0/PMC=1/PM=1/PFCAE=1/PFCE=1)	*/			
			#endif
			/* エッジ検出設定	*/
			EINT.EXINTCTL.BIT.IRQ3S	=	u1_level;			/* 0: LOWレベル/1:HIレベル/2:FALLエッジ/3:Riseエッジ	*/	
			if( u1_intlv < 16 )
			{
				INTC1.EIC12.BIT.EIRF12	= 0 ;					/* 割り込みフラグクリア								*/
				INTC1.EIC12.BIT.EIP12	= u1_intlv ;			/* 割り込みレベル設定								*/
				INTC1.EIC12.BIT.EITB12	= 1;					/* テーブル参照方式									*/
//				INTC1.EIC12.BIT.EITB12	= 0;					/* 直接分岐方式										*/
				INTC1.EIC12.BIT.EIMK12	= 0 ;					/* 割り込みマスククリア								*/
			}
			else
			{
				INTC1.EIC12.BIT.EIP12	= 15 ;					/* 割り込みレベル設定								*/
				INTC1.EIC12.BIT.EIMK12	= 1 ;					/* 割り込みマスク									*/
			}
		break;

		case 4:
			/*	割り込み禁止	*/
			INTC1.EIC13.BIT.EIMK13	= 1 ;						/* 割り込みマスク								*/
			/* ノイズ除去		*/
			if ( u1_filter < 4 )
			{
				DNF.P010CTL4.BIT.PRS	=	u1_filter;			/* サンプリングクロック分周比					*/
				DNF.P010CTL4.BIT.SLST	=	0;					/* ノイズ除去サンプリング回数	0:2/1:3/2:4/3:5	*/
				DNF.P010CTL4.BIT.NFEN	=	1;
			}
			else{}
			/* 兼用機能設定		*/
			PORT.PCR2_4.UINT32			= 	0x00000056;			/* 	(PIBC=0/PMC=1/PM=1/PFCAE=1/PFCE=1)	*/
			/* エッジ検出設定	*/
			EINT.EXINTCTL.BIT.IRQ4S	=	u1_level;			/* 0: LOWレベル/1:HIレベル/2:FALLエッジ/3:Riseエッジ	*/	
			if( u1_intlv < 16 )
			{
				INTC1.EIC13.BIT.EIRF13	= 0 ;					/* 割り込みフラグクリア								*/
				INTC1.EIC13.BIT.EIP13	= u1_intlv ;			/* 割り込みレベル設定								*/
				INTC1.EIC13.BIT.EITB13	= 1;					/* テーブル参照方式									*/
//				INTC1.EIC13.BIT.EITB13	= 0;					/* 直接分岐方式										*/
				INTC1.EIC13.BIT.EIMK13	= 0 ;					/* 割り込みマスククリア								*/
			}
			else
			{
				INTC1.EIC13.BIT.EIP13	= 15 ;					/* 割り込みレベル設定								*/
				INTC1.EIC13.BIT.EIMK13	= 1 ;					/* 割り込みマスク									*/
			}
		break;

		case 5:
			/*	割り込み禁止	*/
			INTC1.EIC14.BIT.EIMK14	= 1 ;						/* 割り込みマスク								*/
			/* ノイズ除去		*/
			if ( u1_filter < 4 )
			{
				DNF.P010CTL5.BIT.PRS	=	u1_filter;			/* サンプリングクロック分周比					*/
				DNF.P010CTL5.BIT.SLST	=	0;					/* ノイズ除去サンプリング回数	0:2/1:3/2:4/3:5	*/
				DNF.P010CTL5.BIT.NFEN	=	1;
			}
			else{}
			/* 兼用機能設定		*/
			#if INTP5_P25
				PORT.PCR2_5.UINT32			= 	0x00000056;			/* 	(PIBC=0/PMC=1/PM=1/PFCAE=1/PFCE=1)	*/
			#else
				PORT.PCR0_8.UINT32			= 	0x00000056;			/* 	(PIBC=0/PMC=1/PM=1/PFCAE=1/PFCE=1)	*/				
			#endif
			/* エッジ検出設定	*/
			EINT.EXINTCTL.BIT.IRQ5S	=	u1_level;			/* 0: LOWレベル/1:HIレベル/2:FALLエッジ/3:Riseエッジ	*/	
			if( u1_intlv < 16 )
			{
				INTC1.EIC14.BIT.EIRF14	= 0 ;					/* 割り込みフラグクリア								*/
				INTC1.EIC14.BIT.EIP14	= u1_intlv ;			/* 割り込みレベル設定								*/
				INTC1.EIC14.BIT.EITB14	= 1;					/* テーブル参照方式									*/
//				INTC1.EIC14.BIT.EITB14	= 0;					/* 直接分岐方式										*/
				INTC1.EIC14.BIT.EIMK14	= 0 ;					/* 割り込みマスククリア								*/
			}
			else
			{
				INTC1.EIC14.BIT.EIP14	= 15 ;					/* 割り込みレベル設定								*/
				INTC1.EIC14.BIT.EIMK14	= 1 ;					/* 割り込みマスク									*/
			}
		break;

		case 6:
			/*	割り込み禁止	*/
			INTC1.EIC15.BIT.EIMK15	= 1 ;						/* 割り込みマスク								*/
			/* ノイズ除去		*/
			if ( u1_filter < 4 )
			{
				DNF.P010CTL6.BIT.PRS	=	u1_filter;			/* サンプリングクロック分周比					*/
				DNF.P010CTL6.BIT.SLST	=	0;					/* ノイズ除去サンプリング回数	0:2/1:3/2:4/3:5	*/
				DNF.P010CTL6.BIT.NFEN	=	1;
			}
			else{}
			/* 兼用機能設定		*/
			#if INTP6_P26
				PORT.PCR2_6.UINT32			= 	0x00000056;			/* 	(PIBC=0/PMC=1/PM=1/PFCAE=1/PFCE=1)	*/
			#else
				PORT.PCR0_9.UINT32			= 	0x00000056;			/* 	(PIBC=0/PMC=1/PM=1/PFCAE=1/PFCE=1)	*/
			#endif

			/* エッジ検出設定	*/
			EINT.EXINTCTL.BIT.IRQ6S	=	u1_level;			/* 0: LOWレベル/1:HIレベル/2:FALLエッジ/3:Riseエッジ	*/	
			if( u1_intlv < 16 )
			{
				INTC1.EIC15.BIT.EIRF15	= 0 ;					/* 割り込みフラグクリア								*/
				INTC1.EIC15.BIT.EIP15	= u1_intlv ;			/* 割り込みレベル設定								*/
				INTC1.EIC15.BIT.EITB15	= 1;					/* テーブル参照方式									*/
//				INTC1.EIC15.BIT.EITB15	= 0;					/* 直接分岐方式										*/
				INTC1.EIC15.BIT.EIMK15	= 0 ;					/* 割り込みマスククリア								*/
			}
			else
			{
				INTC1.EIC15.BIT.EIP15	= 15 ;					/* 割り込みレベル設定								*/
				INTC1.EIC15.BIT.EIMK15	= 1 ;					/* 割り込みマスク									*/
			}
		break;
		
		case 7:
			/*	割り込み禁止	*/
			INTC1.EIC16.BIT.EIMK16	= 1 ;						/* 割り込みマスク								*/
			/* ノイズ除去		*/
			if ( u1_filter < 4 )
			{
				DNF.P010CTL7.BIT.PRS	=	u1_filter;			/* サンプリングクロック分周比					*/
				DNF.P010CTL7.BIT.SLST	=	0;					/* ノイズ除去サンプリング回数	0:2/1:3/2:4/3:5	*/
				DNF.P010CTL7.BIT.NFEN	=	1;
			}
			else{}
			/* 兼用機能設定		*/
			PORT.PCR2_7.UINT32			= 	0x00000056;			/* 	(PIBC=0/PMC=1/PM=1/PFCAE=1/PFCE=1)	*/
			/* エッジ検出設定	*/
			EINT.EXINTCTL.BIT.IRQ7S	=	u1_level;			/* 0: LOWレベル/1:HIレベル/2:FALLエッジ/3:Riseエッジ	*/	
			if( u1_intlv < 16 )
			{
				INTC1.EIC16.BIT.EIRF16	= 0 ;					/* 割り込みフラグクリア								*/
				INTC1.EIC16.BIT.EIP16	= u1_intlv ;			/* 割り込みレベル設定								*/
				INTC1.EIC16.BIT.EITB16	= 1;					/* テーブル参照方式									*/
//				INTC1.EIC16.BIT.EITB16	= 0;					/* 直接分岐方式										*/
				INTC1.EIC16.BIT.EIMK16	= 0 ;					/* 割り込みマスククリア								*/
			}
			else
			{
				INTC1.EIC16.BIT.EIP16	= 15 ;					/* 割り込みレベル設定								*/
				INTC1.EIC16.BIT.EIMK16	= 1 ;					/* 割り込みマスク									*/
			}
		break;

		default:
		break;
	}
		
}


/*=============================================================
	外部割り込みステータス読み込み						   
	引数：
	u1 u1_intpx  :対象INTPx	1:エッジ検出あり	それ以外：なし
	7以上の場合、外部割り込み0-7ステータスを返す
================================================================*/
u1 intpx_status_read ( u1 u1_intpx )
{
	u1 ret = 0;
	
	switch(u1_intpx)
	{
		case 0:
			ret	= EINT.EXINTSTR.BIT.IRQ0F;
			EINT.EXINTSTC.BIT.IRQ0C	= 1;			// 割り込みフラグクリア
		break;
		case 1:
			ret	= EINT.EXINTSTR.BIT.IRQ1F;
			EINT.EXINTSTC.BIT.IRQ1C	= 1;			// 割り込みフラグクリア
		break;
		case 2:
			ret	= EINT.EXINTSTR.BIT.IRQ2F;
			EINT.EXINTSTC.BIT.IRQ2C	= 1;			// 割り込みフラグクリア
		break;
		case 3:
			ret	= EINT.EXINTSTR.BIT.IRQ3F;
			EINT.EXINTSTC.BIT.IRQ3C	= 1;			// 割り込みフラグクリア
		break;
		case 4:
			ret	= EINT.EXINTSTR.BIT.IRQ4F;
			EINT.EXINTSTC.BIT.IRQ4C	= 1;			// 割り込みフラグクリア
		break;
		case 5:
			ret	= EINT.EXINTSTR.BIT.IRQ5F;
			EINT.EXINTSTC.BIT.IRQ5C	= 1;			// 割り込みフラグクリア
		break;
		case 6:
			ret	= EINT.EXINTSTR.BIT.IRQ6F;
			EINT.EXINTSTC.BIT.IRQ6C	= 1;			// 割り込みフラグクリア
		break;
		case 7:
			ret	= EINT.EXINTSTR.BIT.IRQ7F;
			EINT.EXINTSTC.BIT.IRQ7C	= 1;			// 割り込みフラグクリア
		break;

		default:
			ret	= EINT.EXINTSTR.UINT8;
			EINT.EXINTSTC.UINT8	= 0xFF;				// 割り込みフラグクリア	
		break;
	}
	
	return( ret );	
}
