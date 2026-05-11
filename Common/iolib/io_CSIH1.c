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
/*					CSIH1定数定義							　 */
/*=============================================================*/
#define		Get_TX_STATUS_CSIH1()			(CSIH1.STR0.BIT.TSF)
#define		Set_TX_DATA_CSIH1(u4_DATA)		(CSIH1.TX0W.UINT32 = u4_DATA)
#define		CSIH1_CS0				(0x000E0000)
#define		CSIH1_CS1				(0x000D0000)
#define		CSIH1_CS2				(0x000B0000)
#define		CSIH1_CS3				(0x00070000)
/*=============================================================*/

/*==============================================================*/
/*	CSIH1 初期化関数 											*/
/*                   											*/
/*	引数：														*/
/*			u1 u1_Mbps:通信速度[Mbpbs]							*/
/*                  1/2/4/8から選択、それ以外250Kbps			*/
/*--------------------------------------------------------------*/
/*	備考														*/
/*	　　　　使用周辺機能										*/
/*					シリアルI/F：CSIH1							*/
/*					:P4_0/CSIH1SI								*/
/*					:P4_1/CSIH1SO								*/
/*					:P4_2/CSIH1SCO								*/
/*					:P4_3/CSIH1CSS0								*/
/*					   CSはアクティブLOW						*/
/*			マスタモード										*/
/*			ボーレート: ＠PCLK80MHzとして設定					*/
/*				CS0のみ設定										*/
/*       	   CS0: CFG0 は、1Byte送信							*/
/*       	   		CFG1 は、2Byte送信							*/
/*					CFG1は、CSは出力されないのでソフトで実施の事*/
/*         														*/
/*	 奇数パリティ												*/
/*																*/
/*--------------------------------------------------------------*/
void csih1_init( u2 u2_Mbps )
{
	/*	出力停止	*/
	PORT.PCR4_0.UINT32		=	0x00010010;						/* SI端子入力		*/
	PORT.PCR4_1.UINT32		=	0x00010010;						/* SO端子入力		*/
	PORT.PCR4_2.UINT32		=	0x00010010;						/* SC端子入力		*/
	PORT.PCR4_3.UINT32		=	0x00010010;						/* CS0端子入力		*/

	/* CSIH1停止 */
	CSIH1.CTL0.UINT8		= 0x00;

	/* ボーレート設定*/

	CSIH1.CTL2.BIT.PRS 		= 0;
							/* BitName	 Bit     SetValue         			*/
							/* CSIHnPRS  15-13  ->0:PCLK/2^0				*/
							
	switch ( u2_Mbps )
	{
		case 1:
			CSIH1.BRS0.BIT.BRS		= 40;
							/* BRS : PCLK/2^0 / (BRS*2)			=1Mbps		*/
		break;
		case 2:
			CSIH1.BRS0.BIT.BRS		= 20;
							/* BRS : PCLK/2^0 / (BRS*2)			=2Mbps		*/
		break;

		case 4:
			CSIH1.BRS0.BIT.BRS		= 10;
							/* BRS : PCLK/2^0 / (BRS*2)			=4Mbps		*/
		break;
		case 8:
			CSIH1.BRS0.BIT.BRS		= 5;
							/* BRS : PCLK/2^0 / (BRS*2)			=8Mbps		*/
		break;
		default:
			CSIH1.BRS0.BIT.BRS		=160;
							/* BRS : PCLK/2^0 / (BRS*2)			=250KHz		*/			
		break;
	}
							
	CSIH1.CTL1.UINT32	= 0x00000010;
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

	CSIH1.MCTL0.UINT16	= 0x0000;
							/* BitName	 Bit     SetValue         			*/
							/* CSIHnMMS  9- 8	->0:FIFOモード				*/
							/* CSIHnHSE  4-0  	->0:タイムアウト検出なし	*/
							/*						masterは0固定			*/
							
	CSIH1.MCTL1.UINT32	= 0x00000000;
							/* BitName	 Bit     SetValue         			*/
							/* CSIHnFES  22- 16	->0:FIFO時送信割り込みバッファ数*/
							/* 						未送信データ数設定		*/
							/* CSIHnFFS  6-0  	->0:FIFO時受信信割り込みバッファ数	*/
							/*						データ受信数設定		*/

	/* CS0用コンフィギュレーションレジスタ(1Byte)	*/
	CSIH1.CFG0.UINT32	= 0x08008000;
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
	CSIH1.CFG1.UINT32	= 0x00008000;
							/* BitName	 	Bit    	 SetValue         			*/
							/* CSIHnPSCLx 	31-30	->0：プリスケーラ出力 CSIHBPLCK/2^0		*/
							/* CSIHnPSx	  	29-28   ->0b00: パリティ付加(なし）				*/
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
	PORT.PCR4_0.UINT32		=	0x00000056;						/* SI端子入力				*/	

	PORT.PCR4_1.UINT32		=	0x00000066;						/* SO端子出力				*/
	PORT.PCR4_2.UINT32		=	0x00000066;						/* SC端子出力				*/

	PORT.PCR4_3.UINT32		=	0x00000046;						/* CSS0端子出力				*/

	CSIH1.STCR0.UINT16 		= 0x0100;							/* FIFOクリア				*/
    CSIH1.CTL0.BIT.PWR 		= 1;        						/* permit CSIH1 			*/
 							
	/* 以下のレジスタアクセスは、不用意なアクセス禁止。	*/						
/*	CSIH1.MCTL2.UINT32	= 0x00000000;	*/
							/* BitName	 Bit     SetValue         			*/
							/* CSIHnBTST 31		->0: バッファ転送トリガ		*/
							/* 					　FIFO、ダイレクトモード時無効	*/
							/* CSIHnND  23-16  ->0: データ送信数設定		*/
							/*					　FIFO、ダイレクトモード時無効	*/
							/* CSIHnSOP 6-0 	 ->0: データポンタ選択		*/														
							/* 												*/
							
}


