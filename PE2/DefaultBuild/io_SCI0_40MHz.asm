#CC-RH Compiler RH850 Assembler Source
#@	CC-RH Version : V2.06.00  [28 Nov 2023]
#@	Command : Common\fi_pe2_error.c ..\Common\iolib\io_CPU.c ..\Common\iolib\io_ADC.c ..\Common\iolib\io_CSIH0.c ..\Common\iolib\io_CSIH1.c ..\Common\iolib\io_ENCA0.c ..\Common\iolib\io_ENCA1.c ..\Common\iolib\io_FCAN.c ..\Common\iolib\io_RDC20.c ..\Common\iolib\io_RDC21.c ..\Common\iolib\io_SCI0_40MHz.c ..\Common\iolib\io_SCI1_40MHz.c ..\Common\iolib\io_SCI2_40MHz.c ..\Common\iolib\io_TAUD0.c ..\Common\iolib\io_TAUD1.c ..\Common\iolib\io_TAUJ0.c ..\Common\iolib\io_TSG30.c ..\Common\iolib\io_TSG31.c ..\PE1\AWatcher\VECLIB_CMDMONI.c src\fpmsm_main.c ..\PE1\src\fi_AWatcher.c src\fi_1ms_int.c src\fi_20us_int.c src\fi_enc1_int.c src\fi_pwm_int.c ..\PE1\src\fb_kpwm_tbl.c ..\PE1\src\fb_therm_calc.c ..\PE1\src\fb_therm_tbl_module.c ..\PE1\src\fb_vctrlerr_tbl.c ..\PE1\src\fi_pwm_vctrlerrtbl.c ..\Common\iolib\io_PIO_amdt0530.c -Xobj_path=DefaultBuild -Xcpu=g3m -g -g_line -Ospeed -Oinline_size -I..\PE1\src -Isrc -I..\Common -D__CLK_HSB=80,__CLK_LSB=40,__CLKC_HSB=80,__CLK_CLSB=40 -use_recipf -Xasm_path=DefaultBuild -c
#@	compiled at Thu Aug 22 10:25:06 2024

	.file "..\Common\iolib\io_SCI0_40MHz.c"

	$reg_mode 32
	.dbl_size 8

	.public _sci0_init
	.public _sci0_start
	.public _sci0_stop
	.public _u1_SO30_1byte
	.public _u1_SI30_1byte

	.section .text, text
_sci0_init:
	.stack _sci0_init = 0
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_SCI0_40MHz.c", 34
	movhi 0x0000FFD9, r0, r2
	st.b r0, 0x00000000[r2]
	st.b r0, 0x00000008[r2]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_SCI0_40MHz.c", 41
	cmp 0x00000000, r9
	st.b r0, 0x00000018[r2]
	bnz17 .BB.LABEL.1_34
.BB.LABEL.1_1:	; if_then_bb
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_SCI0_40MHz.c", 48
	ld.b 0x00000014[r2], r5
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_SCI0_40MHz.c", 49
	ld.bu 0x00000010[r2], r2
	addi 0xFFFFFF7C, r2, r0
	bz9 .BB.LABEL.1_3
.BB.LABEL.1_2:	; bb
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_SCI0_40MHz.c", 0
	movhi 0x0000FFD9, r0, r2
	movea 0xFFFFFF84, r0, r5
	st.b r5, 0x00000010[r2]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_SCI0_40MHz.c", 49
	ld.bu 0x00000010[r2], r2
	addi 0xFFFFFF7C, r2, r0
	bnz9 .BB.LABEL.1_2
.BB.LABEL.1_3:	; bb18
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_SCI0_40MHz.c", 52
	movhi 0x0000FFD9, r0, r2
	st.b r0, 0x00000000[r2]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_SCI0_40MHz.c", 53
	clr1 0x00000003, 0x00000018[r2]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_SCI0_40MHz.c", 55
	clr1 0x00000007, 0x0000001C[r2]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_SCI0_40MHz.c", 56
	clr1 0x00000006, 0x0000001C[r2]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_SCI0_40MHz.c", 57
	set1 0x00000003, 0x0000001C[r2]
	ori 0x000095FF, r0, r2
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_SCI0_40MHz.c", 60
	cmp r2, r6
	bgt9 .BB.LABEL.1_10
