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
#define	TSG30_GB_P3_3_USE		(1)
u1	__u1_tsg30_logic;
s2	_S2_DPINV0_ADDLAY;
u1	__u1_read_tsg30_opt0;
u4	__u4_cnt_tsg30_1puls_offset = 10;

f4	f_mu_old;
f4	f_mv_old;
f4	f_mw_old;

/*=============================================================*/

/*==============================================================*/
/*	インターバルタイマ0初期化関数								*/
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
void tsg30_init ( u4 u4_freq, u4 u4_deadtime_on, u4 u4_deadtime_off, u1 u1_logic, u1 u1_trigsrc, u1 u1_intlv , u1 u1_intdn , u1 u1_intcpu)
{
	u1	t_u1_intdn ;

	if ( u1_intdn > 31 ) { t_u1_intdn = 31 ; }
	else { t_u1_intdn = u1_intdn ; }


	/* PWM出力端子Hi-z	*/
	{		
		u4 t_PMSR1	= (((0x3F)<<2)<<16) | (0x3F<<2);				/* PM1_2  - PM1_7  入力モード	*/
		u4 t_PMCSR1	= (((0x3F)<<2)<<16) | (0x00<<2);				/* PMC1_2 - PMC1_7 ポートモード	*/

		PORT.PMSR1.UINT32	= t_PMSR1;
		PORT.PMCSR1.UINT32	= t_PMCSR1;	
	}
	/* タイマ停止		*/
	TSG30.TRG1.BIT.TT		= 1;				/* タイマ停止									*/
	
	/* 初期設定			*/
	TSG30.CTL0.BIT.DWD 		= 0;
	TSG30.CTL0.BIT.MD  		= 1;				/* 	HT-PWMモード								*/
	
//	TSG30.CTL1.UINT16		= 0;				/* パタン検出系禁止								*/
//	TSG30.CTL1.BIT.TBA0		= 1;				/* U相PWM同時アクティブ検出						*/
//  TSG30.CTL1.BIT.TBA1		= 1;				/* V相PWM同時アクティブ検出						*/
//	TSG30.CTL1.BIT.TBA2		= 1;				/* W相PWM同時アクティブ検出						*/
	
	TSG30.CTL3.BIT.RMC		= 0;				/* リロードモード								*/
	TSG30.CTL3.BIT.RIA		= 0;				/* TS30CTL4の設定に従う							*/
	
	/* リロード、割り込み間引き設定	*/
	switch(u1_trigsrc)
	{
		case 0:
			TSG30.CTL4.BIT.PRE	= 1 ;			/* 山リロード許可								*/
			TSG30.CTL4.BIT.VRE	= 1 ;			/* 谷リロード許可								*/
			TSG30.CTL4.BIT.PIE	= 0 ;			/* 山割り込み禁止								*/
			TSG30.CTL4.BIT.VIE	= 0 ;			/* 谷割り込み禁止								*/
			TSG30.CTL4.BIT.RCC	= 0;			/* 間引きなし									*/
		break;
		case 1:
			TSG30.CTL4.BIT.PRE	= 1 ;			/* 山リロード許可								*/
			TSG30.CTL4.BIT.VRE	= 0 ;			/* 谷リロード禁止								*/
			TSG30.CTL4.BIT.PIE	= 1 ;			/* 山割り込み許可								*/
			TSG30.CTL4.BIT.VIE	= 0 ;			/* 谷割り込み禁止								*/
			TSG30.CTL4.BIT.RCC	= t_u1_intdn;	/* 引数に従う									*/			
		break;
		case 2:
			TSG30.CTL4.BIT.PRE	= 0 ;			/* 山リロード禁止								*/
			TSG30.CTL4.BIT.VRE	= 1 ;			/* 谷リロード許可								*/
			TSG30.CTL4.BIT.PIE	= 0 ;			/* 山割り込み禁止								*/
			TSG30.CTL4.BIT.VIE	= 1 ;			/* 谷割り込み許可								*/
			TSG30.CTL4.BIT.RCC	= t_u1_intdn;	/* 引数に従う									*/						
		break;
		case 3:
			TSG30.CTL4.BIT.PRE	= 1 ;			/* 山リロード許可								*/
			TSG30.CTL4.BIT.VRE	= 1 ;			/* 谷リロード許可								*/
			TSG30.CTL4.BIT.PIE	= 1 ;			/* 山割り込み許可								*/
			TSG30.CTL4.BIT.VIE	= 1 ;			/* 谷割り込み許可								*/
			TSG30.CTL4.BIT.RCC	= 0;			/* 間引きなし									*/			
		break;
	}
	
	if ( 0 != TSG30.CTL4.BIT.RCC )
	{
		TSG30.CTL3.BIT.RIA		= 1;
	}
	else{}
	
	
	/* ADトリガ(TSG3nADTRG0)選択	*/
	// TSG3nDCMP0EをUPカウント時、TSG3nDCMP2EをDOWNカウント時に設定。
	// 遅れ設定：TSG3nDCMP0Eを0付近、TSG3nDCMP2EをTSnCMP0付近に設定。
	TSG30.CTL5.UINT16		= 0;
	TSG30.CTL5.BIT.AT07		= 1;				/* 18 ビットカウンタのダウンカウントと TSG3nDCMP2E の一致	*/
	TSG30.CTL5.BIT.AT02		= 1;				/* 18 ビットカウンタのアップカウントと TSG3nDCMP0E の一致	*/

	/* ADトリガ(TSG3nADTRG1)選択 ・・・　現状使用用途なし	*/
	// TSG3nDCMP0EをUPカウント時、TSG3nDCMP2EをDOWNカウント時に設定。
	// 遅れ設定：TSG3nDCMP0Eを0付近、TSG3nDCMP2EをTSnCMP0付近に設定。
	TSG30.CTL6.UINT16		= 0;
//	TSG30.CTL6.BIT.AT17		= 1;				/* 18 ビットカウンタのダウンカウントと TSG3nDCMP2E の一致	*/
//	TSG30.CTL6.BIT.AT12		= 1;				/* 18 ビットカウンタのアップカウントと TSG3nDCMP0E の一致	*/	
	
	TSG30.CTL7.UINT8		= 0;				/* SP-PWMモード用											*/
//	TSG30.CTL8.UINT8		= 0;				/* 120-DCモード用											*/
	TSG30.CTL8				= 0;				/* 120-DCモード用											*/
	
	TSG30.IOC0.UINT8		= 0;				/* TSG30IOC2書き換えよるTSG30O6-1の制御許可					*/
	TSG30.IOC1.UINT8		= 0;

	/* PWM論理設定	*/
	__u1_tsg30_logic		= u1_logic;
	
	if( 0 == u1_logic )
	{
		TSG30.IOC2.UINT16	&= ~(0x7E00);			/* アクティブ HI(Bit14-9 :0)								*/
		TSG30.IOC2.UINT16   &= ~(0x007E);			/* 出力バッファ LOW	(Bit6-1 :0)								*/
	}
	else
	{
		TSG30.IOC2.UINT16	|= (0x7E00);			/* アクティブ LOW(Bit14-9: 1)								*/
		TSG30.IOC2.UINT16 	|= (0x007E);			/* 出力バッファHI(Bit6-1:1)									*/
	}

	TSG30.IOC0.UINT8		= 0x7E;				/* TSG30IOC2書き換え無効									*/
	TSG30.IOC3.UINT32		= 0;				/* HT-PWMモードは、0固定									*/

	TSG30.STC.UINT16		= 0x3FE;			/* TSG30STR2フラグALLクリア									*/
	TSG30.OPT0.UINT8		= 0;				/* 	ソフトウェア制御禁止（ワンパルスは、別途設定）			*/
	TSG30.OPT1.UINT8		= 0;
	TSG30.OPT2.UINT8		= 0;				/* EMU2入力無効（TSG30出力)									*/

	
	TSG30.CMP0E				= 0;				/* 全コンペアレジスタ初期化									*/
	TSG30.CMP1E				= 0;
	TSG30.CMP2E				= 0;
	TSG30.CMP3E				= 0;
	TSG30.CMP4E				= 0;
	TSG30.CMP5E				= 0;
	TSG30.CMP6E				= 0;
	TSG30.CMP7E				= 0;
	TSG30.CMP8E				= 0;
	TSG30.CMP9E				= 0;
	TSG30.CMP10E			= 0;
	TSG30.CMP11E			= 0;
	TSG30.CMP12E			= 0;
	
	/* キャリア周波数設定	*/
	{
		double t_CMP0	= ((double)(__CLKC_HSB*1e6))/((double)u4_freq);
		if(t_CMP0>65535.)
		{
			TSG30.CMP0		= 65535;
		}
		else
		{
			TSG30.CMP0		= (u2)t_CMP0 ;
		}
	}

	
	/* デッドタイム設定		*/
	{
		double	t_dt_on 	= u4_deadtime_on * 1e-9;
		double	t_dt_off 	= u4_deadtime_off * 1e-9;
		u2	t_cnt_on		 = (u2)(t_dt_on  * ((double)(__CLKC_HSB*1e6)));
		u2	t_cnt_off		 = (u2)(t_dt_off * ((double)(__CLKC_HSB*1e6)));

		TSG30.DTPR.BIT.DTPR  = 0x1234;					/* プロテクトコード									*/
		TSG30.DTPR.BIT.DTCM	 = 0;						/* 書き換え許可										*/
		TSG30.DTC0W.UINT32	 = 0x12340000+t_cnt_on;		/* デットタイム設定									*/
		TSG30.DTC1W.UINT32	 = 0x12340000+t_cnt_off;	/* デットタイム設定									*/
		TSG30.DTPR.BIT.DTCM	 = 1;						/* 書き換え禁止										*/
	}

	TSG30.CMPW = TSG30.CMP0	>>1;						/* 0%	W Phase Output								*/
	TSG30.CMPV = TSG30.CMP0	>>1;						/* 0%	V Phase Output								*/
	TSG30.CMPU = TSG30.CMP0	>>1;						/* 0%	U Phase Output								*/


	/* 割り込みレベル設定	*/
	if ( 2 == u1_intcpu )
	{
		INTC2.EIBD165.BIT.GPID	= 1;						/* CPU2にバインド(山割り込み）						*/
		INTC2.EIBD165.BIT.PEID	= 2;						/* CPU2にバインド(山割り込み）						*/
		INTC2.EIBD166.BIT.GPID	= 1;						/* CPU2にバインド(谷割り込み）						*/
		INTC2.EIBD166.BIT.PEID	= 2;						/* CPU2にバインド(谷割り込み）						*/
		
	}
	else
	{
		INTC2.EIBD165.BIT.GPID	= 0;						/* CPU1にバインド(山割り込み）						*/
		INTC2.EIBD165.BIT.PEID	= 1;						/* CPU1にバインド(山割り込み）						*/
		INTC2.EIBD166.BIT.GPID	= 0;						/* CPU1にバインド(谷割り込み）						*/
		INTC2.EIBD166.BIT.PEID	= 1;						/* CPU1にバインド(谷割り込み）						*/
	}
	
	if( u1_intlv < 16 )
	{
		/* 山割り込み	*/
		INTC2.EIC165.BIT.EIRF165	= 0 ;					/* 割り込みフラグクリア								*/
		INTC2.EIC165.BIT.EIP165		= u1_intlv ;			/* 割り込みレベル設定								*/
		INTC2.EIC165.BIT.EITB165	= 1;					/* テーブル参照方式									*/
//		INTC2.EIC165.BIT.EITB165	= 0;					/* 直接分岐方式										*/
		INTC2.EIC165.BIT.EIMK165	= 0 ;					/* 割り込みマスククリア								*/
				
		/* 谷割り込み	*/
		INTC2.EIC166.BIT.EIRF166	= 0 ;					/* 割り込みフラグクリア								*/
		INTC2.EIC166.BIT.EIP166		= u1_intlv ;			/* 割り込みレベル設定								*/
		INTC2.EIC166.BIT.EITB166	= 1;					/* テーブル参照方式									*/
//		INTC2.EIC166.BIT.EITB166	= 0;					/* 直接分岐方式										*/
		INTC2.EIC166.BIT.EIMK166	= 0 ;					/* 割り込みマスククリア								*/
	}
	else
	{
		INTC2.EIC165.BIT.EIMK165	= 1 ;					/* 割り込みマスク									*/
		INTC2.EIC166.BIT.EIMK166	= 1 ;					/* 割り込みマスク									*/
	}


	// ポート設定
	PORT.PCR1_2.UINT32	= 0x00000034;					/* PORT1_2 TSG30O1 (UP)								*/
														/* PM,PIPC,PFCAE=1/PMC,PFCE,PFC=0					*/
														/* IO制御											*/
														
	PORT.PCR1_3.UINT32	= 0x00000034;			 		/* PORT1_3 TSG30O3 (VP)								*/
	PORT.PCR1_4.UINT32	= 0x00000034;					/* PORT1_4 TSG30O5 (WP)								*/
	PORT.PCR1_5.UINT32	= 0x00000034;					/* PORT1_5 TSG30O2 (UN)								*/
	PORT.PCR1_6.UINT32	= 0x00000034;					/* PORT1_6 TSG30O4 (VN)								*/
	PORT.PCR1_7.UINT32	= 0x00000034;					/* PORT1_7 TSG30O6 (WN)								*/
					
}