/*==============================================================*/
/*	CSIH1 初期化関数 											*/
/*                   											*/
/*	引数：														*/
/*	引数：														*/
/*			u1 u1_Mbps:通信速度[Kbpbs]							*/
/*                  1M/500K/250Kから選択、それ以外250Kbps		*/
/*--------------------------------------------------------------*/
/*	備考														*/
/*	　　　　使用周辺機能										*/
/*					シリアルI/F：CSIH1							*/
/*					:P4_0/CSIH1SI								*/
/*					:P4_1/CSIH1SO								*/
/*					:P4_2/CSIH1SCO								*/
/*					:P4_3/CSIH1CSS0								*/
/*					   CSはアクティブLOW						*/
/*			マスタモード										*/
/*			ボーレート: ＠PCLK80MHz時で設定						*/
/*				CS0のみ設定										*/
/*          CS0: CFG0 は、15Bit送信								*/
/*         														*/
/*																*/
/*--------------------------------------------------------------*/
void csih1_RA270000_init( u2 u2_Kbps )
{
	/*	出力停止	*/
	PORT.PCR4_0.UINT32		=	0x00010010;						/* SI端子入力		*/
	PORT.PCR4_1.UINT32		=	0x00010010;						/* SO端子入力		*/
	PORT.PCR4_2.UINT32		=	0x00010010;						/* SC端子入力		*/
	PORT.PCR4_3.UINT32		=	0x00010010;						/* CS0端子入力		*/

	/* CSIH1停止 */
	CSIH1.CTL0.UINT8		= 0x00;

	/* ボーレート設定*/

	CSIH1.CTL2.BIT.PRS 		= 0;
							/* BitName	 Bit     SetValue         			*/
							/* CSIHnPRS  15-13  ->0:PCLK/2^0				*/
							
	switch ( u2_Kbps )
	{
		case 1000:
			CSIH1.BRS0.BIT.BRS		= 40;
							/* BRS : PCLK/2^0 / (BRS*2)			=1Mbps			*/
		break;
		case 500:
			CSIH1.BRS0.BIT.BRS		= 80;
							/* BRS : PCLK/2^0 / (BRS*2)			=500Kbps		*/
		break;

		case 250:
			CSIH1.BRS0.BIT.BRS		= 160;
							/* BRS : PCLK/2^0 / (BRS*2)			=250Kbps		*/
		break;

		default:
			CSIH1.BRS0.BIT.BRS		=320;
							/* BRS : PCLK/2^0 / (BRS*2)			=125Kbps		*/			
		break;
	}
							
	CSIH1.CTL1.UINT32	= 0x00000010;
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

	CSIH1.MCTL0.UINT16	= 0x0000;
							/* BitName	 Bit     SetValue         			*/
							/* CSIHnMMS  9- 8	->0:FIFOモード				*/
							/* CSIHnHSE  4-0  	->0:タイムアウト検出なし	*/
							/*						masterは0固定			*/
							
	CSIH1.MCTL1.UINT32	= 0x00000000;
							/* BitName	 Bit     SetValue         			*/
							/* CSIHnFES  22- 16	->0:FIFO時送信割り込みバッファ数*/
							/* 						未送信データ数設定		*/
							/* CSIHnFFS  6-0  	->0:FIFO時受信信割り込みバッファ数	*/
							/*						データ受信数設定		*/

	/* CS0用コンフィギュレーションレジスタ(15bit)	*/
	CSIH1.CFG0.UINT32	= 0x2F008000;
							/* BitName	 	Bit    	 SetValue         			*/
							/* CSIHnPSCLx 	31-30	->0：プリスケーラ出力 CSIHBPLCK/2^0		*/
							/* CSIHnPSx	  	29-28   ->0b10: 奇数パリティ付加				*/
							/* CSIHnDLSx	27-24   ->0b1111: データ長15bit					*/
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
	PORT.PCR4_0.UINT32		=	0x00000056;						/* SI端子入力				*/	

	PORT.PCR4_1.UINT32		=	0x00000066;						/* SO端子出力				*/
	PORT.PCR4_2.UINT32		=	0x00000046;						/* SC端子出力				*/

	PORT.PCR4_3.UINT32		=	0x00000046;						/* CSS0端子出力				*/

	CSIH1.STCR0.UINT16 		= 0x0100;							/* FIFOクリア				*/
    CSIH1.CTL0.BIT.PWR 		= 1;        						/* permit CSIH1 			*/
 							
	/* 以下のレジスタアクセスは、不用意なアクセス禁止。	*/						
/*	CSIH1.MCTL2.UINT32	= 0x00000000;	*/
							/* BitName	 Bit     SetValue         			*/
							/* CSIHnBTST 31		->0: バッファ転送トリガ		*/
							/* 					　FIFO、ダイレクトモード時無効	*/
							/* CSIHnND  23-16  ->0: データ送信数設定		*/
							/*					　FIFO、ダイレクトモード時無効	*/
							/* CSIHnSOP 6-0 	 ->0: データポンタ選択		*/														
							/* 												*/
							
}


