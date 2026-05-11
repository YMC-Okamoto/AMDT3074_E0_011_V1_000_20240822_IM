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
#include	<string.h>											/* 標準文字列ライブラリ							*/
#include "./io_FCANlib.h"										/* FCANデバイスドライバ用ヘッダファイル			*/
/*=============================================================*/

/*=============================================================*/
/* 					範囲設定の定義							   */
/*=============================================================*/
#define	CAN_BRP_MIN			(0)
#define 	CAN_BRP_MAX			(1023)
#define	CAN_TSEG1_MIN		(3)
#define 	CAN_TSEG1_MAX		(15)
#define	CAN_TSEG2_MIN		(1)
#define 	CAN_TSEG2_MAX		(7)
#define	CAN_SJW_MIN			(0)
#define 	CAN_SJW_MAX			(3)

#define 	CAN_MBOX_MAX		(15)
#define 	CAN_ID_MAX			(0x1FFFFFFF)						/* 拡張ID										*/
#define	CAN_EXTEND_USE		(1)									/* 拡張ID/標準ID切り替え0:標準 1:拡張ID			*/
#define 	CAN_DLC_MAX			(8)

/*=============================================================*/
/* 					 define関数定義					           */
/*=============================================================*/
#define	u1_valcheck(a,min,max)	( ( a < min )?(CAN_NOT_OK):( ( a > max )?(CAN_NOT_OK):(CAN_OK) ) )
#define 	RESET_CAN_SW_TMR		( can_soft_tm_cnt 	= 0x2000 );

/*=============================================================*/
/* 						制御定数定義					  	   */
/*=============================================================*/
/* 				関数戻り値			 				*/
#define     CAN_OK               	(u4)0x00000000	/* 正常終了					*/
#define     CAN_NOT_OK            	(u4)0x00000001	/* 異常終了					*/
#define     CAN_BAD_CH_NR         	(u4)0x00000002	/* モジュールNO範囲外		*/

/* 			 タイムアウト判定フラグ 				*/
//#define     CAN_SW_WAKEUP_ERR     	(u4)0x00000100	/* ウェイクアップエラー		*/
#define     CAN_SW_RST_ERR          (u4)0x00000400	/* リセット（初期）エラー	*/

#define     CAN_SW_SET_TX_TMO 	    (u4)0x00001000	/* 送信待ちタイムアウト		*/
#define     CAN_SW_SET_RX_TMO   	(u4)0x00002000	/* 受信待ちタイムアウト		*/

/*			ステータスエラー確認					*/
#define     CAN_RST_FLG_ERR         (u4)0x00001000	/* 初期化時FLGエラー		*/

/*			送受信チェック							*/
#define     CAN_NO_SENTDATA       	(u4)0x00000010	/* 送信未完了				*/
#define		CAN_NO_RECEIVEDATA		(u4)0x00000020	/* 受信データなし			*/
#define		CAN_INVALID_TMO			(u4)0x00000040	/* 受信データあり、更新タイムアウト	*/
#define     CAN_MSGLOST       	    (u4)0x00000080	/* メッセージLOST			*/


#define     CAN_STATUS_ERROR_ACTIVE   (u4)0x0000001	/* エラーあり				*/
#define     CAN_STATUS_ERROR_PASSIVE  (u4)0x0000002	/* エラーパッシブ状態		*/
#define     CAN_STATUS_BUSOFF         (u4)0x0000004 /* バスOFF状態				*/
/*=============================================================*/


/*=============================================================*/
/* 					構造体/共用体の定義						   */
/*=============================================================*/
can_st_chconf	can0 , can1 , can2, can3 ;
/*=============================================================*/

/*=============================================================*/
/* 					その他の定義							   */
/*=============================================================*/
unsigned int	rx_mbox_no			 ;
unsigned int 	rx_mbox_id[4][32]  	 ;
unsigned int 	rx_mbox_dlc[4][32] 	 ;
unsigned int 	rx_mbox_length[4][32];
unsigned int 	rx_mbox_extened[4][32];
unsigned int 	rx_mbox_cnt[4] ;

unsigned int	tx_mbox_no			 ;
unsigned int 	tx_mbox_id[4][32]  	 ;
unsigned int 	tx_mbox_dlc[4][32] 	 ;
unsigned int 	tx_mbox_length[4][32];
unsigned int 	tx_mbox_extened[4][32];
unsigned int 	tx_mbox_cnt[4] ;

/*=============================================================*/
/* 						IOレジスタ定義					  	   */
/*=============================================================*/
#define	RSCAN0_START_ADDR ( 0xffd00000 )

#define RSCAN0_REG32(x)  	(*((volatile unsigned long  *)(RSCAN0_START_ADDR + (x))))
#define RSCAN0_REG8(x) 	(*((volatile unsigned char  *)(RSCAN0_START_ADDR + (x))))

#define RSCAN0GAFLID(x)	RSCAN0_REG32(0x0500 + (0x10 * (x)))
#define RSCAN0GAFLM(x)		RSCAN0_REG32(0x0504 + (0x10 * (x)))
#define RSCAN0GAFLP0(x)	RSCAN0_REG32(0x0508 + (0x10 * (x)))
#define RSCAN0GAFLP1(x)	RSCAN0_REG32(0x050C + (0x10 * (x)))
#define	RSCAN0RFCC(x)	RSCAN0_REG32(0x00B8 + (0x04 * (x)))
#define RSCAN0CFCC(x)		RSCAN0_REG32(0x0118 + (0x04 * (x)))

#define RSCAN0TMC(x,y)   	RSCAN0_REG8(0x0250 + (0x10 * (x) + 0x01 * (y)))
#define RSCAN0TMSTS(x,y) 	RSCAN0_REG8(0x02D0 + (0x10 * (x) + 0x01 * (y)))
#define RSCAN0TMID(x,y)  	RSCAN0_REG32(0x1000 + (0x100 * (x) + 0x10 * (y)))
#define RSCAN0TMPTR(x,y) 	RSCAN0_REG32(0x1004 + (0x100 * (x) + 0x10 * (y)))
#define RSCAN0TMDF0(x,y) 	RSCAN0_REG32(0x1008 + (0x100 * (x) + 0x10 * (y)))
#define RSCAN0TMDF1(x,y) 	RSCAN0_REG32(0x100C + (0x100 * (x) + 0x10 * (y)))

#define RSCAN0RFSTS(x)		RSCAN0_REG32(0x00D8 + (0x04 * (x)))
#define RSCAN0RFPCTR(x)	RSCAN0_REG32(0x00F8 + (0x04 * (x)))
#define RSCAN0RFID(x)		RSCAN0_REG32(0x0E00 + (0x10 * (x)))
#define RSCAN0RFPTR(x)		RSCAN0_REG32(0x0E04 + (0x10 * (x)))
#define RSCAN0RFDF0(x)		RSCAN0_REG32(0x0E08 + (0x10 * (x)))
#define RSCAN0RFDF1(x)		RSCAN0_REG32(0x0E0C + (0x10 * (x)))

#define RSCAN0STS(x)		RSCAN0_REG32(0x0008 + (0x10 * (x)))
#define RSCAN0ERFL(x)		RSCAN0_REG32(0x000C + (0x10 * (x)))

/*=============================================================*/

/*=============================================================*/
/* 					プロトタイプ宣言					  	   */
/*=============================================================*/
u4	can_init( u1 u1_use_ch ) ;
u4	can_setup_rx_mbox(  u4 u4_ch, can_st_mbox *ptr_MBOX )  ;
u4	can0_init(  u4 u4_Kbaud, u4 u4_tseg1, u4 u4_tseg2, u4 u4_sjw ) ;
u4	can1_init(  u4 u4_Kbaud, u4 u4_tseg1, u4 u4_tseg2, u4 u4_sjw ) ;
u4	can2_init(  u4 u4_Kbaud, u4 u4_tseg1, u4 u4_tseg2, u4 u4_sjw ) ;
u4	can3_init(  u4 u4_Kbaud, u4 u4_tseg1, u4 u4_tseg2, u4 u4_sjw ) ;
/*=============================================================*/