.BB.LABEL.1_4:	; bb18
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_SCI0_40MHz.c", 0
	addi 0xFFFFED41, r6, r0
	bgt9 .BB.LABEL.1_7
.BB.LABEL.1_5:	; bb18
	addi 0xFFFFFB50, r6, r0
	bz9 .BB.LABEL.1_19
.BB.LABEL.1_6:	; bb18
	addi 0xFFFFF6A0, r6, r0
	movea 0x00000040, r0, r6
	bz9 .BB.LABEL.1_20
	jr .BB.LABEL.1_40
.BB.LABEL.1_7:	; bb18
	addi 0xFFFFED40, r6, r0
	bz9 .BB.LABEL.1_21
.BB.LABEL.1_8:	; bb18
	addi 0xFFFFDA80, r6, r0
	bz9 .BB.LABEL.1_23
.BB.LABEL.1_9:	; bb18
	addi 0xFFFFB500, r6, r0
	movea 0xFFFFFF81, r0, r6
	bz9 .BB.LABEL.1_26
	jr .BB.LABEL.1_40
.BB.LABEL.1_10:	; bb18
	ori 0x0000E0FF, r0, r2
	cmp r2, r6
	bgt9 .BB.LABEL.1_13
.BB.LABEL.1_11:	; bb18
	ori 0x00009600, r0, r2
	cmp r2, r6
	bz9 .BB.LABEL.1_24
.BB.LABEL.1_12:	; bb18
	ori 0x0000C350, r0, r2
	cmp r2, r6
	movea 0x00000031, r0, r6
	bz9 .BB.LABEL.1_26
	jr .BB.LABEL.1_40
.BB.LABEL.1_13:	; bb18
	ori 0x0000E100, r0, r2
	cmp r2, r6
	bz9 .BB.LABEL.1_25
.BB.LABEL.1_14:	; bb18
	mov 0x00012C00, r2
	cmp r2, r6
	bz9 .BB.LABEL.1_28
.BB.LABEL.1_15:	; bb18
	mov 0x0001C200, r2
	cmp r2, r6
	bnz17 .BB.LABEL.1_40
.BB.LABEL.1_16:	; switch_clause_bb55
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_SCI0_40MHz.c", 71
	movhi 0x0000FFD9, r0, r2
	ld.bu 0x00001000[r2], r5
	movea 0x00000015, r0, r6
	andi 0x000000FC, r5, r5
	st.b r5, 0x00001000[r2]
	st.b r6, 0x00001004[r2]
.BB.LABEL.1_17:	; if_then_bb64
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_SCI0_40MHz.c", 79
	cmp 0x00000002, r8
	ld.w 0xFFFFBB2C[r0], r8
	bnz9 .BB.LABEL.1_29
.BB.LABEL.1_18:	; if_then_bb70
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_SCI0_40MHz.c", 0
	movhi 0x00000001, r0, r2
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_SCI0_40MHz.c", 82
	or r2, r8
	mov 0xFFFDFFFF, r5
	and r5, r8
	mov 0xFFFFFFFA, r6
	st.w r8, 0xFFFFBB2C[r0]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_SCI0_40MHz.c", 83
	ld.w 0xFFFFBB2C[r0], r8
	ori 0x00000002, r8, r8
	and r6, r8
	st.w r8, 0xFFFFBB2C[r0]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_SCI0_40MHz.c", 85
	ld.w 0xFFFFBB30[r0], r8
	or r2, r8
	and r5, r8
	st.w r8, 0xFFFFBB30[r0]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_SCI0_40MHz.c", 86
	ld.w 0xFFFFBB30[r0], r8
	ori 0x00000002, r8, r8
	and r6, r8
	br9 .BB.LABEL.1_30
.BB.LABEL.1_19:	; switch_clause_bb
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_SCI0_40MHz.c", 0
	movea 0xFFFFFF81, r0, r6
.BB.LABEL.1_20:	; switch_clause_bb
	movhi 0x0000FFD9, r0, r2
	ld.b 0x00000000[r2], r5
	ori 0x00000002, r5, r5
	andi 0x000000FE, r5, r5
	br9 .BB.LABEL.1_27
