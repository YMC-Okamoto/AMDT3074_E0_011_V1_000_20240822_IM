#define	__io_HallCap

void hallcapture_init( void );
void hallcapture_int_init( u1 u1_intlv , u1 u1_intcpu );
void hallcapture_tim_start (void);
void hallcapture_tim_stop(void);
u2 hallcapture_cnt_read(void);
u1 u1_ov_status(void);
u1	u1_hall_read(void);

#define	HALL_OV_FLAG_CLR()   TAUD0.CSC2.BIT.CLOV = 1
