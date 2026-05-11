#CC-RH Compiler RH850 Assembler Source
#@	CC-RH Version : V1.03.00 [21 Aug 2015]
#@	Command : src\fi_pwm_inv0_1pulse.c -Xobj_path=DefaultBuild -Xcommon=rh850 -Xcpu=g3m -c -g -Ospeed -Oinline_size -Isrc -I..\Common -D__CLK_HSB=80,__CLK_LSB=40,__CLKC_HSB=80,__CLK_CLSB=40 -Xasm_path=DefaultBuild
#@	compiled at Mon May 01 22:14:51 2017

	.file "src\fi_pwm_inv0_1pulse.c"

	$reg_mode 32

	.extern _u4_fc_inv0_lsb_0
	.extern _f4_ts_inv0_ctrl
	.extern _s4_adtrig_inv0_delay_ns
	.extern _f4_wt_inv0_dq
	.extern _f4_wr_inv0_pll_lpf
	.extern _f4_vd_inv0_ref
	.extern _f4_vq_inv0_ref
	.extern _u1_flag_inv0_modetiming
	.extern _f4_m_inv0_max
	.public _u1_flag_1pulse_inv0_mode, 1
	.public _s4_wt_inv0_dq_2pi_2_31, 4
	.public _s4_wt_inv0_delay_2pi_2_31, 4
	.public _f4_wt_inv0_vdq, 4
	.public _s4_wt_inv0_vdq_2pi_2_31, 4
	.public _s4_wt_inv0_1pulse_pwm_2pi_2_31, 4
	.public _f4_mu_inv0_1pulse, 4
	.public _f4_mv_inv0_1pulse, 4
	.public _f4_mw_inv0_1pulse, 4
	.public _fi_pwm_inv0_1pulse
	.extern _atan2f
	.extern _dpinv0_set_addelay
	.extern _dpinv0_setuvwf_f_V3
	.public _fb_pwm_inv0_1pulse_init

	.section .text, text