.BB.LABEL.1_21:	; switch_clause_bb27
	movea 0xFFFFFF81, r0, r6
.BB.LABEL.1_22:	; switch_clause_bb27
	movhi 0x0000FFD9, r0, r2
	ld.b 0x00000000[r2], r5
	ori 0x00000001, r5, r5
	andi 0x000000FD, r5, r5
	br9 .BB.LABEL.1_27
.BB.LABEL.1_23:	; switch_clause_bb31
	movea 0x00000040, r0, r6
	br9 .BB.LABEL.1_22
.BB.LABEL.1_24:	; switch_clause_bb39
	movea 0x00000040, r0, r6
	br9 .BB.LABEL.1_26
.BB.LABEL.1_25:	; switch_clause_bb47
	movea 0x0000002A, r0, r6
.BB.LABEL.1_26:	; switch_clause_bb47
	movhi 0x0000FFD9, r0, r2
	ld.bu 0x00000000[r2], r5
	andi 0x000000FC, r5, r5
.BB.LABEL.1_27:	; switch_clause_bb47
	st.b r5, 0x00000000[r2]
	st.b r6, 0x00000004[r2]
	br9 .BB.LABEL.1_17
.BB.LABEL.1_28:	; switch_clause_bb51
	movea 0x00000020, r0, r6
	br9 .BB.LABEL.1_26
.BB.LABEL.1_29:	; if_else_bb
	mov 0xFFFCFFFF, r2
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_SCI0_40MHz.c", 91
	and r2, r8
	mov 0xFFFFFFF9, r5
	st.w r8, 0xFFFFBB2C[r0]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_SCI0_40MHz.c", 92
	ld.w 0xFFFFBB2C[r0], r8
	ori 0x00000001, r8, r8
	and r5, r8
	st.w r8, 0xFFFFBB2C[r0]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_SCI0_40MHz.c", 94
	ld.w 0xFFFFBB30[r0], r8
	and r2, r8
	st.w r8, 0xFFFFBB30[r0]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_SCI0_40MHz.c", 95
	ld.w 0xFFFFBB30[r0], r8
	ori 0x00000001, r8, r8
	and r5, r8
.BB.LABEL.1_30:	; if_break_bb
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_SCI0_40MHz.c", 0
	st.w r8, 0xFFFFBB30[r0]
	set1 0x00000007, 0xFFFFB196[r0]
	set1 0x00000007, 0xFFFFB198[r0]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_SCI0_40MHz.c", 98
	cmp 0x0000000F, r7
	bgt9 .BB.LABEL.1_32
.BB.LABEL.1_31:	; if_then_bb101
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_SCI0_40MHz.c", 102
	clr1 0x00000004, 0xFFFFB197[r0]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_SCI0_40MHz.c", 103
	clr1 0x00000004, 0xFFFFB199[r0]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_SCI0_40MHz.c", 105
	ld.bu 0xFFFFB196[r0], r8
	andi 0x0000000F, r7, r7
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_SCI0_40MHz.c", 114
	movhi 0x0000FFD9, r0, r2
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_SCI0_40MHz.c", 105
	andi 0x000000F0, r8, r8
	or r7, r8
	st.b r8, 0xFFFFB196[r0]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_SCI0_40MHz.c", 106
	ld.bu 0xFFFFB198[r0], r8
	andi 0x000000F0, r8, r8
	or r7, r8
	st.b r8, 0xFFFFB198[r0]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_SCI0_40MHz.c", 108
	set1 0x00000006, 0xFFFFB196[r0]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_SCI0_40MHz.c", 109
	set1 0x00000006, 0xFFFFB198[r0]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_SCI0_40MHz.c", 111
	clr1 0x00000007, 0xFFFFB196[r0]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_SCI0_40MHz.c", 112
	clr1 0x00000007, 0xFFFFB198[r0]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_SCI0_40MHz.c", 114
	set1 0x00000006, 0x00000008[r2]
	br9 .BB.LABEL.1_33
