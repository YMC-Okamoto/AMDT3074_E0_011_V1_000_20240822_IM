#CC-RH Compiler RH850 Assembler Source
#@	CC-RH Version : V2.01.00 [28 Nov 2018]
#@	Command : Common\fi_pe2_error.c ..\Common\commonPE2toPE1.c ..\Common\iolib\io_CPU.c ..\Common\iolib\io_ADC.c ..\Common\iolib\io_CSIH0.c ..\Common\iolib\io_CSIH1.c ..\Common\iolib\io_ENCA0.c ..\Common\iolib\io_ENCA1.c ..\Common\iolib\io_FCAN.c ..\Common\iolib\io_PIO_amdt0530.c ..\Common\iolib\io_RDC20.c ..\Common\iolib\io_RDC21.c ..\Common\iolib\io_SCI0_40MHz.c ..\Common\iolib\io_SCI1_40MHz.c ..\Common\iolib\io_SCI2_40MHz.c ..\Common\iolib\io_TAUD0.c ..\Common\iolib\io_TAUD1.c ..\Common\iolib\io_TAUJ0.c ..\Common\iolib\io_TSG30.c ..\Common\iolib\io_TSG31.c ..\PE1\AWatcher\VECLIB_CMDMONI.c src\fb_can1_ctrl.c src\fb_kpwm_tbl.c src\fb_therm_calc.c src\fb_vctrlerr_tbl.c src\fb_wt_inv1_enc_cmp_tbl.c src\fi_1ms_int.c src\fi_1ms_inv1_adctrl.c src\fi_1ms_inv1_almctrl.c src\fi_1ms_inv1_errctrl.c src\fi_1ms_inv1_idqcom.c src\fi_1ms_inv1_ifctrl.c src\fi_1ms_inv1_seqctrl.c src\fi_1ms_inv1_wrctrl.c src\fi_20us_int.c src\fi_20us_inv1_1pulse.c src\fi_enc1_int.c src\fi_enc1_inv1_1pulse.c src\fi_pwm_int.c src\fi_pwm_inv1_1pulse.c src\fi_pwm_inv1_adctrl.c src\fi_pwm_inv1_almctrl.c src\fi_pwm_inv1_encctrl.c src\fi_pwm_inv1_errctrl.c src\fi_pwm_inv1_idqctrl.c src\fi_pwm_inv1_invadj.c src\fi_pwm_inv1_svctrl.c src\fi_pwm_inv1_syncctrl.c src\fi_pwm_inv1_vctrlerr.c src\fi_pwm_vctrlerrtbl.c src\fi_zphase_int.c src\fpmsm_main.c src\mapdata_ld_inv1_2d.c src\mapdata_ld_inv1_2d_map.c src\mapdata_lq_inv1_2d.c src\mapdata_lq_inv1_2d_map.c src\mapdata_trq_inv1.c src\mapdata_trq_inv1_limit.c src\mapdata_trq_inv1_map.c src\mapdata_trq_inv1_map_limit.c src\mapdata_trq_inv1_map_power.c ..\PE1\src\fi_AWatcher.c -Xobj_path=DefaultBuild -Xcpu=g3m -g -g_line -Ospeed -Oinline_size -Isrc -I..\Common -D__CLK_HSB=80,__CLK_LSB=40,__CLKC_HSB=80,__CLK_CLSB=40 -use_recipf -Xasm_path=DefaultBuild -c -Xexec_time=C:\Users\fukum\AppData\Local\Temp\CSPlusBuildTool_66854fc4b1eb435c970c72aee2086311ckwmrbu1.rvm
#@	compiled at Fri Aug 21 11:47:38 2020

	.file "src\fi_1ms_inv1_wrctrl.c"

	$reg_mode 32

	.extern _f4_wr_inv1_pll_lpf
	.extern _f4_pf_inv1
	.extern _f4_dpf_inv1
	.extern _f4_fm_inv1
	.extern _f4_dfm_inv1
	.extern _u1_flag_mode_inv1_idqcom
	.extern _f4_tq_inv1_ref_tmp
	.extern _f4_tq_inv1_ref_max
	.extern _f4_tq_inv1_ref_min
	.extern _f4_tq_inv1_ref_max_tmp
	.extern _f4_speed_inv1_ref
	.extern _u1_pwm_inv1_status
	.public _u1_flag_enable_inv1_wrctrl, 1
	.public _u1_flag_enable_inv1_wrlimitctrl, 1
	.public _f4_wr_inv1_ref, 4
	.public _f4_dwr_inv1_ref_up, 4
	.public _u1_flag_wr_inv1_ref_check, 1
	.public _f4_kp_inv1_wrctrl, 4
	.public _f4_ki_inv1_wrctrl, 4
	.public _f4_wr_inv1_ctrlerr, 4
	.public _f4_tq_inv1_wrctrlp, 4
	.public _f4_tq_inv1_wrctrli, 4
	.public _f4_tq_inv1_wrctrl, 4
	.public _f4_iq_inv1_wrctrlp, 4
	.public _f4_iq_inv1_wrctrli, 4
	.public _f4_iq_inv1_wrctrl, 4
	.public _f4_kp_inv1_wrlimitctrl, 4
	.public _f4_ki_inv1_wrlimitctrl, 4
	.public _f4_wr_inv1_limitctrlerr, 4
	.public _f4_tq_inv1_wrlimitctrlp, 4
	.public _f4_tq_inv1_wrlimitctrli, 4
	.public _f4_tq_inv1_wrlimitctrl, 4
	.public _f4_iq_inv1_wrlimitctrl, 4
	.public _f4_idq_inv1_max, 4
	.public _fi_1ms_inv1_wrctrl
	.public _fb_1ms_inv1_wrctrl_init

	.section .text, text