/*==============================================================*/
/*	CSIH1送信関数												*/
/*	引数： 	送信データ											*/
/*--------------------------------------------------------------*/
/*	備考														*/
/*	　　　　使用周辺機能										*/
/*					: CSIH1										*/
/*	注意！！ 													*/
/*																*/
/*==============================================================*/
// 1Byte　送信
u1	u1_CSIH1_SO_1byte(u1 u1_tx_data)
{
	u4	u4_tx0w;
	
	if ( 0 == Get_TX_STATUS_CSIH1() )			// 送信中でない
	{
		u4_tx0w	=CSIH1_CS0 | (u4)(u1_tx_data) ;
		Set_TX_DATA_CSIH1(u4_tx0w);
		return (1);
	}
	else
	{
		return (0);
	}
}
//   2Byte 送信
u1		u1_CSIH1_SO_2byte(u2 u2_tx_data)
{
	u4	u4_tx0w;

	if ( 0 == Get_TX_STATUS_CSIH1() )			// 送信中でない
	{
		u4_tx0w	=CSIH1_CS1 | (u4)(u2_tx_data) ;
		Set_TX_DATA_CSIH1(u4_tx0w);
		return (1);
	}
	else
	{
		return (0);
	}
}
/*==============================================================*/

/*==============================================================*/
/*	CSIH1受信関数												*/
/*	引数： 	なし												*/
/*--------------------------------------------------------------*/
/*	備考														*/
/*	　　　　使用周辺機能										*/
/*					: CSIH1										*/
/*	注意！！ 													*/
/*																*/
/*==============================================================*/
#define		Get_RX_DATA_CSIH1()				(CSIH1.RX0W.UINT32)
// 1Byte　受信
u1		u1_CSIH1_SI_1byte(u1 *u1_rx_data)
{
	
	if ( 1 == CSIH1.STR0.BIT.SRP )
	{
		*u1_rx_data = (u1)(Get_RX_DATA_CSIH1() & 0x000000FF );
		return (1);
	}
	else
	{
		return (0);
	}
}
//   2Byte 受信
u1		u1_CSIH1_SI_2byte(u2 *u2_rx_data)
{
	
	if ( 1 == CSIH1.STR0.BIT.SRP )
	{
		*u2_rx_data = (u2)(Get_RX_DATA_CSIH1() & 0x0000FFFF );
		return (1);
	}
	else
	{
		return (0);
	}
}
/*==============================================================*/

