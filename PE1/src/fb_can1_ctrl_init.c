/*===============================================================
+																+
+			Title:		CANサンプルプログラム					+
+				(RH850/C1H専用コントローラ対応品)				+
+																+
+				date:		1th Apr,2017						+
+																+
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

/* FCAN CH0制御関係					*/
#include    "../../PE2/src/fb_can1_ctrl.h"						/* CAN通信ヘッダファイル						*/
/*=============================================================*/

/*=============================================================*/
/*					CAN通信受信状態変数定義					   */
/*=============================================================*/
u1			u1_flag_rx1_flag;									/* 受信データ確認フラグ							*/
/*=============================================================*/

/*=============================================================*/
/*					CAN通信ドライバ変数定義			 		   */
/*=============================================================*/
u1					u1_flag_can1_initerr;						/* CAN初期化エラーフラグ						*/
/*=============================================================*/

/*=============================================================*/
/* 					関数のプロトタイプ宣言					   */
/*=============================================================*/
void 	fb_can1_driver_init 	(void);							/* CAN1通信ドライバ初期化関数					*/
/*=============================================================*/


/*===============================================================
+																+
+				Name:		void fb_can_driver_init (void)		+
+			Function:		CAN通信ドライバ初期化関数			+
+																+
+																+
+		Return Value:		No									+
+				date:		 7th Apr,2016						+
+																+
===============================================================*/
void fb_can1_driver_init (void)
{
	/*============================================================*/
	/*					   ローカル変数定義		　				  */
	/*============================================================*/
	CAN_ST_MBOX	CAN_MBOX_RX;									/* テンポラリ変数								*/
	CAN_ST_MBOX CAN_MBOX_TX;									/* テンポラリ変数								*/
	/*============================================================*/

	/*============================================================*/
	/*					   初期化エラーフラグ初期化				  */
	/*============================================================*/
	u1_flag_can1_initerr				= 0;
	/*============================================================*/

	/*============================================================*/
	/*					   受信用メッセージボックス初期化		  */
	/*			can_initの前に読み出す事（RS-CAN)			      */
	/*			実際の設定は、can_initで設定					  */
	/*============================================================*/

	CAN_MBOX_RX.mb					= 0;
	CAN_MBOX_RX.dlc					= 8;
	CAN_MBOX_RX.id					= 0x010;
	CAN_MBOX_RX.extended			= 0;

	u1_flag_can1_initerr			|= can_setup_rx_mbox( CAN_CH, &CAN_MBOX_RX);

	CAN_MBOX_RX.mb					= 1;
	CAN_MBOX_RX.dlc					= 8;
	CAN_MBOX_RX.id					= 0x011;
	CAN_MBOX_RX.extended			= 0;

	u1_flag_can1_initerr			|= can_setup_rx_mbox( CAN_CH, &CAN_MBOX_RX);

	/*============================================================*/

	/*============================================================*/
	/*					   送信用メッセージボックス初期化		  */
	/*============================================================*/
	/* !!!!!!!　PE2側の fb_can1_tx_init( fb_can1_ctrl_init.c)と整合が取れている事	!!!!!!	*/
	CAN_MBOX_TX.mb			= 0;
	CAN_MBOX_TX.dlc			= 8;
	CAN_MBOX_TX.id			= 0x020;
	CAN_MBOX_TX.extended	= 0 ;
	u1_flag_can1_initerr			|= can_setup_tx_mbox( CAN_CH, &CAN_MBOX_TX );

	CAN_MBOX_TX.mb			= 1;
	CAN_MBOX_TX.dlc			= 8;
	CAN_MBOX_TX.id			= 0x021;
	CAN_MBOX_TX.extended	= 0 ;
	u1_flag_can1_initerr			|= can_setup_tx_mbox( CAN_CH, &CAN_MBOX_TX );

	CAN_MBOX_TX.mb			= 2;
	CAN_MBOX_TX.dlc			= 8;
	CAN_MBOX_TX.id			= 0x022;
	CAN_MBOX_TX.extended	= 0 ;
	u1_flag_can1_initerr			|= can_setup_tx_mbox( CAN_CH, &CAN_MBOX_TX );

	CAN_MBOX_TX.mb			= 3;
	CAN_MBOX_TX.dlc			= 8;
	CAN_MBOX_TX.id			= 0x023;
	CAN_MBOX_TX.extended	= 0 ;
	u1_flag_can1_initerr	|= can_setup_tx_mbox( CAN_CH, &CAN_MBOX_TX );

	CAN_MBOX_TX.mb			= 4;
	CAN_MBOX_TX.dlc			= 8;
	CAN_MBOX_TX.id			= 0x024;
	CAN_MBOX_TX.extended	= 0 ;
	u1_flag_can1_initerr	|= can_setup_tx_mbox( CAN_CH, &CAN_MBOX_TX );

	CAN_MBOX_TX.mb			= 5;
	CAN_MBOX_TX.dlc			= 8;
	CAN_MBOX_TX.id			= 0x025;
	CAN_MBOX_TX.extended	= 0 ;
	u1_flag_can1_initerr	|= can_setup_tx_mbox( CAN_CH, &CAN_MBOX_TX );

	CAN_MBOX_TX.mb			= 6;
	CAN_MBOX_TX.dlc			= 8;
	CAN_MBOX_TX.id			= 0x026;
	CAN_MBOX_TX.extended	= 0 ;
	u1_flag_can1_initerr	|= can_setup_tx_mbox( CAN_CH, &CAN_MBOX_TX );

	/*============================================================*/

	/*============================================================*/
	/*					   CANモジュール初期化	　				  */
	/*============================================================*/
	/* FCAN0初期化
	1 規格 					ISO 11898 CAN ver2.0B
	2 ボーレート			500[kbps]
	3 データフォーマット 	通常(bit)
	4 サンプリングポイント  75[%]
	5 再同期ジャンプ幅(SJW) 2[TQ]
	6 Byte Order 			Little Endian Intel
	7 BTL					8
	*/

	can1_init(500, 4, 1, 1);
	/*============================================================*/

}

