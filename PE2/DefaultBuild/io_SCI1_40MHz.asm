#CC-RH Compiler RH850 Assembler Source
#@	CC-RH Version : V2.06.00  [28 Nov 2023]
#@	Command : Common\fi_pe2_error.c ..\Common\iolib\io_CPU.c ..\Common\iolib\io_ADC.c ..\Common\iolib\io_CSIH0.c ..\Common\iolib\io_CSIH1.c ..\Common\iolib\io_ENCA0.c ..\Common\iolib\io_ENCA1.c ..\Common\iolib\io_FCAN.c ..\Common\iolib\io_RDC20.c ..\Common\iolib\io_RDC21.c ..\Common\iolib\io_SCI0_40MHz.c ..\Common\iolib\io_SCI1_40MHz.c ..\Common\iolib\io_SCI2_40MHz.c ..\Common\iolib\io_TAUD0.c ..\Common\iolib\io_TAUD1.c ..\Common\iolib\io_TAUJ0.c ..\Common\iolib\io_TSG30.c ..\Common\iolib\io_TSG31.c ..\PE1\AWatcher\VECLIB_CMDMONI.c src\fpmsm_main.c ..\PE1\src\fi_AWatcher.c src\fi_1ms_int.c src\fi_20us_int.c src\fi_enc1_int.c src\fi_pwm_int.c ..\PE1\src\fb_kpwm_tbl.c ..\PE1\src\fb_therm_calc.c ..\PE1\src\fb_therm_tbl_module.c ..\PE1\src\fb_vctrlerr_tbl.c ..\PE1\src\fi_pwm_vctrlerrtbl.c ..\Common\iolib\io_PIO_amdt0530.c -Xobj_path=DefaultBuild -Xcpu=g3m -g -g_line -Ospeed -Oinline_size -I..\PE1\src -Isrc -I..\Common -D__CLK_HSB=80,__CLK_LSB=40,__CLKC_HSB=80,__CLK_CLSB=40 -use_recipf -Xasm_path=DefaultBuild -c
#@	compiled at Thu Aug 22 10:25:06 2024

	.file "..\Common\iolib\io_SCI1_40MHz.c"

	$reg_mode 32
	.dbl_size 8

	.public _sci1_init
	.public _sci1_start
	.public _sci1_stop

	.section .text, text
_sci1_init:
	.stack _sci1_init = 0
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_SCI1_40MHz.c", 30
	movhi 0x0000FFD9, r0, r2
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_SCI1_40MHz.c", 37
	st.b r0, 0x00001000[r2]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_SCI1_40MHz.c", 38
	st.b r0, 0x00001008[r2]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_SCI1_40MHz.c", 40
	st.b r0, 0x00001000[r2]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_SCI1_40MHz.c", 41
	clr1 0x00000003, 0x00001018[r2]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_SCI1_40MHz.c", 43
	clr1 0x00000007, 0x0000101C[r2]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_SCI1_40MHz.c", 44
	clr1 0x00000006, 0x0000101C[r2]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_SCI1_40MHz.c", 45
	set1 0x00000003, 0x0000101C[r2]
	ori 0x000095FF, r0, r2
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_SCI1_40MHz.c", 48
	cmp r2, r6
	bgt9 .BB.LABEL.1_7
.BB.LABEL.1_1:	; entry
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_SCI1_40MHz.c", 0
	addi 0xFFFFED41, r6, r0
	bgt9 .BB.LABEL.1_4
.BB.LABEL.1_2:	; entry
	addi 0xFFFFFB50, r6, r0
	bz9 .BB.LABEL.1_14
.BB.LABEL.1_3:	; entry
	addi 0xFFFFF6A0, r6, r0
	movea 0x00000040, r0, r6
	bnz9 .BB.LABEL.1_13
	br9 .BB.LABEL.1_15
.BB.LABEL.1_4:	; entry
	addi 0xFFFFED40, r6, r0
	bz9 .BB.LABEL.1_16
.BB.LABEL.1_5:	; entry
	addi 0xFFFFDA80, r6, r0
	bz9 .BB.LABEL.1_18
.BB.LABEL.1_6:	; entry
	addi 0xFFFFB500, r6, r0
	movea 0xFFFFFF81, r0, r6
	bnz9 .BB.LABEL.1_13
	br9 .BB.LABEL.1_23
