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

#define	USE_P73_P74			(1)								/* 1: P73(RX)P74(TX)/ 0: P50(RX)P51(TX)			*/
																/* u1_mode_selが0の時に有効						*/
/*=============================================================*/

/*==============================================================*/
/*	SCI0初期化関数												*/
/*  戻り値：　エラー時: 1/ 正常時：　0							*/
/*	引数：														*/
/*			u4 u4_boud		: ボーレート(bps)					*/
/*			u1 u1_intlv		: 割り込みレベル					*/
/*			u1 u1_intcpu	: 2: PE2 /2以外:PE1					*/
/*			u1 u1_mode_sel  : 0:UART , 1: 3線シリアル（MASTER） */
/*--------------------------------------------------------------*/
/*	備考														*/
/*																*/
/*==============================================================*/
u1	sci0_init( u4 u4_boud, u1 u1_intlv , u1 u1_intcpu , u1 u1_mode_sel )
{
	int error;
	u1	u1_temp_1;
	
	error = 0;

	if ( 0 == u1_mode_sel )
	{
	    /* ---- SCI0設定 ---- */
    	SCI30.SMR.UINT8		= 0x00;									/* モードレジスタ初期化									*/
   		SCI30.SCR.UINT8		= 0x00;									/* コントロールレジスタ初期化							*/
   		SCI30.SCMR.UINT8	= 0x00;

		u1_temp_1 =  SCI30.RDR ;
   		while (  SCI30.SSR.UINT8 != 0x84 ) { SCI30.SSR.UINT8	= 0x84;}
   		
    
    	SCI30.SMR.UINT8		= 0x00;									/* マルチプロセット通信禁止、パリ無し、8ビット、ストップビット1	*/    
 		SCI30.SCMR.BIT.SDIR	= 0;									/* LSBファースト												*/    
    
    	SCI30.SEMR.BIT.BRME	 = 0;									/* ビットレートモジュレーションは使用しない						*/
    	SCI30.SEMR.BIT.MDDRS = 0;
    	SCI30.SEMR.BIT.ABCS	 = 1;									/* 	転送レート8倍が基本クロック									*/

		/* ボーレートの設定(for 40MHz) */
		switch(u4_boud)
		{
			case 1200:	SCI30.SMR.BIT.CKS = 2;	SCI30.BRR = 129 	;break;	/* 誤差 0.16%			*/
			case 2400:	SCI30.SMR.BIT.CKS = 2;	SCI30.BRR = 64		;break;	/* 誤差 0.16%			*/
			case 4800:  SCI30.SMR.BIT.CKS = 1;	SCI30.BRR = 129 	;break;	/* 誤差 0.16%			*/
			case 9600:	SCI30.SMR.BIT.CKS = 1;	SCI30.BRR = 64 		;break;	/* 誤差 0.16%			*/
			case 19200:	SCI30.SMR.BIT.CKS = 0;	SCI30.BRR = 129 	;break;	/* 誤差 0.16%			*/
			case 38400:	SCI30.SMR.BIT.CKS = 0;	SCI30.BRR = 64 		;break;	/* 誤差 0.16%			*/
			case 50000:	SCI30.SMR.BIT.CKS = 0;	SCI30.BRR = 49 		;break;	/* 誤差 0.0%			*/
			case 57600:	SCI30.SMR.BIT.CKS = 0;	SCI30.BRR = 42 		;break;	/* 誤差 0.937%			*/
			case 76800:	SCI30.SMR.BIT.CKS = 0;	SCI30.BRR = 32 		;break;	/* 誤差 -1.357%			*/
			case 115200:SCI31.SMR.BIT.CKS = 0;	SCI31.BRR = 21 		;break;	/* 誤差 -1.357%			*/		
			default:    error=1;									break;
		}
	
		if(0==error)
		{
			/* ---- 割り込み優先レベル設定 &　受信割り込み許可 ---- */
	
			if ( 2 == u1_intcpu )
			{
				/* 受信エラー	*/
				INTC2.EIBD203.BIT.GPID	= 1;							/* CPU2にバインド					*/
				INTC2.EIBD203.BIT.PEID	= 2;							/* CPU2にバインド					*/
				/* 受信割り込み	*/		
				INTC2.EIBD204.BIT.GPID	= 1;							/* CPU2にバインド					*/
				INTC2.EIBD204.BIT.PEID	= 2;							/* CPU2にバインド					*/		
			}
			else
			{
				/* 受信エラー	*/
				INTC2.EIBD203.BIT.GPID	= 0;							/* CPU1にバインド					*/
				INTC2.EIBD203.BIT.PEID	= 1;							/* CPU1にバインド					*/
				/* 受信割り込み	*/		
				INTC2.EIBD204.BIT.GPID	= 0;							/* CPU1にバインド					*/
				INTC2.EIBD204.BIT.PEID	= 1;							/* CPU1にバインド					*/					
			}
		
 	  		if( u1_intlv<16)
			{
				INTC2.EIC203.BIT.EIMK203	= 1 ;						/* 割り込みマスク					*/			
				INTC2.EIC204.BIT.EIMK204	= 1 ;						/* 割り込みマスク					*/			
				INTC2.EIC203.BIT.EIRF203	= 0 ;						/* 割り込みフラグクリア				*/
				INTC2.EIC204.BIT.EIRF204	= 0 ;						/* 割り込みフラグクリア				*/
			
				INTC2.EIC203.BIT.EIP203		= u1_intlv ;				/* 割り込みレベル設定				*/
				INTC2.EIC204.BIT.EIP204		= u1_intlv ;				/* 割り込みレベル設定				*/
					
				INTC2.EIC203.BIT.EITB203	= 1;						/* テーブル参照方式					*/
				INTC2.EIC204.BIT.EITB204	= 1;						/* テーブル参照方式					*/

				INTC2.EIC203.BIT.EIMK203	= 0 ;						/* 割り込みマスククリア				*/			
				INTC2.EIC204.BIT.EIMK204	= 0 ;						/* 割り込みマスククリア				*/		

				SCI30.SCR.BIT.RIE			= 1 ;						/* 受信割り込み要求許可				*/
			}
			else
			{
				INTC2.EIC203.BIT.EIMK203	= 1 ;						/* 割り込みマスク					*/
				INTC2.EIC204.BIT.EIMK204	= 1 ;						/* 割り込みマスク					*/
				INTC2.EIC203.BIT.EIP203		= 15 ;						/* 割り込みレベル最低				*/
				INTC2.EIC204.BIT.EIP204		= 15 ;						/* 割り込みレベル最低				*/			
			
				SCI30.SCR.BIT.RIE	 		= 0 ;						/* 受信割り込み要求禁止							*/
			}

			/* ポートの設定 */
		#if USE_P73_P74
			PORT.PCR7_3.UINT32 = 0x00000055 ;									/* RXD								*/
			PORT.PCR7_4.UINT32 = 0x00001045 ;									/* TXD								*/
		#else
			PORT.PCR5_0.UINT32 = 0x00000055 ;									/* RXD								*/
			PORT.PCR5_1.UINT32 = 0x00001045 ;									/* TXD								*/
		#endif
			return(0);
		}
		else
		{
			return(1);
		}
	}
	else 			// 3線シリアル（マスタ送信）
	{
   		SCI30.SMR.UINT8		= 0x00;									/* モードレジスタ初期化									*/
   		SCI30.SCR.UINT8		= 0x00;									/* コントロールレジスタ初期化							*/
 		SCI30.SCMR.UINT8	= 0x00;
 				
		SCI30.SMR.BIT.CM	= 1;									/* クロック同期											*/
		SCI30.SCR.BIT.CKE	= 0;									/* 0:マスタ	2:スレーブ									*/
		SCI30.SCMR.BIT.SDIR	= 1;									/* 1:MSBファースト/0:LSBファースト						*/
		SCI30.SCMR.BIT.SINV	= 0;									/* 0：送受信のデータ反転しない							*/

		/* ボーレートの設定(for 40MHz) */		
		switch ( u4_boud )
		{
			case 250000:	SCI31.BRR = 39; break; //250K
			case 500000:	SCI31.BRR = 19; break; //500K
			case 1000000:	SCI31.BRR = 9;	break; //1M
			case 2000000:	SCI31.BRR = 4;	break; //2M
			default:		error=1;		break ;
		}
		if(0==error)
		{
		/* ---- 割り込み優先レベル設定 &　TXI（送信データエンプティ）割り込み許可 ---- */
			if ( 2 == u1_intcpu )
			{
				/* 送信完了割り込み(TXI)	*/
				INTC2.EIBD205.BIT.GPID	= 1;							/* CPU2にバインド					*/
				INTC2.EIBD205.BIT.PEID	= 2;							/* CPU2にバインド					*/
			}
			else
			{
				/* 送信完了割り込み(TXI)	*/
				INTC2.EIBD205.BIT.GPID	= 0;							/* CPU1にバインド					*/
				INTC2.EIBD205.BIT.PEID	= 1;							/* CPU1にバインド					*/
			}
	  		if( u1_intlv<16)
			{
				INTC2.EIC205.BIT.EIMK205	= 1 ;						/* 割り込みマスク					*/			
				INTC2.EIC205.BIT.EIRF205	= 0 ;						/* 割り込みフラグクリア				*/
				INTC2.EIC205.BIT.EIP205		= u1_intlv ;				/* 割り込みレベル設定				*/
				INTC2.EIC205.BIT.EITB205	= 1;						/* テーブル参照方式					*/
				INTC2.EIC205.BIT.EIMK205	= 0 ;						/* 割り込みマスククリア				*/			
				SCI30.SCR.BIT.TIE			= 1 ;						/* 送信データエンプティ割り込み要求許可	*/
			}
			else
			{
				INTC2.EIC205.BIT.EIMK205	= 1 ;						/* 割り込みマスク					*/
				INTC2.EIC205.BIT.EIP205		= 15 ;						/* 割り込みレベル最低				*/
				SCI30.SCR.BIT.TIE	 		= 0 ;						/* 送信データエンプティ割り込み要求許可	*/
			}
			
			/* ポートの設定 */
			PORT.PCR5_0.UINT32 = 0x00000055 ;							/* SI								*/
			PORT.PCR5_1.UINT32 = 0x00000045 ;							/* SO								*/
			PORT.PCR5_2.UINT32 = 0x00000045 ;							/* SCK								*/
			return(0);
		}
		else
		{
			return(1);		
		}		
		
	}
}
/*==============================================================*/
/*	SCI0通信開始関数											*/
/*--------------------------------------------------------------*/
/*	備考														*/
/*	　　　　送受信開始											*/
/*==============================================================*/
void	sci0_start(void)
{
	SCI30.SCR.UINT8	|= 0x30;
//	SCI30.SCR.BIT.RE  = 1;										/* 受信許可										*/
//	SCI30.SCR.BIT.TE  = 1;										/* 送信許可										*/
}	
/*==============================================================*/
/*	SCI1通信停止関数											*/
/*--------------------------------------------------------------*/
/*	備考														*/
/*	　　　　送受信停止											*/
/*==============================================================*/
void	sci0_stop(void)
{
	SCI30.SCR.BIT.RE  = 0;										/* 受信禁止 									*/
	SCI30.SCR.BIT.TE  = 0;										/* 送信禁止 									*/
}


