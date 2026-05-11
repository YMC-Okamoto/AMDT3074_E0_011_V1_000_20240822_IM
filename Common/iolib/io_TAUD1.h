#define	__io_TAUD1

void	taud1prescale_0_2_8_0_init(void);
void	taud1prescale_0_2_32_0_init(void);
void	taud1prescale_0_2_64_0_init(void);
void	taud1_stop(void);

void interval10_init ( u4 u4_interval_us, u1 u1_intlv , u1 u1_intcpu);			// CK3
void interval10_start(void);
void interval10_stop(void);
void interval12_init ( u4 u4_interval_us, u1 u1_intlv , u1 u1_intcpu );			// CK3
void interval12_start(void);
void interval12_stop(void);
void interval13_init ( u4 u4_interval_us, u1 u1_intlv , u1 u1_intcpu);			// CK3
void interval13_start(void);
void interval13_stop(void);
void interval14_init ( u4 u4_interval_us, u1 u1_intlv , u1 u1_intcpu);			// CK3
void interval14_start(void);
void interval14_stop(void);
void stopwatch1_init ( void );													// CK2: 10MHZ
void stopwatch1_start(void);
u2	 stopwatch1_stop(void);

void level_capture6_11_init ( u1 u1_level );									// CK1:40MHz
void level_capture6_11_start(void);
void  levelcapture6_11_stop(void);
u1 level_capture6_flag_read(void);
u1 level_capture7_flag_read(void);
u1 level_capture8_flag_read(void);
u1 level_capture9_flag_read(void);
u1 level_capture10_flag_read(void);
u1 level_capture11_flag_read(void);

void pwm1_15_init (  u4 u4_freq, u1 u1_logic ,u1 u1_intlv  , u1 u1_intcpu );	// CK0:80MHz
void pwm1_15_tim_start(void);
void pwm1_15_tim_stop(void);
void pwm1_15_start ( void );
void pwm1_15_stop ( void );
void pwm1_15_setm_f ( f4 f4_m );

void phase_capture1_1_init( void );											// CK0:80MHz
void phase_capture1_1_start(void);
void phase_capture1_1_stop(void);
u2 phase_capture1_1_cnt_read(void);
u1 phase_capture1_1_flag_read(void);
void phase_capture1_15_init( void );											// CK0:80MHz
void phase_capture1_15_start(void);
void phase_capture1_15_stop(void);
u2 phase_capture1_15_cnt_read(void);
u1 phase_capture1_15_flag_read(void);
void phase_capture1_1_1_15_start(void);


#define		Get_LEVEL_TIM6_IF()		INTC2.EIC104.BIT.EIRF104
#define		Get_LEVEL_TIM7_IF()		INTC2.EIC105.BIT.EIRF105
#define		Get_LEVEL_TIM8_IF()		INTC2.EIC106.BIT.EIRF106
#define		Get_LEVEL_TIM9_IF()		INTC2.EIC107.BIT.EIRF107
#define		Get_LEVEL_TIM10_IF()	INTC2.EIC108.BIT.EIRF108
#define		Get_LEVEL_TIM11_IF()	INTC2.EIC109.BIT.EIRF109

#define		Set_LEVEL_TIM6_IF(u1_val)	INTC2.EIC104.BIT.EIRF104 = u1_val
#define		Set_LEVEL_TIM7_IF(u1_val)	INTC2.EIC105.BIT.EIRF105 = u1_val
#define		Set_LEVEL_TIM8_IF(u1_val)	INTC2.EIC106.BIT.EIRF106 = u1_val
#define		Set_LEVEL_TIM9_IF(u1_val)	INTC2.EIC107.BIT.EIRF107 = u1_val
#define		Set_LEVEL_TIM10_IF(u1_val)	INTC2.EIC108.BIT.EIRF108 = u1_val
#define		Set_LEVEL_TIM11_IF(u1_val)	INTC2.EIC109.BIT.EIRF109 = u1_val




