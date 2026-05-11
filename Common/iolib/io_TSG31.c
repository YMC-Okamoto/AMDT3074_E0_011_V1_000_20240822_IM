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
#define	TSG31_GB_P3_4_USE		(1)
u1	__u1_tsg31_logic;
s2	_S2_DPINV1_ADDLAY;
u1	__u1_read_tsg31_opt0;
u4	__u4_cnt_tsg31_1puls_offset = 10;

f4	f_mu_old2;
f4	f_mv_old2;
f4	f_mw_old2;
/*=============================================================*/


/*==============================================================*/
/*	インターバルタイマ1初期化関数								*/
/*	引数：														*/
/*	u4 u4_freq			:キャリア周波数[Hz]						*/
/*	u4 u4_deadtime_on	:ON側デッドタイム[ns]					*/
/*	u4 u4_deadtime_off	:OFF側デッドタイム[ns]					*/
/*	u1 u1_logic			:PWM論理	0:正論理　それ以外:負論理	*/
/*	u1 u1_intsrc		:割り込みソース	0:なし　1:111(山)　		*/
/*										2:000(谷)　3：両方		*/
/*	u1 u1_intlv			:割り込みレベル							*/
/*	u1 u1_intdn			:間引き数								*/
/*	u1 u1_intcpu		: 2: PE2 /2以外:PE1						*/
/*--------------------------------------------------------------*/
/*	備考														*/
/*	　　　　使用周辺機能										*/
/*							制御タイマ：TAUD0_CH0				*/
/*							プリスケーラクロック CK3を選択		*/
/*--------------------------------------------------------------*/
void tsg31_init ( u4 u4_freq, u4 u4_deadtime_on, u4 u4_deadtime_off, u1 u1_logic, u1 u1_trigsrc, u1 u1_intlv , u1 u1_intdn , u1 u1_intcpu)
{
	u1	t_u1_intdn ;

	if ( u1_intdn > 31 ) { t_u1_intdn = 31 ; }
	else { t_u1_intdn = u1_intdn ; }


	/* PWM出力端子Hi-z	*/
	{		
		u4 t_PMSR1	= (((0x3F)<<8)<<16) | (0x3F<<8);				/* PM1_8  - PM1_13  入力モード	*/
		u4 t_PMCSR1	= (((0x3F)<<8)<<16) | (0x00<<8);				/* PMC1_8 - PMC1_13 ポートモード	*/

		PORT.PMSR1.UINT32	= t_PMSR1;
		PORT.PMCSR1.UINT32	= t_PMCSR1;	
	}
	
	/* タイマ停止		*/
	TSG31.TRG1.BIT.TT		= 1;				/* タイマ停止									*/
	
	/* 初期設定			*/
	TSG31.CTL0.BIT.DWD 		= 0;
	TSG31.CTL0.BIT.MD  		= 1;				/* 	HT-PWMモード								*/
	
//	TSG31.CTL1.UINT16		= 0;				/* パタン検出系禁止								*/
//	TSG31.CTL1.BIT.TBA0		= 1;				/* U相PWM同時アクティブ検出						*/
//  TSG31.CTL1.BIT.TBA1		= 1;				/* V相PWM同時アクティブ検出						*/
//	TSG31.CTL1.BIT.TBA2		= 1;				/* W相PWM同時アクティブ検出						*/
	
	TSG31.CTL3.BIT.RMC		= 0;				/* リロードモード								*/
	TSG31.CTL3.BIT.RIA		= 0;				/* TS30CTL4の設定に従う							*/
	
	/* リロード、割り込み間引き設定	*/
	switch(u1_trigsrc)
	{
		case 0:
			TSG31.CTL4.BIT.PRE	= 1 ;			/* 山リロード許可								*/
			TSG31.CTL4.BIT.VRE	= 1 ;			/* 谷リロード許可								*/
			TSG31.CTL4.BIT.PIE	= 0 ;			/* 山割り込み禁止								*/
			TSG31.CTL4.BIT.VIE	= 0 ;			/* 谷割り込み禁止								*/
			TSG31.CTL4.BIT.RCC	= 0;			/* 間引きなし									*/
		break;
		case 1:
			TSG31.CTL4.BIT.PRE	= 1 ;			/* 山リロード許可								*/
			TSG31.CTL4.BIT.VRE	= 0 ;			/* 谷リロード禁止								*/
			TSG31.CTL4.BIT.PIE	= 1 ;			/* 山割り込み許可								*/
			TSG31.CTL4.BIT.VIE	= 0 ;			/* 谷割り込み禁止								*/
			TSG31.CTL4.BIT.RCC	= t_u1_intdn;	/* 引数に従う									*/			
		break;
		case 2:
			TSG31.CTL4.BIT.PRE	= 0 ;			/* 山リロード禁止								*/
			TSG31.CTL4.BIT.VRE	= 1 ;			/* 谷リロード許可								*/
			TSG31.CTL4.BIT.PIE	= 0 ;			/* 山割り込み禁止								*/
			TSG31.CTL4.BIT.VIE	= 1 ;			/* 谷割り込み許可								*/
			TSG31.CTL4.BIT.RCC	= t_u1_intdn;	/* 引数に従う									*/						
		break;
		case 3:
			TSG31.CTL4.BIT.PRE	= 1 ;			/* 山リロード許可								*/
			TSG31.CTL4.BIT.VRE	= 1 ;			/* 谷リロード許可								*/
			TSG31.CTL4.BIT.PIE	= 1 ;			/* 山割り込み許可								*/
			TSG31.CTL4.BIT.VIE	= 1 ;			/* 谷割り込み許可								*/
			TSG31.CTL4.BIT.RCC	= 0;			/* 間引きなし									*/			
		break;
	}
	
	if ( 0 != TSG31.CTL4.BIT.RCC )
	{
		TSG31.CTL3.BIT.RIA		= 1;
	}
	else{}
	
	/* ADトリガ(TSG3nADTRG0)選択	*/
	// TSG3nDCMP0EをUPカウント時、TSG3nDCMP2EをDOWNカウント時に設定。
	// 遅れ設定：TSG3nDCMP0Eを0付近、TSG3nDCMP2EをTSnCMP0付近に設定。
	TSG31.CTL5.UINT16		= 0;
	TSG31.CTL5.BIT.AT07		= 1;				/* 18 ビットカウンタのダウンカウントと TSG3nDCMP2E の一致	*/
	TSG31.CTL5.BIT.AT02		= 1;				/* 18 ビットカウンタのアップカウントと TSG3nDCMP0E の一致	*/

	/* ADトリガ(TSG3nADTRG1)選択 ・・・　現状使用用途なし	*/
	// TSG3nDCMP0EをUPカウント時、TSG3nDCMP2EをDOWNカウント時に設定。
	// 遅れ設定：TSG3nDCMP0Eを0付近、TSG3nDCMP2EをTSnCMP0付近に設定。
	TSG31.CTL6.UINT16		= 0;
//	TSG31.CTL6.BIT.AT17		= 1;				/* 18 ビットカウンタのダウンカウントと TSG3nDCMP2E の一致	*/
//	TSG31.CTL6.BIT.AT12		= 1;				/* 18 ビットカウンタのアップカウントと TSG3nDCMP0E の一致	*/	
	
	TSG31.CTL7.UINT8		= 0;				/* SP-PWMモード用											*/
//	TSG31.CTL8.UINT8		= 0;				/* 120-DCモード用											*/
	TSG31.CTL8				= 0;				/* 120-DCモード用											*/
	
	TSG31.IOC0.UINT8		= 0;				/* TSG31IOC2書き換えよるTSG31O6-1の制御許可					*/
	TSG31.IOC1.UINT8		= 0;

	/* PWM論理設定	*/
	__u1_tsg31_logic	= u1_logic;

	if( 0 == u1_logic )
	{
		TSG31.IOC2.UINT16	&= ~(0x7E00);		/* アクティブ HI											*/
		TSG31.IOC2.UINT16 	&= ~(0x007E);		/* 出力バッファ LOW											*/
	}
	else
	{
		TSG31.IOC2.UINT16	|= (0x7E00);			/* アクティブ LOW											*/
		TSG31.IOC2.UINT16	|= (0x007E);			/* 出力バッファ HI											*/		
	}

	TSG31.IOC0.UINT8		= 0x7E;				/* TSG31IOC2書き換え無効									*/
	TSG31.IOC3.UINT32		= 0;				/* HT-PWMモードは、0固定									*/

	TSG31.STC.UINT16		= 0x3FE;			/* TSG31STR2フラグALLクリア									*/
	TSG31.OPT0.UINT8		= 0;				/* 	ソフトウェア制御禁止（ワンパルスは、別途設定）			*/
	TSG31.OPT1.UINT8		= 0;
	TSG31.OPT2.UINT8		= 0;				/* EMU2入力無効（TSG31出力)									*/

	
	TSG31.CMP0E				= 0;				/* 全コンペアレジスタ初期化									*/
	TSG31.CMP1E				= 0;
	TSG31.CMP2E				= 0;
	TSG31.CMP3E				= 0;
	TSG31.CMP4E				= 0;
	TSG31.CMP5E				= 0;
	TSG31.CMP6E				= 0;
	TSG31.CMP7E				= 0;
	TSG31.CMP8E				= 0;
	TSG31.CMP9E				= 0;
	TSG31.CMP10E			= 0;
	TSG31.CMP11E			= 0;
	TSG31.CMP12E			= 0;
	
	/* キャリア周波数設定	*/
	{
		double t_CMP0	= ((double)(__CLKC_HSB*1e6))/((double)u4_freq);
		if(t_CMP0>65535.)
		{
			TSG31.CMP0		= 65535;
		}
		else
		{
			TSG31.CMP0		= (u2)t_CMP0 ;
		}
	}

	
	/* デッドタイム設定		*/
	{
		double	t_dt_on 	= u4_deadtime_on * 1e-9;
		double	t_dt_off 	= u4_deadtime_off * 1e-9;
		u2	t_cnt_on		 = (u2)(t_dt_on  * ((double)(__CLKC_HSB*1e6)));
		u2	t_cnt_off		 = (u2)(t_dt_off * ((double)(__CLKC_HSB*1e6)));

		TSG31.DTPR.BIT.DTPR  = 0x1234;					/* プロテクトコード									*/
		TSG31.DTPR.BIT.DTCM	 = 0;						/* 書き換え許可										*/
		TSG31.DTC0W.UINT32	 = 0x12340000+t_cnt_on;		/* デットタイム設定									*/
		TSG31.DTC1W.UINT32	 = 0x12340000+t_cnt_off;	/* デットタイム設定									*/
		TSG31.DTPR.BIT.DTCM	 = 1;						/* 書き換え禁止										*/
	}

	TSG31.CMPW = TSG31.CMP0	>>1;						/* 0%	W Phase Output								*/
	TSG31.CMPV = TSG31.CMP0	>>1;						/* 0%	V Phase Output								*/
	TSG31.CMPU = TSG31.CMP0	>>1;						/* 0%	U Phase Output								*/

	/* 割り込みレベル設定	*/
	if ( 2 == u1_intcpu )
	{
		INTC2.EIBD168.BIT.GPID	= 1;					/* CPU2にバインド(山割り込み）						*/
		INTC2.EIBD168.BIT.PEID	= 2;					/* CPU2にバインド(山割り込み）						*/
		INTC2.EIBD169.BIT.GPID	= 1;					/* CPU2にバインド(谷割り込み）						*/
		INTC2.EIBD169.BIT.PEID	= 2;					/* CPU2にバインド(谷割り込み）						*/
	}
	else
	{
		INTC2.EIBD168.BIT.GPID	= 0;					/* CPU1にバインド(山割り込み）						*/
		INTC2.EIBD168.BIT.PEID	= 1;					/* CPU1にバインド(山割り込み）						*/
		INTC2.EIBD169.BIT.GPID	= 0;					/* CPU1にバインド(谷割り込み）						*/
		INTC2.EIBD169.BIT.PEID	= 1;					/* CPU1にバインド(谷割り込み）						*/	
	}
	
	if( u1_intlv < 16 )
	{
		/* 山割り込み	*/
		INTC2.EIC168.BIT.EIRF168	= 0 ;					/* 割り込みフラグクリア								*/
		INTC2.EIC168.BIT.EIP168		= u1_intlv ;			/* 割り込みレベル設定								*/
		INTC2.EIC168.BIT.EITB168	= 1;					/* テーブル参照方式									*/
//		INTC2.EIC168.BIT.EITB168	= 0;					/* 直接分岐方式										*/
		INTC2.EIC168.BIT.EIMK168	= 0 ;					/* 割り込みマスククリア								*/
				
		/* 谷割り込み	*/
		INTC2.EIC169.BIT.EIRF169	= 0 ;					/* 割り込みフラグクリア								*/
		INTC2.EIC169.BIT.EIP169		= u1_intlv ;			/* 割り込みレベル設定								*/
		INTC2.EIC169.BIT.EITB169	= 1;					/* テーブル参照方式									*/
//		INTC2.EIC169.BIT.EITB169	= 0;					/* 直接分岐方式										*/
		INTC2.EIC169.BIT.EIMK169	= 0 ;					/* 割り込みマスククリア								*/
	}
	else
	{
		INTC2.EIC168.BIT.EIMK168	= 1 ;					/* 割り込みマスク									*/
		INTC2.EIC169.BIT.EIMK169	= 1 ;					/* 割り込みマスク									*/
	}


	// ポート設定（第5兼用）
	PORT.PCR1_8.UINT32	= 0x00000034;					/* PORT1_8 TSG31O1 (UP)								*/
														/* PM,PIPC,PFCAE=1/PMC,PFCE,PFC=0					*/
														/* IO制御											*/
														
	PORT.PCR1_9.UINT32	= 0x00000034;			 		/* PORT1_9 TSG31O3 (VP)								*/
	PORT.PCR1_10.UINT32	= 0x00000034;					/* PORT1_10 TSG31O5 (WP)								*/
	PORT.PCR1_11.UINT32	= 0x00000034;					/* PORT1_11 TSG31O2 (UN)								*/
	PORT.PCR1_12.UINT32	= 0x00000034;					/* PORT1_12 TSG31O4 (VN)								*/
	PORT.PCR1_13.UINT32	= 0x00000034;					/* PORT1_13 TSG31O6 (WN)								*/

}

