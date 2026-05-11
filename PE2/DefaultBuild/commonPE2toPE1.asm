#CC-RH Compiler RH850 Assembler Source
#@	CC-RH Version : V2.05.00  [02 Dec 2022]
#@	Command : Common\fi_pe2_error.c ..\Common\commonPE2toPE1.c ..\Common\iolib\io_CPU.c ..\Common\iolib\io_ADC.c ..\Common\iolib\io_CSIH0.c ..\Common\iolib\io_CSIH1.c ..\Common\iolib\io_ENCA0.c ..\Common\iolib\io_ENCA1.c ..\Common\iolib\io_FCAN.c ..\Common\iolib\io_PIO_amdt0530.c ..\Common\iolib\io_RDC20.c ..\Common\iolib\io_RDC21.c ..\Common\iolib\io_SCI0_40MHz.c ..\Common\iolib\io_SCI1_40MHz.c ..\Common\iolib\io_SCI2_40MHz.c ..\Common\iolib\io_TAUD0.c ..\Common\iolib\io_TAUD1.c ..\Common\iolib\io_TAUJ0.c ..\Common\iolib\io_TSG30.c ..\Common\iolib\io_TSG31.c ..\PE1\AWatcher\VECLIB_CMDMONI.c src\fpmsm_main.c ..\PE1\src\fi_AWatcher.c src\fi_1ms_int.c src\fi_1ms_inv1_adctrl.c src\fi_1ms_inv1_errctrl.c src\fi_20us_int.c src\fi_20us_inv1_1pulse.c src\fi_enc1_int.c src\fi_enc1_inv1_1pulse.c src\fi_pwm_int.c src\fi_pwm_inv1_1pulse.c src\fi_pwm_inv1_adctrl.c src\fi_pwm_inv1_encctrl.c src\fi_pwm_inv1_errctrl.c src\fi_pwm_inv1_idqctrl.c src\fi_pwm_inv1_invadj.c src\fi_pwm_inv1_svctrl.c src\fi_pwm_inv1_syncctrl.c src\fi_pwm_inv1_vctrlerr.c src\mapdata_ld_inv1_2d.c src\mapdata_ld_inv1_2d_map.c src\mapdata_lq_inv1_2d.c src\mapdata_lq_inv1_2d_map.c ..\PE1\src\fb_kpwm_tbl.c ..\PE1\src\fb_therm_calc.c ..\PE1\src\fb_therm_tbl_module.c ..\PE1\src\fb_vctrlerr_tbl.c src\fi_1ms_inv1_idqcom.c -Xobj_path=DefaultBuild -Xcpu=g3m -g -g_line -Ospeed -Oinline_size -I..\PE1\src -Isrc -I..\Common -D__CLK_HSB=80,__CLK_LSB=40,__CLKC_HSB=80,__CLK_CLSB=40 -use_recipf -Xasm_path=DefaultBuild -c
#@	compiled at Thu Feb 29 10:24:40 2024

	.file "..\Common\commonPE2toPE1.c"

	$reg_mode 32
	.dbl_size 8

	.public _u4_pe2_status, 4
	.public _u1_status_awatcher_cpu1, 1
	.public _u1_flag_awatcher_enable_cpu1, 1
	.public _u1_pwm_inv1_status, 1
	.public _u1_flag_pwm_inv1_source, 1
	.public _u4_fc_inv1_lsb_0, 4
	.public _f4_fs_inv1_ctrl, 4
	.public _f4_ts_inv1_ctrl, 4
	.public _u1_flag_inv1_offsetadj_ok, 1
	.public _f4_id_inv1_ad, 4
	.public _f4_iq_inv1_ad, 4
	.public _f4_id_inv1_ref, 4
	.public _f4_iq_inv1_ref, 4
	.public _u4_flag_inv1_error, 4
	.public _f4_tmp_inv1_igbt_up, 4
	.public _f4_tmp_inv1_igbt_vp, 4
	.public _f4_tmp_inv1_igbt_wp, 4
	.public _f4_tmp_inv1_igbt_un, 4
	.public _f4_tmp_inv1_igbt_vn, 4
	.public _f4_tmp_inv1_igbt_wn, 4
	.public _f4_tmp_inv1_igbt_max, 4
	.public _f4_tmp_inv1_mot1, 4
	.public _f4_tmp_inv1_mot2, 4
	.public _f4_tmp_inv1_mot_max, 4
	.public _f4_tmp_inv1_int, 4

	.section comGRAMB.data, data
	.align 4
_u4_pe2_status:
	.ds (4)
_u1_status_awatcher_cpu1:
	.db 0x01
	.section comGRAMB.bss, bss
_u1_flag_awatcher_enable_cpu1:
	.ds (1)
_u1_pwm_inv1_status:
	.ds (1)
_u1_flag_pwm_inv1_source:
	.ds (1)
	.align 4
_u4_fc_inv1_lsb_0:
	.ds (4)
	.align 4
_f4_fs_inv1_ctrl:
	.ds (4)
	.align 4
_f4_ts_inv1_ctrl:
	.ds (4)
_u1_flag_inv1_offsetadj_ok:
	.ds (1)
	.align 4
_f4_id_inv1_ad:
	.ds (4)
	.align 4
_f4_iq_inv1_ad:
	.ds (4)
	.align 4
_f4_id_inv1_ref:
	.ds (4)
	.align 4
_f4_iq_inv1_ref:
	.ds (4)
	.align 4
_u4_flag_inv1_error:
	.ds (4)
	.align 4
_f4_tmp_inv1_igbt_up:
	.ds (4)
	.align 4
_f4_tmp_inv1_igbt_vp:
	.ds (4)
	.align 4
_f4_tmp_inv1_igbt_wp:
	.ds (4)
	.align 4
_f4_tmp_inv1_igbt_un:
	.ds (4)
	.align 4
_f4_tmp_inv1_igbt_vn:
	.ds (4)
	.align 4
_f4_tmp_inv1_igbt_wn:
	.ds (4)
	.align 4
_f4_tmp_inv1_igbt_max:
	.ds (4)
	.align 4
_f4_tmp_inv1_mot1:
	.ds (4)
	.align 4
_f4_tmp_inv1_mot2:
	.ds (4)
	.align 4
_f4_tmp_inv1_mot_max:
	.ds (4)
	.align 4
_f4_tmp_inv1_int:
	.ds (4)
