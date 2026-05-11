#CC-RH Compiler RH850 Assembler Source
#@	CC-RH Version : V1.03.00 [21 Aug 2015]
#@	Command : src\fi_pwm_inv0_encctrl.c -Xobj_path=DefaultBuild -Xcommon=rh850 -Xcpu=g3m -c -g -Ospeed -Oinline_size -Isrc -I..\Common -D__CLK_HSB=80,__CLK_LSB=40,__CLKC_HSB=80,__CLK_CLSB=40 -Xasm_path=DefaultBuild
#@	compiled at Mon May 01 22:14:56 2017

	.file "src\fi_pwm_inv0_encctrl.c"

	$reg_mode 32

	.extern _f4_ts_inv0_ctrl
	.extern _f4_dpf_inv0
	.extern _u1_flag_inv0_adj
	.extern _f4_wtdq_inv0_adj
	.public _u2_cnt_inv0_ecd_get, 2
	.public _f4_wt_inv0_dq, 4
	.public _f4_wt_inv0_dq_tmp, 4
	.public _f4_wt_inv0_dq_offset, 4
	.public _s4_wt_inv0_dq_offset_2pi_2_31, 4
	.public _f4_sin_inv0_wtdq, 4
	.public _f4_cos_inv0_wtdq, 4
	.public _u4_flag_dir_inv0_enc, 4
	.public _f4_wt_inv0_pll, 4
	.public _f4_wt_inv0_pll_err, 4
	.public _f4_wr_inv0_pll_max, 4
	.public _f4_kp_inv0_wrpll, 4
	.public _f4_ki_inv0_wrpll, 4
	.public _f4_wr_inv0_pllp, 4
	.public _f4_wr_inv0_plli, 4
	.public _f4_wr_inv0_pll, 4
	.public _f4_wclpf_inv0_wrpll, 4
	.public _f4_wr_inv0_pll_lpf, 4
	.public _f4_speed_inv0_lpf, 4
	.public _fi_pwm_inv0_encctrl
	.extern _u2_enca0_cnt_read
	.extern _sinf
	.extern _cosf
	.public _fb_pwm_inv0_encctrl_init

	.section .text, text
