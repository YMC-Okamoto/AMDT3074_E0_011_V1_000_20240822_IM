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
void 	clock_init(void);
u1 		ecm2_init( void );
u1		cpu_init( void  );
/*=============================================================*/

/*==============================================================*/
/*	CPU初期化関数												*/
/*	引数：	なし												*/
/*																*/
/*	 戻り値：　RESFレジスタ内容									*/
/*--------------------------------------------------------------*/
/*	備考														*/
/*																*/
/*==============================================================*/

u1	cpu_init( void  )
{
	u1	u1_resf ;
	
	clock_init();												/* クロック初期化									*/
	__nop();

	u1_resf	= ecm2_init();

	/* 全割り込みマスク	*/
	INTC1.IMR0.UINT32 = 0xffffffff;					/* EIINT Interrupt mask (Disable)		*/
	INTC2.IMR1.UINT32 = 0xffffffff;					/* EIINT Interrupt mask (Disable)		*/
	INTC2.IMR2.UINT32 = 0xffffffff;					/* EIINT Interrupt mask (Disable)		*/
	INTC2.IMR3.UINT32 = 0xffffffff;					/* EIINT Interrupt mask (Disable)		*/
	INTC2.IMR4.UINT32 = 0xffffffff;					/* EIINT Interrupt mask (Disable)		*/
	INTC2.IMR5.UINT32 = 0xffffffff;					/* EIINT Interrupt mask (Disable)		*/
	INTC2.IMR6.UINT32 = 0xffffffff;					/* EIINT Interrupt mask (Disable)		*/	
	INTC2.IMR7.UINT32 = 0xffffffff;					/* EIINT Interrupt mask (Disable)		*/

	return( u1_resf );

}

