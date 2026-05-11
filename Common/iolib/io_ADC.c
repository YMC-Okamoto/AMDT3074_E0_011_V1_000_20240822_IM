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
/* 				 割り込み出力定義							   */
/*=============================================================*/
#define		ADC0_SG4INT			(1)							/* 1:ADC0 SG4割り込み出力許可 0:禁止					*/
#define		ADC1_SG4INT			(1)							/* 1:ADC1 SG4割り込み出力許可 0:禁止					*/
/*=============================================================*/

/*==============================================================*/
/*	ADCC00初期化関数											*/
/*	引数：														*/
/*			u1 u1_rdc2x_out		  0:全端子AD変換				*/
/*								  1:ADCC0I00/03変換しない		*/
/*								  2:ADCC0I20/21変換しない		*/
/*								  3:1/2両方変換しない			*/
/*							RDC2xSINMNT/COSMNTが出力を想定		*/
/*--------------------------------------------------------------*/
/*	備考														*/
/*--------------------------------------------------------------*/

void adcc0_init ( u1 u1_rdc2x_out )
{
	u1	u1_temp_H ;
	u1	u1_temp_L ;
/* 仮想チャネル設定	*/
	/* AD強制終了レジスタ	*/
	ADCC0.ADHALTR.BIT.HALT	= 1;								/* 0: 何もしない/1：終了						*/

	/* 仮想チャネルレジスタ0の設定	*/
	ADCC0.VCR0.BIT.CNVCLS	= 1;								/* ホールド値AD変換								*/
	ADCC0.VCR0.BIT.ADIE		= 0;								/* SCANグループ0x終了割り込み信号出力許可/禁止	*/
	if ( 1 == ADCC0.VCR0.BIT.CNVCLS )
	{
		ADCC0.VCR0.BIT.GCTRL	= 0;							/* T&H0(ADCC0I30)								*/
	}
	else
	{

		u1_temp_H				= 3;							/* ADCC0I30										*/
		u1_temp_L				= 0;		
		ADCC0.VCR0.BIT.GCTRL	= (u1_temp_H << 2 ) | u1_temp_L ;
	}

	/* 仮想チャネルレジスタ1の設定	*/
	ADCC0.VCR1.BIT.CNVCLS	= 1;								/* ホールド値AD変換								*/
	ADCC0.VCR1.BIT.ADIE		= 0;								/* SCANグループ0x終了割り込み信号出力許可/禁止	*/
	if ( 1 == ADCC0.VCR1.BIT.CNVCLS )
	{
		ADCC0.VCR1.BIT.GCTRL	= 1;							/* T&H1(ADCC0I31)								*/
	}
	else
	{
		u1_temp_H				= 3;							/* ADCC0I31										*/
		u1_temp_L				= 1;
		ADCC0.VCR1.BIT.GCTRL	= (u1_temp_H << 2 ) | u1_temp_L ; 
	}

	/* 仮想チャネルレジスタ2の設定	*/
	ADCC0.VCR2.BIT.CNVCLS	= 1;								/* ホールド値AD変換								*/
	ADCC0.VCR2.BIT.ADIE		= 0;								/* SCANグループ0x終了割り込み信号出力許可/禁止	*/
	if ( 1== ADCC0.VCR2.BIT.CNVCLS )
	{
		ADCC0.VCR2.BIT.GCTRL	= 2;							/*T&H2(ADCC0I32)								*/
	}
	else
	{
		u1_temp_H				= 3;							/* ADCC0I32										*/
		u1_temp_L				= 2;
		ADCC0.VCR2.BIT.GCTRL	= (u1_temp_H << 2 ) | u1_temp_L ;
	}

	/* 仮想チャネルレジスタ3の設定	*/
	ADCC0.VCR3.BIT.CNVCLS	= 1;								/* ホールド値AD変換								*/
	ADCC0.VCR3.BIT.ADIE		= 0;								/* SCANグループ0x終了割り込み信号出力許可/禁止	*/
	if ( 1 == ADCC0.VCR3.BIT.CNVCLS )
	{
		ADCC0.VCR3.BIT.GCTRL	= 3;							/*T&H3(ADCC0I33)								*/
	}
	else
	{
		u1_temp_H				= 3;							/* ADCC0I33										*/
		u1_temp_L				= 3;
		ADCC0.VCR3.BIT.GCTRL	= (u1_temp_H << 2 ) | u1_temp_L ;
	}

	/* 仮想チャネルレジスタ4の設定	*/
	ADCC0.VCR4.BIT.CNVCLS	= 1;								/* ホールド値AD変換								*/
	ADCC0.VCR4.BIT.ADIE		= 0;								/* SCANグループ0x終了割り込み信号出力許可/禁止	*/
	if ( 1 == ADCC0.VCR4.BIT.CNVCLS )
	{
		ADCC0.VCR4.BIT.GCTRL	= 4;							/* T&H4(ADCC0I22)								*/
	}
	else
	{
		u1_temp_H				= 2;							/* ADCC0I22										*/
		u1_temp_L				= 2;
		ADCC0.VCR4.BIT.GCTRL	= (u1_temp_H << 2 ) | u1_temp_L ;
	}
	
	/* 仮想チャネルレジスタ5の設定	*/
	ADCC0.VCR5.BIT.CNVCLS	= 1;								/* ホールド値AD変換								*/
	ADCC0.VCR5.BIT.ADIE		= 0;								/* SCANグループ0x終了割り込み信号出力許可/禁止	*/
	if ( 1 == ADCC0.VCR5.BIT.CNVCLS )
	{
		ADCC0.VCR5.BIT.GCTRL	= 5;							/* T&H5(ADCC0I23)								*/
	}
	else
	{
		u1_temp_H				= 2;							/* ADCC0I23										*/
		u1_temp_L				= 3;
		ADCC0.VCR5.BIT.GCTRL	= (u1_temp_H << 2 ) | u1_temp_L ;
	}

	/* 仮想チャネルレジスタ8の設定	*/
	ADCC0.VCR8.BIT.CNVCLS	= 0;								/* 通常AD変換									*/
	ADCC0.VCR8.BIT.ADIE		= 0;								/* SCANグループ0x終了割り込み信号出力許可/禁止	*/
	u1_temp_H				= 0;								/* ADCC0I01										*/
	u1_temp_L				= 1;
	ADCC0.VCR8.BIT.GCTRL	= (u1_temp_H << 2 ) | u1_temp_L ;

	/* 仮想チャネルレジスタ9の設定	*/
	ADCC0.VCR9.BIT.CNVCLS	= 0;								/* 通常AD変換									*/
	ADCC0.VCR9.BIT.ADIE		= 0;								/* SCANグループ0x終了割り込み信号出力許可/禁止	*/
	u1_temp_H				= 0;								/* ADCC0I02										*/
	u1_temp_L				= 2;
	ADCC0.VCR9.BIT.GCTRL	= (u1_temp_H << 2 ) | u1_temp_L ;

	/* 仮想チャネルレジスタ10の設定	*/
	ADCC0.VCR10.BIT.CNVCLS	= 0;								/* 通常AD変換									*/
	ADCC0.VCR10.BIT.ADIE	= 0;								/* SCANグループ0x終了割り込み信号出力許可/禁止	*/
	u1_temp_H				= 1;								/* ADCC0I10										*/
	u1_temp_L				= 0;
	ADCC0.VCR10.BIT.GCTRL	= (u1_temp_H << 2 ) | u1_temp_L ;


	/* 仮想チャネルレジスタ11の設定	*/
	ADCC0.VCR11.BIT.CNVCLS	= 0;								/* 通常AD変換									*/
	ADCC0.VCR11.BIT.ADIE	= 0;								/* SCANグループ0x終了割り込み信号出力許可/禁止	*/
	u1_temp_H				= 1;								/* ADCC0I11										*/
	u1_temp_L				= 1;
	ADCC0.VCR11.BIT.GCTRL	= (u1_temp_H << 2 ) | u1_temp_L ;

	/* 仮想チャネルレジスタ12の設定	*/
	ADCC0.VCR12.BIT.CNVCLS	= 0;								/* 通常AD変換									*/
	ADCC0.VCR12.BIT.ADIE	= 0;								/* SCANグループ0x終了割り込み信号出力許可/禁止	*/
	u1_temp_H				= 1;								/* ADCC0I12										*/
	u1_temp_L				= 2;
	ADCC0.VCR12.BIT.GCTRL	= (u1_temp_H << 2 ) | u1_temp_L ;

	/* 仮想チャネルレジスタ13の設定	*/
	ADCC0.VCR13.BIT.CNVCLS	= 0;								/* 通常AD変換									*/
	ADCC0.VCR13.BIT.ADIE	= 0;								/* SCANグループ0x終了割り込み信号出力許可/禁止	*/

	u1_temp_H				= 1;								/* ADCC0I13										*/
	u1_temp_L				= 3;
	ADCC0.VCR13.BIT.GCTRL	= (u1_temp_H << 2 ) | u1_temp_L ;

	switch (u1_rdc2x_out)
	{
		case 0:
			/* 仮想チャネルレジスタ6の設定	*/
			ADCC0.VCR6.BIT.CNVCLS		= 0;							/* 通常AD変換									*/
			ADCC0.VCR6.BIT.ADIE			= 0;							/* SCANグループ0x終了割り込み信号出力許可/禁止	*/
			u1_temp_H					= 0;							/* ADCC0I00/RDC20SINMNT							*/
			u1_temp_L					= 0;
			ADCC0.VCR6.BIT.GCTRL	= (u1_temp_H << 2 ) | u1_temp_L ;

			/* 仮想チャネルレジスタ7の設定	*/
			ADCC0.VCR7.BIT.CNVCLS		= 0;							/* 通常AD変換									*/
			ADCC0.VCR7.BIT.ADIE			= 0;							/* SCANグループ0x終了割り込み信号出力許可/禁止	*/
			u1_temp_H					= 0;							/* ADCC0I03/RDC20COSMNT							*/
			u1_temp_L					= 3;
			ADCC0.VCR7.BIT.GCTRL	= (u1_temp_H << 2 ) | u1_temp_L ;

			/* 仮想チャネルレジスタ14の設定	*/
			ADCC0.VCR14.BIT.CNVCLS		= 0;							/* 通常AD変換									*/
			ADCC0.VCR14.BIT.ADIE		= 0;							/* SCANグループ0x終了割り込み信号出力許可/禁止	*/
			u1_temp_H					= 2;							/* ADCC0I20/RDC21SINMNT							*/
			u1_temp_L					= 0;
			ADCC0.VCR14.BIT.GCTRL	= (u1_temp_H << 2 ) | u1_temp_L ;

			/* 仮想チャネルレジスタ15の設定	*/
			ADCC0.VCR15.BIT.CNVCLS		= 0;							/* 通常AD変換									*/
			ADCC0.VCR15.BIT.ADIE		= 0;							/* SCANグループ0x終了割り込み信号出力許可/禁止	*/
			u1_temp_H					= 2;							/* ADCC0I21/RDC21COSMNT							*/
			u1_temp_L					= 1;
			ADCC0.VCR15.BIT.GCTRL	= (u1_temp_H << 2 ) | u1_temp_L ;
		break;
		case 1:
			/* 仮想チャネルレジスタ14の設定	*/
			ADCC0.VCR14.BIT.CNVCLS		= 0;							/* 通常AD変換									*/
			ADCC0.VCR14.BIT.ADIE		= 0;							/* SCANグループ0x終了割り込み信号出力許可/禁止	*/
			u1_temp_H					= 2;							/* ADCC0I20/RDC21SINMNT							*/
			u1_temp_L					= 0;
			ADCC0.VCR14.BIT.GCTRL	= (u1_temp_H << 2 ) | u1_temp_L ;

			/* 仮想チャネルレジスタ15の設定	*/
			ADCC0.VCR15.BIT.CNVCLS		= 0;							/* 通常AD変換									*/
			ADCC0.VCR15.BIT.ADIE		= 0;							/* SCANグループ0x終了割り込み信号出力許可/禁止	*/
			u1_temp_H					= 2;							/* ADCC0I21/RDC21COSMNT							*/
			u1_temp_L					= 1;
			ADCC0.VCR15.BIT.GCTRL	= (u1_temp_H << 2 ) | u1_temp_L ;
		break;
		case 2:
			/* 仮想チャネルレジスタ6の設定	*/
			ADCC0.VCR6.BIT.CNVCLS		= 0;							/* 通常AD変換									*/
			ADCC0.VCR6.BIT.ADIE			= 0;							/* SCANグループ0x終了割り込み信号出力許可/禁止	*/
			u1_temp_H					= 0;							/* ADCC0I00/RDC20SINMNT							*/
			u1_temp_L					= 0;
			ADCC0.VCR6.BIT.GCTRL	= (u1_temp_H << 2 ) | u1_temp_L ;

			/* 仮想チャネルレジスタ7の設定	*/
			ADCC0.VCR7.BIT.CNVCLS		= 0;							/* 通常AD変換									*/
			ADCC0.VCR7.BIT.ADIE			= 0;							/* SCANグループ0x終了割り込み信号出力許可/禁止	*/
			u1_temp_H					= 0;							/* ADCC0I03/RDC20COSMNT							*/
			u1_temp_L					= 3;
			ADCC0.VCR7.BIT.GCTRL	= (u1_temp_H << 2 ) | u1_temp_L ;
		break;
		case 3:
		break;
		default:
			/* 仮想チャネルレジスタ6の設定	*/
			ADCC0.VCR6.BIT.CNVCLS		= 0;							/* 通常AD変換									*/
			ADCC0.VCR6.BIT.ADIE			= 0;							/* SCANグループ0x終了割り込み信号出力許可/禁止	*/
			u1_temp_H					= 0;							/* ADCC0I00/RDC20SINMNT							*/
			u1_temp_L					= 0;
			ADCC0.VCR6.BIT.GCTRL	= (u1_temp_H << 2 ) | u1_temp_L ;

			/* 仮想チャネルレジスタ7の設定	*/
			ADCC0.VCR7.BIT.CNVCLS		= 0;							/* 通常AD変換									*/
			ADCC0.VCR7.BIT.ADIE			= 0;							/* SCANグループ0x終了割り込み信号出力許可/禁止	*/
			u1_temp_H					= 0;							/* ADCC0I03/RDC20COSMNT							*/
			u1_temp_L					= 3;
			ADCC0.VCR7.BIT.GCTRL	= (u1_temp_H << 2 ) | u1_temp_L ;

			/* 仮想チャネルレジスタ14の設定	*/
			ADCC0.VCR14.BIT.CNVCLS		= 0;							/* 通常AD変換									*/
			ADCC0.VCR14.BIT.ADIE		= 0;							/* SCANグループ0x終了割り込み信号出力許可/禁止	*/
			u1_temp_H					= 2;							/* ADCC0I20/RDC21SINMNT							*/
			u1_temp_L					= 0;
			ADCC0.VCR14.BIT.GCTRL	= (u1_temp_H << 2 ) | u1_temp_L ;

			/* 仮想チャネルレジスタ15の設定	*/
			ADCC0.VCR15.BIT.CNVCLS		= 0;							/* 通常AD変換									*/
			ADCC0.VCR15.BIT.ADIE		= 0;							/* SCANグループ0x終了割り込み信号出力許可/禁止	*/
			u1_temp_H					= 2;							/* ADCC0I21/RDC21COSMNT							*/
			u1_temp_L					= 1;
			ADCC0.VCR15.BIT.GCTRL	= (u1_temp_H << 2 ) | u1_temp_L ;
		break;
		
	}

/* スキャングループ0-4設定	*/
	/* AD スキャングループ開始/終了仮想ポンタ設定	*/
	ADCC0.SGVCSP4.BIT.VCSP		= 0;							/* SG4グループは、仮想0-5ch							*/
	ADCC0.SGVCEP4.BIT.VCEP		= 5;

	ADCC0.SGVCSP3.BIT.VCSP		= 6;							/* SG3グループは、仮想6-15ch						*/
	ADCC0.SGVCEP3.BIT.VCEP		= 15;
	
	ADCC0.SGVCSP2.BIT.VCSP		= 6;							/* SG2グループは、仮想6-15ch						*/
	ADCC0.SGVCEP2.BIT.VCEP		= 15;

	ADCC0.SGVCSP1.BIT.VCSP		= 6;							/* SG1グループは、仮想6-15ch						*/
	ADCC0.SGVCEP1.BIT.VCEP		= 15;

	switch (u1_rdc2x_out)
	{
		case 0:
			ADCC0.SGVCSP0.BIT.VCSP		= 6;					/* SG0グループは、仮想6-15ch						*/
			ADCC0.SGVCEP0.BIT.VCEP		= 15;
		break;
		case 1:
			ADCC0.SGVCSP0.BIT.VCSP		= 8;					/* SG0グループは、仮想8-15ch						*/
			ADCC0.SGVCEP0.BIT.VCEP		= 15;			
		break;
		case 2:
			ADCC0.SGVCSP0.BIT.VCSP		= 6;					/* SG0グループは、仮想6-13ch						*/
			ADCC0.SGVCEP0.BIT.VCEP		= 13;
		break;
		case 3:
			ADCC0.SGVCSP0.BIT.VCSP		= 8;					/* SG0グループは、仮想8-13ch						*/
			ADCC0.SGVCEP0.BIT.VCEP		= 13;			
		break;
		default:
			ADCC0.SGVCSP0.BIT.VCSP		= 6;					/* SG0グループは、仮想6-15ch						*/
			ADCC0.SGVCEP0.BIT.VCEP		= 15;			
		break;
	}

	/* AD マルチサイクルスキャンレジスタ回数設定	*/
	ADCC0.SGMCYCR4.BIT.MCYC		= 0;							/* スキャン回数は1回 Scan=n+1						*/
																/* 注意事項2 										*/
	ADCC0.SGMCYCR3.BIT.MCYC		= 0;							/* スキャン回数は1回 Scan=n+1						*/
	ADCC0.SGMCYCR2.BIT.MCYC		= 0;							/* スキャン回数は1回 Scan=n+1						*/
	ADCC0.SGMCYCR1.BIT.MCYC		= 0;							/* スキャン回数は1回 Scan=n+1						*/
	ADCC0.SGMCYCR0.BIT.MCYC		= 0;							/* スキャン回数は1回 Scan=n+1						*/

	/* ADスキャングループ　上下限テーブル選択レジスタ	*/
	ADCC0.ULLMSR4.BIT.ULS		= 0;							/* 0:上下限をチェックしない							*/
																/* 1 :ADCC0ULLMTBR0でチェック						*/
																/* 2 :ADCC0ULLMTBR1でチェック/3: :ADCC0ULLMTBR2でチェック	*/
	ADCC0.ULLMSR3.BIT.ULS		= 0;
	ADCC0.ULLMSR2.BIT.ULS		= 0;
	ADCC0.ULLMSR1.BIT.ULS		= 0;
	ADCC0.ULLMSR0.BIT.ULS		= 0;

	/* ADスキャングループ0-2制御レジスタ	*/
	ADCC0.SGCR0.BIT.ADSTARTE	= 0;							/* 0: SGx同期開始信号無効/1: 有効					*/
	ADCC0.SGCR0.BIT.SCANMD		= 1;							/* 0: マルチサイクルSCAN/1: 連続スキャン			*/
	ADCC0.SGCR0.BIT.ADIE		= 0;							/* 0:SCANグループ0x終了割り込み信号出力禁止/1:許可	*/
	ADCC0.SGCR0.BIT.TRGMD0		= 0;							/* 0: A/D 変換開始トリガ入力無効/ 1:有効			*/

	ADCC0.SGCR1.BIT.ADSTARTE	= 1;							/* 0: SGx同期開始信号無効/1: 有効					*/
	ADCC0.SGCR1.BIT.SCANMD		= 0;							/* 0: マルチサイクルSCAN/1: 連続スキャン			*/
	ADCC0.SGCR1.BIT.ADIE		= 0;							/* 0:SCANグループ0x終了割り込み信号出力禁止/1:許可	*/
	ADCC0.SGCR1.BIT.TRGMD0		= 0;							/* 0: A/D 変換開始トリガ入力無効/ 1:有効			*/

	ADCC0.SGCR2.BIT.ADSTARTE	= 1;							/* 0: SGx同期開始信号無効/1: 有効					*/
	ADCC0.SGCR2.BIT.SCANMD		= 0;							/* 0: マルチサイクルSCAN/1: 連続スキャン			*/
	ADCC0.SGCR2.BIT.ADIE		= 0;							/* 0:SCANグループ0x終了割り込み信号出力禁止/1:許可	*/
	ADCC0.SGCR2.BIT.TRGMD0		= 0;							/* 0: A/D 変換開始トリガ入力無効/ 1:有効			*/

	/* ADスキャングループ3-4制御レジスタ	*/
	ADCC0.SGCR3.BIT.ADTSTARTE	= 0;							/* 0: AD タイマの同期開始信号 無効/1: 有効			*/
	ADCC0.SGCR3.BIT.ADSTARTE	= 1;							/* 0: SGx同期開始信号無効/1: 有効					*/
	ADCC0.SGCR3.BIT.SCANMD		= 0;							/* 0: マルチサイクルSCAN/1: 連続スキャン			*/
	ADCC0.SGCR3.BIT.ADIE		= 0;							/* 0:SCANグループ0x終了割り込み信号出力禁止/1:許可	*/
	ADCC0.SGCR3.BIT.TRGMD1		= 0;							/* 0: A/Dタイマへのトリガ入力無効/ 1:有効			*/
	ADCC0.SGCR3.BIT.TRGMD0		= 0;							/* 0: A/D 変換開始トリガ入力無効/ 1:有効			*/

	ADCC0.SGCR4.BIT.ADTSTARTE	= 0;							/* 0: AD タイマの同期開始信号 無効/1: 有効			*/
	ADCC0.SGCR4.BIT.ADSTARTE	= 1;							/* 0: SGx同期開始信号無効/1: 有効					*/
	ADCC0.SGCR4.BIT.SCANMD		= 0;							/* 0: マルチサイクルSCAN/1: 連続スキャン			*/
																/* 注意事項 2.										*/
#if ADC0_SG4INT		// SG4割り込み出力許可
	ADCC0.SGCR4.BIT.ADIE		= 1;							/* 0:SCANグループ0x終了割り込み信号出力禁止/1:許可	*/
#else				// SG4割り込み出力禁止
	ADCC0.SGCR4.BIT.ADIE		= 0;							/* 0:SCANグループ0x終了割り込み信号出力禁止/1:許可	*/
#endif
	ADCC0.SGCR4.BIT.TRGMD1		= 0;							/* 0: A/Dタイマへのトリガ入力無効/ 1:有効			*/
	ADCC0.SGCR4.BIT.TRGMD0		= 0;							/* 0: A/D 変換開始トリガ入力無効/ 1:有効			*/

/*　ADタイマ3/4設定	*/
	/* ADタイマ停止制御レジスタ	*/
	ADCC0.ADTENDCR3.BIT.ADTEND		= 1;						/* 0:何もしない/1:ADタイマ3停止）					*/
	ADCC0.ADTENDCR4.BIT.ADTEND		= 1;						/* 0:何もしない/1:ADタイマ停止）					*/

	/* ADタイマ初期位相設定レジスタ	*/
	ADCC0.ADTIPR3.BIT.ADTIP		= 0;
	ADCC0.ADTIPR4.BIT.ADTIP		= 0;

	/* ADタイマ周期設定レジスタ	*/
	ADCC0.ADTIPR3.BIT.ADTIP		= 0x001FFFFF;
	ADCC0.ADTIPR4.BIT.ADTIP		= 0x001FFFFF;

	/* ADタイマ開始制御レジスタ	*/
	while ( ( ADCC0.SGSR3.BIT.ADTACT == 1) || ( ADCC0.SGSR4.BIT.ADTACT == 1) ) {;;}
	ADCC0.ADTSTCR3.BIT.ADTST		= 0;							/* 0:何もしない/1:ADタイマ3開始）				*/
	ADCC0.ADTSTCR4.BIT.ADTST		= 0;							/* 0:何もしない/1:ADタイマ4開始）				*/

/* T&Hグループ設定	*/
	/* AD T&H 許可レジスタ	*/
	ADCC0.THER.BIT.TH0E		 	= 1;							/* 0:T&H0無効/1:T&H0有効							*/
	ADCC0.THER.BIT.TH1E			= 1;							/* 0:T&H1無効/1:T&H1有効							*/
	ADCC0.THER.BIT.TH2E			= 1;							/* 0:T&H2無効/1:T&H2有効							*/
	ADCC0.THER.BIT.TH3E			= 1;							/* 0:T&H3無効/1:T&H3有効							*/
		
	ADCC0.THER.BIT.TH4E			= 1;							/* 0:T&H4無効/1:T&H4有効							*/
	ADCC0.THER.BIT.TH5E			= 1;							/* 0:T&H5無効/1:T&H5有効							*/
	
	/* AD T&H グループ選択レジスタ	*/
	ADCC0.THGSR.BIT.TH0GS	 	=  0;							/* 0:T&H0 Aグループ/ 1: T&H0 Bグループ				*/
	ADCC0.THGSR.BIT.TH1GS	 	=  0;							/* 0:T&H1 Aグループ/ 1: T&H1 Bグループ				*/
	ADCC0.THGSR.BIT.TH2GS	 	=  0;							/* 0:T&H2 Aグループ/ 1: T&H2 Bグループ				*/
	ADCC0.THGSR.BIT.TH3GS	 	=  0;							/* 0:T&H3 Aグループ/ 1: T&H3 Bグループ				*/
	ADCC0.THGSR.BIT.TH4GS		=  0;							/* 0:T&H4 Aグループ/ 1: T&H4 Bグループ				*/
	ADCC0.THGSR.BIT.TH5GS		=  0;							/* 0:T&H5 Aグループ/ 1: T&H5 Bグループ				*/

	/* AD T&H Aグループ制御レジスタ	*/
	ADCC0.THACR.BIT.HLDCTE	 = 1;								/* 0:無効/1:ホールド制御有効					*/
	ADCC0.THACR.BIT.HLDTE	 = 1;								/* 0:無効/1:スキャングループのH/Wトリガ有効		*/
	ADCC0.THACR.BIT.SGS		 = 3;								/* 0:SG1/1:SG2/2:SG3/3:SG4						*/
	
	/* AD T&H Bグループ制御レジスタ	*/
	ADCC0.THBCR.BIT.HLDCTE	 = 1;								/* 0:無効/1:ホールド制御有効					*/
	ADCC0.THBCR.BIT.HLDTE	 = 1;								/* 0:無効/1:スキャングループのH/Wトリガ有効		*/
	ADCC0.THBCR.BIT.SGS		 = 3;								/* 0:SG1/1:SG2/2:SG3/3:SG4						*/

/* データフォーマット設定	*/
	/* ADデータフォーマット、加算回数設定レジスタ	*/
	ADCC0.ADCR2.BIT.DFMT		= 1;							/* 0:符号付固定小数点/1:符号付整数フォーマット	*/
	ADCC0.ADCR2.BIT.ADDNT		= 0;							/* 0:2回加算/1:4回加算							*/

/* サスペンド方式設定	*/
	/* ADサスペンド方式設定レジスタ	*/
	ADCC0.ADCR1.BIT.SUSMTD		= 2;							/* 0:同期サスペンド/1:同期、非同期MIX/2:非同期	*/
																/* 注意事項 1									*/
/* T&H自動サンプリング設定	*/
	/* ADサンプリング制御レジスタ	*/
	ADCC0.THCR.BIT.ASMPMSK		= 0;							/* 0:終了時自動サンプリング/1:自動サンプリングしない	*/

/* 上下限エラーテーブル設定	*/
	/* AD 上限/下限テーブルレジスタ(設定値は、必ず符号付固定小数点フォーマットで書く事）	*/
	ADCC0.ULLMTBR0.BIT.LLMTB	= 0;							/* 下限値　											*/
	ADCC0.ULLMTBR0.BIT.ULMTB	= 0x7FFE;						/* 上限値　											*/
	ADCC0.ULLMTBR1.BIT.LLMTB	= 0;
	ADCC0.ULLMTBR1.BIT.ULMTB	= 0x7FFE;
	ADCC0.ULLMTBR2.BIT.LLMTB	= 0;
	ADCC0.ULLMTBR2.BIT.ULMTB	= 0x7FFE;

/* エラー割り込み制御設定	*/
	/* AD セーフティ制御レジスタ	*/
	ADCC0.SFTCR.BIT.IDEIE		=	0;							/* 0:IDエラー割り込み禁止/1:許可					*/
	ADCC0.SFTCR.BIT.PEIE		= 	0;							/* 0:パリティエラー割り込み禁止/1:許可				*/
	ADCC0.SFTCR.BIT.OWEIE		= 	0;							/* 0:オーバーライトエラー割り込み禁止/1:許可		*/
	ADCC0.SFTCR.BIT.ULEIE		= 	0;							/* 0:上下限エラー割り込み禁止/1:許可				*/
	
	/* AD エラークリアレジスタ		*/
	ADCC0.ECR.BIT.ULEC			= 1;							/* 上下限エラー 		0:クリアしない/1:クリアする						*/
	ADCC0.ECR.BIT.OWEC			= 1;							/* オーバーライトエラー 0:クリアしない/1:クリアする						*/
	ADCC0.ECR.BIT.PEC			= 1;							/* パリティエラー	　	0:クリアしない/1:クリアする						*/
	ADCC0.ECR.BIT.IDEC			= 1;							/* IDエラー				0:クリアしない/1:クリアする						*/	

/* リード＆クリア設定	*/
	ADCC0.SFTCR.BIT.RDCLRE		= 	0;							/* 0:リード＆クリアしない/1:リード＆クリアする		*/

/*　フェールセーフ系設定	*/

	/* AD端子レベル自己診断制御レジスタ	*/
	ADCC0.TDCR.BIT.TDE			=	0;							/* 0:自己診断しない/ 1:自己診断する					*/
	ADCC0.TDCR.BIT.TDLV			= 	0;							/* 0:偶数物理サブチャネルにAVSS、奇数にAVCCを印可	*/
																/* 1:偶数物理サブチャネルにAVCC、奇数にAVSSを印可	*/
																/* 2:偶数物理サブチャネルにAVSS、奇数にAVCC/2を印可	*/
																/* 2:偶数物理サブチャネルにAVCC/2、奇数にAVSSを印可	*/

	/* AD 断線検出制御レジスタ		*/
	ADCC0.ODCR.BIT.ODE			= 	0;							/* 0:断線検出しない/ 1:断線検出する					*/
	ADCC0.ODCR.BIT.ODPW			=   4;							/* 断線検出用発生パルス幅　4H-14H/1Clock-17Clock	*/


/* サンプリング開始	*/
	/* ADサンプリング開始レジスタ	*/
	ADCC0.THSMPSTCR.BIT.SMPST	=1;								/* 0:何もしない/1:サンプリング開始				*/

/* ウェイト	*/
	{
		unsigned int i;
		for ( i = 0; i < 60 ; i++ ){;;}
	}
	

	/* AD T&H Aグループホールド開始レジスタ	*/
	ADCC0.THAHLDSTCR.BIT.HLDST	=0;								/* 0:何もしない/1:ホールド開始					*/

	/* AD T&H Bグループホールド開始レジスタ	*/
	ADCC0.THBHLDSTCR.BIT.HLDST=0;								/* 0:何もしない/1:ホールド開始					*/

	/* ADスキャングループ開始レジスタ	*/
	while ( ( ADCC0.SGSR4.BIT.SGACT == 1 ) || ( ADCC0.SGSR3.BIT.SGACT == 1 ) || ( ADCC0.SGSR2.BIT.SGACT == 1 ) || 
			( ADCC0.SGSR1.BIT.SGACT == 1 ) || ( ADCC0.SGSR0.BIT.SGACT == 1 ) ) {;;} 

	/* SG4 : HW トリガ待ち / SG0: 連続スキャン開始	*/
	ADCC0.SGCR4.BIT.TRGMD0		= 1;							/* 0: A/D 変換開始トリガ入力無効/ 1:有効		*/
	
	ADCC0.SGSTCR4.BIT.SGST		= 1;							/* スキャングループ4　0:何もしない/1:AD変換開始	*/
	ADCC0.SGSTCR3.BIT.SGST		= 0;							/* スキャングループ3　0:何もしない/1:AD変換開始	*/
	ADCC0.SGSTCR2.BIT.SGST		= 0;							/* スキャングループ2　0:何もしない/1:AD変換開始	*/
	ADCC0.SGSTCR1.BIT.SGST		= 0;							/* スキャングループ1　0:何もしない/1:AD変換開始	*/


	ADCC0.SGSTCR0.BIT.SGST		= 1;							/* スキャングループ0　0:何もしない/1:AD変換開始	*/			
}
/*==============================================================*/
/*	ADCC01初期化関数											*/
/*	引数：														*/
/*			なし												*/
/*--------------------------------------------------------------*/
/*	備考														*/
/*--------------------------------------------------------------*/
void adcc1_init ( void )
{
	u1	u1_temp_H ;
	u1	u1_temp_L ;
	
/* 仮想チャネル設定	*/
	/* AD強制終了レジスタ	*/
	ADCC1.ADHALTR.BIT.HALT	= 1;								/* 0: 何もしない/1：終了						*/
/* 仮想チャネルレジスタ0の設定	*/
	ADCC1.VCR0.BIT.CNVCLS	= 1;								/* ホールド値AD変換								*/
	ADCC1.VCR0.BIT.ADIE		= 0;								/* SCANグループ0x終了割り込み信号出力許可		*/
	if ( 1 == ADCC1.VCR0.BIT.CNVCLS )
	{
		ADCC1.VCR0.BIT.GCTRL	= 0;							/* T&H0(ADCC1I30)								*/
	}
	else
	{
		u1_temp_H					= 3;						/* ADCC1I30										*/
		u1_temp_L					= 0;
		ADCC1.VCR0.BIT.GCTRL	= (u1_temp_H << 2 ) | u1_temp_L ;
	}
/* 仮想チャネルレジスタ1の設定	*/
	ADCC1.VCR1.BIT.CNVCLS	= 1;								/* ホールド値AD変換								*/
	ADCC1.VCR1.BIT.ADIE		= 0;								/* SCANグループ0x終了割り込み信号出力許可		*/
	if ( 1 == ADCC1.VCR1.BIT.CNVCLS )
	{
		ADCC1.VCR1.BIT.GCTRL	= 1 ;							/* T&H1(ADCC1I31)								*/
	}
	else
	{
		u1_temp_H					= 3;						/* ADCC1I31										*/
		u1_temp_L					= 1;
		ADCC1.VCR1.BIT.GCTRL	= (u1_temp_H << 2 ) | u1_temp_L ;
	}
/* 仮想チャネルレジスタ2の設定	*/
	ADCC1.VCR2.BIT.CNVCLS	= 1;								/* ホールド値AD変換								*/
	ADCC1.VCR2.BIT.ADIE		= 0;								/* SCANグループ0x終了割り込み信号出力許可		*/
	if ( 1 == ADCC1.VCR2.BIT.CNVCLS )
	{
		ADCC1.VCR2.BIT.GCTRL	= 2 ;							/* T&H2(ADCC1I32)								*/
	}
	else
	{
		u1_temp_H					= 3;						/* ADCC1I32										*/
		u1_temp_L					= 2;
		ADCC1.VCR2.BIT.GCTRL	= (u1_temp_H << 2 ) | u1_temp_L ;
	}
/* 仮想チャネルレジスタ3の設定	*/
	ADCC1.VCR3.BIT.CNVCLS	= 1;								/* ホールド値AD変換								*/
	ADCC1.VCR3.BIT.ADIE		= 0;								/* SCANグループ0x終了割り込み信号出力許可		*/
	if ( 1 == ADCC1.VCR3.BIT.CNVCLS )
	{
		ADCC1.VCR3.BIT.GCTRL	= 3 ;							/* T&H3(ADCC1I40)								*/
	}
	else
	{
		u1_temp_H					= 4;						/* ADCC1I40										*/
		u1_temp_L					= 0;
		ADCC1.VCR3.BIT.GCTRL	= (u1_temp_H << 2 ) | u1_temp_L ;
	}

/* 仮想チャネルレジスタ4の設定	*/
	ADCC1.VCR4.BIT.CNVCLS	= 1;								/* ホールド値AD変換								*/
	ADCC1.VCR4.BIT.ADIE		= 0;								/* SCANグループ0x終了割り込み信号出力許可		*/
	if ( 1 == ADCC1.VCR4.BIT.CNVCLS )
	{
		ADCC1.VCR4.BIT.GCTRL	= 4 ;							/* T&H4(ADCC1I41)								*/
	}
	else
	{
		u1_temp_H					= 4;						/* ADCC1I41										*/
		u1_temp_L					= 1;
		ADCC1.VCR4.BIT.GCTRL		= (u1_temp_H << 2 ) | u1_temp_L ;
	}
/* 仮想チャネルレジスタ5の設定	*/
	ADCC1.VCR5.BIT.CNVCLS	= 1;								/* ホールド値AD変換								*/
	ADCC1.VCR5.BIT.ADIE		= 0;								/* SCANグループ0x終了割り込み信号出力許可		*/
	if ( 1 == ADCC1.VCR5.BIT.CNVCLS )
	{
		ADCC1.VCR5.BIT.GCTRL	= 5 ;							/* T&H5(ADCC1I42)								*/
	}
	else
	{
		u1_temp_H					= 4;						/* ADCC1I42										*/
		u1_temp_L					= 2;
		ADCC1.VCR5.BIT.GCTRL	= (u1_temp_H << 2 ) | u1_temp_L ;
	}
	
	
/* 仮想チャネルレジスタ6の設定	*/
	ADCC1.VCR6.BIT.CNVCLS	= 0;								/* 通常AD変換									*/
	ADCC1.VCR6.BIT.ADIE		= 0;								/* SCANグループ0x終了割り込み信号出力許可		*/
	u1_temp_H				= 0;								/* ADCC1I00										*/
	u1_temp_L				= 0;
	ADCC1.VCR6.BIT.GCTRL	= (u1_temp_H << 2 ) | u1_temp_L ;

/* 仮想チャネルレジスタ7の設定	*/
	ADCC1.VCR7.BIT.CNVCLS	= 0;								/* 通常AD変換									*/
	ADCC1.VCR7.BIT.ADIE		= 0;								/* SCANグループ0x終了割り込み信号出力許可		*/
	u1_temp_H				= 0;								/* ADCC1I01										*/
	u1_temp_L				= 1;
	ADCC1.VCR7.BIT.GCTRL	= (u1_temp_H << 2 ) | u1_temp_L ;

/* 仮想チャネルレジスタ8の設定	*/
	ADCC1.VCR8.BIT.CNVCLS	= 0;								/* 通常AD変換									*/
	ADCC1.VCR8.BIT.ADIE		= 0;								/* SCANグループ0x終了割り込み信号出力許可		*/
	u1_temp_H				= 0;								/* ADCC1I02										*/
	u1_temp_L				= 2;
	ADCC1.VCR8.BIT.GCTRL	= (u1_temp_H << 2 ) | u1_temp_L ;

/* 仮想チャネルレジスタ9の設定	*/
	ADCC1.VCR9.BIT.CNVCLS	= 0;								/* 通常AD変換									*/
	ADCC1.VCR9.BIT.ADIE		= 0;								/* SCANグループ0x終了割り込み信号出力許可		*/
	u1_temp_H				= 1;								/* ADCC1I10										*/
	u1_temp_L				= 0;
	ADCC1.VCR9.BIT.GCTRL	= (u1_temp_H << 2 ) | u1_temp_L ;


/* 仮想チャネルレジスタ10の設定	*/
	ADCC1.VCR10.BIT.CNVCLS	= 0;								/* 通常AD変換									*/
	ADCC1.VCR10.BIT.ADIE	= 0;								/* SCANグループ0x終了割り込み信号出力許可		*/
	u1_temp_H				= 1;								/* ADCC1I11										*/
	u1_temp_L				= 1;
	ADCC1.VCR10.BIT.GCTRL	= (u1_temp_H << 2 ) | u1_temp_L ;

/* 仮想チャネルレジスタ11の設定	*/
	ADCC1.VCR11.BIT.CNVCLS	 = 0;								/* 通常AD変換									*/
	ADCC1.VCR11.BIT.ADIE	 = 0;								/* SCANグループ0x終了割り込み信号出力許可		*/
	u1_temp_H				 = 1;								/* ADCC1I12										*/
	u1_temp_L				 = 2;
	ADCC1.VCR11.BIT.GCTRL	 = (u1_temp_H << 2 ) | u1_temp_L ;
	
/* 仮想チャネルレジスタ12の設定	*/
	ADCC1.VCR12.BIT.CNVCLS	 = 0;								/* 通常AD変換									*/
	ADCC1.VCR12.BIT.ADIE	 = 0;								/* SCANグループ0x終了割り込み信号出力許可		*/
	u1_temp_H				 = 2;								/* ADCC1I20										*/
	u1_temp_L				 = 0;
	ADCC1.VCR12.BIT.GCTRL	 = (u1_temp_H << 2 ) | u1_temp_L ;

/* 仮想チャネルレジスタ13の設定	*/
	ADCC1.VCR13.BIT.CNVCLS	= 0;								/* 通常AD変換									*/
	ADCC1.VCR13.BIT.ADIE	= 0;								/* SCANグループ0x終了割り込み信号出力許可		*/
	u1_temp_H				 = 2;								/* ADCC1I21										*/
	u1_temp_L				 = 1;
	ADCC1.VCR13.BIT.GCTRL	 = (u1_temp_H << 2 ) | u1_temp_L ;

/* 仮想チャネルレジスタ14の設定	*/
	ADCC1.VCR14.BIT.CNVCLS	 = 0;								/* 通常AD変換									*/
	ADCC1.VCR14.BIT.ADIE	 = 0;								/* SCANグループ0x終了割り込み信号出力許可		*/
	u1_temp_H				 = 2;								/* ADCC1I22										*/
	u1_temp_L				 = 2;
	ADCC1.VCR14.BIT.GCTRL	 = (u1_temp_H << 2 ) | u1_temp_L ;

/* 仮想チャネルレジスタ15の設定	*/
	ADCC1.VCR15.BIT.CNVCLS	 = 0;								/* 通常AD変換									*/
	ADCC1.VCR15.BIT.ADIE	 = 0;								/* SCANグループ0x終了割り込み信号出力許可		*/
	u1_temp_H				 = 5;								/* ADCC1I50										*/
	u1_temp_L				 = 0;
	ADCC1.VCR15.BIT.GCTRL	 = (u1_temp_H << 2 ) | u1_temp_L ;

/* 仮想チャネルレジスタ16の設定	*/
	ADCC1.VCR16.BIT.CNVCLS	 = 0;								/* 通常AD変換									*/
	ADCC1.VCR16.BIT.ADIE	 = 0;								/* SCANグループ0x終了割り込み信号出力許可		*/
	u1_temp_H				 = 5;								/* ADCC1I51										*/
	u1_temp_L				 = 1;
	ADCC1.VCR16.BIT.GCTRL	 = (u1_temp_H << 2 ) | u1_temp_L ;

/* 仮想チャネルレジスタ17の設定	*/
	ADCC1.VCR17.BIT.CNVCLS	 = 0;								/* 通常AD変換									*/
	ADCC1.VCR17.BIT.ADIE	 = 0;								/* SCANグループ0x終了割り込み信号出力許可		*/
	u1_temp_H				 = 5;								/* ADCC1I52										*/
	u1_temp_L				 = 2;
	ADCC1.VCR17.BIT.GCTRL	 = (u1_temp_H << 2 ) | u1_temp_L ;

/* 仮想チャネルレジスタ18の設定	*/
	ADCC1.VCR18.BIT.CNVCLS	 = 0;								/* 通常AD変換									*/
	ADCC1.VCR18.BIT.ADIE	 = 0;								/* SCANグループ0x終了割り込み信号出力許可		*/
	u1_temp_H				 = 6;								/* ADCC1I60										*/
	u1_temp_L				 = 0;
	ADCC1.VCR18.BIT.GCTRL	 = (u1_temp_H << 2 ) | u1_temp_L ;


/* 仮想チャネルレジスタ19の設定	*/
	ADCC1.VCR19.BIT.CNVCLS	 = 0;								/* 通常AD変換									*/
	ADCC1.VCR19.BIT.ADIE	 = 0;								/* SCANグループ0x終了割り込み信号出力許可		*/
	u1_temp_H				 = 6;								/* ADCC1I61										*/
	u1_temp_L				 = 1;
	ADCC1.VCR19.BIT.GCTRL	 = (u1_temp_H << 2 ) | u1_temp_L ;

/* 仮想チャネルレジスタ20の設定	*/
	ADCC1.VCR20.BIT.CNVCLS	 = 0;								/* 通常AD変換									*/
	ADCC1.VCR20.BIT.ADIE	 = 0;								/* SCANグループ0x終了割り込み信号出力許可		*/
	u1_temp_H				 = 6;								/* ADCC1I62										*/
	u1_temp_L				 = 2;
	ADCC1.VCR20.BIT.GCTRL	 = (u1_temp_H << 2 ) | u1_temp_L ;

/* スキャングループ0-4設定	*/
	/* AD スキャングループ開始/終了仮想ポンタ設定	*/
	ADCC1.SGVCSP4.BIT.VCSP		= 0;							/* SG4グループは、仮想0-5ch							*/
	ADCC1.SGVCEP4.BIT.VCEP		= 5;

	ADCC1.SGVCSP3.BIT.VCSP		= 6;							/* SG3グループは、仮想6-20ch							*/
	ADCC1.SGVCEP3.BIT.VCEP		= 20;
	
	ADCC1.SGVCSP2.BIT.VCSP		= 6;							/* SG2グループは、仮想6-20ch							*/
	ADCC1.SGVCEP2.BIT.VCEP		= 20;

	ADCC1.SGVCSP1.BIT.VCSP		= 6;							/* SG1グループは、仮想6-20ch							*/
	ADCC1.SGVCEP1.BIT.VCEP		= 20;

	ADCC1.SGVCSP0.BIT.VCSP		= 6;							/* SG0グループは、仮想6-20ch							*/
	ADCC1.SGVCEP0.BIT.VCEP		= 20;

	/* AD マルチサイクルスキャンレジスタ回数設定	*/
	ADCC1.SGMCYCR4.BIT.MCYC		= 0;							/* スキャン回数は1回 Scan=n+1						*/
																/* 注意事項2 										*/
	ADCC1.SGMCYCR3.BIT.MCYC		= 0;							/* スキャン回数は1回 Scan=n+1						*/
	ADCC1.SGMCYCR2.BIT.MCYC		= 0;							/* スキャン回数は1回 Scan=n+1						*/
	ADCC1.SGMCYCR1.BIT.MCYC		= 0;							/* スキャン回数は1回 Scan=n+1						*/
	ADCC1.SGMCYCR0.BIT.MCYC		= 0;							/* スキャン回数は1回 Scan=n+1						*/

	/* ADスキャングループ　上下限テーブル選択レジスタ	*/
	ADCC1.ULLMSR4.BIT.ULS		= 0;							/* 0:上下限をチェックしない							*/
																/* 1 :ADCC0ULLMTBR0でチェック						*/
																/* 2 :ADCC0ULLMTBR1でチェック/3: :ADCC0ULLMTBR2でチェック	*/
	ADCC1.ULLMSR3.BIT.ULS		= 0;
	ADCC1.ULLMSR2.BIT.ULS		= 0;
	ADCC1.ULLMSR1.BIT.ULS		= 0;
	ADCC1.ULLMSR0.BIT.ULS		= 0;

	/* ADスキャングループ0-2制御レジスタ	*/
	ADCC1.SGCR0.BIT.ADSTARTE	= 0;							/* 0: SGx同期開始信号無効/1: 有効					*/
	ADCC1.SGCR0.BIT.SCANMD		= 1;							/* 0: マルチサイクルSCAN/1: 連続スキャン			*/
	ADCC1.SGCR0.BIT.ADIE		= 0;							/* 0:SCANグループ0x終了割り込み信号出力禁止/1:許可	*/
	ADCC1.SGCR0.BIT.TRGMD0		= 0;							/* 0: A/D 変換開始トリガ入力無効/ 1:有効			*/

	ADCC1.SGCR1.BIT.ADSTARTE	= 1;							/* 0: SGx同期開始信号無効/1: 有効					*/
	ADCC1.SGCR1.BIT.SCANMD		= 0;							/* 0: マルチサイクルSCAN/1: 連続スキャン			*/
	ADCC1.SGCR1.BIT.ADIE		= 0;							/* 0:SCANグループ0x終了割り込み信号出力禁止/1:許可	*/
	ADCC1.SGCR1.BIT.TRGMD0		= 0;							/* 0: A/D 変換開始トリガ入力無効/ 1:有効			*/

	ADCC1.SGCR2.BIT.ADSTARTE	= 1;							/* 0: SGx同期開始信号無効/1: 有効					*/
	ADCC1.SGCR2.BIT.SCANMD		= 0;							/* 0: マルチサイクルSCAN/1: 連続スキャン			*/
	ADCC1.SGCR2.BIT.ADIE		= 0;							/* 0:SCANグループ0x終了割り込み信号出力禁止/1:許可	*/
	ADCC1.SGCR2.BIT.TRGMD0		= 0;							/* 0: A/D 変換開始トリガ入力無効/ 1:有効			*/

	/* ADスキャングループ3-4制御レジスタ	*/
	ADCC1.SGCR3.BIT.ADTSTARTE	= 0;							/* 0: AD タイマの同期開始信号 無効/1: 有効			*/
	ADCC1.SGCR3.BIT.ADSTARTE	= 1;							/* 0: SGx同期開始信号無効/1: 有効					*/
	ADCC1.SGCR3.BIT.SCANMD		= 0;							/* 0: マルチサイクルSCAN/1: 連続スキャン			*/
	ADCC1.SGCR3.BIT.ADIE		= 0;							/* 0:SCANグループ0x終了割り込み信号出力禁止/1:許可	*/
	ADCC1.SGCR3.BIT.TRGMD1		= 0;							/* 0: A/Dタイマへのトリガ入力無効/ 1:有効			*/
	ADCC1.SGCR3.BIT.TRGMD0		= 0;							/* 0: A/D 変換開始トリガ入力無効/ 1:有効			*/

	ADCC1.SGCR4.BIT.ADTSTARTE	= 0;							/* 0: AD タイマの同期開始信号 無効/1: 有効			*/
	ADCC1.SGCR4.BIT.ADSTARTE	= 1;							/* 0: SGx同期開始信号無効/1: 有効					*/
	ADCC1.SGCR4.BIT.SCANMD		= 0;							/* 0: マルチサイクルSCAN/1: 連続スキャン			*/
																/* 注意事項 2.										*/
#if ADC1_SG4INT		// SG4割り込み出力許可
	ADCC1.SGCR4.BIT.ADIE		= 1;							/* 0:SCANグループ0x終了割り込み信号出力禁止/1:許可	*/
#else				// SG4割り込み出力禁止
	ADCC1.SGCR4.BIT.ADIE		= 0;							/* 0:SCANグループ0x終了割り込み信号出力禁止/1:許可	*/
#endif
	ADCC1.SGCR4.BIT.TRGMD1		= 0;							/* 0: A/Dタイマへのトリガ入力無効/ 1:有効			*/
	ADCC1.SGCR4.BIT.TRGMD0		= 0;							/* 0: A/D 変換開始トリガ入力無効/ 1:有効			*/

/*　ADタイマ3/4設定	*/
	/* ADタイマ停止制御レジスタ	*/
	ADCC1.ADTENDCR3.BIT.ADTEND		= 1;						/* 0:何もしない/1:ADタイマ3停止）					*/
	ADCC1.ADTENDCR4.BIT.ADTEND		= 1;						/* 0:何もしない/1:ADタイマ停止）					*/

	/* ADタイマ初期位相設定レジスタ	*/
	ADCC1.ADTIPR3.BIT.ADTIP		= 0;
	ADCC1.ADTIPR4.BIT.ADTIP		= 0;

	/* ADタイマ周期設定レジスタ	*/
	ADCC1.ADTIPR3.BIT.ADTIP		= 0x001FFFFF;
	ADCC1.ADTIPR4.BIT.ADTIP		= 0x001FFFFF;

	/* ADタイマ開始制御レジスタ	*/
	while ( ( ADCC1.SGSR3.BIT.ADTACT == 1) || ( ADCC1.SGSR4.BIT.ADTACT == 1) ) {;;}
	ADCC1.ADTSTCR3.BIT.ADTST		= 0;							/* 0:何もしない/1:ADタイマ3開始）				*/
	ADCC1.ADTSTCR4.BIT.ADTST		= 0;							/* 0:何もしない/1:ADタイマ4開始）				*/

/* T&Hグループ設定	*/
	/* AD T&H 許可レジスタ	*/
	ADCC1.THER.BIT.TH0E		 	= 1;							/* 0:T&H0無効/1:T&H0有効							*/
	ADCC1.THER.BIT.TH1E			= 1;							/* 0:T&H1無効/1:T&H1有効							*/
	ADCC1.THER.BIT.TH2E			= 1;							/* 0:T&H2無効/1:T&H2有効							*/
	ADCC1.THER.BIT.TH3E			= 1;							/* 0:T&H3無効/1:T&H3有効							*/
	ADCC1.THER.BIT.TH4E			= 1;							/* 0:T&H4無効/1:T&H4有効							*/
	ADCC1.THER.BIT.TH5E			= 1;							/* 0:T&H5無効/1:T&H5有効							*/
	
	/* AD T&H グループ選択レジスタ	*/
	ADCC1.THGSR.BIT.TH0GS	 	=  0;							/* 0:T&H0 Aグループ/ 1: T&H0 Bグループ				*/
	ADCC1.THGSR.BIT.TH1GS	 	=  0;							/* 0:T&H1 Aグループ/ 1: T&H1 Bグループ				*/
	ADCC1.THGSR.BIT.TH2GS	 	=  0;							/* 0:T&H2 Aグループ/ 1: T&H2 Bグループ				*/
	ADCC1.THGSR.BIT.TH3GS	 	=  0;							/* 0:T&H3 Aグループ/ 1: T&H3 Bグループ				*/
	ADCC1.THGSR.BIT.TH4GS		=  0;							/* 0:T&H4 Aグループ/ 1: T&H4 Bグループ				*/
	ADCC1.THGSR.BIT.TH5GS		=  0;							/* 0:T&H5 Aグループ/ 1: T&H5 Bグループ				*/

	/* AD T&H Aグループ制御レジスタ	*/
	ADCC1.THACR.BIT.HLDCTE	 = 1;								/* 0:無効/1:ホールド制御有効					*/
	ADCC1.THACR.BIT.HLDTE	 = 1;								/* 0:無効/1:スキャングループのH/Wトリガ有効		*/
	ADCC1.THACR.BIT.SGS		 = 3;								/* 0:SG1/1:SG2/2:SG3/3:SG4						*/
	
	/* AD T&H Bグループ制御レジスタ	*/
	ADCC1.THBCR.BIT.HLDCTE	 = 1;								/* 0:無効/1:ホールド制御有効					*/
	ADCC1.THBCR.BIT.HLDTE	 = 1;								/* 0:無効/1:スキャングループのH/Wトリガ有効		*/
	ADCC1.THBCR.BIT.SGS		 = 3;								/* 0:SG1/1:SG2/2:SG3/3:SG4						*/

/* データフォーマット設定	*/
	/* ADデータフォーマット、加算回数設定レジスタ	*/
	ADCC1.ADCR2.BIT.DFMT		= 1;							/* 0:符号付固定小数点/1:符号付整数フォーマット	*/
	ADCC1.ADCR2.BIT.ADDNT		= 0;							/* 0:2回加算/1:4回加算							*/

/* サスペンド方式設定	*/
	/* ADサスペンド方式設定レジスタ	*/
	ADCC1.ADCR1.BIT.SUSMTD		= 2;							/* 0:同期サスペンド/1:同期、非同期MIX/2:非同期	*/
																/* 注意事項 1									*/
/* T&H自動サンプリング設定	*/
	/* ADサンプリング制御レジスタ	*/
	ADCC1.THCR.BIT.ASMPMSK		= 0;							/* 0:終了時自動サンプリング/1:自動サンプリングしない	*/

/* 上下限エラーテーブル設定	*/
	/* AD 上限/下限テーブルレジスタ(設定値は、必ず符号付固定小数点フォーマットで書く事）	*/
	ADCC1.ULLMTBR0.BIT.LLMTB	= 0;							/* 下限値　											*/
	ADCC1.ULLMTBR0.BIT.ULMTB	= 0x7FFE;						/* 上限値　											*/
	ADCC1.ULLMTBR1.BIT.LLMTB	= 0;
	ADCC1.ULLMTBR1.BIT.ULMTB	= 0x7FFE;
	ADCC1.ULLMTBR2.BIT.LLMTB	= 0;
	ADCC1.ULLMTBR2.BIT.ULMTB	= 0x7FFE;

/* エラー割り込み制御設定	*/
	/* AD セーフティ制御レジスタ	*/
	ADCC1.SFTCR.BIT.IDEIE		=	0;							/* 0:IDエラー割り込み禁止/1:許可					*/
	ADCC1.SFTCR.BIT.PEIE		= 	0;							/* 0:パリティエラー割り込み禁止/1:許可				*/
	ADCC1.SFTCR.BIT.OWEIE		= 	0;							/* 0:オーバーライトエラー割り込み禁止/1:許可		*/
	ADCC1.SFTCR.BIT.ULEIE		= 	0;							/* 0:上下限エラー割り込み禁止/1:許可				*/
	
	/* AD エラークリアレジスタ		*/
	ADCC1.ECR.BIT.ULEC			= 1;							/* 上下限エラー 		0:クリアしない/1:クリアする						*/
	ADCC1.ECR.BIT.OWEC			= 1;							/* オーバーライトエラー 0:クリアしない/1:クリアする						*/
	ADCC1.ECR.BIT.PEC			= 1;							/* パリティエラー	　	0:クリアしない/1:クリアする						*/
	ADCC1.ECR.BIT.IDEC			= 1;							/* IDエラー				0:クリアしない/1:クリアする						*/	

/* リード＆クリア設定	*/
	ADCC1.SFTCR.BIT.RDCLRE		= 	0;							/* 0:リード＆クリアしない/1:リード＆クリアする		*/

/*　フェールセーフ系設定	*/

	/* AD端子レベル自己診断制御レジスタ	*/
	ADCC1.TDCR.BIT.TDE			=	0;							/* 0:自己診断しない/ 1:自己診断する					*/
	ADCC1.TDCR.BIT.TDLV			= 	0;							/* 0:偶数物理サブチャネルにAVSS、奇数にAVCCを印可	*/
																/* 1:偶数物理サブチャネルにAVCC、奇数にAVSSを印可	*/
																/* 2:偶数物理サブチャネルにAVSS、奇数にAVCC/2を印可	*/
																/* 2:偶数物理サブチャネルにAVCC/2、奇数にAVSSを印可	*/

	/* AD 断線検出制御レジスタ		*/
	ADCC1.ODCR.BIT.ODE			= 	0;							/* 0:断線検出しない/ 1:断線検出する					*/
	ADCC1.ODCR.BIT.ODPW			=   4;							/* 断線検出用発生パルス幅　4H-14H/1Clock-17Clock	*/


/* サンプリング開始	*/
	/* ADサンプリング開始レジスタ	*/
	ADCC1.THSMPSTCR.BIT.SMPST	=1;								/* 0:何もしない/1:サンプリング開始				*/

/* ウェイト	*/
	{
		unsigned int i;
		for ( i = 0; i < 60 ; i++ ){;;}
	}
	

	/* AD T&H Aグループホールド開始レジスタ	*/
	ADCC1.THAHLDSTCR.BIT.HLDST	=0;								/* 0:何もしない/1:ホールド開始					*/

	/* AD T&H Bグループホールド開始レジスタ	*/
	ADCC1.THBHLDSTCR.BIT.HLDST=0;								/* 0:何もしない/1:ホールド開始					*/

	/* ADスキャングループ開始レジスタ	*/
	while ( ( ADCC1.SGSR4.BIT.SGACT == 1 ) || ( ADCC1.SGSR3.BIT.SGACT == 1 ) || ( ADCC1.SGSR2.BIT.SGACT == 1 ) || 
			( ADCC1.SGSR1.BIT.SGACT == 1 ) || ( ADCC1.SGSR0.BIT.SGACT == 1 ) ) {;;} 

	/* SG4 : 何もしない / SG0: 連続スキャン開始	*/
	ADCC1.SGCR4.BIT.TRGMD0		= 1;							/* 0: A/D 変換開始トリガ入力無効/ 1:有効		*/

	ADCC1.SGSTCR4.BIT.SGST		= 1;							/* スキャングループ4　0:何もしない/1:AD変換開始	*/
	ADCC1.SGSTCR3.BIT.SGST		= 0;							/* スキャングループ3　0:何もしない/1:AD変換開始	*/
	ADCC1.SGSTCR2.BIT.SGST		= 0;							/* スキャングループ2　0:何もしない/1:AD変換開始	*/
	ADCC1.SGSTCR1.BIT.SGST		= 0;							/* スキャングループ1　0:何もしない/1:AD変換開始	*/
	ADCC1.SGSTCR0.BIT.SGST		= 1;							/* スキャングループ0　0:何もしない/1:AD変換開始	*/


}