/*=============================================================
	TSG31タイマカウントスタート						   
===============================================================*/
void tsg31_start ( void )
{
	TSG31.TRG0.BIT.TS = 1;					/* TSG31起動							*/
}

/*=============================================================
	TSG31タイマカウントストップ						   
===============================================================*/
void tsg31_stop ( void )
{
	TSG31.TRG1.BIT.TT = 1;					/* TSG31停止							*/
}

/*=============================================================
	TSG31　PWM出力許可						   
===============================================================*/
void dpinv1_start ( void )
{
	u4 t_PMSR1	= (((0x3F)<<8)<<16) | (0x00<<8);
	u4 t_PMCSR1	= (((0x3F)<<8)<<16) | (0x3F<<8);

	PORT.PMCSR1.UINT32	= t_PMCSR1;				/* Control Mode:PWM output mode	P1_8~13	*/
	PORT.PMSR1.UINT32	= t_PMSR1;				/* Output:P1_8~13						*/
}

/*=============================================================
	TSG31　PWM出力停止						   
===============================================================*/
void dpinv1_stop ( void )
{
	u4 t_PMSR1	= (((0x3F)<<8)<<16) | (0x3F<<8);
	u4 t_PMCSR1	= (((0x3F)<<8)<<16) | (0x00<<8);

	PORT.PMSR1.UINT32	= t_PMSR1;					/* Input:P1_8~13						*/
	PORT.PMCSR1.UINT32	= t_PMCSR1;					/* Control Mode:Port mode	P1_8~13		*/
}

