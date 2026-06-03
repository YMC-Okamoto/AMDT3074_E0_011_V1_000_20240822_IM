#CC-RH Compiler RH850 Assembler Source
#@	CC-RH Version : V2.06.00  [28 Nov 2023]
#@	Command : src\fpmsm_main.c src\fi_1ms_int.c src\fi_20us_int.c src\fi_enc1_int.c src\fi_pwm_int.c ..\PE1\src\fb_therm_tbl_module.c ..\PE1\src\fi_pwm_vctrlerrtbl.c -Xobj_path=DefaultBuild -Xcpu=g3m -g -g_line -Ospeed -Oinline_size -I..\PE1\src -Isrc -I..\Common -D__CLK_HSB=80,__CLK_LSB=40,__CLKC_HSB=80,__CLK_CLSB=40 -use_recipf -Xasm_path=DefaultBuild -c
#@	compiled at Fri May 15 15:29:10 2026

	.file "src\fpmsm_main.c"

	$reg_mode 32
	.dbl_size 8

	.extern _u1_flag_awatcher_enable_cpu2
	.extern _u1_status_awatcher_cpu1
	.extern _u1_flag_awatcher_enable_cpu1
	.public _u4_ecm_mstatus0_init, 4
	.public _u4_ecm_cstatus0_init, 4
	.public _u4_ecm_mstatus1_init, 4
	.public _u4_ecm_cstatus1_init, 4
	.public _u1_flag_awatcher_use_cpu1, 1
	.public _u1_cnt_main, 1
	.public _main
	.public _fb_main_start_init
	.extern _core1_peg_init
	.extern _VECLIB_CMDMONI_INIT
	.extern _VECLIB_CMDMONI_MAIN
	.extern _fb_pwm_int_init
	.extern _fb_1ms_int_init
	.extern _fb_20us_int_init
	.extern _fb_enc1_int_init
	.public _fb_main_error_init

	.section .text, text
_main:
	.stack _main = 36
	.line "C:/Users/0488813/Documents/GitHub/AMDT3074_E0_011_V1_000_20240822_IM/PE2/src/fpmsm_main.c", 91
	prepare 0x000007F9, 0x00000000
	movhi 0x0000FFFF, r0, r2
.BB.LABEL.1_1:	; bb1
	.line "C:/Users/0488813/Documents/GitHub/AMDT3074_E0_011_V1_000_20240822_IM/PE2/src/fpmsm_main.c", 98
	tst1 0x00000004, 0xFFFFEA01[r2]
	bz9 .BB.LABEL.1_1
