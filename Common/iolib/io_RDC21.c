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
signed long int s4_rdc21_rpm(void);
/*=============================================================*/

/*=============================================================
	RDC初期化関数
	戻り値：なし						   
	引数：
	u1 u1_intsrc_en		:	割り込みソース
							0:なし　1:Z割り込み	2:COMP割り込み出力　3：両方(Z,COMP)
	u1 u1_abz_en		:	0:出力なし1:ABZ相出力（Z相は割り込みも出力）
	u1 u1_bisten		:   0:BISチェックしない。1:チェックする。（現在無効）
	u1 u1_out_monitor   :   0:モニタ出力しない　1:モニタ出力する
	u1 u1_hsys			:	0:HSYSなし			1：HSYSあり
	備考：
		割り込みレベルは, rdc_init_interruptで設定
===============================================================*/

u1	__u1_rdc21str_sel;														/* RDC21DATSTRレジスタ格納フラグレジスタ				*/
u1 rdc21_init( u1 u1_intsrc_en , u1 u1_abz_en , u1 u1_bisten , u1 u1_out_monitor , u1 u1_hsys )
{
	u1	t_u1_error;

/*	励磁信号設定	*/
	/* RDC制御レジスタ設定		*/
	RDC21.CON.BIT.EXIO			= 	1;										/* 励磁信号入出力切替 0:励磁信号入力/1: 出力			*/

/*	励磁信号出力周波数設定	*/
	/* 変換条件選択レジスタ	*/
	RDC21.CONSEL.BIT.EXFS		=	0;										/* 励磁信号周波数										*/
																			/*	0:10KHz/1:5KHz/2:20KHz/3:40KHz/4:15KHz				*/

/* 使用するセンサ選択	*/
	/* RDC制御レジスタ設定		*/
	RDC21.CON.BIT.SENS			= 1;										/* センサ選択											*/
																			/* 0:DCレゾルバ/1:VRレゾルバ							*/
/* PI補償器の帯域設定	*/
	/* RDC制御レジスタ設定		*/
	RDC21.CON.BIT.BWCS			= 1;										/* 帯域設定方法選択										*/
																			/* 0: RDC2nCONSEL, RDC2nCGSEL レジスタで設定			*/
																			/* 1: RDC2nLPGAIN.LPGS[2:0] ビットで設定				*/
	/* ループゲイン設定レジスタ */
	RDC21.LPGAIN.BIT.LPGS	= 7;												/* BWCSビット=1の時有効									*/
																				/* 0:800Hz/3:1500Hz/4:1000Hz/5:500/6:200Hz/7:自動調整	*/	

/* 最大角速度設定	*/
	/* 最大角速度設定レジスタ	*/
	RDC21.MAXV.BIT.MAXV			= 	1;										/* 最大角速度選択										*/
																			/* 0:120,000rpm => RDC分解能 13Bit						*/
																			/* 1:240,000rpm => RDC分解能 12Bit						*/
																			/* 2:480,000rpm => RDC分解能 11Bit						*/
																			/* 3:960,000rpm => RDC分解能 10Bit						*/
																			/* 4: 15,000rpm => RDC分解能 16Bit						*/
																			/* 5: 60,000rpm => RDC分解能 14Bit						*/
/* RDC変換異常判定時間の設定	*/
	/* 変換条件選択レジスタ	*/
	RDC21.CONSEL.BIT.EDPS		=	3 ;										/* 異常判定時間											*/
																			/* 0:95.8mS/1:147mS/2:4.92mS/3:7.37mS					*/

/* レゾルバ信号異常検出閾値の設定	*/
	/* RDC制御レジスタ設定		*/
	RDC21.CON.BIT.REDTH			= 0;										/* レゾルバ信号異常検出閾値設定							*/
																			/* 0:0.10 × (RVDD±5%) [Vp-p]							*/
																			/* 1:0.14 × (RVDD±5%) [Vp-p]							*/

/* 断線検出アナログ電圧閾値の設定	*/
	/* RDC制御レジスタ設定		*/
	RDC21.CON.BIT.BDVTH			= 0;										/* 断線検出電圧閾値選択									*/
																			/* 0: SENS、EXIO ビット設定に依存						*/
																			/* 1:  RDC2nCOM + 0.35 × RVDD固定						*/
																			
/* その他レジスタの設定	*/

	/* 変換条件選択レジスタ	*/
	RDC21.CONSEL.BIT.DEVCK		= 	2 ;										/* 制御偏差判定クロック									*/
																			/* 0:50uS/1:100uS/2:200uS/3:25uS/4:400uS/5:800uS		*/

	RDC21.CONSEL.BIT.DVW		=	0;										/* 制御偏差重みづけ	0:x1/1:x3/2:x5/3:x7					*/
	RDC21.CONSEL.BIT.DATSEL	=	0;										/* RDC21DATSTRレジスタ値選択							*/
																			/* 0:12bit角度データ/4:16ビット角度データ/9:角速度データ*/
																			/* 5:コンペア一致割り込み信号[Bit10-8]&制御偏差[Bit7-0]	*/

	if ( 0 == RDC21.CONSEL.BIT.DATSEL )			{ __u1_rdc21str_sel = 0 ;}
	else if ( 4 == RDC21.CONSEL.BIT.DATSEL ) 	{ __u1_rdc21str_sel = 1; }
	else if ( 9 == RDC21.CONSEL.BIT.DATSEL )	{ __u1_rdc21str_sel = 2; }
	else if ( 5 == RDC21.CONSEL.BIT.DATSEL )	{ __u1_rdc21str_sel = 3; }
	else { __u1_rdc21str_sel = 0; }
																			
	/* 制御ゲイン選択レジスタ(リセット値(00H)を推奨） */
	RDC21.CGSEL.BIT.KVMS		=	0;										/* Kvゲイン方式選択										*/
																			/* 0:12段階ACG/1:7段階ACG/2:2段階ACG/3:Kv固定			*/
	RDC21.CGSEL.BIT.KPS			=	0;										/* Kpゲイン選択											*/
																			/* 0:x1/1:x0.25/2:x0.5/3:x2								*/
	RDC21.CGSEL.BIT.LKVS		= 	0;										/* 低Kvゲイン選択（Kv固定/2段階ACG設定時に使用）		*/
	RDC21.CGSEL.BIT.HKVS		= 	0;										/* 高Kvゲイン選択（Kv固定/2段階ACG設定時に使用）		*/
	RDC21.CGSEL.BIT.KPF			=	0;										/* Kpゲイン4倍ビット　0:Kpゲインを4倍しない/1:4倍する	*/
	RDC21.CGSEL.BIT.KIS			= 	0;										/* Kiゲイン選択											*/
	

	/* 積分器リセットレジスタ	*/
	RDC21.RST.BIT.KIRST			=	0;										/* 積分器リセット 1: リセット							*/
	
	/* モニタ端子設定レジスタ	*/
	if ( 0 == u1_out_monitor )
	{
		RDC21.MNTC.BIT.MNTC			=	0;										/* 0:RDC20SINMNT/COSMNT端子Hi-z/1:出力					*/
	}
	else
	{
		RDC21.MNTC.BIT.MNTC			=	1;										/* 0:RDC20SINMNT/COSMNT端子Hi-z/1:出力					*/
	}	
	/* 角度コンペアレジスタ設定	*/
	RDC21.CMP0.BIT.CMP0			= 	0;										/* コンペア値初期化										*/
	RDC21.CMP1.BIT.CMP1			= 	0;
	RDC21.CMP2.BIT.CMP2			= 	0;
	

	/* RDC出力制御レジスタ設定	*/
	RDC21.OUTC.BIT.CINTEN		= 0;										/* 0:コンペア一致割り込み禁止/1:割り込み許可			*/
	RDC21.OUTC.BIT.ABEN			= 0;										/* 0:AB相出力禁止/1:出力許可							*/
	RDC21.OUTC.BIT.ZEN			= 0;										/* 0:Z相出力禁止,割り込み禁止/1:出力許可,割り込み許可	*/
	RDC21.OUTC.BIT.EINTEN		= 0;										/* 0:RDC異常割り込み禁止/1:割り込み許可					*/

	switch ( u1_intsrc_en )
	{
		case 0: 
		break;
		case 1: 
			RDC21.OUTC.BIT.ZEN			= 1;
		break;
		case 2: 
			RDC21.OUTC.BIT.CINTEN		= 1;
		break;
		case 3:
			RDC21.OUTC.BIT.CINTEN		= 1;
			RDC21.OUTC.BIT.ZEN			= 1;
		break;
		default:
			__nop();
		break;
	}

	if ( 1 == u1_abz_en )
	{
		RDC21.OUTC.BIT.ABEN			= 1;
		RDC21.OUTC.BIT.ZEN			= 1;
	}
	else {}


	/* RDC制御レジスタ設定		*/
	RDC21.CON.BIT.FGCON			= 0;										/* 0:強制ゲイン制御機能使用する/1:使用しない			*/

	RDC21.CON.BIT.CVEDS			= 0;										/* 変換異常検出回路選択ビット							*/
																			/* 0: RDC 変換異常検出信号のレゾルバ高速回転に対応を選択*/
																			/* 1: 未対応を選択										*/
	
	/* 注1. FGCON ビットの設定値を変更する場合は、レゾルバが止まっている状態（角速度が 1rpm 以下）で行い、	*/
	/*		設定値変更後に RDC2nRST レジスタの KIRST ビットに “1” を書いてください。						*/
	/* 注2. BWCS ビットはリセット後の値 “1” で使用することを推奨します。									*/
	/* 注3. RDC2nCONSEL レジスタの EXFS[2:0] ビットを “011B”( 励磁周波数 40 kHz) に設定する場合、CVEDS	*/
	/*		ビットを “1” にしてください。																	*/
	/*		また、CVEDS ビットを “1”、EXIO ビットを “0” にする場合、22 kHz 以上の周波数を入力しないでください。*/
	/* 注4. SENS ビットを “0” にする場合は、EXIO ビットを “1” にしてください。							*/



	/* 異常検出機能レジスタ	*/
	RDC21.ERDEN.BIT.ERDEN	= 1;												/* 0:異常検出機能無効/1:異常検出機能有効(26mS後）		*/
	

	/*	励磁振幅自動調整回路設定レジスタ	*/
	RDC21.EXAAT.BIT.EAAOD	= 0;												/* 励磁振幅自動調整順序選択								*/
																				/* 0 : 励磁出力による調整のあと、入力ゲイン抵抗による調整	*/
																				/* 1 : 入力ゲイン抵抗による調整の後、励磁出力による調整		*/
																				
	RDC21.EXAAT.BIT.IRSS1	= 1;												/* 入力ゲイン抵抗値選択									*/
																				/* 0:IRSC[3:0] ビットで設定する値または出荷時のチューニング値	*/
																				/* 1:入力ゲイン抵抗自動調整値									*/

	RDC21.EXAAT.BIT.EXOS	= 1;												/* 励磁出力振幅設定選択									*/
																				/* 0 : EXOC[1:0] ビットで設定する値/1 :  励磁出力自動調整値	*/
																				
	RDC21.EXAAT.BIT.EAATSP	= 0;												/* 振幅自動調整停止	0:自動調整/1:自動調整停止			*/
	RDC21.EXAAT.BIT.EXOC	= 2;												/* 励磁出力値設定										*/
																				/* 0:励磁出力値 TYP-40%/1:TYP-20%/2:TYP/3:TYP+20%		*/
																				
	RDC21.EXAAT.BIT.IRSS0	= 0;												/* 入力ゲイン抵抗値選択ビット							*/
																				/* IRSS1 ビットとの組み合わせで入力ゲイン抵抗値を選択	*/
	RDC21.EXAAT.BIT.IRSC	= 4;												/* 入力ゲイン抵抗値設定									*/
																				/* 4:入力ゲイン抵抗値 TYP±0%							*/
																				

	if ( 1 == u1_hsys )
	{
		RDC21.ENCP.BIT.HYSS		= 0;												/* 0:ヒステリシスあり/1:ヒステリシスなし				*/
	}
	else
	{
		RDC21.ENCP.BIT.HYSS		= 1;												/* 0:ヒステリシスあり/1:ヒステリシスなし				*/
	}


/* アナログ動作開始	*/
	/*　アナログ回路停止レジスタ	*/
	RDC21.ANSTP.BIT.ANSTP	= 0;												/* 0:アナログ回路動作/1:アナログ回路停止				*/
	
/* RDC初期化実行	*/
	/* RDC初期化レジスタ設定	*/
	RDC21.INIT.BIT.INIT			=   1;											/* 0:なにもしない/1:RDC初期化							*/

/* 210uSウェイト	*/
	{
		int wait = 25200;														/* Wait時間目安 1/240MHz*wait*2							*/
		while (wait){ wait--; }
	}

/* 初期化完了確認	*/
	while ( 1 == RDC21.INIT.BIT.INIT ) {;;}

/* 自己診断実施		*/
	t_u1_error	= 0 ;
	
	if ( 1 == u1_bisten )
	{
	/* BIST設定レジスタ	& 異常チェック*/
		RDC21.BISTC.BIT.BCON			= 5;										/* 角度　0度　BIST1										*/
		RDC21.BISTC.BIT.BEXE			= 1;										/* BIST実行												*/
	/* 10mSウェイト	*/
		{
		int wait = 1200000;															/* Wait時間目安 1/240MHz*wait*2							*/
		while (wait){ wait--; }
		}
		if ( 0x0F == RDC21.BISTC.BIT.BRLT ) { t_u1_error |= 0x01 ;}
	
		RDC21.BISTC.BIT.BCON			= 6;										/* 角度　45度　BIST2									*/
		RDC21.BISTC.BIT.BEXE			= 1;										/* BIST実行												*/
	/* 10mSウェイト	*/
		{
		int wait = 1200000;															/* Wait時間目安 1/240MHz*wait*2							*/
		while (wait){ wait--; }
		}		
		if ( 0x0F == RDC21.BISTC.BIT.BRLT ) { t_u1_error |= 0x02 ;}

		RDC21.BISTC.BIT.BCON			= 7;										/* 角度　270度　BIST3									*/
		RDC21.BISTC.BIT.BEXE			= 1;										/* BIST実行												*/
	/* 10mSウェイト	*/
		{
		int wait = 1200000;															/* Wait時間目安 1/240MHz*wait*2							*/
		while (wait){ wait--; }
		}
		if ( 0x0F == RDC21.BISTC.BIT.BRLT ) { t_u1_error |= 0x04 ;}

		RDC21.BISTC.BIT.BCON			= 9;										/* レゾルバ信号異常検出									*/
		RDC21.BISTC.BIT.BEXE			= 1;										/* BIST実行												*/
		/* 1.5mSウェイト	*/
		{
		int wait = 180000;															/* Wait時間目安 1/240MHz*wait*2							*/
		while (wait){ wait--; }
		}
		if ( 0x0F == RDC21.BISTC.BIT.BRLT ) { t_u1_error |= 0x08 ;}
			
		RDC21.BISTC.BIT.BCON			= 10;										/* レゾルバ信号断線異常検出（COS)						*/
		RDC21.BISTC.BIT.BEXE			= 1;										/* BIST実行												*/
	/* 1mSウェイト	*/
		{
		int wait = 120000;															/* Wait時間目安 1/240MHz*wait*2							*/
		while (wait){ wait--; }
		}
		if ( 0x0F == RDC21.BISTC.BIT.BRLT ) { t_u1_error |= 0x10 ;}

		RDC21.BISTC.BIT.BCON			= 11;										/* レゾルバ信号断線異常検出（SIN)						*/
		RDC21.BISTC.BIT.BEXE			= 1;										/* BIST実行												*/
	/* 1mSウェイト	*/
		{
		int wait = 120000;															/* Wait時間目安 1/240MHz*wait*2							*/
		while (wait){ wait--; }
		}
		if ( 0x0F == RDC21.BISTC.BIT.BRLT ) { t_u1_error |= 0x20 ;}		
	
		RDC21.BISTC.BIT.BCON			= 12;										/* 変換異常検出											*/
		RDC21.BISTC.BIT.BEXE			= 1;										/* BIST実行												*/
	/* 10mSウェイト	*/
		{
		int wait = 1200000;															/* Wait時間目安 1/240MHz*wait*2							*/
		while (wait){ wait--; }
		}
		if ( 0x0F == RDC21.BISTC.BIT.BRLT ) { t_u1_error |= 0x40 ;}	
			
		RDC21.BISTC.BIT.BEXE	= 0;												/* 自己診断終了											*/
		RDC21.ERDET.BIT.ERRST	= 1;												/* エラー信号リセット									*/

	/* 10mSウェイト	*/
		{
		int wait = 1200000;															/* Wait時間目安 1/240MHz*wait*2							*/
		while (wait){ wait--; }
		}
	}

	
/* 励磁自動調整実施	*/
	/*	励磁振幅自動調整回路設定レジスタ	*/
	RDC21.EXAAT.BIT.EAATSP	= 0;												/* 振幅自動調整停止	0:自動調整/1:自動調整停止			*/

/* 強制ゲイン制御機能使用	*/
/* Kiリセット				*/
	/* 積分器リセットレジスタ	*/
	RDC21.RST.BIT.KIRST			=	1;										/* 積分器リセット 1: リセット							*/

/* 5mSウェイト	*/
	{
		int i = 1200000;
		while (i){ i--; }
	}

/* 異常検出しない	*/


/* 	設定終了	*/

    return( t_u1_error );
}