/*==============================================================*/
/*	ECM2初期化関数												*/
/*	引数：	なし												*/
/*	 戻り値：　RESFレジスタ内容									*/
/*--------------------------------------------------------------*/
/*	備考														*/
/*==============================================================*/
u1 ecm2_init( void )
{
	/* ERROROUT_C端子出力モード	*/
//		PORT.PCR4_15.UINT32	= 0x00020045;			 		/* PORT4_15 ERROROUT_C				*/	
		PORT.PCR5_5.UINT32	= 0x00020046;			 		/* PORT5_5 ERROROUT_C				*/	
			
//    1.    ECMEMK0 レジスタの ECMEMK026 ビットを「マスクあり」に設定します。
		/* 保護レジスタ解除	*/
		ECM.PCMD1.UINT32	= 0x000000A5	;
		/* エラーマスク設定	*/
		ECM.EMK0.UINT32		= 0x3E7FFFF1		;	/* 全エラー　出力マスク	*/
		ECM.EMK0.UINT32		= ~(0x3E7FFFF1)		; 	/* 反転値書き込み		*/
		ECM.EMK0.UINT32		= 0x3E7FFFF1		;	/* 再書き込み			*/
 	   do{
    	}while( ECM.PS.UINT8 == 0x01 );

		ECM.PCMD1.UINT32	= 0x000000A5	;
		ECM.EMK1.UINT32		= 0x2000FEE0		;	/* 全エラー　出力マスク	*/
		ECM.EMK1.UINT32		= ~(0x2000FEE0)		; 	/* 反転値書き込み		*/
		ECM.EMK1.UINT32		= 0x2000FEE0		;	/* 再書き込み			*/
 	   do{
    	}while( ECM.PS.UINT8 == 0x01 );

//    2.    割り込みを生成しないために、ECMMICFG0 レジスタの ECMMIE026 ビットを「禁止」に、
//          ECMNMICFG0 レジスタの ECMNMIE026 ビットを「禁止」に設定します。
		/* EMC2割り込み禁止	*/
		ECM.PCMD1.UINT32	= 0x000000A5	;
		ECM.MICFG0.UINT32	= 0x00000000		;	/* 割り込み禁止			*/
		ECM.MICFG0.UINT32	= ~(0x00000000)		;	/* 反転値書き込み		*/
		ECM.MICFG0.UINT32	= 0x00000000		;	/* 再書き込み			*/
	    do{
	    }while( ECM.PS.UINT8 == 0x01 );
	
		ECM.PCMD1.UINT32	= 0x000000A5	;
		ECM.MICFG1.UINT32	= 0x00000000		;	/* 割り込み禁止			*/
		ECM.MICFG1.UINT32	= ~(0x00000000)		;	/* 反転値書き込み		*/
		ECM.MICFG1.UINT32	= 0x00000000		;	/* 再書き込み			*/
 	    do{
    	}while( ECM.PS.UINT8 == 0x01 );
    	
		ECM.PCMD1.UINT32	= 0x000000A5	;		
		ECM.NMICFG0.UINT32	= 0x00000000		;	/* NMI割り込み禁止		*/
		ECM.NMICFG0.UINT32	= ~(0x00000000)		;	/* 反転値書き込み		*/
		ECM.NMICFG0.UINT32	= 0x00000000		;	/* 再書き込み~			*/
	    do{
    	}while( ECM.PS.UINT8 == 0x01 );

		ECM.PCMD1.UINT32	= 0x000000A5	;
		ECM.NMICFG1.UINT32	= 0x00000000		;	/* NMI割り込み禁止		*/
		ECM.NMICFG1.UINT32	= ~(0x00000000)		;	/* 反転値書き込み		*/
		ECM.NMICFG1.UINT32	= 0x00000000		;	/* 再書き込み			*/
 	   do{
    	}while( ECM.PS.UINT8 == 0x01 );

//    3.    内部リセットは生成しないために、ECMIRCFG0 レジスタの ECMIRE026 ビットを「禁止」に
//          設定します。

		/* EMC2リセット禁止	*/
		ECM.PCMD1.UINT32	= 0x000000A5	;	
		ECM.IRCFG0.UINT32	=  0x00000000		;	/* 割り込み禁止			*/
		ECM.IRCFG0.UINT32	=  ~(0x00000000)	;	/* 反転値書き込み		*/
		ECM.IRCFG0.UINT32	=  0x00000000		;	/* 再書き込み			*/
	   do{
    	}while( ECM.PS.UINT8 == 0x01 );
    	

		ECM.PCMD1.UINT32	= 0x000000A5	;	
		ECM.IRCFG1.UINT32	=  0x00000000		;	/* 割り込み禁止			*/
		ECM.IRCFG1.UINT32	=  ~(0x00000000)	;	/* 反転値書き込み		*/
		ECM.IRCFG1.UINT32	=  0x00000000		;	/* 再書き込み			*/
 	   do{
    	}while( ECM.PS.UINT8 == 0x01 );		

//    4.    ECMmECLR レジスタで ERROROUT 出力クリアを行います。
		/* 保護レジスタ解除	*/
		ECMM.PCMD0.UINT32	= 0x00A5;
		/* ERROR_OUT エラー解除	*/
		ECMM.ECLR.UINT8		= 0x01;				;	/* ERROROUT_M出力		*/
		ECMM.ECLR.UINT8		= ~(0x01);			;	/* 反転値書き込み		*/
		ECMM.ECLR.UINT8		= 0x01;				;	/* 再書き込み			*/
	   do{
    	}while( ECM.PS.UINT8 == 0x01 );
		
		/* 保護レジスタ解除	*/
		ECMC.PCMD0.UINT32	= 0x00A5;
		/* ERROR_OUT CLR	*/
		ECMC.ECLR.UINT8		= 0x01;				;	/* ERROROUT_C出力		*/
		ECMC.ECLR.UINT8		= ~(0x01);			;	/* 反転値書き込み		*/
		ECMC.ECLR.UINT8		= 0x01;				;	/* 再書き込み			*/
	   do{
    	}while( ECM.PS.UINT8 == 0x01 );

//    5.    ECMESSTC0 レジスタの ECMCLSSE026 ビットでエラーをクリアします。
		/* 保護レジスタ解除	*/
		ECM.PCMD1.UINT32	= 0x000000A5	;
		/* ビットエラークリア	*/
		ECM.ESSTC0.UINT32	= 0x3E7FFFF1		;	/* 全エラークリア		*/
		ECM.ESSTC0.UINT32	= ~(0x3E7FFFF1)		;	/* 反転値書き込み		*/
		ECM.ESSTC0.UINT32	= 0x3E7FFFF1		;	/* 再書き込み			*/
	    do{
    	}while( ECM.PS.UINT8 == 0x01 );


		ECM.PCMD1.UINT32	= 0x000000A5	;	
		ECM.ESSTC1.UINT32	= 0x6000FEE0		;	/* 全エラークリア		*/
		ECM.ESSTC1.UINT32	= ~(0x6000FEE0)		;	/* 反転値書き込み		*/
		ECM.ESSTC1.UINT32	= 0x6000FEE0		;	/* 再書き込み			*/
	   do{
    	}while( ECM.PS.UINT8 == 0x01 );

//    6.    ECM コンペアエラーの使用条件に応じて以下の設定を行います。
//    -     ERROROUT 端子から ERROROUT 出力する場合、ECMEMK0 レジスタの ECMEMK026 ビットを
//         「マスクなし」に設定します。
//    -     割り込みを生成する場合、ECMMICFG0 レジスタの ECMMIE026 ビットを「許可」または、
//          ECMNMICFG0 レジスタの ECMNMIE026 ビットを「許可」に設定します。
//    -・   内部リセットを生成する場合、ECMIRCFG0 レジスタの ECMIRE026 ビットを「許可」に設定しま
//          す。

		/* エラーマスク解除	*/
		ECM.PCMD1.UINT32	= 0x000000A5	;
		ECM.EMK0.UINT32	= 0x3E7FFFF1		;	/* 全エラー　出力マスク	*/
		ECM.EMK0.UINT32	= ~(0x3E7FFFF1)		; 	/* 反転値書き込み		*/
		ECM.EMK0.UINT32	= 0x3E7FFFF1		;	/* 再書き込み			*/
	    do{
    	}while( ECM.PS.UINT8 == 0x01 );

		ECM.PCMD1.UINT32	= 0x000000A5	;		
		ECM.EMK1.UINT32	= 0x2000FEE0		;	/* 全エラー　出力マスク	*/
		ECM.EMK1.UINT32	= ~(0x2000FEE0)		; 	/* 反転値書き込み		*/
		ECM.EMK1.UINT32	= 0x2000FEE0		;	/* 再書き込み			*/
	    do{
    	}while( ECM.PS.UINT8 == 0x01 );

#if  1
		/* 内部リセット許可	*/
		ECM.PCMD1.UINT32	= 0x000000A5	;
		ECM.IRCFG0.UINT32	= 0x3E7FFFF1		;	/* 全エラー　内部リセット許可	*/
		ECM.IRCFG0.UINT32	= ~(0x3E7FFFF1)		; 	/* 反転値書き込み		*/
		ECM.IRCFG0.UINT32	= 0x3E7FFFF1		;	/* 再書き込み			*/
	   do{
    	}while( ECM.PS.UINT8 == 0x01 );
		ECM.PCMD1.UINT32	= 0x000000A5	;
		ECM.IRCFG1.UINT32	= 0x2000FE60		;	/* 全エラー　内部リセット許可	*/
		ECM.IRCFG1.UINT32	= ~(0x2000FE60)		; 	/* 反転値書き込み		*/
		ECM.IRCFG1.UINT32	= 0x2000FE60		;	/* 再書き込み			*/		
	   do{
    	}while( ECM.PS.UINT8 == 0x01 );

		if ( 1 == ECM.PS.BIT.PRERR )
		{
			__nop();
		}
#else
		/* 内部リセット禁止	*/
		ECM.PCMD1.UINT32	= 0x000000A5	;
		ECM.IRCFG0.UINT32	= ~(0x3E7FFFF1)		;	/* 全エラー　内部リセット禁止	*/
		ECM.IRCFG0.UINT32	= (0x3E7FFFF1)		; 	/* 反転値書き込み		*/
		ECM.IRCFG0.UINT32	= ~(0x3E7FFFF1)		;	/* 再書き込み			*/
	   do{
    	}while( ECM.PS.UINT8 == 0x01 );
		ECM.PCMD1.UINT32	= 0x000000A5	;
		ECM.IRCFG1.UINT32	= ~(0x2000FE60)		;	/* 全エラー　内部リセット禁止	*/
		ECM.IRCFG1.UINT32	= (0x2000FE60)		; 	/* 反転値書き込み		*/
		ECM.IRCFG1.UINT32	= ~(0x2000FE60)		;	/* 再書き込み			*/		
	   do{
    	}while( ECM.PS.UINT8 == 0x01 );

		if ( 1 == ECM.PS.BIT.PRERR )
		{
			__nop();
		}
#endif



	return ( SYS.RESF.UINT32 );
}