/*==============================================================*/
/*	CSIH1割り込みレベル設定関数								*/
/*	引数：														*/
/*			u1  u1_intlv	:送信割り込みレベル					*/
/*			u1 u1_intcpu	: 2: PE2 /2以外:PE1					*/
/*--------------------------------------------------------------*/
/*	備考														*/
/*	　　　　使用周辺機能										*/
/*					シリアルI/F：CSIH1							*/
/*--------------------------------------------------------------*/
void csih1_tx_intlv_init( u1 u1_intlv , u1 u1_intcpu)
{
			/* 割り込みレベル設定	*/
	if ( 2 == u1_intcpu )
	{
		INTC2.EIBD219.BIT.GPID	= 1;							/* CPU2にバインド					*/
		INTC2.EIBD219.BIT.PEID	= 2;							/* CPU2にバインド					*/		
	}
	else
	{
		INTC2.EIBD219.BIT.GPID	= 0;							/* CPU1にバインド					*/
		INTC2.EIBD219.BIT.PEID	= 1;							/* CPU1にバインド					*/
	}
	if( u1_intlv < 16 )
	{
		INTC2.EIC219.BIT.EIRF219	= 0 ;					/* 割り込みフラグクリア				*/
		INTC2.EIC219.BIT.EIP219		= u1_intlv ;			/* 割り込みレベル設定				*/
		INTC2.EIC219.BIT.EITB219	= 1;					/* テーブル参照方式					*/
//		INTC2.EIC219.BIT.EITB219	= 0;					/* 直接分岐方式						*/
		INTC2.EIC219.BIT.EIMK219	= 0 ;					/* 割り込みマスククリア				*/
	}
	else
	{
		INTC2.EIC219.BIT.EIMK219	= 1 ;						/* 割り込みマスク					*/
	}

	
}


/*==============================================================*/
/*	CSIH1_RA2700送信関数										*/
/*	引数： 														*/
/*			u1 u1_rw:   1:Read 0:Write							*/
/*			u1 u1_addr: レジスタアドレス						*/
/*			u1 u1_data:　データ									*/
/*--------------------------------------------------------------*/
/*	備考														*/
/*	　　　　使用周辺機能										*/
/*					: CSIH1										*/
/*	注意！！ 													*/
/*																*/
/*==============================================================*/
u1	u1_TX1_RA270000( u1 u1_rw , u1 u1_addr , u1 u1_data)
{
	u4	u4_tx0w;
	
	if ( 0 == Get_TX_STATUS_CSIH1() )			// 送信中でない
	{
		u4_tx0w	=CSIH1_CS0 | (u2)(u1_rw&0x01) << 14	|( (u2)(u1_addr&0x1F) << 8 ) | (u2)(u1_data);
		Set_TX_DATA_CSIH1(u4_tx0w);
		return (1);
	}
	else
	{
		return (0);
	}
}
/*==============================================================*/

