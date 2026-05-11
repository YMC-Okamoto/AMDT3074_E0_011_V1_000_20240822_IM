#CC-RH Compiler RH850 Assembler Source
#@	CC-RH Version : V1.03.00 [21 Aug 2015]
#@	Command : src\fi_20us_inv0_1pulse.c -Xobj_path=DefaultBuild -Xcommon=rh850 -Xcpu=g3m -c -g -Ospeed -Oinline_size -Isrc -I..\Common -D__CLK_HSB=80,__CLK_LSB=40,__CLKC_HSB=80,__CLK_CLSB=40 -Xasm_path=DefaultBuild
#@	compiled at Mon May 01 22:14:45 2017

	.file "src\fi_20us_inv0_1pulse.c"

	$reg_mode 32

	.extern _s4_wt_inv0_dq_offset_2pi_2_31
	.extern _u4_flag_dir_inv0_enc
	.extern _f4_wr_inv0_pll_lpf
	.extern _s4_wt_inv0_vdq_2pi_2_31
	.public _u1_flag_1pulse_inv0_gate, 1
	.public _s4_wt_dq_inv0_20us_2pi_2_31, 4
	.public _s4_wt_inv0_encint_2pi_2_31, 4
	.public _s4_wt_inv0_1pulse_20us_2pi_2_31, 4
	.public _u4_cnt_encint_inv0_set, 4
	.public _u1_flag_encint_inv0_clr, 1
	.public _fi_20us_inv0_1pulse
	.extern _u2_enca0_cnt_read
	.extern _enca0_ccr1_set
	.public _fb_20us_inv0_1pulse_init

	.section .text, text
