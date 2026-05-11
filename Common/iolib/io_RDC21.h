#define	__io_RDC21

u1 rdc21_init( u1 u1_intsrc_en , u1 u1_abz_en , u1 u1_bisten , u1 u1_out_monitor , u1 u1_hsys );
u2 u2_rdc21str_read( void );
u2 u2_rdc21_cnt_read( void );
void rdc21_init_interrupt( u1 u1_intlv ,u1 u1_intsrc ,  u1 u1_intcpu);
void rdc21_cmp0_set( u2 u2_cnt );
void rdc21_cmp1_set( u2 u2_cnt );
void rdc21_cmp2_set( u2 u2_cnt );
signed long int s4_rdc21_rpm(void);
unsigned short u2_read_rdc21_status(void);

void rdc21_ABZ_Terminal_output(void);

#define	Set_RDC21_ERRST(val) 	( RDC21.ERDET.BIT.ERRST = val )
#define	Get_RDC21_ERRST() 		( RDC21.ERDET.BIT.ERRST )