/*==============================================================*/
/*	FCAN モジュール初期化										*/
/*	引数：														*/
/*			u1_use_ch	:	FCAN0 使用CHをビット単位で選択		*/
/*					Bit0: CH0 使用								*/
/*					Bit1: CH1 使用								*/
/*					Bit2: CH2 使用								*/
/*					Bit3: CH3 使用								*/
/*  戻り値：													*/
/*--------------------------------------------------------------*/
/*	備考														*/
/*	　　　　使用周辺機能										*/
/*					: RS-CAN0									*/
/*--------------------------------------------------------------*/
u4	can_init( u1 u1_use_ch )
{
	u4	can_soft_tm_cnt;
	u4	status;

	status		= CAN_OK;

	/* CAN用RAM初期化待ち	*/
    while ( 0 != RSCAN0.GSTS.BIT.GRAMINIT )
    {
        __nop();
    }

	/* 範囲チェック		*/
	/* CH設定範囲チェック	*/
	if ( ( 0 == u1_use_ch ) ||  ( u1_use_ch > 15 ) )
	{
		status	|= CAN_BAD_CH_NR;
		return(status );	
	}
	else{}

	if ( 1== ( u1_use_ch & 0x01 ) )
	{
		status		|= u1_valcheck( can0.u4_tseg1	, CAN_TSEG1_MIN	, CAN_TSEG1_MAX	);
		status		|= u1_valcheck( can0.u4_tseg2	, CAN_TSEG2_MIN	, CAN_TSEG2_MAX	);
		status		|= u1_valcheck( can0.u4_sjw		, CAN_SJW_MIN	, CAN_SJW_MAX	);	
	}
	else{}
	if( 2 == ( u1_use_ch & 0x02 ) )
	{
		status		|= u1_valcheck( can1.u4_tseg1	, CAN_TSEG1_MIN	, CAN_TSEG1_MAX	);
		status		|= u1_valcheck( can1.u4_tseg2	, CAN_TSEG2_MIN	, CAN_TSEG2_MAX	);
		status		|= u1_valcheck( can1.u4_sjw		, CAN_SJW_MIN	, CAN_SJW_MAX	);	
	}
	else{}
	if( 4 == ( u1_use_ch & 0x04 ) )
	{
		status		|= u1_valcheck( can2.u4_tseg1	, CAN_TSEG1_MIN	, CAN_TSEG1_MAX	);
		status		|= u1_valcheck( can2.u4_tseg2	, CAN_TSEG2_MIN	, CAN_TSEG2_MAX	);
		status		|= u1_valcheck( can2.u4_sjw		, CAN_SJW_MIN	, CAN_SJW_MAX	);	
	}
	else{}
    if( 8== ( u1_use_ch & 0x08 ) )
	{
		status		|= u1_valcheck( can3.u4_tseg1	, CAN_TSEG1_MIN	, CAN_TSEG1_MAX	);
		status		|= u1_valcheck( can3.u4_tseg2	, CAN_TSEG2_MIN	, CAN_TSEG2_MAX	);
		status		|= u1_valcheck( can3.u4_sjw		, CAN_SJW_MIN	, CAN_SJW_MAX	);	
	}	
	else{}

	if ( 0 != status )
	{
		return(status );
	}

    /* グローバルリセットモード設定	*/
	RSCAN0.GCTR.BIT.GSLPR	= 0;								/* STOPモード解除/リセットモード移行		*/
	RESET_CAN_SW_TMR ;											/* ソフトタイマリセット		*/	 
	while ( ( RSCAN0.GSTS.BIT.GSLPSTS ) && ( !RSCAN0.GSTS.BIT.GRSTSTS ) && ( --can_soft_tm_cnt != 0 ) )
	{
		__nop();
	}
	if ( can_soft_tm_cnt == 0 )
	{
		status |= CAN_SW_RST_ERR;
	}

	/* チャネルリセットモード設定			 */	
	if ( 1== ( u1_use_ch & 0x01 ) )
	{
		RSCAN0.C0CTR.BIT.CSLPR = 0;									/* リセットモード			*/
		RESET_CAN_SW_TMR ;											/* ソフトタイマリセット		*/	 
		while ( ( RSCAN0.C0STS.BIT.CSLPSTS ) && ( !RSCAN0.C0STS.BIT.CRSTSTS ) && ( --can_soft_tm_cnt != 0 ) )
		{
			__nop();
		}	
		if ( can_soft_tm_cnt == 0 )
		{
			status |= CAN_SW_RST_ERR;
		}
		else{}
	}
	else{}

	if ( 2== ( u1_use_ch & 0x02 ) )
	{		
		RSCAN0.C1CTR.BIT.CSLPR = 0;									/* STOPモード			*/
		RESET_CAN_SW_TMR ;											/* ソフトタイマリセット		*/	 
		while ( ( RSCAN0.C1STS.BIT.CSLPSTS ) && ( !RSCAN0.C1STS.BIT.CRSTSTS ) && ( --can_soft_tm_cnt != 0 ) )
		{
			__nop();
		}
		if ( can_soft_tm_cnt == 0 )
		{
			status |= CAN_SW_RST_ERR;
		}
		else{}
	}
	else{}
	
	if ( 4== ( u1_use_ch & 0x04 ) )
	{		
		RSCAN0.C2CTR.BIT.CSLPR = 0;									/* STOPモード			*/
		RESET_CAN_SW_TMR ;											/* ソフトタイマリセット		*/	 
		while ( ( RSCAN0.C2STS.BIT.CSLPSTS ) && ( !RSCAN0.C2STS.BIT.CRSTSTS ) && ( --can_soft_tm_cnt != 0 ) )
		{
			__nop();
		}
		if ( can_soft_tm_cnt == 0 )
		{
			status |= CAN_SW_RST_ERR;
		}
		else{}
	}
	else{}

	if ( 8 == ( u1_use_ch & 0x08 ) )
	{		
		RSCAN0.C3CTR.BIT.CSLPR = 0;									/* STOPモード			*/
		RESET_CAN_SW_TMR ;											/* ソフトタイマリセット		*/	 
		while ( ( RSCAN0.C3STS.BIT.CSLPSTS ) && ( !RSCAN0.C3STS.BIT.CRSTSTS ) && ( --can_soft_tm_cnt != 0 ) )
		{
			__nop();
		}
		if ( can_soft_tm_cnt == 0 )
		{
			status |= CAN_SW_RST_ERR;
		}
		else{}
	}
	else{}


	/* グローバルConfig設定	*/
	RSCAN0.GCFG.BIT.ITRCP	= 1;					/* インターバルプリスケーCLKC_LSB/2　0は設定禁止		*/
	RSCAN0.GCFG.BIT.TSBTCS	= 0;					/* タイムスタンプクロック源　チャネル0					*/
	RSCAN0.GCFG.BIT.TSSS	= 0;					/* PCLK/2 注：TSBTCS=0の時のみ設定可能					*/
	RSCAN0.GCFG.BIT.TSP		= 0;					/* タイムスタンプクロック源分周なし						*/
	RSCAN0.GCFG.BIT.DCS		= 0;					/* CLKC_LSB選択											*/
	RSCAN0.GCFG.BIT.MME		= 0;					/* ミラー機能禁止										*/
	RSCAN0.GCFG.BIT.DRE		= 0;					/* DLC値置換禁止										*/
	RSCAN0.GCFG.BIT.DCE		= 0;					/* DLCチェック禁止										*/
	RSCAN0.GCFG.BIT.TPRI	= 0;					/* ID優先												*/

	/* チャネルConfig設定	*/
	if ( 1== ( u1_use_ch & 0x01 ) )
	{
		/* BRP，TSEG1, TSEG2， SJW設定	 */
		RSCAN0.C0CFG.BIT.BRP 	= can0.u4_brp_prs	;
		RSCAN0.C0CFG.BIT.TSEG1 	= can0.u4_tseg1	;
		RSCAN0.C0CFG.BIT.TSEG2 	= can0.u4_tseg2	;
		RSCAN0.C0CFG.BIT.SJW 	= can0.u4_sjw	;

		/* チャネルコントロールレジスタ設定	(割り込み許可は別設定）*/
		RSCAN0.C0CTR.BIT.BOM		= 0;								/* バスオフ復帰：ノーマルモードISO1189801準拠		*/
		RSCAN0.C0CTR.BIT.ERRD		= 1;								/* 全てのエラー情報を表示							*/
	//	RSCAN0.C0CTR.BIT.ERRD		= 0;								/* 最初のエラー情報を表示							*/

		/* エラーフラグ確認(チャネル） */
		if ( 0 != RSCAN0.C0ERFL.UINT32 )
		{
			status |= CAN_RST_FLG_ERR;
		}
		else{}	
	}
	else{}
		
	if ( 2== ( u1_use_ch & 0x02 ) )
	{
		/* ボーレート設定				 */
		/* BRP，TSEG1, TSEG2， SJW設定	 */
		RSCAN0.C1CFG.BIT.BRP 	= can1.u4_brp_prs	;
		RSCAN0.C1CFG.BIT.TSEG1 	= can1.u4_tseg1	;
		RSCAN0.C1CFG.BIT.TSEG2 	= can1.u4_tseg2	;
		RSCAN0.C1CFG.BIT.SJW 	= can1.u4_sjw	;

		/* チャネルコントロールレジスタ設定	(割り込み許可は別設定）*/
		RSCAN0.C1CTR.BIT.BOM		= 0;								/* バスオフ復帰：ノーマルモードISO1189801準拠		*/
		RSCAN0.C1CTR.BIT.ERRD		= 1;								/* 全てのエラー情報を表示							*/
	//	RSCAN0.C1CTR.BIT.ERRD		= 0;								/* 最初のエラー情報を表示							*/
	
		/* エラーフラグ確認(チャネル） */
		if ( 0 != RSCAN0.C1ERFL.UINT32 )
		{
			status |= CAN_RST_FLG_ERR;
		}
		else{}		
	}
	else{}
	
	if ( 4== ( u1_use_ch & 0x04 ) )
	{
		/* ボーレート設定				 */
		/* BRP，TSEG1, TSEG2， SJW設定	 */
		RSCAN0.C2CFG.BIT.BRP 	= can2.u4_brp_prs	;
		RSCAN0.C2CFG.BIT.TSEG1 	= can2.u4_tseg1	;
		RSCAN0.C2CFG.BIT.TSEG2 	= can2.u4_tseg2	;
		RSCAN0.C2CFG.BIT.SJW 	= can2.u4_sjw	;

		/* チャネルコントロールレジスタ設定	(割り込み許可は別設定）*/
		RSCAN0.C2CTR.BIT.BOM		= 0;								/* バスオフ復帰：ノーマルモードISO1189801準拠		*/
		RSCAN0.C2CTR.BIT.ERRD		= 1;								/* 全てのエラー情報を表示							*/
	//	RSCAN0.C2CTR.BIT.ERRD		= 0;								/* 最初のエラー情報を表示							*/
	
		/* エラーフラグ確認(チャネル） */
		if ( 0 != RSCAN0.C2ERFL.UINT32 )
		{
			status |= CAN_RST_FLG_ERR;
		}
		else{}		
	}
	else{}
	
	if ( 8 == ( u1_use_ch & 0x08 ) )
	{
		/* ボーレート設定				 */
		/* BRP，TSEG1, TSEG2， SJW設定	 */
		RSCAN0.C3CFG.BIT.BRP 	= can3.u4_brp_prs	;
		RSCAN0.C3CFG.BIT.TSEG1 	= can3.u4_tseg1	;
		RSCAN0.C3CFG.BIT.TSEG2 	= can3.u4_tseg2	;
		RSCAN0.C3CFG.BIT.SJW 	= can3.u4_sjw	;

		/* チャネルコントロールレジスタ設定	(割り込み許可は別設定）*/
		RSCAN0.C3CTR.BIT.BOM		= 0;								/* バスオフ復帰：ノーマルモードISO1189801準拠		*/
		RSCAN0.C3CTR.BIT.ERRD		= 1;								/* 全てのエラー情報を表示							*/
	//	RSCAN0.C3CTR.BIT.ERRD		= 0;								/* 最初のエラー情報を表示							*/
	
		/* エラーフラグ確認(チャネル） */
		if ( 0 != RSCAN0.C2ERFL.UINT32 )
		{
			status |= CAN_RST_FLG_ERR;
		}
		else{}		
	}
	else{}


	/* エラーフラグ確認(グローバル）	*/
	if ( 0 != RSCAN0.GERFL.UINT32 )
	{
		status |= CAN_RST_FLG_ERR;
	}

	/* 受信ルール設定	*/
	/* 各CH16個固定					*/
	RSCAN0.GAFLCFG0.BIT.RNC0 = 16 ;
	RSCAN0.GAFLCFG0.BIT.RNC1 = 16 ;
	RSCAN0.GAFLCFG0.BIT.RNC2 = 16 ;
	RSCAN0.GAFLCFG0.BIT.RNC3 = 16 ;
	
	if ( 1== ( u1_use_ch & 0x01 ) )
	{
		RSCAN0.GAFLECTR.BIT.AFLDAE	= 1;	/* 受信テーブル書き込み許可		*/
		RSCAN0.GAFLECTR.BIT.AFLPN	= 0;	/* 受信テーブルページを設定	*/
		{
			unsigned int mbox_no ;
			for( mbox_no = 0; mbox_no < 15; mbox_no++ )
			{	
				if ( 0 == rx_mbox_extened[0][mbox_no] )
				{
					__nop();
					RSCAN0GAFLID(mbox_no)	 = 0x00000000 | rx_mbox_id[0][mbox_no] ;		/* 標準ID、データフレーム受信						*/
					RSCAN0GAFLM(mbox_no)	 = 0xdfffffff ;									/* 標準ID、データフレーム、ID全て比較する。			*/
					RSCAN0GAFLP0(mbox_no) 	 = 0x00008000 | ( mbox_no << 8 ) ;
																							/* DLCチェクしない、ラベルなし、受信バッファ使用	*/
																							/* メッセージバッファは、mbox_noと同じ				*/
					RSCAN0GAFLP1(mbox_no) 	 = (0x1) ;										/* 受信FIFOバッファzを選択する						*/
																							/* チャネルNOと同じ									*/
				}
				else
				{
					__nop();
					RSCAN0GAFLID(mbox_no)	 = 0x80000000 | rx_mbox_id[0][mbox_no] ;		/* 拡張ID、データフレーム受信						*/
					RSCAN0GAFLM(mbox_no)	 = 0xdfffffff ;									/* 拡張ID、データフレーム、ID全て比較する。			*/
					RSCAN0GAFLP0(mbox_no) 	 = 0x00008000 | ( mbox_no << 8 ) ;
																							/* DLCチェクしない、ラベルなし、受信バッファ使用	*/
																							/* メッセージバッファは、mbox_noと同じ				*/
					RSCAN0GAFLP1(mbox_no) 	 = (0x1) ;										/* 受信FIFOバッファzを選択する						*/
																							/* チャネルNOと同じ									*/												
				}
			}
		}
		RSCAN0.GAFLECTR.BIT.AFLDAE	=	0;				/*	受信テーブル書込み禁止	*/		
	}
	else{}

	if ( 2== ( u1_use_ch & 0x02 ) )
	{
		RSCAN0.GAFLECTR.BIT.AFLDAE	= 1;	/* 受信テーブル書き込み許可		*/
		RSCAN0.GAFLECTR.BIT.AFLPN	= 1;	/* 受信テーブルページを設定	*/
		{
			unsigned int mbox_no ;
			for( mbox_no = 0; mbox_no < 15; mbox_no++ )
			{	
				if ( 0 == rx_mbox_extened[1][mbox_no] )
				{
					RSCAN0GAFLID(mbox_no)	 = 0x00000000 | rx_mbox_id[1][mbox_no] ;		/* 標準ID、データフレーム受信						*/
					RSCAN0GAFLM(mbox_no)	 = 0xdfffffff ;									/* 標準ID、データフレーム、ID全て比較する。			*/
					RSCAN0GAFLP0(mbox_no) 	 = 0x00008000 | ( mbox_no << 8 ) ;
																							/* DLCチェクしない、ラベルなし、受信バッファ使用	*/
																							/* メッセージバッファは、mbox_noと同じ				*/
					RSCAN0GAFLP1(mbox_no) 	 = (0x1) << 1;									/* 受信FIFOバッファzを選択する						*/
																							/* チャネルNOと同じ									*/
				}
				else
				{
					RSCAN0GAFLID(mbox_no)	 = 0x80000000 | rx_mbox_id[1][mbox_no] ;		/* 拡張ID、データフレーム受信						*/
					RSCAN0GAFLM(mbox_no)	 = 0xdfffffff ;									/* 拡張ID、データフレーム、ID全て比較する。			*/
					RSCAN0GAFLP0(mbox_no) 	 = 0x00008000 | ( mbox_no << 8 ) ;
																							/* DLCチェクしない、ラベルなし、受信バッファ使用	*/
																							/* メッセージバッファは、mbox_noと同じ				*/
					RSCAN0GAFLP1(mbox_no) 	 = (0x1) << 1;									/* 受信FIFOバッファzを選択する						*/
																							/* チャネルNOと同じ									*/						
				}
			}
		}
		RSCAN0.GAFLECTR.BIT.AFLDAE	=	0;				/*	受信テーブル書込み禁止	*/
	}
	else{}

	if ( 4== ( u1_use_ch & 0x04 ) )
	{
		RSCAN0.GAFLECTR.BIT.AFLDAE	= 1;	/* 受信テーブル書き込み許可		*/
		RSCAN0.GAFLECTR.BIT.AFLPN	= 2;	/* 受信テーブルページを設定		*/
		{
			unsigned int mbox_no ;
			for( mbox_no = 0; mbox_no < 15; mbox_no++ )
			{	
				if ( 0 == rx_mbox_extened[1][mbox_no] )
				{
					RSCAN0GAFLID(mbox_no)	 = 0x00000000 | rx_mbox_id[2][mbox_no] ;		/* 標準ID、データフレーム受信						*/
					RSCAN0GAFLM(mbox_no)	 = 0xdfffffff ;									/* 標準ID、データフレーム、ID全て比較する。			*/
					RSCAN0GAFLP0(mbox_no) 	 = 0x00008000 | ( mbox_no << 8 ) ;
																							/* DLCチェクしない、ラベルなし、受信バッファ使用	*/
																							/* メッセージバッファは、mbox_noと同じ				*/
					RSCAN0GAFLP1(mbox_no) 	 = (0x1) << 2;									/* 受信FIFOバッファzを選択する						*/
																							/* チャネルNOと同じ									*/
				}
				else
				{
					RSCAN0GAFLID(mbox_no)	 = 0x80000000 | rx_mbox_id[2][mbox_no] ;		/* 拡張ID、データフレーム受信						*/
					RSCAN0GAFLM(mbox_no)	 = 0xdfffffff ;									/* 拡張ID、データフレーム、ID全て比較する。			*/
					RSCAN0GAFLP0(mbox_no) 	 = 0x00008000 | ( mbox_no << 8 ) ;
																							/* DLCチェクしない、ラベルなし、受信バッファ使用	*/
																							/* メッセージバッファは、mbox_noと同じ				*/
					RSCAN0GAFLP1(mbox_no) 	 = (0x1) << 2;									/* 受信FIFOバッファzを選択する						*/
																							/* チャネルNOと同じ									*/						
				}
			}
		}
		RSCAN0.GAFLECTR.BIT.AFLDAE	=	0;				/*	受信テーブル書込み禁止	*/
	}
	else{}

	if ( 8 == ( u1_use_ch & 0x08 ) )
	{
		RSCAN0.GAFLECTR.BIT.AFLDAE	= 1;	/* 受信テーブル書き込み許可		*/
		RSCAN0.GAFLECTR.BIT.AFLPN	= 3;	/* 受信テーブルページを設定		*/
		{
			unsigned int mbox_no ;
			for( mbox_no = 0; mbox_no < 15; mbox_no++ )
			{	
				if ( 0 == rx_mbox_extened[1][mbox_no] )
				{
					RSCAN0GAFLID(mbox_no)	 = 0x00000000 | rx_mbox_id[3][mbox_no] ;		/* 標準ID、データフレーム受信						*/
					RSCAN0GAFLM(mbox_no)	 = 0xdfffffff ;									/* 標準ID、データフレーム、ID全て比較する。			*/
					RSCAN0GAFLP0(mbox_no) 	 = 0x00008000 | ( mbox_no << 8 ) ;
																							/* DLCチェクしない、ラベルなし、受信バッファ使用	*/
																							/* メッセージバッファは、mbox_noと同じ				*/
					RSCAN0GAFLP1(mbox_no) 	 = (0x1) << 3;									/* 受信FIFOバッファzを選択する						*/
																							/* チャネルNOと同じ									*/
				}
				else
				{
					RSCAN0GAFLID(mbox_no)	 = 0x80000000 | rx_mbox_id[3][mbox_no] ;		/* 拡張ID、データフレーム受信						*/
					RSCAN0GAFLM(mbox_no)	 = 0xdfffffff ;									/* 拡張ID、データフレーム、ID全て比較する。			*/
					RSCAN0GAFLP0(mbox_no) 	 = 0x00008000 | ( mbox_no << 8 ) ;
																							/* DLCチェクしない、ラベルなし、受信バッファ使用	*/
																							/* メッセージバッファは、mbox_noと同じ				*/
					RSCAN0GAFLP1(mbox_no) 	 = (0x1) << 3;									/* 受信FIFOバッファzを選択する						*/
																							/* チャネルNOと同じ									*/						
				}
			}
		}
		RSCAN0.GAFLECTR.BIT.AFLDAE	=	0;				/*	受信テーブル書込み禁止	*/
	}
	else{}


	/* 受信バッファ設定			*/
	RSCAN0.RMNB.BIT.NRXMB       =16 ;											/* 受信バッファ最大数設定							*/
																				/* 実際、現バージョンドライバでは使用しない			*/
																				/* 受信バッファ許可にはしてあるが、呼び出しは、FIFOのみ対応	*/

	/* 受信FIFOバッファ設定	全CH以下に設定	*/
//	RSCAN0.RFCCx.BIT.RFIGCV		= 0 ;											/* FIFOバッファに1/8までメッセージ格納時割り込み	*/
//																				/* 意味なし（メッセージ受信毎に発生させる(RFIMビット）*/
//	RSCAN0.RFCCx.BIT.RFIM		= 1 ;											/* メッセージ受信完了毎に発生						*/
//	RSCAN0.RFCCx.BIT.RFDC		= 5 ;											/* FIFO段数 48メッセージ							*/
//	
//	RSCAN0.RFCCx.BIT.RFIE		= 1 ;											/* 受信FIFO割り込み許可								*/
//	RSCAN0.RFCCx.BIT.RFE		= 1 ;											/* 受信FIFOバッファを使用する(実際は書き込めない	*/
																				/* 動作モード時に書き込み可能						*/

	if ( 1 == ( u1_use_ch & 0x01 ) )
	{
		RSCAN0RFCC(0)			= 0x00001503 ;
		__nop();
	}
	else{}
	
	if ( 2 == ( u1_use_ch & 0x02 ) )
	{
		RSCAN0RFCC(1)			= 0x00001503 ;	
	}
	else{}

	if ( 4 == ( u1_use_ch & 0x04 ) )
	{
		RSCAN0RFCC(2)			= 0x00001503 ;			
	}
	else{}


	if ( 8 == ( u1_use_ch & 0x08 ) )
	{
		RSCAN0RFCC(3)			= 0x00001503 ;
	}
	else{}
	
	/* 割り込み関連設定				*/
	/* 本ドライバでは未設定			*/

	/** グローバル動作モード　に設定 **/
	RSCAN0.GCTR.BIT.GMDC = 0 ;
	RESET_CAN_SW_TMR ;											/* ソフトタイマリセット		*/	 
	while (( RSCAN0.GSTS.BIT.GRSTSTS ) && ( --can_soft_tm_cnt != 0 ) ) { __nop(); }
	if ( can_soft_tm_cnt == 0 )
	{
		status |= CAN_SW_RST_ERR;
	}

	/** チャネル通信モードに設定	 **/
	if ( 1 == ( u1_use_ch & 0x01 ) )
	{
		RSCAN0.C0CTR.BIT.CHMDC = 0;
		RESET_CAN_SW_TMR ;	
		while ( ( !RSCAN0.C0STS.BIT.COMSTS )  && ( --can_soft_tm_cnt != 0 ) )
		{
			__nop();
		}
		if ( can_soft_tm_cnt == 0 )
		{
			status |= CAN_SW_RST_ERR;
		}
		else{}
		/** 受信FIFO許可**/	
		RSCAN0RFCC(0)			|= 0x00000001 ;
			
		/* CANポート端子設定			*/
		PORT.PCR4_5.UINT32		=	0x00000054;						/* 入力(FCAN0RX0)		*/
		PORT.PCR4_6.UINT32		=	0x00000044;						/* 入力(FCAN0TX0)		*/
	}
	else{}	
	
	if ( 2 == ( u1_use_ch & 0x02 ) )
	{
		RSCAN0.C1CTR.BIT.CHMDC = 0;
		RESET_CAN_SW_TMR ;				
		while ( ( !RSCAN0.C1STS.BIT.COMSTS )  && ( --can_soft_tm_cnt != 0 ) )
		{
			__nop();
		}
		if ( can_soft_tm_cnt == 0 )
		{
			status |= CAN_SW_RST_ERR;
		}
		else{}
		RSCAN0RFCC(1)			|= 0x00000001 ;
		
		/* CANポート端子設定			*/
		PORT.PCR4_14.UINT32		=	0x00000054;						/* 入力(FCAN0RX1)		*/
		PORT.PCR4_15.UINT32		=	0x00000044;						/* 出力(FCAN0TX1)		*/		
	}
	else{}	

	if ( 4 == ( u1_use_ch & 0x04 ) )
	{
		RSCAN0.C2CTR.BIT.CHMDC = 0;
		RESET_CAN_SW_TMR ;				
		while ( ( !RSCAN0.C2STS.BIT.COMSTS )  && ( --can_soft_tm_cnt != 0 ) )
		{
			__nop();
		}
		if ( can_soft_tm_cnt == 0 )
		{
			status |= CAN_SW_RST_ERR;
		}
		else{}
		RSCAN0RFCC(2)			|= 0x00000001 ;
		
		/* CANポート端子設定			*/
		PORT.PCR0_3.UINT32		=	0x00000054;						/* 入力(FCAN0RX2)		*/
		PORT.PCR0_4.UINT32		=	0x00000044;						/* 出力(FCAN0TX2)		*/				
		
	}
	else{}	

	if ( 8 == ( u1_use_ch & 0x08 ) )
	{
		RSCAN0.C3CTR.BIT.CHMDC = 0;
		RESET_CAN_SW_TMR ;				
		while ( ( !RSCAN0.C3STS.BIT.COMSTS )  && ( --can_soft_tm_cnt != 0 ) )
		{
			__nop();
		}
		if ( can_soft_tm_cnt == 0 )
		{
			status |= CAN_SW_RST_ERR;
		}
		else{}
		RSCAN0RFCC(3)			|= 0x00000001 ;
		
		/* CANポート端子設定			*/
		PORT.PCR4_3.UINT32		=	0x00000054;						/* 入力(FCAN0RX3)		*/
		PORT.PCR4_4.UINT32		=	0x00000044;						/* 出力(FCAN0TX3)		*/				
		
	}
	else{}		
	

	return( status );
}