/*=============================================================
	TSG31　ADサンプリングディレイ設定						   
	引数：
	s4 delay_ns		:ADサンプルディレイ[ns]
	// PWM周期可変なのでここでは計算のみ。	
===============================================================*/
void dpinv1_set_addelay ( s4 delay_ns )
{
	s4	t_delay = __CLKC_HSB * delay_ns;		// LSB=1e-3
	s4	t_cnt	= (2 * t_delay) / 1000;		    // TSG31は2倍速カウントのため。	
	
	_S2_DPINV1_ADDLAY	= (s2)t_cnt;
}

/*==============================================================*/
/*	TSG31　PWM変調率＆キャリア周波数設定（浮動小数Ver）			*/
/*	引数：														*/
/*	float f_mu		:U相変調率 -1.0～+1.0						*/
/*	float f_mv		:V相変調率 -1.0～+1.0						*/
/*	float f_mw		:W相変調率 -1.0～+1.0						*/
/*	float f_freq	:キャリア周波数[Hz]		1250～80000			*/
/*																*/
/*==============================================================*/
/*	変調率　1の時にデットタイムが残らないバージョン				*/
/*			デットタイム補償には適さない						*/
/*==============================================================*/
void dpinv1_setuvwf_f_V1 ( float f_mu, float f_mv, float f_mw, float f_freq )
{
	u4 t_cnt_freq;						// period
	u4 t_cnt_td;						// Dead time
	u4 t_cnt_duty_100;					// 100%duty
	u4 t_cnt_duty_50;					// 50% duty
	s4 t_cnt_mu, t_cnt_mv, t_cnt_mw;
	u4 t_DCMP0, t_DCMP2;				// AD sample delay

	// 周期計算
	t_cnt_freq		= (u4)( (__CLKC_HSB*1e6) / f_freq );						// period
	t_cnt_freq		= ( t_cnt_freq > 64000 )?( 64000 ):(t_cnt_freq);
	t_cnt_freq		= ( t_cnt_freq < 1000 ) ?( 1000  ):(t_cnt_freq);

	// ワンパルスモード取得			
	__u1_read_tsg31_opt0 = TSG31.OPT0.UINT8 & 0x40 ;

	// デッドタイム
	t_cnt_td		= ( TSG31.DTC0W.BIT.DTC0 + TSG31.DTC1W.BIT.DTC1 ) & 0xffff;
	
	// Duty基準
	t_cnt_duty_100	= t_cnt_freq + t_cnt_td;	// 100% duty
	t_cnt_duty_50	= t_cnt_duty_100>>1;		// 50% duty

	// ADディレイ設定
	if( _S2_DPINV1_ADDLAY >= 0 )
	{
		// x>0:遅れ設定
		t_DCMP0	= _S2_DPINV1_ADDLAY + t_cnt_td;
		t_DCMP2	= t_cnt_freq - _S2_DPINV1_ADDLAY;
	}
	else
	{
		// x<0:進み設定:不可
		t_DCMP0	= t_cnt_td;
		t_DCMP2	= t_cnt_freq;
	}
	
	if( f_mu >= 1.0 )
	{
		if ( 0 == __u1_read_tsg31_opt0 )
		{
			t_cnt_mu	= 0;
		}
		else
		{
			t_cnt_mu	= __u4_cnt_tsg31_1puls_offset;
		}
	}
	else if( f_mu <= -1.0 )
	{
		if ( 0 == __u1_read_tsg31_opt0 )
		{
			t_cnt_mu	= t_cnt_duty_100 - 2;
		}
		else
		{
			t_cnt_mu	= t_cnt_duty_100 - __u4_cnt_tsg31_1puls_offset;
		}
	}
	else
	{
		t_cnt_mu	= t_cnt_duty_50*f_mu;
		t_cnt_mu	= t_cnt_duty_50 - t_cnt_mu;
	}

	if( f_mv >= 1.0 )
	{
		if ( 0 == __u1_read_tsg31_opt0 )
		{
			t_cnt_mv	= 0;
		}
		else
		{
			t_cnt_mv	= __u4_cnt_tsg31_1puls_offset;
		}
	}
	else if( f_mv <= -1.0 )
	{
		if ( 0 == __u1_read_tsg31_opt0 )
		{
			t_cnt_mv	= t_cnt_duty_100 - 2;
		}
		else
		{
			t_cnt_mv	= t_cnt_duty_100 - __u4_cnt_tsg31_1puls_offset ;
		}
	}
	else
	{
		t_cnt_mv	= t_cnt_duty_50*f_mv;
		t_cnt_mv	= t_cnt_duty_50 - t_cnt_mv;
	}
	
	if( f_mw >=1.0 )
	{
		if ( 0 == __u1_read_tsg31_opt0 )
		{
			t_cnt_mw	= 0;
		}
		else
		{
			t_cnt_mw	= __u4_cnt_tsg31_1puls_offset;
		}
	}
	else if( f_mw <= -1.0 )
	{
		if ( 0 == __u1_read_tsg31_opt0 )
		{
			t_cnt_mw	= t_cnt_duty_100 - 2;
		}
		else
		{
			t_cnt_mw	= t_cnt_duty_100 - __u4_cnt_tsg31_1puls_offset ;
		}
	}
	else
	{
		t_cnt_mw	= t_cnt_duty_50 * f_mw;
		t_cnt_mw	= t_cnt_duty_50 - t_cnt_mw;
	}

	TSG31.OPT0.UINT8		= 0;						// 1pulse mode 解除(次のリードタイミングからHT-PWM
		
	TSG31.CMP0				= t_cnt_freq;				// キャリア周期
	TSG31.DCMP0W.BIT.DCMP0	= t_DCMP0 & 0xfffe;			// AD sample delay
	TSG31.DCMP2				= t_DCMP2 & 0xfffe;			// AD sample delay
	TSG31.CMPV				= t_cnt_mv;					// V相変調率
	TSG31.CMPW				= t_cnt_mw;					// W相変調率
	TSG31.CMPU				= t_cnt_mu;					// U相変調率　※ここの書き込みでリロード発生なので最後に更新。

}

