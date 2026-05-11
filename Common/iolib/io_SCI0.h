#define	__io_SCI0
u1	sci0_init( u4 u4_boud, u1 u1_intlv , u1 u1_intcpu , u1 u1_mode_sel );
void	sci0_start(void);
void	sci0_stop(void);
u1	u1_SO30_1byte(u1 u1_tx_data);
u1	u1_SI30_1byte(u1 *u1_rx_data);