/*==============================================================*/
/*	メールBOX受信初期化関数										*/
/*	引数：														*/
/*			u4_ch 		:	CANモジュールNo						*/
/*			*ptr_mbox	:	メッセージBOX構造体					*/
/*  戻り値：													*/
/*--------------------------------------------------------------*/
/*	備考														*/
/*	　　　　・通常メールBOXモード								*/
/*			・標準IDモード										*/
/*			・ここでは、設定のみ(can_initでレジスタ設定）		*/
/*--------------------------------------------------------------*/
u4 can_setup_rx_mbox(  u4 u4_ch, can_st_mbox *ptr_MBOX )  
{
	u4	status;
	u4	mbox_no;

	/* 設定範囲チェック	*/
	if (  4 >= u4_ch ) {}
    else
    {
        return CAN_BAD_CH_NR;
    }
	
	mbox_no					 		= ptr_MBOX->mb ;
	rx_mbox_id[u4_ch][mbox_no]  	= ptr_MBOX->id ;
	rx_mbox_dlc[u4_ch][mbox_no] 	= ptr_MBOX->dlc ;
	rx_mbox_length[u4_ch][mbox_no]	= ptr_MBOX->length ;
	rx_mbox_extened[u4_ch][mbox_no]	= ptr_MBOX->extended ;
	rx_mbox_cnt[u4_ch]++ ;
	
	if ( rx_mbox_cnt[u4_ch] > 15 )
 	{
 		status 		= CAN_NOT_OK ;
	}
 	else{
		status		= CAN_OK;
	}
	/* メッセージBOX内変数範囲チェック	*/
 	status	|= u1_valcheck( ptr_MBOX->mb, 0, CAN_MBOX_MAX );		/* メッセージBOXNoチェック	*/
	status	|= u1_valcheck( ptr_MBOX->id, 0, CAN_ID_MAX );			/* 拡張ID対応(29Bit)		*/
	status	|= u1_valcheck( ptr_MBOX->dlc, 0, CAN_DLC_MAX );		/* DLC MAX					*/
	status	|= u1_valcheck( ptr_MBOX->extended, 0, CAN_EXTEND_USE );/* 拡張IDフラグ				*/

    return status;
}

