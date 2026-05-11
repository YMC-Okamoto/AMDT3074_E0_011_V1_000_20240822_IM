#CC-RH Compiler RH850 Assembler Source
#@	CC-RH Version : V1.07.00 [30 Nov 2017]
#@	Command : Common\fi_pe2_error.c ..\Common\commonPE2toPE1.c ..\Common\iolib\io_CPU.c ..\Common\iolib\io_ADC.c ..\Common\iolib\io_CSIH0.c ..\Common\iolib\io_CSIH1.c ..\Common\iolib\io_ENCA0.c ..\Common\iolib\io_ENCA1.c ..\Common\iolib\io_FCAN.c ..\Common\iolib\io_PIO_amdt0530.c ..\Common\iolib\io_RDC20.c ..\Common\iolib\io_RDC21.c ..\Common\iolib\io_SCI0_40MHz.c ..\Common\iolib\io_SCI1_40MHz.c ..\Common\iolib\io_SCI2_40MHz.c ..\Common\iolib\io_TAUD0.c ..\Common\iolib\io_TAUD1.c ..\Common\iolib\io_TAUJ0.c ..\Common\iolib\io_TSG30.c ..\Common\iolib\io_TSG31.c src\fb_can1_ctrl.c src\fb_kpwm_tbl.c src\fb_ldisat_inv1_tbl.c src\fb_lqisat_inv1_tbl.c src\fb_therm_calc.c src\fb_vctrlerr_tbl.c src\fi_1ms_inv1_adctrl.c src\fi_1ms_inv1_errctrl.c src\fi_1ms_inv1_idqcom.c src\fi_1ms_inv1_seqctrl.c src\fi_1ms_inv1_wrctrl.c src\fi_20us_inv1_1pulse.c src\fi_enc1_int.c src\fi_enc1_inv1_1pulse.c src\fi_pwm_inv1_1pulse.c src\fi_pwm_inv1_adctrl.c src\fi_pwm_inv1_encctrl.c src\fi_pwm_inv1_errctrl.c src\fi_pwm_inv1_idqctrl.c src\fi_pwm_inv1_invadj.c src\fi_pwm_inv1_svctrl.c src\fi_pwm_inv1_vctrlerr.c src\fi_pwm_vctrlerrtbl.c src\mapdata_k_inv1_ldq_cmp.c src\mapdata_k_inv1_ldq_cmp_map.c src\mapdata_trq.c src\mapdata_trq_limit.c src\mapdata_trq_map.c src\mapdata_trq_map_limit.c ..\PE1\src\fi_AWatcher.c ..\PE1\AWatcher\VECLIB_CMDMONI.c src\fpmsm_main.c src\fi_1ms_int.c src\fi_20us_int.c src\fi_pwm_int.c -Xobj_path=DefaultBuild -Xcommon=rh850 -Xcpu=g3m -g -g_line -Ospeed -Oinline_size -Isrc -I..\Common -D__CLK_HSB=80,__CLK_LSB=40,__CLKC_HSB=80,__CLK_CLSB=40 -Xasm_path=DefaultBuild -c
#@	compiled at Mon Aug 06 12:05:32 2018

	.file "src\mapdata_k_inv1_ldq_cmp_map.c"

	$reg_mode 32

	.public _map_k_inv1_ldq_cmp, 52

	.section .const, const
	.align 2
_map_k_inv1_ldq_cmp:
	.dhw 0x03E8,0x03E8,0x03E8,0x03E8,0x03E8,0x03E8,0x03E8,0x03E8,0x03E8,0x03E8,0x03E8,0x03E8
	.dhw 0x03E8
	.dhw 0x03E8,0x03E8,0x03E8,0x03E8,0x03E8,0x03E8,0x03E8,0x03E8,0x03E8,0x03E8,0x03E8,0x03E8
	.dhw 0x03E8