/*==============================================================*/
/*	TSG31　PWM変調率＆キャリア周波数設定（浮動小数Ver）			*/
/*	引数：														*/
/*	float f_mu		:U相変調率 -1.0～+1.0						*/
/*	float f_mv		:V相変調率 -1.0～+1.0						*/
/*	float f_mw		:W相変調率 -1.0～+1.0						*/
/*	float f_freq	:キャリア周波数[Hz]		1250～80000			*/
/*																*/
/*==============================================================*/
/*	変調率　1の時にデットタイムが残るバージョン					*/
/*==============================================================*/
void dpinv1_setuvwf_f_V2 ( float f_mu, float f_mv, float f_mw, float f_freq )
{
	u4 t_cnt_freq;						// period
	u4 t_cnt_td;						// Dead time
	u4 t_cnt_duty_100;					// 100%duty
	u4 t_cnt_duty_50;					// 50% duty
	s4 t_cnt_mu, t_cnt_mv, t_cnt_mw;
	u4 t_DCMP0, t_DCMP2;				// AD sample delay

	// 周期計算
	t_cnt_freq		= (u4)( (__CLKC_HSB*1e6) / f_freq );						// period
	t_cnt_freq		= ( t_cnt_freq > 64000 )?( 64000 ):(t_cnt_freq);
	t_cnt_freq		= ( t_cnt_freq < 1000 ) ?( 1000  ):(t_cnt_freq);

	// ワンパルスモード取得			
	__u1_read_tsg31_opt0 = TSG31.OPT0.UINT8 & 0x40 ;

	// デッドタイム
	t_cnt_td		= ( TSG31.DTC0W.BIT.DTC0 + TSG31.DTC1W.BIT.DTC1 ) & 0xffff;
	
	// Duty基準
	t_cnt_duty_100	= t_cnt_freq + t_cnt_td;	// 100% duty
	t_cnt_duty_50	= t_cnt_duty_100>>1;		// 50% duty

	// ADディレイ設定
	if( _S2_DPINV1_ADDLAY >= 0 )
	{
		// x>0:遅れ設定
		t_DCMP0	= _S2_DPINV1_ADDLAY + t_cnt_td;
		t_DCMP2	= t_cnt_freq - _S2_DPINV1_ADDLAY;
	}
	else
	{
		// x<0:進み設定:不可
		t_DCMP0	= t_cnt_td;
		t_DCMP2	= t_cnt_freq;
	}
	
	if( f_mu >= 1.0 )
	{
		if ( 0 == __u1_read_tsg31_opt0 )
		{
			t_cnt_mu	= 0;
		}
		else
		{
			t_cnt_mu	= __u4_cnt_tsg31_1puls_offset;
		}
	}
	else if( f_mu <= -1.0 )
	{
		if ( 0 == __u1_read_tsg31_opt0 )
		{
			t_cnt_mu	= t_cnt_duty_100 - 2;
		}
		else
		{
			t_cnt_mu	= t_cnt_duty_100 - __u4_cnt_tsg31_1puls_offset;
		}
	}
	else
	{
		t_cnt_mu	= ( t_cnt_freq>>1 )*f_mu;
		t_cnt_mu	= t_cnt_duty_50 - t_cnt_mu;
	}

	if( f_mv >= 1.0 )
	{
		if ( 0 == __u1_read_tsg31_opt0 )
		{
			t_cnt_mv	= 0;
		}
		else
		{
			t_cnt_mv	= __u4_cnt_tsg31_1puls_offset;
		}
	}
	else if( f_mv <= -1.0 )
	{
		if ( 0 == __u1_read_tsg31_opt0 )
		{
			t_cnt_mv	= t_cnt_duty_100 - 2;
		}
		else
		{
			t_cnt_mv	= t_cnt_duty_100 - __u4_cnt_tsg31_1puls_offset ;
		}
	}
	else
	{
		t_cnt_mv	= ( t_cnt_freq>>1 )*f_mv;
		t_cnt_mv	= t_cnt_duty_50 - t_cnt_mv;
	}
	
	if( f_mw >=1.0 )
	{
		if ( 0 == __u1_read_tsg31_opt0 )
		{
			t_cnt_mw	= 0;
		}
		else
		{
			t_cnt_mw	= __u4_cnt_tsg31_1puls_offset;
		}
	}
	else if( f_mw <= -1.0 )
	{
		if ( 0 == __u1_read_tsg31_opt0 )
		{
			t_cnt_mw	= t_cnt_duty_100 - 2;
		}
		else
		{
			t_cnt_mw	= t_cnt_duty_100 - __u4_cnt_tsg31_1puls_offset ;
		}
	}
	else
	{
		t_cnt_mw	= ( t_cnt_freq>>1 ) * f_mw;
		t_cnt_mw	= t_cnt_duty_50 - t_cnt_mw;
	}

	TSG31.OPT0.UINT8		= 0;						// 1pulse mode 解除(次のリードタイミングからHT-PWM
		
	TSG31.CMP0				= t_cnt_freq;				// キャリア周期
	TSG31.DCMP0W.BIT.DCMP0	= t_DCMP0 & 0xfffe;			// AD sample delay
	TSG31.DCMP2				= t_DCMP2 & 0xfffe;			// AD sample delay
	TSG31.CMPV				= t_cnt_mv;					// V相変調率
	TSG31.CMPW				= t_cnt_mw;					// W相変調率
	TSG31.CMPU				= t_cnt_mu;					// U相変調率　※ここの書き込みでリロード発生なので最後に更新。

}


