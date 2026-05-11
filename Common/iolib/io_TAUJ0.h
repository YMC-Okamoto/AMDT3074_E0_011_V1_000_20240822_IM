#define	__io_TAUJ0

void	tauj0prescale0_2_8_0_init(void);
void	tauj0_stop(void);

void pwm0_2_init ( u4 u4_freq , u1 u1_logic , u1 u1_intlv , u1 u1_intcpu);
void pwm0_2_tim_start ( void  );
void pwm0_2_tim_stop( void );
void pwm0_2_start( void );
void pwm0_2_stop( void );
void set_pwm0_2_m ( f4 f4_m );
void set_pwm0_2_mf ( f4 f4_m  , u4 u4_freq );

void pwm0_3_init ( u4 u4_freq , u1 u1_logic , u1 u1_intlv , u1 u1_intcpu);
void pwm0_3_tim_start ( void  );
void pwm0_3_tim_stop( void );
void pwm0_3_start( void );
void pwm0_3_stop( void );
void set_pwm0_3_m ( f4 f4_m );
void set_pwm0_3_mf ( f4 f4_m  , u4 u4_freq );


void	freq_capture0_init( u1 u1_intlv , u1 u1_intcpu);
void 	freq_capture0_start ( void );
void freq_capture0_stop ( void );
u4 freq_capture0_cnt_read(void);
u1 freq_capture0_flag_read(void);

void	freq_capture1_init( u1 u1_intlv , u1 u1_intcpu);
void 	freq_capture1_start ( void );
void freq_capture1_stop ( void );
u4 freq_capture1_cnt_read(void);
u1 freq_capture1_flag_read(void) ;

void	freq_capture2_init( u1 u1_intlv , u1 u1_intcpu);

void 	freq_capture2_start ( void );
void freq_capture2_stop ( void );
u4 freq_capture2_cnt_read(void);
u1 freq_capture2_flag_read(void);