/*==============================================================*/
/*	クロック初期化関数											*/
/*	引数：	なし												*/
/*	 戻り値：　なし												*/
/*--------------------------------------------------------------*/
/*	備考														*/
/*==============================================================*/
void clock_init(void)
{
	unsigned short cnt;

	/* Clock Setting  */
	/* Main OSC(20MHz) 										*/
	/*		|- PLL0(240MHz)									*/
	/*		|		|- CLK_CPU	= 240MHz					*/
	/*		|		|- CLK_GRAM	= 120MHz					*/
	/*		|		|- CLK_HSB	=  80MHz					*/
	/* 		|		`- CLK_LSB	=  40MHz					*/
	/*		`- PLL1(80MHz)									*/
	/*				|- CLKC_HSB =  80MHz					*/
	/*				`- CLKC_LSB =  40MHz					*/

	/* Clock gear up sequence */
	/* PLL0 stable operation check */
	do{
	}while( SYS.PLL0CLKS.UINT32 != 0x00000007 );

	/* Change to PLL0 the clock source of the SSCG clock domain */
	SYS.PROT1PHCMD.UINT32 = 0x000000A5;
	SYS.CKSC0CTL.UINT32 = 0x00000023;
	SYS.CKSC0CTL.UINT32 = 0xFFFFFFDC;
	SYS.CKSC0CTL.UINT32 = 0x00000023;

	for (cnt=0; cnt<50000; ++cnt){}					/*Wait*/

	/* Change to 1/2 from 1/4 the division ratio of the PLL0(Divider 0A) */
	SYS.PROT1PHCMD.UINT32 = 0x000000A5;
	SYS.CLKD0DIV.UINT32 = 0x00000002;
	SYS.CLKD0DIV.UINT32 = 0xFFFFFFFD;
	SYS.CLKD0DIV.UINT32 = 0x00000002;

	/* Change to 1/2 from 1/4 the division ratio of the PLL1(Divider 0B) */
	SYS.PROT1PHCMD.UINT32 = 0x000000A5;
	SYS.CKSC1CTL.UINT32 = 0x00000022;
	SYS.CKSC1CTL.UINT32 = 0xFFFFFFDD;
	SYS.CKSC1CTL.UINT32 = 0x00000022;

	for (cnt=0; cnt<50000; ++cnt){}					/*Wait*/
	do{
	}while( SYS.CLKD0STAT.BIT.CLKD0SYNC != 1 );			/* Divider 0A Operation check */
	
	/* Change to 1/1 from 1/2 the division ratio of the PLL0(Divider 0A) */
	SYS.PROT1PHCMD.UINT32 = 0x000000A5;
	SYS.CLKD0DIV.UINT32 = 0x00000001;
	SYS.CLKD0DIV.UINT32 = 0xFFFFFFFE;
	SYS.CLKD0DIV.UINT32 = 0x00000001;
	/* Change to 1/1 from 1/2 the division ratio of the PLL1(Divider 0B) */
	SYS.PROT1PHCMD.UINT32 = 0x000000A5;
	SYS.CKSC1CTL.UINT32 = 0x00000024;
	SYS.CKSC1CTL.UINT32 = 0xFFFFFFDB;
	SYS.CKSC1CTL.UINT32 = 0x00000024;

	for (cnt=0; cnt<50000; ++cnt){}					/*Wait*/
	do{
	}while( SYS.CLKD0STAT.BIT.CLKD0SYNC != 1 );			/* Divider 0A Operation check */

}