/*==============================================================*/
/*	CSIH1受信関数												*/
/*	引数： 	受信値ポインタ										*/
/*  戻り値：0；受信なし	/1:受信あり								*/
/*--------------------------------------------------------------*/
/*	備考														*/
/*	　　　　使用周辺機能										*/
/*					: CSIH1										*/
/*	注意！！ 													*/
/*																*/
/*==============================================================*/
u1		u1_RX1_RA270000( u1  *u1_rx_data )
{
	
	if ( 1 == CSIH1.STR0.BIT.SRP )
	{
		*u1_rx_data = (u1)(Get_RX_DATA_CSIH1() & 0x000000FF );
		return (1);
	}
	else
	{
		return (0);
	}
}

/*==============================================================*/



/*==============================================================*/
/*	CSIH1(For EEPROM) 初期化関数 								*/
/*                   											*/
/*	引数：														*/
/*			u1 u1_Mbps:通信速度[Mbpbs]							*/
/*                  1/2/4/8から選択、それ以外250Kbps			*/
/*--------------------------------------------------------------*/
/*	備考														*/
/*	　　　　使用周辺機能										*/
/*					シリアルI/F：CSIH1							*/
/*					:P4_0/CSIH1SI								*/
/*					:P4_1/CSIH1SO								*/
/*					:P4_2/CSIH1SCO								*/
/*					   CSはアクティブLOW						*/
/*			マスタモード										*/
/*			ボーレート: ＠PCLK80MHzとする						*/
/*																*/
/*--------------------------------------------------------------*/
void csih1_eeprom_init( u2 u2_Mbps )
{
	/*	出力停止	*/
	PORT.PCR4_0.UINT32		=	0x00010010;						/* SI端子入力		*/
	PORT.PCR4_1.UINT32		=	0x00010010;						/* SO端子入力		*/
	PORT.PCR4_2.UINT32		=	0x00010010;						/* SC端子入力		*/
//	PORT.PCR4_3.UINT32		=	0x00010010;						/* CS0端子入力		*/
	
	/* CSIH1停止 */
	CSIH1.CTL0.UINT8		= 0x00;

	/* ボーレート設定*/

	CSIH1.CTL2.BIT.PRS 		= 0;
							/* BitName	 Bit     SetValue         			*/
							/* CSIHnPRS  15-13  ->0:PCLK/2^0				*/
							
	switch ( u2_Mbps )
	{
		case 1:
			CSIH1.BRS0.BIT.BRS		= 40;
							/* BRS : PCLK/2^0 / (BRS*2)			=1Mbps		*/
		break;
		case 2:
			CSIH1.BRS0.BIT.BRS		= 20;
							/* BRS : PCLK/2^0 / (BRS*2)			=2Mbps		*/
		break;

		case 4:
			CSIH1.BRS0.BIT.BRS		= 10;
							/* BRS : PCLK/2^0 / (BRS*2)			=4Mbps		*/
		break;
		case 8:
			CSIH1.BRS0.BIT.BRS		= 5;
							/* BRS : PCLK/2^0 / (BRS*2)			=8Mbps		*/
		break;
		default:
			CSIH1.BRS0.BIT.BRS		=160;
							/* BRS : PCLK/2^0 / (BRS*2)			=250Kbps		*/			
		break;
	}
							
	CSIH1.CTL1.UINT32	= 0x00000010;
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

	CSIH1.MCTL0.UINT16	= 0x0000;
							/* BitName	 Bit     SetValue         			*/
							/* CSIHnMMS  9- 8	->0:FIFOモード				*/
							/* CSIHnHSE  4-0  	->0:タイムアウト検出なし	*/
							/*						masterは0固定			*/
							
	CSIH1.MCTL1.UINT32	= 0x00000000;
							/* BitName	 Bit     SetValue         			*/
							/* CSIHnFES  22- 16	->0:FIFO時送信割り込みバッファ数*/
							/* 						未送信データ数設定		*/
							/* CSIHnFFS  6-0  	->0:FIFO時受信信割り込みバッファ数	*/
							/*						データ受信数設定		*/

	/* CS0用コンフィギュレーションレジスタ(14Bit)	*/
	CSIH1.CFG0.UINT32	= 0x0E038000;
							/* BitName	 	Bit    	 SetValue         			*/
							/* CSIHnPSCLx 	31-30	->0：プリスケーラ出力 CSIHBPLCK/2^0		*/
							/* CSIHnPSx	  	29-28   ->0b00: パリティ付加(なし）				*/
							/* CSIHnDLSx	27-24   ->0b1110: データ長14bit					*/
							/* CSIHnRCBx	19   	->0: 高優先度							*/
							/* CSIHnDIRx	18   	->0: MSBファースト						*/
							/* CSIHnCKPx	17   	->1: 									*/
							/* CSIHnDAPx	16   	->1: DATA/CLK位相						*/
							/* CSIHnIDLx	15   	->1: CSの強制アイドル挿入				*/
							/* CSIHnIDx		14-12   ->0: アイドル時間0.5シリアルクロック	*/
							/* CSIHnHDx		11-8	->0: ホールド時間0.5シリアルクロック	*/
							/* CSIHnINx		7-4		->0: データ遅延0						*/
							/* CSIHnIDx		4-0  	->0: セットアップ時間0.5シリアルクロック*/

	/* CS1用コンフィギュレーションレジスタ(2Byte)	*/
	CSIH1.CFG1.UINT32	= 0x00038000;
							/* BitName	 	Bit    	 SetValue         			*/
							/* CSIHnPSCLx 	31-30	->0：プリスケーラ出力 CSIHBPLCK/2^0		*/
							/* CSIHnPSx	  	29-28   ->0b00: パリティ付加(なし）				*/
							/* CSIHnDLSx	27-24   ->0b0000: データ長16bit					*/
							/* CSIHnRCBx	19   	->0: 高優先度							*/
							/* CSIHnDIRx	18   	->0: MSBファースト						*/
							/* CSIHnCKPx	17   	->1: 									*/
							/* CSIHnDAPx	16   	->1: DATA/CLK位相						*/
							/* CSIHnIDLx	15   	->1: CSの強制アイドル挿入				*/
							/* CSIHnIDx		14-12   ->0: アイドル時間0.5シリアルクロック	*/
							/* CSIHnHDx		11-8	->0: ホールド時間0.5シリアルクロック	*/
							/* CSIHnINx		7-4		->0: データ遅延0						*/
							/* CSIHnIDx		4-0  	->0: セットアップ時間0.5シリアルクロック*/
	/* CS0用コンフィギュレーションレジスタ(1Byte)	*/
	CSIH1.CFG2.UINT32	= 0x08038000;
							/* BitName	 	Bit    	 SetValue         			*/
							/* CSIHnPSCLx 	31-30	->0：プリスケーラ出力 CSIHBPLCK/2^0		*/
							/* CSIHnPSx	  	29-28   ->0b00: パリティ付加(なし）				*/
							/* CSIHnDLSx	27-24   ->0b1000: データ長8bit					*/
							/* CSIHnRCBx	19   	->0: 高優先度							*/
							/* CSIHnDIRx	18   	->0: MSBファースト						*/
							/* CSIHnCKPx	17   	->1: 									*/
							/* CSIHnDAPx	16   	->1: DATA/CLK位相						*/
							/* CSIHnIDLx	15   	->1: CSの強制アイドル挿入				*/
							/* CSIHnIDx		14-12   ->0: アイドル時間0.5シリアルクロック	*/
							/* CSIHnHDx		11-8	->0: ホールド時間0.5シリアルクロック	*/
							/* CSIHnINx		7-4		->0: データ遅延0						*/
							/* CSIHnIDx		4-0  	->0: セットアップ時間0.5シリアルクロック*/
							
	/* 端子設定	*/
	PORT.PCR4_0.UINT32		=	0x00000056;						/* SI端子入力				*/	

	PORT.PCR4_1.UINT32		=	0x00000066;						/* SO端子出力				*/
	PORT.PCR4_2.UINT32		=	0x00000046;						/* SC端子出力				*/
	
	PORT.PCR4_3.UINT32		=	0x00001000;						/* CS端子汎用出力(HI)		*/
	
	CSIH1.STCR0.UINT16 		= 0x0100;							/* FIFOクリア				*/
    CSIH1.CTL0.BIT.PWR 		= 1;        						/* permit CSIH1 			*/
 							
	/* 以下のレジスタアクセスは、不用意なアクセス禁止。	*/						
/*	CSIH1.MCTL2.UINT32	= 0x00000000;	*/
							/* BitName	 Bit     SetValue         			*/
							/* CSIHnBTST 31		->0: バッファ転送トリガ		*/
							/* 					　FIFO、ダイレクトモード時無効	*/
							/* CSIHnND  23-16  ->0: データ送信数設定		*/
							/*					　FIFO、ダイレクトモード時無効	*/
							/* CSIHnSOP 6-0 	 ->0: データポンタ選択		*/														
							/* 												*/
							
}