_fi_20us_inv0_1pulse:
	.stack _fi_20us_inv0_1pulse = 4
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_20us_inv0_1pulse.c", 61
	prepare 0x00000001, 0x00000000
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_20us_inv0_1pulse.c", 73
	movhi HIGHW1(#_u1_flag_encint_inv0_clr), r0, r2
	ld.bu LOWW(#_u1_flag_encint_inv0_clr)[r2], r2
	cmp 0x00000000, r2
	bnz17 .BB.LABEL.1_31
.BB.LABEL.1_1:	; if_then_bb
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_20us_inv0_1pulse.c", 76
	movhi HIGHW1(#_u4_flag_dir_inv0_enc), r0, r2
	ld.bu LOWW(#_u4_flag_dir_inv0_enc)[r2], r6
	jarl _u2_enca0_cnt_read, r31
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_20us_inv0_1pulse.c", 82
	movhi HIGHW1(#_s4_wt_inv0_dq_offset_2pi_2_31), r0, r2
	ld.w LOWW(#_s4_wt_inv0_dq_offset_2pi_2_31)[r2], r2
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_20us_inv0_1pulse.c", 79
	shl 0x00000015, r10
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_20us_inv0_1pulse.c", 83
	movhi HIGHW1(#_s4_wt_dq_inv0_20us_2pi_2_31), r0, r6
	mov 0x7FFFFFFF, r5
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_20us_inv0_1pulse.c", 86
	movhi HIGHW1(#_s4_wt_inv0_vdq_2pi_2_31), r0, r7
	ld.w LOWW(#_s4_wt_inv0_vdq_2pi_2_31)[r7], r7
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_20us_inv0_1pulse.c", 83
	sub r2, r10
	mov r10, r8
	and r5, r8
	st.w r8, LOWW(#_s4_wt_dq_inv0_20us_2pi_2_31)[r6]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_20us_inv0_1pulse.c", 87
	movhi HIGHW1(#_s4_wt_inv0_1pulse_20us_2pi_2_31), r0, r6
	mov 0x7AAAAAA9, r8
	add r7, r10
	and r5, r10
	st.w r10, LOWW(#_s4_wt_inv0_1pulse_20us_2pi_2_31)[r6]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_20us_inv0_1pulse.c", 90
	cmp r8, r10
	bgt9 .BB.LABEL.1_3
.BB.LABEL.1_2:	; if_then_bb
	movhi 0x00003000, r0, r6
	cmp r6, r10
	bge9 .BB.LABEL.1_16
.BB.LABEL.1_3:	; bb32
	mov 0xFAAAAAAA, r6
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_20us_inv0_1pulse.c", 94
	add r10, r6
	mov 0x75555554, r8
	cmp r8, r6
	bl9 .BB.LABEL.1_8
.BB.LABEL.1_4:	; if_then_bb53
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_20us_inv0_1pulse.c", 97
	movhi HIGHW1(#_u1_flag_encint_inv0_clr), r0, r6
	mov 0x00000001, r9
	st.b r9, LOWW(#_u1_flag_encint_inv0_clr)[r6]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_20us_inv0_1pulse.c", 99
	movhi HIGHW1(#_f4_wr_inv0_pll_lpf), r0, r6
	ld.w LOWW(#_f4_wr_inv0_pll_lpf)[r6], r6
	mov 0x00000000, r9
	cmpf.s 0x00000007, r6, r9
	trfsr 0
	bz9 .BB.LABEL.1_6
.BB.LABEL.1_5:	; if_then_bb58
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_20us_inv0_1pulse.c", 101
	movhi HIGHW1(#_u1_flag_1pulse_inv0_gate), r0, r8
	mov 0x00000006, r6
	st.b r6, LOWW(#_u1_flag_1pulse_inv0_gate)[r8]
	mov 0x0AAAAAAA, r8
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_20us_inv0_1pulse.c", 103
	add r8, r2
	jr .BB.LABEL.1_29
.BB.LABEL.1_6:	; if_else_bb
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_20us_inv0_1pulse.c", 108
	movhi HIGHW1(#_u1_flag_1pulse_inv0_gate), r0, r6
	mov 0x00000005, r9
.BB.LABEL.1_7:	; if_else_bb
	st.b r9, LOWW(#_u1_flag_1pulse_inv0_gate)[r6]
	add r8, r2
	jr .BB.LABEL.1_29
.BB.LABEL.1_8:	; if_else_bb72
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_20us_inv0_1pulse.c", 114
	movhi 0x0000F000, r10, r6
	mov 0x0AAAAAAA, r8
	cmp r8, r6
	bh9 .BB.LABEL.1_12
.BB.LABEL.1_9:	; if_then_bb88
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_20us_inv0_1pulse.c", 119
	movhi HIGHW1(#_u1_flag_encint_inv0_clr), r0, r6
	mov 0x00000001, r9
	st.b r9, LOWW(#_u1_flag_encint_inv0_clr)[r6]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_20us_inv0_1pulse.c", 121
	movhi HIGHW1(#_f4_wr_inv0_pll_lpf), r0, r6
	ld.w LOWW(#_f4_wr_inv0_pll_lpf)[r6], r6
	mov 0x00000000, r9
	cmpf.s 0x00000007, r6, r9
	trfsr 0
	bz9 .BB.LABEL.1_11
.BB.LABEL.1_10:	; if_then_bb93
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_20us_inv0_1pulse.c", 123
	movhi HIGHW1(#_u1_flag_1pulse_inv0_gate), r0, r8
	mov 0x00000002, r6
	st.b r6, LOWW(#_u1_flag_1pulse_inv0_gate)[r8]
	mov 0x1FFFFFFF, r8
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_20us_inv0_1pulse.c", 125
	add r8, r2
	jr .BB.LABEL.1_29
.BB.LABEL.1_11:	; if_else_bb100
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_20us_inv0_1pulse.c", 130
	movhi HIGHW1(#_u1_flag_1pulse_inv0_gate), r0, r6
	mov 0x00000004, r9
	br9 .BB.LABEL.1_7
.BB.LABEL.1_12:	; if_else_bb108
	mov 0xDAAAAAAA, r6
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_20us_inv0_1pulse.c", 136
	add r6, r10
	mov 0x0AAAAAA9, r6
	cmp r6, r10
	bh17 .BB.LABEL.1_30
.BB.LABEL.1_13:	; if_then_bb124
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_20us_inv0_1pulse.c", 141
	movhi HIGHW1(#_u1_flag_encint_inv0_clr), r0, r6
	mov 0x00000001, r8
	st.b r8, LOWW(#_u1_flag_encint_inv0_clr)[r6]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_20us_inv0_1pulse.c", 143
	movhi HIGHW1(#_f4_wr_inv0_pll_lpf), r0, r6
	ld.w LOWW(#_f4_wr_inv0_pll_lpf)[r6], r6
	mov 0x00000000, r8
	cmpf.s 0x00000007, r6, r8
	trfsr 0
	bz9 .BB.LABEL.1_15
.BB.LABEL.1_14:	; if_then_bb129
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_20us_inv0_1pulse.c", 145
	movhi HIGHW1(#_u1_flag_1pulse_inv0_gate), r0, r6
	mov 0x00000003, r8
	st.b r8, LOWW(#_u1_flag_1pulse_inv0_gate)[r6]
	mov 0x35555554, r6
	br9 .BB.LABEL.1_28
.BB.LABEL.1_15:	; if_else_bb136
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_20us_inv0_1pulse.c", 152
	movhi HIGHW1(#_u1_flag_1pulse_inv0_gate), r0, r6
	mov 0x00000006, r8
	st.b r8, LOWW(#_u1_flag_1pulse_inv0_gate)[r6]
	mov 0x1FFFFFFF, r6
	br9 .BB.LABEL.1_28
.BB.LABEL.1_16:	; bb32.thread
	mov 0xC5555555, r6
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_20us_inv0_1pulse.c", 162
	add r10, r6
	mov 0x0AAAAAA9, r8
	cmp r8, r6
	bh9 .BB.LABEL.1_20
.BB.LABEL.1_17:	; if_then_bb164
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_20us_inv0_1pulse.c", 167
	movhi HIGHW1(#_u1_flag_encint_inv0_clr), r0, r8
	mov 0x00000001, r6
	st.b r6, LOWW(#_u1_flag_encint_inv0_clr)[r8]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_20us_inv0_1pulse.c", 168
	movhi HIGHW1(#_f4_wr_inv0_pll_lpf), r0, r8
	ld.w LOWW(#_f4_wr_inv0_pll_lpf)[r8], r8
	mov 0x00000000, r9
	cmpf.s 0x00000007, r8, r9
	trfsr 0
	bz9 .BB.LABEL.1_19
.BB.LABEL.1_18:	; if_then_bb169
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_20us_inv0_1pulse.c", 170
	movhi HIGHW1(#_u1_flag_1pulse_inv0_gate), r0, r8
	st.b r6, LOWW(#_u1_flag_1pulse_inv0_gate)[r8]
	mov 0x4AAAAAAA, r8
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_20us_inv0_1pulse.c", 172
	add r8, r2
	br9 .BB.LABEL.1_29
.BB.LABEL.1_19:	; if_else_bb176
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_20us_inv0_1pulse.c", 177
	movhi HIGHW1(#_u1_flag_1pulse_inv0_gate), r0, r8
	mov 0x00000002, r6
	st.b r6, LOWW(#_u1_flag_1pulse_inv0_gate)[r8]
	mov 0x35555554, r8
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_20us_inv0_1pulse.c", 179
	add r8, r2
	br9 .BB.LABEL.1_29
.BB.LABEL.1_20:	; if_else_bb184
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_20us_inv0_1pulse.c", 183
	movhi 0x0000B000, r10, r6
	cmp r8, r6
	bh9 .BB.LABEL.1_23
.BB.LABEL.1_21:	; if_then_bb200
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_20us_inv0_1pulse.c", 188
	movhi HIGHW1(#_u1_flag_encint_inv0_clr), r0, r6
	mov 0x00000001, r8
	st.b r8, LOWW(#_u1_flag_encint_inv0_clr)[r6]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_20us_inv0_1pulse.c", 189
	movhi HIGHW1(#_f4_wr_inv0_pll_lpf), r0, r6
	ld.w LOWW(#_f4_wr_inv0_pll_lpf)[r6], r6
	mov 0x00000000, r8
	cmpf.s 0x00000007, r6, r8
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_20us_inv0_1pulse.c", 191
	movhi HIGHW1(#_u1_flag_1pulse_inv0_gate), r0, r6
	mov 0x00000005, r8
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_20us_inv0_1pulse.c", 189
	trfsr 0
	bnz9 .BB.LABEL.1_27
.BB.LABEL.1_22:	; if_else_bb212
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_20us_inv0_1pulse.c", 198
	movhi HIGHW1(#_u1_flag_1pulse_inv0_gate), r0, r6
	mov 0x00000003, r8
	st.b r8, LOWW(#_u1_flag_1pulse_inv0_gate)[r6]
	mov 0x4AAAAAAA, r6
	br9 .BB.LABEL.1_28
.BB.LABEL.1_23:	; if_else_bb220
	mov 0x9AAAAAAB, r6
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_20us_inv0_1pulse.c", 204
	add r6, r10
	mov 0x0AAAAAAA, r6
	cmp r6, r10
	bh9 .BB.LABEL.1_30
.BB.LABEL.1_24:	; if_then_bb236
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_20us_inv0_1pulse.c", 209
	movhi HIGHW1(#_u1_flag_encint_inv0_clr), r0, r6
	mov 0x00000001, r8
	st.b r8, LOWW(#_u1_flag_encint_inv0_clr)[r6]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_20us_inv0_1pulse.c", 211
	movhi HIGHW1(#_f4_wr_inv0_pll_lpf), r0, r6
	ld.w LOWW(#_f4_wr_inv0_pll_lpf)[r6], r6
	mov 0x00000000, r9
	cmpf.s 0x00000007, r6, r9
	trfsr 0
	bz9 .BB.LABEL.1_26
.BB.LABEL.1_25:	; if_then_bb241
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_20us_inv0_1pulse.c", 213
	movhi HIGHW1(#_u1_flag_1pulse_inv0_gate), r0, r8
	mov 0x00000004, r6
	st.b r6, LOWW(#_u1_flag_1pulse_inv0_gate)[r8]
	mov 0x75555554, r8
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_20us_inv0_1pulse.c", 215
	add r8, r2
	br9 .BB.LABEL.1_29
.BB.LABEL.1_26:	; if_else_bb248
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_20us_inv0_1pulse.c", 220
	movhi HIGHW1(#_u1_flag_1pulse_inv0_gate), r0, r6
.BB.LABEL.1_27:	; if_else_bb248
	st.b r8, LOWW(#_u1_flag_1pulse_inv0_gate)[r6]
	mov 0x5FFFFFFF, r6
.BB.LABEL.1_28:	; if_else_bb248
	add r6, r2
.BB.LABEL.1_29:	; if_break_bb260.PartialDrain
	sub r7, r2
	and r5, r2
	movhi HIGHW1(#_s4_wt_inv0_encint_2pi_2_31), r0, r5
	st.w r2, LOWW(#_s4_wt_inv0_encint_2pi_2_31)[r5]
.BB.LABEL.1_30:	; if_break_bb260
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_20us_inv0_1pulse.c", 234
	movhi HIGHW1(#_s4_wt_inv0_encint_2pi_2_31), r0, r2
	ld.w LOWW(#_s4_wt_inv0_encint_2pi_2_31)[r2], r2
	movea 0x000003FE, r0, r5
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_20us_inv0_1pulse.c", 235
	movhi HIGHW1(#_u4_cnt_encint_inv0_set), r0, r6
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_20us_inv0_1pulse.c", 238
	movhi HIGHW1(#_u4_flag_dir_inv0_enc), r0, r7
	ld.bu LOWW(#_u4_flag_dir_inv0_enc)[r7], r7
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_20us_inv0_1pulse.c", 234
	sar 0x00000015, r2
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_20us_inv0_1pulse.c", 235
	addi 0xFFFFFC01, r2, r0
	cmov 0x00000002, r5, r2, r2
	st.w r2, LOWW(#_u4_cnt_encint_inv0_set)[r6]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_20us_inv0_1pulse.c", 238
	andi 0x0000FFFF, r2, r6
	dispose 0x00000000, 0x00000001
	jr _enca0_ccr1_set
.BB.LABEL.1_31:	; return
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_20us_inv0_1pulse.c", 244
	dispose 0x00000000, 0x00000001, [r31]
_fb_20us_inv0_1pulse_init:
	.stack _fb_20us_inv0_1pulse_init = 0
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_20us_inv0_1pulse.c", 262
	movhi HIGHW1(#_u1_flag_1pulse_inv0_gate), r0, r2
	st.b r0, LOWW(#_u1_flag_1pulse_inv0_gate)[r2]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_20us_inv0_1pulse.c", 264
	movhi HIGHW1(#_s4_wt_dq_inv0_20us_2pi_2_31), r0, r2
	st.w r0, LOWW(#_s4_wt_dq_inv0_20us_2pi_2_31)[r2]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_20us_inv0_1pulse.c", 265
	movhi HIGHW1(#_s4_wt_inv0_encint_2pi_2_31), r0, r2
	st.w r0, LOWW(#_s4_wt_inv0_encint_2pi_2_31)[r2]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_20us_inv0_1pulse.c", 266
	movhi HIGHW1(#_s4_wt_inv0_1pulse_20us_2pi_2_31), r0, r2
	st.w r0, LOWW(#_s4_wt_inv0_1pulse_20us_2pi_2_31)[r2]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_20us_inv0_1pulse.c", 268
	movhi HIGHW1(#_u4_cnt_encint_inv0_set), r0, r2
	st.w r0, LOWW(#_u4_cnt_encint_inv0_set)[r2]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_20us_inv0_1pulse.c", 270
	movhi HIGHW1(#_u1_flag_encint_inv0_clr), r0, r2
	st.b r0, LOWW(#_u1_flag_encint_inv0_clr)[r2]
	jmp [r31]
	.section .bss, bss
_u1_flag_1pulse_inv0_gate:
	.ds (1)
	.align 4
_s4_wt_dq_inv0_20us_2pi_2_31:
	.ds (4)
	.align 4
_s4_wt_inv0_encint_2pi_2_31:
	.ds (4)
	.align 4
_s4_wt_inv0_1pulse_20us_2pi_2_31:
	.ds (4)
	.align 4
_u4_cnt_encint_inv0_set:
	.ds (4)
_u1_flag_encint_inv0_clr:
	.ds (1)