/*==============================================================*/
/*	メールBOX受信初期化関数										*/
/*	引数：														*/
/*			u4_ch 		:	CANモジュールNo						*/
/*			*ptr_mbox	:	メッセージBOX構造体					*/
/*  戻り値：													*/
/*--------------------------------------------------------------*/
/*	備考														*/
/*	　　　　・通常メールBOXモード								*/
/*			・標準IDモード										*/
/*			・ここでは、初期設定のみ実際は、送信時に設定		*/
/*--------------------------------------------------------------*/
u4 can_setup_tx_mbox(  u4 u4_ch, can_st_mbox *ptr_MBOX )  
{
	u4	status;
	u4	mbox_no;

	/* 設定範囲チェック	*/
	if (  4 >= u4_ch ) {}
    else
    {
        return CAN_BAD_CH_NR;
    }
	
	mbox_no					 		= ptr_MBOX->mb ;
	tx_mbox_id[u4_ch][mbox_no]  	= ptr_MBOX->id ;
	tx_mbox_dlc[u4_ch][mbox_no] 	= ptr_MBOX->dlc ;
	tx_mbox_length[u4_ch][mbox_no]	= ptr_MBOX->length ;
	tx_mbox_extened[u4_ch][mbox_no]	= ptr_MBOX->extended ;
	tx_mbox_cnt[u4_ch]++ ;
 	
	status		= CAN_OK;
	
	/* メッセージBOX内変数範囲チェック	*/
	
 	status	|= u1_valcheck( ptr_MBOX->mb, 0, CAN_MBOX_MAX );		/* メッセージBOXNoチェック	*/
	status	|= u1_valcheck( ptr_MBOX->id, 0, CAN_ID_MAX );			/* 拡張ID対応(29Bit))		*/
	status	|= u1_valcheck( ptr_MBOX->dlc, 0, CAN_DLC_MAX );		/* DLC MAX					*/
	status	|= u1_valcheck( ptr_MBOX->extended, 0, CAN_EXTEND_USE );/* 拡張IDフラグ				*/

    return status;
}