.BB.LABEL.1_32:	; if_else_bb112
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_SCI0_40MHz.c", 120
	ld.b 0xFFFFB196[r0], r7
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_SCI0_40MHz.c", 123
	movhi 0x0000FFD9, r0, r8
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_SCI0_40MHz.c", 120
	ori 0x0000000F, r7, r7
	st.b r7, 0xFFFFB196[r0]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_SCI0_40MHz.c", 121
	ld.b 0xFFFFB198[r0], r7
	ori 0x0000000F, r7, r7
	st.b r7, 0xFFFFB198[r0]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_SCI0_40MHz.c", 123
	clr1 0x00000006, 0x00000008[r8]
.BB.LABEL.1_33:	; if_break_bb119
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_SCI0_40MHz.c", 128
	movhi 0x0000FFC1, r0, r7
	movea 0x00000055, r0, r8
	st.w r8, 0x000021CC[r7]
	movea 0x00001045, r0, r8
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_SCI0_40MHz.c", 129
	st.w r8, 0x000021D0[r7]
	mov 0x00000000, r10
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_SCI0_40MHz.c", 134
	jmp [r31]
.BB.LABEL.1_34:	; if_else_bb124
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_SCI0_40MHz.c", 147
	set1 0x00000007, 0x00000000[r2]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_SCI0_40MHz.c", 148
	ld.bu 0x00000008[r2], r5
	mov 0x000F423F, r9
	andi 0x000000FC, r5, r5
	st.b r5, 0x00000008[r2]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_SCI0_40MHz.c", 149
	set1 0x00000003, 0x00000018[r2]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_SCI0_40MHz.c", 150
	clr1 0x00000002, 0x00000018[r2]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_SCI0_40MHz.c", 153
	cmp r9, r6
	bgt9 .BB.LABEL.1_37
.BB.LABEL.1_35:	; if_else_bb124
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_SCI0_40MHz.c", 0
	mov 0x0003D090, r2
	cmp r2, r6
	movea 0x00000013, r0, r5
	mov 0x0007A120, r2
	bnz9 .BB.LABEL.1_39
.BB.LABEL.1_36:	; switch_clause_bb129
	movea 0x00000027, r0, r5
	br9 .BB.LABEL.1_42
.BB.LABEL.1_37:	; if_else_bb124
	mov 0x000F4240, r2
	cmp r2, r6
	bz9 .BB.LABEL.1_41
.BB.LABEL.1_38:	; if_else_bb124
	mov 0x001E8480, r2
	mov 0x00000004, r5
.BB.LABEL.1_39:	; if_else_bb124
	cmp r2, r6
	bz9 .BB.LABEL.1_42
.BB.LABEL.1_40:	; bb181
	mov 0x00000001, r10
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_SCI0_40MHz.c", 204
	jmp [r31]
.BB.LABEL.1_41:	; switch_clause_bb131
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_SCI0_40MHz.c", 0
	mov 0x00000009, r5
.BB.LABEL.1_42:	; switch_clause_bb132
	movhi 0x0000FFD9, r0, r2
	st.b r5, 0x00001004[r2]
	ld.w 0xFFFFBB34[r0], r2
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_SCI0_40MHz.c", 164
	cmp 0x00000002, r8
	bnz9 .BB.LABEL.1_44
.BB.LABEL.1_43:	; if_then_bb145
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_SCI0_40MHz.c", 0
	movhi 0x00000001, r0, r5
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_SCI0_40MHz.c", 167
	or r5, r2
	mov 0xFFFDFFFF, r6
	and r6, r2
	mov 0xFFFFFFFA, r8
	st.w r2, 0xFFFFBB34[r0]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_SCI0_40MHz.c", 168
	ld.w 0xFFFFBB34[r0], r2
	ori 0x00000002, r2, r2
	and r8, r2
	br9 .BB.LABEL.1_45
.BB.LABEL.1_44:	; if_else_bb152
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_SCI0_40MHz.c", 0
	mov 0xFFFCFFFF, r5
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_SCI0_40MHz.c", 173
	and r5, r2
	mov 0xFFFFFFF9, r6
	st.w r2, 0xFFFFBB34[r0]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_SCI0_40MHz.c", 174
	ld.w 0xFFFFBB34[r0], r2
	ori 0x00000001, r2, r2
	and r6, r2
.BB.LABEL.1_45:	; if_break_bb159
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_SCI0_40MHz.c", 0
	st.w r2, 0xFFFFBB34[r0]
	set1 0x00000007, 0xFFFFB19A[r0]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_SCI0_40MHz.c", 176
	cmp 0x0000000F, r7
	bgt9 .BB.LABEL.1_47
