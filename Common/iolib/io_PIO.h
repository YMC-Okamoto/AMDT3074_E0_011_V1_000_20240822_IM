#define	__io_PIO


void pio_init ( void );

void ex_intpx_init ( u1 u1_intpx , u1 u1_filter , u1 u1_level , u1 u1_intlv );
u1 intpx_status_read ( u1 u1_intpx );

// ì¸óÕ
#define	Get_INVC1()			(PORT.PPR2.BIT.PPR2_0)		// P2_0
#define	Get_INVC2()			(PORT.PPR2.BIT.PPR2_1)		// P2_1

#define	Get_GB_LATCH()		(PORT.PPR2.BIT.PPR2_5)		// P2_5
#define	Get_EMG_IN()		(PORT.PPR2.BIT.PPR2_6)		// P2_6
#define	Get_GB()			(PORT.PPR3.BIT.PPR3_3)		// P3_3

#define	Get_UDI0()			(PORT.PPR5.BIT.PPR5_3)		// P5_3
#define	Get_UDI1()			(PORT.PPR5.BIT.PPR5_8)		// P5_8
#define	Get_UDI2()			(PORT.PPR0.BIT.PPR0_12)		// P0_12
#define	Get_UDI3()			(PORT.PPR0.BIT.PPR0_14)		// P0_14

#define	Get_DI0()			(PORT.PPR6.BIT.PPR6_4)		// P6_4
#define	Get_DI1()			(PORT.PPR6.BIT.PPR6_5)		// P6_5
#define	Get_DI2()			(PORT.PPR6.BIT.PPR6_6)		// P6_6
#define	Get_DI3()			(PORT.PPR6.BIT.PPR6_7)		// P6_7
#define	Get_DI4()			(PORT.PPR7.BIT.PPR7_0)		// P7_0
#define	Get_DI5()			(PORT.PPR7.BIT.PPR7_1)		// P7_1
#define	Get_DI6()			(PORT.PPR7.BIT.PPR7_2)		// P7_2
#define	Get_DI7()			(PORT.PPR5.BIT.PPR5_7)		// P5_7

#define	Get_TH_U0()			(PORT.PPR0.BIT.PPR0_6)		// P0_6
#define	Get_TH_V0()			(PORT.PPR0.BIT.PPR0_7)		// P0_7
#define	Get_TH_W0()			(PORT.PPR0.BIT.PPR0_8)		// P0_8
#define	Get_TH_U1()			(PORT.PPR0.BIT.PPR0_9)		// P0_9
#define	Get_TH_V1()			(PORT.PPR0.BIT.PPR0_10)		// P0_10
#define	Get_TH_W1()			(PORT.PPR0.BIT.PPR0_11)		// P0_11


// èoóÕ
#define	Set_GB_CLR(u1_VAL)	(PORT.PSR0.UINT32 = ( ((0x01)<<4) << 16 ) | ((u1_VAL&0x01) << 4)) 		// P0_4
#define	Set_TH_PN(u1_VAL)	(PORT.PSR0.UINT32 = ( ((0x01)<<5) << 16 ) | ((u1_VAL&0x01) << 5)) 		// P0_5
#define	Set_SDWN1(u1_VAL)	(PORT.PSR3.UINT32 = ( ((0x01)<<6) << 16 ) | ((u1_VAL&0x01) << 6)) 		// P3_6
#define	Set_SDWN2(u1_VAL)	(PORT.PSR3.UINT32 = ( ((0x01)<<7) << 16 ) | ((u1_VAL&0x01) << 7)) 		// P3_7

