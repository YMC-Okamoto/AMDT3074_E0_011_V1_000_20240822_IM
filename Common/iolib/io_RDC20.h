#define	__io_RDC20

u1 rdc20_init( u1 u1_intsrc_en , u1 u1_abz_en , u1 u1_bisten , u1 u1_out_monitor , u1 u1_hsys );
u2 u2_rdc20str_read( void );
u2 u2_rdc20_cnt_read( void );
void rdc20_init_interrupt( u1 u1_intlv ,u1 u1_intsrc ,  u1 u1_intcpu);
void rdc20_cmp0_set( u2 u2_cnt );
void rdc20_cmp1_set( u2 u2_cnt );
void rdc20_cmp2_set( u2 u2_cnt );
signed long int s4_rdc20_rpm(void);
unsigned short u2_read_rdc20_status(void);
void rdc20_ABZ_Terminal_output(void);

#define	Set_RDC20_ERRST(val) 	( RDC20.ERDET.BIT.ERRST = val )
#define	Get_RDC20_ERRST() 		( RDC20.ERDET.BIT.ERRST )