/*==============================================================*/
/*	メールBOX送信関数											*/
/*	引数：														*/
/*			u4_ch 		:	CANモジュールNo						*/
/*			*ptr_mbox	:	メッセージBOX構造体					*/
/*  戻り値：													*/
/*--------------------------------------------------------------*/
/*	備考														*/
/*	　　　　・通常メールBOXモード								*/
/*			・標準IDモード										*/
/*			・データフレーム送信								*/
/*--------------------------------------------------------------*/
u4 can_tx_data(  u4 u4_ch, can_st_mbox *ptr_MBOX )  
{
	u4	status;
	can_st_mbox	*ptr ;

	status		= CAN_OK;
	     
 	/* メッセージBOX内変数範囲チェック	*/
 	status	|= u1_valcheck( ptr_MBOX->mb, 0, CAN_MBOX_MAX );		/* メッセージBOXNoチェック	*/
	status	|= u1_valcheck( ptr_MBOX->id, 0, CAN_ID_MAX );			/* 拡張ID未対応(11Bit)		*/
	status	|= u1_valcheck( ptr_MBOX->dlc, 0, CAN_DLC_MAX );		/* DLC MAX					*/
	status	|= u1_valcheck( ptr_MBOX->extended, 0, CAN_EXTEND_USE );/* 拡張IDフラグ				*/
	
	/* 設定範囲チェック	*/
	if (  4 >= u4_ch ) {}
    else
    {
        return CAN_BAD_CH_NR;
    }

	/* 送信完了チェック	*/
    if ( RSCAN0TMSTS(u4_ch,ptr_MBOX->mb) == 1)						/* 送信中				*/
    {
        status = CAN_NO_SENTDATA;
        return ( status );
    }
    else
    {
		RSCAN0TMSTS(u4_ch,ptr_MBOX->mb) = RSCAN0TMSTS(u4_ch,ptr_MBOX->mb) & 0xF9 ;
    }

	/* 送信データ設定	*/
	ptr			= ptr_MBOX ;
	RSCAN0TMDF0(u4_ch,ptr_MBOX->mb) = ptr->union_data.u4_data[0]; 
	RSCAN0TMDF1(u4_ch,ptr_MBOX->mb) = ptr->union_data.u4_data[1];	

	/* ID設定			*/
	if ( 0 == ptr_MBOX->extended )
	{
		RSCAN0TMID(u4_ch,ptr_MBOX->mb) = 0x00000000 | ptr_MBOX->id;  	/* 標準ID設定							*/
	}
	else
	{
		RSCAN0TMID(u4_ch,ptr_MBOX->mb) = 0x80000000 | ptr_MBOX->id;  	/* 拡張ID設定							*/		
	}

	/* DLC設定	*/
    RSCAN0TMPTR(u4_ch,ptr_MBOX->mb)	 = (ptr_MBOX->dlc) << 28;		/* データ長設定									*/
	/* データフレームOnly	*/
    
    /* 送信メールBOXに設定	*/
    RSCAN0TMC(u4_ch,ptr_MBOX->mb)	 = 1;

    return (status);
}

/*==============================================================*/
/*	FCAN CH0モジュール初期化									*/
/*	引数：														*/
/*			u4_Kbaud:	1000									*/
/*					:    500									*/
/*					:    250									*/
/*                     上記、以外は、NG							*/
/*                     TBL = 8固定								*/
/*			u4_tseg1	:	タイムセグメント1					*/
/*			u4_tseg2	:	タイムセグメント2					*/
/*			u4_sjw		:	再同期ジャンプ幅					*/
/* 			u4_tsg1 > u4_tsg2 > u4_sjwである事					*/
/*  戻り値：													*/
/*--------------------------------------------------------------*/
/*	備考														*/
/*	　　　　使用周辺機能										*/
/*					: RS-CAN0									*/
/*					: P4_5/CAN0RX0(第5兼用）					*/
/*					: P4_6/CAN0TX0第5兼用）						*/
/*--------------------------------------------------------------*/
u4	can0_init(  u4 u4_Kbaud, u4 u4_tseg1, u4 u4_tseg2, u4 u4_sjw ) 
{
	u4	status;

	status		= CAN_OK;

	/* CANポート入力モード			*/
	PORT.PCR4_5.UINT32		=	0x00000010;				/* 入力(FCAN0RX)										*/
	PORT.PCR4_6.UINT32		=	0x00000010;				/* 入力(FCAN0TX)										*/

	/* 割り込みマスク	*/	
	INTC2.EIC188.BIT.EIMK188	= 1 ;					/* 割り込みマスク										*/
	INTC2.EIC189.BIT.EIMK189	= 1 ;					/* 割り込みマスク										*/
	INTC2.EIC190.BIT.EIMK190	= 1 ;					/* 割り込みマスク										*/

	switch ( u4_Kbaud )
	{
		case 1000:
			can0.u4_brp_prs = 4;
		break;
		case 500:
			can0.u4_brp_prs = 9;
		break;
		case 250:
			can0.u4_brp_prs = 19;
		break;
		default:
			status = CAN_NOT_OK;
		break;
	}
	can0.u4_tseg1	 	= u4_tseg1		;
	can0.u4_tseg2 		= u4_tseg2		;
	can0.u4_sjw 		= u4_sjw		;

	return( status );

}
/*==============================================================*/
/*	FCAN CH1モジュール初期化									*/
/*	引数：														*/
/*			u4_Kbaud:	1000									*/
/*					:    500									*/
/*					:    250									*/
/*                     上記、以外は、NG							*/
/*                     TBL = 8固定								*/
/*			u4_tseg1	:	タイムセグメント1					*/
/*			u4_tseg2	:	タイムセグメント2					*/
/*			u4_sjw		:	再同期ジャンプ幅					*/
/* 			u4_tsg1 > u4_tsg2 > u4_sjwである事					*/
/*  戻り値：													*/
/*--------------------------------------------------------------*/
/*	備考														*/
/*	　　　　使用周辺機能										*/
/*					: RS-CAN0									*/
/*					: P4_14/CAN0RX1(第5兼用）					*/
/*					: P4_15/CAN0TX1（第5兼用）					*/
/*--------------------------------------------------------------*/
u4	can1_init(  u4 u4_Kbaud, u4 u4_tseg1, u4 u4_tseg2, u4 u4_sjw )
{
	u4	status;

	status		= CAN_OK;

	/* CANポート入力モード			*/
	PORT.PCR4_14.UINT32		=	0x00000010;						/* 入力(FCAN1RX)		*/
	PORT.PCR4_15.UINT32		=	0x00000010;						/* 入力(FCAN1TX)		*/	


	/* 割り込みマスク	*/	
	INTC2.EIC191.BIT.EIMK191	= 1 ;						/* 割り込みマスク										*/
	INTC2.EIC192.BIT.EIMK192	= 1 ;						/* 割り込みマスク										*/
	INTC2.EIC193.BIT.EIMK193	= 1 ;						/* 割り込みマスク										*/	

	/* ボーレート設定				 */
	/* BRP，TSEG1, TSEG2， SJW設定	 */
	switch ( u4_Kbaud )
	{
		case 1000:
			can1.u4_brp_prs = 4;
		break;
		case 500:
			can1.u4_brp_prs = 9;
		break;
		case 250:
			can1.u4_brp_prs = 19;
		break;
		default:
			status = CAN_NOT_OK;
		break;
	}
	can1.u4_tseg1	 	= u4_tseg1		;
	can1.u4_tseg2 		= u4_tseg2		;
	can1.u4_sjw 		= u4_sjw		;

	return( status );

}