/*==============================================================*/
/*	TSG31　PWM変調率＆キャリア周波数設定（浮動小数Ver）			*/
/*	引数：														*/
/*	float f_mu		:U相変調率 -1.0～+1.0						*/
/*	float f_mv		:V相変調率 -1.0～+1.0						*/
/*	float f_mw		:W相変調率 -1.0～+1.0						*/
/*	float f_freq	:キャリア周波数[Hz]		1250～80000			*/
/*																*/
/*==============================================================*/
/*	変調率　1の時にデットタイムが残らないバージョン				*/
/*		デットタイムがいらなくなった時にDutyの傾きを変える		*/
/*==============================================================*/
void dpinv1_setuvwf_f_V3 ( float f_mu, float f_mv, float f_mw, float f_freq )
{
	u4 t_cnt_freq;						// period
	u4 t_cnt_td;						// Dead time
	u4 t_cnt_duty_100;					// 100%duty
	u4 t_cnt_duty_50;					// 50% duty
	s4 t_cnt_mu, t_cnt_mv, t_cnt_mw;
	u4 t_DCMP0, t_DCMP2;				// AD sample delay

	f4	f4_m_dt;
	f4	f4_m_non_dt_plus;				// デットタイムが要らなくなる変調率(+側）
	f4	f4_m_non_dt_minus;				// デットタイムが要らなくなる変調率(-側）
	f4	f4_dt_cnt_raito;				// デットタイムが要らなくなった後のDuty傾き
	f4	f4_mu_cnt_add;					// U相補正値
	f4	f4_mv_cnt_add;					// V相補正値
	f4	f4_mw_cnt_add;					// W相補正値

	// 周期計算
	t_cnt_freq		= (u4)( (__CLKC_HSB*1e6) / f_freq );						// period
	t_cnt_freq		= ( t_cnt_freq > 64000 )?( 64000 ):(t_cnt_freq);
	t_cnt_freq		= ( t_cnt_freq < 1000 ) ?( 1000  ):(t_cnt_freq);

	__u1_read_tsg31_opt0 = TSG31.OPT0.UINT8 & 0x40 ;

	// デッドタイム
	t_cnt_td		= ( TSG31.DTC0W.BIT.DTC0 + TSG31.DTC1W.BIT.DTC1 ) & 0xffff;
	
	// Duty基準
	t_cnt_duty_100	= t_cnt_freq + t_cnt_td;	// 100% duty
	t_cnt_duty_50	= t_cnt_duty_100>>1;		// 50% duty

//デットタイムが必要なくなった後の加算傾き
	f4_m_dt		 = ((f4)(t_cnt_td)/(f4)(t_cnt_freq));
	//デットタイムが必要なくなる変調率	
	f4_m_non_dt_plus = 1.0F - f4_m_dt ;
	f4_m_non_dt_minus = f4_m_dt -1.0F ;
	
	//デットタイム分上乗せか傾き(DTC0W = DTC1Wが前提）
	f4_dt_cnt_raito   = (f4)(t_cnt_td>>1)/(f4_m_dt) ;


	// ADディレイ設定
	if( _S2_DPINV1_ADDLAY >= 0 )
	{
		// x>0:遅れ設定
		t_DCMP0	= _S2_DPINV1_ADDLAY + t_cnt_td ;
		t_DCMP2	= t_cnt_freq - _S2_DPINV1_ADDLAY  ;
	}
	else
	{
		// x<0:進み設定:不可
		t_DCMP0	= t_cnt_td;
		t_DCMP2	= t_cnt_freq;
	}

	if( f_mu >= 1.0 )
	{
		if ( 0 == __u1_read_tsg31_opt0 )
		{
			t_cnt_mu	= 0;
		}
		else
		{
			t_cnt_mu	= __u4_cnt_tsg31_1puls_offset;
		}
	}
	else if( f_mu <= -1.0 )
	{
		if ( 0 == __u1_read_tsg31_opt0 )
		{
			t_cnt_mu	= t_cnt_duty_100 - 2;
		}
		else
		{
			t_cnt_mu	= t_cnt_duty_100 - __u4_cnt_tsg31_1puls_offset;
		}
	}
	else
	{
		if ( f_mu > f4_m_non_dt_plus )
		{
			f4_mu_cnt_add = f4_dt_cnt_raito * ( f_mu -  f4_m_non_dt_plus) ;  
			t_cnt_mu	= ( t_cnt_freq>>1 )*f_mu + (s4)(f4_mu_cnt_add);		
			t_cnt_mu	= t_cnt_duty_50 - t_cnt_mu;
		}
		else if ( f_mu < f4_m_non_dt_minus )
		{
			f4_mu_cnt_add = f4_dt_cnt_raito * ( f_mu -  f4_m_non_dt_minus) ;  
			t_cnt_mu	= ( t_cnt_freq>>1 )*f_mu + (s4)(f4_mu_cnt_add);		
			t_cnt_mu	= t_cnt_duty_50 - t_cnt_mu;
		}
		else
		{
			t_cnt_mu	= ( t_cnt_freq>>1 )*f_mu;		
			t_cnt_mu	= t_cnt_duty_50 - t_cnt_mu;
		}
	}

	if( f_mv >= 1.0 )
	{
		if ( 0 == __u1_read_tsg31_opt0 )
		{
			t_cnt_mv	= 0;
		}
		else
		{
			t_cnt_mv	= __u4_cnt_tsg31_1puls_offset;
		}
	}
	else if( f_mv <= -1.0 )
	{
		if ( 0 == __u1_read_tsg31_opt0 )
		{
			t_cnt_mv	= t_cnt_duty_100 - 2;
		}
		else
		{
			t_cnt_mv	= t_cnt_duty_100 - __u4_cnt_tsg31_1puls_offset ;
		}
	}
	else
	{
		if ( f_mv > f4_m_non_dt_plus )
		{
			f4_mv_cnt_add = f4_dt_cnt_raito * ( f_mv -  f4_m_non_dt_plus) ;  
			t_cnt_mv	= ( t_cnt_freq>>1 )*f_mv + (s4)(f4_mv_cnt_add);		
			t_cnt_mv	= t_cnt_duty_50 - t_cnt_mv;
		}
		else if ( f_mv < f4_m_non_dt_minus )
		{
			f4_mv_cnt_add = f4_dt_cnt_raito * ( f_mv -  f4_m_non_dt_minus) ;  
			t_cnt_mv	= ( t_cnt_freq>>1 )*f_mv + (s4)(f4_mv_cnt_add);		
			t_cnt_mv	= t_cnt_duty_50 - t_cnt_mv;
		}
		else
		{
			t_cnt_mv	= ( t_cnt_freq>>1 )*f_mv;
			t_cnt_mv	= t_cnt_duty_50 - t_cnt_mv;
		}		
	}
	
	if( f_mw >=1.0 )
	{
		if ( 0 == __u1_read_tsg31_opt0 )
		{
			t_cnt_mw	= 0;
		}
		else
		{
			t_cnt_mw	= __u4_cnt_tsg31_1puls_offset;
		}
	}
	else if( f_mw <= -1.0 )
	{
		if ( 0 == __u1_read_tsg31_opt0 )
		{
			t_cnt_mw	= t_cnt_duty_100 - 2;
		}
		else
		{
			t_cnt_mw	= t_cnt_duty_100 - __u4_cnt_tsg31_1puls_offset ;
		}
	}
	else
	{
		if ( f_mw > f4_m_non_dt_plus )
		{
			f4_mw_cnt_add = f4_dt_cnt_raito * ( f_mw -  f4_m_non_dt_plus) ;  
			t_cnt_mw	= ( t_cnt_freq>>1 )*f_mw + (s4)(f4_mw_cnt_add);		
			t_cnt_mw	= t_cnt_duty_50 - t_cnt_mw;
		}
		else if ( f_mw < f4_m_non_dt_minus )
		{
			f4_mw_cnt_add = f4_dt_cnt_raito * ( f_mw -  f4_m_non_dt_minus) ;  
			t_cnt_mw	= ( t_cnt_freq>>1 )*f_mw + (s4)(f4_mw_cnt_add);		
			t_cnt_mw	= t_cnt_duty_50 - t_cnt_mw;
		}
		else
		{
			t_cnt_mw	= ( t_cnt_freq>>1 ) * f_mw;
			t_cnt_mw	= t_cnt_duty_50 - t_cnt_mw;
		}		
	}
	
	f_mu_old2	=	f_mu;
	f_mv_old2	=	f_mv;
	f_mw_old2	= 	f_mw;

	TSG31.OPT0.UINT8		= 0;						// 1pulse mode 解除(次のリードタイミングからHT-PWM
	
	TSG31.CMP0				= t_cnt_freq;				// キャリア周期
	TSG31.DCMP0W.BIT.DCMP0	= t_DCMP0 & 0xfffe;			// AD sample delay
	TSG31.DCMP2				= t_DCMP2 & 0xfffe;			// AD sample delay
	TSG31.CMPV				= t_cnt_mv;					// V相変調率
	TSG31.CMPW				= t_cnt_mw;					// W相変調率
	TSG31.CMPU				= t_cnt_mu;					// U相変調率　※ここの書き込みでリロード発生なので最後に更新。

}