/*=============================================================
	TSG30タイマカウントスタート						   
===============================================================*/
void tsg30_start ( void )
{
	TSG30.TRG0.BIT.TS = 1;					/* TSG30起動							*/
}

/*=============================================================
	TSG30タイマカウントストップ						   
===============================================================*/
void tsg30_stop ( void )
{
	TSG30.TRG1.BIT.TT = 1;					/* TSG30停止							*/
}

/*=============================================================
	TSG30　PWM出力許可						   
===============================================================*/
void dpinv0_start ( void )
{
	u4 t_PMSR1	= (((0x3F)<<2)<<16) | (0x00<<2);
	u4 t_PMCSR1	= (((0x3F)<<2)<<16) | (0x3F<<2);

	PORT.PMCSR1.UINT32	= t_PMCSR1;				/* Control Mode:PWM output mode	P1_2~7	*/
	PORT.PMSR1.UINT32	= t_PMSR1;				/* Output:P1_2~7						*/
}

/*=============================================================
	TSG30　PWM出力停止						   
===============================================================*/
void dpinv0_stop ( void )
{
	u4 t_PMSR1	= (((0x3F)<<2)<<16) | (0x3F<<2);
	u4 t_PMCSR1	= (((0x3F)<<2)<<16) | (0x00<<2);

	PORT.PMSR1.UINT32	= t_PMSR1;					/* Input:P1_2~7						*/
	PORT.PMCSR1.UINT32	= t_PMCSR1;					/* Control Mode:Port mode	P1_2~7	*/
}