/*==============================================================*/
/*	ADCC0 SG4トリガ選択関数										*/
/*	引数：														*/
/*			u1 u1_trgsel		  0:TSG30 ADトリガ選択			*/
/*								  1:TSG31 ADトリガ選択			*/
/*								  2:reserve						*/
/*								  3:reserve						*/
/*							その他：TSG30ADトリガ選択			*/
/*--------------------------------------------------------------*/
/*	備考														*/
/*--------------------------------------------------------------*/
void adcc0_sg4_trig_set(u1 u1_trigsel)
{
	/* トリガ選択レジスタ(SG4用）	*/
	switch (u1_trigsel)
	{
		case 0:
			PIC2B.ADCC0TSEL4.BIT.ADCC0TSEL404 =1;						/* TSG0TSTADT0を選択(0:出力なし/1:出力）		*/
//			PIC2B.ADCC0TSEL4.BIT.ADCC0TSEL405 =1;						/* TSG0TSTADT1を選択(0:出力なし/1:出力）		*/
		break;
		case 1:
			PIC2B.ADCC0TSEL4.BIT.ADCC0TSEL406 =1;						/* TSG1TSTADT0を選択(0:出力なし/1:出力）		*/
//			PIC2B.ADCC0TSEL4.BIT.ADCC0TSEL407 =1;						/* TSG1TSTADT1を選択(0:出力なし/1:出力）		*/
		break;
		case 2:
			/* TAUD0トリガ選択	*/
				PIC2B.ADCC0TSEL4.BIT.ADCC0TSEL400 =1;					/* PIC2ADTEN40xを選択							*/
				PIC2B.ADTEN404.BIT.ADTEN40415 	  = 1;					/* TAUD0_CH15 選択								*/
		break;
		case 3:
			/* TAUD1トリガ選択	*/
				PIC2B.ADCC0TSEL4.BIT.ADCC0TSEL401 =1;					/* PIC2ADTEN41xを選択							*/
				PIC2B.ADTEN414.BIT.ADTEN41415	 = 1;					/* TAUD1_CH15 選択								*/
		break;
		default:
			
		break;
	}
	
	/* 有効エッジ選択	*/
	PIC2B.ADCC0EDGSEL.BIT.ADCC0EDGSEL98	=0;						/* TSG4立ち上がり選択							*/

}
/*==============================================================*/
/*	ADCC1 SG4トリガ選択関数										*/
/*	引数：														*/
/*			u1 u1_trgsel		  0:TSG30 ADトリガ選択			*/
/*								  1:TSG31 ADトリガ選択			*/
/*								  2:reserve						*/
/*								  3:reserve						*/
/*							その他：TSG30ADトリガ選択			*/
/*--------------------------------------------------------------*/
/*	備考														*/
/*--------------------------------------------------------------*/
void adcc1_sg4_trig_set(u1 u1_trigsel)
{
	/* トリガ選択レジスタ(SG4用）	*/
	switch (u1_trigsel)
	{
		case 0:
			PIC2B.ADCC1TSEL4.BIT.ADCC1TSEL404 =1;						/* TSG0TSTADT0を選択(0:出力なし/1:出力）		*/
//			PIC2B.ADCC1TSEL4.BIT.ADCC1TSEL405 =1;						/* TSG0TSTADT1を選択(0:出力なし/1:出力）		*/
		break;
		case 1:
			PIC2B.ADCC1TSEL4.BIT.ADCC1TSEL406 =1;						/* TSG1TSTADT0を選択(0:出力なし/1:出力）		*/
//			PIC2B.ADCC1TSEL4.BIT.ADCC1TSEL407 =1;						/* TSG1TSTADT1を選択(0:出力なし/1:出力）		*/
		break;
		case 2:
			/* TAUD0トリガ選択	*/
				PIC2B.ADCC1TSEL4.BIT.ADCC1TSEL400 =1;					/* PIC2ADTEN40xを選択							*/
				PIC2B.ADTEN404.BIT.ADTEN40415	= 1;					/* TAUD0_CH15 選択								*/
		break;
		case 3:
			/* TAUD1トリガ選択	*/
				PIC2B.ADCC1TSEL4.BIT.ADCC1TSEL401 =1;					/* PIC2ADTEN41xを選択							*/
				PIC2B.ADTEN414.BIT.ADTEN41415	= 1;					/* TAUD1_CH15 選択								*/
		break;
		default:
			
		break;
	}
	/* 有効エッジ選択	*/
	PIC2B.ADCC1EDGSEL.BIT.ADCC1EDGSEL98	=0;							/* TSG4立ち上がり選択							*/

}