_fi_pwm_inv0_encctrl:
	.stack _fi_pwm_inv0_encctrl = 8
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_encctrl.c", 87
	prepare 0x00000041, 0x00000000
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_encctrl.c", 100
	movhi HIGHW1(#_u4_flag_dir_inv0_enc), r0, r2
	ld.bu LOWW(#_u4_flag_dir_inv0_enc)[r2], r6
	jarl _u2_enca0_cnt_read, r31
	movhi HIGHW1(#_u2_cnt_inv0_ecd_get), r0, r2
	st.h r10, LOWW(#_u2_cnt_inv0_ecd_get)[r2]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_encctrl.c", 103
	shl 0x00000015, r10
	movhi 0x00007FE0, r0, r2
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_encctrl.c", 104
	and r2, r10
	mov 0x31490FDB, r5
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_encctrl.c", 106
	cvtf.ws r10, r2
	mulf.s r5, r2, r2
	movhi HIGHW1(#_f4_wt_inv0_dq_tmp), r0, r5
	st.w r2, LOWW(#_f4_wt_inv0_dq_tmp)[r5]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_encctrl.c", 109
	movhi HIGHW1(#_u1_flag_inv0_adj), r0, r5
	ld.bu LOWW(#_u1_flag_inv0_adj)[r5], r5
	cmp 0x00000000, r5
	bz9 .BB.LABEL.1_2
.BB.LABEL.1_1:	; if_else_bb
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_encctrl.c", 116
	add 0xFFFFFFF9, r5
	andi 0x000000FF, r5, r5
	cmp 0x00000001, r5
	bh9 .BB.LABEL.1_3
.BB.LABEL.1_2:	; if_else_bb37
	movhi HIGHW1(#_f4_wt_inv0_dq_offset), r0, r5
	ld.w LOWW(#_f4_wt_inv0_dq_offset)[r5], r5
	subf.s r5, r2, r6
	br9 .BB.LABEL.1_4
.BB.LABEL.1_3:	; if_then_bb35
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_encctrl.c", 118
	movhi HIGHW1(#_f4_wtdq_inv0_adj), r0, r2
	ld.w LOWW(#_f4_wtdq_inv0_adj)[r2], r6
.BB.LABEL.1_4:	; if_break_bb41
	movhi HIGHW1(#_f4_wt_inv0_dq), r0, r2
	st.w r6, LOWW(#_f4_wt_inv0_dq)[r2]
	mov 0x40490FDB, r20
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_encctrl.c", 127
	cmpf.s 0x00000007, r6, r20
	mov 0xC0C90FDB, r2
	trfsr 0
	bnz9 .BB.LABEL.1_7
.BB.LABEL.1_5:	; if_else_bb49
	mov 0xC0490FDB, r2
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_encctrl.c", 128
	cmpf.s 0x00000004, r6, r2
	trfsr 0
	bnz9 .BB.LABEL.1_9
.BB.LABEL.1_6:	; if_then_bb54
	mov 0x40C90FDB, r2
.BB.LABEL.1_7:	; if_then_bb54
	addf.s r2, r6, r6
.BB.LABEL.1_8:	; if_break_bb60.PartialDrain
	movhi HIGHW1(#_f4_wt_inv0_dq), r0, r2
	st.w r6, LOWW(#_f4_wt_inv0_dq)[r2]
.BB.LABEL.1_9:	; if_break_bb60
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_encctrl.c", 132
	jarl _sinf, r31
	movhi HIGHW1(#_f4_sin_inv0_wtdq), r0, r2
	st.w r10, LOWW(#_f4_sin_inv0_wtdq)[r2]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_encctrl.c", 133
	movhi HIGHW1(#_f4_wt_inv0_dq), r0, r2
	ld.w LOWW(#_f4_wt_inv0_dq)[r2], r6
	jarl _cosf, r31
	movhi HIGHW1(#_f4_cos_inv0_wtdq), r0, r2
	st.w r10, LOWW(#_f4_cos_inv0_wtdq)[r2]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_encctrl.c", 140
	movhi HIGHW1(#_f4_wt_inv0_dq_tmp), r0, r2
	ld.w LOWW(#_f4_wt_inv0_dq_tmp)[r2], r2
	movhi HIGHW1(#_f4_wt_inv0_pll), r0, r5
	ld.w LOWW(#_f4_wt_inv0_pll)[r5], r5
	movhi HIGHW1(#_f4_wt_inv0_pll_err), r0, r6
	subf.s r5, r2, r2
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_encctrl.c", 143
	cmpf.s 0x00000007, r2, r20
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_encctrl.c", 140
	st.w r2, LOWW(#_f4_wt_inv0_pll_err)[r6]
	mov 0xC0C90FDB, r6
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_encctrl.c", 143
	trfsr 0
	bnz9 .BB.LABEL.1_12
.BB.LABEL.1_10:	; if_else_bb75
	mov 0xC0490FDB, r6
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_encctrl.c", 147
	cmpf.s 0x00000004, r2, r6
	trfsr 0
	bnz9 .BB.LABEL.1_14
.BB.LABEL.1_11:	; if_then_bb80
	mov 0x40C90FDB, r6
.BB.LABEL.1_12:	; if_then_bb80
	addf.s r6, r2, r2
.BB.LABEL.1_13:	; if_break_bb85.PartialDrain
	movhi HIGHW1(#_f4_wt_inv0_pll_err), r0, r6
	st.w r2, LOWW(#_f4_wt_inv0_pll_err)[r6]
.BB.LABEL.1_14:	; if_break_bb85
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_encctrl.c", 154
	movhi HIGHW1(#_f4_kp_inv0_wrpll), r0, r6
	ld.w LOWW(#_f4_kp_inv0_wrpll)[r6], r6
	movhi HIGHW1(#_f4_wr_inv0_pllp), r0, r7
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_encctrl.c", 156
	movhi HIGHW1(#_f4_ki_inv0_wrpll), r0, r8
	ld.w LOWW(#_f4_ki_inv0_wrpll)[r8], r8
	movhi HIGHW1(#_f4_ts_inv0_ctrl), r0, r9
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_encctrl.c", 154
	mulf.s r2, r6, r6
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_encctrl.c", 156
	ld.w LOWW(#_f4_ts_inv0_ctrl)[r9], r9
	mulf.s r2, r8, r2
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_encctrl.c", 157
	movhi HIGHW1(#_f4_wr_inv0_pll_max), r0, r8
	ld.w LOWW(#_f4_wr_inv0_pll_max)[r8], r8
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_encctrl.c", 154
	st.w r6, LOWW(#_f4_wr_inv0_pllp)[r7]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_encctrl.c", 156
	movhi HIGHW1(#_f4_wr_inv0_plli), r0, r7
	mulf.s r9, r2, r2
	ld.w LOWW(#_f4_wr_inv0_plli)[r7], r7
	addf.s r2, r7, r2
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_encctrl.c", 157
	cmpf.s 0x00000007, r2, r8
	trfsr 0
	cmov 0x0000000A, r8, r2, r2
	bnz9 .BB.LABEL.1_17
.BB.LABEL.1_15:	; bb102
	negf.s r8, r7
	cmpf.s 0x00000004, r2, r7
	trfsr 0
	bnz9 .BB.LABEL.1_17
.BB.LABEL.1_16:	; bb108
	mov r7, r2
.BB.LABEL.1_17:	; bb118
	movhi HIGHW1(#_f4_wr_inv0_plli), r0, r7
	st.w r2, LOWW(#_f4_wr_inv0_plli)[r7]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_encctrl.c", 159
	addf.s r2, r6, r2
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_encctrl.c", 160
	cmpf.s 0x00000007, r2, r8
	trfsr 0
	bnz9 .BB.LABEL.1_19
.BB.LABEL.1_18:	; bb130
	negf.s r8, r8
	cmpf.s 0x00000004, r2, r8
	trfsr 0
	cmov 0x0000000A, r2, r8, r8
.BB.LABEL.1_19:	; bb146
	movhi HIGHW1(#_f4_wr_inv0_pll), r0, r2
	st.w r8, LOWW(#_f4_wr_inv0_pll)[r2]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_encctrl.c", 163
	mulf.s r9, r8, r2
	addf.s r2, r5, r2
	movhi HIGHW1(#_f4_wt_inv0_pll), r0, r5
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_encctrl.c", 165
	cmpf.s 0x00000007, r2, r20
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_encctrl.c", 163
	st.w r2, LOWW(#_f4_wt_inv0_pll)[r5]
	mov 0xC0C90FDB, r5
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_encctrl.c", 165
	trfsr 0
	bnz9 .BB.LABEL.1_22
.BB.LABEL.1_20:	; if_else_bb161
	mov 0xC0490FDB, r5
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_encctrl.c", 166
	cmpf.s 0x00000007, r5, r2
	trfsr 0
	bz9 .BB.LABEL.1_24
.BB.LABEL.1_21:	; if_then_bb166
	mov 0x40C90FDB, r5
.BB.LABEL.1_22:	; if_then_bb166
	addf.s r5, r2, r2
.BB.LABEL.1_23:	; if_break_bb171.PartialDrain
	movhi HIGHW1(#_f4_wt_inv0_pll), r0, r5
	st.w r2, LOWW(#_f4_wt_inv0_pll)[r5]
.BB.LABEL.1_24:	; if_break_bb171
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_encctrl.c", 170
	movhi HIGHW1(#_f4_wr_inv0_pll_lpf), r0, r2
	ld.w LOWW(#_f4_wr_inv0_pll_lpf)[r2], r5
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_encctrl.c", 171
	movhi HIGHW1(#_f4_wclpf_inv0_wrpll), r0, r6
	ld.w LOWW(#_f4_wclpf_inv0_wrpll)[r6], r6
	mov 0x4118C9EB, r7
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_encctrl.c", 170
	subf.s r5, r8, r8
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_encctrl.c", 173
	movhi HIGHW1(#_f4_dpf_inv0), r0, r10
	ld.w LOWW(#_f4_dpf_inv0)[r10], r10
	movhi HIGHW1(#_f4_speed_inv0_lpf), r0, r11
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_encctrl.c", 171
	mulf.s r8, r6, r6
	mulf.s r9, r6, r6
	addf.s r6, r5, r5
	st.w r5, LOWW(#_f4_wr_inv0_pll_lpf)[r2]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_encctrl.c", 173
	mulf.s r7, r5, r2
	mulf.s r10, r2, r2
	st.w r2, LOWW(#_f4_speed_inv0_lpf)[r11]
	dispose 0x00000000, 0x00000041, [r31]
_fb_pwm_inv0_encctrl_init:
	.stack _fb_pwm_inv0_encctrl_init = 0
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_encctrl.c", 192
	movhi HIGHW1(#_f4_wt_inv0_dq), r0, r2
	st.w r0, LOWW(#_f4_wt_inv0_dq)[r2]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_encctrl.c", 193
	movhi HIGHW1(#_f4_wt_inv0_dq_tmp), r0, r2
	st.w r0, LOWW(#_f4_wt_inv0_dq_tmp)[r2]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_encctrl.c", 194
	movhi HIGHW1(#_f4_wt_inv0_dq_offset), r0, r2
	mov 0x404A3D71, r5
	st.w r5, LOWW(#_f4_wt_inv0_dq_offset)[r2]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_encctrl.c", 195
	movhi HIGHW1(#_s4_wt_inv0_dq_offset_2pi_2_31), r0, r2
	mov 0x405FFF6E, r5
	st.w r5, LOWW(#_s4_wt_inv0_dq_offset_2pi_2_31)[r2]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_encctrl.c", 197
	movhi HIGHW1(#_f4_sin_inv0_wtdq), r0, r2
	st.w r0, LOWW(#_f4_sin_inv0_wtdq)[r2]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_encctrl.c", 198
	movhi HIGHW1(#_f4_cos_inv0_wtdq), r0, r2
	st.w r0, LOWW(#_f4_cos_inv0_wtdq)[r2]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_encctrl.c", 200
	movhi HIGHW1(#_u4_flag_dir_inv0_enc), r0, r2
	st.w r0, LOWW(#_u4_flag_dir_inv0_enc)[r2]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_encctrl.c", 206
	movhi HIGHW1(#_f4_wt_inv0_pll), r0, r2
	st.w r0, LOWW(#_f4_wt_inv0_pll)[r2]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_encctrl.c", 207
	movhi HIGHW1(#_f4_wt_inv0_pll_err), r0, r2
	st.w r0, LOWW(#_f4_wt_inv0_pll_err)[r2]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_encctrl.c", 209
	movhi HIGHW1(#_f4_wr_inv0_pll_max), r0, r2
	mov 0x469C4000, r5
	st.w r5, LOWW(#_f4_wr_inv0_pll_max)[r2]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_encctrl.c", 210
	movhi HIGHW1(#_f4_kp_inv0_wrpll), r0, r2
	movhi 0x0000447A, r0, r5
	st.w r5, LOWW(#_f4_kp_inv0_wrpll)[r2]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_encctrl.c", 211
	movhi HIGHW1(#_f4_ki_inv0_wrpll), r0, r2
	mov 0x461C4000, r5
	st.w r5, LOWW(#_f4_ki_inv0_wrpll)[r2]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_encctrl.c", 213
	movhi HIGHW1(#_f4_wr_inv0_pllp), r0, r2
	st.w r0, LOWW(#_f4_wr_inv0_pllp)[r2]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_encctrl.c", 214
	movhi HIGHW1(#_f4_wr_inv0_plli), r0, r2
	st.w r0, LOWW(#_f4_wr_inv0_plli)[r2]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_encctrl.c", 215
	movhi HIGHW1(#_f4_wr_inv0_pll), r0, r2
	st.w r0, LOWW(#_f4_wr_inv0_pll)[r2]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_encctrl.c", 217
	movhi HIGHW1(#_f4_wclpf_inv0_wrpll), r0, r2
	movhi 0x00004348, r0, r5
	st.w r5, LOWW(#_f4_wclpf_inv0_wrpll)[r2]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_encctrl.c", 218
	movhi HIGHW1(#_f4_wr_inv0_pll_lpf), r0, r2
	st.w r0, LOWW(#_f4_wr_inv0_pll_lpf)[r2]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_encctrl.c", 220
	movhi HIGHW1(#_f4_speed_inv0_lpf), r0, r2
	st.w r0, LOWW(#_f4_speed_inv0_lpf)[r2]
	jmp [r31]
	.section .bss, bss
	.align 2
_u2_cnt_inv0_ecd_get:
	.ds (2)
	.align 4
_f4_wt_inv0_dq:
	.ds (4)
	.align 4
_f4_wt_inv0_dq_tmp:
	.ds (4)
	.align 4
_f4_wt_inv0_dq_offset:
	.ds (4)
	.align 4
_s4_wt_inv0_dq_offset_2pi_2_31:
	.ds (4)
	.align 4
_f4_sin_inv0_wtdq:
	.ds (4)
	.align 4
_f4_cos_inv0_wtdq:
	.ds (4)
	.align 4
_u4_flag_dir_inv0_enc:
	.ds (4)
	.align 4
_f4_wt_inv0_pll:
	.ds (4)
	.align 4
_f4_wt_inv0_pll_err:
	.ds (4)
	.align 4
_f4_wr_inv0_pll_max:
	.ds (4)
	.align 4
_f4_kp_inv0_wrpll:
	.ds (4)
	.align 4
_f4_ki_inv0_wrpll:
	.ds (4)
	.align 4
_f4_wr_inv0_pllp:
	.ds (4)
	.align 4
_f4_wr_inv0_plli:
	.ds (4)
	.align 4
_f4_wr_inv0_pll:
	.ds (4)
	.align 4
_f4_wclpf_inv0_wrpll:
	.ds (4)
	.align 4
_f4_wr_inv0_pll_lpf:
	.ds (4)
	.align 4
_f4_speed_inv0_lpf:
	.ds (4)