/*=============================================================
	TSG30　ADサンプリングディレイ設定						   
	引数：
	s4 delay_ns		:ADサンプルディレイ[ns]
	// PWM周期可変なのでここでは計算のみ。	
===============================================================*/
void dpinv0_set_addelay ( s4 delay_ns )
{
	s4	t_delay = __CLKC_HSB * delay_ns;		// LSB=1e-3
	s4	t_cnt	= (2 * t_delay) / 1000;		// TSG30は2倍速カウントのため。	
	
	_S2_DPINV0_ADDLAY	= (s2)t_cnt;
}

/*==============================================================*/
/*	TSG30　PWM変調率＆キャリア周波数設定（浮動小数Ver）			*/
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
void dpinv0_setuvwf_f_V1 ( float f_mu, float f_mv, float f_mw, float f_freq )
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
	__u1_read_tsg30_opt0 = TSG30.OPT0.UINT8 & 0x40 ;

	// デッドタイム
	t_cnt_td		= ( TSG30.DTC0W.BIT.DTC0 + TSG30.DTC1W.BIT.DTC1 ) & 0xffff;
	
	// Duty基準
	t_cnt_duty_100	= t_cnt_freq + t_cnt_td;	// 100% duty
	t_cnt_duty_50	= t_cnt_duty_100>>1;		// 50% duty

	// ADディレイ設定
	if( _S2_DPINV0_ADDLAY >= 0 )
	{
		// x>0:遅れ設定
		t_DCMP0	= _S2_DPINV0_ADDLAY + t_cnt_td;
		t_DCMP2	= t_cnt_freq - _S2_DPINV0_ADDLAY;
	}
	else
	{
		// x<0:進み設定:不可
		t_DCMP0	= t_cnt_td;
		t_DCMP2	= t_cnt_freq;
	}
	
	if( f_mu >= 1.0 )
	{
		if ( 0 == __u1_read_tsg30_opt0 )
		{
			t_cnt_mu	= 0;
		}
		else
		{
			t_cnt_mu	= __u4_cnt_tsg30_1puls_offset;
		}
	}
	else if( f_mu <= -1.0 )
	{
		if ( 0 == __u1_read_tsg30_opt0 )
		{
			t_cnt_mu	= t_cnt_duty_100 - 2;
		}
		else
		{
			t_cnt_mu	= t_cnt_duty_100 - __u4_cnt_tsg30_1puls_offset;
		}
	}
	else
	{
		t_cnt_mu	= t_cnt_duty_50 *f_mu;
		t_cnt_mu	= t_cnt_duty_50 - t_cnt_mu;
	}

	if( f_mv >= 1.0 )
	{
		if ( 0 == __u1_read_tsg30_opt0 )
		{
			t_cnt_mv	= 0;
		}
		else
		{
			t_cnt_mv	= __u4_cnt_tsg30_1puls_offset;
		}
	}
	else if( f_mv <= -1.0 )
	{
		if ( 0 == __u1_read_tsg30_opt0 )
		{
			t_cnt_mv	= t_cnt_duty_100 - 2;
		}
		else
		{
			t_cnt_mv	= t_cnt_duty_100 - __u4_cnt_tsg30_1puls_offset ;
		}
	}
	else
	{
		t_cnt_mv	= t_cnt_duty_50 *f_mv;
		t_cnt_mv	= t_cnt_duty_50 - t_cnt_mv;
	}
	
	if( f_mw >=1.0 )
	{
		if ( 0 == __u1_read_tsg30_opt0 )
		{
			t_cnt_mw	= 0;
		}
		else
		{
			t_cnt_mw	= __u4_cnt_tsg30_1puls_offset;
		}
	}
	else if( f_mw <= -1.0 )
	{
		if ( 0 == __u1_read_tsg30_opt0 )
		{
			t_cnt_mw	= t_cnt_duty_100 - 2;
		}
		else
		{
			t_cnt_mw	= t_cnt_duty_100 - __u4_cnt_tsg30_1puls_offset ;
		}
	}
	else
	{
		t_cnt_mw	= t_cnt_duty_50 *f_mw;
		t_cnt_mw	= t_cnt_duty_50 - t_cnt_mw;
	}

	TSG30.OPT0.UINT8		= 0;						// 1pulse mode 解除(次のリードタイミングからHT-PWM
	
	TSG30.CMP0				= t_cnt_freq;				// キャリア周期
	TSG30.DCMP0W.BIT.DCMP0	= t_DCMP0 & 0xfffe;			// AD sample delay
	TSG30.DCMP2				= t_DCMP2 & 0xfffe;			// AD sample delay
	TSG30.CMPV				= t_cnt_mv;					// V相変調率
	TSG30.CMPW				= t_cnt_mw;					// W相変調率
	TSG30.CMPU				= t_cnt_mu;					// U相変調率　※ここの書き込みでリロード発生なので最後に更新。

}