/*=============================================================*/
/*	RDCSTRデータ格納値関数									   */
/*=============================================================*/
u2 u2_rdc21str_read( void )
{
	u2	t_str_read;
	u2	t_return_val;
	
	t_str_read	= 	RDC21.DATSTR.BIT.DATA ;
	
	switch ( __u1_rdc21str_sel )
	{
		case 0:		 //12Bit分解能角度
			t_return_val = t_str_read 	 ;
		break;
		case 1:		 //16Bit分解能角度
			t_return_val = t_str_read;
		break;
		case 2:		 //角速度(rpm)
			t_return_val = s4_rdc21_rpm() ;
			
		break;
		case 3:		// 制御偏差読み出し	(下位bit読み出し）現状使用用途がない為，そのまま上位に返す
			t_return_val = t_str_read & 0x00FF;
		break;
		default:
		break;
	}
 
	return( (u2)(t_return_val ));

}

/*=============================================================*/
/*	RDCカウンタ値取得関数(12Bit固定）						   */
/*=============================================================*/
u2 u2_rdc21_cnt_read( void )
{
	return( (u2)( RDC21.ANGDAT.BIT.ANG >> 4 ));						/* 角度データ（ 360/2^12 +n (deg））*/
//	return( (u2)( RDC21.ANGDAT.BIT.ANG 		 ));		　　		/* 角度データ（ 360/2^12 +n (deg））*/
}

