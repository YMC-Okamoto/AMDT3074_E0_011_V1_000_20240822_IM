#CC-RH Compiler RH850 Assembler Source
#@	CC-RH Version : V2.01.00 [28 Nov 2018]
#@	Command : Common\fi_pe2_error.c ..\Common\commonPE2toPE1.c ..\Common\iolib\io_CPU.c ..\Common\iolib\io_ADC.c ..\Common\iolib\io_CSIH0.c ..\Common\iolib\io_CSIH1.c ..\Common\iolib\io_ENCA0.c ..\Common\iolib\io_ENCA1.c ..\Common\iolib\io_FCAN.c ..\Common\iolib\io_PIO_amdt0530.c ..\Common\iolib\io_RDC20.c ..\Common\iolib\io_RDC21.c ..\Common\iolib\io_SCI0_40MHz.c ..\Common\iolib\io_SCI1_40MHz.c ..\Common\iolib\io_SCI2_40MHz.c ..\Common\iolib\io_TAUD0.c ..\Common\iolib\io_TAUD1.c ..\Common\iolib\io_TAUJ0.c ..\Common\iolib\io_TSG30.c ..\Common\iolib\io_TSG31.c ..\PE1\AWatcher\VECLIB_CMDMONI.c src\fb_can1_ctrl.c src\fb_kpwm_tbl.c src\fb_therm_calc.c src\fb_vctrlerr_tbl.c src\fb_wt_inv1_enc_cmp_tbl.c src\fi_1ms_int.c src\fi_1ms_inv1_adctrl.c src\fi_1ms_inv1_almctrl.c src\fi_1ms_inv1_errctrl.c src\fi_1ms_inv1_idqcom.c src\fi_1ms_inv1_ifctrl.c src\fi_1ms_inv1_seqctrl.c src\fi_1ms_inv1_wrctrl.c src\fi_20us_int.c src\fi_20us_inv1_1pulse.c src\fi_enc1_int.c src\fi_enc1_inv1_1pulse.c src\fi_pwm_int.c src\fi_pwm_inv1_1pulse.c src\fi_pwm_inv1_adctrl.c src\fi_pwm_inv1_almctrl.c src\fi_pwm_inv1_encctrl.c src\fi_pwm_inv1_errctrl.c src\fi_pwm_inv1_idqctrl.c src\fi_pwm_inv1_invadj.c src\fi_pwm_inv1_svctrl.c src\fi_pwm_inv1_syncctrl.c src\fi_pwm_inv1_vctrlerr.c src\fi_pwm_vctrlerrtbl.c src\fi_zphase_int.c src\fpmsm_main.c src\mapdata_ld_inv1_2d.c src\mapdata_ld_inv1_2d_map.c src\mapdata_lq_inv1_2d.c src\mapdata_lq_inv1_2d_map.c src\mapdata_trq_inv1.c src\mapdata_trq_inv1_limit.c src\mapdata_trq_inv1_map.c src\mapdata_trq_inv1_map_limit.c src\mapdata_trq_inv1_map_power.c ..\PE1\src\fi_AWatcher.c -Xobj_path=DefaultBuild -Xcpu=g3m -g -g_line -Ospeed -Oinline_size -Isrc -I..\Common -D__CLK_HSB=80,__CLK_LSB=40,__CLKC_HSB=80,__CLK_CLSB=40 -use_recipf -Xasm_path=DefaultBuild -c -Xexec_time=C:\Users\fukum\AppData\Local\Temp\CSPlusBuildTool_66854fc4b1eb435c970c72aee2086311ckwmrbu1.rvm
#@	compiled at Fri Aug 21 11:47:38 2020

	.file "src\fi_pwm_inv1_almctrl.c"

	$reg_mode 32

	.extern _f4_fs_inv1_ctrl
	.extern _f4_iu_inv1_ad
	.extern _f4_iv_inv1_ad
	.extern _f4_iw_inv1_ad
	.extern _f4_vdc_inv1_ad
	.public _u4_flag_inv1_alarm, 4
	.public _f4_lev_oc_inv1_iac_alm, 4
	.public _f4_lev_ov_inv1_vdc_alm, 4
	.public _u4_cnt_hold_inv1_alm_pwm_max, 4
	.public _u4_cnt_oc_inv1_iu_alm_pwm, 4
	.public _u4_cnt_oc_inv1_iv_alm_pwm, 4
	.public _u4_cnt_oc_inv1_iw_alm_pwm, 4
	.public _u4_cnt_oc_inv1_vdc_alm_pwm, 4
	.public _fi_pwm_inv1_almctrl
	.public _fb_pwm_inv1_almctrl_init

	.section .text, text
