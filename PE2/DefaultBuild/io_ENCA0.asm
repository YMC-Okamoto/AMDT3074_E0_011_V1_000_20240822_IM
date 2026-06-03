#CC-RH Compiler RH850 Assembler Source
#@	CC-RH Version : V2.06.00  [28 Nov 2023]
#@	Command : ..\Common\iolib\io_ENCA0.c ..\PE1\src\fb_therm_tbl_module.c ..\PE1\src\fi_pwm_vctrlerrtbl.c -Xobj_path=DefaultBuild -Xcpu=g3m -g -g_line -Ospeed -Oinline_size -I..\PE1\src -Isrc -I..\Common -D__CLK_HSB=80,__CLK_LSB=40,__CLKC_HSB=80,__CLK_CLSB=40 -use_recipf -Xasm_path=DefaultBuild -c
#@	compiled at Wed Jun 03 16:59:19 2026

	.file "..\Common\iolib\io_ENCA0.c"

	$reg_mode 32
	.dbl_size 8

	.public ___u2_enca0_cnt_max, 2
	.public _enca0_init
	.public _u2_enca0_cnt_read
	.public _enca0_stop
	.public _enca0_start
	.public _enca0_cnt_set
	.public _enca0_ccr1_set
	.public _enca0_init_interrupt

	.section .text, text
