#CC-RH Compiler RH850 Assembler Source
#@	CC-RH Version : V1.03.00 [21 Aug 2015]
#@	Command : src\fi_1ms_inv0_seqctrl.c -Xobj_path=DefaultBuild -Xcommon=rh850 -Xcpu=g3m -c -g -Ospeed -Oinline_size -Isrc -I..\Common -D__CLK_HSB=80,__CLK_LSB=40,__CLKC_HSB=80,__CLK_CLSB=40 -Xasm_path=DefaultBuild
#@	compiled at Mon May 01 22:14:34 2017

	.file "src\fi_1ms_inv0_seqctrl.c"

	$reg_mode 32

	.extern _u1_flag_inv0_offsetadj_ok
	.extern _u4_flag_inv0_error
	.extern _u1_flag_err_eneble
	.public _u1_mode_inv0_main, 1
	.public _u1_mode_inv0_main_tmp, 1
	.public _u1_seq_inv0_runctrl, 1
	.public _u1_seq_inv0_stopctrl, 1
	.public _u1_seq_inv0_errctrl, 1
	.public _u1_flag_inv0_sysctrl, 1
	.public _u1_flag_inv0_motctrl, 1
	.public _u1_flag_inv0_offsetadjl, 1
	.public _fi_1ms_inv0_seqctrl
	.public _u1_fi_1ms_inv0_seq_runctrl
	.public _u1_fi_1ms_inv0_seq_stopctrl
	.public _u1_fi_1ms_inv0_seq_errctrl
	.extern _fb_main_error_init
	.public _fb_1ms_inv0_seq_flaginit
	.public _fb_1ms_inv0_seq_modeinit

	.section .text, text