/*==============================================================*/
/*	ERROR_OUT設定関数											*/
/*	引数：	なし												*/
/*	 戻り値：　なし												*/
/*--------------------------------------------------------------*/
/*	備考  デバック用											*/
/*==============================================================*/
void errout_set( void )
{
	ECM.PCMD1.UINT32	= 0x000000A5	;
	ECM.PE0.UINT32	= (0x00000001)		;	/* WDTA疑似エラー書き込み	*/
	ECM.PE0.UINT32	= ~(0x00000001)		; 	/* 反転値書き込み		*/
	ECM.PE0.UINT32	= (0x00000001)		;	/* 再書き込み			*/
   do{
   	}while( ECM.PS.UINT8 == 0x01 );		

}

/*==============================================================*/
/*	ECM2ステータス取得関数										*/
/*	引数：	なし												*/
/*	 戻り値：　EMCレジスタが0以外の時に							*/
/*--------------------------------------------------------------*/
/*	備考														*/
/*==============================================================*/
u1	u4_emc_status ( u4 *u4_m_emc_str0 , u4 *u4_c_emc_str0 ,
					u4 *u4_m_emc_str1 , u4 *u4_c_emc_str1 )
{
	u1	u1_error_status = 0 ;
	
	if ( 0 != ECMM.ESSTR0.UINT32 )
	{
		u1_error_status |= 0x01 ;
	}
	else{}
	if ( 0 != ECMC.ESSTR0.UINT32 )
	{
		u1_error_status |= 0x02 ;
	}
	else{}
		
	if ( 0 != (ECMM.ESSTR1.UINT32&0x7FFFFFF ))
	{
		u1_error_status |= 0x04;
	}
	else{}
		
	if ( 0 != (ECMC.ESSTR1.UINT32&0x7FFFFFFF ))
	{
		u1_error_status |= 0x08 ;
	}
	else{}	
	
	*u4_m_emc_str0	= ECMM.ESSTR0.UINT32;
	*u4_c_emc_str0	= ECMC.ESSTR0.UINT32;
	*u4_m_emc_str1  = ECMM.ESSTR1.UINT32;
	*u4_c_emc_str1  = ECMC.ESSTR1.UINT32;

	return( u1_error_status) ;
}