/*==============================================================*/
/*	FCAN CH2モジュール初期化									*/
/*	引数：														*/
/*			u4_Kbaud:	1000									*/
/*					:    500									*/
/*					:    250									*/
/*                     上記、以外は、NG							*/
/*                     TBL = 8固定								*/
/*			u4_tseg1	:	タイムセグメント1					*/
/*			u4_tseg2	:	タイムセグメント2					*/
/*			u4_sjw		:	再同期ジャンプ幅					*/
/* 			u4_tsg1 > u4_tsg2 > u4_sjwである事					*/
/*  戻り値：													*/
/*--------------------------------------------------------------*/
/*	備考														*/
/*	　　　　使用周辺機能										*/
/*					: RS-CAN0									*/
/*					: P0_3/CAN0RX2(第5兼用）					*/
/*					: P0_4/CAN0TX2（第5兼用）					*/
/*--------------------------------------------------------------*/
u4	can2_init(  u4 u4_Kbaud, u4 u4_tseg1, u4 u4_tseg2, u4 u4_sjw )
{
	u4	status;

	status		= CAN_OK;

	/* CANポート入力モード			*/
	PORT.PCR0_3.UINT32		=	0x00000010;						/* 入力(FCAN2RX)		*/
	PORT.PCR0_4.UINT32		=	0x00000010;						/* 入力(FCAN2TX)		*/	


	/* 割り込みマスク	*/	
	INTC2.EIC194.BIT.EIMK194	= 1 ;						/* 割り込みマスク										*/
	INTC2.EIC195.BIT.EIMK195	= 1 ;						/* 割り込みマスク										*/
	INTC2.EIC196.BIT.EIMK196	= 1 ;						/* 割り込みマスク										*/	

	/* ボーレート設定				 */
	/* BRP，TSEG1, TSEG2， SJW設定	 */
	switch ( u4_Kbaud )
	{
		case 1000:
			can2.u4_brp_prs = 4;
		break;
		case 500:
			can2.u4_brp_prs = 9;
		break;
		case 250:
			can2.u4_brp_prs = 19;
		break;
		default:
			status = CAN_NOT_OK;
		break;
	}
	can2.u4_tseg1	 	= u4_tseg1		;
	can2.u4_tseg2 		= u4_tseg2		;
	can2.u4_sjw 		= u4_sjw		;

	return( status );
}

/*==============================================================*/
/*	FCAN CH3モジュール初期化									*/
/*	引数：														*/
/*			u4_Kbaud:	1000									*/
/*					:    500									*/
/*					:    250									*/
/*                     上記、以外は、NG							*/
/*                     TBL = 8固定								*/
/*			u4_tseg1	:	タイムセグメント1					*/
/*			u4_tseg2	:	タイムセグメント2					*/
/*			u4_sjw		:	再同期ジャンプ幅					*/
/* 			u4_tsg1 > u4_tsg2 > u4_sjwである事					*/
/*  戻り値：													*/
/*--------------------------------------------------------------*/
/*	備考														*/
/*	　　　　使用周辺機能										*/
/*					: RS-CAN0									*/
/*					: P4_3/CAN0RX3(第5兼用）					*/
/*					: P4_4/CAN0TX3（第5兼用）					*/
/*			・標準IDモード										*/
/*--------------------------------------------------------------*/
u4	can3_init(  u4 u4_Kbaud, u4 u4_tseg1, u4 u4_tseg2, u4 u4_sjw )
{
	u4	status;

	status		= CAN_OK;

	/* CANポート入力モード			*/
	PORT.PCR4_3.UINT32		=	0x00000010;						/* 入力(FCAN2RX)		*/
	PORT.PCR4_4.UINT32		=	0x00000010;						/* 入力(FCAN2TX)		*/	


	/* 割り込みマスク	*/	
	INTC2.EIC197.BIT.EIMK197	= 1 ;						/* 割り込みマスク										*/
	INTC2.EIC198.BIT.EIMK198	= 1 ;						/* 割り込みマスク										*/
	INTC2.EIC199.BIT.EIMK199	= 1 ;						/* 割り込みマスク										*/	

	/* ボーレート設定				 */
	/* BRP，TSEG1, TSEG2， SJW設定	 */
	switch ( u4_Kbaud )
	{
		case 1000:
			can3.u4_brp_prs = 4;
		break;
		case 500:
			can3.u4_brp_prs = 9;
		break;
		case 250:
			can3.u4_brp_prs = 19;
		break;
		default:
			status = CAN_NOT_OK;
		break;
	}
	can3.u4_tseg1	 	= u4_tseg1		;
	can3.u4_tseg2 		= u4_tseg2		;
	can3.u4_sjw 		= u4_sjw		;

	return( status );

}
		
/*==============================================================*/
/*	メールBOX受信関数											*/
/*	引数：														*/
/*			u4_ch 		:	CANモジュールNo						*/
/*			*ptr_mbox	:	メッセージBOX構造体					*/
/*  戻り値：													*/
/*--------------------------------------------------------------*/
/*	備考														*/
/*	　　　　・通常メールBOXモード								*/
/*			・標準IDモード										*/
/*			・データフレーム送信								*/
/*--------------------------------------------------------------*/
u4 can_rx_data(  u4 u4_ch, can_st_mbox *ptr_MBOX )  
{
	u4	status;
	can_st_mbox	*ptr ;
 
	status		= CAN_OK;
	
	/* 設定範囲チェック	*/
	if ( 4 >= u4_ch)
	{

	}
    else
    {
        return CAN_BAD_CH_NR;
    }
	
	/* 受信データ有無チェック	*/
	if ( 1 == ( RSCAN0RFSTS(u4_ch) & 0x00000001  ) )		/* 受信データなし									*/
	{
		status	|= CAN_NO_RECEIVEDATA ;
		return ( status );
	}
	

	/* ID取得	*/
	ptr_MBOX->id = RSCAN0RFID(u4_ch)& 0x1FFFFFFF;;
	
	/* データ長取得 (DLC) */
    ptr_MBOX->dlc = ( RSCAN0RFPTR(u4_ch) >> 28 ) & 0x0F ;

	/* データ取得			*/
	ptr	= ptr_MBOX ;										/* アドレス取得										*/
	ptr->union_data.u4_data[0] 	= RSCAN0RFDF0(u4_ch);		/* 下位データ取得									*/
	ptr->union_data.u4_data[1] 	= RSCAN0RFDF1(u4_ch);		/* 上位データ取得									*/
	
	/* ポインタ移動	*/
	RSCAN0RFPCTR(u4_ch) = 0xFF ;
	    
    return (status);
	
}

/*==============================================================*/
/*	FCAN  FIFO未読メッセージ数取得関数							*/
/*	引数：														*/
/*			u4_ch 		:	CANモジュールNo						*/
/*  戻り値： 	FIFO未読メッセージあり(1) なし（0）				*/
/*--------------------------------------------------------------*/
/*	備考														*/
/*--------------------------------------------------------------*/
u4	u4_rx_fifo_chk(u4 u4_ch)
{
		if ( 1 == ( RSCAN0RFSTS(u4_ch) & 0x00000001  ) )		/* 受信データなし									*/
		{
			return(0) ;
		}
		else
		{
			return(1) ;
		}
}
/*==============================================================*/
/*	FCAN ステータス確認関数										*/
/*	引数：														*/
/*			u4_ch 		:	CANモジュールNo						*/
/*  戻り値： 	0:	エラーなし									*/
/*				CAN_STATUS_ERROR_PASSIVE:エラーパッシブ状態		*/
/*				     エラーカント（TECR/RECR)128<= cnt <256		*/
/*				CAN_STATUS_BUSOFF:	BUSOFF状態					*/
/*--------------------------------------------------------------*/
/*	備考														*/
/*--------------------------------------------------------------*/
u4	can_module_busoffchk( u4 u4_ch )
{
	u4	u4_temp_1 ;
	u4	status  = 0 ;
	
	u4_temp_1 = RSCAN0STS(u4_ch) ;
	if ( 0x00000008 == ( u4_temp_1 &  0x00000008 ) )			/* エラーパッシブ状態	*/
	{
		status |= CAN_STATUS_ERROR_PASSIVE ;
	}
	else{}
	
	if ( 0x00000010 == ( u4_temp_1 &  0x00000010 ) ) 			/* バスOFF状態			*/
	{
		status |= CAN_STATUS_BUSOFF ;
	}
	else{}

	return(status) ;
}