_fi_1ms_inv0_seqctrl:
	.stack _fi_1ms_inv0_seqctrl = 4
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_seqctrl.c", 81
	prepare 0x00000001, 0x00000000
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_seqctrl.c", 87
	movhi HIGHW1(#_u1_mode_inv0_main), r0, r2
	ld.bu LOWW(#_u1_mode_inv0_main)[r2], r2
	cmp 0x00000002, r2
	bgt9 .BB.LABEL.1_4
.BB.LABEL.1_1:	; entry
	cmp 0x00000000, r2
	bz9 .BB.LABEL.1_9
.BB.LABEL.1_2:	; entry
	cmp 0x00000001, r2
	bz9 .BB.LABEL.1_12
.BB.LABEL.1_3:	; entry
	cmp 0x00000002, r2
	bz9 .BB.LABEL.1_22
	jr .BB.LABEL.1_34
.BB.LABEL.1_4:	; entry
	cmp 0x00000003, r2
	bz9 .BB.LABEL.1_24
.BB.LABEL.1_5:	; entry
	addi 0xFFFFFFEC, r2, r0
	bz17 .BB.LABEL.1_29
.BB.LABEL.1_6:	; entry
	addi 0xFFFFFFEB, r2, r0
	bnz17 .BB.LABEL.1_34
.BB.LABEL.1_7:	; bb89
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_seqctrl.c", 195
	movhi HIGHW1(#_u1_flag_inv0_sysctrl), r0, r2
	ld.bu LOWW(#_u1_flag_inv0_sysctrl)[r2], r2
	cmp 0x00000002, r2
	bnz17 .BB.LABEL.1_34
.BB.LABEL.1_8:	; if_then_bb95
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_seqctrl.c", 197
	jarl _fb_main_error_init, r31
	jr .BB.LABEL.1_34
.BB.LABEL.1_9:	; bb
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_seqctrl.c", 95
	movhi HIGHW1(#_u1_flag_inv0_sysctrl), r0, r2
	ld.bu LOWW(#_u1_flag_inv0_sysctrl)[r2], r2
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.1_28
.BB.LABEL.1_10:	; bb6
	movhi HIGHW1(#_u1_flag_err_eneble), r0, r2
	ld.bu LOWW(#_u1_flag_err_eneble)[r2], r2
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.1_28
.BB.LABEL.1_11:	; if_then_bb
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_seqctrl.c", 97
	movhi HIGHW1(#_u1_mode_inv0_main), r0, r2
	mov 0x00000001, r5
	st.b r5, LOWW(#_u1_mode_inv0_main)[r2]
	br9 .BB.LABEL.1_28
.BB.LABEL.1_12:	; bb24
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_seqctrl.c", 233
	movhi HIGHW1(#_u1_seq_inv0_runctrl), r0, r2
	ld.bu LOWW(#_u1_seq_inv0_runctrl)[r2], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.1_18
.BB.LABEL.1_13:	; bb24
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.1_20
.BB.LABEL.1_14:	; bb3.i
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_seqctrl.c", 255
	movhi HIGHW1(#_u1_flag_inv0_offsetadj_ok), r0, r5
	ld.bu LOWW(#_u1_flag_inv0_offsetadj_ok)[r5], r5
	cmp 0x00000001, r5
	bnz9 .BB.LABEL.1_20
.BB.LABEL.1_15:	; if_then_bb.i
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_seqctrl.c", 257
	movhi HIGHW1(#_u1_flag_inv0_offsetadjl), r0, r2
	st.b r0, LOWW(#_u1_flag_inv0_offsetadjl)[r2]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_seqctrl.c", 259
	movhi HIGHW1(#_u4_flag_inv0_error), r0, r2
	ld.w LOWW(#_u4_flag_inv0_error)[r2], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.1_17
.BB.LABEL.1_16:	; if_then_bb.i.bb16.i.PartialDrain_crit_edge
	mov 0x0000000A, r2
	br9 .BB.LABEL.1_19
.BB.LABEL.1_17:	; if_then_bb12.i
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_seqctrl.c", 261
	di
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_seqctrl.c", 262
	movhi HIGHW1(#_u1_flag_inv0_motctrl), r0, r2
	mov 0x00000001, r5
	st.b r5, LOWW(#_u1_flag_inv0_motctrl)[r2]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_seqctrl.c", 263
	ei
	br9 .BB.LABEL.1_16
.BB.LABEL.1_18:	; bb.i
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_seqctrl.c", 240
	di
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_seqctrl.c", 241
	movhi HIGHW1(#_u1_flag_inv0_motctrl), r0, r2
	st.b r0, LOWW(#_u1_flag_inv0_motctrl)[r2]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_seqctrl.c", 242
	movhi HIGHW1(#_u1_flag_inv0_offsetadjl), r0, r5
	mov 0x00000001, r2
	st.b r2, LOWW(#_u1_flag_inv0_offsetadjl)[r5]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_seqctrl.c", 243
	ei
.BB.LABEL.1_19:	; bb16.i.PartialDrain
	movhi HIGHW1(#_u1_seq_inv0_runctrl), r0, r5
	st.b r2, LOWW(#_u1_seq_inv0_runctrl)[r5]
.BB.LABEL.1_20:	; bb16.i
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_seqctrl.c", 287
	andi 0x000000FF, r2, r2
	cmp 0x0000000A, r2
	bnz9 .BB.LABEL.1_22
.BB.LABEL.1_21:	; if_then_bb22.i
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_seqctrl.c", 289
	movhi HIGHW1(#_u1_seq_inv0_runctrl), r0, r2
	st.b r0, LOWW(#_u1_seq_inv0_runctrl)[r2]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_seqctrl.c", 117
	movhi HIGHW1(#_u1_mode_inv0_main), r0, r2
	mov 0x00000002, r5
	st.b r5, LOWW(#_u1_mode_inv0_main)[r2]
.BB.LABEL.1_22:	; if_break_bb32
	movhi HIGHW1(#_u1_flag_inv0_sysctrl), r0, r2
	ld.bu LOWW(#_u1_flag_inv0_sysctrl)[r2], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.1_28
.BB.LABEL.1_23:	; if_then_bb38
	movhi HIGHW1(#_u1_mode_inv0_main), r0, r2
	mov 0x00000003, r5
	st.b r5, LOWW(#_u1_mode_inv0_main)[r2]
	br9 .BB.LABEL.1_28
.BB.LABEL.1_24:	; bb64
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_seqctrl.c", 312
	movhi HIGHW1(#_u1_seq_inv0_stopctrl), r0, r2
	ld.bu LOWW(#_u1_seq_inv0_stopctrl)[r2], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.1_26
.BB.LABEL.1_25:	; bb.i8
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_seqctrl.c", 319
	di
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_seqctrl.c", 320
	movhi HIGHW1(#_u1_flag_inv0_motctrl), r0, r2
	st.b r0, LOWW(#_u1_flag_inv0_motctrl)[r2]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_seqctrl.c", 321
	movhi HIGHW1(#_u1_flag_inv0_offsetadjl), r0, r2
	st.b r0, LOWW(#_u1_flag_inv0_offsetadjl)[r2]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_seqctrl.c", 322
	ei
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_seqctrl.c", 323
	movhi HIGHW1(#_u1_seq_inv0_stopctrl), r0, r5
	mov 0x0000000A, r2
	st.b r2, LOWW(#_u1_seq_inv0_stopctrl)[r5]
.BB.LABEL.1_26:	; bb4.i11
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_seqctrl.c", 340
	andi 0x000000FF, r2, r2
	cmp 0x0000000A, r2
	bnz9 .BB.LABEL.1_28
.BB.LABEL.1_27:	; if_then_bb.i12
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_seqctrl.c", 342
	movhi HIGHW1(#_u1_seq_inv0_stopctrl), r0, r2
	st.b r0, LOWW(#_u1_seq_inv0_stopctrl)[r2]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_seqctrl.c", 163
	movhi HIGHW1(#_u1_mode_inv0_main), r0, r2
	st.b r0, LOWW(#_u1_mode_inv0_main)[r2]
.BB.LABEL.1_28:	; if_break_bb72
	movhi HIGHW1(#_u4_flag_inv0_error), r0, r2
	ld.w LOWW(#_u4_flag_inv0_error)[r2], r2
	movea 0x00000014, r0, r5
	cmp 0x00000000, r2
	movhi HIGHW1(#_u1_mode_inv0_main), r0, r2
	bnz9 .BB.LABEL.1_33
	br9 .BB.LABEL.1_34
.BB.LABEL.1_29:	; bb80
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_seqctrl.c", 365
	movhi HIGHW1(#_u1_seq_inv0_errctrl), r0, r2
	ld.bu LOWW(#_u1_seq_inv0_errctrl)[r2], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.1_31
.BB.LABEL.1_30:	; bb.i3
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_seqctrl.c", 372
	di
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_seqctrl.c", 373
	movhi HIGHW1(#_u1_flag_inv0_motctrl), r0, r2
	st.b r0, LOWW(#_u1_flag_inv0_motctrl)[r2]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_seqctrl.c", 374
	movhi HIGHW1(#_u1_flag_inv0_offsetadjl), r0, r2
	st.b r0, LOWW(#_u1_flag_inv0_offsetadjl)[r2]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_seqctrl.c", 375
	ei
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_seqctrl.c", 377
	movhi HIGHW1(#_u1_seq_inv0_errctrl), r0, r5
	mov 0x0000000A, r2
	st.b r2, LOWW(#_u1_seq_inv0_errctrl)[r5]
.BB.LABEL.1_31:	; bb4.i
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_seqctrl.c", 395
	andi 0x000000FF, r2, r2
	cmp 0x0000000A, r2
	bnz9 .BB.LABEL.1_34
.BB.LABEL.1_32:	; if_then_bb.i4
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_seqctrl.c", 397
	movhi HIGHW1(#_u1_seq_inv0_errctrl), r0, r2
	st.b r0, LOWW(#_u1_seq_inv0_errctrl)[r2]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_seqctrl.c", 183
	movhi HIGHW1(#_u1_mode_inv0_main), r0, r2
	movea 0x00000015, r0, r5
.BB.LABEL.1_33:	; if_then_bb.i4
	st.b r5, LOWW(#_u1_mode_inv0_main)[r2]
.BB.LABEL.1_34:	; bb99
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_seqctrl.c", 209
	movhi HIGHW1(#_u1_mode_inv0_main), r0, r2
	ld.bu LOWW(#_u1_mode_inv0_main)[r2], r2
	movhi HIGHW1(#_u1_mode_inv0_main_tmp), r0, r5
	ld.bu LOWW(#_u1_mode_inv0_main_tmp)[r5], r5
	cmp r5, r2
	bz9 .BB.LABEL.1_36
.BB.LABEL.1_35:	; if_then_bb107
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_seqctrl.c", 451
	movhi HIGHW1(#_u1_seq_inv0_runctrl), r0, r5
	st.b r0, LOWW(#_u1_seq_inv0_runctrl)[r5]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_seqctrl.c", 452
	movhi HIGHW1(#_u1_seq_inv0_stopctrl), r0, r5
	st.b r0, LOWW(#_u1_seq_inv0_stopctrl)[r5]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_seqctrl.c", 453
	movhi HIGHW1(#_u1_seq_inv0_errctrl), r0, r5
	st.b r0, LOWW(#_u1_seq_inv0_errctrl)[r5]
.BB.LABEL.1_36:	; if_break_bb109
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_seqctrl.c", 216
	movhi HIGHW1(#_u1_mode_inv0_main_tmp), r0, r5
	st.b r2, LOWW(#_u1_mode_inv0_main_tmp)[r5]
	dispose 0x00000000, 0x00000001, [r31]
_u1_fi_1ms_inv0_seq_runctrl:
	.stack _u1_fi_1ms_inv0_seq_runctrl = 0
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_seqctrl.c", 233
	movhi HIGHW1(#_u1_seq_inv0_runctrl), r0, r2
	ld.bu LOWW(#_u1_seq_inv0_runctrl)[r2], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.2_6
.BB.LABEL.2_1:	; entry
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.2_8
.BB.LABEL.2_2:	; bb3
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_seqctrl.c", 255
	movhi HIGHW1(#_u1_flag_inv0_offsetadj_ok), r0, r5
	ld.bu LOWW(#_u1_flag_inv0_offsetadj_ok)[r5], r5
	cmp 0x00000001, r5
	bnz9 .BB.LABEL.2_8
.BB.LABEL.2_3:	; if_then_bb
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_seqctrl.c", 257
	movhi HIGHW1(#_u1_flag_inv0_offsetadjl), r0, r2
	st.b r0, LOWW(#_u1_flag_inv0_offsetadjl)[r2]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_seqctrl.c", 259
	movhi HIGHW1(#_u4_flag_inv0_error), r0, r2
	ld.w LOWW(#_u4_flag_inv0_error)[r2], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.2_5
.BB.LABEL.2_4:	; if_then_bb.bb16.PartialDrain_crit_edge
	mov 0x0000000A, r2
	br9 .BB.LABEL.2_7
.BB.LABEL.2_5:	; if_then_bb12
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_seqctrl.c", 261
	di
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_seqctrl.c", 262
	movhi HIGHW1(#_u1_flag_inv0_motctrl), r0, r2
	mov 0x00000001, r5
	st.b r5, LOWW(#_u1_flag_inv0_motctrl)[r2]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_seqctrl.c", 263
	ei
	br9 .BB.LABEL.2_4
.BB.LABEL.2_6:	; bb
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_seqctrl.c", 240
	di
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_seqctrl.c", 241
	movhi HIGHW1(#_u1_flag_inv0_motctrl), r0, r2
	st.b r0, LOWW(#_u1_flag_inv0_motctrl)[r2]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_seqctrl.c", 242
	movhi HIGHW1(#_u1_flag_inv0_offsetadjl), r0, r5
	mov 0x00000001, r2
	st.b r2, LOWW(#_u1_flag_inv0_offsetadjl)[r5]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_seqctrl.c", 243
	ei
.BB.LABEL.2_7:	; bb16.PartialDrain
	movhi HIGHW1(#_u1_seq_inv0_runctrl), r0, r5
	st.b r2, LOWW(#_u1_seq_inv0_runctrl)[r5]
.BB.LABEL.2_8:	; bb16
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_seqctrl.c", 287
	andi 0x000000FF, r2, r2
	cmp 0x0000000A, r2
	bnz9 .BB.LABEL.2_10
.BB.LABEL.2_9:	; if_then_bb22
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_seqctrl.c", 289
	movhi HIGHW1(#_u1_seq_inv0_runctrl), r0, r2
	st.b r0, LOWW(#_u1_seq_inv0_runctrl)[r2]
	mov 0x00000001, r10
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_seqctrl.c", 290
	jmp [r31]
.BB.LABEL.2_10:	; bb27
	mov 0x00000000, r10
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_seqctrl.c", 298
	jmp [r31]
_u1_fi_1ms_inv0_seq_stopctrl:
	.stack _u1_fi_1ms_inv0_seq_stopctrl = 0
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_seqctrl.c", 312
	movhi HIGHW1(#_u1_seq_inv0_stopctrl), r0, r2
	ld.bu LOWW(#_u1_seq_inv0_stopctrl)[r2], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.3_2
.BB.LABEL.3_1:	; bb
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_seqctrl.c", 319
	di
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_seqctrl.c", 320
	movhi HIGHW1(#_u1_flag_inv0_motctrl), r0, r2
	st.b r0, LOWW(#_u1_flag_inv0_motctrl)[r2]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_seqctrl.c", 321
	movhi HIGHW1(#_u1_flag_inv0_offsetadjl), r0, r2
	st.b r0, LOWW(#_u1_flag_inv0_offsetadjl)[r2]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_seqctrl.c", 322
	ei
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_seqctrl.c", 323
	movhi HIGHW1(#_u1_seq_inv0_stopctrl), r0, r5
	mov 0x0000000A, r2
	st.b r2, LOWW(#_u1_seq_inv0_stopctrl)[r5]
.BB.LABEL.3_2:	; bb4
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_seqctrl.c", 340
	andi 0x000000FF, r2, r2
	cmp 0x0000000A, r2
	bnz9 .BB.LABEL.3_4
.BB.LABEL.3_3:	; if_then_bb
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_seqctrl.c", 342
	movhi HIGHW1(#_u1_seq_inv0_stopctrl), r0, r2
	st.b r0, LOWW(#_u1_seq_inv0_stopctrl)[r2]
	mov 0x00000001, r10
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_seqctrl.c", 343
	jmp [r31]
.BB.LABEL.3_4:	; bb11
	mov 0x00000000, r10
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_seqctrl.c", 350
	jmp [r31]
_u1_fi_1ms_inv0_seq_errctrl:
	.stack _u1_fi_1ms_inv0_seq_errctrl = 0
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_seqctrl.c", 365
	movhi HIGHW1(#_u1_seq_inv0_errctrl), r0, r2
	ld.bu LOWW(#_u1_seq_inv0_errctrl)[r2], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.4_2
.BB.LABEL.4_1:	; bb
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_seqctrl.c", 372
	di
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_seqctrl.c", 373
	movhi HIGHW1(#_u1_flag_inv0_motctrl), r0, r2
	st.b r0, LOWW(#_u1_flag_inv0_motctrl)[r2]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_seqctrl.c", 374
	movhi HIGHW1(#_u1_flag_inv0_offsetadjl), r0, r2
	st.b r0, LOWW(#_u1_flag_inv0_offsetadjl)[r2]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_seqctrl.c", 375
	ei
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_seqctrl.c", 377
	movhi HIGHW1(#_u1_seq_inv0_errctrl), r0, r5
	mov 0x0000000A, r2
	st.b r2, LOWW(#_u1_seq_inv0_errctrl)[r5]
.BB.LABEL.4_2:	; bb4
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_seqctrl.c", 395
	andi 0x000000FF, r2, r2
	cmp 0x0000000A, r2
	bnz9 .BB.LABEL.4_4
.BB.LABEL.4_3:	; if_then_bb
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_seqctrl.c", 397
	movhi HIGHW1(#_u1_seq_inv0_errctrl), r0, r2
	st.b r0, LOWW(#_u1_seq_inv0_errctrl)[r2]
	mov 0x00000001, r10
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_seqctrl.c", 398
	jmp [r31]
.BB.LABEL.4_4:	; bb11
	mov 0x00000000, r10
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_seqctrl.c", 406
	jmp [r31]
_fb_1ms_inv0_seq_flaginit:
	.stack _fb_1ms_inv0_seq_flaginit = 0
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_seqctrl.c", 422
	movhi HIGHW1(#_u1_mode_inv0_main), r0, r2
	st.b r0, LOWW(#_u1_mode_inv0_main)[r2]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_seqctrl.c", 423
	movhi HIGHW1(#_u1_mode_inv0_main_tmp), r0, r2
	st.b r0, LOWW(#_u1_mode_inv0_main_tmp)[r2]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_seqctrl.c", 429
	movhi HIGHW1(#_u1_flag_inv0_sysctrl), r0, r2
	st.b r0, LOWW(#_u1_flag_inv0_sysctrl)[r2]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_seqctrl.c", 431
	movhi HIGHW1(#_u1_flag_inv0_motctrl), r0, r2
	st.b r0, LOWW(#_u1_flag_inv0_motctrl)[r2]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_seqctrl.c", 432
	movhi HIGHW1(#_u1_flag_inv0_offsetadjl), r0, r2
	st.b r0, LOWW(#_u1_flag_inv0_offsetadjl)[r2]
	jmp [r31]
_fb_1ms_inv0_seq_modeinit:
	.stack _fb_1ms_inv0_seq_modeinit = 0
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_seqctrl.c", 451
	movhi HIGHW1(#_u1_seq_inv0_runctrl), r0, r2
	st.b r0, LOWW(#_u1_seq_inv0_runctrl)[r2]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_seqctrl.c", 452
	movhi HIGHW1(#_u1_seq_inv0_stopctrl), r0, r2
	st.b r0, LOWW(#_u1_seq_inv0_stopctrl)[r2]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_seqctrl.c", 453
	movhi HIGHW1(#_u1_seq_inv0_errctrl), r0, r2
	st.b r0, LOWW(#_u1_seq_inv0_errctrl)[r2]
	jmp [r31]
	.section .bss, bss
_u1_mode_inv0_main:
	.ds (1)
_u1_mode_inv0_main_tmp:
	.ds (1)
_u1_seq_inv0_runctrl:
	.ds (1)
_u1_seq_inv0_stopctrl:
	.ds (1)
_u1_seq_inv0_errctrl:
	.ds (1)
_u1_flag_inv0_sysctrl:
	.ds (1)
_u1_flag_inv0_motctrl:
	.ds (1)
_u1_flag_inv0_offsetadjl:
	.ds (1)