/*=============================================================
	TSG31　外部GB設定						   
	引数：
	u1 u1_mode		:検出エッジ	1:↑エッジ　2:↓エッジ	それ以外：なし
================================================================*/

void dpinv1_extgb_init(u1 u1_mode)
{
	// ポート設定
	#if TSG31_GB_P3_4_USE
		PORT.PCR3_4.UINT32	= 0x00000055;				/* PORT3_4											*/
														/* PMC,PM,PFCAE,PFC=1/PIPC,PFCE=0					*/
														/* PM制御											*/	
	#else
	PORT.PCR1_14.UINT32	= 0x00000055;					/* PORT1_14											*/
														/* PMC,PM,PFCAE,PFC=1/PIPC,PFCE=0					*/
														/* PM制御											*/
	#endif
	switch(u1_mode)
	{
		case 1:
			PIC1A.HIZCEN3.UINT8		= 0x01;				// ESO3 端子入力でHi-Z 出力制御許可(ESO3入力をTAPA3THASINに接続）
			TAPA3.CTL0.UINT16		= 0;				// リセット値上書き
			TAPA3.CTL0.BIT.DCM		= 1;				// アクティブレベルの場合、OPHT0操作無効
			TAPA3.CTL0.BIT.DCP		= 1;				// 立ち上がりエッジ有効
		break;
		case 2:
			PIC1A.HIZCEN3.UINT8		= 0x01;				// ESO3 端子入力でHi-Z 出力制御許可(ESO3入力をTAPA3THASINに接続）
			TAPA3.CTL0.UINT16		= 0;				// リセット値上書き
			TAPA3.CTL0.BIT.DCM		= 1;				// アクティブレベルの場合、OPHT0操作無効
			TAPA3.CTL0.BIT.DCN		= 1;				// 立ち下がりエッジ有効
		break;
		default:
			PIC1A.HIZCEN3.UINT8		= 0x00;				// なし(ESO3入力をTAPA2THASINに接続しない）
			TAPA3.CTL0.UINT16		= 0;				// TAPATHASINのエッジ検出なし			
			return;
		break;
	}

	TAPA3.ACWE.UINT8	= 1;							// TAPAnACTS/TAPAnACTTの書き込みを許可
	TAPA3.ACTS.UINT8	= 1;							// 非同期制御スタート・トリガ・ビットセット（Hi-Z制御開始）
//	TAPA3.ACTT.UINT8	= 1;							// 非同期制御ストップ・トリガ・ビットセット（Hi-Z制御禁止）

	TAPA3.OPHT.UINT8	= 1;							// Hi-Z 制御信号のストップ・トリガ（Hi-Z解除）
//	TAPA3.OPHS.UINT8	= 1;							// Hi-Z 制御信号のスタート・トリガ（Hi-Zにする）
	//TAPA3自体はTAP3THZOUT0(TSG31O1-O6)を制御
}

/*=============================================================
	TSG31　外部GBステータス読み込み						   
	戻り値：
	u1 		:0検出なし　1:検出あり
================================================================*/
u1 dpinv1_extgb_status( void )
{
	if( 0 != ( TAPA3.FLG.UINT16 & 0x0700 ))						// TPAnHOFxが0以外
	{
		return(1);
	}
	else
	{
		return(0);
	}
}

/*=============================================================
	TSG31　外部GBクリア						   
================================================================*/
void dpinv1_extgb_clr( void )
{
	TAPA3.OPHT.UINT8	= 1;
}
/*=============================================================
	TSG31 山割り込み禁止					   
================================================================*/
void tsg31_111int_stop ( void )
{
	//山割り込み、山リロード禁止
	TSG31.CTL4.BIT.PRE	= 0 ;			/* 山リロード許可								*/
	TSG31.CTL4.BIT.PIE	= 0 ;			/* 山割り込み禁止								*/

	//山割り込み時のADトリガを禁止する
	TSG31.CTL5.BIT.AT07		= 0;				/* 18 ビットカウンタのダウンカウントと TSG3nDCMP2E の一致	*/
	TSG31.CTL6.BIT.AT17		= 0;				/* 18 ビットカウンタのダウンカウントと TSG3nDCMP2E の一致	*/
}

