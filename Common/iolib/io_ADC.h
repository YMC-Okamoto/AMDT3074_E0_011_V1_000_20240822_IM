#define	__io_ADC

void adcc0_init ( u1 u1_rdc2x_out );
void adcc1_init ( void );
void adcc0_sg4_trig_set(u1 u1_trigsel);
void adcc1_sg4_trig_set(u1 u1_trigsel);
void adcc0_sg4_int_init( u1 u1_intlv , u1 u1_intcpu);
void adcc1_sg4_int_init( u1 u1_intlv , u1 u1_intcpu);


// ADCC0
#define	Get_AD_AN030() (ADCC0.DIR0.BIT.DR0 & 0x0FFF )
#define	Get_AD_AN031() (ADCC0.DIR1.BIT.DR1 & 0x0FFF )
#define	Get_AD_AN032() (ADCC0.DIR2.BIT.DR2 & 0x0FFF )
#define	Get_AD_AN033() (ADCC0.DIR3.BIT.DR3 & 0x0FFF )
#define	Get_AD_AN022() (ADCC0.DIR4.BIT.DR4 & 0x0FFF )
#define	Get_AD_AN023() (ADCC0.DIR5.BIT.DR5 & 0x0FFF )
#define	Get_AD_AN000() (ADCC0.DIR6.BIT.DR6 & 0x0FFF )
#define	Get_AD_AN003() (ADCC0.DIR7.BIT.DR7 & 0x0FFF )
#define	Get_AD_AN001() (ADCC0.DIR8.BIT.DR8 & 0x0FFF )
#define	Get_AD_AN002() (ADCC0.DIR9.BIT.DR9 & 0x0FFF )
#define	Get_AD_AN010() (ADCC0.DIR10.BIT.DR10 & 0x0FFF )
#define	Get_AD_AN011() (ADCC0.DIR11.BIT.DR11 & 0x0FFF )
#define	Get_AD_AN012() (ADCC0.DIR12.BIT.DR12 & 0x0FFF )
#define	Get_AD_AN013() (ADCC0.DIR13.BIT.DR13 & 0x0FFF )
#define	Get_AD_AN020() (ADCC0.DIR14.BIT.DR14 & 0x0FFF )
#define	Get_AD_AN021() (ADCC0.DIR15.BIT.DR15 & 0x0FFF )

// ADCC1
#define	Get_AD_AN130() (ADCC1.DIR0.BIT.DR0 & 0x0FFF )
#define	Get_AD_AN131() (ADCC1.DIR1.BIT.DR1 & 0x0FFF )
#define	Get_AD_AN132() (ADCC1.DIR2.BIT.DR2 & 0x0FFF )
#define	Get_AD_AN140() (ADCC1.DIR3.BIT.DR3 & 0x0FFF )
#define	Get_AD_AN141() (ADCC1.DIR4.BIT.DR4 & 0x0FFF )
#define	Get_AD_AN142() (ADCC1.DIR5.BIT.DR5 & 0x0FFF )
#define	Get_AD_AN100() (ADCC1.DIR6.BIT.DR6 & 0x0FFF )
#define	Get_AD_AN101() (ADCC1.DIR7.BIT.DR7 & 0x0FFF )
#define	Get_AD_AN102() (ADCC1.DIR8.BIT.DR8 & 0x0FFF )
#define	Get_AD_AN110() (ADCC1.DIR9.BIT.DR9 & 0x0FFF )
#define	Get_AD_AN111() (ADCC1.DIR10.BIT.DR10 & 0x0FFF )
#define	Get_AD_AN112() (ADCC1.DIR11.BIT.DR11 & 0x0FFF )
#define	Get_AD_AN120() (ADCC1.DIR12.BIT.DR12 & 0x0FFF )
#define	Get_AD_AN121() (ADCC1.DIR13.BIT.DR13 & 0x0FFF )
#define	Get_AD_AN122() (ADCC1.DIR14.BIT.DR14 & 0x0FFF )
#define	Get_AD_AN150() (ADCC1.DIR15.BIT.DR15 & 0x0FFF )
#define	Get_AD_AN151() (ADCC1.DIR16.BIT.DR16 & 0x0FFF )
#define	Get_AD_AN152() (ADCC1.DIR17.BIT.DR17 & 0x0FFF )
#define	Get_AD_AN160() (ADCC1.DIR18.BIT.DR18 & 0x0FFF )
#define	Get_AD_AN161() (ADCC1.DIR19.BIT.DR19 & 0x0FFF )
#define	Get_AD_AN162() (ADCC1.DIR20.BIT.DR20 & 0x0FFF )


/* スキャングループ終了割り込み用 */
#define	Get_ADC0_SG2_IRF()	(INTC2.EIC174.BIT.EIRF174)
#define	Get_ADC0_SG3_IRF()	(INTC2.EIC175.BIT.EIRF175)
#define	Get_ADC0_SG4_IRF()	(INTC2.EIC176.BIT.EIRF176)
#define	Get_ADC1_SG2_IRF()	(INTC2.EIC179.BIT.EIRF179)
#define	Get_ADC1_SG3_IRF()	(INTC2.EIC180.BIT.EIRF180)
#define	Get_ADC1_SG4_IRF()	(INTC2.EIC181.BIT.EIRF181)

#define	Set_ADC0_SG2_IRF(val)	(INTC2.EIC174.BIT.EIRF174=val)
#define	Set_ADC0_SG3_IRF(val)	(INTC2.EIC175.BIT.EIRF175=val)
#define	Set_ADC0_SG4_IRF(val)	(INTC2.EIC176.BIT.EIRF176=val)
#define	Set_ADC1_SG2_IRF(val)	(INTC2.EIC179.BIT.EIRF179=val)
#define	Set_ADC1_SG3_IRF(val)	(INTC2.EIC180.BIT.EIRF180=val)
#define	Set_ADC1_SG4_IRF(val)	(INTC2.EIC181.BIT.EIRF181=val)