#define	Set_RLY1(u1_VAL)	(PORT.PSR2.UINT32 = ( ((0x01)<<7) << 16 ) | ((u1_VAL&0x01) << 7))		// P2_7
#define	Set_RLY2(u1_VAL)	(PORT.PSR3.UINT32 = ( ((0x01)<<0) << 16 ) | ((u1_VAL&0x01) << 0))		// P3_0
#define	Set_RLY3(u1_VAL)	(PORT.PSR3.UINT32 = ( ((0x01)<<1) << 16 ) | ((u1_VAL&0x01) << 1))		// P3_1
#define	Set_RLY4(u1_VAL)	(PORT.PSR3.UINT32 = ( ((0x01)<<2) << 16 ) | ((u1_VAL&0x01) << 2))		// P3_2
#define	Set_RLY5(u1_VAL)	(PORT.PSR3.UINT32 = ( ((0x01)<<5) << 16 ) | ((u1_VAL&0x01) << 5))		// P3_5
#define	Set_RLY6(u1_VAL)	(PORT.PSR2.UINT32 = ( ((0x01)<<2) << 16 ) | ((u1_VAL&0x01) << 2))		// P2_2
#define	Set_RLY7(u1_VAL)	(PORT.PSR2.UINT32 = ( ((0x01)<<3) << 16 ) | ((u1_VAL&0x01) << 3))		// P2_3
#define	Set_RLY8(u1_VAL)	(PORT.PSR2.UINT32 = ( ((0x01)<<4) << 16 ) | ((u1_VAL&0x01) << 4)) 		// P2_4

#define	Set_DO0(u1_VAL)		(PORT.PSR6.UINT32 = ( ((0x01)<<0) << 16 ) | ((u1_VAL&0x01) << 0)) 		// P6_0
#define	Set_DO1(u1_VAL)		(PORT.PSR6.UINT32 = ( ((0x01)<<1) << 16 ) | ((u1_VAL&0x01) << 1)) 		// P6_1
#define	Set_DO2(u1_VAL)		(PORT.PSR6.UINT32 = ( ((0x01)<<2) << 16 ) | ((u1_VAL&0x01) << 2)) 		// P6_2
#define	Set_DO3(u1_VAL)		(PORT.PSR6.UINT32 = ( ((0x01)<<3) << 16 ) | ((u1_VAL&0x01) << 3)) 		// P6_3
#define	Set_DO4(u1_VAL)		(PORT.PSR0.UINT32 = ( ((0x01)<<1) << 16 ) | ((u1_VAL&0x01) << 1)) 		// P0_1
#define	Set_DO5(u1_VAL)		(PORT.PSR0.UINT32 = ( ((0x01)<<2) << 16 ) | ((u1_VAL&0x01) << 2)) 		// P0_2
#define	Set_DO6(u1_VAL)		(PORT.PSR0.UINT32 = ( ((0x01)<<3) << 16 ) | ((u1_VAL&0x01) << 3)) 		// P0_3

#define	Set_UDO0(u1_VAL)	(PORT.PSR5.UINT32 = ( ((0x01)<<4) << 16 ) | ((u1_VAL&0x01) << 4))		// P5_4
#define	Set_UDO1(u1_VAL)	(PORT.PSR5.UINT32 = ( ((0x01)<<9) << 16 ) | ((u1_VAL&0x01) << 9))		// P5_9
#define	Set_UDO2(u1_VAL)	(PORT.PSR1.UINT32 = ( ((0x01)<<0) << 16 ) | ((u1_VAL&0x01) << 0)) 		// P1_0
#define	Set_UDO3(u1_VAL)	(PORT.PSR1.UINT32 = ( ((0x01)<<14) << 16 ) | ((u1_VAL&0x01) << 14)) 		// P1_14


//WDTCLR
#define		WDTCLR()			(PORT.PNOT5.BIT.PNOT5_6=1)			/* P5_6ÇîΩì]									*/


/* CPLD í êM Å´*/
#define	DO_PLDSPI_CS		PORT.P4.BIT.P4_10
#define	DO_PLDSPI_CLK		PORT.P4.BIT.P4_9
#define	DI_PLDSPI_IN		PORT.PPR4.BIT.PPR4_7
#define	DO_PLDSPI_OUT		PORT.P4.BIT.P4_8
/* CPLD í êM Å™*/

