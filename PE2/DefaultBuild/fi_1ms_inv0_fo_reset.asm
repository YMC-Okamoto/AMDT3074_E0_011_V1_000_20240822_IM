#CC-RH Compiler RH850 Assembler Source
#@	CC-RH Version : V1.03.00 [21 Aug 2015]
#@	Command : src\fi_1ms_inv0_fo_reset.c -Xobj_path=DefaultBuild -Xcommon=rh850 -Xcpu=g3m -c -g -Ospeed -Oinline_size -Isrc -I..\Common -D__CLK_HSB=80,__CLK_LSB=40,__CLKC_HSB=80,__CLK_CLSB=40 -Xasm_path=DefaultBuild
#@	compiled at Mon May 01 22:14:30 2017

	.file "src\fi_1ms_inv0_fo_reset.c"

	$reg_mode 32

	.public _u4_cnt_inv0_gdreset, 4
	.public _u1_mode_inv0_gdreset, 4
	.public _fi_1ms_inv0_fo_reset

	.section .text, text
_fi_1ms_inv0_fo_reset:
	.stack _fi_1ms_inv0_fo_reset = 0
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_fo_reset.c", 51
	cmp 0x00000001, r6
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_fo_reset.c", 55
	bnz9 .BB.LABEL.1_2
.BB.LABEL.1_1:	; if_then_bb
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_fo_reset.c", 57
	movhi HIGHW1(#_u4_cnt_inv0_gdreset), r0, r2
	st.w r0, LOWW(#_u4_cnt_inv0_gdreset)[r2]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_fo_reset.c", 58
	movhi HIGHW1(#_u1_mode_inv0_gdreset), r0, r2
	st.w r0, LOWW(#_u1_mode_inv0_gdreset)[r2]
	mov 0x00000000, r10
	jmp [r31]
.BB.LABEL.1_2:	; if_else_bb
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_fo_reset.c", 62
	movhi HIGHW1(#_u1_mode_inv0_gdreset), r0, r2
	ld.w LOWW(#_u1_mode_inv0_gdreset)[r2], r2
	cmp 0x00000003, r2
	bh9 .BB.LABEL.1_6
.BB.LABEL.1_3:	; if_else_bb
	shl 0x00000001, r2
	jmp #.SWITCH.LABEL.1_15[r2]
.SWITCH.LABEL.1_15:
	br9 .BB.LABEL.1_4
	br9 .BB.LABEL.1_7
	br9 .BB.LABEL.1_9
	br9 .BB.LABEL.1_14
.SWITCH.LABEL.1_15.END:
.BB.LABEL.1_4:	; bb
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_fo_reset.c", 65
	movhi HIGHW1(#_u4_cnt_inv0_gdreset), r0, r2
	st.w r0, LOWW(#_u4_cnt_inv0_gdreset)[r2]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_fo_reset.c", 67
	movhi 0x0000FFC1, r0, r2
	ld.hu 0x0000008C[r2], r2
	andi 0x00000001, r2, r0
	bnz9 .BB.LABEL.1_14
.BB.LABEL.1_5:	; if_then_bb15
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_fo_reset.c", 69
	movhi 0x0000FFC1, r0, r2
	movhi 0x00000040, r0, r5
	st.w r5, 0x000000C4[r2]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_fo_reset.c", 70
	movhi HIGHW1(#_u1_mode_inv0_gdreset), r0, r2
	mov 0x00000001, r5
	br9 .BB.LABEL.1_12
.BB.LABEL.1_6:	; bb49
	movea 0x000000FF, r0, r10
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_fo_reset.c", 108
	jmp [r31]
.BB.LABEL.1_7:	; bb17
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_fo_reset.c", 76
	movhi HIGHW1(#_u4_cnt_inv0_gdreset), r0, r2
	ld.w LOWW(#_u4_cnt_inv0_gdreset)[r2], r5
	movea 0x000000C8, r0, r6
	add 0x00000001, r5
	st.w r5, LOWW(#_u4_cnt_inv0_gdreset)[r2]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_fo_reset.c", 78
	cmp r6, r5
	bl9 .BB.LABEL.1_14
.BB.LABEL.1_8:	; if_then_bb24
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_fo_reset.c", 80
	movhi 0x0000FFC1, r0, r2
	mov 0x00400040, r5
	st.w r5, 0x000000C4[r2]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_fo_reset.c", 81
	movhi HIGHW1(#_u4_cnt_inv0_gdreset), r0, r2
	st.w r0, LOWW(#_u4_cnt_inv0_gdreset)[r2]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_fo_reset.c", 82
	movhi HIGHW1(#_u1_mode_inv0_gdreset), r0, r2
	mov 0x00000002, r5
	br9 .BB.LABEL.1_12
.BB.LABEL.1_9:	; bb27
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_fo_reset.c", 88
	movhi HIGHW1(#_u4_cnt_inv0_gdreset), r0, r2
	ld.w LOWW(#_u4_cnt_inv0_gdreset)[r2], r5
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_fo_reset.c", 90
	movhi 0x0000FFC1, r0, r6
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_fo_reset.c", 88
	add 0x00000001, r5
	st.w r5, LOWW(#_u4_cnt_inv0_gdreset)[r2]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_fo_reset.c", 90
	ld.hu 0x0000008C[r6], r2
	andi 0x00000001, r2, r0
	bnz9 .BB.LABEL.1_13
.BB.LABEL.1_10:	; if_else_bb39
	movea 0x000000C8, r0, r2
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_fo_reset.c", 96
	cmp r2, r5
	bl9 .BB.LABEL.1_14
.BB.LABEL.1_11:	; if_then_bb44
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_fo_reset.c", 98
	movhi HIGHW1(#_u4_cnt_inv0_gdreset), r0, r2
	st.w r0, LOWW(#_u4_cnt_inv0_gdreset)[r2]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_fo_reset.c", 99
	movhi HIGHW1(#_u1_mode_inv0_gdreset), r0, r2
	movea 0x000000FF, r0, r5
.BB.LABEL.1_12:	; if_then_bb44
	st.w r5, LOWW(#_u1_mode_inv0_gdreset)[r2]
	mov 0x00000000, r10
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_fo_reset.c", 114
	jmp [r31]
.BB.LABEL.1_13:	; if_then_bb38
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_fo_reset.c", 92
	movhi HIGHW1(#_u4_cnt_inv0_gdreset), r0, r2
	st.w r0, LOWW(#_u4_cnt_inv0_gdreset)[r2]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_fo_reset.c", 93
	movhi HIGHW1(#_u1_mode_inv0_gdreset), r0, r2
	st.w r0, LOWW(#_u1_mode_inv0_gdreset)[r2]
	mov 0x00000001, r10
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_fo_reset.c", 94
	jmp [r31]
.BB.LABEL.1_14:	; if_break_bb51
	mov 0x00000000, r10
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_fo_reset.c", 114
	jmp [r31]
	.section .bss, bss
	.align 4
_u4_cnt_inv0_gdreset:
	.ds (4)
	.align 4
_u1_mode_inv0_gdreset:
	.ds (4)