/*=============================================================
	RDC割り込み設定関数
	戻り値：なし						   
	引数：
	u1	intlv	:割り込みレベル
	u1	intsrc	:割り込みソースの選択
				: Bit0 Zの割り込み許可
				: Bit1 COMP0の割り込み許可
				: Bit2 COMP1の割り込み許可
				: Bit3 COMP2の割り込み許可
	u1 u1_intcpu: 2: PE2 /2以外:PE1
	備考：
		割り込みレベルは、Z、COMP0-2は同一
=============================================================*/
void rdc21_init_interrupt( u1 u1_intlv ,u1 u1_intsrc ,  u1 u1_intcpu)
{
   union
    {
        unsigned char UINT8;
        struct
        {
            unsigned char b07:1;
            unsigned char b06:1;
            unsigned char b05:1;
            unsigned char b04:1;
            unsigned char b03:1;
            unsigned char b02:1;
            unsigned char b01:1;
            unsigned char b00:1;
        } bit;
    } inten; 
 
 	inten.UINT8	= u1_intsrc;
 
	if ( 2 == u1_intcpu )
	{
 		INTC2.EIBD72.BIT.GPID	= 1;							/* CPU2にバインド(Z相割り込み）						*/
		INTC2.EIBD72.BIT.PEID	= 2;							/* CPU2にバインド（Z相割り込み）					*/

		INTC2.EIBD74.BIT.GPID	= 1;							/* CPU2にバインド(CMP0割り込み）						*/
		INTC2.EIBD74.BIT.PEID	= 2;							/* CPU2にバインド（CMP0割り込み）					*/

		INTC2.EIBD75.BIT.GPID	= 1;							/* CPU2にバインド(CMP1割り込み）						*/
		INTC2.EIBD75.BIT.PEID	= 2;							/* CPU2にバインド(CMP1割り込み）					*/

		INTC2.EIBD76.BIT.GPID	= 1;							/* CPU2にバインド(CMP2割り込み）						*/
		INTC2.EIBD76.BIT.PEID	= 2;							/* CPU2にバインド（CMP2割り込み）					*/	
 	}
 	else
 	{
 		INTC2.EIBD72.BIT.GPID	= 0;							/* CPU1にバインド(Z相割り込み）						*/
		INTC2.EIBD72.BIT.PEID	= 1;							/* CPU1にバインド（Z相割り込み）					*/

		INTC2.EIBD74.BIT.GPID	= 0;							/* CPU1にバインド(CMP0割り込み）						*/
		INTC2.EIBD74.BIT.PEID	= 1;							/* CPU1にバインド（CMP0割り込み）					*/

		INTC2.EIBD75.BIT.GPID	= 0;							/* CPU1にバインド(CMP1割り込み）						*/
		INTC2.EIBD75.BIT.PEID	= 1;							/* CPU1にバインド(CMP1割り込み）					*/

		INTC2.EIBD76.BIT.GPID	= 0;							/* CPU1にバインド(CMP2割り込み）						*/
		INTC2.EIBD76.BIT.PEID	= 1;							/* CPU1にバインド（CMP2割り込み）					*/	 		
	}
	if( u1_intlv < 16 )
	{
		if ( 1 == inten.bit.b00 ) {							/* Z相割り込み										*/
			INTC2.EIC72.BIT.EIRF72	= 0 ;					/* 割り込みフラグクリア								*/
			INTC2.EIC72.BIT.EIP72	= u1_intlv ;			/* 割り込みレベル設定								*/
			INTC2.EIC72.BIT.EITB72	= 1;					/* テーブル参照方式									*/
//			INTC2.EIC72.BIT.EITB72	= 0;					/* 直接分岐方式										*/
			INTC2.EIC72.BIT.EIMK72	= 0 ;					/* 割り込みマスククリア								*/
		}else{}
		if ( 1 == inten.bit.b00 ) {							/* CMP0割り込み										*/
			INTC2.EIC74.BIT.EIRF74	= 0 ;					/* 割り込みフラグクリア								*/
			INTC2.EIC74.BIT.EIP74	= u1_intlv ;			/* 割り込みレベル設定								*/
			INTC2.EIC74.BIT.EITB74	= 1;					/* テーブル参照方式									*/
//			INTC2.EIC74.BIT.EITB74	= 0;					/* 直接分岐方式										*/
			INTC2.EIC74.BIT.EIMK74	= 0 ;					/* 割り込みマスククリア								*/
		}else{}
		if ( 1 == inten.bit.b00 ) {							/* CMP1割り込み										*/
			INTC2.EIC75.BIT.EIRF75	= 0 ;					/* 割り込みフラグクリア								*/
			INTC2.EIC75.BIT.EIP75	= u1_intlv ;			/* 割り込みレベル設定								*/
			INTC2.EIC75.BIT.EITB75	= 1;					/* テーブル参照方式									*/
//			INTC2.EIC75.BIT.EITB75	= 0;					/* 直接分岐方式										*/
			INTC2.EIC75.BIT.EIMK75	= 0 ;					/* 割り込みマスククリア								*/
		}else{}
		if ( 1 == inten.bit.b00 ) {							/* CMP2割り込み										*/
			INTC2.EIC76.BIT.EIRF76	= 0 ;					/* 割り込みフラグクリア								*/
			INTC2.EIC76.BIT.EIP76	= u1_intlv ;			/* 割り込みレベル設定								*/
			INTC2.EIC76.BIT.EITB76	= 1;					/* テーブル参照方式									*/
//			INTC2.EIC76.BIT.EITB76	= 0;					/* 直接分岐方式										*/
			INTC2.EIC76.BIT.EIMK76	= 0 ;					/* 割り込みマスククリア								*/
		}else{}
	}
	else
	{
		INTC2.EIC72.BIT.EIMK72	= 1 ;						/* 割り込みマスク									*/		
		INTC2.EIC74.BIT.EIMK74	= 1 ;						/* 割り込みマスク									*/				
		INTC2.EIC75.BIT.EIMK75	= 1 ;						/* 割り込みマスク									*/				
		INTC2.EIC76.BIT.EIMK76	= 1 ;						/* 割り込みマスク									*/				
		
	}
}