_fi_pwm_inv1_almctrl:
	.stack _fi_pwm_inv1_almctrl = 0
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fi_pwm_inv1_almctrl.c", 72
	movhi HIGHW1(#_f4_lev_ov_inv1_vdc_alm), r0, r2
	movhi HIGHW1(#_f4_vdc_inv1_ad), r0, r5
	ld.w LOWW(#_f4_lev_ov_inv1_vdc_alm)[r2], r2
	ld.w LOWW(#_f4_vdc_inv1_ad)[r5], r5
	cmpf.s 0x00000007, r5, r2
	trfsr 0
	bz9 .BB.LABEL.1_2
.BB.LABEL.1_1:	; if_then_bb
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fi_pwm_inv1_almctrl.c", 74
	movhi HIGHW1(#_u4_flag_inv1_alarm), r0, r2
	set1 0x00000000, LOWW(#_u4_flag_inv1_alarm)[r2]
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fi_pwm_inv1_almctrl.c", 76
	movhi HIGHW1(#_u4_cnt_hold_inv1_alm_pwm_max), r0, r2
	ld.w LOWW(#_u4_cnt_hold_inv1_alm_pwm_max)[r2], r2
	br9 .BB.LABEL.1_5
.BB.LABEL.1_2:	; if_else_bb
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fi_pwm_inv1_almctrl.c", 80
	movhi HIGHW1(#_u4_cnt_oc_inv1_vdc_alm_pwm), r0, r2
	ld.w LOWW(#_u4_cnt_oc_inv1_vdc_alm_pwm)[r2], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.1_4
.BB.LABEL.1_3:	; if_else_bb14
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fi_pwm_inv1_almctrl.c", 86
	movhi HIGHW1(#_u4_flag_inv1_alarm), r0, r2
	clr1 0x00000000, LOWW(#_u4_flag_inv1_alarm)[r2]
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fi_pwm_inv1_almctrl.c", 88
	movhi HIGHW1(#_u4_cnt_oc_inv1_vdc_alm_pwm), r0, r2
	st.w r0, LOWW(#_u4_cnt_oc_inv1_vdc_alm_pwm)[r2]
	br9 .BB.LABEL.1_6
.BB.LABEL.1_4:	; if_then_bb11
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fi_pwm_inv1_almctrl.c", 82
	add 0xFFFFFFFF, r2
.BB.LABEL.1_5:	; if_then_bb11
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fi_pwm_inv1_almctrl.c", 0
	movhi HIGHW1(#_u4_cnt_oc_inv1_vdc_alm_pwm), r0, r5
	st.w r2, LOWW(#_u4_cnt_oc_inv1_vdc_alm_pwm)[r5]
.BB.LABEL.1_6:	; if_break_bb17
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fi_pwm_inv1_almctrl.c", 96
	movhi HIGHW1(#_f4_iu_inv1_ad), r0, r2
	movhi HIGHW1(#_f4_lev_oc_inv1_iac_alm), r0, r5
	ld.w LOWW(#_f4_iu_inv1_ad)[r2], r2
	ld.w LOWW(#_f4_lev_oc_inv1_iac_alm)[r5], r5
	cmpf.s 0x00000004, r5, r2
	trfsr 0
	bz9 .BB.LABEL.1_11
.BB.LABEL.1_7:	; bb
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fi_pwm_inv1_almctrl.c", 0
	negf.s r5, r6
	cmpf.s 0x00000004, r2, r6
	trfsr 0
	bz9 .BB.LABEL.1_11
.BB.LABEL.1_8:	; if_else_bb38
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fi_pwm_inv1_almctrl.c", 105
	movhi HIGHW1(#_u4_cnt_oc_inv1_iu_alm_pwm), r0, r2
	ld.w LOWW(#_u4_cnt_oc_inv1_iu_alm_pwm)[r2], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.1_10
.BB.LABEL.1_9:	; if_else_bb46
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fi_pwm_inv1_almctrl.c", 111
	movhi HIGHW1(#_u4_flag_inv1_alarm), r0, r2
	clr1 0x00000002, LOWW(#_u4_flag_inv1_alarm)[r2]
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fi_pwm_inv1_almctrl.c", 113
	movhi HIGHW1(#_u4_cnt_oc_inv1_iu_alm_pwm), r0, r2
	st.w r0, LOWW(#_u4_cnt_oc_inv1_iu_alm_pwm)[r2]
	br9 .BB.LABEL.1_13
.BB.LABEL.1_10:	; if_then_bb43
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fi_pwm_inv1_almctrl.c", 107
	add 0xFFFFFFFF, r2
	br9 .BB.LABEL.1_12
.BB.LABEL.1_11:	; if_then_bb34
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fi_pwm_inv1_almctrl.c", 99
	movhi HIGHW1(#_u4_flag_inv1_alarm), r0, r2
	set1 0x00000002, LOWW(#_u4_flag_inv1_alarm)[r2]
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fi_pwm_inv1_almctrl.c", 101
	movhi HIGHW1(#_u4_cnt_hold_inv1_alm_pwm_max), r0, r2
	ld.w LOWW(#_u4_cnt_hold_inv1_alm_pwm_max)[r2], r2
.BB.LABEL.1_12:	; if_then_bb34
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fi_pwm_inv1_almctrl.c", 0
	movhi HIGHW1(#_u4_cnt_oc_inv1_iu_alm_pwm), r0, r6
	st.w r2, LOWW(#_u4_cnt_oc_inv1_iu_alm_pwm)[r6]
.BB.LABEL.1_13:	; if_break_bb50
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fi_pwm_inv1_almctrl.c", 117
	movhi HIGHW1(#_f4_iv_inv1_ad), r0, r2
	ld.w LOWW(#_f4_iv_inv1_ad)[r2], r2
	cmpf.s 0x00000004, r5, r2
	trfsr 0
	bz9 .BB.LABEL.1_18
.BB.LABEL.1_14:	; bb55
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fi_pwm_inv1_almctrl.c", 0
	negf.s r5, r6
	cmpf.s 0x00000004, r2, r6
	trfsr 0
	bz9 .BB.LABEL.1_18
.BB.LABEL.1_15:	; if_else_bb73
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fi_pwm_inv1_almctrl.c", 126
	movhi HIGHW1(#_u4_cnt_oc_inv1_iv_alm_pwm), r0, r2
	ld.w LOWW(#_u4_cnt_oc_inv1_iv_alm_pwm)[r2], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.1_17
.BB.LABEL.1_16:	; if_else_bb81
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fi_pwm_inv1_almctrl.c", 132
	movhi HIGHW1(#_u4_flag_inv1_alarm), r0, r2
	clr1 0x00000003, LOWW(#_u4_flag_inv1_alarm)[r2]
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fi_pwm_inv1_almctrl.c", 134
	movhi HIGHW1(#_u4_cnt_oc_inv1_iv_alm_pwm), r0, r2
	st.w r0, LOWW(#_u4_cnt_oc_inv1_iv_alm_pwm)[r2]
	br9 .BB.LABEL.1_20
.BB.LABEL.1_17:	; if_then_bb78
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fi_pwm_inv1_almctrl.c", 128
	add 0xFFFFFFFF, r2
	br9 .BB.LABEL.1_19
.BB.LABEL.1_18:	; if_then_bb69
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fi_pwm_inv1_almctrl.c", 120
	movhi HIGHW1(#_u4_flag_inv1_alarm), r0, r2
	set1 0x00000003, LOWW(#_u4_flag_inv1_alarm)[r2]
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fi_pwm_inv1_almctrl.c", 122
	movhi HIGHW1(#_u4_cnt_hold_inv1_alm_pwm_max), r0, r2
	ld.w LOWW(#_u4_cnt_hold_inv1_alm_pwm_max)[r2], r2
.BB.LABEL.1_19:	; if_then_bb69
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fi_pwm_inv1_almctrl.c", 0
	movhi HIGHW1(#_u4_cnt_oc_inv1_iv_alm_pwm), r0, r6
	st.w r2, LOWW(#_u4_cnt_oc_inv1_iv_alm_pwm)[r6]
.BB.LABEL.1_20:	; if_break_bb85
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fi_pwm_inv1_almctrl.c", 138
	movhi HIGHW1(#_f4_iw_inv1_ad), r0, r2
	ld.w LOWW(#_f4_iw_inv1_ad)[r2], r2
	cmpf.s 0x00000004, r5, r2
	trfsr 0
	bz9 .BB.LABEL.1_26
.BB.LABEL.1_21:	; bb90
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fi_pwm_inv1_almctrl.c", 0
	negf.s r5, r5
	cmpf.s 0x00000004, r2, r5
	trfsr 0
	bz9 .BB.LABEL.1_26
.BB.LABEL.1_22:	; if_else_bb108
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fi_pwm_inv1_almctrl.c", 147
	movhi HIGHW1(#_u4_cnt_oc_inv1_iw_alm_pwm), r0, r2
	ld.w LOWW(#_u4_cnt_oc_inv1_iw_alm_pwm)[r2], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.1_24
.BB.LABEL.1_23:	; if_else_bb116
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fi_pwm_inv1_almctrl.c", 153
	movhi HIGHW1(#_u4_flag_inv1_alarm), r0, r2
	clr1 0x00000004, LOWW(#_u4_flag_inv1_alarm)[r2]
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fi_pwm_inv1_almctrl.c", 155
	movhi HIGHW1(#_u4_cnt_oc_inv1_iw_alm_pwm), r0, r2
	st.w r0, LOWW(#_u4_cnt_oc_inv1_iw_alm_pwm)[r2]
	jmp [r31]
.BB.LABEL.1_24:	; if_then_bb113
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fi_pwm_inv1_almctrl.c", 149
	add 0xFFFFFFFF, r2
.BB.LABEL.1_25:	; if_then_bb113
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fi_pwm_inv1_almctrl.c", 0
	movhi HIGHW1(#_u4_cnt_oc_inv1_iw_alm_pwm), r0, r5
	st.w r2, LOWW(#_u4_cnt_oc_inv1_iw_alm_pwm)[r5]
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fi_pwm_inv1_almctrl.c", 159
	jmp [r31]
.BB.LABEL.1_26:	; if_then_bb104
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fi_pwm_inv1_almctrl.c", 141
	movhi HIGHW1(#_u4_flag_inv1_alarm), r0, r2
	set1 0x00000004, LOWW(#_u4_flag_inv1_alarm)[r2]
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fi_pwm_inv1_almctrl.c", 143
	movhi HIGHW1(#_u4_cnt_hold_inv1_alm_pwm_max), r0, r2
	ld.w LOWW(#_u4_cnt_hold_inv1_alm_pwm_max)[r2], r2
	br9 .BB.LABEL.1_25
_fb_pwm_inv1_almctrl_init:
	.stack _fb_pwm_inv1_almctrl_init = 0
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fi_pwm_inv1_almctrl.c", 176
	movhi HIGHW1(#_u4_flag_inv1_alarm), r0, r2
	st.w r0, LOWW(#_u4_flag_inv1_alarm)[r2]
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fi_pwm_inv1_almctrl.c", 182
	movhi HIGHW1(#_f4_lev_oc_inv1_iac_alm), r0, r2
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fi_pwm_inv1_almctrl.c", 185
	movhi HIGHW1(#_u4_cnt_hold_inv1_alm_pwm_max), r0, r6
	mov 0x44548000, r5
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fi_pwm_inv1_almctrl.c", 182
	st.w r5, LOWW(#_f4_lev_oc_inv1_iac_alm)[r2]
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fi_pwm_inv1_almctrl.c", 183
	movhi HIGHW1(#_f4_lev_ov_inv1_vdc_alm), r0, r2
	movhi 0x0000426C, r0, r5
	st.w r5, LOWW(#_f4_lev_ov_inv1_vdc_alm)[r2]
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fi_pwm_inv1_almctrl.c", 185
	movhi HIGHW1(#_f4_fs_inv1_ctrl), r0, r2
	ld.w LOWW(#_f4_fs_inv1_ctrl)[r2], r2
	movhi 0x0000447A, r0, r5
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fi_pwm_inv1_almctrl.c", 187
	movhi HIGHW1(#_u4_cnt_oc_inv1_iu_alm_pwm), r0, r7
	st.w r0, LOWW(#_u4_cnt_oc_inv1_iu_alm_pwm)[r7]
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fi_pwm_inv1_almctrl.c", 188
	movhi HIGHW1(#_u4_cnt_oc_inv1_iv_alm_pwm), r0, r7
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fi_pwm_inv1_almctrl.c", 185
	divf.s r5, r2, r2
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fi_pwm_inv1_almctrl.c", 188
	st.w r0, LOWW(#_u4_cnt_oc_inv1_iv_alm_pwm)[r7]
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fi_pwm_inv1_almctrl.c", 185
	mulf.s r5, r2, r2
	trncf.suw r2, r2
	st.w r2, LOWW(#_u4_cnt_hold_inv1_alm_pwm_max)[r6]
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fi_pwm_inv1_almctrl.c", 189
	movhi HIGHW1(#_u4_cnt_oc_inv1_iw_alm_pwm), r0, r2
	st.w r0, LOWW(#_u4_cnt_oc_inv1_iw_alm_pwm)[r2]
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fi_pwm_inv1_almctrl.c", 190
	movhi HIGHW1(#_u4_cnt_oc_inv1_vdc_alm_pwm), r0, r2
	st.w r0, LOWW(#_u4_cnt_oc_inv1_vdc_alm_pwm)[r2]
	jmp [r31]
	.section .bss, bss
	.align 4
_u4_flag_inv1_alarm:
	.ds (4)
	.align 4
_f4_lev_oc_inv1_iac_alm:
	.ds (4)
	.align 4
_f4_lev_ov_inv1_vdc_alm:
	.ds (4)
	.align 4
_u4_cnt_hold_inv1_alm_pwm_max:
	.ds (4)
	.align 4
_u4_cnt_oc_inv1_iu_alm_pwm:
	.ds (4)
	.align 4
_u4_cnt_oc_inv1_iv_alm_pwm:
	.ds (4)
	.align 4
_u4_cnt_oc_inv1_iw_alm_pwm:
	.ds (4)
	.align 4
_u4_cnt_oc_inv1_vdc_alm_pwm:
	.ds (4)