/*==============================================================*/
/*	TSG30　PWM変調率＆キャリア周波数設定（浮動小数Ver）			*/
/*	引数：														*/
/*	float f_mu		:U相変調率 -1.0～+1.0						*/
/*	float f_mv		:V相変調率 -1.0～+1.0						*/
/*	float f_mw		:W相変調率 -1.0～+1.0						*/
/*	float f_freq	:キャリア周波数[Hz]		1250～80000			*/
/*																*/
/*==============================================================*/
/*	変調率　1の時にデットタイムが残るバージョン					*/
/*==============================================================*/

void dpinv0_setuvwf_f_V2 ( float f_mu, float f_mv, float f_mw, float f_freq )
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
	__u1_read_tsg30_opt0 = TSG30.OPT0.UINT8 & 0x40 ;
	
	// デッドタイム
	t_cnt_td		= ( TSG30.DTC0W.BIT.DTC0 + TSG30.DTC1W.BIT.DTC1 ) & 0xffff;
	
	// Duty基準
	t_cnt_duty_100	= t_cnt_freq + t_cnt_td;	// 100% duty
	t_cnt_duty_50	= t_cnt_duty_100>>1;		// 50% duty

	// ADディレイ設定
	if( _S2_DPINV0_ADDLAY >= 0 )
	{
		// x>0:遅れ設定
		t_DCMP0	= _S2_DPINV0_ADDLAY + t_cnt_td;
		t_DCMP2	= t_cnt_freq - _S2_DPINV0_ADDLAY;
	}
	else
	{
		// x<0:進み設定:不可
		t_DCMP0	= t_cnt_td;
		t_DCMP2	= t_cnt_freq;
	}
	
	if( f_mu >= 1.0 )
	{
		if ( 0 == __u1_read_tsg30_opt0 )
		{
			t_cnt_mu	= 0;
		}
		else
		{
			t_cnt_mu	= __u4_cnt_tsg30_1puls_offset;
		}
	}
	else if( f_mu <= -1.0 )
	{
		if ( 0 == __u1_read_tsg30_opt0 )
		{
			t_cnt_mu	= t_cnt_duty_100 - 2;
		}
		else
		{
			t_cnt_mu	= t_cnt_duty_100 - __u4_cnt_tsg30_1puls_offset;
		}
	}
	else
	{
		t_cnt_mu	= ( t_cnt_freq>>1 )*f_mu;
		t_cnt_mu	= t_cnt_duty_50 - t_cnt_mu;
	}

	if( f_mv >= 1.0 )
	{
		if ( 0 == __u1_read_tsg30_opt0 )
		{
			t_cnt_mv	= 0;
		}
		else
		{
			t_cnt_mv	= __u4_cnt_tsg30_1puls_offset;
		}
	}
	else if( f_mv <= -1.0 )
	{
		if ( 0 == __u1_read_tsg30_opt0 )
		{
			t_cnt_mv	= t_cnt_duty_100 - 2;
		}
		else
		{
			t_cnt_mv	= t_cnt_duty_100 - __u4_cnt_tsg30_1puls_offset ;
		}
	}
	else
	{
		t_cnt_mv	= ( t_cnt_freq>>1 )*f_mv;
		t_cnt_mv	= t_cnt_duty_50 - t_cnt_mv;
	}
	
	if( f_mw >=1.0 )
	{
		if ( 0 == __u1_read_tsg30_opt0 )
		{
			t_cnt_mw	= 0;
		}
		else
		{
			t_cnt_mw	= __u4_cnt_tsg30_1puls_offset;
		}
	}
	else if( f_mw <= -1.0 )
	{
		if ( 0 == __u1_read_tsg30_opt0 )
		{
			t_cnt_mw	= t_cnt_duty_100 - 2;
		}
		else
		{
			t_cnt_mw	= t_cnt_duty_100 - __u4_cnt_tsg30_1puls_offset ;
		}
	}
	else
	{
		t_cnt_mw	= ( t_cnt_freq>>1 ) * f_mw;
		t_cnt_mw	= t_cnt_duty_50 - t_cnt_mw;
	}

	TSG30.OPT0.UINT8		= 0;						// 1pulse mode 解除(次のリードタイミングからHT-PWM
		
	TSG30.CMP0				= t_cnt_freq;				// キャリア周期
	TSG30.DCMP0W.BIT.DCMP0	= t_DCMP0 & 0xfffe;			// AD sample delay
	TSG30.DCMP2				= t_DCMP2 & 0xfffe;			// AD sample delay
	TSG30.CMPV				= t_cnt_mv;					// V相変調率
	TSG30.CMPW				= t_cnt_mw;					// W相変調率
	TSG30.CMPU				= t_cnt_mu;					// U相変調率　※ここの書き込みでリロード発生なので最後に更新。

}


