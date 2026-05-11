#define	__io_ENCA1

void enca1_init( u2 u2_cnt_max , u1 u1_src_abz );
u2 u2_enca1_cnt_read( u1 u1_fwrev_mode );
void enca1_stop( void );
void enca1_start( void );
void enca1_cnt_set( u2 u2_cnt_set , u1 u1_fwrev_mode );
void enca1_ccr1_set( u2 u2_cnt_set , u1 u1_fwrev_mode );
void enca1_init_interrupt( u1 u1_intlv , u1 u1_intcpu);
