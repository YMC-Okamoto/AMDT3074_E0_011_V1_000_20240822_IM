#CC-RH Compiler RH850 Assembler Source
#@	CC-RH Version : V1.03.00 [21 Aug 2015]
#@	Command : src\fi_pwm_inv0_svctrl.c -Xobj_path=DefaultBuild -Xcommon=rh850 -Xcpu=g3m -c -g -Ospeed -Oinline_size -Isrc -I..\Common -D__CLK_HSB=80,__CLK_LSB=40,__CLKC_HSB=80,__CLK_CLSB=40 -Xasm_path=DefaultBuild
#@	compiled at Mon May 01 22:15:09 2017

	.file "src\fi_pwm_inv0_svctrl.c"

	$reg_mode 32

	.extern _u4_fc_inv0_lsb_0
	.extern _f4_ts_inv0_ctrl
	.extern _s4_adtrig_inv0_delay_ns
	.extern _f4_dvdc_inv0_ad
	.extern _f4_wt_inv0_dq
	.extern _f4_wr_inv0_pll_lpf
	.extern _f4_vuctrl_inv0_err
	.extern _f4_vvctrl_inv0_err
	.extern _f4_vwctrl_inv0_err
	.extern _f4_vd_inv0_ref
	.extern _f4_vq_inv0_ref
	.extern _f4_k_inv0_modu
	.extern _u1_flag_inv0_adj
	.public _f4_wt_inv0_delay, 4
	.public _f4_wt_inv0_svctrl, 4
	.public _f4_sin_inv0_wtsvctrl, 4
	.public _f4_cos_inv0_wtsvctrl, 4
	.public _f4_vu_inv0_svctrl, 4
	.public _f4_vv_inv0_svctrl, 4
	.public _f4_vw_inv0_svctrl, 4
	.public _f4_mu_inv0_svctrl, 4
	.public _f4_mv_inv0_svctrl, 4
	.public _f4_mw_inv0_svctrl, 4
	.public _f4_m_inv0_max, 4
	.public _fi_pwm_inv0_svctrl
	.extern _sinf
	.extern _cosf
	.extern _dpinv0_set_addelay
	.extern _dpinv0_setuvwf_f_V3
	.public _fb_pwm_inv0_svctrl_init

	.section .text, text
