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
/*					  iolib共通変数定義						　 */
/*=============================================================*/
/*=============================================================*/

/*=============================================================*/
/*					CSIH0定数定義							　 */
/*=============================================================*/
#define		Get_TX_STATUS_CSIH0()			(CSIH0.STR0.BIT.TSF)
#define		Set_TX_DATA_CSIH0(u4_DATA)		(CSIH0.TX0W.UINT32 = u4_DATA)
#define		Get_RX_DATA_CSIH0()				(CSIH0.RX0W.UINT32)
#define		CSIH0_CS0				(0x000E0000)
#define		CSIH0_CS1				(0x000D0000)
#define		CSIH0_CS2				(0x000B0000)
#define		CSIH0_CS3				(0x00070000)
/*=============================================================*/

/*==============================================================*/
/*	CSIH0 初期化関数 											*/
/*                   											*/
/*	引数：														*/
/*			u1 u1_Mbps:通信速度[Mbpbs]							*/
/*                  1/2/4/8から選択、それ以外250Kbps			*/
/*--------------------------------------------------------------*/
/*	備考														*/
/*	　　　　使用周辺機能										*/
/*					シリアルI/F：CSIH0							*/
/*					:P4_7/CSIH0SI								*/
/*					:P4_8/CSIH0SO								*/
/*					:P4_9/CSIH0SCO								*/
/*					:P4_10/CSIH0CSS0							*/
/*					   CSはアクティブLOW						*/
/*			マスタモード										*/
/*			ボーレート: ＠PCLK80MHzとする						*/
/*				CS0のみ設定										*/
/*          CS0: CFG0 は、1Byte送信								*/
/*																*/
/*--------------------------------------------------------------*/
void csih0_init( u2 u2_Mbps )
{
	/*	出力停止	*/
	PORT.PCR4_7.UINT32		=	0x00010010;						/* SI端子入力		*/
	PORT.PCR4_8.UINT32		=	0x00010010;						/* SO端子入力		*/
	PORT.PCR4_9.UINT32		=	0x00010010;						/* SC端子入力		*/
	PORT.PCR4_10.UINT32		=	0x00010010;						/* CS0端子入力		*/

	/* CSIH0停止 */
	CSIH0.CTL0.UINT8		= 0x00;

	/* ボーレート設定*/

	CSIH0.CTL2.BIT.PRS 		= 0;
							/* BitName	 Bit     SetValue         			*/
							/* CSIHnPRS  15-13  ->0:PCLK/2^0				*/
							
	switch ( u2_Mbps )
	{
		case 1:
			CSIH0.BRS0.BIT.BRS		= 40;
							/* BRS : PCLK/2^0 / (BRS*2)			=1Mbps		*/
		break;
		case 2:
			CSIH0.BRS0.BIT.BRS		= 20;
							/* BRS : PCLK/2^0 / (BRS*2)			=2Mbps		*/
		break;

		case 4:
			CSIH0.BRS0.BIT.BRS		= 10;
							/* BRS : PCLK/2^0 / (BRS*2)			=4Mbps		*/
		break;
		case 8:
			CSIH0.BRS0.BIT.BRS		= 5;
							/* BRS : PCLK/2^0 / (BRS*2)			=8Mbps		*/
		break;
		default:
			CSIH0.BRS0.BIT.BRS		=160;
							/* BRS : PCLK/2^0 / (BRS*2)			=250Kbps		*/			
		break;
	}
							
	CSIH0.CTL1.UINT32	= 0x00000010;
							/* BitName	 Bit     SetValue         			*/
							/* CSIHnPHE  18     ->0:CPU制御の高優先通信機能無効*/
							/* CSIHnCKR  17		->0:デフォルトHI（CS使用時も）*/
							/* CSIHnSLIT 16 	->0:転送終了後割り込み		*/
							/* CSIHnCSLx 15- 8	->0:CSはアクティブLOW		*/
							/* CSIHnEDLE 7 		->0:拡張データモード無		*/
							/* CSIHnJE   6  	->0:JOBモード無効			*/
							/* CSIHnDCS  5  	->0:データ一貫性無効		*/
							/* CSIHnCSRI 4 		->1:最後のデータ終了後CS非アクティブ*/
							/* CSIHnLBM  3  	->0:LOOPバック非アクティブ	*/
							/* CSIHnSIT  2  	->0:割り込み遅延なし		*/
							/* CSIHnHSE  1  	->0:ハンドシェイク機能無効	*/
							/* CSIHnSSE  0      ->0: スレーブ選択機能無効	*/

	CSIH0.MCTL0.UINT16	= 0x0000;
							/* BitName	 Bit     SetValue         			*/
							/* CSIHnMMS  9- 8	->0:FIFOモード				*/
							/* CSIHnHSE  4-0  	->0:タイムアウト検出なし	*/
							/*						masterは0固定			*/
							
	CSIH0.MCTL1.UINT32	= 0x00000000;
							/* BitName	 Bit     SetValue         			*/
							/* CSIHnFES  22- 16	->0:FIFO時送信割り込みバッファ数*/
							/* 						未送信データ数設定		*/
							/* CSIHnFFS  6-0  	->0:FIFO時受信信割り込みバッファ数	*/
							/*						データ受信数設定		*/

	/* CS0用コンフィギュレーションレジスタ(1Byte)	*/
	CSIH0.CFG0.UINT32	= 0x08008000;
							/* BitName	 	Bit    	 SetValue         			*/
							/* CSIHnPSCLx 	31-30	->0：プリスケーラ出力 CSIHBPLCK/2^0		*/
							/* CSIHnPSx	  	29-28   ->0b00: パリティ付加(なし）				*/
							/* CSIHnDLSx	27-24   ->0b1000: データ長8bit					*/
							/* CSIHnRCBx	19   	->0: 高優先度							*/
							/* CSIHnDIRx	18   	->0: MSBファースト						*/
							/* CSIHnCKPx	17   	->0: 									*/
							/* CSIHnDAPx	16   	->0: DATA/CLK位相						*/
							/* CSIHnIDLx	15   	->1: CSの強制アイドル挿入				*/
							/* CSIHnIDx		14-12   ->0: アイドル時間0.5シリアルクロック	*/
							/* CSIHnHDx		11-8	->0: ホールド時間0.5シリアルクロック	*/
							/* CSIHnINx		7-4		->0: データ遅延0						*/
							/* CSIHnIDx		4-0  	->0: セットアップ時間0.5シリアルクロック*/	
							
	/* CS1用コンフィギュレーションレジスタ(2Byte)	*/
	CSIH0.CFG1.UINT32	= 0x00008000;
							/* BitName	 	Bit    	 SetValue         			*/
							/* CSIHnPSCLx 	31-30	->0：プリスケーラ出力 CSIHBPLCK/2^0		*/
							/* CSIHnPSx	  	29-28   ->0b00: パリティ付加なし				*/
							/* CSIHnDLSx	27-24   ->0b1111: データ長16bit					*/
							/* CSIHnRCBx	19   	->0: 高優先度							*/
							/* CSIHnDIRx	18   	->0: MSBファースト						*/
							/* CSIHnCKPx	17   	->0: 									*/
							/* CSIHnDAPx	16   	->0: DATA/CLK位相						*/
							/* CSIHnIDLx	15   	->1: CSの強制アイドル挿入				*/
							/* CSIHnIDx		14-12   ->0: アイドル時間0.5シリアルクロック	*/
							/* CSIHnHDx		11-8	->0: ホールド時間0.5シリアルクロック	*/
							/* CSIHnINx		7-4		->0: データ遅延0						*/
							/* CSIHnIDx		4-0  	->0: セットアップ時間0.5シリアルクロック*/							

	/* 端子設定	*/
	PORT.PCR4_7.UINT32		=	0x00000055;						/* SI端子入力				*/	

	PORT.PCR4_8.UINT32		=	0x00000065;						/* SO端子出力				*/
	PORT.PCR4_9.UINT32		=	0x00000065;						/* SC端子出力				*/

	PORT.PCR4_10.UINT32		=	0x00000045;						/* CSS0端子出力				*/

	CSIH0.STCR0.UINT16 		= 0x0100;							/* FIFOクリア				*/
    CSIH0.CTL0.BIT.PWR 		= 1;        						/* permit CSIH0 			*/
 							
	/* 以下のレジスタアクセスは、不用意なアクセス禁止。	*/						
/*	CSIH0.MCTL2.UINT32	= 0x00000000;	*/
							/* BitName	 Bit     SetValue         			*/
							/* CSIHnBTST 31		->0: バッファ転送トリガ		*/
							/* 					　FIFO、ダイレクトモード時無効	*/
							/* CSIHnND  23-16  ->0: データ送信数設定		*/
							/*					　FIFO、ダイレクトモード時無効	*/
							/* CSIHnSOP 6-0 	 ->0: データポンタ選択		*/														
							/* 												*/
							
}