.BB.LABEL.1_2:	; bb7
	.line "C:/Users/0488813/Documents/GitHub/AMDT3074_E0_011_V1_000_20240822_IM/PE2/src/fpmsm_main.c", 0
	movhi 0x0000FFFF, r0, r20
	.line "C:/Users/0488813/Documents/GitHub/AMDT3074_E0_011_V1_000_20240822_IM/PE2/src/fpmsm_main.c", 101
	clr1 0x00000004, 0xFFFFEA01[r20]
	.line "C:/Users/0488813/Documents/GitHub/AMDT3074_E0_011_V1_000_20240822_IM/PE2/src/fpmsm_main.c", 104
	nop
	.line "C:/Users/0488813/Documents/GitHub/AMDT3074_E0_011_V1_000_20240822_IM/PE2/src/fpmsm_main.c", 109
	nop
	mov 0x00000001, r21
	.line "C:/Users/0488813/Documents/GitHub/AMDT3074_E0_011_V1_000_20240822_IM/PE2/src/fpmsm_main.c", 110
	mov r21, r6
	jarl _core1_peg_init, r31
	.line "C:/Users/0488813/Documents/GitHub/AMDT3074_E0_011_V1_000_20240822_IM/PE2/src/fpmsm_main.c", 112
	jarl _VECLIB_CMDMONI_INIT, r31
	.line "C:/Users/0488813/Documents/GitHub/AMDT3074_E0_011_V1_000_20240822_IM/PE2/src/fpmsm_main.c", 115
	set1 0x00000000, 0xFFFFEC80[r20]
	.line "C:/Users/0488813/Documents/GitHub/AMDT3074_E0_011_V1_000_20240822_IM/PE2/src/fpmsm_main.c", 195
	di
	.line "C:/Users/0488813/Documents/GitHub/AMDT3074_E0_011_V1_000_20240822_IM/PE2/src/fpmsm_main.c", 214
	jarl _fb_pwm_int_init, r31
	.line "C:/Users/0488813/Documents/GitHub/AMDT3074_E0_011_V1_000_20240822_IM/PE2/src/fpmsm_main.c", 215
	jarl _fb_1ms_int_init, r31
	.line "C:/Users/0488813/Documents/GitHub/AMDT3074_E0_011_V1_000_20240822_IM/PE2/src/fpmsm_main.c", 217
	jarl _fb_20us_int_init, r31
	.line "C:/Users/0488813/Documents/GitHub/AMDT3074_E0_011_V1_000_20240822_IM/PE2/src/fpmsm_main.c", 218
	jarl _fb_enc1_int_init, r31
	.line "C:/Users/0488813/Documents/GitHub/AMDT3074_E0_011_V1_000_20240822_IM/PE2/src/fpmsm_main.c", 226
	ei
	.line "C:/Users/0488813/Documents/GitHub/AMDT3074_E0_011_V1_000_20240822_IM/PE2/src/fpmsm_main.c", 129
	movhi HIGHW1(#_u1_cnt_main), r0, r20
	.line "C:/Users/0488813/Documents/GitHub/AMDT3074_E0_011_V1_000_20240822_IM/PE2/src/fpmsm_main.c", 143
	movhi HIGHW1(#_u1_status_awatcher_cpu1), r0, r22
	.line "C:/Users/0488813/Documents/GitHub/AMDT3074_E0_011_V1_000_20240822_IM/PE2/src/fpmsm_main.c", 164
	movhi HIGHW1(#_u1_flag_awatcher_enable_cpu2), r0, r23
	.line "C:/Users/0488813/Documents/GitHub/AMDT3074_E0_011_V1_000_20240822_IM/PE2/src/fpmsm_main.c", 167
	movhi HIGHW1(#_u1_flag_awatcher_use_cpu1), r0, r24
	.line "C:/Users/0488813/Documents/GitHub/AMDT3074_E0_011_V1_000_20240822_IM/PE2/src/fpmsm_main.c", 168
	movhi HIGHW1(#_u1_flag_awatcher_enable_cpu1), r0, r25
	mov 0xFFFFFFF9, r27
	mov 0xFFFCFFFF, r26
.BB.LABEL.1_3:	; bb47
	.line "C:/Users/0488813/Documents/GitHub/AMDT3074_E0_011_V1_000_20240822_IM/PE2/src/fpmsm_main.c", 129
	ld.b LOWW(#_u1_cnt_main)[r20], r2
	.line "C:/Users/0488813/Documents/GitHub/AMDT3074_E0_011_V1_000_20240822_IM/PE2/src/fpmsm_main.c", 143
	ld.bu LOWW(#_u1_status_awatcher_cpu1)[r22], r5
	.line "C:/Users/0488813/Documents/GitHub/AMDT3074_E0_011_V1_000_20240822_IM/PE2/src/fpmsm_main.c", 129
	add 0x00000001, r2
	st.b r2, LOWW(#_u1_cnt_main)[r20]
	.line "C:/Users/0488813/Documents/GitHub/AMDT3074_E0_011_V1_000_20240822_IM/PE2/src/fpmsm_main.c", 143
	cmp 0x00000000, r5
	bnz9 .BB.LABEL.1_7
.BB.LABEL.1_4:	; if_then_bb
	.line "C:/Users/0488813/Documents/GitHub/AMDT3074_E0_011_V1_000_20240822_IM/PE2/src/fpmsm_main.c", 145
	ld.bu LOWW(#_u1_flag_awatcher_use_cpu1)[r24], r2
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.1_6
.BB.LABEL.1_5:	; if_then_bb22
	.line "C:/Users/0488813/Documents/GitHub/AMDT3074_E0_011_V1_000_20240822_IM/PE2/src/fpmsm_main.c", 149
	ld.w 0xFFFFBB2C[r0], r2
	and r26, r2
	st.w r2, 0xFFFFBB2C[r0]
	.line "C:/Users/0488813/Documents/GitHub/AMDT3074_E0_011_V1_000_20240822_IM/PE2/src/fpmsm_main.c", 150
	ld.w 0xFFFFBB2C[r0], r2
	ori 0x00000001, r2, r2
	and r27, r2
	st.w r2, 0xFFFFBB2C[r0]
	.line "C:/Users/0488813/Documents/GitHub/AMDT3074_E0_011_V1_000_20240822_IM/PE2/src/fpmsm_main.c", 152
	ld.w 0xFFFFBB30[r0], r2
	and r26, r2
	st.w r2, 0xFFFFBB30[r0]
	.line "C:/Users/0488813/Documents/GitHub/AMDT3074_E0_011_V1_000_20240822_IM/PE2/src/fpmsm_main.c", 153
	ld.w 0xFFFFBB30[r0], r2
	ori 0x00000001, r2, r2
	and r27, r2
	st.w r2, 0xFFFFBB30[r0]
	.line "C:/Users/0488813/Documents/GitHub/AMDT3074_E0_011_V1_000_20240822_IM/PE2/src/fpmsm_main.c", 154
	st.b r21, LOWW(#_u1_status_awatcher_cpu1)[r22]
	.line "C:/Users/0488813/Documents/GitHub/AMDT3074_E0_011_V1_000_20240822_IM/PE2/src/fpmsm_main.c", 155
	st.b r21, LOWW(#_u1_flag_awatcher_enable_cpu1)[r25]
	br9 .BB.LABEL.1_3
.BB.LABEL.1_6:	; if_else_bb
	.line "C:/Users/0488813/Documents/GitHub/AMDT3074_E0_011_V1_000_20240822_IM/PE2/src/fpmsm_main.c", 159
	jarl _VECLIB_CMDMONI_MAIN, r31
	br9 .BB.LABEL.1_3
.BB.LABEL.1_7:	; if_else_bb37
	.line "C:/Users/0488813/Documents/GitHub/AMDT3074_E0_011_V1_000_20240822_IM/PE2/src/fpmsm_main.c", 164
	ld.bu LOWW(#_u1_flag_awatcher_enable_cpu2)[r23], r2
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.1_3
.BB.LABEL.1_8:	; if_then_bb43
	.line "C:/Users/0488813/Documents/GitHub/AMDT3074_E0_011_V1_000_20240822_IM/PE2/src/fpmsm_main.c", 166
	st.b r0, LOWW(#_u1_status_awatcher_cpu1)[r22]
	.line "C:/Users/0488813/Documents/GitHub/AMDT3074_E0_011_V1_000_20240822_IM/PE2/src/fpmsm_main.c", 167
	st.b r0, LOWW(#_u1_flag_awatcher_use_cpu1)[r24]
	.line "C:/Users/0488813/Documents/GitHub/AMDT3074_E0_011_V1_000_20240822_IM/PE2/src/fpmsm_main.c", 168
	st.b r0, LOWW(#_u1_flag_awatcher_enable_cpu1)[r25]
	br9 .BB.LABEL.1_3
_fb_main_start_init:
	.stack _fb_main_start_init = 4
	.line "C:/Users/0488813/Documents/GitHub/AMDT3074_E0_011_V1_000_20240822_IM/PE2/src/fpmsm_main.c", 189
	prepare 0x00000001, 0x00000000
	.line "C:/Users/0488813/Documents/GitHub/AMDT3074_E0_011_V1_000_20240822_IM/PE2/src/fpmsm_main.c", 195
	di
	.line "C:/Users/0488813/Documents/GitHub/AMDT3074_E0_011_V1_000_20240822_IM/PE2/src/fpmsm_main.c", 214
	jarl _fb_pwm_int_init, r31
	.line "C:/Users/0488813/Documents/GitHub/AMDT3074_E0_011_V1_000_20240822_IM/PE2/src/fpmsm_main.c", 215
	jarl _fb_1ms_int_init, r31
	.line "C:/Users/0488813/Documents/GitHub/AMDT3074_E0_011_V1_000_20240822_IM/PE2/src/fpmsm_main.c", 217
	jarl _fb_20us_int_init, r31
	.line "C:/Users/0488813/Documents/GitHub/AMDT3074_E0_011_V1_000_20240822_IM/PE2/src/fpmsm_main.c", 218
	jarl _fb_enc1_int_init, r31
	.line "C:/Users/0488813/Documents/GitHub/AMDT3074_E0_011_V1_000_20240822_IM/PE2/src/fpmsm_main.c", 226
	ei
	dispose 0x00000000, 0x00000001, [r31]
_fb_main_error_init:
	.stack _fb_main_error_init = 4
	.line "C:/Users/0488813/Documents/GitHub/AMDT3074_E0_011_V1_000_20240822_IM/PE2/src/fpmsm_main.c", 240
	prepare 0x00000001, 0x00000000
	.line "C:/Users/0488813/Documents/GitHub/AMDT3074_E0_011_V1_000_20240822_IM/PE2/src/fpmsm_main.c", 246
	di
	.line "C:/Users/0488813/Documents/GitHub/AMDT3074_E0_011_V1_000_20240822_IM/PE2/src/fpmsm_main.c", 269
	jarl _fb_pwm_int_init, r31
	.line "C:/Users/0488813/Documents/GitHub/AMDT3074_E0_011_V1_000_20240822_IM/PE2/src/fpmsm_main.c", 270
	jarl _fb_1ms_int_init, r31
	.line "C:/Users/0488813/Documents/GitHub/AMDT3074_E0_011_V1_000_20240822_IM/PE2/src/fpmsm_main.c", 272
	jarl _fb_20us_int_init, r31
	.line "C:/Users/0488813/Documents/GitHub/AMDT3074_E0_011_V1_000_20240822_IM/PE2/src/fpmsm_main.c", 273
	jarl _fb_enc1_int_init, r31
	.line "C:/Users/0488813/Documents/GitHub/AMDT3074_E0_011_V1_000_20240822_IM/PE2/src/fpmsm_main.c", 283
	ei
	dispose 0x00000000, 0x00000001, [r31]
	.section .bss, bss
	.align 4
_u4_ecm_mstatus0_init:
	.ds (4)
	.align 4
_u4_ecm_cstatus0_init:
	.ds (4)
	.align 4
_u4_ecm_mstatus1_init:
	.ds (4)
	.align 4
_u4_ecm_cstatus1_init:
	.ds (4)
_u1_flag_awatcher_use_cpu1:
	.ds (1)
_u1_cnt_main:
	.ds (1)