/*=============================================================
	TSG31　ワンパルスパターン						   
================================================================*/
void dpinv1_setuvw_1pulse ( u1 pattarn )
{
	TSG31.OPT1.UINT8	= pattarn & 0x07;						/* パターン設定		*/
	TSG31.OPT0.UINT8	= 0x40;									/* 1Pulseモード設定	*/
}

/*=============================================================
	TSG31　ゲートコントロール				
u1 port		:IO設定するポートを選択。0でポート、1でPWM。	6bit　MSB<-WN WP VN VP UN UP->LSB
u1 pattarn	:IOに設定したポートのON/OFFを設定。1でゲートON。6bit　MSB<-WN WP VN VP UN UP->LSB

!!　従来とポートの並びが違うので、ライブラリで合わせる　!!

================================================================*/

union union_gatectrl
{
	unsigned char  UINT8;                              /*  8-bit Access    */
    struct                                             /*                  */
     { 
     	unsigned char up:1;
  		unsigned char un:1;
    	unsigned char vp:1;
  		unsigned char vn:1;
  		unsigned char wp:1;
   		unsigned char wn:1;
    	unsigned char res:2 ;
      } input;
    struct                                             /*                  */
     { 
     	unsigned char up:1;
  		unsigned char vp:1;
    	unsigned char wp:1;
  		unsigned char un:1;
  		unsigned char vn:1;
   		unsigned char wn:1;
    	unsigned char res:2 ;
      } output;
       
} ;   

void dpinv1_gatectrl ( u1 port, u1 pattern )
{
	union union_gatectrl u1_input , u1_output;
	u4 t_PSR1;
	u4 t_PMCSR1;

/* 	ゲートコントロール */
	u1_input.UINT8 = pattern ;
	//入れ替え作業
	u1_output.output.up = u1_input.input.up;
	u1_output.output.un = u1_input.input.un;
	u1_output.output.vp = u1_input.input.vp;
	u1_output.output.vn = u1_input.input.vn;
	u1_output.output.wp = u1_input.input.wp;
	u1_output.output.wn = u1_input.input.wn;
	
	t_PSR1		= (u4)( u1_output.UINT8 << 8 ) ;	
	
	if ( 0 == __u1_tsg31_logic ) 					//アクティブHI
	{
		t_PSR1		= ( t_PSR1 ) & 0x3F00;		// 正論理
	}
	else
	{
		t_PSR1		= ( ~t_PSR1 )& 0x3F00;		// 負論理
	}

/* PMCコントロール		*/
	u1_input.UINT8 = port ;
	//入れ替え作業
	u1_output.output.up = u1_input.input.up;
	u1_output.output.un = u1_input.input.un;
	u1_output.output.vp = u1_input.input.vp;
	u1_output.output.vn = u1_input.input.vn;
	u1_output.output.wp = u1_input.input.wp;
	u1_output.output.wn = u1_input.input.wn;

	t_PMCSR1	= (u4)( u1_output.UINT8 << 8 ) ;
	t_PMCSR1	= t_PMCSR1 & 0xFC;

	t_PSR1		= ((0x3F00)<<16) | (t_PSR1);
	t_PMCSR1	= ((0x3F00)<<16) | (t_PMCSR1);

	PORT.PSR1.UINT32	= t_PSR1;
	PORT.PMCSR1.UINT32	= t_PMCSR1;
}

/*=============================================================
	TSG31　端子再設定
	引数：
	s4 delay_ns		:ADサンプルディレイ[ns]
	// PWM周期可変なのでここでは計算のみ。	
===============================================================*/
void re_set_port_for_conv(void)
{
	PORT.PCR1_8.UINT32	= 0x00000034;					/* PORT1_8 TSG31O1 (UP)								*/
														/* PM,PIPC,PFCAE=1/PMC,PFCE,PFC=0					*/
														/* IO制御											*/
														
	PORT.PCR1_9.UINT32	= 0x00010010;			 		/* PORT1_9  入力端子設定							*/
	PORT.PCR1_10.UINT32	= 0x00010010;					/* PORT1_10 入力端子設定							*/
	PORT.PCR1_11.UINT32	= 0x00010010;					/* PORT1_11 入力端子設定							*/
	PORT.PCR1_12.UINT32	= 0x00010010;					/* PORT1_12 入力端子設定							*/
	PORT.PCR1_13.UINT32	= 0x00010010;					/* PORT1_13 入力端子設定							*/
}


/*=============================================================
	TGG31O1　PWM出力許可						   
===============================================================*/
void dpconv1_start ( void )
{
	u4 t_PMSR1	= (((0x01)<<8)<<16) | (0x00<<8);
	u4 t_PMCSR1	= (((0x01)<<8)<<16) | (0x3F<<8);

	PORT.PMCSR1.UINT32	= t_PMCSR1;				/* Control Mode:PWM output mode	P1_8	*/
	PORT.PMSR1.UINT32	= t_PMSR1;				/* Output:P1_							*/
}

/*=============================================================
	TSG31　PWM出力停止						   
===============================================================*/
void dpconv1_stop ( void )
{
	u4 t_PMSR1	= (((0x01)<<8)<<16) | (0x3F<<8);
	u4 t_PMCSR1	= (((0x01)<<8)<<16) | (0x00<<8);

	PORT.PMSR1.UINT32	= t_PMSR1;					/* Input:P1_8							*/
	PORT.PMCSR1.UINT32	= t_PMCSR1;					/* Control Mode:Port mode	P1_8		*/
}

/*=============================================================
	TSG31O0端子キャリア（CLK)出力				   
===============================================================*/
void	tsg31_TSG31O0_out(void)
{
	PORT.PCR1_14.UINT32	= 0x00000044;					/* POR1_14 TSG30O0 (キャリアCLK)								*/
}

/*==============================================================*/
/*	TSG31　キャリア周波数設定（浮動小数Ver）					*/
/*	引数：														*/
/*	float f_freq	:キャリア周波数[Hz]		1250～80000			*/
/*																*/
/*==============================================================*/
/* 注意）　キャリア周波数のみ変更する為、UVWコンペア値は		*/
/*		変更する（前回変調率）。また、1パルスモードは、解除しない	*/
/*==============================================================*/