/*==============================================================*/
/*	CSIH0送信関数												*/
/*	引数： 	送信データ											*/
/*--------------------------------------------------------------*/
/*	備考														*/
/*	　　　　使用周辺機能										*/
/*					: CSIH0										*/
/*	注意！！ 													*/
/*																*/
/*==============================================================*/
// 1Byte　送信
u1	u1_CSIH0_SO_1byte(u1 u1_tx_data)
{
	u4	u4_tx0w;
	
	if ( 0 == Get_TX_STATUS_CSIH0() )			// 送信中でない
	{
		u4_tx0w	=CSIH0_CS0 | (u4)(u1_tx_data) ;
		Set_TX_DATA_CSIH0(u4_tx0w);
		return (1);
	}
	else
	{
		return (0);
	}
}
//   2Byte 送信
u1		u1_CSIH0_SO_2byte(u2 u2_tx_data)
{
	u4	u4_tx0w;

	if ( 0 == Get_TX_STATUS_CSIH0() )			// 送信中でない
	{
		u4_tx0w	=CSIH0_CS1 | (u4)(u2_tx_data) ;
		Set_TX_DATA_CSIH0(u4_tx0w);
		return (1);
	}
	else
	{
		return (0);
	}
}
/*==============================================================*/

/*==============================================================*/
/*	CSIH0受信関数												*/
/*	引数： 受信値ポインタ										*/
/*--------------------------------------------------------------*/
/*	備考														*/
/*	　　　　使用周辺機能										*/
/*					: CSIH0										*/
/*	注意！！ 													*/
/*																*/
/*==============================================================*/
// 1Byte　受信
u1		u1_CSIH0_SI_1byte(u1 *u1_rx_data)
{
	
	if ( 1 == CSIH0.STR0.BIT.SRP )
	{
		*u1_rx_data = (u1)(Get_RX_DATA_CSIH0() & 0x000000FF );
		return (1);
	}
	else
	{
		return (0);
	}
}
//   2Byte 受信 (CS0用）
u1		u1_CSIH0_SI_2byte(u2 *u2_rx_data)
{
	
	if ( 2 == CSIH0.STR0.BIT.SRP )
	{
		*u2_rx_data = (u1)(Get_RX_DATA_CSIH0() & 0x0000FFFF );
		return (1);
	}
	else
	{
		return (0);
	}
}
/*==============================================================*/