/*==============================================================*/
/*	CSIH1送信関数(EEPROM_IF)									*/
/*	引数： 	送信データ											*/
/*--------------------------------------------------------------*/
/*	備考														*/
/*	　　　　使用周辺機能										*/
/*					: CSIH1										*/
/*	注意！！ 													*/
/*																*/
/*==============================================================*/
//   2Byte 送信
u1		u1_CSIH1_EPIF_TX_2byte(s2 s2_tx_data)
{
	u4	u4_tx0w;

	if ( 0 == Get_TX_STATUS_CSIH1() )			// 送信中でない
	{
		u4_tx0w	=CSIH1_CS1 | ((s4)(s2_tx_data) & 0x0000FFFF);
		Set_TX_DATA_CSIH1(u4_tx0w);
		return (1);
	}
	else
	{
		return (0);
	}
}
//   1Byte 送信
u1		u1_CSIH1_EPIF_TX_1byte(s1 s1_tx_data)
{
	u4	u4_tx0w;

	if ( 0 == Get_TX_STATUS_CSIH1() )			// 送信中でない
	{
		u4_tx0w	=CSIH1_CS2 | ((s4)(s1_tx_data) & 0x000000FF);
		Set_TX_DATA_CSIH1(u4_tx0w);
		return (1);
	}
	else
	{
		return (0);
	}
}