_fi_pwm_inv0_1pulse:
	.stack _fi_pwm_inv0_1pulse = 12
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_1pulse.c", 69
	prepare 0x00000061, 0x00000000
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_1pulse.c", 82
	movhi HIGHW1(#_f4_wr_inv0_pll_lpf), r0, r2
	ld.w LOWW(#_f4_wr_inv0_pll_lpf)[r2], r2
	movhi 0x00003FC0, r0, r5
	movhi HIGHW1(#_f4_ts_inv0_ctrl), r0, r6
	ld.w LOWW(#_f4_ts_inv0_ctrl)[r6], r6
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_1pulse.c", 84
	movhi HIGHW1(#_s4_wt_inv0_delay_2pi_2_31), r0, r8
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_1pulse.c", 82
	mulf.s r5, r2, r2
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_1pulse.c", 87
	movhi HIGHW1(#_f4_vd_inv0_ref), r0, r5
	ld.w LOWW(#_f4_vd_inv0_ref)[r5], r7
	mov 0x00000000, r21
	mov 0x4DA2F983, r20
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_1pulse.c", 82
	mulf.s r6, r2, r2
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_1pulse.c", 87
	cmpf.s 0x00000003, r7, r21
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_1pulse.c", 83
	mulf.s r20, r2, r2
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_1pulse.c", 87
	trfsr 0
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_1pulse.c", 84
	trncf.sw r2, r2
	st.w r2, LOWW(#_s4_wt_inv0_delay_2pi_2_31)[r8]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_1pulse.c", 87
	bz9 .BB.LABEL.1_2
.BB.LABEL.1_1:	; bb18
	movhi HIGHW1(#_f4_vq_inv0_ref), r0, r2
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_1pulse.c", 89
	ld.w LOWW(#_f4_vq_inv0_ref)[r2], r6
	jarl _atan2f, r31
	movhi HIGHW1(#_f4_wt_inv0_vdq), r0, r2
	st.w r10, LOWW(#_f4_wt_inv0_vdq)[r2]
	mulf.s r20, r10, r2
	br9 .BB.LABEL.1_5
.BB.LABEL.1_2:	; bb18.thread
	movhi HIGHW1(#_f4_vq_inv0_ref), r0, r2
	ld.w LOWW(#_f4_vq_inv0_ref)[r2], r2
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_1pulse.c", 94
	cmpf.s 0x00000007, r2, r21
	trfsr 0
	bz9 .BB.LABEL.1_4
.BB.LABEL.1_3:	; if_then_bb29
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_1pulse.c", 96
	movhi HIGHW1(#_f4_wt_inv0_vdq), r0, r2
	mov 0x3FC90FDB, r5
	st.w r5, LOWW(#_f4_wt_inv0_vdq)[r2]
	movhi 0x00004E00, r0, r2
	br9 .BB.LABEL.1_5
.BB.LABEL.1_4:	; if_else_bb30
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_1pulse.c", 100
	movhi HIGHW1(#_f4_wt_inv0_vdq), r0, r2
	mov 0xBFC90FDB, r5
	st.w r5, LOWW(#_f4_wt_inv0_vdq)[r2]
	movhi 0x0000CE00, r0, r2
.BB.LABEL.1_5:	; if_break_bb31
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_1pulse.c", 104
	trncf.sw r2, r2
	movhi HIGHW1(#_s4_wt_inv0_vdq_2pi_2_31), r0, r5
	mov 0x40C90FDB, r6
	st.w r2, LOWW(#_s4_wt_inv0_vdq_2pi_2_31)[r5]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_1pulse.c", 108
	movhi HIGHW1(#_f4_wt_inv0_dq), r0, r5
	ld.w LOWW(#_f4_wt_inv0_dq)[r5], r5
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_1pulse.c", 109
	cmpf.s 0x00000007, r5, r6
	trfsr 0
	bz9 .BB.LABEL.1_7
.BB.LABEL.1_6:	; if_then_bb40
	mov 0xC0C90FDB, r6
	br9 .BB.LABEL.1_8
.BB.LABEL.1_7:	; if_else_bb43
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_1pulse.c", 110
	cmpf.s 0x00000004, r5, r21
	trfsr 0
	bnz9 .BB.LABEL.1_9
.BB.LABEL.1_8:	; if_then_bb48
	addf.s r6, r5, r5
.BB.LABEL.1_9:	; if_break_bb53
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_1pulse.c", 113
	mulf.s r20, r5, r5
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_1pulse.c", 114
	movhi HIGHW1(#_s4_wt_inv0_dq_2pi_2_31), r0, r6
	mov 0x7FFFFFFF, r7
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_1pulse.c", 118
	movhi HIGHW1(#_s4_wt_inv0_1pulse_pwm_2pi_2_31), r0, r8
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_1pulse.c", 125
	movhi HIGHW1(#_u1_flag_1pulse_inv0_mode), r0, r9
	ld.bu LOWW(#_u1_flag_1pulse_inv0_mode)[r9], r9
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_1pulse.c", 114
	trncf.sw r5, r5
	st.w r5, LOWW(#_s4_wt_inv0_dq_2pi_2_31)[r6]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_1pulse.c", 117
	movhi HIGHW1(#_s4_wt_inv0_delay_2pi_2_31), r0, r6
	ld.w LOWW(#_s4_wt_inv0_delay_2pi_2_31)[r6], r6
	add r2, r6
	add r5, r6
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_1pulse.c", 118
	and r7, r6
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_1pulse.c", 125
	cmp 0x00000000, r9
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_1pulse.c", 118
	st.w r6, LOWW(#_s4_wt_inv0_1pulse_pwm_2pi_2_31)[r8]
	bnz17 .BB.LABEL.1_25
.BB.LABEL.1_10:	; if_then_bb70
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_1pulse.c", 128
	movhi HIGHW1(#_u1_flag_inv0_modetiming), r0, r2
	mov 0x00000001, r5
	st.b r5, LOWW(#_u1_flag_inv0_modetiming)[r2]
	movhi 0x00004000, r0, r5
	mov 0xCAAAAAAB, r2
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_1pulse.c", 130
	add r6, r2
	cmp r5, r2
	bl9 .BB.LABEL.1_17
.BB.LABEL.1_11:	; bb81
	mov 0xF5555555, r2
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_1pulse.c", 134
	add r2, r6
	mov 0x6AAAAAAA, r2
	cmp r2, r6
	movhi HIGHW1(#_f4_m_inv0_max), r0, r2
	ld.w LOWW(#_f4_m_inv0_max)[r2], r2
	bl9 .BB.LABEL.1_14
.BB.LABEL.1_12:	; if_then_bb103
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_1pulse.c", 137
	movhi HIGHW1(#_f4_mu_inv0_1pulse), r0, r6
	st.w r2, LOWW(#_f4_mu_inv0_1pulse)[r6]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_1pulse.c", 138
	negf.s r2, r2
	movhi HIGHW1(#_f4_mv_inv0_1pulse), r0, r6
	st.w r2, LOWW(#_f4_mv_inv0_1pulse)[r6]
.BB.LABEL.1_13:	; if_then_bb103
	movhi HIGHW1(#_f4_mw_inv0_1pulse), r0, r6
	st.w r2, LOWW(#_f4_mw_inv0_1pulse)[r6]
	br9 .BB.LABEL.1_23
.BB.LABEL.1_14:	; if_else_bb109
	mov 0x15555554, r5
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_1pulse.c", 141
	cmp r5, r6
	bh9 .BB.LABEL.1_16
.BB.LABEL.1_15:	; bb120
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_1pulse.c", 144
	movhi HIGHW1(#_f4_mu_inv0_1pulse), r0, r6
	st.w r2, LOWW(#_f4_mu_inv0_1pulse)[r6]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_1pulse.c", 145
	movhi HIGHW1(#_f4_mv_inv0_1pulse), r0, r6
	st.w r2, LOWW(#_f4_mv_inv0_1pulse)[r6]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_1pulse.c", 146
	negf.s r2, r2
	br9 .BB.LABEL.1_13
.BB.LABEL.1_16:	; bb120.thread
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_1pulse.c", 150
	negf.s r2, r6
	movhi HIGHW1(#_f4_mu_inv0_1pulse), r0, r5
	st.w r6, LOWW(#_f4_mu_inv0_1pulse)[r5]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_1pulse.c", 151
	movhi HIGHW1(#_f4_mv_inv0_1pulse), r0, r5
	st.w r2, LOWW(#_f4_mv_inv0_1pulse)[r5]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_1pulse.c", 152
	movhi HIGHW1(#_f4_mw_inv0_1pulse), r0, r2
	st.w r6, LOWW(#_f4_mw_inv0_1pulse)[r2]
	br9 .BB.LABEL.1_23
.BB.LABEL.1_17:	; bb81.thread
	mov 0x15555555, r5
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_1pulse.c", 157
	cmp r5, r2
	bh9 .BB.LABEL.1_19
.BB.LABEL.1_18:	; if_then_bb154
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_1pulse.c", 160
	movhi HIGHW1(#_f4_m_inv0_max), r0, r6
	ld.w LOWW(#_f4_m_inv0_max)[r6], r6
	movhi HIGHW1(#_f4_mu_inv0_1pulse), r0, r2
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_1pulse.c", 161
	movhi HIGHW1(#_f4_mv_inv0_1pulse), r0, r5
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_1pulse.c", 162
	movhi HIGHW1(#_f4_mw_inv0_1pulse), r0, r7
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_1pulse.c", 160
	negf.s r6, r8
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_1pulse.c", 161
	st.w r6, LOWW(#_f4_mv_inv0_1pulse)[r5]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_1pulse.c", 162
	st.w r6, LOWW(#_f4_mw_inv0_1pulse)[r7]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_1pulse.c", 160
	st.w r8, LOWW(#_f4_mu_inv0_1pulse)[r2]
	br9 .BB.LABEL.1_23
.BB.LABEL.1_19:	; if_else_bb159
	mov 0xB5555555, r2
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_1pulse.c", 164
	add r2, r6
	mov 0x15555554, r2
	cmp r2, r6
	movhi HIGHW1(#_f4_m_inv0_max), r0, r2
	ld.w LOWW(#_f4_m_inv0_max)[r2], r2
	bh9 .BB.LABEL.1_21
.BB.LABEL.1_20:	; bb170
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_1pulse.c", 167
	negf.s r2, r5
	movhi HIGHW1(#_f4_mu_inv0_1pulse), r0, r6
	st.w r5, LOWW(#_f4_mu_inv0_1pulse)[r6]
	br9 .BB.LABEL.1_22
.BB.LABEL.1_21:	; bb170.thread
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_1pulse.c", 173
	movhi HIGHW1(#_f4_mu_inv0_1pulse), r0, r5
	st.w r2, LOWW(#_f4_mu_inv0_1pulse)[r5]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_1pulse.c", 174
	negf.s r2, r5
.BB.LABEL.1_22:	; bb170.thread
	movhi HIGHW1(#_f4_mv_inv0_1pulse), r0, r6
	st.w r5, LOWW(#_f4_mv_inv0_1pulse)[r6]
	movhi HIGHW1(#_f4_mw_inv0_1pulse), r0, r5
	st.w r2, LOWW(#_f4_mw_inv0_1pulse)[r5]
.BB.LABEL.1_23:	; if_break_bb190
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_1pulse.c", 186
	cmp 0x00000000, r9
	bnz9 .BB.LABEL.1_25
.BB.LABEL.1_24:	; if_then_bb196
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_1pulse.c", 189
	movhi HIGHW1(#_s4_adtrig_inv0_delay_ns), r0, r2
	ld.w LOWW(#_s4_adtrig_inv0_delay_ns)[r2], r6
	jarl _dpinv0_set_addelay, r31
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_1pulse.c", 190
	movhi HIGHW1(#_u4_fc_inv0_lsb_0), r0, r2
	ld.w LOWW(#_u4_fc_inv0_lsb_0)[r2], r2
	movhi HIGHW1(#_f4_mw_inv0_1pulse), r0, r5
	ld.w LOWW(#_f4_mw_inv0_1pulse)[r5], r8
	movhi HIGHW1(#_f4_mv_inv0_1pulse), r0, r5
	ld.w LOWW(#_f4_mv_inv0_1pulse)[r5], r7
	cvtf.uws r2, r9
	movhi HIGHW1(#_f4_mu_inv0_1pulse), r0, r5
	ld.w LOWW(#_f4_mu_inv0_1pulse)[r5], r6
	dispose 0x00000000, 0x00000061
	jr _dpinv0_setuvwf_f_V3
.BB.LABEL.1_25:	; return
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_1pulse.c", 194
	dispose 0x00000000, 0x00000061, [r31]
_fb_pwm_inv0_1pulse_init:
	.stack _fb_pwm_inv0_1pulse_init = 0
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_1pulse.c", 211
	movhi HIGHW1(#_u1_flag_1pulse_inv0_mode), r0, r2
	st.b r0, LOWW(#_u1_flag_1pulse_inv0_mode)[r2]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_1pulse.c", 213
	movhi HIGHW1(#_s4_wt_inv0_dq_2pi_2_31), r0, r2
	st.w r0, LOWW(#_s4_wt_inv0_dq_2pi_2_31)[r2]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_1pulse.c", 214
	movhi HIGHW1(#_s4_wt_inv0_delay_2pi_2_31), r0, r2
	st.w r0, LOWW(#_s4_wt_inv0_delay_2pi_2_31)[r2]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_1pulse.c", 216
	movhi HIGHW1(#_f4_wt_inv0_vdq), r0, r2
	st.w r0, LOWW(#_f4_wt_inv0_vdq)[r2]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_1pulse.c", 217
	movhi HIGHW1(#_s4_wt_inv0_vdq_2pi_2_31), r0, r2
	st.w r0, LOWW(#_s4_wt_inv0_vdq_2pi_2_31)[r2]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_1pulse.c", 219
	movhi HIGHW1(#_s4_wt_inv0_1pulse_pwm_2pi_2_31), r0, r2
	st.w r0, LOWW(#_s4_wt_inv0_1pulse_pwm_2pi_2_31)[r2]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_1pulse.c", 221
	movhi HIGHW1(#_f4_mu_inv0_1pulse), r0, r2
	st.w r0, LOWW(#_f4_mu_inv0_1pulse)[r2]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_1pulse.c", 222
	movhi HIGHW1(#_f4_mv_inv0_1pulse), r0, r2
	st.w r0, LOWW(#_f4_mv_inv0_1pulse)[r2]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_1pulse.c", 223
	movhi HIGHW1(#_f4_mw_inv0_1pulse), r0, r2
	st.w r0, LOWW(#_f4_mw_inv0_1pulse)[r2]
	jmp [r31]
	.section .bss, bss
_u1_flag_1pulse_inv0_mode:
	.ds (1)
	.align 4
_s4_wt_inv0_dq_2pi_2_31:
	.ds (4)
	.align 4
_s4_wt_inv0_delay_2pi_2_31:
	.ds (4)
	.align 4
_f4_wt_inv0_vdq:
	.ds (4)
	.align 4
_s4_wt_inv0_vdq_2pi_2_31:
	.ds (4)
	.align 4
_s4_wt_inv0_1pulse_pwm_2pi_2_31:
	.ds (4)
	.align 4
_f4_mu_inv0_1pulse:
	.ds (4)
	.align 4
_f4_mv_inv0_1pulse:
	.ds (4)
	.align 4
_f4_mw_inv0_1pulse:
	.ds (4)
