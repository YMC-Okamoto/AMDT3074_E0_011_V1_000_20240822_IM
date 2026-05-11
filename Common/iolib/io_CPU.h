#define	__io_CPU
u1	cpu_init( void  );
u1 ecm2_init( void );
void clock_init(void);
void errout_set( void );
u1	u4_emc_status ( u4 *u4_m_emc_str0 , u4 *u4_c_emc_str0 ,u4 *u4_m_emc_str1 , u4 *u4_c_emc_str1 );
void pbg_prot_clr(u1 u1_pbg_grp , u1 u1_pbg_ch );
void core0_peg_init(u1 u1_spid);
void core1_peg_init(u1 u1_spid);