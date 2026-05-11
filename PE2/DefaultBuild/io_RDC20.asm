#CC-RH Compiler RH850 Assembler Source
#@	CC-RH Version : V2.06.00  [28 Nov 2023]
#@	Command : Common\fi_pe2_error.c ..\Common\iolib\io_CPU.c ..\Common\iolib\io_ADC.c ..\Common\iolib\io_CSIH0.c ..\Common\iolib\io_CSIH1.c ..\Common\iolib\io_ENCA0.c ..\Common\iolib\io_ENCA1.c ..\Common\iolib\io_FCAN.c ..\Common\iolib\io_RDC20.c ..\Common\iolib\io_RDC21.c ..\Common\iolib\io_SCI0_40MHz.c ..\Common\iolib\io_SCI1_40MHz.c ..\Common\iolib\io_SCI2_40MHz.c ..\Common\iolib\io_TAUD0.c ..\Common\iolib\io_TAUD1.c ..\Common\iolib\io_TAUJ0.c ..\Common\iolib\io_TSG30.c ..\Common\iolib\io_TSG31.c ..\PE1\AWatcher\VECLIB_CMDMONI.c src\fpmsm_main.c ..\PE1\src\fi_AWatcher.c src\fi_1ms_int.c src\fi_20us_int.c src\fi_enc1_int.c src\fi_pwm_int.c ..\PE1\src\fb_kpwm_tbl.c ..\PE1\src\fb_therm_calc.c ..\PE1\src\fb_therm_tbl_module.c ..\PE1\src\fb_vctrlerr_tbl.c ..\PE1\src\fi_pwm_vctrlerrtbl.c ..\Common\iolib\io_PIO_amdt0530.c -Xobj_path=DefaultBuild -Xcpu=g3m -g -g_line -Ospeed -Oinline_size -I..\PE1\src -Isrc -I..\Common -D__CLK_HSB=80,__CLK_LSB=40,__CLKC_HSB=80,__CLK_CLSB=40 -use_recipf -Xasm_path=DefaultBuild -c
#@	compiled at Thu Aug 22 10:25:06 2024

	.file "..\Common\iolib\io_RDC20.c"

	$reg_mode 32
	.dbl_size 8

	.public ___u1_rdc20str_sel, 1
	.public _rdc20_init
	.public _u2_rdc20str_read
	.public _u2_rdc20_cnt_read
	.public _rdc20_init_interrupt
	.public _rdc20_cmp0_set
	.public _rdc20_cmp1_set
	.public _rdc20_cmp2_set
	.public _s4_rdc20_rpm
	.public _u2_read_rdc20_status
	.public _rdc20_ABZ_Terminal_output

	.section .text, text
_rdc20_init:
	.stack _rdc20_init = 0
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC20.c", 41
	movhi 0x0000FFEE, r0, r2
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC20.c", 47
	ld.h 0xFFFFD02C[r2], r5
	ori 0x00000100, r5, r5
	st.h r5, 0xFFFFD02C[r2]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC20.c", 51
	ld.hu 0xFFFFD000[r2], r5
	andi 0x0000FFF8, r5, r5
	st.h r5, 0xFFFFD000[r2]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC20.c", 56
	ld.h 0xFFFFD02C[r2], r5
	ori 0x00000200, r5, r5
	st.h r5, 0xFFFFD02C[r2]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC20.c", 60
	ld.h 0xFFFFD02C[r2], r5
	ori 0x00004000, r5, r5
	ld.w 0x00000000[r3], r10
	st.h r5, 0xFFFFD02C[r2]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC20.c", 64
	ld.h 0xFFFFD038[r2], r5
	ori 0x000000E0, r5, r5
	st.h r5, 0xFFFFD038[r2]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC20.c", 69
	ld.h 0xFFFFD006[r2], r5
	ori 0x00000100, r5, r5
	andi 0x0000F9FF, r5, r5
	st.h r5, 0xFFFFD006[r2]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC20.c", 78
	ld.h 0xFFFFD000[r2], r5
	ori 0x00000C00, r5, r5
	st.h r5, 0xFFFFD000[r2]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC20.c", 83
	ld.hu 0xFFFFD02C[r2], r5
	andi 0x0000FBFF, r5, r5
	st.h r5, 0xFFFFD02C[r2]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC20.c", 89
	ld.hu 0xFFFFD02C[r2], r5
	andi 0x0000F7FF, r5, r5
	st.h r5, 0xFFFFD02C[r2]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC20.c", 96
	ld.h 0xFFFFD000[r2], r5
	ori 0x00002000, r5, r5
	andi 0x0000AFFF, r5, r5
	st.h r5, 0xFFFFD000[r2]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC20.c", 99
	ld.hu 0xFFFFD000[r2], r5
	andi 0x0000FCFF, r5, r5
	st.h r5, 0xFFFFD000[r2]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC20.c", 100
	ld.hu 0xFFFFD000[r2], r5
	andi 0x0000FF0F, r5, r5
	st.h r5, 0xFFFFD000[r2]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC20.c", 104
	ld.hu 0xFFFFD000[r2], r2
	andi 0x000000F0, r2, r0
	bz9 .BB.LABEL.1_7
