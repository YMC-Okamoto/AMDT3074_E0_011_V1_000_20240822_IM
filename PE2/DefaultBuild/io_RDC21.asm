#CC-RH Compiler RH850 Assembler Source
#@	CC-RH Version : V2.06.00  [28 Nov 2023]
#@	Command : Common\fi_pe2_error.c ..\Common\iolib\io_CPU.c ..\Common\iolib\io_ADC.c ..\Common\iolib\io_CSIH0.c ..\Common\iolib\io_CSIH1.c ..\Common\iolib\io_ENCA0.c ..\Common\iolib\io_ENCA1.c ..\Common\iolib\io_FCAN.c ..\Common\iolib\io_RDC20.c ..\Common\iolib\io_RDC21.c ..\Common\iolib\io_SCI0_40MHz.c ..\Common\iolib\io_SCI1_40MHz.c ..\Common\iolib\io_SCI2_40MHz.c ..\Common\iolib\io_TAUD0.c ..\Common\iolib\io_TAUD1.c ..\Common\iolib\io_TAUJ0.c ..\Common\iolib\io_TSG30.c ..\Common\iolib\io_TSG31.c ..\PE1\AWatcher\VECLIB_CMDMONI.c src\fpmsm_main.c ..\PE1\src\fi_AWatcher.c src\fi_1ms_int.c src\fi_20us_int.c src\fi_enc1_int.c src\fi_pwm_int.c ..\PE1\src\fb_kpwm_tbl.c ..\PE1\src\fb_therm_calc.c ..\PE1\src\fb_therm_tbl_module.c ..\PE1\src\fb_vctrlerr_tbl.c ..\PE1\src\fi_pwm_vctrlerrtbl.c ..\Common\iolib\io_PIO_amdt0530.c -Xobj_path=DefaultBuild -Xcpu=g3m -g -g_line -Ospeed -Oinline_size -I..\PE1\src -Isrc -I..\Common -D__CLK_HSB=80,__CLK_LSB=40,__CLKC_HSB=80,__CLK_CLSB=40 -use_recipf -Xasm_path=DefaultBuild -c
#@	compiled at Thu Aug 22 10:25:06 2024

	.file "..\Common\iolib\io_RDC21.c"

	$reg_mode 32
	.dbl_size 8

	.public ___u1_rdc21str_sel, 1
	.public _rdc21_init
	.public _u2_rdc21str_read
	.public _u2_rdc21_cnt_read
	.public _rdc21_init_interrupt
	.public _rdc21_cmp0_set
	.public _rdc21_cmp1_set
	.public _rdc21_cmp2_set
	.public _s4_rdc21_rpm
	.public _u2_read_rdc21_status
	.public _rdc21_ABZ_Terminal_output

	.section .text, text
_rdc21_init:
	.stack _rdc21_init = 0
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC21.c", 40
	movhi 0x0000FFEE, r0, r2
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC21.c", 46
	ld.h 0xFFFFE02C[r2], r5
	ori 0x00000100, r5, r5
	st.h r5, 0xFFFFE02C[r2]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC21.c", 50
	ld.hu 0xFFFFE000[r2], r5
	andi 0x0000FFF8, r5, r5
	st.h r5, 0xFFFFE000[r2]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC21.c", 55
	ld.h 0xFFFFE02C[r2], r5
	ori 0x00000200, r5, r5
	st.h r5, 0xFFFFE02C[r2]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC21.c", 59
	ld.h 0xFFFFE02C[r2], r5
	ori 0x00004000, r5, r5
	ld.w 0x00000000[r3], r10
	st.h r5, 0xFFFFE02C[r2]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC21.c", 63
	ld.h 0xFFFFE038[r2], r5
	ori 0x000000E0, r5, r5
	st.h r5, 0xFFFFE038[r2]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC21.c", 68
	ld.h 0xFFFFE006[r2], r5
	ori 0x00000100, r5, r5
	andi 0x0000F9FF, r5, r5
	st.h r5, 0xFFFFE006[r2]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC21.c", 77
	ld.h 0xFFFFE000[r2], r5
	ori 0x00000C00, r5, r5
	st.h r5, 0xFFFFE000[r2]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC21.c", 82
	ld.hu 0xFFFFE02C[r2], r5
	andi 0x0000FBFF, r5, r5
	st.h r5, 0xFFFFE02C[r2]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC21.c", 88
	ld.hu 0xFFFFE02C[r2], r5
	andi 0x0000F7FF, r5, r5
	st.h r5, 0xFFFFE02C[r2]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC21.c", 95
	ld.h 0xFFFFE000[r2], r5
	ori 0x00002000, r5, r5
	andi 0x0000AFFF, r5, r5
	st.h r5, 0xFFFFE000[r2]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC21.c", 98
	ld.hu 0xFFFFE000[r2], r5
	andi 0x0000FCFF, r5, r5
	st.h r5, 0xFFFFE000[r2]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC21.c", 99
	ld.hu 0xFFFFE000[r2], r5
	andi 0x0000FF0F, r5, r5
	st.h r5, 0xFFFFE000[r2]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC21.c", 103
	ld.hu 0xFFFFE000[r2], r2
	andi 0x000000F0, r2, r0
	bz9 .BB.LABEL.1_7
