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

/*==============================================================*/
/*	SCI1初期化関数												*/
/*  戻り値：　エラー時: 1/ 正常時：　0							*/
/*	引数：														*/
/*			u4 u4_boud		: ボーレート(bps)					*/
/*			u1 u1_intlv		: 割り込みレベル					*/
/*			u1 u1_intcpu	: 2: PE2 /2以外:PE1					*/
/*--------------------------------------------------------------*/
/*	備考														*/
/*																*/
/*==============================================================*/
u1	sci1_init( u4 u4_boud, u1 u1_intlv , u1 u1_intcpu)
{
	int error;
	
	error = 0;

    /* ---- SCI0設定 ---- */
    SCI31.SMR.UINT8		= 0x00;									/* モードレジスタ初期化									*/
    SCI31.SCR.UINT8		= 0x00;									/* コントロールレジスタ初期化							*/
    
    SCI31.SMR.UINT8		= 0x00;									/* マルチプロセット通信禁止、パリ無し、8ビット、ストップビット1	*/    
 	SCI31.SCMR.BIT.SDIR	= 0;									/* LSBファースト												*/    
    
    SCI31.SEMR.BIT.BRME	 = 0;									/* ビットレートモジュレーションは使用しない						*/
    SCI31.SEMR.BIT.MDDRS = 0;
    SCI31.SEMR.BIT.ABCS	 = 1;									/* 	転送レート8倍が基本クロック									*/

	/* ボーレートの設定(for 40MHz) */
	switch(u4_boud)
	{
		case 1200:	SCI31.SMR.BIT.CKS = 2;	SCI31.BRR = 129 	;break;	/* 誤差 0.16%			*/
		case 2400:	SCI31.SMR.BIT.CKS = 2;	SCI31.BRR = 64		;break;	/* 誤差 0.16%			*/
		case 4800:  SCI31.SMR.BIT.CKS = 1;	SCI31.BRR = 129 	;break;	/* 誤差 0.16%			*/
		case 9600:	SCI31.SMR.BIT.CKS = 1;	SCI31.BRR = 64 		;break;	/* 誤差 0.16%			*/
		case 19200:	SCI31.SMR.BIT.CKS = 0;	SCI31.BRR = 129 	;break;	/* 誤差 0.16%			*/
		case 38400:	SCI31.SMR.BIT.CKS = 0;	SCI31.BRR = 64 		;break;	/* 誤差 0.16%			*/
		case 50000:	SCI31.SMR.BIT.CKS = 0;	SCI31.BRR = 49 		;break;	/* 誤差 0.0%			*/
		case 57600:	SCI31.SMR.BIT.CKS = 0;	SCI31.BRR = 42 		;break;	/* 誤差 0.937%			*/
		case 76800:	SCI31.SMR.BIT.CKS = 0;	SCI31.BRR = 32 		;break;	/* 誤差 -1.357%			*/
		case 115200:SCI31.SMR.BIT.CKS = 0;	SCI31.BRR = 21 		;break;	/* 誤差 -1.357%			*/		
		default:    error=1;									break;
	}
	
	if(0==error)
	{
		/* ---- 割り込み優先レベル設定 &　受信割り込み許可 ---- */
		if ( 2 == u1_intcpu )
		{
			/* 受信エラー	*/
			INTC2.EIBD207.BIT.GPID	= 1;							/* CPU2にバインド					*/
			INTC2.EIBD207.BIT.PEID	= 2;							/* CPU2にバインド					*/
			/* 受信割り込み	*/		
			INTC2.EIBD208.BIT.GPID	= 1;							/* CPU2にバインド					*/
			INTC2.EIBD208.BIT.PEID	= 2;							/* CPU2にバインド					*/		
		}
		else
		{
			INTC2.EIBD207.BIT.GPID	= 0;							/* CPU1にバインド					*/
			INTC2.EIBD207.BIT.PEID	= 1;							/* CPU1にバインド					*/
			/* 受信割り込み	*/		
			INTC2.EIBD208.BIT.GPID	= 0;							/* CPU1にバインド					*/
			INTC2.EIBD208.BIT.PEID	= 1;							/* CPU1にバインド					*/					
		}
   		if( u1_intlv<16)
		{
			INTC2.EIC207.BIT.EIMK207	= 1 ;						/* 割り込みマスク					*/			
			INTC2.EIC208.BIT.EIMK208	= 1 ;						/* 割り込みマスク					*/			
			INTC2.EIC207.BIT.EIRF207	= 0 ;						/* 割り込みフラグクリア				*/
			INTC2.EIC208.BIT.EIRF208	= 0 ;						/* 割り込みフラグクリア				*/
			
			INTC2.EIC207.BIT.EIP207		= u1_intlv ;				/* 割り込みレベル設定				*/
			INTC2.EIC208.BIT.EIP208		= u1_intlv ;				/* 割り込みレベル設定				*/
					
			INTC2.EIC207.BIT.EITB207	= 1;						/* テーブル参照方式					*/
			INTC2.EIC208.BIT.EITB208	= 1;						/* テーブル参照方式					*/

			INTC2.EIC207.BIT.EIMK207	= 0 ;						/* 割り込みマスククリア				*/			
			INTC2.EIC208.BIT.EIMK208	= 0 ;						/* 割り込みマスククリア				*/		


			SCI31.SCR.BIT.RIE	 		= 1 ;						/* 受信割り込み要求許可				*/
		}
		else
		{
			INTC2.EIC207.BIT.EIMK207	= 1 ;						/* 割り込みマスク					*/
			INTC2.EIC208.BIT.EIMK208	= 1 ;						/* 割り込みマスク					*/
			INTC2.EIC207.BIT.EIP207		= 15 ;						/* 割り込みレベル最低				*/
			INTC2.EIC208.BIT.EIP208		= 15 ;						/* 割り込みレベル最低				*/			
			
			SCI31.SCR.BIT.RIE			= 0 ;						/* 受信割り込み要求禁止							*/
		}

		/* ポートの設定 */
		PORT.PCR5_3.UINT32 = 0x00000055 ;									/* RXD								*/
		PORT.PCR5_4.UINT32 = 0x00000045 ;									/* TXD								*/
		
		return(0);
	}
	else
	{
		return(1);
	}		
}
/*==============================================================*/
/*	SCI1通信開始関数											*/
/*--------------------------------------------------------------*/
/*	備考														*/
/*	　　　　送受信開始											*/
/*==============================================================*/
void	sci1_start(void)
{
	SCI31.SCR.BIT.RE  = 1;										/* 受信許可										*/
	SCI31.SCR.BIT.TE  = 1;										/* 送信許可										*/
}	
/*==============================================================*/
/*	SCI1通信停止関数											*/
/*--------------------------------------------------------------*/
/*	備考														*/
/*	　　　　送受信停止											*/
/*==============================================================*/
void	sci1_stop(void)
{
	SCI31.SCR.BIT.RE  = 0;										/* 受信禁止 											*/
	SCI31.SCR.BIT.TE  = 0;										/* 送信禁止 											*/
}