.BB.LABEL.1_1:	; if_else_bb
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC20.c", 105
	movhi 0x0000FFEE, r0, r2
	ld.h 0xFFFFD000[r2], r2
	andi 0x000000FF, r2, r2
	shr 0x00000004, r2
	cmp 0x00000004, r2
	bnz9 .BB.LABEL.1_3
.BB.LABEL.1_2:	; if_then_bb73
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC20.c", 0
	movhi HIGHW1(#___u1_rdc20str_sel), r0, r2
	mov 0x00000001, r5
	st.b r5, LOWW(#___u1_rdc20str_sel)[r2]
	br9 .BB.LABEL.1_8
.BB.LABEL.1_3:	; if_else_bb74
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC20.c", 106
	movhi 0x0000FFEE, r0, r2
	ld.h 0xFFFFD000[r2], r2
	andi 0x000000FF, r2, r2
	shr 0x00000004, r2
	cmp 0x00000009, r2
	bnz9 .BB.LABEL.1_5
.BB.LABEL.1_4:	; if_then_bb82
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC20.c", 0
	movhi HIGHW1(#___u1_rdc20str_sel), r0, r2
	mov 0x00000002, r5
	st.b r5, LOWW(#___u1_rdc20str_sel)[r2]
	br9 .BB.LABEL.1_8
.BB.LABEL.1_5:	; if_else_bb83
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC20.c", 107
	movhi 0x0000FFEE, r0, r2
	ld.h 0xFFFFD000[r2], r2
	andi 0x000000FF, r2, r2
	shr 0x00000004, r2
	cmp 0x00000005, r2
	bnz9 .BB.LABEL.1_7
.BB.LABEL.1_6:	; if_then_bb91
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC20.c", 0
	movhi HIGHW1(#___u1_rdc20str_sel), r0, r2
	mov 0x00000003, r5
	st.b r5, LOWW(#___u1_rdc20str_sel)[r2]
	br9 .BB.LABEL.1_8
.BB.LABEL.1_7:	; if_else_bb92
	movhi HIGHW1(#___u1_rdc20str_sel), r0, r2
	st.b r0, LOWW(#___u1_rdc20str_sel)[r2]
.BB.LABEL.1_8:	; if_break_bb95
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC20.c", 111
	movhi 0x0000FFEE, r0, r2
	ld.hu 0xFFFFD002[r2], r5
	andi 0x00003FFF, r5, r5
	st.h r5, 0xFFFFD002[r2]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC20.c", 113
	ld.hu 0xFFFFD002[r2], r5
	andi 0x0000CFFF, r5, r5
	st.h r5, 0xFFFFD002[r2]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC20.c", 116
	ld.hu 0xFFFFD002[r2], r5
	andi 0x0000F0FF, r5, r5
	st.h r5, 0xFFFFD002[r2]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC20.c", 117
	ld.hu 0xFFFFD002[r2], r5
	andi 0x0000FF0F, r5, r5
	st.h r5, 0xFFFFD002[r2]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC20.c", 118
	ld.hu 0xFFFFD002[r2], r5
	andi 0x0000FFF7, r5, r5
	st.h r5, 0xFFFFD002[r2]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC20.c", 119
	ld.hu 0xFFFFD002[r2], r5
	andi 0x0000FFF8, r5, r5
	st.h r5, 0xFFFFD002[r2]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC20.c", 123
	ld.hu 0xFFFFD00C[r2], r5
	andi 0x0000FFFD, r5, r5
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC20.c", 126
	cmp 0x00000000, r9
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC20.c", 123
	st.h r5, 0xFFFFD00C[r2]
	movhi 0x0000FFEE, r0, r2
	ld.h 0xFFFFD01A[r2], r2
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC20.c", 126
	bnz9 .BB.LABEL.1_10
.BB.LABEL.1_9:	; if_then_bb122
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC20.c", 0
	movea 0xFFFFEFFF, r0, r5
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC20.c", 128
	and r5, r2
	br9 .BB.LABEL.1_11
.BB.LABEL.1_10:	; if_else_bb126
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC20.c", 132
	ori 0x00001000, r2, r2
.BB.LABEL.1_11:	; if_break_bb130
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC20.c", 0
	movhi 0x0000FFEE, r0, r5
	st.h r2, 0xFFFFD01A[r5]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC20.c", 135
	ld.h 0xFFFFD020[r5], r2
	st.h r0, 0xFFFFD020[r5]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC20.c", 136
	ld.h 0xFFFFD022[r5], r2
	st.h r0, 0xFFFFD022[r5]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC20.c", 137
	ld.h 0xFFFFD024[r5], r2
	st.h r0, 0xFFFFD024[r5]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC20.c", 141
	ld.hu 0xFFFFD028[r5], r2
	andi 0x0000FFEF, r2, r2
	st.h r2, 0xFFFFD028[r5]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC20.c", 142
	ld.hu 0xFFFFD028[r5], r2
	andi 0x0000FFF7, r2, r2
	st.h r2, 0xFFFFD028[r5]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC20.c", 143
	ld.hu 0xFFFFD028[r5], r2
	andi 0x0000FFFD, r2, r2
	st.h r2, 0xFFFFD028[r5]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC20.c", 144
	ld.hu 0xFFFFD028[r5], r2
	andi 0x0000FFFE, r2, r2
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC20.c", 146
	cmp 0x00000003, r6
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC20.c", 144
	st.h r2, 0xFFFFD028[r5]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC20.c", 146
	bh9 .BB.LABEL.1_14
.BB.LABEL.1_12:	; if_break_bb130
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC20.c", 0
	shl 0x00000001, r6
	jmp #.SWITCH.LABEL.1_47[r6]
.SWITCH.LABEL.1_47:
	br9 .BB.LABEL.1_19
	br9 .BB.LABEL.1_13
	br9 .BB.LABEL.1_15
	br9 .BB.LABEL.1_16
.SWITCH.LABEL.1_47.END:
.BB.LABEL.1_13:	; switch_clause_bb154
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC20.c", 151
	movhi 0x0000FFEE, r0, r2
	br9 .BB.LABEL.1_17
.BB.LABEL.1_14:	; switch_clause_bb169
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC20.c", 161
	nop
	br9 .BB.LABEL.1_19
.BB.LABEL.1_15:	; switch_clause_bb158
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC20.c", 154
	movhi 0x0000FFEE, r0, r2
	ld.h 0xFFFFD028[r2], r5
	ori 0x00000010, r5, r5
	br9 .BB.LABEL.1_18
.BB.LABEL.1_16:	; switch_clause_bb162
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC20.c", 157
	movhi 0x0000FFEE, r0, r2
	ld.h 0xFFFFD028[r2], r5
	ori 0x00000010, r5, r5
	st.h r5, 0xFFFFD028[r2]
.BB.LABEL.1_17:	; switch_clause_bb162
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC20.c", 0
	ld.h 0xFFFFD028[r2], r5
	ori 0x00000002, r5, r5
.BB.LABEL.1_18:	; switch_clause_bb162
	st.h r5, 0xFFFFD028[r2]
.BB.LABEL.1_19:	; switch_break_bb
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC20.c", 165
	cmp 0x00000001, r7
	bnz9 .BB.LABEL.1_21
.BB.LABEL.1_20:	; if_then_bb175
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC20.c", 167
	movhi 0x0000FFEE, r0, r2
	ld.h 0xFFFFD028[r2], r5
	ori 0x00000008, r5, r5
	st.h r5, 0xFFFFD028[r2]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC20.c", 168
	ld.h 0xFFFFD028[r2], r5
	ori 0x00000002, r5, r5
	st.h r5, 0xFFFFD028[r2]
.BB.LABEL.1_21:	; if_break_bb183
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC20.c", 174
	movhi 0x0000FFEE, r0, r2
	ld.hu 0xFFFFD02C[r2], r5
	andi 0x00007FFF, r5, r5
	st.h r5, 0xFFFFD02C[r2]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC20.c", 176
	ld.hu 0xFFFFD02C[r2], r5
	andi 0x0000DFFF, r5, r5
	st.h r5, 0xFFFFD02C[r2]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC20.c", 191
	ld.h 0xFFFFD032[r2], r5
	ori 0x00000010, r5, r5
	st.h r5, 0xFFFFD032[r2]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC20.c", 195
	ld.hu 0xFFFFD03A[r2], r5
	andi 0x00007FFF, r5, r5
	st.h r5, 0xFFFFD03A[r2]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC20.c", 199
	ld.h 0xFFFFD03A[r2], r5
	ori 0x00004000, r5, r5
	st.h r5, 0xFFFFD03A[r2]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC20.c", 203
	ld.h 0xFFFFD03A[r2], r5
	ori 0x00002000, r5, r5
	st.h r5, 0xFFFFD03A[r2]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC20.c", 206
	ld.hu 0xFFFFD03A[r2], r5
	andi 0x0000F7FF, r5, r5
	st.h r5, 0xFFFFD03A[r2]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC20.c", 207
	ld.h 0xFFFFD03A[r2], r5
	ori 0x00000080, r5, r5
	andi 0x0000FFBF, r5, r5
	st.h r5, 0xFFFFD03A[r2]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC20.c", 210
	ld.hu 0xFFFFD03A[r2], r5
	andi 0x0000FFEF, r5, r5
	st.h r5, 0xFFFFD03A[r2]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC20.c", 212
	ld.h 0xFFFFD03A[r2], r5
	ori 0x00000004, r5, r5
	andi 0x0000FFF4, r5, r5
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC20.c", 216
	cmp 0x00000001, r10
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC20.c", 212
	st.h r5, 0xFFFFD03A[r2]
	movhi 0x0000FFEE, r0, r2
	ld.h 0xFFFFD046[r2], r2
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC20.c", 216
	bnz9 .BB.LABEL.1_23
.BB.LABEL.1_22:	; if_then_bb219
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC20.c", 0
	mov 0xFFFFFFFE, r5
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC20.c", 218
	and r5, r2
	br9 .BB.LABEL.1_24
.BB.LABEL.1_23:	; if_else_bb223
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC20.c", 222
	ori 0x00000001, r2, r2
.BB.LABEL.1_24:	; if_break_bb227
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC20.c", 0
	movhi 0x0000FFEE, r0, r5
	st.h r2, 0xFFFFD046[r5]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC20.c", 227
	ld.hu 0xFFFFD048[r5], r2
	movea 0x0000189C, r0, r6
	andi 0x00007FFF, r2, r2
	st.h r2, 0xFFFFD048[r5]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC20.c", 231
	ld.h 0xFFFFD026[r5], r2
	ori 0x00008000, r2, r2
	st.h r2, 0xFFFFD026[r5]
.BB.LABEL.1_25:	; bb.split.clone
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC20.c", 236
	loop r6, .BB.LABEL.1_25
.BB.LABEL.1_26:	; bb243
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC20.c", 240
	movhi 0x0000FFEE, r0, r2
	ld.hu 0xFFFFD026[r2], r2
	andi 0x00008000, r2, r0
	bnz9 .BB.LABEL.1_26
.BB.LABEL.1_27:	; bb250
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC20.c", 245
	cmp 0x00000001, r8
	mov 0x00000000, r2
	bnz17 .BB.LABEL.1_44
.BB.LABEL.1_28:	; if_then_bb256
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC20.c", 248
	movhi 0x0000FFEE, r0, r2
	ld.h 0xFFFFD030[r2], r5
	mov 0x000493E0, r6
	ori 0x00000005, r5, r5
	andi 0x0000FFF5, r5, r5
	st.h r5, 0xFFFFD030[r2]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC20.c", 249
	ld.h 0xFFFFD030[r2], r5
	ori 0x00008000, r5, r5
	st.h r5, 0xFFFFD030[r2]
.BB.LABEL.1_29:	; bb263.split.clone
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC20.c", 253
	loop r6, .BB.LABEL.1_29
.BB.LABEL.1_30:	; bb271
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC20.c", 255
	movhi 0x0000FFEE, r0, r2
	ld.h 0xFFFFD030[r2], r5
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC20.c", 257
	ld.h 0xFFFFD030[r2], r6
	mov 0x000493E0, r7
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC20.c", 255
	andi 0x000000FF, r5, r5
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC20.c", 257
	ori 0x00000006, r6, r6
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC20.c", 255
	shr 0x00000004, r5
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC20.c", 257
	andi 0x0000FFF6, r6, r6
	st.h r6, 0xFFFFD030[r2]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC20.c", 258
	ld.h 0xFFFFD030[r2], r6
	ori 0x00008000, r6, r6
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC20.c", 255
	cmp 0x0000000F, r5
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC20.c", 258
	st.h r6, 0xFFFFD030[r2]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC20.c", 255
	setf 0x00000002, r5
.BB.LABEL.1_31:	; bb291.split.clone
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC20.c", 262
	loop r7, .BB.LABEL.1_31
.BB.LABEL.1_32:	; bb299
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC20.c", 264
	movhi 0x0000FFEE, r0, r2
	ld.h 0xFFFFD030[r2], r6
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC20.c", 266
	ld.h 0xFFFFD030[r2], r7
	mov 0x000493E0, r8
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC20.c", 264
	andi 0x000000FF, r6, r6
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC20.c", 266
	ori 0x00000007, r7, r7
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC20.c", 264
	shr 0x00000004, r6
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC20.c", 266
	andi 0x0000FFF7, r7, r7
	st.h r7, 0xFFFFD030[r2]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC20.c", 267
	ld.h 0xFFFFD030[r2], r7
	ori 0x00008000, r7, r7
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC20.c", 264
	cmp 0x0000000F, r6
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC20.c", 267
	st.h r7, 0xFFFFD030[r2]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC20.c", 264
	setf 0x00000002, r2
	add r2, r2
.BB.LABEL.1_33:	; bb319.split.clone
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC20.c", 271
	loop r8, .BB.LABEL.1_33
.BB.LABEL.1_34:	; bb327
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC20.c", 273
	movhi 0x0000FFEE, r0, r6
	ld.h 0xFFFFD030[r6], r7
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC20.c", 275
	ld.h 0xFFFFD030[r6], r8
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC20.c", 273
	andi 0x000000FF, r7, r7
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC20.c", 275
	ori 0x00000009, r8, r8
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC20.c", 273
	shr 0x00000004, r7
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC20.c", 275
	andi 0x0000FFF9, r8, r8
	st.h r8, 0xFFFFD030[r6]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC20.c", 276
	ld.h 0xFFFFD030[r6], r8
	ori 0x00008000, r8, r8
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC20.c", 273
	cmp 0x0000000F, r7
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC20.c", 276
	st.h r8, 0xFFFFD030[r6]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC20.c", 273
	setf 0x00000002, r6
	shl 0x00000002, r6
	ori 0x0000AFC8, r0, r7
.BB.LABEL.1_35:	; bb347.split.clone
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC20.c", 280
	loop r7, .BB.LABEL.1_35
.BB.LABEL.1_36:	; bb355
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC20.c", 282
	movhi 0x0000FFEE, r0, r7
	ld.h 0xFFFFD030[r7], r8
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC20.c", 284
	ld.h 0xFFFFD030[r7], r9
	movea 0x00007530, r0, r10
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC20.c", 282
	andi 0x000000FF, r8, r8
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC20.c", 284
	ori 0x0000000A, r9, r9
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC20.c", 282
	shr 0x00000004, r8
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC20.c", 284
	andi 0x0000FFFA, r9, r9
	st.h r9, 0xFFFFD030[r7]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC20.c", 285
	ld.h 0xFFFFD030[r7], r9
	ori 0x00008000, r9, r9
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC20.c", 282
	cmp 0x0000000F, r8
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC20.c", 285
	st.h r9, 0xFFFFD030[r7]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC20.c", 282
	setf 0x00000002, r7
	shl 0x00000003, r7
.BB.LABEL.1_37:	; bb375.split.clone
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC20.c", 289
	loop r10, .BB.LABEL.1_37
.BB.LABEL.1_38:	; bb383
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC20.c", 291
	movhi 0x0000FFEE, r0, r8
	ld.h 0xFFFFD030[r8], r9
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC20.c", 293
	ld.h 0xFFFFD030[r8], r10
	movea 0x00007530, r0, r11
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC20.c", 291
	andi 0x000000FF, r9, r9
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC20.c", 293
	ori 0x0000000B, r10, r10
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC20.c", 291
	shr 0x00000004, r9
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC20.c", 293
	andi 0x0000FFFB, r10, r10
	st.h r10, 0xFFFFD030[r8]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC20.c", 294
	ld.h 0xFFFFD030[r8], r10
	ori 0x00008000, r10, r10
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC20.c", 291
	cmp 0x0000000F, r9
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC20.c", 294
	st.h r10, 0xFFFFD030[r8]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC20.c", 291
	setf 0x00000002, r8
	shl 0x00000004, r8
.BB.LABEL.1_39:	; bb403.split.clone
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC20.c", 298
	loop r11, .BB.LABEL.1_39
.BB.LABEL.1_40:	; bb411
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC20.c", 300
	movhi 0x0000FFEE, r0, r9
	ld.h 0xFFFFD030[r9], r10
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC20.c", 302
	ld.h 0xFFFFD030[r9], r11
	mov 0x000493E0, r12
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC20.c", 300
	andi 0x000000FF, r10, r10
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC20.c", 302
	ori 0x0000000C, r11, r11
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC20.c", 300
	shr 0x00000004, r10
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC20.c", 302
	andi 0x0000FFFC, r11, r11
	st.h r11, 0xFFFFD030[r9]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC20.c", 303
	ld.h 0xFFFFD030[r9], r11
	ori 0x00008000, r11, r11
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC20.c", 300
	cmp 0x0000000F, r10
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC20.c", 303
	st.h r11, 0xFFFFD030[r9]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC20.c", 300
	setf 0x00000002, r9
	shl 0x00000005, r9
.BB.LABEL.1_41:	; bb431.split.clone
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC20.c", 307
	loop r12, .BB.LABEL.1_41
.BB.LABEL.1_42:	; bb439
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC20.c", 309
	movhi 0x0000FFEE, r0, r10
	ld.h 0xFFFFD030[r10], r11
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC20.c", 311
	ld.hu 0xFFFFD030[r10], r12
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC20.c", 309
	or r5, r2
	or r6, r2
	or r7, r2
	andi 0x000000FF, r11, r6
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC20.c", 311
	andi 0x00007FFF, r12, r5
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC20.c", 309
	shr 0x00000004, r6
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC20.c", 311
	st.h r5, 0xFFFFD030[r10]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC20.c", 309
	or r8, r2
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC20.c", 312
	ld.h 0xFFFFD03E[r10], r5
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC20.c", 309
	or r9, r2
	mov 0x000493E0, r7
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC20.c", 312
	ori 0x00008000, r5, r5
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC20.c", 309
	cmp 0x0000000F, r6
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC20.c", 312
	st.h r5, 0xFFFFD03E[r10]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC20.c", 309
	setf 0x00000002, r5
	shl 0x00000006, r5
	or r5, r2
.BB.LABEL.1_43:	; bb459.split.clone
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC20.c", 317
	loop r7, .BB.LABEL.1_43
.BB.LABEL.1_44:	; if_break_bb468
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC20.c", 324
	movhi 0x0000FFEE, r0, r5
	ld.hu 0xFFFFD03A[r5], r6
	mov 0x000493E0, r7
	andi 0x0000F7FF, r6, r6
	st.h r6, 0xFFFFD03A[r5]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC20.c", 329
	ld.h 0xFFFFD00C[r5], r6
	ori 0x00000002, r6, r6
	st.h r6, 0xFFFFD00C[r5]
.BB.LABEL.1_45:	; bb475.split.clone
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC20.c", 334
	loop r7, .BB.LABEL.1_45
.BB.LABEL.1_46:	; bb483
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC20.c", 343
	andi 0x000000FF, r2, r10
	jmp [r31]
_u2_rdc20str_read:
	.stack _u2_rdc20str_read = 4
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC20.c", 348
	prepare 0x00000001, 0x00000000
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC20.c", 355
	movhi HIGHW1(#___u1_rdc20str_sel), r0, r2
	ld.bu LOWW(#___u1_rdc20str_sel)[r2], r2
	ld23.hu 0xFFEDD01C[r0], r10
	cmp 0x00000003, r2
	bh9 .BB.LABEL.2_3
.BB.LABEL.2_1:	; entry
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC20.c", 0
	shl 0x00000001, r2
	jmp #.SWITCH.LABEL.2_6[r2]
.SWITCH.LABEL.2_6:
	br9 .BB.LABEL.2_2
	br9 .BB.LABEL.2_2
	br9 .BB.LABEL.2_4
	br9 .BB.LABEL.2_5
.SWITCH.LABEL.2_6.END:
.BB.LABEL.2_2:	; switch_clause_bb6
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC20.c", 376
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.2_3:	; switch_break_bb
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC20.c", 0
	mov 0x00000000, r10
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC20.c", 376
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.2_4:	; switch_clause_bb8
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC20.c", 364
	jarl _s4_rdc20_rpm, r31
	andi 0x0000FFFF, r10, r10
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.2_5:	; switch_clause_bb11
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC20.c", 368
	andi 0x000000FF, r10, r10
	dispose 0x00000000, 0x00000001, [r31]
_u2_rdc20_cnt_read:
	.stack _u2_rdc20_cnt_read = 0
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC20.c", 383
	ld23.hu 0xFFEDD008[r0], r2
	andi 0x0000FFFF, r2, r10
	shr 0x00000004, r10
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC20.c", 385
	jmp [r31]
_rdc20_init_interrupt:
	.stack _rdc20_init_interrupt = 0
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC20.c", 401
	ld.w 0xFFFFB908[r0], r2
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC20.c", 421
	cmp 0x00000002, r8
	bnz9 .BB.LABEL.4_2
.BB.LABEL.4_1:	; if_then_bb
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC20.c", 0
	movhi 0x00000001, r0, r5
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC20.c", 423
	or r5, r2
	mov 0xFFFDFFFF, r8
	and r8, r2
	mov 0xFFFFFFFA, r9
	st.w r2, 0xFFFFB908[r0]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC20.c", 424
	ld.w 0xFFFFB908[r0], r2
	ori 0x00000002, r2, r2
	and r9, r2
	st.w r2, 0xFFFFB908[r0]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC20.c", 426
	ld.w 0xFFFFB910[r0], r2
	or r5, r2
	and r8, r2
	st.w r2, 0xFFFFB910[r0]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC20.c", 427
	ld.w 0xFFFFB910[r0], r2
	ori 0x00000002, r2, r2
	and r9, r2
	st.w r2, 0xFFFFB910[r0]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC20.c", 429
	ld.w 0xFFFFB914[r0], r2
	or r5, r2
	and r8, r2
	st.w r2, 0xFFFFB914[r0]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC20.c", 430
	ld.w 0xFFFFB914[r0], r2
	ori 0x00000002, r2, r2
	and r9, r2
	st.w r2, 0xFFFFB914[r0]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC20.c", 432
	ld.w 0xFFFFB918[r0], r2
	or r5, r2
	and r8, r2
	st.w r2, 0xFFFFB918[r0]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC20.c", 433
	ld.w 0xFFFFB918[r0], r2
	ori 0x00000002, r2, r2
	and r9, r2
	br9 .BB.LABEL.4_3
.BB.LABEL.4_2:	; if_else_bb
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC20.c", 0
	mov 0xFFFCFFFF, r5
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC20.c", 437
	and r5, r2
	mov 0xFFFFFFF9, r8
	st.w r2, 0xFFFFB908[r0]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC20.c", 438
	ld.w 0xFFFFB908[r0], r2
	ori 0x00000001, r2, r2
	and r8, r2
	st.w r2, 0xFFFFB908[r0]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC20.c", 440
	ld.w 0xFFFFB910[r0], r2
	and r5, r2
	st.w r2, 0xFFFFB910[r0]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC20.c", 441
	ld.w 0xFFFFB910[r0], r2
	ori 0x00000001, r2, r2
	and r8, r2
	st.w r2, 0xFFFFB910[r0]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC20.c", 443
	ld.w 0xFFFFB914[r0], r2
	and r5, r2
	st.w r2, 0xFFFFB914[r0]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC20.c", 444
	ld.w 0xFFFFB914[r0], r2
	ori 0x00000001, r2, r2
	and r8, r2
	st.w r2, 0xFFFFB914[r0]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC20.c", 446
	ld.w 0xFFFFB918[r0], r2
	and r5, r2
	st.w r2, 0xFFFFB918[r0]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC20.c", 447
	ld.w 0xFFFFB918[r0], r2
	ori 0x00000001, r2, r2
	and r8, r2
.BB.LABEL.4_3:	; if_break_bb
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC20.c", 0
	st.w r2, 0xFFFFB918[r0]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC20.c", 449
	cmp 0x0000000F, r6
	bgt9 .BB.LABEL.4_13
.BB.LABEL.4_4:	; if_then_bb63
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC20.c", 451
	andi 0x00000001, r7, r0
	bz9 .BB.LABEL.4_6
.BB.LABEL.4_5:	; if_then_bb76
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC20.c", 452
	clr1 0x00000004, 0xFFFFB085[r0]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC20.c", 453
	ld.bu 0xFFFFB084[r0], r2
	andi 0x0000000F, r6, r5
	andi 0x000000F0, r2, r2
	or r5, r2
	st.b r2, 0xFFFFB084[r0]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC20.c", 454
	set1 0x00000006, 0xFFFFB084[r0]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC20.c", 456
	clr1 0x00000007, 0xFFFFB084[r0]
.BB.LABEL.4_6:	; if_break_bb83
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC20.c", 458
	andi 0x00000002, r7, r0
	bz9 .BB.LABEL.4_8
.BB.LABEL.4_7:	; if_then_bb95
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC20.c", 459
	clr1 0x00000004, 0xFFFFB089[r0]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC20.c", 460
	ld.bu 0xFFFFB088[r0], r2
	andi 0x0000000F, r6, r5
	andi 0x000000F0, r2, r2
	or r5, r2
	st.b r2, 0xFFFFB088[r0]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC20.c", 461
	set1 0x00000006, 0xFFFFB088[r0]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC20.c", 463
	clr1 0x00000007, 0xFFFFB088[r0]
.BB.LABEL.4_8:	; if_break_bb102
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC20.c", 465
	andi 0x00000004, r7, r0
	bz9 .BB.LABEL.4_10
.BB.LABEL.4_9:	; if_then_bb114
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC20.c", 466
	clr1 0x00000004, 0xFFFFB08B[r0]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC20.c", 467
	ld.bu 0xFFFFB08A[r0], r2
	andi 0x0000000F, r6, r5
	andi 0x000000F0, r2, r2
	or r5, r2
	st.b r2, 0xFFFFB08A[r0]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC20.c", 468
	set1 0x00000006, 0xFFFFB08A[r0]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC20.c", 470
	clr1 0x00000007, 0xFFFFB08A[r0]
.BB.LABEL.4_10:	; if_break_bb121
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC20.c", 472
	andi 0x00000008, r7, r0
	bnz9 .BB.LABEL.4_12
.BB.LABEL.4_11:	; return
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC20.c", 488
	jmp [r31]
.BB.LABEL.4_12:	; if_then_bb133
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC20.c", 473
	clr1 0x00000004, 0xFFFFB08D[r0]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC20.c", 474
	ld.bu 0xFFFFB08C[r0], r2
	andi 0x0000000F, r6, r5
	andi 0x000000F0, r2, r2
	or r5, r2
	st.b r2, 0xFFFFB08C[r0]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC20.c", 475
	set1 0x00000006, 0xFFFFB08C[r0]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC20.c", 477
	clr1 0x00000007, 0xFFFFB08C[r0]
	jmp [r31]
.BB.LABEL.4_13:	; if_else_bb141
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC20.c", 482
	set1 0x00000007, 0xFFFFB084[r0]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC20.c", 483
	set1 0x00000007, 0xFFFFB088[r0]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC20.c", 484
	set1 0x00000007, 0xFFFFB08A[r0]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC20.c", 485
	set1 0x00000007, 0xFFFFB08C[r0]
	jmp [r31]
_rdc20_cmp0_set:
	.stack _rdc20_cmp0_set = 0
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC20.c", 493
	di
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC20.c", 496
	ld23.h 0xFFEDD020[r0], r2
	shl 0x00000004, r6
	st23.h r6, 0xFFEDD020[r0]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC20.c", 497
	ei
	jmp [r31]
_rdc20_cmp1_set:
	.stack _rdc20_cmp1_set = 0
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC20.c", 504
	di
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC20.c", 507
	ld23.h 0xFFEDD022[r0], r2
	shl 0x00000004, r6
	st23.h r6, 0xFFEDD022[r0]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC20.c", 508
	ei
	jmp [r31]
_rdc20_cmp2_set:
	.stack _rdc20_cmp2_set = 0
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC20.c", 515
	di
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC20.c", 518
	ld23.h 0xFFEDD024[r0], r2
	shl 0x00000004, r6
	st23.h r6, 0xFFEDD024[r0]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC20.c", 519
	ei
	jmp [r31]
_s4_rdc20_rpm:
	.stack _s4_rdc20_rpm = 0
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC20.c", 554
	ld23.hu 0xFFEDD01C[r0], r2
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC20.c", 556
	andi 0x00000001, r2, r5
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC20.c", 559
	mov r2, r6
	subr r0, r6
	cmp 0x00000000, r5
	mov 0xFFFFFFFF, r5
	cmov 0x00000002, r2, r6, r2
	cmov 0x00000002, 0x00000001, r5, r5
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC20.c", 568
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
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC20.c", 584
	mul r5, r10, r0
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC20.c", 587
	jmp [r31]
_u2_read_rdc20_status:
	.stack _u2_read_rdc20_status = 0
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC20.c", 596
	ld23.hu 0xFFEDD03E[r0], r2
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC20.c", 597
	andi 0x00007000, r2, r2
	addi 0xFFFF9000, r2, r0
	bnz9 .BB.LABEL.9_2
.BB.LABEL.9_1:	; bb10
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC20.c", 0
	mov 0x00000000, r10
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC20.c", 606
	jmp [r31]
.BB.LABEL.9_2:	; if_else_bb
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC20.c", 603
	ld23.hu 0xFFEDD03E[r0], r10
	jmp [r31]
_rdc20_ABZ_Terminal_output:
	.stack _rdc20_ABZ_Terminal_output = 0
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC20.c", 622
	movhi 0x0000FFC1, r0, r2
	movea 0x00000041, r0, r5
	st.w r5, 0x000021C0[r2]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC20.c", 623
	st.w r5, 0x000021C4[r2]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_RDC20.c", 624
	st.w r5, 0x000021C8[r2]
	jmp [r31]
	.section .bss, bss
___u1_rdc20str_sel:
	.ds (1)
