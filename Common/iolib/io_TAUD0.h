#define	__io_TAUD0

void	taud0prescale_0_2_8_0_init(void);
void	taud0prescale_0_2_64_0_init(void);
void	taud0_stop(void);

void interval00_init ( u4 u4_interval_us, u1 u1_intlv , u1 u1_intcpu);		// CK3
void interval00_start(void);
void interval00_stop(void);

void interval01_init ( u4 u4_interval_us, u1 u1_intlv , u1 u1_intcpu);		// CK3
void interval01_start(void);
void interval01_stop(void);

void interval02_init ( u4 u4_interval_us, u1 u1_intlv , u1 u1_intcpu );		// CK3
void interval02_start(void);
void interval02_stop(void);

void interval03_init ( u4 u4_interval_us, u1 u1_intlv , u1 u1_intcpu);		// CK3
void interval03_start(void);
void interval03_stop(void);

void interval04_init ( u4 u4_interval_us, u1 u1_intlv , u1 u1_intcpu);		// CK3
void interval04_start(void);
void interval04_stop(void);

void stopwatch0_init ( void );												// CK2: 10MHZ
void stopwatch0_start(void);
u2	 stopwatch0_stop(void);

void freq_capture5_init ( u1 u1_intlv , u1 u1_level ,u1 u1_intcpu);
void freq_capture5_start( void );
u1 freq_capture5_flag_read(void);

void freq_capture6_11_init ( u1 u1_intlv , u1 u1_intcpu);					// CK1:40MHz		
void freq_capture6_11_start(void);
void  freq_capture6_11_stop(void);
u1	temp_capture6_read( u2 *u2_freq_cnt , u2 *u2_hilevel_cnt);
u1	temp_capture7_read( u2 *u2_freq_cnt , u2 *u2_hilevel_cnt);
u1	temp_capture8_read( u2 *u2_freq_cnt , u2 *u2_hilevel_cnt);
u1	temp_capture9_read( u2 *u2_freq_cnt , u2 *u2_hilevel_cnt);
u1	temp_capture10_read( u2 *u2_freq_cnt , u2 *u2_hilevel_cnt);
u1	temp_capture11_read( u2 *u2_freq_cnt , u2 *u2_hilevel_cnt);

void	temp_capture6_11_ovfclr(void);

u1 freq_capture6_flag_read(void);
u1 freq_capture7_flag_read(void);
u1 freq_capture8_flag_read(void);
u1 freq_capture9_flag_read(void);
u1 freq_capture10_flag_read(void);
u1 freq_capture11_flag_read(void);


void pwm0_7_init (  u4 u4_freq, u1 u1_logic ,u1 u1_intlv  , u1 u1_intcpu );	// CK0:80MHz		
void pwm0_7_tim_start(void);
void pwm0_7_tim_stop(void);
void pwm0_7_start ( void );
void pwm0_7_stop ( void );
void pwm0_7_setm_f ( f4 f4_m );



#define		Get_FREQ_TIM6_IF()		INTC2.EIC88.BIT.EIRF88
#define		Get_FREQ_TIM7_IF()		INTC2.EIC89.BIT.EIRF89
#define		Get_FREQ_TIM8_IF()		INTC2.EIC90.BIT.EIRF90
#define		Get_FREQ_TIM9_IF()		INTC2.EIC91.BIT.EIRF91
#define		Get_FREQ_TIM10_IF()		INTC2.EIC92.BIT.EIRF92
#define		Get_FREQ_TIM11_IF()		INTC2.EIC93.BIT.EIRF93

#define		Set_FREQ_TIM6_IF(u1_val)	INTC2.EIC88.BIT.EIRF88 = u1_val
#define		Set_FREQ_TIM7_IF(u1_val)	INTC2.EIC89.BIT.EIRF89 = u1_val
#define		Set_FREQ_TIM8_IF(u1_val)	INTC2.EIC90.BIT.EIRF90 = u1_val
#define		Set_FREQ_TIM9_IF(u1_val)	INTC2.EIC91.BIT.EIRF91 = u1_val
#define		Set_FREQ_TIM10_IF(u1_val)	INTC2.EIC92.BIT.EIRF92 = u1_val
#define		Set_FREQ_TIM11_IF(u1_val)	INTC2.EIC93.BIT.EIRF93 = u1_val