/*==============================================================*/
/*	PBG　設定関数												*/
/*	引数：	全てのマスタにアクセス許可を与えるPGB_CH No			*/
/*	 戻り値：　なし												*/
/*--------------------------------------------------------------*/
/*	備考														*/
/*			・PBG0/1はデフォルトとしている						*/
/*			・設定は必要に応じて修正の事						*/
/*==============================================================*/
void pbg_prot_clr(u1 u1_pbg_grp , u1 u1_pbg_ch )
{
	switch ( u1_pbg_grp )
	{
		case 0:
			switch ( u1_pbg_ch )
			{
				case 0:
					PBG.FSGD0DPROT0.UINT32 = (u4)(0x07FFFFFF);			/* INTC2					*/
				break;
				case 1:
					PBG.FSGD0DPROT1.UINT32 = (u4)(0x07FFFFFF);			/* DMA_DTS					*/
				break;
				default:
				break;
			}
		break;
		case 1:
			switch ( u1_pbg_ch )
			{
				case 4:
					PBG.FSGD1DPROT4.UINT32 = (u4)(0x07FFFFFF);			/* GRG制御レジスタ			*/
				break;
				case 5:
					PBG.FSGD1DPROT5.UINT32 = (u4)(0x07FFFFFF);			/* GRGステータス(VCI2GRAM)	*/
				break;
				case 6:
					PBG.FSGD1DPROT6.UINT32 = (u4)(0x07FFFFFF);			/* GRGステータス（PE1)		*/
				break;
				case 7:
					PBG.FSGD1DPROT7.UINT32 = (u4)(0x07FFFFFF);			/* GRGステータス（PE2)		*/
				break;
				default:
				break;
			}
		break;
		case 2:
			switch ( u1_pbg_ch )
			{
				case 0:
					PBG.FSGD2DPROT0.UINT32 = (u4)(0x00060253);			/* RDC20					*/
				break;
				case 1:
					PBG.FSGD2DPROT1.UINT32 = (u4)(0x00060253);			/* RDC21					*/
				break;
				case 2:
					PBG.FSGD2DPROT2.UINT32 = (u4)(0x00060253);			/* PBG2自身					*/
				break;
				default:
				break;
			}
		break;
		case 3:
			switch ( u1_pbg_ch )
			{
				case 0:
					PBG.FSGD3DPROT0.UINT32 = (u4)(0x00060253);			/* ADCC0					*/
				break;
				case 1:
					PBG.FSGD3DPROT1.UINT32 = (u4)(0x00060253);			/* ADCC1					*/
				break;
				case 2:
					PBG.FSGD3DPROT2.UINT32 = (u4)(0x00060253);			/* ECM(マスタ)				*/
				break;
				case 3:
					PBG.FSGD3DPROT3.UINT32 = (u4)(0x00060253);			/* ECM(チェッカ)			*/
				break;
				case 4:
					PBG.FSGD3DPROT4.UINT32 = (u4)(0x00060253);			/* ECM(共通部)				*/
				break;
				case 5:
					PBG.FSGD3DPROT5.UINT32 = (u4)(0x00060253);			/* ポートグループ			*/
				break;
				case 6:
					PBG.FSGD3DPROT6.UINT32 = (u4)(0x00060253);			/* DCRA0					*/
				break;
				case 7:
					PBG.FSGD3DPROT7.UINT32 = (u4)(0x00060253);			/* DCRA1					*/
				break;
				case 8:
					PBG.FSGD3DPROT8.UINT32 = (u4)(0x00060253);			/* PBG3自身					*/
				break;
				default:
				break;
			}
		break;
		case 4:
			switch ( u1_pbg_ch )
			{
				case 0:
					PBG.FSGD4DPROT0.UINT32 = (u4)(0x00060253);			/* TAUD0					*/
				break;
				case 1:
					PBG.FSGD4DPROT1.UINT32 = (u4)(0x00060253);			/* TAUD1					*/
				break;
				case 2:
					PBG.FSGD4DPROT2.UINT32 = (u4)(0x00060253);			/* TAPA0					*/
				break;
				case 3:
					PBG.FSGD4DPROT3.UINT32 = (u4)(0x00060253);			/* TAPA1					*/
				break;
				case 4:
					PBG.FSGD4DPROT4.UINT32 = (u4)(0x00060253);			/* TAPA2					*/
				break;
				case 5:
					PBG.FSGD4DPROT5.UINT32 = (u4)(0x00060253);			/* TAPA3					*/
				break;
				case 6:
					PBG.FSGD4DPROT6.UINT32 = (u4)(0x00060253);			/* TSG30					*/
				break;
				case 7:
					PBG.FSGD4DPROT7.UINT32 = (u4)(0x00060253);			/* TSG31					*/
				break;
				case 8:
					PBG.FSGD4DPROT8.UINT32 = (u4)(0x00060253);			/* PBG4自身					*/
				break;
				default:
				break;
			}
		break;
		case 5:
			switch ( u1_pbg_ch )
			{
				case 0:
					PBG.FSGD5DPROT0.UINT32 = (u4)(0x00060253);			/* CSIH0(groupA)			*/
				break;
				case 1:
					PBG.FSGD5DPROT1.UINT32 = (u4)(0x00060253);			/* CSIH0(groupB)			*/
				break;
				case 2:
					PBG.FSGD5DPROT2.UINT32 = (u4)(0x00060253);			/* CSIH1(groupA)			*/
				break;
				case 3:
					PBG.FSGD5DPROT3.UINT32 = (u4)(0x00060253);			/* CSIH1(groupB)			*/
				break;
				case 4:
					PBG.FSGD5DPROT4.UINT32 = (u4)(0x00060253);			/* RS-CAN					*/
				break;
				case 5:
					PBG.FSGD5DPROT5.UINT32 = (u4)(0x00060253);			/* EMU20					*/
				break;
				case 6:
					PBG.FSGD5DPROT6.UINT32 = (u4)(0x00060253);			/* EMU21					*/
				break;
				case 7:
					PBG.FSGD5DPROT7.UINT32 = (u4)(0x00060253);			/* PBG5自身					*/
				break;
				default:
				break;
			}

		break;
		default:
		break;
	}
}


