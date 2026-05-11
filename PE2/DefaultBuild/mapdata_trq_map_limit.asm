#CC-RH Compiler RH850 Assembler Source
#@	CC-RH Version : V2.00.00 [24 May 2018]
#@	Command : src\fb_can1_ctrl.c src\fi_1ms_inv1_adctrl.c src\fi_1ms_inv1_errctrl.c src\fi_1ms_inv1_idqcom.c src\fi_1ms_inv1_seqctrl.c src\fi_1ms_inv1_wrctrl.c src\fi_20us_inv1_1pulse.c src\fi_enc1_int.c src\fi_enc1_inv1_1pulse.c src\fi_pwm_inv1_1pulse.c src\fi_pwm_inv1_adctrl.c src\fi_pwm_inv1_encctrl.c src\fi_pwm_inv1_errctrl.c src\fi_pwm_inv1_idqctrl.c src\fi_pwm_inv1_invadj.c src\fi_pwm_inv1_svctrl.c src\fi_pwm_inv1_vctrlerr.c src\fi_pwm_vctrlerrtbl.c src\mapdata_trq_limit.c src\mapdata_trq_map.c src\mapdata_trq_map_limit.c src\fpmsm_main.c src\fi_1ms_int.c src\fi_20us_int.c src\fi_pwm_int.c -Xobj_path=DefaultBuild -Xcpu=g3m -g -g_line -Ospeed -Oinline_size -Isrc -I..\Common -D__CLK_HSB=80,__CLK_LSB=40,__CLKC_HSB=80,__CLK_CLSB=40 -use_recipf -Xasm_path=DefaultBuild -c
#@	compiled at Mon Oct 15 15:23:52 2018

	.file "src\mapdata_trq_map_limit.c"

	$reg_mode 32

	.public _map_tq_limit, 160

	.section .const, const
	.align 2
_map_tq_limit:
	.dhw 0xFFC1,0xFFBF,0xFFC0,0xFFBF,0xFFC1,0xFFC3,0xFFCE,0xFFD5,0xFFDB,0xFFEE
	.dhw 0x003F,0x0041,0x0040,0x0041,0x003F,0x003D,0x0032,0x002B,0x0025,0x0012
	.dhw 0xFFBF,0xFFBF,0xFFC0,0xFFC0,0xFFBF,0xFFC1,0xFFCC,0xFFD5,0xFFD9,0xFFEE
	.dhw 0x0041,0x0041,0x0040,0x0040,0x0041,0x003F,0x0034,0x002B,0x0027,0x0012
	.dhw 0xFFC2,0xFFC1,0xFFC2,0xFFC2,0xFFC1,0xFFC4,0xFFCE,0xFFD4,0xFFD9,0xFFEE
	.dhw 0x003E,0x003F,0x003E,0x003E,0x003F,0x003C,0x0032,0x002C,0x0027,0x0012
	.dhw 0xFFC2,0xFFC1,0xFFC2,0xFFC2,0xFFC1,0xFFC4,0xFFCE,0xFFD4,0xFFDA,0xFFEE
	.dhw 0x003E,0x003F,0x003E,0x003E,0x003F,0x003C,0x0032,0x002C,0x0026,0x0012