/*==============================================================*/
/*	TSG30　PWM変調率＆キャリア周波数設定（浮動小数Ver）			*/
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

void dpinv0_setuvwf_f_V3 ( float f_mu, float f_mv, float f_mw, float f_freq )
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

	// ワンパルスモード取得			
	__u1_read_tsg30_opt0 = TSG30.OPT0.UINT8 & 0x40 ;

	// デッドタイム
	t_cnt_td		= ( TSG30.DTC0W.BIT.DTC0 + TSG30.DTC1W.BIT.DTC1 ) & 0xffff;
	
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
	if( _S2_DPINV0_ADDLAY >= 0 )
	{
		// x>0:遅れ設定
		t_DCMP0	= _S2_DPINV0_ADDLAY + t_cnt_td ;
		t_DCMP2	= t_cnt_freq - _S2_DPINV0_ADDLAY  ;
	}
	else
	{
		// x<0:進み設定:不可
		t_DCMP0	= t_cnt_td;
		t_DCMP2	= t_cnt_freq;
	}

	if( f_mu >= 1.0 )
	{
		if ( 0 == __u1_read_tsg30_opt0 )
		{
			t_cnt_mu	= 0;
		}
		else
		{
			t_cnt_mu	= __u4_cnt_tsg30_1puls_offset;
		}
	}
	else if( f_mu <= -1.0 )
	{
		if ( 0 == __u1_read_tsg30_opt0 )
		{
			t_cnt_mu	= t_cnt_duty_100 - 2;
		}
		else
		{
			t_cnt_mu	= t_cnt_duty_100 - __u4_cnt_tsg30_1puls_offset;
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
		if ( 0 == __u1_read_tsg30_opt0 )
		{
			t_cnt_mv	= 0;
		}
		else
		{
			t_cnt_mv	= __u4_cnt_tsg30_1puls_offset;
		}
	}
	else if( f_mv <= -1.0 )
	{
		if ( 0 == __u1_read_tsg30_opt0 )
		{
			t_cnt_mv	= t_cnt_duty_100 - 2;
		}
		else
		{
			t_cnt_mv	= t_cnt_duty_100 - __u4_cnt_tsg30_1puls_offset ;
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
		if ( 0 == __u1_read_tsg30_opt0 )
		{
			t_cnt_mw	= 0;
		}
		else
		{
			t_cnt_mw	= __u4_cnt_tsg30_1puls_offset;
		}
	}
	else if( f_mw <= -1.0 )
	{
		if ( 0 == __u1_read_tsg30_opt0 )
		{
			t_cnt_mw	= t_cnt_duty_100 - 2;
		}
		else
		{
			t_cnt_mw	= t_cnt_duty_100 - __u4_cnt_tsg30_1puls_offset ;
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
	
	f_mu_old	=	f_mu;
	f_mv_old	=	f_mv;
	f_mw_old	= 	f_mw;

	TSG30.OPT0.UINT8		= 0;						// 1pulse mode 解除(次のリードタイミングからHT-PWM
		
	TSG30.CMP0				= t_cnt_freq;				// キャリア周期
	TSG30.DCMP0W.BIT.DCMP0	= t_DCMP0 & 0xfffe;			// AD sample delay
	TSG30.DCMP2				= t_DCMP2 & 0xfffe;			// AD sample delay
	TSG30.CMPV				= t_cnt_mv;					// V相変調率
	TSG30.CMPW				= t_cnt_mw;					// W相変調率
	TSG30.CMPU				= t_cnt_mu;					// U相変調率　※ここの書き込みでリロード発生なので最後に更新。

}


/*=============================================================
	TSG30　外部GB設定						   
	引数：
	u1 u1_mode		:検出エッジ	1:↑エッジ　2:↓エッジ	それ以外：なし
================================================================*/

void dpinv0_extgb_init(u1 u1_mode)
{
	// ポート設定
	#if TSG30_GB_P3_3_USE
		PORT.PCR3_3.UINT32	= 0x00000055;					/* PORT3_3 											*/
															/* PMC,PM,PFCAE,PFC=1/PIPC,PFCE=0					*/
															/* PM制御											*/
	#else
		PORT.PCR1_0.UINT32	= 0x00000055;					/* PORT1_0 											*/
															/* PMC,PM,PFCAE,PFC=1/PIPC,PFCE=0					*/
															/* PM制御											*/
	#endif
	switch(u1_mode)
	{
		case 1:
			PIC1A.HIZCEN2.UINT8		= 0x01;				// ESO2 端子入力でHi-Z 出力制御許可(ESO2入力をTAPA2THASINに接続）
			TAPA2.CTL0.UINT16		= 0;				// リセット値上書き
			TAPA2.CTL0.BIT.DCM		= 1;				// アクティブレベルの場合、OPHT0操作無効
			TAPA2.CTL0.BIT.DCP		= 1;				// 立ち上がりエッジ有効
		break;
		case 2:
			PIC1A.HIZCEN2.UINT8		= 0x01;				// ESO2 端子入力でHi-Z 出力制御許可(ESO2入力をTAPA2THASINに接続）
			TAPA2.CTL0.UINT16		= 0;				// リセット値上書き
			TAPA2.CTL0.BIT.DCM		= 1;				// アクティブレベルの場合、OPHT0操作無効
			TAPA2.CTL0.BIT.DCN		= 1;				// 立ち下がりエッジ有効
		break;
		default:
			PIC1A.HIZCEN2.UINT8		= 0x00;				// なし(ESO2入力をTAPA2THASINに接続しない）
			TAPA2.CTL0.UINT16		= 0;				// TAPATHASINのエッジ検出なし			
			return;
		break;
	}

	TAPA2.ACWE.UINT8	= 1;							// TAPAnACTS/TAPAnACTTの書き込みを許可
	TAPA2.ACTS.UINT8	= 1;							// 非同期制御スタート・トリガ・ビットセット（Hi-Z制御開始）
//	TAPA2.ACTT.UINT8	= 1;							// 非同期制御ストップ・トリガ・ビットセット（Hi-Z制御禁止）

	TAPA2.OPHT.UINT8	= 1;							// Hi-Z 制御信号のストップ・トリガ（Hi-Z解除）
//	TAPA2.OPHS.UINT8	= 1;							// Hi-Z 制御信号のスタート・トリガ（Hi-Zにする）
	//TAPA2自体はTAP2THZOUT0(TSG3O1-O6)を制御
}

/*=============================================================
	TSG30　外部GBステータス読み込み						   
	戻り値：
	u1 		:0検出なし　1:検出あり
================================================================*/
u1 dpinv0_extgb_status( void )
{
	if( 0 != ( TAPA2.FLG.UINT16 & 0x0700 ))						// TPAnHOFxが0以外
	{
		return(1);
	}
	else
	{
		return(0);
	}
}

/*=============================================================
	TSG30　外部GBクリア						   
================================================================*/
void dpinv0_extgb_clr( void )
{
	TAPA2.OPHT.UINT8	= 1;
}
/*=============================================================
	TSG30 山割り込み禁止					   
================================================================*/
void tsg30_111int_stop ( void )
{
	//山割り込み、山リロード禁止
	TSG30.CTL4.BIT.PRE	= 0 ;			/* 山リロード許可								*/
	TSG30.CTL4.BIT.PIE	= 0 ;			/* 山割り込み禁止								*/

	//山割り込み時のADトリガを禁止する
	TSG30.CTL5.BIT.AT07		= 0;				/* 18 ビットカウンタのダウンカウントと TSG3nDCMP2E の一致	*/
	TSG30.CTL6.BIT.AT17		= 0;				/* 18 ビットカウンタのダウンカウントと TSG3nDCMP2E の一致	*/
}

/*=============================================================
	TSG30　ワンパルスパターン						   
================================================================*/
void dpinv0_setuvw_1pulse ( u1 pattarn )
{
	TSG30.OPT1.UINT8	= pattarn & 0x07;						/* パターン設定		*/
	TSG30.OPT0.UINT8	= 0x40;									/* 1Pulseモード設定	*/
}

/*=============================================================
	TSG30　ゲートコントロール				
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

void dpinv0_gatectrl ( u1 port, u1 pattern )
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
	
	t_PSR1		= (u4)( u1_output.UINT8 << 2 ) ;	
	if ( 0 == __u1_tsg30_logic ) 				//アクティブHI
	{
		t_PSR1		= ( t_PSR1 ) & 0xFC;		// 正論理
	}
	else
	{
		t_PSR1		= ( ~t_PSR1 )& 0xFC;		// 負論理
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

	t_PMCSR1	= (u4)( u1_output.UINT8 << 2 ) ;
	t_PMCSR1	= t_PMCSR1 & 0xFC;

	t_PSR1		= ((0xFC)<<16) | (t_PSR1);
	t_PMCSR1	= ((0xFC)<<16) | (t_PMCSR1);

	PORT.PSR1.UINT32	= t_PSR1;
	PORT.PMCSR1.UINT32	= t_PMCSR1;
}


/*=============================================================
	TSG30/TGS31タイマ同時カウントスタート						   
===============================================================*/
void tsg30_31_start ( void )
{
	PIC1A.SSER2.BIT.SSER208 = 1 ;			/* TSG30同時スタート許可				*/
	PIC1A.SSER2.BIT.SSER209 = 1 ;			/* TSG31同時スタート許可				*/
	
	PIC1A.SST.BIT.SYNCTRG   = 1;			/* TSG30/TSG31同時スタート				*/
	
}

/*=============================================================
	TSG30O0端子キャリア（CLK)出力				   
===============================================================*/
void	tsg30_TSG30O0_out(void)
{
	PORT.PCR1_0.UINT32	= 0x00000044;					/* POR1_0 TSG30O0 (キャリアCLK)								*/
}

/*=============================================================
	TSG30.TSG31　ワンパルスパターン						   
================================================================*/
void dpinv01_setuvw_1pulse ( u1 pattarn )
{
	TSG30.OPT1.UINT8	= pattarn & 0x07;				/* パターン設定		*/
	TSG31.OPT1.UINT8	= pattarn & 0x07;				/* パターン設定		*/
	TSG30.OPT0.UINT8	= 0x40;									/* 1Pulseモード設定	*/
	TSG31.OPT0.UINT8	= 0x40;									/* 1Pulseモード設定	*/
}

/*==============================================================*/
/*	TSG30　キャリア周波数設定（浮動小数Ver）					*/
/*	引数：														*/
/*	float f_freq	:キャリア周波数[Hz]		1250～80000			*/
/*																*/
/*==============================================================*/
/* 注意）　キャリア周波数のみ変更する為、UVWコンペア値は		*/
/*		変更する（前回変調率）。また、1パルスモードは、解除しない	*/
/*==============================================================*/

void dpinv0_set_freq ( float f_freq )
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
	t_cnt_td		= ( TSG30.DTC0W.BIT.DTC0 + TSG30.DTC1W.BIT.DTC1 ) & 0xffff;
	
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
	if( _S2_DPINV0_ADDLAY >= 0 )
	{
		// x>0:遅れ設定
		t_DCMP0	= _S2_DPINV0_ADDLAY + t_cnt_td ;
		t_DCMP2	= t_cnt_freq - _S2_DPINV0_ADDLAY  ;
	}
	else
	{
		// x<0:進み設定:不可
		t_DCMP0	= t_cnt_td;
		t_DCMP2	= t_cnt_freq;
	}

	if( f_mu_old >= 1.0 )
	{
		t_cnt_mu	= 0;
	}
	else if( f_mu_old <= -1.0 )
	{
		t_cnt_mu	= t_cnt_duty_100 - 2;
	}
	else
	{
		if ( f_mu_old > f4_m_non_dt_plus )
		{
			f4_mu_cnt_add = f4_dt_cnt_raito * ( f_mu_old -  f4_m_non_dt_plus) ;  
			t_cnt_mu	= ( t_cnt_freq>>1 )*f_mu_old + (s4)(f4_mu_cnt_add);		
			t_cnt_mu	= t_cnt_duty_50 - t_cnt_mu;
		}
		else if ( f_mu_old < f4_m_non_dt_minus )
		{
			f4_mu_cnt_add = f4_dt_cnt_raito * ( f_mu_old -  f4_m_non_dt_minus) ;  
			t_cnt_mu	= ( t_cnt_freq>>1 )*f_mu_old + (s4)(f4_mu_cnt_add);		
			t_cnt_mu	= t_cnt_duty_50 - t_cnt_mu;
		}
		else
		{
			t_cnt_mu	= ( t_cnt_freq>>1 )*f_mu_old;		
			t_cnt_mu	= t_cnt_duty_50 - t_cnt_mu;
		}
	}

	if( f_mv_old >= 1.0 )
	{
		t_cnt_mv	= 0;
	}
	else if( f_mv_old <= -1.0 )
	{
		t_cnt_mv	= t_cnt_duty_100 - 2;
	}
	else
	{
		if ( f_mv_old > f4_m_non_dt_plus )
		{
			f4_mv_cnt_add = f4_dt_cnt_raito * ( f_mv_old -  f4_m_non_dt_plus) ;  
			t_cnt_mv	= ( t_cnt_freq>>1 )*f_mv_old + (s4)(f4_mv_cnt_add);		
			t_cnt_mv	= t_cnt_duty_50 - t_cnt_mv;
		}
		else if ( f_mv_old < f4_m_non_dt_minus )
		{
			f4_mv_cnt_add = f4_dt_cnt_raito * ( f_mv_old -  f4_m_non_dt_minus) ;  
			t_cnt_mv	= ( t_cnt_freq>>1 )*f_mv_old + (s4)(f4_mv_cnt_add);		
			t_cnt_mv	= t_cnt_duty_50 - t_cnt_mv;
		}
		else
		{
			t_cnt_mv	= ( t_cnt_freq>>1 )*f_mv_old;
			t_cnt_mv	= t_cnt_duty_50 - t_cnt_mv;
		}		
	}
	
	if( f_mw_old >=1.0 )
	{
		t_cnt_mw	= 0;
	}
	else if( f_mw_old <= -1.0 )
	{
		t_cnt_mw	= t_cnt_duty_100 - 2;
	}
	else
	{
		if ( f_mw_old > f4_m_non_dt_plus )
		{
			f4_mw_cnt_add = f4_dt_cnt_raito * ( f_mw_old -  f4_m_non_dt_plus) ;  
			t_cnt_mw	= ( t_cnt_freq>>1 )*f_mw_old + (s4)(f4_mw_cnt_add);		
			t_cnt_mw	= t_cnt_duty_50 - t_cnt_mw;
		}
		else if ( f_mw_old < f4_m_non_dt_minus )
		{
			f4_mw_cnt_add = f4_dt_cnt_raito * ( f_mw_old -  f4_m_non_dt_minus) ;  
			t_cnt_mw	= ( t_cnt_freq>>1 )*f_mw_old + (s4)(f4_mw_cnt_add);		
			t_cnt_mw	= t_cnt_duty_50 - t_cnt_mw;
		}
		else
		{
			t_cnt_mw	= ( t_cnt_freq>>1 ) * f_mw_old;
			t_cnt_mw	= t_cnt_duty_50 - t_cnt_mw;
		}		
	}
		
	TSG30.CMP0				= t_cnt_freq;				// キャリア周期
	TSG30.DCMP0W.BIT.DCMP0	= t_DCMP0 & 0xfffe;			// AD sample delay
	TSG30.DCMP2				= t_DCMP2 & 0xfffe;			// AD sample delay
	TSG30.CMPV				= t_cnt_mv;					// V相変調率
	TSG30.CMPW				= t_cnt_mw;					// W相変調率
	TSG30.CMPU				= t_cnt_mu;					// U相変調率　※ここの書き込みでリロード発生なので最後に更新。
}