/*==============================================================*/
/*	CSIH1受信信関数(EEPROM_IF)									*/
/*	引数： 受信値												*/
/*--------------------------------------------------------------*/
/*	備考														*/
/*	　　　　使用周辺機能										*/
/*					: CSIH1										*/
/*	注意！！ 													*/
/*																*/
/*==============================================================*/
//   2Byte 受信（CS1用）
u1		u1_CSIH1_EPIF_RX_2byte(s2 *s2_rx_data)
{
	
	if ( 1 == CSIH1.STR0.BIT.SRP )
	{
		*s2_rx_data = (u2)(Get_RX_DATA_CSIH1() & 0x0000FFFF );
		return (1);
	}
	else
	{
		return (0);
	}
}

//   1Byte 受信（CS1用）
u1		u1_CSIH1_EPIF_RX_1byte(s1 *s1_rx_data)
{
	
	if ( 1 == CSIH1.STR0.BIT.SRP )
	{
		*s1_rx_data = (u1)(Get_RX_DATA_CSIH1() & 0x000000FF );
		return (1);
	}
	else
	{
		return (0);
	}
}

/*==============================================================*/
/*	CSレベル制御												*/
/*	引数：	u1	u1_cs 　: CSデータ設定							*/
/*						  0: EEPROM CS InAct					*/
/*						  1: EEPROM CS Act						*/
/*																*/
/*	 戻り値：　なし												*/
/*--------------------------------------------------------------*/
/*	備考														*/
/*==============================================================*/
void	eprom_cs ( u1 u1_cs )
{
	__nop();__nop();__nop();__nop();__nop();
	__nop();__nop();__nop();__nop();__nop();
	
	PORT.PSR4.UINT32 = ( (1<<3) << 16 ) | ( (~u1_cs&0x1) << 3 ) ;
	
	__nop();__nop();__nop();__nop();__nop();
	__nop();__nop();__nop();__nop();__nop();
}
/*=============================================================*/


