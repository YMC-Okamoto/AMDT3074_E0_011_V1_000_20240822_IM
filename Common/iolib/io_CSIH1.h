#define	__io_CSIH1

void csih1_init( u2 u2_Mbps );
void csih1_RA270000_init( u2 u2_Kbps );
u1	u1_tx1_1byte(u1 u1_tx_data);
u1	u1_tx1_2byte(u2 u2_tx_data);

u1		u1_rx1_1byte(u1 *u1_rx_data);
u1		u1_rx1_2byte(u2 *u2_rx_data);
void csih1_tx_intlv_init( u1 u1_intlv , u1 u1_intcpu);

u1		u1_TX0_RA270000( u1 u1_rw , u1 u1_addr , u1 u1_data);
u1		u1_RX0_RA270000( u1  *u1_rx_data );

#define		Get_TX1_STATUS()		(CSIH1.STR0.BIT.TSF)
#define		Get_RX1_DATA()			(CSIH1.RX0W.BIT.RX)

#define		CSIH1_TX_EN(u1_val)		(CSIH1.CTL0.BIT.TXE = u1_val)
#define		CSIH1_RX_EN(u1_val)		(CSIH1.CTL0.BIT.RXE = u1_val)

void csih1_eeprom_init( u2 u2_Mbps );
u1		u1_CSIH1_EPIF_TX_2byte(s2 s2_tx_data);
u1		u1_CSIH1_EPIF_TX_1byte(s1 s1_tx_data);
u1		u1_CSIH1_EPIF_RX_2byte(s2 *s2_rx_data);
u1		u1_CSIH1_EPIF_RX_1byte(s1 *s1_rx_data);
void	eprom_cs ( u1 u1_cs );

