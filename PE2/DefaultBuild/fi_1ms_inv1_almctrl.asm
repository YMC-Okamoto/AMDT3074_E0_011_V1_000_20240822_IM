#CC-RH Compiler RH850 Assembler Source
#@	CC-RH Version : V2.01.00 [28 Nov 2018]
#@	Command : Common\fi_pe2_error.c ..\Common\commonPE2toPE1.c ..\Common\iolib\io_CPU.c ..\Common\iolib\io_ADC.c ..\Common\iolib\io_CSIH0.c ..\Common\iolib\io_CSIH1.c ..\Common\iolib\io_ENCA0.c ..\Common\iolib\io_ENCA1.c ..\Common\iolib\io_FCAN.c ..\Common\iolib\io_PIO_amdt0530.c ..\Common\iolib\io_RDC20.c ..\Common\iolib\io_RDC21.c ..\Common\iolib\io_SCI0_40MHz.c ..\Common\iolib\io_SCI1_40MHz.c ..\Common\iolib\io_SCI2_40MHz.c ..\Common\iolib\io_TAUD0.c ..\Common\iolib\io_TAUD1.c ..\Common\iolib\io_TAUJ0.c ..\Common\iolib\io_TSG30.c ..\Common\iolib\io_TSG31.c ..\PE1\AWatcher\VECLIB_CMDMONI.c src\fb_can1_ctrl.c src\fb_kpwm_tbl.c src\fb_therm_calc.c src\fb_vctrlerr_tbl.c src\fb_wt_inv1_enc_cmp_tbl.c src\fi_1ms_int.c src\fi_1ms_inv1_adctrl.c src\fi_1ms_inv1_almctrl.c src\fi_1ms_inv1_errctrl.c src\fi_1ms_inv1_idqcom.c src\fi_1ms_inv1_ifctrl.c src\fi_1ms_inv1_seqctrl.c src\fi_1ms_inv1_wrctrl.c src\fi_20us_int.c src\fi_20us_inv1_1pulse.c src\fi_enc1_int.c src\fi_enc1_inv1_1pulse.c src\fi_pwm_int.c src\fi_pwm_inv1_1pulse.c src\fi_pwm_inv1_adctrl.c src\fi_pwm_inv1_almctrl.c src\fi_pwm_inv1_encctrl.c src\fi_pwm_inv1_errctrl.c src\fi_pwm_inv1_idqctrl.c src\fi_pwm_inv1_invadj.c src\fi_pwm_inv1_svctrl.c src\fi_pwm_inv1_syncctrl.c src\fi_pwm_inv1_vctrlerr.c src\fi_pwm_vctrlerrtbl.c src\fi_zphase_int.c src\fpmsm_main.c src\mapdata_ld_inv1_2d.c src\mapdata_ld_inv1_2d_map.c src\mapdata_lq_inv1_2d.c src\mapdata_lq_inv1_2d_map.c src\mapdata_trq_inv1.c src\mapdata_trq_inv1_limit.c src\mapdata_trq_inv1_map.c src\mapdata_trq_inv1_map_limit.c src\mapdata_trq_inv1_map_power.c ..\PE1\src\fi_AWatcher.c -Xobj_path=DefaultBuild -Xcpu=g3m -g -g_line -Ospeed -Oinline_size -Isrc -I..\Common -D__CLK_HSB=80,__CLK_LSB=40,__CLKC_HSB=80,__CLK_CLSB=40 -use_recipf -Xasm_path=DefaultBuild -c -Xexec_time=C:\Users\fukum\AppData\Local\Temp\CSPlusBuildTool_66854fc4b1eb435c970c72aee2086311ckwmrbu1.rvm
#@	compiled at Fri Aug 21 11:47:38 2020

	.file "src\fi_1ms_inv1_almctrl.c"

	$reg_mode 32

	.extern _f4_vdc_inv1_ad
	.extern _f4_vctrlbd_inv1_ad
	.extern _f4_speed_inv1_lpf
	.extern _u4_flag_inv1_alarm
	.extern _f4_tmp_inv1_igbt_up
	.extern _f4_tmp_inv1_igbt_vp
	.extern _f4_tmp_inv1_igbt_wp
	.extern _f4_tmp_inv1_igbt_un
	.extern _f4_tmp_inv1_igbt_vn
	.extern _f4_tmp_inv1_igbt_wn
	.extern _f4_tmp_inv1_mot1
	.extern _f4_tmp_inv1_int
	.public _f4_lev_uv_inv1_vdc_alm, 4
	.public _f4_lev_oh_inv1_igbt_alm, 4
	.public _f4_lev_oh_inv1_mot1_alm, 4
	.public _f4_lev_oh_inv1_mot2_alm, 4
	.public _f4_lev_os_inv1_speed_alm, 4
	.public _f4_lev_oh_inv1_int_alm, 4
	.public _f4_lev_ov_inv1_ctrlbd_alm, 4
	.public _f4_lev_uv_inv1_ctrlbd_alm, 4
	.public _u2_cnt_hold_inv1_alm_1ms_max, 2
	.public _u2_cnt_uv_inv1_vdc_alm_1ms, 2
	.public _u2_cnt_oh_inv1_igbt_up_alm_1ms, 2
	.public _u2_cnt_oh_inv1_igbt_un_alm_1ms, 2
	.public _u2_cnt_oh_inv1_igbt_vp_alm_1ms, 2
	.public _u2_cnt_oh_inv1_igbt_vn_alm_1ms, 2
	.public _u2_cnt_oh_inv1_igbt_wp_alm_1ms, 2
	.public _u2_cnt_oh_inv1_igbt_wn_alm_1ms, 2
	.public _u2_cnt_oh_inv1_mot1_alm_1ms, 2
	.public _u2_cnt_oh_inv1_mot2_alm_1ms, 2
	.public _u2_cnt_os_inv1_speed_alm_1ms, 2
	.public _u2_cnt_oh_inv1_int_alm_1ms, 2
	.public _u2_cnt_ov_inv1_ctrlbd_alm_1ms, 2
	.public _u2_cnt_uv_inv1_ctrlbd_alm_1ms, 2
	.public _fi_1ms_inv1_almctrl
	.public _fb_1ms_inv1_almctrl_init

	.section .text, text