/*==============================================================*/
/*	PEG　初期化関数												*/
/*	引数：														*/
/*		u1 u1_spid:　アクセス許可SPID No						*/
/*--------------------------------------------------------------*/
/*	備考														*/
/*	　　　　使用機能											*/
/*					PEG											*/
/*          SPIDによるLocalRAMアクセス許可						*/
/*          Core0側　64KByte（すべて許可設定）					*/
/*			4領域に分けられるが、本関数は、1領域64KByteを設定	*/
/*--------------------------------------------------------------*/
void core0_peg_init(u1 u1_spid)
{
	PEG.SP.UINT16	= (u2)0x0001;									/* SPIDを持つバスマスタアクセス許可		*/
 	PEG.G0MK.UINT32	= (u4)0x0000F000;                               /* PEガード領域マスク設定 64KB          */
 	switch ( u1_spid )
 	{
 		case 1:
			PEG.G0BA.UINT32	= (u4)0xFEBF0027 ;							/* SPID=1はR/W許可						*/
																		/* MKレジスタWriteでアクセス許可条件が  */
																		/* 無効になるのでMK->BAの順で設定する事	*/
		break;
		case 2:
			PEG.G0BA.UINT32	= (u4)0xFEBF0047 ;							/* SPID=2はR/W許可						*/			
		break;
		default:
		break;
	}
}