/*=============================================================*/
/*	RDC COMP0 カウント一致割り込みのカウンタ設定関数	   */
/*=============================================================*/
void rdc21_cmp0_set( u2 u2_cnt )
{
	__DI();
	RDC21.CMP0.BIT.CMP0 = (u2)((u2_cnt << 4) & 0xfff0);
	__EI();
}

/*==============================================================*/
/*	RDC PHI_COMP1 カウント一致割り込みのカウンタ設定関数	  	*/
/*	分解能12Bit前提											　	*/
/*==============================================================*/
void rdc21_cmp1_set( u2 u2_cnt )
{
	__DI();
	RDC21.CMP1.BIT.CMP1 = (u2)((u2_cnt << 4) & 0xfff0);
	__EI();
}

/*==============================================================*/
/*	RDC COMP2 カウント一致割り込みのカウンタ設定関数	 	 	*/
/*	分解能12Bit前提												*/
/*==============================================================*/
void rdc21_cmp2_set( u2 u2_cnt )
{
	__DI();
	RDC21.CMP2.BIT.CMP2 = (u2)((u2_cnt << 4) & 0xfff0);
	__EI();
}

/*==============================================================*/
/*	RDC 速度検出情報取得関数	 							　  */
/*	分解能12Bit前提											　　*/
/*==============================================================*/
signed long int s4_rdc21_rpm(void)
{
    union
    {
        unsigned short UINT16;
        struct
        {
            unsigned short b15:1;
            unsigned short b14:1;
            unsigned short b13:1;
            unsigned short b12:1;
            unsigned short b11:1;
            unsigned short b10:1;
            unsigned short b09:1;
            unsigned short b08:1;
            unsigned short b07:1;
            unsigned short b06:1;
            unsigned short b05:1;
            unsigned short b04:1;
            unsigned short b03:1;
            unsigned short b02:1;
            unsigned short b01:1;
            unsigned short b00:1;
        } bit;
    } val; 
    signed long val_sign;       /* 符号フラグ						 */
    signed long rpm_tmp;        /* rpm計算値						 */
    
    val.UINT16 = RDC21.DATSTR.BIT.DATA;
    
    switch( val.bit.b15 )
    {       
        case 1:
        val.UINT16 = 0x10000 - val.UINT16;
        val_sign = -1;
        break;
        
        default:
        val_sign =  1;
        break;
    }
    
    rpm_tmp =   (val.bit.b14) * 585938L
              + (val.bit.b13) * 292969L
              + (val.bit.b12) * 146484L
              + (val.bit.b11) *  73242L
              + (val.bit.b10) *  36621L
              + (val.bit.b09) *  18311L
              + (val.bit.b08) *   9155L
              + (val.bit.b07) *   4578L
              + (val.bit.b06) *   2289L
              + (val.bit.b05) *   1144L
              + (val.bit.b04) *    572L
              + (val.bit.b03) *    286L
              + (val.bit.b02) *    143L
              + (val.bit.b01) *     72L
              + (val.bit.b00) *     36L ;
 
    rpm_tmp = rpm_tmp * val_sign;
    
    return (rpm_tmp);
}

/*==============================================================*/
/*	RDC 異常検出情報取得									　  */
/*															　　*/
/*==============================================================*/
unsigned short u2_read_rdc21_status(void)
{
	u4	u4_temp;
	u4_temp = RDC21.ERDET.UINT16 ;
	if ( 0x7000 == ( u4_temp & 0x7000 ))
	{
		return ( 0 );
	}
	else
	{
		return ( RDC21.ERDET.UINT16 );
	}
	
}


/*==============================================================*/
/*	RDC21 ABZ端子出力設定										*/
/*	戻り値：なし												*/						   
/*	引数：  なし												*/
/*==============================================================*/
/*	備考													　　*/
/*			P6_1 A相											*/
/*			P6_2 B相											*/
/*			P6_3 Z相											*/
/*==============================================================*/
void rdc21_ABZ_Terminal_output(void)
{
	// ポート設定
	PORT.PCR6_1.UINT32	= 0x0000041;			 		/* PORT6_1(第2兼用出力)						*/	
	PORT.PCR6_2.UINT32	= 0x0000041;			 		/* PORT6_2(第2兼用出力)						*/	
	PORT.PCR6_3.UINT32	= 0x0000041;			 		/* PORT6_3(第2兼用出力)						*/	
}