/*==============================================================*/
/*	FCAN ステータス確認関数										*/
/*	引数：														*/
/*			u4_ch 		:	CANモジュールNo						*/
/*  戻り値： エラーフラグレジスタ値								*/
/*--------------------------------------------------------------*/
/*	備考														*/
/*--------------------------------------------------------------*/
u4	can_module_chk( u4 u4_ch )
{
	u4	status;


	status = RSCAN0ERFL(u4_ch) ;

    return ( status );
}

/*==============================================================*/
/*	FCAN 割り込み設定関数										*/
/*	引数：														*/
/*			u4_ch 		:	CANモジュールNo						*/
/*			u1	u1_intlv	:割り込みレベル(全割り込み共通）	*/
/*			u1 u1_intcpu	: 2: PE2 /2以外:PE1					*/
/*  戻り値： 													*/
/*--------------------------------------------------------------*/
/*	備考														*/
/*--------------------------------------------------------------*/
u4	can_chint_init ( u4 u4_ch, u1 u1_intlv , u1 u1_intcpu)
{
	u4	status;
		
	status		= CAN_OK;
	
	/* 設定範囲チェック	*/
	if ( 4 >= u4_ch)
	{

	}
    else
    {
        return CAN_BAD_CH_NR;
    }
	
	switch ( u4_ch )
	{
		case 0:
		/* 割り込みレベル設定	*/
			if ( 2 == u1_intcpu )
			{
				INTC2.EIBD188.BIT.GPID	= 1;						/* CPU2にバインド(送受信FIIFO受信完了割り込み）			*/
				INTC2.EIBD188.BIT.PEID	= 2;						/* CPU2にバインド（送受信FIIFO受信完了割り込み）		*/
				INTC2.EIBD189.BIT.GPID	= 1;						/* CPU2にバインド(エラー割り込み）						*/
				INTC2.EIBD189.BIT.PEID	= 2;						/* CPU2にバインド（エラー割り込み）						*/	
				INTC2.EIBD190.BIT.GPID	= 1;						/* CPU2にバインド(送信割り込み）						*/
				INTC2.EIBD190.BIT.PEID	= 2;						/* CPU2にバインド（送信割り込み）						*/
			}
			else
			{
				INTC2.EIBD188.BIT.GPID	= 0;						/* CPU1にバインド(送受信FIIFO受信完了割り込み）			*/
				INTC2.EIBD188.BIT.PEID	= 1;						/* CPU1にバインド（送受信FIIFO受信完了割り込み）		*/
				INTC2.EIBD189.BIT.GPID	= 0;						/* CPU1にバインド(エラー割り込み）						*/
				INTC2.EIBD189.BIT.PEID	= 1;						/* CPU1にバインド（エラー割り込み）						*/	
				INTC2.EIBD190.BIT.GPID	= 0;						/* CPU1にバインド(送信割り込み）						*/
				INTC2.EIBD190.BIT.PEID	= 1;						/* CPU1にバインド（送信割り込み）						*/
			}
			if( u1_intlv < 16 )
			{
				INTC2.EIC188.BIT.EIRF188	= 0 ;						/* 割り込みフラグクリア				*/
				INTC2.EIC188.BIT.EIP188		= u1_intlv ;				/* 割り込みレベル設定				*/
				INTC2.EIC188.BIT.EITB188	= 1;						/* テーブル参照方式					*/
			//	INTC2.EIC188.BIT.EITB188	= 0;						/* 直接分岐方式						*/
				INTC2.EIC188.BIT.EIMK188	= 0 ;						/* 割り込みマスククリア				*/

				INTC2.EIC189.BIT.EIRF189	= 0 ;						/* 割り込みフラグクリア				*/
				INTC2.EIC189.BIT.EIP189		= u1_intlv ;				/* 割り込みレベル設定				*/
				INTC2.EIC189.BIT.EITB189	= 1;						/* テーブル参照方式					*/
			//	INTC2.EIC189.BIT.EITB189	= 0;						/* 直接分岐方式						*/
				INTC2.EIC189.BIT.EIMK189	= 0 ;						/* 割り込みマスククリア				*/				
				
				INTC2.EIC190.BIT.EIRF190	= 0 ;						/* 割り込みフラグクリア				*/
				INTC2.EIC190.BIT.EIP190	= u1_intlv ;					/* 割り込みレベル設定				*/
				INTC2.EIC190.BIT.EITB190	= 1;						/* テーブル参照方式					*/
			//	INTC2.EIC190.BIT.EITB190	= 0;						/* 直接分岐方式						*/
				INTC2.EIC190.BIT.EIMK190	= 0 ;						/* 割り込みマスククリア				*/				
	
			}
			else
			{
				INTC2.EIC188.BIT.EIMK188	= 1 ;						/* 割り込みマスク					*/
				INTC2.EIC189.BIT.EIMK189	= 1 ;						/* 割り込みマスク					*/
				INTC2.EIC190.BIT.EIMK190	= 1 ;						/* 割り込みマスク					*/
			}
		break;

		case 1:
		/* 割り込みレベル設定	*/
			if ( 2 == u1_intcpu )
			{
				INTC2.EIBD191.BIT.GPID	= 1;						/* CPU2にバインド(送受信FIIFO受信完了割り込み）			*/
				INTC2.EIBD191.BIT.PEID	= 2;						/* CPU2にバインド（送受信FIIFO受信完了割り込み）		*/
				INTC2.EIBD192.BIT.GPID	= 1;						/* CPU2にバインド(エラー割り込み）						*/
				INTC2.EIBD192.BIT.PEID	= 2;						/* CPU2にバインド（エラー割り込み）						*/	
				INTC2.EIBD193.BIT.GPID	= 1;						/* CPU2にバインド(送信割り込み）						*/
				INTC2.EIBD193.BIT.PEID	= 2;						/* CPU2にバインド（送信割り込み）						*/
			}
			else
			{
				INTC2.EIBD191.BIT.GPID	= 0;						/* CPU1にバインド(送受信FIIFO受信完了割り込み）			*/
				INTC2.EIBD191.BIT.PEID	= 1;						/* CPU1にバインド（送受信FIIFO受信完了割り込み）		*/
				INTC2.EIBD192.BIT.GPID	= 0;						/* CPU1にバインド(エラー割り込み）						*/
				INTC2.EIBD192.BIT.PEID	= 1;						/* CPU1にバインド（エラー割り込み）						*/	
				INTC2.EIBD193.BIT.GPID	= 0;						/* CPU1にバインド(送信割り込み）						*/
				INTC2.EIBD193.BIT.PEID	= 1;						/* CPU1にバインド（送信割り込み）						*/
			}
			if( u1_intlv < 16 )
			{
				INTC2.EIC191.BIT.EIRF191	= 0 ;						/* 割り込みフラグクリア				*/
				INTC2.EIC191.BIT.EIP191		= u1_intlv ;				/* 割り込みレベル設定				*/
				INTC2.EIC191.BIT.EITB191	= 1;						/* テーブル参照方式					*/
			//	INTC2.EIC191.BIT.EITB191	= 0;						/* 直接分岐方式						*/
				INTC2.EIC191.BIT.EIMK191	= 0 ;						/* 割り込みマスククリア				*/

				INTC2.EIC192.BIT.EIRF192	= 0 ;						/* 割り込みフラグクリア				*/
				INTC2.EIC192.BIT.EIP192		= u1_intlv ;				/* 割り込みレベル設定				*/
				INTC2.EIC192.BIT.EITB192	= 1;						/* テーブル参照方式					*/
			//	INTC2.EIC192.BIT.EITB192	= 0;						/* 直接分岐方式						*/
				INTC2.EIC192.BIT.EIMK192	= 0 ;						/* 割り込みマスククリア				*/				
				
				INTC2.EIC193.BIT.EIRF193	= 0 ;						/* 割り込みフラグクリア				*/
				INTC2.EIC193.BIT.EIP193		= u1_intlv ;				/* 割り込みレベル設定				*/
				INTC2.EIC193.BIT.EITB193	= 1;						/* テーブル参照方式					*/
			//	INTC2.EIC193.BIT.EITB193	= 0;						/* 直接分岐方式						*/
				INTC2.EIC193.BIT.EIMK193	= 0 ;						/* 割り込みマスククリア				*/				
	
			}
			else
			{
				INTC2.EIC191.BIT.EIMK191	= 1 ;						/* 割り込みマスク					*/
				INTC2.EIC192.BIT.EIMK192	= 1 ;						/* 割り込みマスク					*/
				INTC2.EIC193.BIT.EIMK193	= 1 ;						/* 割り込みマスク					*/
			}
			
		break;
		
		case 2:
		/* 割り込みレベル設定	*/
			if ( 2 == u1_intcpu )
			{
				INTC2.EIBD194.BIT.GPID	= 1;						/* CPU1にバインド(送受信FIIFO受信完了割り込み）			*/
				INTC2.EIBD194.BIT.PEID	= 2;						/* CPU1にバインド（送受信FIIFO受信完了割り込み）		*/
				INTC2.EIBD195.BIT.GPID	= 1;						/* CPU1にバインド(エラー割り込み）						*/
				INTC2.EIBD195.BIT.PEID	= 2;						/* CPU1にバインド（エラー割り込み）						*/	
				INTC2.EIBD196.BIT.GPID	= 1;						/* CPU1にバインド(送信割り込み）						*/
				INTC2.EIBD196.BIT.PEID	= 2;						/* CPU1にバインド（送信割り込み）						*/
			}
			else
			{
				INTC2.EIBD194.BIT.GPID	= 0;						/* CPU1にバインド(送受信FIIFO受信完了割り込み）			*/
				INTC2.EIBD194.BIT.PEID	= 1;						/* CPU1にバインド（送受信FIIFO受信完了割り込み）		*/
				INTC2.EIBD195.BIT.GPID	= 0;						/* CPU1にバインド(エラー割り込み）						*/
				INTC2.EIBD195.BIT.PEID	= 1;						/* CPU1にバインド（エラー割り込み）						*/	
				INTC2.EIBD196.BIT.GPID	= 0;						/* CPU1にバインド(送信割り込み）						*/
				INTC2.EIBD196.BIT.PEID	= 1;						/* CPU1にバインド（送信割り込み）						*/
			}
			if( u1_intlv < 16 )
			{
				INTC2.EIC194.BIT.EIRF194	= 0 ;						/* 割り込みフラグクリア				*/
				INTC2.EIC194.BIT.EIP194		= u1_intlv ;				/* 割り込みレベル設定				*/
				INTC2.EIC194.BIT.EITB194	= 1;						/* テーブル参照方式					*/
			//	INTC2.EIC194.BIT.EITB194	= 0;						/* 直接分岐方式						*/
				INTC2.EIC194.BIT.EIMK194	= 0 ;						/* 割り込みマスククリア				*/

				INTC2.EIC195.BIT.EIRF195	= 0 ;						/* 割り込みフラグクリア				*/
				INTC2.EIC195.BIT.EIP195		= u1_intlv ;				/* 割り込みレベル設定				*/
				INTC2.EIC195.BIT.EITB195	= 1;						/* テーブル参照方式					*/
			//	INTC2.EIC195.BIT.EITB195	= 0;						/* 直接分岐方式						*/
				INTC2.EIC195.BIT.EIMK195	= 0 ;						/* 割り込みマスククリア				*/				
				
				INTC2.EIC196.BIT.EIRF196	= 0 ;						/* 割り込みフラグクリア				*/
				INTC2.EIC196.BIT.EIP196		= u1_intlv ;				/* 割り込みレベル設定				*/
				INTC2.EIC196.BIT.EITB196	= 1;						/* テーブル参照方式					*/
			//	INTC2.EIC196.BIT.EITB196	= 0;						/* 直接分岐方式						*/
				INTC2.EIC196.BIT.EIMK196	= 0 ;						/* 割り込みマスククリア				*/				
	
			}
			else
			{
				INTC2.EIC194.BIT.EIMK194	= 1 ;						/* 割り込みマスク					*/
				INTC2.EIC195.BIT.EIMK195	= 1 ;						/* 割り込みマスク					*/
				INTC2.EIC196.BIT.EIMK196	= 1 ;						/* 割り込みマスク					*/
			}
			
		break;
		case 3:
		/* 割り込みレベル設定	*/
			if ( 2 == u1_intcpu )
			{
				INTC2.EIBD197.BIT.GPID	= 1;						/* CPU1にバインド(送受信FIIFO受信完了割り込み）			*/
				INTC2.EIBD197.BIT.PEID	= 2;						/* CPU1にバインド（送受信FIIFO受信完了割り込み）		*/
				INTC2.EIBD198.BIT.GPID	= 1;						/* CPU1にバインド(エラー割り込み）						*/
				INTC2.EIBD198.BIT.PEID	= 2;						/* CPU1にバインド（エラー割り込み）						*/	
				INTC2.EIBD199.BIT.GPID	= 1;						/* CPU1にバインド(送信割り込み）						*/
				INTC2.EIBD199.BIT.PEID	= 2;						/* CPU1にバインド（送信割り込み）						*/
			}
			else
			{
				INTC2.EIBD197.BIT.GPID	= 0;						/* CPU1にバインド(送受信FIIFO受信完了割り込み）			*/
				INTC2.EIBD197.BIT.PEID	= 1;						/* CPU1にバインド（送受信FIIFO受信完了割り込み）		*/
				INTC2.EIBD198.BIT.GPID	= 0;						/* CPU1にバインド(エラー割り込み）						*/
				INTC2.EIBD198.BIT.PEID	= 1;						/* CPU1にバインド（エラー割り込み）						*/	
				INTC2.EIBD199.BIT.GPID	= 0;						/* CPU1にバインド(送信割り込み）						*/
				INTC2.EIBD199.BIT.PEID	= 1;						/* CPU1にバインド（送信割り込み）						*/
			}
			if( u1_intlv < 16 )
			{
				INTC2.EIC197.BIT.EIRF197	= 0 ;						/* 割り込みフラグクリア				*/
				INTC2.EIC197.BIT.EIP197		= u1_intlv ;				/* 割り込みレベル設定				*/
				INTC2.EIC197.BIT.EITB197	= 1;						/* テーブル参照方式					*/
			//	INTC2.EIC197.BIT.EITB197	= 0;						/* 直接分岐方式						*/
				INTC2.EIC197.BIT.EIMK197	= 0 ;						/* 割り込みマスククリア				*/

				INTC2.EIC198.BIT.EIRF198	= 0 ;						/* 割り込みフラグクリア				*/
				INTC2.EIC198.BIT.EIP198		= u1_intlv ;				/* 割り込みレベル設定				*/
				INTC2.EIC198.BIT.EITB198	= 1;						/* テーブル参照方式					*/
			//	INTC2.EIC198.BIT.EITB198	= 0;						/* 直接分岐方式						*/
				INTC2.EIC198.BIT.EIMK198	= 0 ;						/* 割り込みマスククリア				*/				
				
				INTC2.EIC199.BIT.EIRF199	= 0 ;						/* 割り込みフラグクリア				*/
				INTC2.EIC199.BIT.EIP199		= u1_intlv ;				/* 割り込みレベル設定				*/
				INTC2.EIC199.BIT.EITB199	= 1;						/* テーブル参照方式					*/
			//	INTC2.EIC199.BIT.EITB199	= 0;						/* 直接分岐方式						*/
				INTC2.EIC199.BIT.EIMK199	= 0 ;						/* 割り込みマスククリア				*/				
	
			}
			else
			{
				INTC2.EIC197.BIT.EIMK197	= 1 ;						/* 割り込みマスク					*/
				INTC2.EIC198.BIT.EIMK198	= 1 ;						/* 割り込みマスク					*/
				INTC2.EIC199.BIT.EIMK199	= 1 ;						/* 割り込みマスク					*/
			}
			
		break;
	}
	return(status);
}
/*==============================================================*/
/*	FCAN グローバル割り込み設定関数								*/
/*	引数：														*/
/*			u1	u1_intlv	:割り込みレベル(全割り込み共通）	*/
/*			u1 u1_intcpu	: 2: PE2 /2以外:PE1					*/
/*  戻り値： 													*/
/*--------------------------------------------------------------*/
/*	備考														*/
/*--------------------------------------------------------------*/
void	can_gint_init ( u1 u1_intlv , u1 u1_intcpu)
{
	if ( 2 == u1_intcpu )
	{
		/* 割り込みバインド				*/
		INTC2.EIBD186.BIT.GPID	= 1;						/* CPU2にバインド(受信FIFO割り込み）					*/
		INTC2.EIBD186.BIT.PEID	= 2;						/* CPU2にバインド（受信FIFO割り込み）					*/
	
		INTC2.EIBD187.BIT.GPID	= 1;						/* CPU2にバインド(グローバルエラー割り込み）			*/
		INTC2.EIBD187.BIT.PEID	= 2;						/* CPU2にバインド(グローバルエラー割り込み）			*/
	}
	else
	{
		/* 割り込みバインド				*/
		INTC2.EIBD186.BIT.GPID	= 0;						/* CPU1にバインド(受信FIFO割り込み）					*/
		INTC2.EIBD186.BIT.PEID	= 1;						/* CPU1にバインド（受信FIFO割り込み）					*/
	
		INTC2.EIBD187.BIT.GPID	= 0;						/* CPU1にバインド(グローバルエラー割り込み）			*/
		INTC2.EIBD187.BIT.PEID	= 1;						/* CPU1にバインド(グローバルエラー割り込み）			*/
	}
	if( u1_intlv < 16 )
	{
		INTC2.EIC186.BIT.EIRF186	= 0 ;						/* 割り込みフラグクリア				*/
		INTC2.EIC186.BIT.EIP186		= u1_intlv ;				/* 割り込みレベル設定				*/
		INTC2.EIC186.BIT.EITB186	= 1;						/* テーブル参照方式					*/
	//	INTC2.EIC186.BIT.EITB186	= 0;						/* 直接分岐方式						*/
		INTC2.EIC186.BIT.EIMK186	= 0 ;						/* 割り込みマスククリア				*/

		INTC2.EIC187.BIT.EIRF187	= 0 ;						/* 割り込みフラグクリア				*/
		INTC2.EIC187.BIT.EIP187		= u1_intlv ;				/* 割り込みレベル設定				*/
		INTC2.EIC187.BIT.EITB187	= 1;						/* テーブル参照方式					*/
	//	INTC2.EIC187.BIT.EITB187	= 0;						/* 直接分岐方式						*/
		INTC2.EIC187.BIT.EIMK187	= 0 ;						/* 割り込みマスククリア				*/				

	}
	else
	{
		INTC2.EIC186.BIT.EIMK186	= 1 ;						/* 割り込みマスク					*/
		INTC2.EIC187.BIT.EIMK187	= 1 ;						/* 割り込みマスク					*/
	}
}


