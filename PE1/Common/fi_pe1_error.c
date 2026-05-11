#pragma interrupt Dummy_EI_func_pe1( enable = manual)
#pragma interrupt Dummy_EI_PE1( enable = manual) 
#pragma interrupt Dummy_EI_PE12( enable = manual) 

#pragma section r0_disp32 "comGRAMA"
unsigned long int u4_flag_error_PE1;
#pragma section default

#define	u4_ERR_SYS_ERR				((unsigned long int)(0x00000001))	
#define	u4_ERR_ABNORMAL_INT			((unsigned long int)(0x00000002))	
#define	u4_ERR_ABNORMAL_PE1_INT		((unsigned long int)(0x00000004))	
#define	u4_ERR_ABNORMAL_PE12_INT	((unsigned long int)(0x00000008))	

/*　FEINT関連	*/
#pragma section text "com"
void Dummy_func_pe1(void)
{
	u4_flag_error_PE1 = u4_flag_error_PE1 | u4_ERR_SYS_ERR;
}
/*　直接分岐割り込み関連	*/
void Dummy_EI_func_pe1(void)
{
	u4_flag_error_PE1 = u4_flag_error_PE1 | u4_ERR_ABNORMAL_INT;
}
#pragma section default

/*　デーブル参照割り込み関連	*/
void Dummy_EI_PE1 ( void )			// INTC1
{
	u4_flag_error_PE1 = u4_flag_error_PE1 | u4_ERR_ABNORMAL_PE1_INT;	
}

void Dummy_EI_PE12 ( void )		// INTC2
{
	u4_flag_error_PE1 = u4_flag_error_PE1 | u4_ERR_ABNORMAL_PE12_INT;		
}