.BB.LABEL.1_1:	; if_else_bb
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC21.c", 104
	movhi 0x0000FFEE, r0, r2
	ld.h 0xFFFFE000[r2], r2
	andi 0x000000FF, r2, r2
	shr 0x00000004, r2
	cmp 0x00000004, r2
	bnz9 .BB.LABEL.1_3
.BB.LABEL.1_2:	; if_then_bb73
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC21.c", 0
	movhi HIGHW1(#___u1_rdc21str_sel), r0, r2
	mov 0x00000001, r5
	st.b r5, LOWW(#___u1_rdc21str_sel)[r2]
	br9 .BB.LABEL.1_8
.BB.LABEL.1_3:	; if_else_bb74
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC21.c", 105
	movhi 0x0000FFEE, r0, r2
	ld.h 0xFFFFE000[r2], r2
	andi 0x000000FF, r2, r2
	shr 0x00000004, r2
	cmp 0x00000009, r2
	bnz9 .BB.LABEL.1_5
.BB.LABEL.1_4:	; if_then_bb82
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC21.c", 0
	movhi HIGHW1(#___u1_rdc21str_sel), r0, r2
	mov 0x00000002, r5
	st.b r5, LOWW(#___u1_rdc21str_sel)[r2]
	br9 .BB.LABEL.1_8
.BB.LABEL.1_5:	; if_else_bb83
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC21.c", 106
	movhi 0x0000FFEE, r0, r2
	ld.h 0xFFFFE000[r2], r2
	andi 0x000000FF, r2, r2
	shr 0x00000004, r2
	cmp 0x00000005, r2
	bnz9 .BB.LABEL.1_7
.BB.LABEL.1_6:	; if_then_bb91
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC21.c", 0
	movhi HIGHW1(#___u1_rdc21str_sel), r0, r2
	mov 0x00000003, r5
	st.b r5, LOWW(#___u1_rdc21str_sel)[r2]
	br9 .BB.LABEL.1_8
.BB.LABEL.1_7:	; if_else_bb92
	movhi HIGHW1(#___u1_rdc21str_sel), r0, r2
	st.b r0, LOWW(#___u1_rdc21str_sel)[r2]
.BB.LABEL.1_8:	; if_break_bb95
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC21.c", 110
	movhi 0x0000FFEE, r0, r2
	ld.hu 0xFFFFE002[r2], r5
	andi 0x00003FFF, r5, r5
	st.h r5, 0xFFFFE002[r2]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC21.c", 112
	ld.hu 0xFFFFE002[r2], r5
	andi 0x0000CFFF, r5, r5
	st.h r5, 0xFFFFE002[r2]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC21.c", 114
	ld.hu 0xFFFFE002[r2], r5
	andi 0x0000F0FF, r5, r5
	st.h r5, 0xFFFFE002[r2]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC21.c", 115
	ld.hu 0xFFFFE002[r2], r5
	andi 0x0000FF0F, r5, r5
	st.h r5, 0xFFFFE002[r2]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC21.c", 116
	ld.hu 0xFFFFE002[r2], r5
	andi 0x0000FFF7, r5, r5
	st.h r5, 0xFFFFE002[r2]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC21.c", 117
	ld.hu 0xFFFFE002[r2], r5
	andi 0x0000FFF8, r5, r5
	st.h r5, 0xFFFFE002[r2]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC21.c", 121
	ld.hu 0xFFFFE00C[r2], r5
	andi 0x0000FFFD, r5, r5
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC21.c", 124
	cmp 0x00000000, r9
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC21.c", 121
	st.h r5, 0xFFFFE00C[r2]
	movhi 0x0000FFEE, r0, r2
	ld.h 0xFFFFE01A[r2], r2
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC21.c", 124
	bnz9 .BB.LABEL.1_10
.BB.LABEL.1_9:	; if_then_bb122
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC21.c", 0
	movea 0xFFFFEFFF, r0, r5
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC21.c", 126
	and r5, r2
	br9 .BB.LABEL.1_11
.BB.LABEL.1_10:	; if_else_bb126
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC21.c", 130
	ori 0x00001000, r2, r2
.BB.LABEL.1_11:	; if_break_bb130
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC21.c", 0
	movhi 0x0000FFEE, r0, r5
	st.h r2, 0xFFFFE01A[r5]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC21.c", 133
	ld.h 0xFFFFE020[r5], r2
	st.h r0, 0xFFFFE020[r5]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC21.c", 134
	ld.h 0xFFFFE022[r5], r2
	st.h r0, 0xFFFFE022[r5]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC21.c", 135
	ld.h 0xFFFFE024[r5], r2
	st.h r0, 0xFFFFE024[r5]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC21.c", 139
	ld.hu 0xFFFFE028[r5], r2
	andi 0x0000FFEF, r2, r2
	st.h r2, 0xFFFFE028[r5]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC21.c", 140
	ld.hu 0xFFFFE028[r5], r2
	andi 0x0000FFF7, r2, r2
	st.h r2, 0xFFFFE028[r5]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC21.c", 141
	ld.hu 0xFFFFE028[r5], r2
	andi 0x0000FFFD, r2, r2
	st.h r2, 0xFFFFE028[r5]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC21.c", 142
	ld.hu 0xFFFFE028[r5], r2
	andi 0x0000FFFE, r2, r2
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC21.c", 144
	cmp 0x00000003, r6
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC21.c", 142
	st.h r2, 0xFFFFE028[r5]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC21.c", 144
	bh9 .BB.LABEL.1_14
.BB.LABEL.1_12:	; if_break_bb130
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC21.c", 0
	shl 0x00000001, r6
	jmp #.SWITCH.LABEL.1_47[r6]
.SWITCH.LABEL.1_47:
	br9 .BB.LABEL.1_19
	br9 .BB.LABEL.1_13
	br9 .BB.LABEL.1_15
	br9 .BB.LABEL.1_16
.SWITCH.LABEL.1_47.END:
.BB.LABEL.1_13:	; switch_clause_bb154
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC21.c", 149
	movhi 0x0000FFEE, r0, r2
	br9 .BB.LABEL.1_17
.BB.LABEL.1_14:	; switch_clause_bb169
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC21.c", 159
	nop
	br9 .BB.LABEL.1_19
.BB.LABEL.1_15:	; switch_clause_bb158
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC21.c", 152
	movhi 0x0000FFEE, r0, r2
	ld.h 0xFFFFE028[r2], r5
	ori 0x00000010, r5, r5
	br9 .BB.LABEL.1_18
.BB.LABEL.1_16:	; switch_clause_bb162
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC21.c", 155
	movhi 0x0000FFEE, r0, r2
	ld.h 0xFFFFE028[r2], r5
	ori 0x00000010, r5, r5
	st.h r5, 0xFFFFE028[r2]
.BB.LABEL.1_17:	; switch_clause_bb162
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC21.c", 0
	ld.h 0xFFFFE028[r2], r5
	ori 0x00000002, r5, r5
.BB.LABEL.1_18:	; switch_clause_bb162
	st.h r5, 0xFFFFE028[r2]
.BB.LABEL.1_19:	; switch_break_bb
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC21.c", 163
	cmp 0x00000001, r7
	bnz9 .BB.LABEL.1_21
.BB.LABEL.1_20:	; if_then_bb175
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC21.c", 165
	movhi 0x0000FFEE, r0, r2
	ld.h 0xFFFFE028[r2], r5
	ori 0x00000008, r5, r5
	st.h r5, 0xFFFFE028[r2]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC21.c", 166
	ld.h 0xFFFFE028[r2], r5
	ori 0x00000002, r5, r5
	st.h r5, 0xFFFFE028[r2]
.BB.LABEL.1_21:	; if_break_bb183
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC21.c", 172
	movhi 0x0000FFEE, r0, r2
	ld.hu 0xFFFFE02C[r2], r5
	andi 0x00007FFF, r5, r5
	st.h r5, 0xFFFFE02C[r2]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC21.c", 174
	ld.hu 0xFFFFE02C[r2], r5
	andi 0x0000DFFF, r5, r5
	st.h r5, 0xFFFFE02C[r2]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC21.c", 189
	ld.h 0xFFFFE032[r2], r5
	ori 0x00000010, r5, r5
	st.h r5, 0xFFFFE032[r2]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC21.c", 193
	ld.hu 0xFFFFE03A[r2], r5
	andi 0x00007FFF, r5, r5
	st.h r5, 0xFFFFE03A[r2]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC21.c", 197
	ld.h 0xFFFFE03A[r2], r5
	ori 0x00004000, r5, r5
	st.h r5, 0xFFFFE03A[r2]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC21.c", 201
	ld.h 0xFFFFE03A[r2], r5
	ori 0x00002000, r5, r5
	st.h r5, 0xFFFFE03A[r2]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC21.c", 204
	ld.hu 0xFFFFE03A[r2], r5
	andi 0x0000F7FF, r5, r5
	st.h r5, 0xFFFFE03A[r2]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC21.c", 205
	ld.h 0xFFFFE03A[r2], r5
	ori 0x00000080, r5, r5
	andi 0x0000FFBF, r5, r5
	st.h r5, 0xFFFFE03A[r2]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC21.c", 208
	ld.hu 0xFFFFE03A[r2], r5
	andi 0x0000FFEF, r5, r5
	st.h r5, 0xFFFFE03A[r2]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC21.c", 210
	ld.h 0xFFFFE03A[r2], r5
	ori 0x00000004, r5, r5
	andi 0x0000FFF4, r5, r5
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC21.c", 214
	cmp 0x00000001, r10
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC21.c", 210
	st.h r5, 0xFFFFE03A[r2]
	movhi 0x0000FFEE, r0, r2
	ld.h 0xFFFFE046[r2], r2
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC21.c", 214
	bnz9 .BB.LABEL.1_23
.BB.LABEL.1_22:	; if_then_bb219
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC21.c", 0
	mov 0xFFFFFFFE, r5
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC21.c", 216
	and r5, r2
	br9 .BB.LABEL.1_24
.BB.LABEL.1_23:	; if_else_bb223
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC21.c", 220
	ori 0x00000001, r2, r2
.BB.LABEL.1_24:	; if_break_bb227
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC21.c", 0
	movhi 0x0000FFEE, r0, r5
	st.h r2, 0xFFFFE046[r5]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC21.c", 226
	ld.hu 0xFFFFE048[r5], r2
	movea 0x0000189C, r0, r6
	andi 0x00007FFF, r2, r2
	st.h r2, 0xFFFFE048[r5]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC21.c", 230
	ld.h 0xFFFFE026[r5], r2
	ori 0x00008000, r2, r2
	st.h r2, 0xFFFFE026[r5]
.BB.LABEL.1_25:	; bb.split.clone
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC21.c", 235
	loop r6, .BB.LABEL.1_25
.BB.LABEL.1_26:	; bb243
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC21.c", 239
	movhi 0x0000FFEE, r0, r2
	ld.hu 0xFFFFE026[r2], r2
	andi 0x00008000, r2, r0
	bnz9 .BB.LABEL.1_26
.BB.LABEL.1_27:	; bb250
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC21.c", 244
	cmp 0x00000001, r8
	mov 0x00000000, r2
	bnz17 .BB.LABEL.1_44
.BB.LABEL.1_28:	; if_then_bb256
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC21.c", 247
	movhi 0x0000FFEE, r0, r2
	ld.h 0xFFFFE030[r2], r5
	mov 0x000493E0, r6
	ori 0x00000005, r5, r5
	andi 0x0000FFF5, r5, r5
	st.h r5, 0xFFFFE030[r2]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC21.c", 248
	ld.h 0xFFFFE030[r2], r5
	ori 0x00008000, r5, r5
	st.h r5, 0xFFFFE030[r2]
.BB.LABEL.1_29:	; bb263.split.clone
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC21.c", 252
	loop r6, .BB.LABEL.1_29
.BB.LABEL.1_30:	; bb271
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC21.c", 254
	movhi 0x0000FFEE, r0, r2
	ld.h 0xFFFFE030[r2], r5
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC21.c", 256
	ld.h 0xFFFFE030[r2], r6
	mov 0x000493E0, r7
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC21.c", 254
	andi 0x000000FF, r5, r5
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC21.c", 256
	ori 0x00000006, r6, r6
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC21.c", 254
	shr 0x00000004, r5
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC21.c", 256
	andi 0x0000FFF6, r6, r6
	st.h r6, 0xFFFFE030[r2]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC21.c", 257
	ld.h 0xFFFFE030[r2], r6
	ori 0x00008000, r6, r6
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC21.c", 254
	cmp 0x0000000F, r5
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC21.c", 257
	st.h r6, 0xFFFFE030[r2]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC21.c", 254
	setf 0x00000002, r5
.BB.LABEL.1_31:	; bb291.split.clone
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC21.c", 261
	loop r7, .BB.LABEL.1_31
.BB.LABEL.1_32:	; bb299
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC21.c", 263
	movhi 0x0000FFEE, r0, r2
	ld.h 0xFFFFE030[r2], r6
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC21.c", 265
	ld.h 0xFFFFE030[r2], r7
	mov 0x000493E0, r8
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC21.c", 263
	andi 0x000000FF, r6, r6
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC21.c", 265
	ori 0x00000007, r7, r7
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC21.c", 263
	shr 0x00000004, r6
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC21.c", 265
	andi 0x0000FFF7, r7, r7
	st.h r7, 0xFFFFE030[r2]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC21.c", 266
	ld.h 0xFFFFE030[r2], r7
	ori 0x00008000, r7, r7
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC21.c", 263
	cmp 0x0000000F, r6
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC21.c", 266
	st.h r7, 0xFFFFE030[r2]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC21.c", 263
	setf 0x00000002, r2
	add r2, r2
.BB.LABEL.1_33:	; bb319.split.clone
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC21.c", 270
	loop r8, .BB.LABEL.1_33
.BB.LABEL.1_34:	; bb327
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC21.c", 272
	movhi 0x0000FFEE, r0, r6
	ld.h 0xFFFFE030[r6], r7
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC21.c", 274
	ld.h 0xFFFFE030[r6], r8
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC21.c", 272
	andi 0x000000FF, r7, r7
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC21.c", 274
	ori 0x00000009, r8, r8
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC21.c", 272
	shr 0x00000004, r7
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC21.c", 274
	andi 0x0000FFF9, r8, r8
	st.h r8, 0xFFFFE030[r6]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC21.c", 275
	ld.h 0xFFFFE030[r6], r8
	ori 0x00008000, r8, r8
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC21.c", 272
	cmp 0x0000000F, r7
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC21.c", 275
	st.h r8, 0xFFFFE030[r6]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC21.c", 272
	setf 0x00000002, r6
	shl 0x00000002, r6
	ori 0x0000AFC8, r0, r7
.BB.LABEL.1_35:	; bb347.split.clone
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC21.c", 279
	loop r7, .BB.LABEL.1_35
.BB.LABEL.1_36:	; bb355
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC21.c", 281
	movhi 0x0000FFEE, r0, r7
	ld.h 0xFFFFE030[r7], r8
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC21.c", 283
	ld.h 0xFFFFE030[r7], r9
	movea 0x00007530, r0, r10
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC21.c", 281
	andi 0x000000FF, r8, r8
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC21.c", 283
	ori 0x0000000A, r9, r9
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC21.c", 281
	shr 0x00000004, r8
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC21.c", 283
	andi 0x0000FFFA, r9, r9
	st.h r9, 0xFFFFE030[r7]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC21.c", 284
	ld.h 0xFFFFE030[r7], r9
	ori 0x00008000, r9, r9
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC21.c", 281
	cmp 0x0000000F, r8
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC21.c", 284
	st.h r9, 0xFFFFE030[r7]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC21.c", 281
	setf 0x00000002, r7
	shl 0x00000003, r7
.BB.LABEL.1_37:	; bb375.split.clone
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC21.c", 288
	loop r10, .BB.LABEL.1_37
.BB.LABEL.1_38:	; bb383
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC21.c", 290
	movhi 0x0000FFEE, r0, r8
	ld.h 0xFFFFE030[r8], r9
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC21.c", 292
	ld.h 0xFFFFE030[r8], r10
	movea 0x00007530, r0, r11
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC21.c", 290
	andi 0x000000FF, r9, r9
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC21.c", 292
	ori 0x0000000B, r10, r10
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC21.c", 290
	shr 0x00000004, r9
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC21.c", 292
	andi 0x0000FFFB, r10, r10
	st.h r10, 0xFFFFE030[r8]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC21.c", 293
	ld.h 0xFFFFE030[r8], r10
	ori 0x00008000, r10, r10
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC21.c", 290
	cmp 0x0000000F, r9
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC21.c", 293
	st.h r10, 0xFFFFE030[r8]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC21.c", 290
	setf 0x00000002, r8
	shl 0x00000004, r8
.BB.LABEL.1_39:	; bb403.split.clone
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC21.c", 297
	loop r11, .BB.LABEL.1_39
.BB.LABEL.1_40:	; bb411
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC21.c", 299
	movhi 0x0000FFEE, r0, r9
	ld.h 0xFFFFE030[r9], r10
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC21.c", 301
	ld.h 0xFFFFE030[r9], r11
	mov 0x000493E0, r12
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC21.c", 299
	andi 0x000000FF, r10, r10
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC21.c", 301
	ori 0x0000000C, r11, r11
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC21.c", 299
	shr 0x00000004, r10
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC21.c", 301
	andi 0x0000FFFC, r11, r11
	st.h r11, 0xFFFFE030[r9]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC21.c", 302
	ld.h 0xFFFFE030[r9], r11
	ori 0x00008000, r11, r11
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC21.c", 299
	cmp 0x0000000F, r10
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC21.c", 302
	st.h r11, 0xFFFFE030[r9]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC21.c", 299
	setf 0x00000002, r9
	shl 0x00000005, r9
.BB.LABEL.1_41:	; bb431.split.clone
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC21.c", 306
	loop r12, .BB.LABEL.1_41
.BB.LABEL.1_42:	; bb439
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC21.c", 308
	movhi 0x0000FFEE, r0, r10
	ld.h 0xFFFFE030[r10], r11
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC21.c", 310
	ld.hu 0xFFFFE030[r10], r12
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC21.c", 308
	or r5, r2
	or r6, r2
	or r7, r2
	andi 0x000000FF, r11, r6
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC21.c", 310
	andi 0x00007FFF, r12, r5
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC21.c", 308
	shr 0x00000004, r6
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC21.c", 310
	st.h r5, 0xFFFFE030[r10]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC21.c", 308
	or r8, r2
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC21.c", 311
	ld.h 0xFFFFE03E[r10], r5
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC21.c", 308
	or r9, r2
	mov 0x000493E0, r7
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC21.c", 311
	ori 0x00008000, r5, r5
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC21.c", 308
	cmp 0x0000000F, r6
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC21.c", 311
	st.h r5, 0xFFFFE03E[r10]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC21.c", 308
	setf 0x00000002, r5
	shl 0x00000006, r5
	or r5, r2
.BB.LABEL.1_43:	; bb459.split.clone
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC21.c", 316
	loop r7, .BB.LABEL.1_43
.BB.LABEL.1_44:	; if_break_bb468
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC21.c", 323
	movhi 0x0000FFEE, r0, r5
	ld.hu 0xFFFFE03A[r5], r6
	mov 0x000493E0, r7
	andi 0x0000F7FF, r6, r6
	st.h r6, 0xFFFFE03A[r5]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC21.c", 328
	ld.h 0xFFFFE00C[r5], r6
	ori 0x00000002, r6, r6
	st.h r6, 0xFFFFE00C[r5]
.BB.LABEL.1_45:	; bb475.split.clone
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC21.c", 333
	loop r7, .BB.LABEL.1_45
.BB.LABEL.1_46:	; bb483
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC21.c", 342
	andi 0x000000FF, r2, r10
	jmp [r31]
_u2_rdc21str_read:
	.stack _u2_rdc21str_read = 4
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC21.c", 347
	prepare 0x00000001, 0x00000000
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC21.c", 354
	movhi HIGHW1(#___u1_rdc21str_sel), r0, r2
	ld.bu LOWW(#___u1_rdc21str_sel)[r2], r2
	ld23.hu 0xFFEDE01C[r0], r10
	cmp 0x00000003, r2
	bh9 .BB.LABEL.2_3
.BB.LABEL.2_1:	; entry
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC21.c", 0
	shl 0x00000001, r2
	jmp #.SWITCH.LABEL.2_6[r2]
.SWITCH.LABEL.2_6:
	br9 .BB.LABEL.2_2
	br9 .BB.LABEL.2_2
	br9 .BB.LABEL.2_4
	br9 .BB.LABEL.2_5
.SWITCH.LABEL.2_6.END:
.BB.LABEL.2_2:	; switch_clause_bb6
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC21.c", 375
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.2_3:	; switch_break_bb
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC21.c", 0
	mov 0x00000000, r10
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC21.c", 375
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.2_4:	; switch_clause_bb8
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC21.c", 363
	jarl _s4_rdc21_rpm, r31
	andi 0x0000FFFF, r10, r10
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.2_5:	; switch_clause_bb11
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC21.c", 367
	andi 0x000000FF, r10, r10
	dispose 0x00000000, 0x00000001, [r31]
_u2_rdc21_cnt_read:
	.stack _u2_rdc21_cnt_read = 0
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC21.c", 382
	ld23.hu 0xFFEDE008[r0], r2
	andi 0x0000FFFF, r2, r10
	shr 0x00000004, r10
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC21.c", 384
	jmp [r31]
_rdc21_init_interrupt:
	.stack _rdc21_init_interrupt = 0
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC21.c", 400
	ld.w 0xFFFFB920[r0], r2
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC21.c", 420
	cmp 0x00000002, r8
	bnz9 .BB.LABEL.4_2
.BB.LABEL.4_1:	; if_then_bb
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC21.c", 0
	movhi 0x00000001, r0, r5
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC21.c", 422
	or r5, r2
	mov 0xFFFDFFFF, r8
	and r8, r2
	mov 0xFFFFFFFA, r9
	st.w r2, 0xFFFFB920[r0]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC21.c", 423
	ld.w 0xFFFFB920[r0], r2
	ori 0x00000002, r2, r2
	and r9, r2
	st.w r2, 0xFFFFB920[r0]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC21.c", 425
	ld.w 0xFFFFB928[r0], r2
	or r5, r2
	and r8, r2
	st.w r2, 0xFFFFB928[r0]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC21.c", 426
	ld.w 0xFFFFB928[r0], r2
	ori 0x00000002, r2, r2
	and r9, r2
	st.w r2, 0xFFFFB928[r0]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC21.c", 428
	ld.w 0xFFFFB92C[r0], r2
	or r5, r2
	and r8, r2
	st.w r2, 0xFFFFB92C[r0]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC21.c", 429
	ld.w 0xFFFFB92C[r0], r2
	ori 0x00000002, r2, r2
	and r9, r2
	st.w r2, 0xFFFFB92C[r0]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC21.c", 431
	ld.w 0xFFFFB930[r0], r2
	or r5, r2
	and r8, r2
	st.w r2, 0xFFFFB930[r0]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC21.c", 432
	ld.w 0xFFFFB930[r0], r2
	ori 0x00000002, r2, r2
	and r9, r2
	br9 .BB.LABEL.4_3
.BB.LABEL.4_2:	; if_else_bb
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC21.c", 0
	mov 0xFFFCFFFF, r5
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC21.c", 436
	and r5, r2
	mov 0xFFFFFFF9, r8
	st.w r2, 0xFFFFB920[r0]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC21.c", 437
	ld.w 0xFFFFB920[r0], r2
	ori 0x00000001, r2, r2
	and r8, r2
	st.w r2, 0xFFFFB920[r0]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC21.c", 439
	ld.w 0xFFFFB928[r0], r2
	and r5, r2
	st.w r2, 0xFFFFB928[r0]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC21.c", 440
	ld.w 0xFFFFB928[r0], r2
	ori 0x00000001, r2, r2
	and r8, r2
	st.w r2, 0xFFFFB928[r0]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC21.c", 442
	ld.w 0xFFFFB92C[r0], r2
	and r5, r2
	st.w r2, 0xFFFFB92C[r0]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC21.c", 443
	ld.w 0xFFFFB92C[r0], r2
	ori 0x00000001, r2, r2
	and r8, r2
	st.w r2, 0xFFFFB92C[r0]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC21.c", 445
	ld.w 0xFFFFB930[r0], r2
	and r5, r2
	st.w r2, 0xFFFFB930[r0]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC21.c", 446
	ld.w 0xFFFFB930[r0], r2
	ori 0x00000001, r2, r2
	and r8, r2
.BB.LABEL.4_3:	; if_break_bb
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC21.c", 0
	st.w r2, 0xFFFFB930[r0]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC21.c", 448
	cmp 0x0000000F, r6
	bgt9 .BB.LABEL.4_7
.BB.LABEL.4_4:	; if_then_bb63
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC21.c", 450
	andi 0x00000080, r7, r0
	bnz9 .BB.LABEL.4_6
.BB.LABEL.4_5:	; return
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC21.c", 487
	jmp [r31]
.BB.LABEL.4_6:	; if_then_bb75
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC21.c", 451
	clr1 0x00000004, 0xFFFFB091[r0]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC21.c", 452
	ld.bu 0xFFFFB090[r0], r2
	andi 0x0000000F, r6, r5
	andi 0x000000F0, r2, r2
	or r5, r2
	st.b r2, 0xFFFFB090[r0]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC21.c", 453
	set1 0x00000006, 0xFFFFB090[r0]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC21.c", 455
	clr1 0x00000007, 0xFFFFB090[r0]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC21.c", 458
	clr1 0x00000004, 0xFFFFB095[r0]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC21.c", 459
	ld.bu 0xFFFFB094[r0], r2
	andi 0x000000F0, r2, r2
	or r5, r2
	st.b r2, 0xFFFFB094[r0]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC21.c", 460
	set1 0x00000006, 0xFFFFB094[r0]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC21.c", 462
	clr1 0x00000007, 0xFFFFB094[r0]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC21.c", 465
	clr1 0x00000004, 0xFFFFB097[r0]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC21.c", 466
	ld.bu 0xFFFFB096[r0], r2
	andi 0x000000F0, r2, r2
	or r5, r2
	st.b r2, 0xFFFFB096[r0]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC21.c", 467
	set1 0x00000006, 0xFFFFB096[r0]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC21.c", 469
	clr1 0x00000007, 0xFFFFB096[r0]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC21.c", 472
	clr1 0x00000004, 0xFFFFB099[r0]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC21.c", 473
	ld.bu 0xFFFFB098[r0], r2
	andi 0x000000F0, r2, r2
	or r5, r2
	st.b r2, 0xFFFFB098[r0]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC21.c", 474
	set1 0x00000006, 0xFFFFB098[r0]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC21.c", 476
	clr1 0x00000007, 0xFFFFB098[r0]
	jmp [r31]
.BB.LABEL.4_7:	; if_else_bb137
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC21.c", 481
	set1 0x00000007, 0xFFFFB090[r0]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC21.c", 482
	set1 0x00000007, 0xFFFFB094[r0]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC21.c", 483
	set1 0x00000007, 0xFFFFB096[r0]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC21.c", 484
	set1 0x00000007, 0xFFFFB098[r0]
	jmp [r31]
_rdc21_cmp0_set:
	.stack _rdc21_cmp0_set = 0
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC21.c", 492
	di
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC21.c", 495
	ld23.h 0xFFEDE020[r0], r2
	shl 0x00000004, r6
	st23.h r6, 0xFFEDE020[r0]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC21.c", 496
	ei
	jmp [r31]
_rdc21_cmp1_set:
	.stack _rdc21_cmp1_set = 0
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC21.c", 503
	di
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC21.c", 506
	ld23.h 0xFFEDE022[r0], r2
	shl 0x00000004, r6
	st23.h r6, 0xFFEDE022[r0]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC21.c", 507
	ei
	jmp [r31]
_rdc21_cmp2_set:
	.stack _rdc21_cmp2_set = 0
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC21.c", 514
	di
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC21.c", 517
	ld23.h 0xFFEDE024[r0], r2
	shl 0x00000004, r6
	st23.h r6, 0xFFEDE024[r0]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC21.c", 518
	ei
	jmp [r31]
_s4_rdc21_rpm:
	.stack _s4_rdc21_rpm = 0
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC21.c", 553
	ld23.hu 0xFFEDE01C[r0], r2
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC21.c", 555
	andi 0x00000001, r2, r5
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC21.c", 558
	mov r2, r6
	subr r0, r6
	cmp 0x00000000, r5
	mov 0xFFFFFFFF, r5
	cmov 0x00000002, r2, r6, r2
	cmov 0x00000002, 0x00000001, r5, r5
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC21.c", 567
	andi 0x0000FF00, r2, r6
	andi 0x000000FE, r2, r2
	mov r6, r7
	mov r2, r8
	shr 0x00000007, r8
	shr 0x0000000F, r7
	mulhi 0x000023C3, r8, r10
	mulhi 0x00000024, r7, r7
	mov r6, r8
	shr 0x0000000E, r8
	andi 0x00000001, r8, r8
	mulhi 0x00000048, r8, r8
	mov r6, r9
	shr 0x0000000D, r9
	add r7, r10
	andi 0x00000001, r9, r9
	mulhi 0x0000008F, r9, r9
	mov r6, r7
	shr 0x0000000C, r7
	add r8, r10
	andi 0x00000001, r7, r7
	mulhi 0x0000011E, r7, r7
	mov r6, r8
	add r9, r10
	shr 0x0000000B, r8
	andi 0x00000001, r8, r8
	mulhi 0x0000023C, r8, r8
	mov r6, r9
	shr 0x0000000A, r9
	add r7, r10
	andi 0x00000001, r9, r7
	mulhi 0x00000478, r7, r7
	mov r6, r9
	shr 0x00000009, r9
	add r8, r10
	andi 0x00000001, r9, r8
	mulhi 0x000008F1, r8, r8
	shr 0x00000008, r6
	add r7, r10
	andi 0x00000001, r6, r6
	mulhi 0x000011E2, r6, r6
	mov r2, r7
	shr 0x00000006, r7
	add r8, r10
	andi 0x00000001, r7, r7
	mulhi 0x00004787, r7, r7
	mov r2, r8
	shr 0x00000005, r8
	add r6, r10
	andi 0x00000001, r8, r6
	ori 0x00008F0D, r0, r8
	add r7, r10
	mul r8, r6, r0
	mov r2, r7
	shr 0x00000004, r7
	mov 0x00011E1A, r8
	andi 0x00000001, r7, r7
	add r6, r10
	mul r8, r7, r0
	mov r2, r6
	shr 0x00000003, r6
	mov 0x00023C34, r8
	andi 0x00000001, r6, r6
	add r7, r10
	mul r8, r6, r0
	mov r2, r7
	shr 0x00000002, r7
	mov 0x00047869, r8
	andi 0x00000001, r7, r7
	add r6, r10
	shr 0x00000001, r2
	mul r8, r7, r0
	andi 0x00000001, r2, r2
	mov 0x0008F0D2, r6
	mul r6, r2, r0
	add r7, r10
	add r2, r10
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC21.c", 583
	mul r5, r10, r0
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC21.c", 586
	jmp [r31]
_u2_read_rdc21_status:
	.stack _u2_read_rdc21_status = 0
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC21.c", 595
	ld23.hu 0xFFEDE03E[r0], r2
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC21.c", 596
	andi 0x00007000, r2, r2
	addi 0xFFFF9000, r2, r0
	bnz9 .BB.LABEL.9_2
.BB.LABEL.9_1:	; bb10
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC21.c", 0
	mov 0x00000000, r10
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC21.c", 605
	jmp [r31]
.BB.LABEL.9_2:	; if_else_bb
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC21.c", 602
	ld23.hu 0xFFEDE03E[r0], r10
	jmp [r31]
_rdc21_ABZ_Terminal_output:
	.stack _rdc21_ABZ_Terminal_output = 0
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC21.c", 621
	movhi 0x0000FFC1, r0, r2
	movea 0x00000041, r0, r5
	st.w r5, 0x00002184[r2]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC21.c", 622
	st.w r5, 0x00002188[r2]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC21.c", 623
	st.w r5, 0x0000218C[r2]
	jmp [r31]
	.section .bss, bss
___u1_rdc21str_sel:
	.ds (1)