/*==============================================================*/
/*	PEG　初期化関数												*/
/*	引数：														*/
/*		u1 u1_spid:　アクセス許可SPID No						*/
/*--------------------------------------------------------------*/
/*	備考														*/
/*	　　　　使用機能											*/
/*					PEG											*/
/*          SPIDによるLocalRAMアクセス許可						*/
/*          Core1側　64KByte（すべて許可設定）					*/
/*			4領域に分けられるが、本関数は、1領域64KByteを設定	*/
/*--------------------------------------------------------------*/
void core1_peg_init(u1 u1_spid)
{
	PEG.SP.UINT16	= (u2)0x0001;									/* SPIDを持つバスマスタアクセス許可		*/
 	PEG.G0MK.UINT32	= (u4)0x0000F000;                               /* PEガード領域マスク設定 64KB          */
 	switch ( u1_spid )
 	{
 		case 1:
			PEG.G0BA.UINT32	= (u4)0xFE9F0027 ;							/* SPID=1はR/W許可						*/
																		/* MKレジスタWriteでアクセス許可条件が  */
																		/* 無効になるのでMK->BAの順で設定する事	*/
		break;
		case 2:
			PEG.G0BA.UINT32	= (u4)0xFE9F0047 ;							/* SPID=2はR/W許可						*/			
		break;
		default:
		break;
	}
}

/*--------------------------------------------------------------*/



/* End of File */