/*==============================================================*/
/*	CSIH00割り込みレベル設定関数								*/
/*	引数：														*/
/*			u1  u1_intlv	:送信割り込みレベル					*/
/*			u1 u1_intcpu	: 2: PE2 /2以外:PE1					*/
/*--------------------------------------------------------------*/
/*	備考														*/
/*	　　　　使用周辺機能										*/
/*					シリアルI/F：CSIH0							*/
/*--------------------------------------------------------------*/
void csih0_tx_intlv_init( u1 u1_intlv , u1 u1_intcpu)
{
			/* 割り込みレベル設定	*/
	if ( 2 == u1_intcpu )
	{
		INTC2.EIBD215.BIT.GPID	= 1;							/* CPU2にバインド					*/
		INTC2.EIBD215.BIT.PEID	= 2;							/* CPU2にバインド					*/		
	}
	else
	{
		INTC2.EIBD215.BIT.GPID	= 0;							/* CPU1にバインド					*/
		INTC2.EIBD215.BIT.PEID	= 1;							/* CPU1にバインド					*/
	}
	if( u1_intlv < 16 )
	{
		INTC2.EIC215.BIT.EIRF215	= 0 ;					/* 割り込みフラグクリア				*/
		INTC2.EIC215.BIT.EIP215		= u1_intlv ;			/* 割り込みレベル設定				*/
		INTC2.EIC215.BIT.EITB215	= 1;					/* テーブル参照方式					*/
//		INTC2.EIC215.BIT.EITB215	= 0;					/* 直接分岐方式						*/
		INTC2.EIC215.BIT.EIMK215	= 0 ;					/* 割り込みマスククリア				*/
	}
	else
	{
		INTC2.EIC215.BIT.EIMK215	= 1 ;						/* 割り込みマスク					*/
	}

	
}