_fi_1ms_inv1_wrctrl:
	.stack _fi_1ms_inv1_wrctrl = 0
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fi_1ms_inv1_wrctrl.c", 121
	movhi HIGHW1(#_u1_pwm_inv1_status), r0, r2
	ld.bu LOWW(#_u1_pwm_inv1_status)[r2], r2
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.1_9
.BB.LABEL.1_1:	; bb
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fi_1ms_inv1_wrctrl.c", 0
	movhi HIGHW1(#_u1_flag_enable_inv1_wrctrl), r0, r5
	ld.bu LOWW(#_u1_flag_enable_inv1_wrctrl)[r5], r5
	cmp 0x00000001, r5
	bnz9 .BB.LABEL.1_9
.BB.LABEL.1_2:	; if_then_bb
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fi_1ms_inv1_wrctrl.c", 126
	movhi HIGHW1(#_u1_flag_wr_inv1_ref_check), r0, r6
	ld.bu LOWW(#_u1_flag_wr_inv1_ref_check)[r6], r6
	cmp 0x00000001, r6
	bz9 .BB.LABEL.1_4
.BB.LABEL.1_3:	; if_then_bb22
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fi_1ms_inv1_wrctrl.c", 128
	movhi HIGHW1(#_u1_flag_wr_inv1_ref_check), r0, r6
	mov 0x00000001, r7
	st.b r7, LOWW(#_u1_flag_wr_inv1_ref_check)[r6]
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fi_1ms_inv1_wrctrl.c", 129
	movhi HIGHW1(#_f4_wr_inv1_pll_lpf), r0, r6
	ld.w LOWW(#_f4_wr_inv1_pll_lpf)[r6], r6
	movhi HIGHW1(#_f4_wr_inv1_ref), r0, r7
	st.w r6, LOWW(#_f4_wr_inv1_ref)[r7]
.BB.LABEL.1_4:	; if_break_bb
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fi_1ms_inv1_wrctrl.c", 133
	movhi HIGHW1(#_f4_speed_inv1_ref), r0, r6
	ld.w LOWW(#_f4_speed_inv1_ref)[r6], r6
	mov 0x3DD67750, r7
	movhi HIGHW1(#_f4_pf_inv1), r0, r8
	ld.w LOWW(#_f4_pf_inv1)[r8], r8
	mulf.s r7, r6, r6
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fi_1ms_inv1_wrctrl.c", 134
	movhi HIGHW1(#_f4_wr_inv1_ref), r0, r9
	ld.w LOWW(#_f4_wr_inv1_ref)[r9], r9
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fi_1ms_inv1_wrctrl.c", 133
	mulf.s r8, r6, r6
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fi_1ms_inv1_wrctrl.c", 134
	cmpf.s 0x00000007, r6, r9
	trfsr 0
	bz9 .BB.LABEL.1_7
.BB.LABEL.1_5:	; if_then_bb33
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fi_1ms_inv1_wrctrl.c", 136
	movhi HIGHW1(#_f4_dwr_inv1_ref_up), r0, r7
	ld.w LOWW(#_f4_dwr_inv1_ref_up)[r7], r7
	movhi HIGHW1(#_f4_wr_inv1_ref), r0, r8
	addf.s r7, r9, r9
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fi_1ms_inv1_wrctrl.c", 137
	cmpf.s 0x00000004, r6, r9
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fi_1ms_inv1_wrctrl.c", 136
	st.w r9, LOWW(#_f4_wr_inv1_ref)[r8]
.BB.LABEL.1_6:	; if_then_bb33
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fi_1ms_inv1_wrctrl.c", 0
	trfsr 0
	bz9 .BB.LABEL.1_12
	br9 .BB.LABEL.1_13
.BB.LABEL.1_7:	; if_else_bb46
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fi_1ms_inv1_wrctrl.c", 143
	cmpf.s 0x00000004, r6, r9
	trfsr 0
	bnz9 .BB.LABEL.1_13
.BB.LABEL.1_8:	; if_then_bb52
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fi_1ms_inv1_wrctrl.c", 145
	movhi HIGHW1(#_f4_dwr_inv1_ref_up), r0, r7
	ld.w LOWW(#_f4_dwr_inv1_ref_up)[r7], r7
	movhi HIGHW1(#_f4_wr_inv1_ref), r0, r8
	subf.s r7, r9, r9
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fi_1ms_inv1_wrctrl.c", 146
	cmpf.s 0x00000004, r9, r6
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fi_1ms_inv1_wrctrl.c", 145
	st.w r9, LOWW(#_f4_wr_inv1_ref)[r8]
	br9 .BB.LABEL.1_6
.BB.LABEL.1_9:	; if_else_bb68
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fi_1ms_inv1_wrctrl.c", 156
	movhi HIGHW1(#_u1_flag_wr_inv1_ref_check), r0, r5
	st.b r0, LOWW(#_u1_flag_wr_inv1_ref_check)[r5]
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fi_1ms_inv1_wrctrl.c", 158
	movhi HIGHW1(#_u1_flag_enable_inv1_wrctrl), r0, r5
	ld.bu LOWW(#_u1_flag_enable_inv1_wrctrl)[r5], r5
	cmp 0x00000001, r5
	bnz9 .BB.LABEL.1_11
.BB.LABEL.1_10:	; if_then_bb74
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fi_1ms_inv1_wrctrl.c", 160
	movhi HIGHW1(#_f4_wr_inv1_pll_lpf), r0, r6
	ld.w LOWW(#_f4_wr_inv1_pll_lpf)[r6], r6
	br9 .BB.LABEL.1_12
.BB.LABEL.1_11:	; if_else_bb76
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fi_1ms_inv1_wrctrl.c", 164
	movhi HIGHW1(#_f4_speed_inv1_ref), r0, r6
	ld.w LOWW(#_f4_speed_inv1_ref)[r6], r6
	mov 0x3DD67750, r9
	movhi HIGHW1(#_f4_pf_inv1), r0, r7
	ld.w LOWW(#_f4_pf_inv1)[r7], r7
	mulf.s r9, r6, r6
	mulf.s r7, r6, r6
.BB.LABEL.1_12:	; if_break_bb83.PartialDrain
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fi_1ms_inv1_wrctrl.c", 0
	movhi HIGHW1(#_f4_wr_inv1_ref), r0, r9
	st.w r6, LOWW(#_f4_wr_inv1_ref)[r9]
	mov r6, r9
.BB.LABEL.1_13:	; if_break_bb83
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fi_1ms_inv1_wrctrl.c", 172
	cmp 0x00000001, r2
	bnz17 .BB.LABEL.1_35
.BB.LABEL.1_14:	; bb88
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fi_1ms_inv1_wrctrl.c", 0
	cmp 0x00000001, r5
	bnz9 .BB.LABEL.1_22
.BB.LABEL.1_15:	; bb100
	movhi HIGHW1(#_u1_flag_mode_inv1_idqcom), r0, r6
	ld.bu LOWW(#_u1_flag_mode_inv1_idqcom)[r6], r6
	cmp 0x00000001, r6
	bnz9 .BB.LABEL.1_22
.BB.LABEL.1_16:	; if_then_bb113
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fi_1ms_inv1_wrctrl.c", 177
	movhi HIGHW1(#_f4_wr_inv1_pll_lpf), r0, r6
	ld.w LOWW(#_f4_wr_inv1_pll_lpf)[r6], r6
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fi_1ms_inv1_wrctrl.c", 184
	movhi HIGHW1(#_f4_kp_inv1_wrctrl), r0, r8
	ld.w LOWW(#_f4_kp_inv1_wrctrl)[r8], r8
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fi_1ms_inv1_wrctrl.c", 181
	movhi HIGHW1(#_f4_wr_inv1_ctrlerr), r0, r7
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fi_1ms_inv1_wrctrl.c", 186
	movhi HIGHW1(#_f4_ki_inv1_wrctrl), r0, r11
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fi_1ms_inv1_wrctrl.c", 181
	subf.s r6, r9, r6
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fi_1ms_inv1_wrctrl.c", 186
	ld.w LOWW(#_f4_ki_inv1_wrctrl)[r11], r11
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fi_1ms_inv1_wrctrl.c", 184
	movhi HIGHW1(#_f4_tq_inv1_wrctrlp), r0, r10
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fi_1ms_inv1_wrctrl.c", 181
	st.w r6, LOWW(#_f4_wr_inv1_ctrlerr)[r7]
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fi_1ms_inv1_wrctrl.c", 184
	mulf.s r6, r8, r7
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fi_1ms_inv1_wrctrl.c", 186
	mulf.s r6, r11, r6
	movhi HIGHW1(#_f4_tq_inv1_wrctrli), r0, r8
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fi_1ms_inv1_wrctrl.c", 187
	movhi HIGHW1(#_f4_tq_inv1_ref_max), r0, r11
	ld.w LOWW(#_f4_tq_inv1_ref_max)[r11], r11
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fi_1ms_inv1_wrctrl.c", 184
	st.w r7, LOWW(#_f4_tq_inv1_wrctrlp)[r10]
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fi_1ms_inv1_wrctrl.c", 186
	ld.w LOWW(#_f4_tq_inv1_wrctrli)[r8], r10
	addf.s r6, r10, r6
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fi_1ms_inv1_wrctrl.c", 187
	cmpf.s 0x00000007, r6, r11
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fi_1ms_inv1_wrctrl.c", 186
	st.w r6, LOWW(#_f4_tq_inv1_wrctrli)[r8]
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fi_1ms_inv1_wrctrl.c", 187
	trfsr 0
	bz9 .BB.LABEL.1_18
.BB.LABEL.1_17:	; if_then_bb113.bb147_crit_edge
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fi_1ms_inv1_wrctrl.c", 0
	mov #_f4_tq_inv1_ref_max, r6
	br9 .BB.LABEL.1_19
.BB.LABEL.1_18:	; bb133
	mov #_f4_tq_inv1_ref_min, r8
	ld.w 0x00000000[r8], r10
	mov #_f4_tq_inv1_wrctrli, r12
	cmpf.s 0x00000004, r6, r10
	cmovf.s 0, r8, r12, r6
.BB.LABEL.1_19:	; bb147
	ld.w 0x00000000[r6], r6
	movhi HIGHW1(#_f4_tq_inv1_wrctrli), r0, r8
	st.w r6, LOWW(#_f4_tq_inv1_wrctrli)[r8]
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fi_1ms_inv1_wrctrl.c", 189
	addf.s r6, r7, r6
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fi_1ms_inv1_wrctrl.c", 190
	cmpf.s 0x00000007, r6, r11
	trfsr 0
	bnz9 .BB.LABEL.1_21
.BB.LABEL.1_20:	; bb159
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fi_1ms_inv1_wrctrl.c", 0
	movhi HIGHW1(#_f4_tq_inv1_ref_min), r0, r11
	ld.w LOWW(#_f4_tq_inv1_ref_min)[r11], r11
	cmpf.s 0x00000004, r6, r11
	cmovf.s 0, r11, r6, r11
.BB.LABEL.1_21:	; bb173
	movhi HIGHW1(#_f4_tq_inv1_wrctrl), r0, r6
	st.w r11, LOWW(#_f4_tq_inv1_wrctrl)[r6]
	jr .BB.LABEL.1_36
.BB.LABEL.1_22:	; if_else_bb176
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fi_1ms_inv1_wrctrl.c", 194
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.1_35
.BB.LABEL.1_23:	; bb181
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fi_1ms_inv1_wrctrl.c", 0
	cmp 0x00000000, r5
	bnz9 .BB.LABEL.1_26
.BB.LABEL.1_24:	; bb193
	movhi HIGHW1(#_u1_flag_mode_inv1_idqcom), r0, r6
	ld.bu LOWW(#_u1_flag_mode_inv1_idqcom)[r6], r6
	cmp 0x00000001, r6
	bnz9 .BB.LABEL.1_26
.BB.LABEL.1_25:	; if_then_bb206
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fi_1ms_inv1_wrctrl.c", 198
	movhi HIGHW1(#_f4_tq_inv1_ref_tmp), r0, r6
	ld.w LOWW(#_f4_tq_inv1_ref_tmp)[r6], r6
	movhi HIGHW1(#_f4_tq_inv1_wrctrli), r0, r7
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fi_1ms_inv1_wrctrl.c", 199
	movhi HIGHW1(#_f4_tq_inv1_wrctrl), r0, r8
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fi_1ms_inv1_wrctrl.c", 198
	st.w r6, LOWW(#_f4_tq_inv1_wrctrli)[r7]
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fi_1ms_inv1_wrctrl.c", 199
	st.w r6, LOWW(#_f4_tq_inv1_wrctrl)[r8]
	br9 .BB.LABEL.1_36
.BB.LABEL.1_26:	; if_else_bb209
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fi_1ms_inv1_wrctrl.c", 204
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.1_35
.BB.LABEL.1_27:	; if_else_bb209
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fi_1ms_inv1_wrctrl.c", 0
	cmp 0x00000001, r5
	bnz9 .BB.LABEL.1_35
.BB.LABEL.1_28:	; bb226
	movhi HIGHW1(#_u1_flag_mode_inv1_idqcom), r0, r6
	ld.bu LOWW(#_u1_flag_mode_inv1_idqcom)[r6], r6
	cmp 0x00000000, r6
	bnz9 .BB.LABEL.1_35
.BB.LABEL.1_29:	; if_then_bb239
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fi_1ms_inv1_wrctrl.c", 208
	movhi HIGHW1(#_f4_wr_inv1_pll_lpf), r0, r6
	ld.w LOWW(#_f4_wr_inv1_pll_lpf)[r6], r6
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fi_1ms_inv1_wrctrl.c", 215
	movhi HIGHW1(#_f4_kp_inv1_wrctrl), r0, r8
	ld.w LOWW(#_f4_kp_inv1_wrctrl)[r8], r8
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fi_1ms_inv1_wrctrl.c", 217
	movhi HIGHW1(#_f4_ki_inv1_wrctrl), r0, r11
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fi_1ms_inv1_wrctrl.c", 212
	movhi HIGHW1(#_f4_wr_inv1_ctrlerr), r0, r7
	subf.s r6, r9, r6
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fi_1ms_inv1_wrctrl.c", 217
	ld.w LOWW(#_f4_ki_inv1_wrctrl)[r11], r11
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fi_1ms_inv1_wrctrl.c", 215
	movhi HIGHW1(#_f4_iq_inv1_wrctrlp), r0, r10
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fi_1ms_inv1_wrctrl.c", 212
	st.w r6, LOWW(#_f4_wr_inv1_ctrlerr)[r7]
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fi_1ms_inv1_wrctrl.c", 215
	mulf.s r6, r8, r7
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fi_1ms_inv1_wrctrl.c", 217
	mulf.s r6, r11, r6
	movhi HIGHW1(#_f4_iq_inv1_wrctrli), r0, r8
	ld.w LOWW(#_f4_iq_inv1_wrctrli)[r8], r8
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fi_1ms_inv1_wrctrl.c", 215
	st.w r7, LOWW(#_f4_iq_inv1_wrctrlp)[r10]
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fi_1ms_inv1_wrctrl.c", 217
	addf.s r6, r8, r6
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fi_1ms_inv1_wrctrl.c", 218
	movhi HIGHW1(#_f4_idq_inv1_max), r0, r10
	ld.w LOWW(#_f4_idq_inv1_max)[r10], r10
	cmpf.s 0x00000007, r6, r10
	trfsr 0
	cmov 0x0000000A, r10, r6, r6
	bnz9 .BB.LABEL.1_32
.BB.LABEL.1_30:	; bb259
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fi_1ms_inv1_wrctrl.c", 0
	negf.s r10, r8
	cmpf.s 0x00000004, r6, r8
	trfsr 0
	bnz9 .BB.LABEL.1_32
.BB.LABEL.1_31:	; bb265
	mov r8, r6
.BB.LABEL.1_32:	; bb275
	movhi HIGHW1(#_f4_iq_inv1_wrctrli), r0, r8
	st.w r6, LOWW(#_f4_iq_inv1_wrctrli)[r8]
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fi_1ms_inv1_wrctrl.c", 220
	addf.s r6, r7, r6
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fi_1ms_inv1_wrctrl.c", 221
	cmpf.s 0x00000007, r6, r10
	trfsr 0
	bnz9 .BB.LABEL.1_34
.BB.LABEL.1_33:	; bb287
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fi_1ms_inv1_wrctrl.c", 0
	negf.s r10, r10
	cmpf.s 0x00000004, r6, r10
	trfsr 0
	cmov 0x0000000A, r6, r10, r10
.BB.LABEL.1_34:	; bb303
	movhi HIGHW1(#_f4_iq_inv1_wrctrl), r0, r6
	st.w r10, LOWW(#_f4_iq_inv1_wrctrl)[r6]
	br9 .BB.LABEL.1_36
.BB.LABEL.1_35:	; if_else_bb306
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fi_1ms_inv1_wrctrl.c", 228
	movhi HIGHW1(#_f4_tq_inv1_wrctrlp), r0, r6
	st.w r0, LOWW(#_f4_tq_inv1_wrctrlp)[r6]
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fi_1ms_inv1_wrctrl.c", 229
	movhi HIGHW1(#_f4_tq_inv1_wrctrli), r0, r6
	st.w r0, LOWW(#_f4_tq_inv1_wrctrli)[r6]
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fi_1ms_inv1_wrctrl.c", 230
	movhi HIGHW1(#_f4_tq_inv1_wrctrl), r0, r6
	st.w r0, LOWW(#_f4_tq_inv1_wrctrl)[r6]
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fi_1ms_inv1_wrctrl.c", 232
	movhi HIGHW1(#_f4_iq_inv1_wrctrlp), r0, r6
	st.w r0, LOWW(#_f4_iq_inv1_wrctrlp)[r6]
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fi_1ms_inv1_wrctrl.c", 233
	movhi HIGHW1(#_f4_iq_inv1_wrctrli), r0, r6
	st.w r0, LOWW(#_f4_iq_inv1_wrctrli)[r6]
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fi_1ms_inv1_wrctrl.c", 234
	movhi HIGHW1(#_f4_iq_inv1_wrctrl), r0, r6
	st.w r0, LOWW(#_f4_iq_inv1_wrctrl)[r6]
.BB.LABEL.1_36:	; if_break_bb309
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fi_1ms_inv1_wrctrl.c", 242
	cmp 0x00000001, r2
	bnz17 .BB.LABEL.1_54
.BB.LABEL.1_37:	; bb314
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fi_1ms_inv1_wrctrl.c", 0
	movhi HIGHW1(#_u1_flag_enable_inv1_wrlimitctrl), r0, r2
	ld.bu LOWW(#_u1_flag_enable_inv1_wrlimitctrl)[r2], r2
	cmp 0x00000001, r2
	bnz17 .BB.LABEL.1_54
.BB.LABEL.1_38:	; bb314
	cmp 0x00000000, r5
	bnz17 .BB.LABEL.1_54
.BB.LABEL.1_39:	; if_then_bb339
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fi_1ms_inv1_wrctrl.c", 247
	movhi HIGHW1(#_f4_wr_inv1_pll_lpf), r0, r2
	ld.w LOWW(#_f4_wr_inv1_pll_lpf)[r2], r2
	mov 0x00000000, r5
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fi_1ms_inv1_wrctrl.c", 248
	cmpf.s 0x00000004, r2, r5
	trfsr 0
	bnz9 .BB.LABEL.1_41
.BB.LABEL.1_40:	; if_then_bb345
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fi_1ms_inv1_wrctrl.c", 0
	negf.s r2, r2
.BB.LABEL.1_41:	; if_break_bb349
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fi_1ms_inv1_wrctrl.c", 252
	cmpf.s 0x00000004, r9, r5
	trfsr 0
	bnz9 .BB.LABEL.1_43
.BB.LABEL.1_42:	; if_then_bb355
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fi_1ms_inv1_wrctrl.c", 0
	negf.s r9, r9
.BB.LABEL.1_43:	; if_break_bb359
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fi_1ms_inv1_wrctrl.c", 255
	subf.s r2, r9, r2
	movhi HIGHW1(#_f4_wr_inv1_limitctrlerr), r0, r5
	st.w r2, LOWW(#_f4_wr_inv1_limitctrlerr)[r5]
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fi_1ms_inv1_wrctrl.c", 260
	movhi HIGHW1(#_u1_flag_mode_inv1_idqcom), r0, r5
	ld.bu LOWW(#_u1_flag_mode_inv1_idqcom)[r5], r5
	cmp 0x00000000, r5
	bnz9 .BB.LABEL.1_49
.BB.LABEL.1_44:	; if_then_bb368
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fi_1ms_inv1_wrctrl.c", 264
	movhi HIGHW1(#_f4_kp_inv1_wrlimitctrl), r0, r5
	ld.w LOWW(#_f4_kp_inv1_wrlimitctrl)[r5], r5
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fi_1ms_inv1_wrctrl.c", 262
	movhi HIGHW1(#_f4_pf_inv1), r0, r7
	movhi HIGHW1(#_f4_idq_inv1_max), r0, r8
	ld.w LOWW(#_f4_pf_inv1)[r7], r7
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fi_1ms_inv1_wrctrl.c", 264
	movhi HIGHW1(#_f4_tq_inv1_wrlimitctrlp), r0, r9
	mulf.s r2, r5, r5
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fi_1ms_inv1_wrctrl.c", 262
	ld.w LOWW(#_f4_idq_inv1_max)[r8], r8
	movhi HIGHW1(#_f4_fm_inv1), r0, r6
	ld.w LOWW(#_f4_fm_inv1)[r6], r6
	mulf.s r7, r8, r7
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fi_1ms_inv1_wrctrl.c", 264
	st.w r5, LOWW(#_f4_tq_inv1_wrlimitctrlp)[r9]
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fi_1ms_inv1_wrctrl.c", 266
	movhi HIGHW1(#_f4_ki_inv1_wrlimitctrl), r0, r9
	ld.w LOWW(#_f4_ki_inv1_wrlimitctrl)[r9], r9
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fi_1ms_inv1_wrctrl.c", 262
	mulf.s r6, r7, r6
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fi_1ms_inv1_wrctrl.c", 266
	movhi HIGHW1(#_f4_tq_inv1_wrlimitctrli), r0, r7
	ld.w LOWW(#_f4_tq_inv1_wrlimitctrli)[r7], r7
	mulf.s r2, r9, r2
	addf.s r2, r7, r2
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fi_1ms_inv1_wrctrl.c", 267
	cmpf.s 0x00000007, r2, r6
	trfsr 0
	cmov 0x0000000A, r6, r2, r2
	bnz9 .BB.LABEL.1_46
.BB.LABEL.1_45:	; bb388
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fi_1ms_inv1_wrctrl.c", 0
	movhi 0x00008000, r0, r7
	cmpf.s 0x00000004, r2, r7
	cmovf.s 0, r7, r2, r2
.BB.LABEL.1_46:	; bb400
	movhi HIGHW1(#_f4_tq_inv1_wrlimitctrli), r0, r7
	st.w r2, LOWW(#_f4_tq_inv1_wrlimitctrli)[r7]
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fi_1ms_inv1_wrctrl.c", 269
	addf.s r2, r5, r2
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fi_1ms_inv1_wrctrl.c", 270
	cmpf.s 0x00000007, r2, r6
	trfsr 0
	bnz9 .BB.LABEL.1_48
.BB.LABEL.1_47:	; bb412
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fi_1ms_inv1_wrctrl.c", 0
	movhi 0x00008000, r0, r6
	cmpf.s 0x00000004, r2, r6
	cmovf.s 0, r6, r2, r6
.BB.LABEL.1_48:	; bb424
	movhi HIGHW1(#_f4_tq_inv1_wrlimitctrl), r0, r2
	st.w r6, LOWW(#_f4_tq_inv1_wrlimitctrl)[r2]
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fi_1ms_inv1_wrctrl.c", 272
	movhi HIGHW1(#_f4_dpf_inv1), r0, r2
	ld.w LOWW(#_f4_dpf_inv1)[r2], r2
	movhi HIGHW1(#_f4_dfm_inv1), r0, r5
	ld.w LOWW(#_f4_dfm_inv1)[r5], r5
	movhi HIGHW1(#_f4_iq_inv1_wrlimitctrl), r0, r7
	mulf.s r2, r6, r2
	mulf.s r5, r2, r2
	st.w r2, LOWW(#_f4_iq_inv1_wrlimitctrl)[r7]
	jmp [r31]
.BB.LABEL.1_49:	; if_else_bb432
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fi_1ms_inv1_wrctrl.c", 277
	movhi HIGHW1(#_f4_kp_inv1_wrlimitctrl), r0, r5
	ld.w LOWW(#_f4_kp_inv1_wrlimitctrl)[r5], r5
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fi_1ms_inv1_wrctrl.c", 279
	movhi HIGHW1(#_f4_ki_inv1_wrlimitctrl), r0, r7
	ld.w LOWW(#_f4_ki_inv1_wrlimitctrl)[r7], r7
	movhi HIGHW1(#_f4_tq_inv1_wrlimitctrli), r0, r8
	ld.w LOWW(#_f4_tq_inv1_wrlimitctrli)[r8], r8
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fi_1ms_inv1_wrctrl.c", 277
	mulf.s r2, r5, r5
	movhi HIGHW1(#_f4_tq_inv1_wrlimitctrlp), r0, r6
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fi_1ms_inv1_wrctrl.c", 279
	mulf.s r2, r7, r2
	addf.s r2, r8, r2
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fi_1ms_inv1_wrctrl.c", 277
	st.w r5, LOWW(#_f4_tq_inv1_wrlimitctrlp)[r6]
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fi_1ms_inv1_wrctrl.c", 280
	movhi HIGHW1(#_f4_tq_inv1_ref_max_tmp), r0, r6
	ld.w LOWW(#_f4_tq_inv1_ref_max_tmp)[r6], r6
	cmpf.s 0x00000007, r2, r6
	trfsr 0
	cmov 0x0000000A, r6, r2, r2
	bnz9 .BB.LABEL.1_51
.BB.LABEL.1_50:	; bb447
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fi_1ms_inv1_wrctrl.c", 0
	movhi 0x00008000, r0, r7
	cmpf.s 0x00000004, r2, r7
	cmovf.s 0, r7, r2, r2
.BB.LABEL.1_51:	; bb459
	movhi HIGHW1(#_f4_tq_inv1_wrlimitctrli), r0, r7
	st.w r2, LOWW(#_f4_tq_inv1_wrlimitctrli)[r7]
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fi_1ms_inv1_wrctrl.c", 282
	addf.s r2, r5, r2
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fi_1ms_inv1_wrctrl.c", 283
	cmpf.s 0x00000007, r2, r6
	trfsr 0
	bnz9 .BB.LABEL.1_53
.BB.LABEL.1_52:	; bb471
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fi_1ms_inv1_wrctrl.c", 0
	movhi 0x00008000, r0, r6
	cmpf.s 0x00000004, r2, r6
	cmovf.s 0, r6, r2, r6
.BB.LABEL.1_53:	; bb483
	movhi HIGHW1(#_f4_tq_inv1_wrlimitctrl), r0, r2
	st.w r6, LOWW(#_f4_tq_inv1_wrlimitctrl)[r2]
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fi_1ms_inv1_wrctrl.c", 297
	jmp [r31]
.BB.LABEL.1_54:	; if_else_bb487
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fi_1ms_inv1_wrctrl.c", 290
	movhi HIGHW1(#_f4_tq_inv1_wrlimitctrlp), r0, r2
	st.w r0, LOWW(#_f4_tq_inv1_wrlimitctrlp)[r2]
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fi_1ms_inv1_wrctrl.c", 291
	movhi HIGHW1(#_f4_tq_inv1_ref_max_tmp), r0, r2
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fi_1ms_inv1_wrctrl.c", 294
	movhi HIGHW1(#_f4_idq_inv1_max), r0, r7
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fi_1ms_inv1_wrctrl.c", 291
	ld.w LOWW(#_f4_tq_inv1_ref_max_tmp)[r2], r2
	movhi HIGHW1(#_f4_tq_inv1_wrlimitctrli), r0, r5
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fi_1ms_inv1_wrctrl.c", 294
	ld.w LOWW(#_f4_idq_inv1_max)[r7], r7
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fi_1ms_inv1_wrctrl.c", 292
	movhi HIGHW1(#_f4_tq_inv1_wrlimitctrl), r0, r6
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fi_1ms_inv1_wrctrl.c", 294
	movhi HIGHW1(#_f4_iq_inv1_wrlimitctrl), r0, r8
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fi_1ms_inv1_wrctrl.c", 291
	st.w r2, LOWW(#_f4_tq_inv1_wrlimitctrli)[r5]
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fi_1ms_inv1_wrctrl.c", 292
	st.w r2, LOWW(#_f4_tq_inv1_wrlimitctrl)[r6]
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fi_1ms_inv1_wrctrl.c", 294
	st.w r7, LOWW(#_f4_iq_inv1_wrlimitctrl)[r8]
	jmp [r31]
_fb_1ms_inv1_wrctrl_init:
	.stack _fb_1ms_inv1_wrctrl_init = 0
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fi_1ms_inv1_wrctrl.c", 313
	movhi HIGHW1(#_u1_flag_enable_inv1_wrctrl), r0, r2
	st.b r0, LOWW(#_u1_flag_enable_inv1_wrctrl)[r2]
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fi_1ms_inv1_wrctrl.c", 319
	movhi HIGHW1(#_u1_flag_enable_inv1_wrlimitctrl), r0, r2
	st.b r0, LOWW(#_u1_flag_enable_inv1_wrlimitctrl)[r2]
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fi_1ms_inv1_wrctrl.c", 325
	movhi HIGHW1(#_f4_speed_inv1_ref), r0, r2
	movhi 0x0000447A, r0, r5
	st.w r5, LOWW(#_f4_speed_inv1_ref)[r2]
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fi_1ms_inv1_wrctrl.c", 327
	movhi HIGHW1(#_f4_wr_inv1_ref), r0, r2
	st.w r0, LOWW(#_f4_wr_inv1_ref)[r2]
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fi_1ms_inv1_wrctrl.c", 328
	movhi HIGHW1(#_f4_dwr_inv1_ref_up), r0, r2
	mov 0x3DAB92A6, r5
	st.w r5, LOWW(#_f4_dwr_inv1_ref_up)[r2]
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fi_1ms_inv1_wrctrl.c", 330
	movhi HIGHW1(#_u1_flag_wr_inv1_ref_check), r0, r2
	st.b r0, LOWW(#_u1_flag_wr_inv1_ref_check)[r2]
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fi_1ms_inv1_wrctrl.c", 336
	movhi HIGHW1(#_f4_kp_inv1_wrctrl), r0, r2
	mov 0x3D4CCCCD, r5
	st.w r5, LOWW(#_f4_kp_inv1_wrctrl)[r2]
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fi_1ms_inv1_wrctrl.c", 337
	movhi HIGHW1(#_f4_ki_inv1_wrctrl), r0, r2
	mov 0x3851B717, r5
	st.w r5, LOWW(#_f4_ki_inv1_wrctrl)[r2]
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fi_1ms_inv1_wrctrl.c", 339
	movhi HIGHW1(#_f4_wr_inv1_ctrlerr), r0, r2
	st.w r0, LOWW(#_f4_wr_inv1_ctrlerr)[r2]
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fi_1ms_inv1_wrctrl.c", 341
	movhi HIGHW1(#_f4_tq_inv1_wrctrlp), r0, r2
	st.w r0, LOWW(#_f4_tq_inv1_wrctrlp)[r2]
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fi_1ms_inv1_wrctrl.c", 342
	movhi HIGHW1(#_f4_tq_inv1_wrctrli), r0, r2
	st.w r0, LOWW(#_f4_tq_inv1_wrctrli)[r2]
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fi_1ms_inv1_wrctrl.c", 343
	movhi HIGHW1(#_f4_tq_inv1_wrctrl), r0, r2
	st.w r0, LOWW(#_f4_tq_inv1_wrctrl)[r2]
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fi_1ms_inv1_wrctrl.c", 345
	movhi HIGHW1(#_f4_iq_inv1_wrctrlp), r0, r2
	st.w r0, LOWW(#_f4_iq_inv1_wrctrlp)[r2]
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fi_1ms_inv1_wrctrl.c", 346
	movhi HIGHW1(#_f4_iq_inv1_wrctrli), r0, r2
	st.w r0, LOWW(#_f4_iq_inv1_wrctrli)[r2]
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fi_1ms_inv1_wrctrl.c", 347
	movhi HIGHW1(#_f4_iq_inv1_wrctrl), r0, r2
	st.w r0, LOWW(#_f4_iq_inv1_wrctrl)[r2]
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fi_1ms_inv1_wrctrl.c", 353
	movhi HIGHW1(#_f4_kp_inv1_wrlimitctrl), r0, r2
	movhi 0x00003F80, r0, r5
	st.w r5, LOWW(#_f4_kp_inv1_wrlimitctrl)[r2]
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fi_1ms_inv1_wrctrl.c", 354
	movhi HIGHW1(#_f4_ki_inv1_wrlimitctrl), r0, r2
	mov 0x3BA3D70A, r5
	st.w r5, LOWW(#_f4_ki_inv1_wrlimitctrl)[r2]
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fi_1ms_inv1_wrctrl.c", 356
	movhi HIGHW1(#_f4_wr_inv1_limitctrlerr), r0, r2
	st.w r0, LOWW(#_f4_wr_inv1_limitctrlerr)[r2]
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fi_1ms_inv1_wrctrl.c", 358
	movhi HIGHW1(#_f4_tq_inv1_wrlimitctrlp), r0, r2
	st.w r0, LOWW(#_f4_tq_inv1_wrlimitctrlp)[r2]
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fi_1ms_inv1_wrctrl.c", 359
	movhi HIGHW1(#_f4_tq_inv1_wrlimitctrli), r0, r2
	st.w r0, LOWW(#_f4_tq_inv1_wrlimitctrli)[r2]
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fi_1ms_inv1_wrctrl.c", 360
	movhi HIGHW1(#_f4_tq_inv1_wrlimitctrl), r0, r2
	st.w r0, LOWW(#_f4_tq_inv1_wrlimitctrl)[r2]
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fi_1ms_inv1_wrctrl.c", 361
	movhi HIGHW1(#_f4_iq_inv1_wrlimitctrl), r0, r2
	st.w r0, LOWW(#_f4_iq_inv1_wrlimitctrl)[r2]
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fi_1ms_inv1_wrctrl.c", 363
	movhi HIGHW1(#_f4_idq_inv1_max), r0, r2
	mov 0x43C72E14, r5
	st.w r5, LOWW(#_f4_idq_inv1_max)[r2]
	jmp [r31]
	.section .bss, bss
_u1_flag_enable_inv1_wrctrl:
	.ds (1)
_u1_flag_enable_inv1_wrlimitctrl:
	.ds (1)
	.align 4
_f4_wr_inv1_ref:
	.ds (4)
	.align 4
_f4_dwr_inv1_ref_up:
	.ds (4)
_u1_flag_wr_inv1_ref_check:
	.ds (1)
	.align 4
_f4_kp_inv1_wrctrl:
	.ds (4)
	.align 4
_f4_ki_inv1_wrctrl:
	.ds (4)
	.align 4
_f4_wr_inv1_ctrlerr:
	.ds (4)
	.align 4
_f4_tq_inv1_wrctrlp:
	.ds (4)
	.align 4
_f4_tq_inv1_wrctrli:
	.ds (4)
	.align 4
_f4_tq_inv1_wrctrl:
	.ds (4)
	.align 4
_f4_iq_inv1_wrctrlp:
	.ds (4)
	.align 4
_f4_iq_inv1_wrctrli:
	.ds (4)
	.align 4
_f4_iq_inv1_wrctrl:
	.ds (4)
	.align 4
_f4_kp_inv1_wrlimitctrl:
	.ds (4)
	.align 4
_f4_ki_inv1_wrlimitctrl:
	.ds (4)
	.align 4
_f4_wr_inv1_limitctrlerr:
	.ds (4)
	.align 4
_f4_tq_inv1_wrlimitctrlp:
	.ds (4)
	.align 4
_f4_tq_inv1_wrlimitctrli:
	.ds (4)
	.align 4
_f4_tq_inv1_wrlimitctrl:
	.ds (4)
	.align 4
_f4_iq_inv1_wrlimitctrl:
	.ds (4)
	.align 4
_f4_idq_inv1_max:
	.ds (4)