void dpinv1_set_freq ( float f_freq )
{
	u4 t_cnt_freq;						// period
	u4 t_cnt_td;						// Dead time
	u4 t_cnt_duty_100;					// 100%duty
	u4 t_cnt_duty_50;					// 50% duty
	s4 t_cnt_mu, t_cnt_mv, t_cnt_mw;
	u4 t_DCMP0, t_DCMP2;				// AD sample delay

	f4	f4_m_dt;
	f4	f4_m_non_dt_plus;				// デットタイムが要らなくなる変調率(+側）
	f4	f4_m_non_dt_minus;				// デットタイムが要らなくなる変調率(-側）
	f4	f4_dt_cnt_raito;				// デットタイムが要らなくなった後のDuty傾き
	f4	f4_mu_cnt_add;					// U相補正値
	f4	f4_mv_cnt_add;					// V相補正値
	f4	f4_mw_cnt_add;					// W相補正値

	// 周期計算
	t_cnt_freq		= (u4)( (__CLKC_HSB*1e6) / f_freq );						// period
	t_cnt_freq		= ( t_cnt_freq > 64000 )?( 64000 ):(t_cnt_freq);
	t_cnt_freq		= ( t_cnt_freq < 1000 ) ?( 1000  ):(t_cnt_freq);

	// デッドタイム
	t_cnt_td		= ( TSG31.DTC0W.BIT.DTC0 + TSG31.DTC1W.BIT.DTC1 ) & 0xffff;
	
	// Duty基準
	t_cnt_duty_100	= t_cnt_freq + t_cnt_td;	// 100% duty
	t_cnt_duty_50	= t_cnt_duty_100>>1;		// 50% duty

//デットタイムが必要なくなった後の加算傾き
	f4_m_dt		 = ((f4)(t_cnt_td)/(f4)(t_cnt_freq));
	//デットタイムが必要なくなる変調率	
	f4_m_non_dt_plus = 1.0F - f4_m_dt ;
	f4_m_non_dt_minus = f4_m_dt -1.0F ;
	
	//デットタイム分上乗せか傾き(DTC0W = DTC1Wが前提）
	f4_dt_cnt_raito   = (f4)(t_cnt_td>>1)/(f4_m_dt) ;


	// ADディレイ設定
	if( _S2_DPINV1_ADDLAY >= 0 )
	{
		// x>0:遅れ設定
		t_DCMP0	= _S2_DPINV1_ADDLAY + t_cnt_td;
		t_DCMP2	= t_cnt_freq - _S2_DPINV1_ADDLAY;
	}
	else
	{
		// x<0:進み設定:不可
		t_DCMP0	= t_cnt_td;
		t_DCMP2	= t_cnt_freq;
	}

	if( f_mu_old2 >= 1.0 )
	{
		t_cnt_mu	= 0;
	}
	else if( f_mu_old2 <= -1.0 )
	{
		t_cnt_mu	= t_cnt_duty_100 - 2;
	}
	else
	{
		if ( f_mu_old2 > f4_m_non_dt_plus )
		{
			f4_mu_cnt_add = f4_dt_cnt_raito * ( f_mu_old2 -  f4_m_non_dt_plus) ;  
			t_cnt_mu	= ( t_cnt_freq>>1 )*f_mu_old2 + (s4)(f4_mu_cnt_add);		
			t_cnt_mu	= t_cnt_duty_50 - t_cnt_mu;
		}
		else if ( f_mu_old2 < f4_m_non_dt_minus )
		{
			f4_mu_cnt_add = f4_dt_cnt_raito * ( f_mu_old2 -  f4_m_non_dt_minus) ;  
			t_cnt_mu	= ( t_cnt_freq>>1 )*f_mu_old2 + (s4)(f4_mu_cnt_add);		
			t_cnt_mu	= t_cnt_duty_50 - t_cnt_mu;
		}
		else
		{
			t_cnt_mu	= ( t_cnt_freq>>1 )*f_mu_old2;		
			t_cnt_mu	= t_cnt_duty_50 - t_cnt_mu;
		}
	}

	if( f_mv_old2 >= 1.0 )
	{
		t_cnt_mv	= 0;
	}
	else if( f_mv_old2 <= -1.0 )
	{
		t_cnt_mv	= t_cnt_duty_100 - 2;
	}
	else
	{
		if ( f_mv_old2 > f4_m_non_dt_plus )
		{
			f4_mv_cnt_add = f4_dt_cnt_raito * ( f_mv_old2 -  f4_m_non_dt_plus) ;  
			t_cnt_mv	= ( t_cnt_freq>>1 )*f_mv_old2 + (s4)(f4_mv_cnt_add);		
			t_cnt_mv	= t_cnt_duty_50 - t_cnt_mv;
		}
		else if ( f_mv_old2 < f4_m_non_dt_minus )
		{
			f4_mv_cnt_add = f4_dt_cnt_raito * ( f_mv_old2 -  f4_m_non_dt_minus) ;  
			t_cnt_mv	= ( t_cnt_freq>>1 )*f_mv_old2 + (s4)(f4_mv_cnt_add);		
			t_cnt_mv	= t_cnt_duty_50 - t_cnt_mv;
		}
		else
		{
			t_cnt_mv	= ( t_cnt_freq>>1 )*f_mv_old2;
			t_cnt_mv	= t_cnt_duty_50 - t_cnt_mv;
		}		
	}
	
	if( f_mw_old2 >=1.0 )
	{
		t_cnt_mw	= 0;
	}
	else if( f_mw_old2 <= -1.0 )
	{
		t_cnt_mw	= t_cnt_duty_100 - 2;
	}
	else
	{
		if ( f_mw_old2 > f4_m_non_dt_plus )
		{
			f4_mw_cnt_add = f4_dt_cnt_raito * ( f_mw_old2 -  f4_m_non_dt_plus) ;  
			t_cnt_mw	= ( t_cnt_freq>>1 )*f_mw_old2 + (s4)(f4_mw_cnt_add);		
			t_cnt_mw	= t_cnt_duty_50 - t_cnt_mw;
		}
		else if ( f_mw_old2 < f4_m_non_dt_minus )
		{
			f4_mw_cnt_add = f4_dt_cnt_raito * ( f_mw_old2 -  f4_m_non_dt_minus) ;  
			t_cnt_mw	= ( t_cnt_freq>>1 )*f_mw_old2 + (s4)(f4_mw_cnt_add);		
			t_cnt_mw	= t_cnt_duty_50 - t_cnt_mw;
		}
		else
		{
			t_cnt_mw	= ( t_cnt_freq>>1 ) * f_mw_old2;
			t_cnt_mw	= t_cnt_duty_50 - t_cnt_mw;
		}		
	}
		
	TSG31.CMP0				= t_cnt_freq;				// キャリア周期
	TSG31.DCMP0W.BIT.DCMP0	= t_DCMP0 & 0xfffe;			// AD sample delay
	TSG31.DCMP2				= t_DCMP2 & 0xfffe;			// AD sample delay
	TSG31.CMPV				= t_cnt_mv;					// V相変調率
	TSG31.CMPW				= t_cnt_mw;					// W相変調率
	TSG31.CMPU				= t_cnt_mu;					// U相変調率　※ここの書き込みでリロード発生なので最後に更新。

}