.BB.LABEL.1_7:	; entry
	ori 0x0000E0FF, r0, r2
	cmp r2, r6
	bgt9 .BB.LABEL.1_10
.BB.LABEL.1_8:	; entry
	ori 0x00009600, r0, r2
	cmp r2, r6
	bz9 .BB.LABEL.1_19
.BB.LABEL.1_9:	; entry
	ori 0x0000C350, r0, r2
	cmp r2, r6
	movea 0x00000031, r0, r6
	bnz9 .BB.LABEL.1_13
	br9 .BB.LABEL.1_23
.BB.LABEL.1_10:	; entry
	ori 0x0000E100, r0, r2
	cmp r2, r6
	bz9 .BB.LABEL.1_20
.BB.LABEL.1_11:	; entry
	mov 0x00012C00, r2
	cmp r2, r6
	bz9 .BB.LABEL.1_21
.BB.LABEL.1_12:	; entry
	mov 0x0001C200, r2
	cmp r2, r6
	bz9 .BB.LABEL.1_22
.BB.LABEL.1_13:	; bb106
	mov 0x00000001, r10
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_SCI1_40MHz.c", 122
	jmp [r31]
.BB.LABEL.1_14:	; switch_clause_bb
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_SCI1_40MHz.c", 0
	movea 0xFFFFFF81, r0, r6
.BB.LABEL.1_15:	; switch_clause_bb
	movhi 0x0000FFD9, r0, r2
	ld.b 0x00001000[r2], r5
	ori 0x00000002, r5, r5
	andi 0x000000FE, r5, r5
	br9 .BB.LABEL.1_24
.BB.LABEL.1_16:	; switch_clause_bb13
	movea 0xFFFFFF81, r0, r6
.BB.LABEL.1_17:	; switch_clause_bb13
	movhi 0x0000FFD9, r0, r2
	ld.b 0x00001000[r2], r5
	ori 0x00000001, r5, r5
	andi 0x000000FD, r5, r5
	br9 .BB.LABEL.1_24
.BB.LABEL.1_18:	; switch_clause_bb17
	movea 0x00000040, r0, r6
	br9 .BB.LABEL.1_17
.BB.LABEL.1_19:	; switch_clause_bb25
	movea 0x00000040, r0, r6
	br9 .BB.LABEL.1_23
.BB.LABEL.1_20:	; switch_clause_bb33
	movea 0x0000002A, r0, r6
	br9 .BB.LABEL.1_23
.BB.LABEL.1_21:	; switch_clause_bb37
	movea 0x00000020, r0, r6
	br9 .BB.LABEL.1_23
.BB.LABEL.1_22:	; switch_clause_bb41
	movea 0x00000015, r0, r6
.BB.LABEL.1_23:	; switch_clause_bb41
	movhi 0x0000FFD9, r0, r2
	ld.bu 0x00001000[r2], r5
	andi 0x000000FC, r5, r5
.BB.LABEL.1_24:	; switch_clause_bb41
	st.b r5, 0x00001000[r2]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_SCI1_40MHz.c", 66
	cmp 0x00000002, r8
	st.b r6, 0x00001004[r2]
	ld.w 0xFFFFBB3C[r0], r2
	bnz9 .BB.LABEL.1_26
.BB.LABEL.1_25:	; if_then_bb54
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_SCI1_40MHz.c", 0
	movhi 0x00000001, r0, r5
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_SCI1_40MHz.c", 69
	or r5, r2
	mov 0xFFFDFFFF, r6
	and r6, r2
	mov 0xFFFFFFFA, r8
	st.w r2, 0xFFFFBB3C[r0]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_SCI1_40MHz.c", 70
	ld.w 0xFFFFBB3C[r0], r2
	ori 0x00000002, r2, r2
	and r8, r2
	st.w r2, 0xFFFFBB3C[r0]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_SCI1_40MHz.c", 72
	ld.w 0xFFFFBB40[r0], r2
	or r5, r2
	and r6, r2
	st.w r2, 0xFFFFBB40[r0]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_SCI1_40MHz.c", 73
	ld.w 0xFFFFBB40[r0], r2
	ori 0x00000002, r2, r2
	and r8, r2
	br9 .BB.LABEL.1_27