_fi_pwm_inv0_svctrl:
	.stack _fi_pwm_inv0_svctrl = 8
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_svctrl.c", 74
	prepare 0x00000041, 0x00000000
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_svctrl.c", 91
	movhi HIGHW1(#_u1_flag_inv0_adj), r0, r2
	ld.bu LOWW(#_u1_flag_inv0_adj)[r2], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.1_2
.BB.LABEL.1_1:	; if_else_bb
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_svctrl.c", 97
	add 0xFFFFFFF9, r2
	andi 0x000000FF, r2, r2
	cmp 0x00000002, r2
	mov 0x00000000, r2
	bnc9 .BB.LABEL.1_3
.BB.LABEL.1_2:	; if_else_bb33
	movhi HIGHW1(#_f4_wr_inv0_pll_lpf), r0, r2
	ld.w LOWW(#_f4_wr_inv0_pll_lpf)[r2], r2
	movhi 0x00003FC0, r0, r5
	movhi HIGHW1(#_f4_ts_inv0_ctrl), r0, r6
	ld.w LOWW(#_f4_ts_inv0_ctrl)[r6], r6
	mulf.s r5, r2, r2
	mulf.s r6, r2, r2
.BB.LABEL.1_3:	; if_break_bb38
	movhi HIGHW1(#_f4_wt_inv0_delay), r0, r5
	st.w r2, LOWW(#_f4_wt_inv0_delay)[r5]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_svctrl.c", 108
	movhi HIGHW1(#_f4_wt_inv0_dq), r0, r5
	ld.w LOWW(#_f4_wt_inv0_dq)[r5], r5
	movhi HIGHW1(#_f4_wt_inv0_svctrl), r0, r7
	mov 0x40C90FDB, r8
	addf.s r2, r5, r6
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_svctrl.c", 109
	cmpf.s 0x00000007, r6, r8
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_svctrl.c", 108
	st.w r6, LOWW(#_f4_wt_inv0_svctrl)[r7]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_svctrl.c", 109
	trfsr 0
	bz9 .BB.LABEL.1_5
.BB.LABEL.1_4:	; if_then_bb46
	mov 0xC0C90FDB, r8
	br9 .BB.LABEL.1_6
.BB.LABEL.1_5:	; if_else_bb49
	mov 0x00000000, r2
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_svctrl.c", 110
	cmpf.s 0x00000004, r6, r2
	trfsr 0
	bnz9 .BB.LABEL.1_8
.BB.LABEL.1_6:	; if_then_bb54
	addf.s r8, r6, r6
.BB.LABEL.1_7:	; if_break_bb59.PartialDrain
	movhi HIGHW1(#_f4_wt_inv0_svctrl), r0, r2
	st.w r6, LOWW(#_f4_wt_inv0_svctrl)[r2]
.BB.LABEL.1_8:	; if_break_bb59
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_svctrl.c", 113
	jarl _sinf, r31
	movhi HIGHW1(#_f4_sin_inv0_wtsvctrl), r0, r20
	st.w r10, LOWW(#_f4_sin_inv0_wtsvctrl)[r20]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_svctrl.c", 114
	movhi HIGHW1(#_f4_wt_inv0_svctrl), r0, r2
	ld.w LOWW(#_f4_wt_inv0_svctrl)[r2], r6
	jarl _cosf, r31
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_svctrl.c", 117
	ld.w LOWW(#_f4_sin_inv0_wtsvctrl)[r20], r2
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_svctrl.c", 114
	movhi HIGHW1(#_f4_cos_inv0_wtsvctrl), r0, r5
	st.w r10, LOWW(#_f4_cos_inv0_wtsvctrl)[r5]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_svctrl.c", 117
	movhi HIGHW1(#_f4_vq_inv0_ref), r0, r5
	ld.w LOWW(#_f4_vq_inv0_ref)[r5], r5
	movhi HIGHW1(#_f4_vd_inv0_ref), r0, r6
	ld.w LOWW(#_f4_vd_inv0_ref)[r6], r6
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_svctrl.c", 122
	movhi HIGHW1(#_f4_vuctrl_inv0_err), r0, r8
	ld.w LOWW(#_f4_vuctrl_inv0_err)[r8], r8
	movhi HIGHW1(#_f4_vu_inv0_svctrl), r0, r11
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_svctrl.c", 117
	mulf.s r5, r2, r9
	mulf.s r6, r10, r12
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_svctrl.c", 119
	mulf.s r6, r2, r2
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_svctrl.c", 124
	movhi HIGHW1(#_f4_vvctrl_inv0_err), r0, r6
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_svctrl.c", 119
	mulf.s r5, r10, r5
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_svctrl.c", 124
	ld.w LOWW(#_f4_vvctrl_inv0_err)[r6], r6
	mov 0x3F5105EA, r7
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_svctrl.c", 117
	subf.s r9, r12, r9
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_svctrl.c", 126
	movhi HIGHW1(#_f4_vw_inv0_svctrl), r0, r10
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_svctrl.c", 119
	addf.s r5, r2, r2
	mov 0x3F350265, r5
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_svctrl.c", 122
	mulf.s r7, r9, r7
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_svctrl.c", 124
	mulf.s r5, r2, r2
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_svctrl.c", 122
	addf.s r8, r7, r7
	mov 0xBED105F3, r8
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_svctrl.c", 124
	mulf.s r8, r9, r8
	movhi HIGHW1(#_f4_vv_inv0_svctrl), r0, r9
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_svctrl.c", 122
	st.w r7, LOWW(#_f4_vu_inv0_svctrl)[r11]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_svctrl.c", 124
	addf.s r2, r8, r5
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_svctrl.c", 126
	subf.s r2, r8, r2
	movhi HIGHW1(#_f4_vwctrl_inv0_err), r0, r8
	ld.w LOWW(#_f4_vwctrl_inv0_err)[r8], r8
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_svctrl.c", 124
	addf.s r6, r5, r5
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_svctrl.c", 144
	movhi HIGHW1(#_f4_dvdc_inv0_ad), r0, r6
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_svctrl.c", 126
	addf.s r8, r2, r2
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_svctrl.c", 144
	ld.w LOWW(#_f4_dvdc_inv0_ad)[r6], r6
	mulf.s r6, r7, r7
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_svctrl.c", 124
	st.w r5, LOWW(#_f4_vv_inv0_svctrl)[r9]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_svctrl.c", 146
	mulf.s r6, r5, r5
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_svctrl.c", 126
	st.w r2, LOWW(#_f4_vw_inv0_svctrl)[r10]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_svctrl.c", 148
	mulf.s r6, r2, r2
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_svctrl.c", 144
	addf.s r7, r7, r7
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_svctrl.c", 146
	addf.s r5, r5, r5
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_svctrl.c", 148
	addf.s r2, r2, r2
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_svctrl.c", 151
	cmpf.s 0x00000007, r7, r5
	mov r7, r6
	mov r5, r8
	trfsr 0
	bnz9 .BB.LABEL.1_10
.BB.LABEL.1_9:	; if_else_bb116
	mov r5, r6
	mov r7, r8
.BB.LABEL.1_10:	; if_break_bb119
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_svctrl.c", 162
	cmpf.s 0x00000007, r2, r6
	trfsr 0
	cmov 0x0000000A, r2, r6, r6
	bnz9 .BB.LABEL.1_13
.BB.LABEL.1_11:	; if_else_bb127
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_svctrl.c", 166
	cmpf.s 0x00000004, r2, r8
	trfsr 0
	bnz9 .BB.LABEL.1_13
.BB.LABEL.1_12:	; if_then_bb133
	mov r2, r8
.BB.LABEL.1_13:	; if_break_bb137
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_svctrl.c", 172
	addf.s r8, r6, r6
	movhi 0x00003F00, r0, r8
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_svctrl.c", 175
	movhi HIGHW1(#_f4_m_inv0_max), r0, r9
	ld.w LOWW(#_f4_m_inv0_max)[r9], r9
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_svctrl.c", 172
	mulf.s r8, r6, r6
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_svctrl.c", 174
	movhi HIGHW1(#_f4_k_inv0_modu), r0, r8
	ld.w LOWW(#_f4_k_inv0_modu)[r8], r8
	subf.s r6, r7, r7
	mulf.s r8, r7, r7
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_svctrl.c", 175
	cmpf.s 0x00000007, r7, r9
	trfsr 0
	cmov 0x0000000A, r9, r7, r7
	bnz9 .BB.LABEL.1_16
.BB.LABEL.1_14:	; bb153
	negf.s r9, r10
	cmpf.s 0x00000004, r7, r10
	trfsr 0
	bnz9 .BB.LABEL.1_16
.BB.LABEL.1_15:	; bb159
	mov r10, r7
.BB.LABEL.1_16:	; bb169
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_svctrl.c", 177
	subf.s r6, r5, r5
	movhi HIGHW1(#_f4_mu_inv0_svctrl), r0, r10
	st.w r7, LOWW(#_f4_mu_inv0_svctrl)[r10]
	mulf.s r8, r5, r5
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_svctrl.c", 178
	cmpf.s 0x00000007, r5, r9
	trfsr 0
	cmov 0x0000000A, r9, r5, r5
	bnz9 .BB.LABEL.1_19
.BB.LABEL.1_17:	; bb183
	negf.s r9, r7
	cmpf.s 0x00000004, r5, r7
	trfsr 0
	bnz9 .BB.LABEL.1_19
.BB.LABEL.1_18:	; bb189
	mov r7, r5
.BB.LABEL.1_19:	; bb199
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_svctrl.c", 180
	subf.s r6, r2, r2
	movhi HIGHW1(#_f4_mv_inv0_svctrl), r0, r7
	st.w r5, LOWW(#_f4_mv_inv0_svctrl)[r7]
	mulf.s r8, r2, r2
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_svctrl.c", 181
	cmpf.s 0x00000007, r2, r9
	trfsr 0
	bnz9 .BB.LABEL.1_21
.BB.LABEL.1_20:	; bb213
	negf.s r9, r9
	cmpf.s 0x00000004, r2, r9
	trfsr 0
	cmov 0x0000000A, r2, r9, r9
.BB.LABEL.1_21:	; bb229
	movhi HIGHW1(#_f4_mw_inv0_svctrl), r0, r20
	st.w r9, LOWW(#_f4_mw_inv0_svctrl)[r20]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_svctrl.c", 189
	movhi HIGHW1(#_s4_adtrig_inv0_delay_ns), r0, r2
	ld.w LOWW(#_s4_adtrig_inv0_delay_ns)[r2], r6
	jarl _dpinv0_set_addelay, r31
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_svctrl.c", 191
	ld.w LOWW(#_f4_mw_inv0_svctrl)[r20], r8
	movhi HIGHW1(#_u4_fc_inv0_lsb_0), r0, r2
	ld.w LOWW(#_u4_fc_inv0_lsb_0)[r2], r2
	movhi HIGHW1(#_f4_mv_inv0_svctrl), r0, r5
	ld.w LOWW(#_f4_mv_inv0_svctrl)[r5], r7
	movhi HIGHW1(#_f4_mu_inv0_svctrl), r0, r5
	ld.w LOWW(#_f4_mu_inv0_svctrl)[r5], r6
	dispose 0x00000000, 0x00000041
	cvtf.uws r2, r9
	jr _dpinv0_setuvwf_f_V3
_fb_pwm_inv0_svctrl_init:
	.stack _fb_pwm_inv0_svctrl_init = 0
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_svctrl.c", 212
	movhi HIGHW1(#_f4_wt_inv0_delay), r0, r2
	st.w r0, LOWW(#_f4_wt_inv0_delay)[r2]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_svctrl.c", 213
	movhi HIGHW1(#_f4_wt_inv0_svctrl), r0, r2
	st.w r0, LOWW(#_f4_wt_inv0_svctrl)[r2]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_svctrl.c", 215
	movhi HIGHW1(#_f4_sin_inv0_wtsvctrl), r0, r2
	st.w r0, LOWW(#_f4_sin_inv0_wtsvctrl)[r2]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_svctrl.c", 216
	movhi HIGHW1(#_f4_cos_inv0_wtsvctrl), r0, r2
	st.w r0, LOWW(#_f4_cos_inv0_wtsvctrl)[r2]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_svctrl.c", 218
	movhi HIGHW1(#_f4_vu_inv0_svctrl), r0, r2
	st.w r0, LOWW(#_f4_vu_inv0_svctrl)[r2]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_svctrl.c", 219
	movhi HIGHW1(#_f4_vv_inv0_svctrl), r0, r2
	st.w r0, LOWW(#_f4_vv_inv0_svctrl)[r2]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_svctrl.c", 220
	movhi HIGHW1(#_f4_vw_inv0_svctrl), r0, r2
	st.w r0, LOWW(#_f4_vw_inv0_svctrl)[r2]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_svctrl.c", 226
	movhi HIGHW1(#_f4_mu_inv0_svctrl), r0, r2
	st.w r0, LOWW(#_f4_mu_inv0_svctrl)[r2]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_svctrl.c", 227
	movhi HIGHW1(#_f4_mv_inv0_svctrl), r0, r2
	st.w r0, LOWW(#_f4_mv_inv0_svctrl)[r2]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_svctrl.c", 228
	movhi HIGHW1(#_f4_mw_inv0_svctrl), r0, r2
	st.w r0, LOWW(#_f4_mw_inv0_svctrl)[r2]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_svctrl.c", 230
	movhi HIGHW1(#_f4_m_inv0_max), r0, r2
	mov 0x3F8CCCCD, r5
	st.w r5, LOWW(#_f4_m_inv0_max)[r2]
	jmp [r31]
	.section .bss, bss
	.align 4
_f4_wt_inv0_delay:
	.ds (4)
	.align 4
_f4_wt_inv0_svctrl:
	.ds (4)
	.align 4
_f4_sin_inv0_wtsvctrl:
	.ds (4)
	.align 4
_f4_cos_inv0_wtsvctrl:
	.ds (4)
	.align 4
_f4_vu_inv0_svctrl:
	.ds (4)
	.align 4
_f4_vv_inv0_svctrl:
	.ds (4)
	.align 4
_f4_vw_inv0_svctrl:
	.ds (4)
	.align 4
_f4_mu_inv0_svctrl:
	.ds (4)
	.align 4
_f4_mv_inv0_svctrl:
	.ds (4)
	.align 4
_f4_mw_inv0_svctrl:
	.ds (4)
	.align 4
_f4_m_inv0_max:
	.ds (4)
