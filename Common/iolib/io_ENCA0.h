#define	__io_ENCA0

void enca0_init( u2 u2_cnt_max , u1 u1_src_abz );
u2 u2_enca0_cnt_read( u1 u1_fwrev_mode );
void enca0_stop( void );
void enca0_start( void );
void enca0_cnt_set( u2 u2_cnt_set , u1 u1_fwrev_mode );
void enca0_ccr1_set( u2 u2_cnt_set , u1 u1_fwrev_mode );
void enca0_init_interrupt( u1 u1_intlv , u1 u1_intcpu);