/*==============================================================*/
/*	ADCC0 SG4 割り込み設定関数									*/
//*	引数：														*/
/*			u1 u1_intlv		: SG4割り込みレベル					*/
/*			u1 u1_intcpu	: 2: PE2 /2以外:PE1					*/
/*--------------------------------------------------------------*/
/*	備考														*/
/*																*/
/*==============================================================*/
void	adcc0_sg4_int_init( u1 u1_intlv , u1 u1_intcpu)
{
	if ( 2 == u1_intcpu )
		{
			INTC2.EIBD176.BIT.GPID	= 1;							/* CPU2にバインド					*/
			INTC2.EIBD176.BIT.PEID	= 2;							/* CPU2にバインド					*/	
		}
		else
		{
			INTC2.EIBD176.BIT.GPID	= 0;							/* CPU1にバインド					*/
			INTC2.EIBD176.BIT.PEID	= 1;							/* CPU1にバインド					*/
		}
		
   		if( u1_intlv<16)
		{
			INTC2.EIC176.BIT.EIMK176	= 1 ;						/* 割り込みマスク					*/			
			INTC2.EIC176.BIT.EIRF176	= 0 ;						/* 割り込みフラグクリア				*/
			INTC2.EIC176.BIT.EIP176		= u1_intlv ;				/* 割り込みレベル設定				*/
			INTC2.EIC176.BIT.EITB176	= 1;						/* テーブル参照方式					*/
			INTC2.EIC176.BIT.EIMK176	= 0 ;						/* 割り込みマスククリア				*/			
		}
		else
		{
			INTC2.EIC176.BIT.EIMK176	= 1 ;						/* 割り込みマスク					*/
			INTC2.EIC176.BIT.EIP176		= 15 ;						/* 割り込みレベル最低				*/

		}	
}

