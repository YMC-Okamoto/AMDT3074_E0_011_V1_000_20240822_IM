#define	__io_TSG30

void tsg30_init ( u4 u4_freq, u4 u4_deadtime_on, u4 u4_deadtime_off, u1 u1_logic, u1 u1_trigsrc, u1 u1_intlv , u1 u1_intdn , u1 u1_intcpu);
void tsg30_start ( void );
void tsg30_stop ( void );
void dpinv0_start ( void );
void dpinv0_stop ( void );
void dpinv0_set_addelay ( s4 delay_ns );
void dpinv0_setuvwf_f_V1 ( float f_mu, float f_mv, float f_mw, float f_freq );
void dpinv0_setuvwf_f_V2 ( float f_mu, float f_mv, float f_mw, float f_freq );
void dpinv0_setuvwf_f_V3 ( float f_mu, float f_mv, float f_mw, float f_freq );

void dpinv0_extgb_init(u1 u1_mode);
u1 dpinv0_extgb_status( void );
void dpinv0_extgb_clr( void );
void tsg30_111int_stop ( void );
void dpinv0_setuvw_1pulse ( u1 pattarn );
void dpinv0_gatectrl ( u1 port, u1 pattern );
void tsg30_31_start ( void );
void	tsg30_TSG30O0_out(void);
void dpinv01_setuvw_1pulse ( u1 pattarn );
void dpinv0_set_freq ( float f_freq );