.BB.LABEL.1_46:	; if_then_bb165
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_SCI0_40MHz.c", 179
	clr1 0x00000004, 0xFFFFB19B[r0]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_SCI0_40MHz.c", 180
	ld.bu 0xFFFFB19A[r0], r2
	andi 0x0000000F, r7, r5
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_SCI0_40MHz.c", 183
	movhi 0x0000FFD9, r0, r6
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_SCI0_40MHz.c", 180
	andi 0x000000F0, r2, r2
	or r5, r2
	st.b r2, 0xFFFFB19A[r0]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_SCI0_40MHz.c", 181
	set1 0x00000006, 0xFFFFB19A[r0]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_SCI0_40MHz.c", 182
	clr1 0x00000007, 0xFFFFB19A[r0]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_SCI0_40MHz.c", 183
	set1 0x00000007, 0x00000008[r6]
	br9 .BB.LABEL.1_48
.BB.LABEL.1_47:	; if_else_bb171
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_SCI0_40MHz.c", 188
	ld.b 0xFFFFB19A[r0], r2
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_SCI0_40MHz.c", 189
	movhi 0x0000FFD9, r0, r5
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_SCI0_40MHz.c", 188
	ori 0x0000000F, r2, r2
	st.b r2, 0xFFFFB19A[r0]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_SCI0_40MHz.c", 189
	clr1 0x00000007, 0x00000008[r5]
.BB.LABEL.1_48:	; if_break_bb175
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_SCI0_40MHz.c", 193
	movhi 0x0000FFC1, r0, r2
	movea 0x00000055, r0, r5
	st.w r5, 0x00002140[r2]
	movea 0x00000045, r0, r5
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_SCI0_40MHz.c", 194
	st.w r5, 0x00002144[r2]
	mov 0x00000000, r10
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_SCI0_40MHz.c", 195
	st.w r5, 0x00002148[r2]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_SCI0_40MHz.c", 196
	jmp [r31]
_sci0_start:
	.stack _sci0_start = 0
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_SCI0_40MHz.c", 213
	ld23.b 0xFFD90008[r0], r2
	ori 0x00000030, r2, r2
	st23.b r2, 0xFFD90008[r0]
	jmp [r31]
_sci0_stop:
	.stack _sci0_stop = 0
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_SCI0_40MHz.c", 223
	movhi 0x0000FFD9, r0, r2
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_SCI0_40MHz.c", 225
	clr1 0x00000004, 0x00000008[r2]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_SCI0_40MHz.c", 226
	clr1 0x00000005, 0x00000008[r2]
	jmp [r31]
_u1_SO30_1byte:
	.stack _u1_SO30_1byte = 0
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_SCI0_40MHz.c", 250
	movhi 0x0000FFD9, r0, r2
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_SCI0_40MHz.c", 254
	tst1 0x00000002, 0x00000010[r2]
	bnz9 .BB.LABEL.4_2
.BB.LABEL.4_1:	; bb18
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_SCI0_40MHz.c", 0
	mov 0x00000000, r10
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_SCI0_40MHz.c", 263
	jmp [r31]
.BB.LABEL.4_2:	; if_then_bb
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_SCI0_40MHz.c", 256
	st23.b r6, 0xFFD9000C[r0]
	mov 0x00000001, r10
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_SCI0_40MHz.c", 257
	jmp [r31]
_u1_SI30_1byte:
	.stack _u1_SI30_1byte = 0
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_SCI0_40MHz.c", 275
	movhi 0x0000FFD9, r0, r2
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_SCI0_40MHz.c", 278
	tst1 0x00000006, 0x00000010[r2]
	bnz9 .BB.LABEL.5_2
.BB.LABEL.5_1:	; bb11
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_SCI0_40MHz.c", 0
	mov 0x00000000, r10
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_SCI0_40MHz.c", 287
	jmp [r31]
.BB.LABEL.5_2:	; if_then_bb
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_SCI0_40MHz.c", 280
	ld23.b 0xFFD90014[r0], r2
	mov 0x00000001, r10
	st.b r2, 0x00000000[r6]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_SCI0_40MHz.c", 281
	jmp [r31]