/*==============================================================*/
/*	ADCC1 SG4 割り込み設定関数									*/
//*	引数：														*/
/*			u1 u1_intlv		: SG4割り込みレベル					*/
/*			u1 u1_intcpu	: 2: PE2 /2以外:PE1					*/
/*--------------------------------------------------------------*/
/*	備考														*/
/*																*/
/*==============================================================*/
void	adcc1_sg4_int_init( u1 u1_intlv , u1 u1_intcpu)
{
	if ( 2 == u1_intcpu )
		{
			INTC2.EIBD181.BIT.GPID	= 1;							/* CPU2にバインド					*/
			INTC2.EIBD181.BIT.PEID	= 2;							/* CPU2にバインド					*/	
		}
		else
		{
			INTC2.EIBD181.BIT.GPID	= 0;							/* CPU1にバインド					*/
			INTC2.EIBD181.BIT.PEID	= 1;							/* CPU1にバインド					*/
		}
		
   		if( u1_intlv<16)
		{
			INTC2.EIC181.BIT.EIMK181	= 1 ;						/* 割り込みマスク					*/			
			INTC2.EIC181.BIT.EIRF181	= 0 ;						/* 割り込みフラグクリア				*/
			INTC2.EIC181.BIT.EIP181		= u1_intlv ;				/* 割り込みレベル設定				*/
			INTC2.EIC181.BIT.EITB181	= 1;						/* テーブル参照方式					*/
			INTC2.EIC181.BIT.EIMK181	= 0 ;						/* 割り込みマスククリア				*/			
		}
		else
		{
			INTC2.EIC181.BIT.EIMK181	= 1 ;						/* 割り込みマスク					*/
			INTC2.EIC181.BIT.EIP181		= 15 ;						/* 割り込みレベル最低				*/

		}	
}