.BB.LABEL.1_26:	; if_else_bb
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_SCI1_40MHz.c", 0
	mov 0xFFFCFFFF, r5
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_SCI1_40MHz.c", 77
	and r5, r2
	mov 0xFFFFFFF9, r6
	st.w r2, 0xFFFFBB3C[r0]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_SCI1_40MHz.c", 78
	ld.w 0xFFFFBB3C[r0], r2
	ori 0x00000001, r2, r2
	and r6, r2
	st.w r2, 0xFFFFBB3C[r0]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_SCI1_40MHz.c", 80
	ld.w 0xFFFFBB40[r0], r2
	and r5, r2
	st.w r2, 0xFFFFBB40[r0]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_SCI1_40MHz.c", 81
	ld.w 0xFFFFBB40[r0], r2
	ori 0x00000001, r2, r2
	and r6, r2
.BB.LABEL.1_27:	; if_break_bb
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_SCI1_40MHz.c", 0
	st.w r2, 0xFFFFBB40[r0]
	set1 0x00000007, 0xFFFFB19E[r0]
	set1 0x00000007, 0xFFFFB1A0[r0]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_SCI1_40MHz.c", 83
	cmp 0x0000000F, r7
	bgt9 .BB.LABEL.1_29
.BB.LABEL.1_28:	; if_then_bb84
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_SCI1_40MHz.c", 87
	clr1 0x00000004, 0xFFFFB19F[r0]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_SCI1_40MHz.c", 88
	clr1 0x00000004, 0xFFFFB1A1[r0]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_SCI1_40MHz.c", 90
	ld.bu 0xFFFFB19E[r0], r2
	andi 0x0000000F, r7, r5
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_SCI1_40MHz.c", 100
	movhi 0x0000FFD9, r0, r6
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_SCI1_40MHz.c", 90
	andi 0x000000F0, r2, r2
	or r5, r2
	st.b r2, 0xFFFFB19E[r0]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_SCI1_40MHz.c", 91
	ld.bu 0xFFFFB1A0[r0], r2
	andi 0x000000F0, r2, r2
	or r5, r2
	st.b r2, 0xFFFFB1A0[r0]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_SCI1_40MHz.c", 93
	set1 0x00000006, 0xFFFFB19E[r0]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_SCI1_40MHz.c", 94
	set1 0x00000006, 0xFFFFB1A0[r0]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_SCI1_40MHz.c", 96
	clr1 0x00000007, 0xFFFFB19E[r0]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_SCI1_40MHz.c", 97
	clr1 0x00000007, 0xFFFFB1A0[r0]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_SCI1_40MHz.c", 100
	set1 0x00000006, 0x00001008[r6]
	br9 .BB.LABEL.1_30
.BB.LABEL.1_29:	; if_else_bb95
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_SCI1_40MHz.c", 106
	ld.b 0xFFFFB19E[r0], r2
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_SCI1_40MHz.c", 109
	movhi 0x0000FFD9, r0, r5
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_SCI1_40MHz.c", 106
	ori 0x0000000F, r2, r2
	st.b r2, 0xFFFFB19E[r0]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_SCI1_40MHz.c", 107
	ld.b 0xFFFFB1A0[r0], r2
	ori 0x0000000F, r2, r2
	st.b r2, 0xFFFFB1A0[r0]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_SCI1_40MHz.c", 109
	clr1 0x00000006, 0x00001008[r5]
.BB.LABEL.1_30:	; if_break_bb102
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_SCI1_40MHz.c", 0
	movea 0x00000055, r0, r2
	mov 0x00000000, r10
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_SCI1_40MHz.c", 113
	st23.w r2, 0xFFC1214C[r0]
	movea 0x00000045, r0, r2
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_SCI1_40MHz.c", 114
	st23.w r2, 0xFFC12150[r0]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_SCI1_40MHz.c", 116
	jmp [r31]
_sci1_start:
	.stack _sci1_start = 0
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_SCI1_40MHz.c", 129
	movhi 0x0000FFD9, r0, r2
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_SCI1_40MHz.c", 131
	set1 0x00000004, 0x00001008[r2]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_SCI1_40MHz.c", 132
	set1 0x00000005, 0x00001008[r2]
	jmp [r31]
_sci1_stop:
	.stack _sci1_stop = 0
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_SCI1_40MHz.c", 140
	movhi 0x0000FFD9, r0, r2
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_SCI1_40MHz.c", 142
	clr1 0x00000004, 0x00001008[r2]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_SCI1_40MHz.c", 143
	clr1 0x00000005, 0x00001008[r2]
	jmp [r31]