_enca0_init:
	.stack _enca0_init = 0
	.line "C:/Users/0488813/Documents/GitHub/AMDT3074_E0_011_V1_000_20240822_IM/Common/iolib/io_ENCA0.c", 37
	movhi 0x0000FFE8, r0, r2
	.line "C:/Users/0488813/Documents/GitHub/AMDT3074_E0_011_V1_000_20240822_IM/Common/iolib/io_ENCA0.c", 40
	set1 0x00000000, 0x0000001C[r2]
	.line "C:/Users/0488813/Documents/GitHub/AMDT3074_E0_011_V1_000_20240822_IM/Common/iolib/io_ENCA0.c", 44
	ld.h 0x00000040[r2], r5
	ori 0x00008000, r5, r5
	st.h r5, 0x00000040[r2]
	.line "C:/Users/0488813/Documents/GitHub/AMDT3074_E0_011_V1_000_20240822_IM/Common/iolib/io_ENCA0.c", 49
	ld.hu 0x00000040[r2], r5
	andi 0x0000BFFF, r5, r5
	st.h r5, 0x00000040[r2]
	.line "C:/Users/0488813/Documents/GitHub/AMDT3074_E0_011_V1_000_20240822_IM/Common/iolib/io_ENCA0.c", 57
	ld.hu 0x00000040[r2], r5
	andi 0x0000FDFF, r5, r5
	st.h r5, 0x00000040[r2]
	.line "C:/Users/0488813/Documents/GitHub/AMDT3074_E0_011_V1_000_20240822_IM/Common/iolib/io_ENCA0.c", 58
	ld.hu 0x00000040[r2], r5
	andi 0x0000FEFF, r5, r5
	st.h r5, 0x00000040[r2]
	.line "C:/Users/0488813/Documents/GitHub/AMDT3074_E0_011_V1_000_20240822_IM/Common/iolib/io_ENCA0.c", 60
	ld.hu 0x00000040[r2], r5
	andi 0x0000FF7F, r5, r5
	st.h r5, 0x00000040[r2]
	.line "C:/Users/0488813/Documents/GitHub/AMDT3074_E0_011_V1_000_20240822_IM/Common/iolib/io_ENCA0.c", 65
	ld.h 0x00000040[r2], r5
	.line "C:/Users/0488813/Documents/GitHub/AMDT3074_E0_011_V1_000_20240822_IM/Common/iolib/io_ENCA0.c", 109
	movhi HIGHW1(#___u2_enca0_cnt_max), r0, r8
	.line "C:/Users/0488813/Documents/GitHub/AMDT3074_E0_011_V1_000_20240822_IM/Common/iolib/io_ENCA0.c", 65
	ori 0x00000010, r5, r5
	st.h r5, 0x00000040[r2]
	.line "C:/Users/0488813/Documents/GitHub/AMDT3074_E0_011_V1_000_20240822_IM/Common/iolib/io_ENCA0.c", 69
	ld.hu 0x00000040[r2], r5
	andi 0x0000FFF7, r5, r5
	st.h r5, 0x00000040[r2]
	.line "C:/Users/0488813/Documents/GitHub/AMDT3074_E0_011_V1_000_20240822_IM/Common/iolib/io_ENCA0.c", 73
	ld.h 0x00000040[r2], r5
	ori 0x00000004, r5, r5
	st.h r5, 0x00000040[r2]
	.line "C:/Users/0488813/Documents/GitHub/AMDT3074_E0_011_V1_000_20240822_IM/Common/iolib/io_ENCA0.c", 78
	ld.hu 0x00000040[r2], r5
	andi 0x0000FFFC, r5, r5
	st.h r5, 0x00000040[r2]
	.line "C:/Users/0488813/Documents/GitHub/AMDT3074_E0_011_V1_000_20240822_IM/Common/iolib/io_ENCA0.c", 82
	ld.bu 0x00000020[r2], r5
	andi 0x000000F3, r5, r5
	st.b r5, 0x00000020[r2]
	.line "C:/Users/0488813/Documents/GitHub/AMDT3074_E0_011_V1_000_20240822_IM/Common/iolib/io_ENCA0.c", 86
	ld.bu 0x00000020[r2], r5
	andi 0x000000FC, r5, r5
	st.b r5, 0x00000020[r2]
	.line "C:/Users/0488813/Documents/GitHub/AMDT3074_E0_011_V1_000_20240822_IM/Common/iolib/io_ENCA0.c", 91
	clr1 0x00000007, 0x00000044[r2]
	.line "C:/Users/0488813/Documents/GitHub/AMDT3074_E0_011_V1_000_20240822_IM/Common/iolib/io_ENCA0.c", 92
	clr1 0x00000006, 0x00000044[r2]
	.line "C:/Users/0488813/Documents/GitHub/AMDT3074_E0_011_V1_000_20240822_IM/Common/iolib/io_ENCA0.c", 94
	clr1 0x00000005, 0x00000044[r2]
	.line "C:/Users/0488813/Documents/GitHub/AMDT3074_E0_011_V1_000_20240822_IM/Common/iolib/io_ENCA0.c", 96
	clr1 0x00000004, 0x00000044[r2]
	.line "C:/Users/0488813/Documents/GitHub/AMDT3074_E0_011_V1_000_20240822_IM/Common/iolib/io_ENCA0.c", 99
	ld.b 0x00000044[r2], r5
	ori 0x00000004, r5, r5
	andi 0x000000F7, r5, r5
	st.b r5, 0x00000044[r2]
	.line "C:/Users/0488813/Documents/GitHub/AMDT3074_E0_011_V1_000_20240822_IM/Common/iolib/io_ENCA0.c", 103
	ld.b 0x00000044[r2], r5
	ori 0x00000001, r5, r5
	andi 0x000000FD, r5, r5
	.line "C:/Users/0488813/Documents/GitHub/AMDT3074_E0_011_V1_000_20240822_IM/Common/iolib/io_ENCA0.c", 118
	cmp 0x00000000, r7
	.line "C:/Users/0488813/Documents/GitHub/AMDT3074_E0_011_V1_000_20240822_IM/Common/iolib/io_ENCA0.c", 103
	st.b r5, 0x00000044[r2]
	.line "C:/Users/0488813/Documents/GitHub/AMDT3074_E0_011_V1_000_20240822_IM/Common/iolib/io_ENCA0.c", 108
	st.h r6, 0x00000000[r2]
	.line "C:/Users/0488813/Documents/GitHub/AMDT3074_E0_011_V1_000_20240822_IM/Common/iolib/io_ENCA0.c", 109
	st.h r6, LOWW(#___u2_enca0_cnt_max)[r8]
	.line "C:/Users/0488813/Documents/GitHub/AMDT3074_E0_011_V1_000_20240822_IM/Common/iolib/io_ENCA0.c", 112
	st.h r0, 0x00000004[r2]
	.line "C:/Users/0488813/Documents/GitHub/AMDT3074_E0_011_V1_000_20240822_IM/Common/iolib/io_ENCA0.c", 115
	st.h r0, 0x00000008[r2]
	.line "C:/Users/0488813/Documents/GitHub/AMDT3074_E0_011_V1_000_20240822_IM/Common/iolib/io_ENCA0.c", 118
	bz9 .BB.LABEL.1_4
.BB.LABEL.1_1:	; entry
	.line "C:/Users/0488813/Documents/GitHub/AMDT3074_E0_011_V1_000_20240822_IM/Common/iolib/io_ENCA0.c", 0
	add 0xFFFFFFFF, r7
	bz9 .BB.LABEL.1_5
.BB.LABEL.1_2:	; entry
	cmp 0x00000002, r7
	bz9 .BB.LABEL.1_6
.BB.LABEL.1_3:	; return
	.line "C:/Users/0488813/Documents/GitHub/AMDT3074_E0_011_V1_000_20240822_IM/Common/iolib/io_ENCA0.c", 152
	jmp [r31]
.BB.LABEL.1_4:	; switch_clause_bb
	.line "C:/Users/0488813/Documents/GitHub/AMDT3074_E0_011_V1_000_20240822_IM/Common/iolib/io_ENCA0.c", 121
	movhi 0x0000FFDD, r0, r2
	ld.w 0x000000E8[r2], r5
	mov 0xFFBFFFFF, r6
	mov 0xFFFDFFFF, r7
	and r6, r5
	mov 0xFFFFFFFD, r9
	st.w r5, 0x000000E8[r2]
	mov 0xFFFFFFFE, r10
	.line "C:/Users/0488813/Documents/GitHub/AMDT3074_E0_011_V1_000_20240822_IM/Common/iolib/io_ENCA0.c", 122
	ld.w 0x000000E8[r2], r5
	.line "C:/Users/0488813/Documents/GitHub/AMDT3074_E0_011_V1_000_20240822_IM/Common/iolib/io_ENCA0.c", 126
	movhi 0x0000FFC1, r0, r6
	mov 0xFFFEFFFF, r8
	movea 0x00000052, r0, r11
	.line "C:/Users/0488813/Documents/GitHub/AMDT3074_E0_011_V1_000_20240822_IM/Common/iolib/io_ENCA0.c", 122
	and r7, r5
	st.w r5, 0x000000E8[r2]
	.line "C:/Users/0488813/Documents/GitHub/AMDT3074_E0_011_V1_000_20240822_IM/Common/iolib/io_ENCA0.c", 123
	ld.w 0x000000E8[r2], r5
	and r8, r5
	st.w r5, 0x000000E8[r2]
	.line "C:/Users/0488813/Documents/GitHub/AMDT3074_E0_011_V1_000_20240822_IM/Common/iolib/io_ENCA0.c", 124
	ld.w 0x000000E8[r2], r5
	and r9, r5
	st.w r5, 0x000000E8[r2]
	.line "C:/Users/0488813/Documents/GitHub/AMDT3074_E0_011_V1_000_20240822_IM/Common/iolib/io_ENCA0.c", 125
	ld.w 0x000000E8[r2], r5
	and r10, r5
	st.w r5, 0x000000E8[r2]
	.line "C:/Users/0488813/Documents/GitHub/AMDT3074_E0_011_V1_000_20240822_IM/Common/iolib/io_ENCA0.c", 126
	st.w r11, 0x00002018[r6]
	.line "C:/Users/0488813/Documents/GitHub/AMDT3074_E0_011_V1_000_20240822_IM/Common/iolib/io_ENCA0.c", 127
	st.w r11, 0x0000201C[r6]
	.line "C:/Users/0488813/Documents/GitHub/AMDT3074_E0_011_V1_000_20240822_IM/Common/iolib/io_ENCA0.c", 128
	st.w r11, 0x00002020[r6]
	jmp [r31]
.BB.LABEL.1_5:	; switch_clause_bb60
	.line "C:/Users/0488813/Documents/GitHub/AMDT3074_E0_011_V1_000_20240822_IM/Common/iolib/io_ENCA0.c", 131
	movhi 0x0000FFDD, r0, r2
	ld.w 0x000000E8[r2], r5
	mov 0xFFBFFFFF, r6
	mov 0xFFFDFFFF, r7
	and r6, r5
	movhi 0x00000001, r0, r8
	st.w r5, 0x000000E8[r2]
	mov 0xFFFFFFFD, r9
	.line "C:/Users/0488813/Documents/GitHub/AMDT3074_E0_011_V1_000_20240822_IM/Common/iolib/io_ENCA0.c", 132
	ld.w 0x000000E8[r2], r5
	mov 0xFFFFFFFE, r10
	and r7, r5
	st.w r5, 0x000000E8[r2]
	.line "C:/Users/0488813/Documents/GitHub/AMDT3074_E0_011_V1_000_20240822_IM/Common/iolib/io_ENCA0.c", 133
	ld.w 0x000000E8[r2], r5
	or r8, r5
	st.w r5, 0x000000E8[r2]
	.line "C:/Users/0488813/Documents/GitHub/AMDT3074_E0_011_V1_000_20240822_IM/Common/iolib/io_ENCA0.c", 134
	ld.w 0x000000E8[r2], r5
	and r9, r5
	st.w r5, 0x000000E8[r2]
	.line "C:/Users/0488813/Documents/GitHub/AMDT3074_E0_011_V1_000_20240822_IM/Common/iolib/io_ENCA0.c", 135
	ld.w 0x000000E8[r2], r5
	and r10, r5
	st.w r5, 0x000000E8[r2]
	jmp [r31]
.BB.LABEL.1_6:	; switch_clause_bb76
	.line "C:/Users/0488813/Documents/GitHub/AMDT3074_E0_011_V1_000_20240822_IM/Common/iolib/io_ENCA0.c", 138
	movhi 0x0000FFDD, r0, r2
	ld.w 0x000000E8[r2], r5
	movhi 0x00000040, r0, r6
	.line "C:/Users/0488813/Documents/GitHub/AMDT3074_E0_011_V1_000_20240822_IM/Common/iolib/io_ENCA0.c", 142
	movhi 0x0000FFC1, r0, r9
	mov 0xFFEFFFFF, r7
	.line "C:/Users/0488813/Documents/GitHub/AMDT3074_E0_011_V1_000_20240822_IM/Common/iolib/io_ENCA0.c", 138
	or r6, r5
	movea 0x00000052, r0, r10
	st.w r5, 0x000000E8[r2]
	.line "C:/Users/0488813/Documents/GitHub/AMDT3074_E0_011_V1_000_20240822_IM/Common/iolib/io_ENCA0.c", 139
	ld.w 0x000000E8[r2], r5
	mov 0xFFF7FFFF, r8
	and r7, r5
	st.w r5, 0x000000E8[r2]
	.line "C:/Users/0488813/Documents/GitHub/AMDT3074_E0_011_V1_000_20240822_IM/Common/iolib/io_ENCA0.c", 140
	ld.w 0x000000E8[r2], r5
	and r8, r5
	st.w r5, 0x000000E8[r2]
	.line "C:/Users/0488813/Documents/GitHub/AMDT3074_E0_011_V1_000_20240822_IM/Common/iolib/io_ENCA0.c", 142
	st.w r10, 0x0000212C[r9]
	.line "C:/Users/0488813/Documents/GitHub/AMDT3074_E0_011_V1_000_20240822_IM/Common/iolib/io_ENCA0.c", 143
	st.w r10, 0x00002130[r9]
	.line "C:/Users/0488813/Documents/GitHub/AMDT3074_E0_011_V1_000_20240822_IM/Common/iolib/io_ENCA0.c", 144
	st.w r10, 0x00002134[r9]
	jmp [r31]
_u2_enca0_cnt_read:
	.stack _u2_enca0_cnt_read = 0
	.line "C:/Users/0488813/Documents/GitHub/AMDT3074_E0_011_V1_000_20240822_IM/Common/iolib/io_ENCA0.c", 163
	movhi 0x0000FFE8, r0, r2
	.line "C:/Users/0488813/Documents/GitHub/AMDT3074_E0_011_V1_000_20240822_IM/Common/iolib/io_ENCA0.c", 167
	cmp 0x00000000, r6
	bnz9 .BB.LABEL.2_2
.BB.LABEL.2_1:	; if_then_bb
	.line "C:/Users/0488813/Documents/GitHub/AMDT3074_E0_011_V1_000_20240822_IM/Common/iolib/io_ENCA0.c", 169
	ld.hu 0x00000008[r2], r10
	jmp [r31]
.BB.LABEL.2_2:	; if_else_bb
	.line "C:/Users/0488813/Documents/GitHub/AMDT3074_E0_011_V1_000_20240822_IM/Common/iolib/io_ENCA0.c", 173
	ld.h 0x00000008[r2], r5
	.line "C:/Users/0488813/Documents/GitHub/AMDT3074_E0_011_V1_000_20240822_IM/Common/iolib/io_ENCA0.c", 178
	ld.h 0x00000000[r2], r5
	ld.h 0x00000008[r2], r2
	add 0x00000001, r5
	sub r2, r5
	andi 0x0000FFFF, r5, r10
	jmp [r31]
_enca0_stop:
	.stack _enca0_stop = 0
	.line "C:/Users/0488813/Documents/GitHub/AMDT3074_E0_011_V1_000_20240822_IM/Common/iolib/io_ENCA0.c", 185
	movhi 0x0000FFE8, r0, r2
	.line "C:/Users/0488813/Documents/GitHub/AMDT3074_E0_011_V1_000_20240822_IM/Common/iolib/io_ENCA0.c", 188
	set1 0x00000000, 0x0000001C[r2]
	jmp [r31]
_enca0_start:
	.stack _enca0_start = 0
	.line "C:/Users/0488813/Documents/GitHub/AMDT3074_E0_011_V1_000_20240822_IM/Common/iolib/io_ENCA0.c", 193
	movhi 0x0000FFE8, r0, r2
	.line "C:/Users/0488813/Documents/GitHub/AMDT3074_E0_011_V1_000_20240822_IM/Common/iolib/io_ENCA0.c", 196
	set1 0x00000000, 0x00000018[r2]
	jmp [r31]
_enca0_cnt_set:
	.stack _enca0_cnt_set = 0
	.line "C:/Users/0488813/Documents/GitHub/AMDT3074_E0_011_V1_000_20240822_IM/Common/iolib/io_ENCA0.c", 210
	movhi 0x0000FFE8, r0, r2
	.line "C:/Users/0488813/Documents/GitHub/AMDT3074_E0_011_V1_000_20240822_IM/Common/iolib/io_ENCA0.c", 212
	tst1 0x00000000, 0x00000014[r2]
	bnz9 .BB.LABEL.5_6
.BB.LABEL.5_1:	; if_then_bb
	.line "C:/Users/0488813/Documents/GitHub/AMDT3074_E0_011_V1_000_20240822_IM/Common/iolib/io_ENCA0.c", 0
	movhi 0x0000FFE8, r0, r2
	.line "C:/Users/0488813/Documents/GitHub/AMDT3074_E0_011_V1_000_20240822_IM/Common/iolib/io_ENCA0.c", 214
	cmp 0x00000000, r7
	bnz9 .BB.LABEL.5_3
.BB.LABEL.5_2:	; if_then_bb13
	.line "C:/Users/0488813/Documents/GitHub/AMDT3074_E0_011_V1_000_20240822_IM/Common/iolib/io_ENCA0.c", 216
	st.h r6, 0x00000008[r2]
	jmp [r31]
.BB.LABEL.5_3:	; if_else_bb
	.line "C:/Users/0488813/Documents/GitHub/AMDT3074_E0_011_V1_000_20240822_IM/Common/iolib/io_ENCA0.c", 220
	cmp 0x00000000, r6
	bnz9 .BB.LABEL.5_5
.BB.LABEL.5_4:	; if_then_bb20
	.line "C:/Users/0488813/Documents/GitHub/AMDT3074_E0_011_V1_000_20240822_IM/Common/iolib/io_ENCA0.c", 222
	st.h r0, 0x00000008[r2]
	jmp [r31]
.BB.LABEL.5_5:	; if_else_bb21
	.line "C:/Users/0488813/Documents/GitHub/AMDT3074_E0_011_V1_000_20240822_IM/Common/iolib/io_ENCA0.c", 226
	ld.h 0x00000000[r2], r5
	add 0xFFFFFFFF, r6
	sub r6, r5
	st.h r5, 0x00000008[r2]
.BB.LABEL.5_6:	; return
	.line "C:/Users/0488813/Documents/GitHub/AMDT3074_E0_011_V1_000_20240822_IM/Common/iolib/io_ENCA0.c", 231
	jmp [r31]
_enca0_ccr1_set:
	.stack _enca0_ccr1_set = 0
	.line "C:/Users/0488813/Documents/GitHub/AMDT3074_E0_011_V1_000_20240822_IM/Common/iolib/io_ENCA0.c", 243
	movhi 0x0000FFE8, r0, r2
	.line "C:/Users/0488813/Documents/GitHub/AMDT3074_E0_011_V1_000_20240822_IM/Common/iolib/io_ENCA0.c", 246
	cmp 0x00000000, r7
	bnz9 .BB.LABEL.6_2
.BB.LABEL.6_1:	; if_then_bb
	.line "C:/Users/0488813/Documents/GitHub/AMDT3074_E0_011_V1_000_20240822_IM/Common/iolib/io_ENCA0.c", 248
	st.h r6, 0x00000004[r2]
	jmp [r31]
.BB.LABEL.6_2:	; if_else_bb
	.line "C:/Users/0488813/Documents/GitHub/AMDT3074_E0_011_V1_000_20240822_IM/Common/iolib/io_ENCA0.c", 252
	cmp 0x00000000, r6
	bnz9 .BB.LABEL.6_4
.BB.LABEL.6_3:	; if_then_bb12
	.line "C:/Users/0488813/Documents/GitHub/AMDT3074_E0_011_V1_000_20240822_IM/Common/iolib/io_ENCA0.c", 254
	st.h r0, 0x00000004[r2]
	jmp [r31]
.BB.LABEL.6_4:	; if_else_bb13
	.line "C:/Users/0488813/Documents/GitHub/AMDT3074_E0_011_V1_000_20240822_IM/Common/iolib/io_ENCA0.c", 258
	ld.h 0x00000000[r2], r5
	add 0xFFFFFFFF, r6
	sub r6, r5
	st.h r5, 0x00000004[r2]
	jmp [r31]
_enca0_init_interrupt:
	.stack _enca0_init_interrupt = 0
	.line "C:/Users/0488813/Documents/GitHub/AMDT3074_E0_011_V1_000_20240822_IM/Common/iolib/io_ENCA0.c", 270
	ld.w 0xFFFFB9DC[r0], r2
	.line "C:/Users/0488813/Documents/GitHub/AMDT3074_E0_011_V1_000_20240822_IM/Common/iolib/io_ENCA0.c", 273
	cmp 0x00000002, r7
	bnz9 .BB.LABEL.7_2
.BB.LABEL.7_1:	; if_then_bb
	.line "C:/Users/0488813/Documents/GitHub/AMDT3074_E0_011_V1_000_20240822_IM/Common/iolib/io_ENCA0.c", 0
	movhi 0x00000001, r0, r5
	.line "C:/Users/0488813/Documents/GitHub/AMDT3074_E0_011_V1_000_20240822_IM/Common/iolib/io_ENCA0.c", 275
	or r5, r2
	mov 0xFFFDFFFF, r7
	and r7, r2
	mov 0xFFFFFFFA, r8
	st.w r2, 0xFFFFB9DC[r0]
	.line "C:/Users/0488813/Documents/GitHub/AMDT3074_E0_011_V1_000_20240822_IM/Common/iolib/io_ENCA0.c", 276
	ld.w 0xFFFFB9DC[r0], r2
	ori 0x00000002, r2, r2
	and r8, r2
	br9 .BB.LABEL.7_3
.BB.LABEL.7_2:	; if_else_bb
	.line "C:/Users/0488813/Documents/GitHub/AMDT3074_E0_011_V1_000_20240822_IM/Common/iolib/io_ENCA0.c", 0
	mov 0xFFFCFFFF, r5
	.line "C:/Users/0488813/Documents/GitHub/AMDT3074_E0_011_V1_000_20240822_IM/Common/iolib/io_ENCA0.c", 280
	and r5, r2
	mov 0xFFFFFFF9, r7
	st.w r2, 0xFFFFB9DC[r0]
	.line "C:/Users/0488813/Documents/GitHub/AMDT3074_E0_011_V1_000_20240822_IM/Common/iolib/io_ENCA0.c", 281
	ld.w 0xFFFFB9DC[r0], r2
	ori 0x00000001, r2, r2
	and r7, r2
.BB.LABEL.7_3:	; if_break_bb
	.line "C:/Users/0488813/Documents/GitHub/AMDT3074_E0_011_V1_000_20240822_IM/Common/iolib/io_ENCA0.c", 0
	st.w r2, 0xFFFFB9DC[r0]
	.line "C:/Users/0488813/Documents/GitHub/AMDT3074_E0_011_V1_000_20240822_IM/Common/iolib/io_ENCA0.c", 284
	cmp 0x0000000F, r6
	bgt9 .BB.LABEL.7_5
.BB.LABEL.7_4:	; if_then_bb23
	.line "C:/Users/0488813/Documents/GitHub/AMDT3074_E0_011_V1_000_20240822_IM/Common/iolib/io_ENCA0.c", 286
	clr1 0x00000004, 0xFFFFB0EF[r0]
	.line "C:/Users/0488813/Documents/GitHub/AMDT3074_E0_011_V1_000_20240822_IM/Common/iolib/io_ENCA0.c", 287
	ld.bu 0xFFFFB0EE[r0], r2
	andi 0x0000000F, r6, r5
	andi 0x000000F0, r2, r2
	or r5, r2
	st.b r2, 0xFFFFB0EE[r0]
	.line "C:/Users/0488813/Documents/GitHub/AMDT3074_E0_011_V1_000_20240822_IM/Common/iolib/io_ENCA0.c", 288
	set1 0x00000006, 0xFFFFB0EE[r0]
	.line "C:/Users/0488813/Documents/GitHub/AMDT3074_E0_011_V1_000_20240822_IM/Common/iolib/io_ENCA0.c", 290
	clr1 0x00000007, 0xFFFFB0EE[r0]
	jmp [r31]
.BB.LABEL.7_5:	; if_else_bb29
	.line "C:/Users/0488813/Documents/GitHub/AMDT3074_E0_011_V1_000_20240822_IM/Common/iolib/io_ENCA0.c", 294
	set1 0x00000007, 0xFFFFB0EE[r0]
	jmp [r31]
	.section .bss, bss
	.align 2
___u2_enca0_cnt_max:
	.ds (2)
