#include "./io_FCANlib.h"

#define	__io_FCAN

u4	can_init( u1 u1_use_ch );

u4 can_setup_rx_mbox(  u4 u4_ch, can_st_mbox *ptr_MBOX )  ;
u4 can_setup_tx_mbox(  u4 u4_ch, can_st_mbox *ptr_MBOX )  ;
u4 can_tx_data(  u4 u4_ch, can_st_mbox *ptr_MBOX )  ;
u4	can0_init(  u4 u4_Kbaud, u4 u4_tseg1, u4 u4_tseg2, u4 u4_sjw ) ;
u4	can1_init(  u4 u4_Kbaud, u4 u4_tseg1, u4 u4_tseg2, u4 u4_sjw );
u4	can2_init(  u4 u4_Kbaud, u4 u4_tseg1, u4 u4_tseg2, u4 u4_sjw );
u4	can3_init(  u4 u4_Kbaud, u4 u4_tseg1, u4 u4_tseg2, u4 u4_sjw );
u4 can_rx_data(  u4 u4_ch, can_st_mbox *ptr_MBOX )  ;
u4	u4_rx_fifo_chk(u4 u4_ch);
u4	can_module_busoffchk( u4 u4_ch );
u4	can_module_chk( u4 u4_ch );
u4	can_chint_init ( u4 u4_ch, u1 u1_intlv , u1 u1_intcpu);
void	can_gint_init ( u1 u1_intlv , u1 u1_intcpu);