/*=============================================================*/
/*					CSIH0定数定義							　 */
/*=============================================================*/
#define		Get_SO_STATUS_SCI30()			(!SCI30.SSR.BIT.TEND)
#define		Set_SO_DATA_SCI30(u1_DATA)		(SCI30.TDR	= u1_DATA)
#define		Get_SI_STATUS_SCI30()			(SCI30.SSR.BIT.RDRF)
#define		Get_SI_DATA_SCI30()				(SCI30.RDR)
/*=============================================================*/

/*==============================================================*/
/*	SCI30送信関数												*/
/*	引数： 	送信データ											*/
/*--------------------------------------------------------------*/
/*	備考														*/
/*	　　　　使用周辺機能										*/
/*					: SCI30										*/
/*	注意！！ 													*/
/*																*/
/*==============================================================*/
// 1Byte　送信
u1	u1_SO30_1byte(u1 u1_tx_data)
{
	u4	u4_tx0w;
	
	if ( 0 ==Get_SO_STATUS_SCI30() )			// 送信中でない
	{
		Set_SO_DATA_SCI30(u1_tx_data);
		return (1);
	}
	else
	{
		return (0);
	}
}

/*==============================================================*/
/*	SCI30受信関数												*/
/*	引数： 受信値ポインタ										*/
/*--------------------------------------------------------------*/
/*	備考														*/
/*	　　　　使用周辺機能										*/
/*					: SCI30										*/
/*	注意！！ 													*/
/*																*/
/*==============================================================*/
u1		u1_SI30_1byte(u1 *u1_rx_data)
{
	
	if ( 1 == Get_SI_STATUS_SCI30() )
	{
		*u1_rx_data = Get_SI_DATA_SCI30();
		return (1);
	}
	else
	{
		return (0);
	}
}
