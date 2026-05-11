#define	__io_CSIH0

void csih0_init( u2 u2_Mbps );

u1	u1_CSIH0_SO_1byte(u1 u1_tx_data);
u1	u1_CSIH0_SO_2byte(u2 u2_tx_data);

u1		u1_CSIH0_SI_1byte(u1 *u1_rx_data);
u1		u1_CSIH0_SI_2byte(u2 *u2_rx_data);
void csih0_tx_intlv_init( u1 u1_intlv , u1 u1_intcpu);


#define		Get_TX0_STATUS()		(CSIH0.STR0.BIT.TSF)
#define		Get_RX0_DATA()			(CSIH0.RX0W.BIT.RX)

#define		CSIH0_TX_EN(u1_val)		(CSIH0.CTL0.BIT.TXE = u1_val)
#define		CSIH0_RX_EN(u1_val)		(CSIH0.CTL0.BIT.RXE = u1_val)

