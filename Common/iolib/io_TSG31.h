#define	__io_TSG31

void tsg31_init ( u4 u4_freq, u4 u4_deadtime_on, u4 u4_deadtime_off, u1 u1_logic, u1 u1_trigsrc, u1 u1_intlv , u1 u1_intdn , u1 u1_intcpu);
void tsg31_start ( void );
void tsg31_stop ( void );
void dpinv1_start ( void );
void dpinv1_stop ( void );
void dpinv1_set_addelay ( s4 delay_ns );
void dpinv1_setuvwf_f_V1 ( float f_mu, float f_mv, float f_mw, float f_freq );
void dpinv1_setuvwf_f_V2 ( float f_mu, float f_mv, float f_mw, float f_freq );
void dpinv1_setuvwf_f_V3 ( float f_mu, float f_mv, float f_mw, float f_freq );
void dpinv1_extgb_init(u1 u1_mode);

u1 dpinv1_extgb_status( void );
void dpinv1_extgb_clr( void );
void tsg31_111int_stop ( void );
void dpinv1_setuvw_1pulse ( u1 pattarn );
void dpinv1_gatectrl ( u1 port, u1 pattern );
void re_set_port_for_conv(void);
void dpconv1_start ( void );

void dpinv1_set_freq ( float f_freq );