_fi_1ms_inv1_almctrl:
	.stack _fi_1ms_inv1_almctrl = 0
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fi_1ms_inv1_almctrl.c", 92
	movhi HIGHW1(#_f4_vdc_inv1_ad), r0, r2
	movhi HIGHW1(#_f4_lev_uv_inv1_vdc_alm), r0, r5
	ld.w LOWW(#_f4_vdc_inv1_ad)[r2], r2
	ld.w LOWW(#_f4_lev_uv_inv1_vdc_alm)[r5], r5
	cmpf.s 0x00000007, r5, r2
	trfsr 0
	bz9 .BB.LABEL.1_2
.BB.LABEL.1_1:	; if_then_bb
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fi_1ms_inv1_almctrl.c", 94
	movhi HIGHW1(#_u4_flag_inv1_alarm), r0, r2
	set1 0x00000001, LOWW(#_u4_flag_inv1_alarm)[r2]
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fi_1ms_inv1_almctrl.c", 96
	movhi HIGHW1(#_u2_cnt_hold_inv1_alm_1ms_max), r0, r2
	ld.h LOWW(#_u2_cnt_hold_inv1_alm_1ms_max)[r2], r2
	br9 .BB.LABEL.1_5
.BB.LABEL.1_2:	; if_else_bb
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fi_1ms_inv1_almctrl.c", 100
	movhi HIGHW1(#_u2_cnt_uv_inv1_vdc_alm_1ms), r0, r2
	ld.hu LOWW(#_u2_cnt_uv_inv1_vdc_alm_1ms)[r2], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.1_4
.BB.LABEL.1_3:	; if_else_bb16
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fi_1ms_inv1_almctrl.c", 106
	movhi HIGHW1(#_u4_flag_inv1_alarm), r0, r2
	clr1 0x00000001, LOWW(#_u4_flag_inv1_alarm)[r2]
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fi_1ms_inv1_almctrl.c", 108
	movhi HIGHW1(#_u2_cnt_uv_inv1_vdc_alm_1ms), r0, r2
	st.h r0, LOWW(#_u2_cnt_uv_inv1_vdc_alm_1ms)[r2]
	br9 .BB.LABEL.1_6
.BB.LABEL.1_4:	; if_then_bb13
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fi_1ms_inv1_almctrl.c", 102
	add 0xFFFFFFFF, r2
.BB.LABEL.1_5:	; if_then_bb13
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fi_1ms_inv1_almctrl.c", 0
	movhi HIGHW1(#_u2_cnt_uv_inv1_vdc_alm_1ms), r0, r5
	st.h r2, LOWW(#_u2_cnt_uv_inv1_vdc_alm_1ms)[r5]
.BB.LABEL.1_6:	; if_break_bb19
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fi_1ms_inv1_almctrl.c", 116
	movhi HIGHW1(#_f4_lev_oh_inv1_igbt_alm), r0, r2
	movhi HIGHW1(#_f4_tmp_inv1_igbt_up), r0, r5
	ld.w LOWW(#_f4_lev_oh_inv1_igbt_alm)[r2], r2
	ld.w LOWW(#_f4_tmp_inv1_igbt_up)[r5], r5
	cmpf.s 0x00000007, r5, r2
	trfsr 0
	bz9 .BB.LABEL.1_8
.BB.LABEL.1_7:	; if_then_bb25
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fi_1ms_inv1_almctrl.c", 118
	movhi HIGHW1(#_u4_flag_inv1_alarm+0x00000001), r0, r5
	set1 0x00000004, LOWW(#_u4_flag_inv1_alarm+0x00000001)[r5]
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fi_1ms_inv1_almctrl.c", 120
	movhi HIGHW1(#_u2_cnt_hold_inv1_alm_1ms_max), r0, r5
	ld.h LOWW(#_u2_cnt_hold_inv1_alm_1ms_max)[r5], r5
	br9 .BB.LABEL.1_11
.BB.LABEL.1_8:	; if_else_bb29
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fi_1ms_inv1_almctrl.c", 124
	movhi HIGHW1(#_u2_cnt_oh_inv1_igbt_up_alm_1ms), r0, r5
	ld.hu LOWW(#_u2_cnt_oh_inv1_igbt_up_alm_1ms)[r5], r5
	cmp 0x00000000, r5
	bnz9 .BB.LABEL.1_10
.BB.LABEL.1_9:	; if_else_bb38
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fi_1ms_inv1_almctrl.c", 130
	movhi HIGHW1(#_u4_flag_inv1_alarm+0x00000001), r0, r5
	clr1 0x00000004, LOWW(#_u4_flag_inv1_alarm+0x00000001)[r5]
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fi_1ms_inv1_almctrl.c", 132
	movhi HIGHW1(#_u2_cnt_oh_inv1_igbt_up_alm_1ms), r0, r5
	st.h r0, LOWW(#_u2_cnt_oh_inv1_igbt_up_alm_1ms)[r5]
	br9 .BB.LABEL.1_12
.BB.LABEL.1_10:	; if_then_bb35
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fi_1ms_inv1_almctrl.c", 126
	add 0xFFFFFFFF, r5
.BB.LABEL.1_11:	; if_then_bb35
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fi_1ms_inv1_almctrl.c", 0
	movhi HIGHW1(#_u2_cnt_oh_inv1_igbt_up_alm_1ms), r0, r6
	st.h r5, LOWW(#_u2_cnt_oh_inv1_igbt_up_alm_1ms)[r6]
.BB.LABEL.1_12:	; if_break_bb42
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fi_1ms_inv1_almctrl.c", 136
	movhi HIGHW1(#_f4_tmp_inv1_igbt_un), r0, r5
	ld.w LOWW(#_f4_tmp_inv1_igbt_un)[r5], r5
	cmpf.s 0x00000007, r5, r2
	trfsr 0
	bz9 .BB.LABEL.1_14
.BB.LABEL.1_13:	; if_then_bb48
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fi_1ms_inv1_almctrl.c", 138
	movhi HIGHW1(#_u4_flag_inv1_alarm+0x00000001), r0, r5
	set1 0x00000005, LOWW(#_u4_flag_inv1_alarm+0x00000001)[r5]
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fi_1ms_inv1_almctrl.c", 140
	movhi HIGHW1(#_u2_cnt_hold_inv1_alm_1ms_max), r0, r5
	ld.h LOWW(#_u2_cnt_hold_inv1_alm_1ms_max)[r5], r5
	br9 .BB.LABEL.1_17
.BB.LABEL.1_14:	; if_else_bb52
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fi_1ms_inv1_almctrl.c", 144
	movhi HIGHW1(#_u2_cnt_oh_inv1_igbt_un_alm_1ms), r0, r5
	ld.hu LOWW(#_u2_cnt_oh_inv1_igbt_un_alm_1ms)[r5], r5
	cmp 0x00000000, r5
	bnz9 .BB.LABEL.1_16
.BB.LABEL.1_15:	; if_else_bb61
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fi_1ms_inv1_almctrl.c", 150
	movhi HIGHW1(#_u4_flag_inv1_alarm+0x00000001), r0, r5
	clr1 0x00000005, LOWW(#_u4_flag_inv1_alarm+0x00000001)[r5]
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fi_1ms_inv1_almctrl.c", 152
	movhi HIGHW1(#_u2_cnt_oh_inv1_igbt_un_alm_1ms), r0, r5
	st.h r0, LOWW(#_u2_cnt_oh_inv1_igbt_un_alm_1ms)[r5]
	br9 .BB.LABEL.1_18
.BB.LABEL.1_16:	; if_then_bb58
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fi_1ms_inv1_almctrl.c", 146
	add 0xFFFFFFFF, r5
.BB.LABEL.1_17:	; if_then_bb58
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fi_1ms_inv1_almctrl.c", 0
	movhi HIGHW1(#_u2_cnt_oh_inv1_igbt_un_alm_1ms), r0, r6
	st.h r5, LOWW(#_u2_cnt_oh_inv1_igbt_un_alm_1ms)[r6]
.BB.LABEL.1_18:	; if_break_bb65
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fi_1ms_inv1_almctrl.c", 156
	movhi HIGHW1(#_f4_tmp_inv1_igbt_vp), r0, r5
	ld.w LOWW(#_f4_tmp_inv1_igbt_vp)[r5], r5
	cmpf.s 0x00000007, r5, r2
	trfsr 0
	bz9 .BB.LABEL.1_20
.BB.LABEL.1_19:	; if_then_bb71
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fi_1ms_inv1_almctrl.c", 158
	movhi HIGHW1(#_u4_flag_inv1_alarm+0x00000001), r0, r5
	set1 0x00000006, LOWW(#_u4_flag_inv1_alarm+0x00000001)[r5]
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fi_1ms_inv1_almctrl.c", 160
	movhi HIGHW1(#_u2_cnt_hold_inv1_alm_1ms_max), r0, r5
	ld.h LOWW(#_u2_cnt_hold_inv1_alm_1ms_max)[r5], r5
	br9 .BB.LABEL.1_23
.BB.LABEL.1_20:	; if_else_bb75
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fi_1ms_inv1_almctrl.c", 164
	movhi HIGHW1(#_u2_cnt_oh_inv1_igbt_vp_alm_1ms), r0, r5
	ld.hu LOWW(#_u2_cnt_oh_inv1_igbt_vp_alm_1ms)[r5], r5
	cmp 0x00000000, r5
	bnz9 .BB.LABEL.1_22
.BB.LABEL.1_21:	; if_else_bb84
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fi_1ms_inv1_almctrl.c", 170
	movhi HIGHW1(#_u4_flag_inv1_alarm+0x00000001), r0, r5
	clr1 0x00000006, LOWW(#_u4_flag_inv1_alarm+0x00000001)[r5]
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fi_1ms_inv1_almctrl.c", 172
	movhi HIGHW1(#_u2_cnt_oh_inv1_igbt_vp_alm_1ms), r0, r5
	st.h r0, LOWW(#_u2_cnt_oh_inv1_igbt_vp_alm_1ms)[r5]
	br9 .BB.LABEL.1_24
.BB.LABEL.1_22:	; if_then_bb81
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fi_1ms_inv1_almctrl.c", 166
	add 0xFFFFFFFF, r5
.BB.LABEL.1_23:	; if_then_bb81
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fi_1ms_inv1_almctrl.c", 0
	movhi HIGHW1(#_u2_cnt_oh_inv1_igbt_vp_alm_1ms), r0, r6
	st.h r5, LOWW(#_u2_cnt_oh_inv1_igbt_vp_alm_1ms)[r6]
.BB.LABEL.1_24:	; if_break_bb88
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fi_1ms_inv1_almctrl.c", 176
	movhi HIGHW1(#_f4_tmp_inv1_igbt_vn), r0, r5
	ld.w LOWW(#_f4_tmp_inv1_igbt_vn)[r5], r5
	cmpf.s 0x00000007, r5, r2
	trfsr 0
	bz9 .BB.LABEL.1_26
.BB.LABEL.1_25:	; if_then_bb95
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fi_1ms_inv1_almctrl.c", 178
	movhi HIGHW1(#_u4_flag_inv1_alarm+0x00000001), r0, r5
	set1 0x00000007, LOWW(#_u4_flag_inv1_alarm+0x00000001)[r5]
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fi_1ms_inv1_almctrl.c", 180
	movhi HIGHW1(#_u2_cnt_hold_inv1_alm_1ms_max), r0, r5
	ld.h LOWW(#_u2_cnt_hold_inv1_alm_1ms_max)[r5], r5
	br9 .BB.LABEL.1_29
.BB.LABEL.1_26:	; if_else_bb99
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fi_1ms_inv1_almctrl.c", 184
	movhi HIGHW1(#_u2_cnt_oh_inv1_igbt_vn_alm_1ms), r0, r5
	ld.hu LOWW(#_u2_cnt_oh_inv1_igbt_vn_alm_1ms)[r5], r5
	cmp 0x00000000, r5
	bnz9 .BB.LABEL.1_28
.BB.LABEL.1_27:	; if_else_bb108
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fi_1ms_inv1_almctrl.c", 190
	movhi HIGHW1(#_u4_flag_inv1_alarm+0x00000001), r0, r5
	clr1 0x00000007, LOWW(#_u4_flag_inv1_alarm+0x00000001)[r5]
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fi_1ms_inv1_almctrl.c", 192
	movhi HIGHW1(#_u2_cnt_oh_inv1_igbt_vn_alm_1ms), r0, r5
	st.h r0, LOWW(#_u2_cnt_oh_inv1_igbt_vn_alm_1ms)[r5]
	br9 .BB.LABEL.1_30
.BB.LABEL.1_28:	; if_then_bb105
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fi_1ms_inv1_almctrl.c", 186
	add 0xFFFFFFFF, r5
.BB.LABEL.1_29:	; if_then_bb105
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fi_1ms_inv1_almctrl.c", 0
	movhi HIGHW1(#_u2_cnt_oh_inv1_igbt_vn_alm_1ms), r0, r6
	st.h r5, LOWW(#_u2_cnt_oh_inv1_igbt_vn_alm_1ms)[r6]
.BB.LABEL.1_30:	; if_break_bb112
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fi_1ms_inv1_almctrl.c", 196
	movhi HIGHW1(#_f4_tmp_inv1_igbt_wp), r0, r5
	ld.w LOWW(#_f4_tmp_inv1_igbt_wp)[r5], r5
	cmpf.s 0x00000007, r5, r2
	trfsr 0
	bz9 .BB.LABEL.1_32
.BB.LABEL.1_31:	; if_then_bb118
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fi_1ms_inv1_almctrl.c", 198
	movhi HIGHW1(#_u4_flag_inv1_alarm+0x00000002), r0, r5
	set1 0x00000000, LOWW(#_u4_flag_inv1_alarm+0x00000002)[r5]
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fi_1ms_inv1_almctrl.c", 200
	movhi HIGHW1(#_u2_cnt_hold_inv1_alm_1ms_max), r0, r5
	ld.h LOWW(#_u2_cnt_hold_inv1_alm_1ms_max)[r5], r5
	br9 .BB.LABEL.1_35
.BB.LABEL.1_32:	; if_else_bb122
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fi_1ms_inv1_almctrl.c", 204
	movhi HIGHW1(#_u2_cnt_oh_inv1_igbt_wp_alm_1ms), r0, r5
	ld.hu LOWW(#_u2_cnt_oh_inv1_igbt_wp_alm_1ms)[r5], r5
	cmp 0x00000000, r5
	bnz9 .BB.LABEL.1_34
.BB.LABEL.1_33:	; if_else_bb131
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fi_1ms_inv1_almctrl.c", 210
	movhi HIGHW1(#_u4_flag_inv1_alarm+0x00000002), r0, r5
	clr1 0x00000000, LOWW(#_u4_flag_inv1_alarm+0x00000002)[r5]
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fi_1ms_inv1_almctrl.c", 212
	movhi HIGHW1(#_u2_cnt_oh_inv1_igbt_wp_alm_1ms), r0, r5
	st.h r0, LOWW(#_u2_cnt_oh_inv1_igbt_wp_alm_1ms)[r5]
	br9 .BB.LABEL.1_36
.BB.LABEL.1_34:	; if_then_bb128
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fi_1ms_inv1_almctrl.c", 206
	add 0xFFFFFFFF, r5
.BB.LABEL.1_35:	; if_then_bb128
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fi_1ms_inv1_almctrl.c", 0
	movhi HIGHW1(#_u2_cnt_oh_inv1_igbt_wp_alm_1ms), r0, r6
	st.h r5, LOWW(#_u2_cnt_oh_inv1_igbt_wp_alm_1ms)[r6]
.BB.LABEL.1_36:	; if_break_bb135
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fi_1ms_inv1_almctrl.c", 216
	movhi HIGHW1(#_f4_tmp_inv1_igbt_wn), r0, r5
	ld.w LOWW(#_f4_tmp_inv1_igbt_wn)[r5], r5
	cmpf.s 0x00000007, r5, r2
	trfsr 0
	bz9 .BB.LABEL.1_38
.BB.LABEL.1_37:	; if_then_bb141
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fi_1ms_inv1_almctrl.c", 218
	movhi HIGHW1(#_u4_flag_inv1_alarm+0x00000002), r0, r2
	set1 0x00000001, LOWW(#_u4_flag_inv1_alarm+0x00000002)[r2]
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fi_1ms_inv1_almctrl.c", 220
	movhi HIGHW1(#_u2_cnt_hold_inv1_alm_1ms_max), r0, r2
	ld.h LOWW(#_u2_cnt_hold_inv1_alm_1ms_max)[r2], r2
	br9 .BB.LABEL.1_41
.BB.LABEL.1_38:	; if_else_bb145
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fi_1ms_inv1_almctrl.c", 224
	movhi HIGHW1(#_u2_cnt_oh_inv1_igbt_wn_alm_1ms), r0, r2
	ld.hu LOWW(#_u2_cnt_oh_inv1_igbt_wn_alm_1ms)[r2], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.1_40
.BB.LABEL.1_39:	; if_else_bb154
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fi_1ms_inv1_almctrl.c", 230
	movhi HIGHW1(#_u4_flag_inv1_alarm+0x00000002), r0, r2
	clr1 0x00000001, LOWW(#_u4_flag_inv1_alarm+0x00000002)[r2]
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fi_1ms_inv1_almctrl.c", 232
	movhi HIGHW1(#_u2_cnt_oh_inv1_igbt_wn_alm_1ms), r0, r2
	st.h r0, LOWW(#_u2_cnt_oh_inv1_igbt_wn_alm_1ms)[r2]
	br9 .BB.LABEL.1_42
.BB.LABEL.1_40:	; if_then_bb151
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fi_1ms_inv1_almctrl.c", 226
	add 0xFFFFFFFF, r2
.BB.LABEL.1_41:	; if_then_bb151
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fi_1ms_inv1_almctrl.c", 0
	movhi HIGHW1(#_u2_cnt_oh_inv1_igbt_wn_alm_1ms), r0, r5
	st.h r2, LOWW(#_u2_cnt_oh_inv1_igbt_wn_alm_1ms)[r5]
.BB.LABEL.1_42:	; if_break_bb158
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fi_1ms_inv1_almctrl.c", 240
	movhi HIGHW1(#_f4_lev_oh_inv1_mot1_alm), r0, r2
	movhi HIGHW1(#_f4_tmp_inv1_mot1), r0, r5
	ld.w LOWW(#_f4_lev_oh_inv1_mot1_alm)[r2], r2
	ld.w LOWW(#_f4_tmp_inv1_mot1)[r5], r5
	cmpf.s 0x00000007, r5, r2
	trfsr 0
	bz9 .BB.LABEL.1_44
.BB.LABEL.1_43:	; if_then_bb164
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fi_1ms_inv1_almctrl.c", 242
	movhi HIGHW1(#_u4_flag_inv1_alarm+0x00000001), r0, r2
	set1 0x00000001, LOWW(#_u4_flag_inv1_alarm+0x00000001)[r2]
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fi_1ms_inv1_almctrl.c", 244
	movhi HIGHW1(#_u2_cnt_hold_inv1_alm_1ms_max), r0, r2
	ld.h LOWW(#_u2_cnt_hold_inv1_alm_1ms_max)[r2], r2
	br9 .BB.LABEL.1_47
.BB.LABEL.1_44:	; if_else_bb168
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fi_1ms_inv1_almctrl.c", 248
	movhi HIGHW1(#_u2_cnt_oh_inv1_mot1_alm_1ms), r0, r2
	ld.hu LOWW(#_u2_cnt_oh_inv1_mot1_alm_1ms)[r2], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.1_46
.BB.LABEL.1_45:	; if_else_bb177
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fi_1ms_inv1_almctrl.c", 254
	movhi HIGHW1(#_u4_flag_inv1_alarm+0x00000001), r0, r2
	clr1 0x00000001, LOWW(#_u4_flag_inv1_alarm+0x00000001)[r2]
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fi_1ms_inv1_almctrl.c", 256
	movhi HIGHW1(#_u2_cnt_oh_inv1_mot1_alm_1ms), r0, r2
	st.h r0, LOWW(#_u2_cnt_oh_inv1_mot1_alm_1ms)[r2]
	br9 .BB.LABEL.1_48
.BB.LABEL.1_46:	; if_then_bb174
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fi_1ms_inv1_almctrl.c", 250
	add 0xFFFFFFFF, r2
.BB.LABEL.1_47:	; if_then_bb174
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fi_1ms_inv1_almctrl.c", 0
	movhi HIGHW1(#_u2_cnt_oh_inv1_mot1_alm_1ms), r0, r5
	st.h r2, LOWW(#_u2_cnt_oh_inv1_mot1_alm_1ms)[r5]
.BB.LABEL.1_48:	; if_break_bb181
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fi_1ms_inv1_almctrl.c", 284
	movhi HIGHW1(#_f4_speed_inv1_lpf), r0, r2
	movhi HIGHW1(#_f4_lev_os_inv1_speed_alm), r0, r5
	ld.w LOWW(#_f4_speed_inv1_lpf)[r2], r2
	ld.w LOWW(#_f4_lev_os_inv1_speed_alm)[r5], r5
	cmpf.s 0x00000004, r5, r2
	trfsr 0
	bz9 .BB.LABEL.1_53
.BB.LABEL.1_49:	; bb
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fi_1ms_inv1_almctrl.c", 0
	negf.s r5, r5
	cmpf.s 0x00000004, r2, r5
	trfsr 0
	bz9 .BB.LABEL.1_53
.BB.LABEL.1_50:	; if_else_bb202
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fi_1ms_inv1_almctrl.c", 292
	movhi HIGHW1(#_u2_cnt_os_inv1_speed_alm_1ms), r0, r2
	ld.hu LOWW(#_u2_cnt_os_inv1_speed_alm_1ms)[r2], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.1_52
.BB.LABEL.1_51:	; if_else_bb211
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fi_1ms_inv1_almctrl.c", 298
	movhi HIGHW1(#_u4_flag_inv1_alarm), r0, r2
	clr1 0x00000006, LOWW(#_u4_flag_inv1_alarm)[r2]
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fi_1ms_inv1_almctrl.c", 300
	movhi HIGHW1(#_u2_cnt_os_inv1_speed_alm_1ms), r0, r2
	st.h r0, LOWW(#_u2_cnt_os_inv1_speed_alm_1ms)[r2]
	br9 .BB.LABEL.1_55
.BB.LABEL.1_52:	; if_then_bb208
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fi_1ms_inv1_almctrl.c", 294
	add 0xFFFFFFFF, r2
	br9 .BB.LABEL.1_54
.BB.LABEL.1_53:	; if_then_bb198
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fi_1ms_inv1_almctrl.c", 286
	movhi HIGHW1(#_u4_flag_inv1_alarm), r0, r2
	set1 0x00000006, LOWW(#_u4_flag_inv1_alarm)[r2]
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fi_1ms_inv1_almctrl.c", 288
	movhi HIGHW1(#_u2_cnt_hold_inv1_alm_1ms_max), r0, r2
	ld.h LOWW(#_u2_cnt_hold_inv1_alm_1ms_max)[r2], r2
.BB.LABEL.1_54:	; if_then_bb198
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fi_1ms_inv1_almctrl.c", 0
	movhi HIGHW1(#_u2_cnt_os_inv1_speed_alm_1ms), r0, r5
	st.h r2, LOWW(#_u2_cnt_os_inv1_speed_alm_1ms)[r5]
.BB.LABEL.1_55:	; if_break_bb215
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fi_1ms_inv1_almctrl.c", 308
	movhi HIGHW1(#_f4_lev_oh_inv1_int_alm), r0, r2
	movhi HIGHW1(#_f4_tmp_inv1_int), r0, r5
	ld.w LOWW(#_f4_lev_oh_inv1_int_alm)[r2], r2
	ld.w LOWW(#_f4_tmp_inv1_int)[r5], r5
	cmpf.s 0x00000007, r5, r2
	trfsr 0
	bz9 .BB.LABEL.1_57
.BB.LABEL.1_56:	; if_then_bb221
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fi_1ms_inv1_almctrl.c", 310
	movhi HIGHW1(#_u4_flag_inv1_alarm+0x00000001), r0, r2
	set1 0x00000003, LOWW(#_u4_flag_inv1_alarm+0x00000001)[r2]
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fi_1ms_inv1_almctrl.c", 312
	movhi HIGHW1(#_u2_cnt_hold_inv1_alm_1ms_max), r0, r2
	ld.h LOWW(#_u2_cnt_hold_inv1_alm_1ms_max)[r2], r2
	br9 .BB.LABEL.1_60
.BB.LABEL.1_57:	; if_else_bb225
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fi_1ms_inv1_almctrl.c", 316
	movhi HIGHW1(#_u2_cnt_oh_inv1_int_alm_1ms), r0, r2
	ld.hu LOWW(#_u2_cnt_oh_inv1_int_alm_1ms)[r2], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.1_59
.BB.LABEL.1_58:	; if_else_bb234
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fi_1ms_inv1_almctrl.c", 322
	movhi HIGHW1(#_u4_flag_inv1_alarm+0x00000001), r0, r2
	clr1 0x00000003, LOWW(#_u4_flag_inv1_alarm+0x00000001)[r2]
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fi_1ms_inv1_almctrl.c", 324
	movhi HIGHW1(#_u2_cnt_oh_inv1_int_alm_1ms), r0, r2
	st.h r0, LOWW(#_u2_cnt_oh_inv1_int_alm_1ms)[r2]
	br9 .BB.LABEL.1_61
.BB.LABEL.1_59:	; if_then_bb231
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fi_1ms_inv1_almctrl.c", 318
	add 0xFFFFFFFF, r2
.BB.LABEL.1_60:	; if_then_bb231
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fi_1ms_inv1_almctrl.c", 0
	movhi HIGHW1(#_u2_cnt_oh_inv1_int_alm_1ms), r0, r5
	st.h r2, LOWW(#_u2_cnt_oh_inv1_int_alm_1ms)[r5]
.BB.LABEL.1_61:	; if_break_bb238
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fi_1ms_inv1_almctrl.c", 332
	movhi HIGHW1(#_f4_lev_ov_inv1_ctrlbd_alm), r0, r2
	movhi HIGHW1(#_f4_vctrlbd_inv1_ad), r0, r5
	ld.w LOWW(#_f4_lev_ov_inv1_ctrlbd_alm)[r2], r2
	ld.w LOWW(#_f4_vctrlbd_inv1_ad)[r5], r5
	cmpf.s 0x00000007, r5, r2
	trfsr 0
	bz9 .BB.LABEL.1_63
.BB.LABEL.1_62:	; if_then_bb244
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fi_1ms_inv1_almctrl.c", 334
	movhi HIGHW1(#_u4_flag_inv1_alarm), r0, r2
	set1 0x00000007, LOWW(#_u4_flag_inv1_alarm)[r2]
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fi_1ms_inv1_almctrl.c", 336
	movhi HIGHW1(#_u2_cnt_hold_inv1_alm_1ms_max), r0, r2
	ld.h LOWW(#_u2_cnt_hold_inv1_alm_1ms_max)[r2], r2
	br9 .BB.LABEL.1_66
.BB.LABEL.1_63:	; if_else_bb248
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fi_1ms_inv1_almctrl.c", 340
	movhi HIGHW1(#_u2_cnt_ov_inv1_ctrlbd_alm_1ms), r0, r2
	ld.hu LOWW(#_u2_cnt_ov_inv1_ctrlbd_alm_1ms)[r2], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.1_65
.BB.LABEL.1_64:	; if_else_bb257
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fi_1ms_inv1_almctrl.c", 346
	movhi HIGHW1(#_u4_flag_inv1_alarm), r0, r2
	clr1 0x00000007, LOWW(#_u4_flag_inv1_alarm)[r2]
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fi_1ms_inv1_almctrl.c", 348
	movhi HIGHW1(#_u2_cnt_ov_inv1_ctrlbd_alm_1ms), r0, r2
	st.h r0, LOWW(#_u2_cnt_ov_inv1_ctrlbd_alm_1ms)[r2]
	br9 .BB.LABEL.1_67
.BB.LABEL.1_65:	; if_then_bb254
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fi_1ms_inv1_almctrl.c", 342
	add 0xFFFFFFFF, r2
.BB.LABEL.1_66:	; if_then_bb254
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fi_1ms_inv1_almctrl.c", 0
	movhi HIGHW1(#_u2_cnt_ov_inv1_ctrlbd_alm_1ms), r0, r6
	st.h r2, LOWW(#_u2_cnt_ov_inv1_ctrlbd_alm_1ms)[r6]
.BB.LABEL.1_67:	; if_break_bb261
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fi_1ms_inv1_almctrl.c", 356
	movhi HIGHW1(#_f4_lev_uv_inv1_ctrlbd_alm), r0, r2
	ld.w LOWW(#_f4_lev_uv_inv1_ctrlbd_alm)[r2], r2
	cmpf.s 0x00000007, r2, r5
	trfsr 0
	bz9 .BB.LABEL.1_69
.BB.LABEL.1_68:	; if_then_bb267
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fi_1ms_inv1_almctrl.c", 358
	movhi HIGHW1(#_u4_flag_inv1_alarm+0x00000001), r0, r2
	set1 0x00000000, LOWW(#_u4_flag_inv1_alarm+0x00000001)[r2]
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fi_1ms_inv1_almctrl.c", 360
	movhi HIGHW1(#_u2_cnt_hold_inv1_alm_1ms_max), r0, r2
	ld.h LOWW(#_u2_cnt_hold_inv1_alm_1ms_max)[r2], r2
	br9 .BB.LABEL.1_72
.BB.LABEL.1_69:	; if_else_bb271
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fi_1ms_inv1_almctrl.c", 364
	movhi HIGHW1(#_u2_cnt_uv_inv1_ctrlbd_alm_1ms), r0, r2
	ld.hu LOWW(#_u2_cnt_uv_inv1_ctrlbd_alm_1ms)[r2], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.1_71
.BB.LABEL.1_70:	; if_else_bb280
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fi_1ms_inv1_almctrl.c", 370
	movhi HIGHW1(#_u4_flag_inv1_alarm+0x00000001), r0, r2
	clr1 0x00000000, LOWW(#_u4_flag_inv1_alarm+0x00000001)[r2]
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fi_1ms_inv1_almctrl.c", 372
	movhi HIGHW1(#_u2_cnt_uv_inv1_ctrlbd_alm_1ms), r0, r2
	st.h r0, LOWW(#_u2_cnt_uv_inv1_ctrlbd_alm_1ms)[r2]
	jmp [r31]
.BB.LABEL.1_71:	; if_then_bb277
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fi_1ms_inv1_almctrl.c", 366
	add 0xFFFFFFFF, r2
.BB.LABEL.1_72:	; if_then_bb277
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fi_1ms_inv1_almctrl.c", 0
	movhi HIGHW1(#_u2_cnt_uv_inv1_ctrlbd_alm_1ms), r0, r5
	st.h r2, LOWW(#_u2_cnt_uv_inv1_ctrlbd_alm_1ms)[r5]
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fi_1ms_inv1_almctrl.c", 377
	jmp [r31]
_fb_1ms_inv1_almctrl_init:
	.stack _fb_1ms_inv1_almctrl_init = 0
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fi_1ms_inv1_almctrl.c", 393
	movhi HIGHW1(#_f4_lev_uv_inv1_vdc_alm), r0, r2
	movhi 0x000041A8, r0, r5
	st.w r5, LOWW(#_f4_lev_uv_inv1_vdc_alm)[r2]
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fi_1ms_inv1_almctrl.c", 394
	movhi HIGHW1(#_f4_lev_oh_inv1_igbt_alm), r0, r2
	movhi 0x000042B4, r0, r5
	st.w r5, LOWW(#_f4_lev_oh_inv1_igbt_alm)[r2]
	movhi 0x000042A0, r0, r2
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fi_1ms_inv1_almctrl.c", 395
	movhi HIGHW1(#_f4_lev_oh_inv1_mot1_alm), r0, r5
	st.w r2, LOWW(#_f4_lev_oh_inv1_mot1_alm)[r5]
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fi_1ms_inv1_almctrl.c", 397
	movhi HIGHW1(#_f4_lev_os_inv1_speed_alm), r0, r5
	mov 0x46241000, r6
	st.w r6, LOWW(#_f4_lev_os_inv1_speed_alm)[r5]
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fi_1ms_inv1_almctrl.c", 398
	movhi HIGHW1(#_f4_lev_oh_inv1_int_alm), r0, r5
	st.w r2, LOWW(#_f4_lev_oh_inv1_int_alm)[r5]
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fi_1ms_inv1_almctrl.c", 399
	movhi HIGHW1(#_f4_lev_ov_inv1_ctrlbd_alm), r0, r2
	movhi 0x00004190, r0, r5
	st.w r5, LOWW(#_f4_lev_ov_inv1_ctrlbd_alm)[r2]
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fi_1ms_inv1_almctrl.c", 400
	movhi HIGHW1(#_f4_lev_uv_inv1_ctrlbd_alm), r0, r2
	movhi 0x00004100, r0, r5
	st.w r5, LOWW(#_f4_lev_uv_inv1_ctrlbd_alm)[r2]
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fi_1ms_inv1_almctrl.c", 402
	movhi HIGHW1(#_u2_cnt_hold_inv1_alm_1ms_max), r0, r2
	movea 0x000003E8, r0, r5
	st.h r5, LOWW(#_u2_cnt_hold_inv1_alm_1ms_max)[r2]
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fi_1ms_inv1_almctrl.c", 404
	movhi HIGHW1(#_u2_cnt_uv_inv1_vdc_alm_1ms), r0, r2
	st.h r0, LOWW(#_u2_cnt_uv_inv1_vdc_alm_1ms)[r2]
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fi_1ms_inv1_almctrl.c", 405
	movhi HIGHW1(#_u2_cnt_oh_inv1_igbt_up_alm_1ms), r0, r2
	st.h r0, LOWW(#_u2_cnt_oh_inv1_igbt_up_alm_1ms)[r2]
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fi_1ms_inv1_almctrl.c", 406
	movhi HIGHW1(#_u2_cnt_oh_inv1_igbt_un_alm_1ms), r0, r2
	st.h r0, LOWW(#_u2_cnt_oh_inv1_igbt_un_alm_1ms)[r2]
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fi_1ms_inv1_almctrl.c", 407
	movhi HIGHW1(#_u2_cnt_oh_inv1_igbt_vp_alm_1ms), r0, r2
	st.h r0, LOWW(#_u2_cnt_oh_inv1_igbt_vp_alm_1ms)[r2]
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fi_1ms_inv1_almctrl.c", 408
	movhi HIGHW1(#_u2_cnt_oh_inv1_igbt_vn_alm_1ms), r0, r2
	st.h r0, LOWW(#_u2_cnt_oh_inv1_igbt_vn_alm_1ms)[r2]
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fi_1ms_inv1_almctrl.c", 409
	movhi HIGHW1(#_u2_cnt_oh_inv1_igbt_wp_alm_1ms), r0, r2
	st.h r0, LOWW(#_u2_cnt_oh_inv1_igbt_wp_alm_1ms)[r2]
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fi_1ms_inv1_almctrl.c", 410
	movhi HIGHW1(#_u2_cnt_oh_inv1_igbt_wn_alm_1ms), r0, r2
	st.h r0, LOWW(#_u2_cnt_oh_inv1_igbt_wn_alm_1ms)[r2]
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fi_1ms_inv1_almctrl.c", 411
	movhi HIGHW1(#_u2_cnt_oh_inv1_mot1_alm_1ms), r0, r2
	st.h r0, LOWW(#_u2_cnt_oh_inv1_mot1_alm_1ms)[r2]
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fi_1ms_inv1_almctrl.c", 412
	movhi HIGHW1(#_u2_cnt_oh_inv1_mot2_alm_1ms), r0, r2
	st.h r0, LOWW(#_u2_cnt_oh_inv1_mot2_alm_1ms)[r2]
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fi_1ms_inv1_almctrl.c", 413
	movhi HIGHW1(#_u2_cnt_os_inv1_speed_alm_1ms), r0, r2
	st.h r0, LOWW(#_u2_cnt_os_inv1_speed_alm_1ms)[r2]
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fi_1ms_inv1_almctrl.c", 414
	movhi HIGHW1(#_u2_cnt_oh_inv1_int_alm_1ms), r0, r2
	st.h r0, LOWW(#_u2_cnt_oh_inv1_int_alm_1ms)[r2]
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fi_1ms_inv1_almctrl.c", 415
	movhi HIGHW1(#_u2_cnt_ov_inv1_ctrlbd_alm_1ms), r0, r2
	st.h r0, LOWW(#_u2_cnt_ov_inv1_ctrlbd_alm_1ms)[r2]
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fi_1ms_inv1_almctrl.c", 416
	movhi HIGHW1(#_u2_cnt_uv_inv1_ctrlbd_alm_1ms), r0, r2
	st.h r0, LOWW(#_u2_cnt_uv_inv1_ctrlbd_alm_1ms)[r2]
	jmp [r31]
	.section .bss, bss
	.align 4
_f4_lev_uv_inv1_vdc_alm:
	.ds (4)
	.align 4
_f4_lev_oh_inv1_igbt_alm:
	.ds (4)
	.align 4
_f4_lev_oh_inv1_mot1_alm:
	.ds (4)
	.align 4
_f4_lev_oh_inv1_mot2_alm:
	.ds (4)
	.align 4
_f4_lev_os_inv1_speed_alm:
	.ds (4)
	.align 4
_f4_lev_oh_inv1_int_alm:
	.ds (4)
	.align 4
_f4_lev_ov_inv1_ctrlbd_alm:
	.ds (4)
	.align 4
_f4_lev_uv_inv1_ctrlbd_alm:
	.ds (4)
	.align 2
_u2_cnt_hold_inv1_alm_1ms_max:
	.ds (2)
	.align 2
_u2_cnt_uv_inv1_vdc_alm_1ms:
	.ds (2)
	.align 2
_u2_cnt_oh_inv1_igbt_up_alm_1ms:
	.ds (2)
	.align 2
_u2_cnt_oh_inv1_igbt_un_alm_1ms:
	.ds (2)
	.align 2
_u2_cnt_oh_inv1_igbt_vp_alm_1ms:
	.ds (2)
	.align 2
_u2_cnt_oh_inv1_igbt_vn_alm_1ms:
	.ds (2)
	.align 2
_u2_cnt_oh_inv1_igbt_wp_alm_1ms:
	.ds (2)
	.align 2
_u2_cnt_oh_inv1_igbt_wn_alm_1ms:
	.ds (2)
	.align 2
_u2_cnt_oh_inv1_mot1_alm_1ms:
	.ds (2)
	.align 2
_u2_cnt_oh_inv1_mot2_alm_1ms:
	.ds (2)
	.align 2
_u2_cnt_os_inv1_speed_alm_1ms:
	.ds (2)
	.align 2
_u2_cnt_oh_inv1_int_alm_1ms:
	.ds (2)
	.align 2
_u2_cnt_ov_inv1_ctrlbd_alm_1ms:
	.ds (2)
	.align 2
_u2_cnt_uv_inv1_ctrlbd_alm_1ms:
	.ds (2)
