#CC-RH Compiler RH850 Assembler Source
#@	CC-RH Version : V2.06.00  [28 Nov 2023]
#@	Command : Common\fi_pe2_error.c ..\Common\iolib\io_CPU.c ..\Common\iolib\io_ADC.c ..\Common\iolib\io_CSIH0.c ..\Common\iolib\io_CSIH1.c ..\Common\iolib\io_ENCA0.c ..\Common\iolib\io_ENCA1.c ..\Common\iolib\io_FCAN.c ..\Common\iolib\io_RDC20.c ..\Common\iolib\io_RDC21.c ..\Common\iolib\io_SCI0_40MHz.c ..\Common\iolib\io_SCI1_40MHz.c ..\Common\iolib\io_SCI2_40MHz.c ..\Common\iolib\io_TAUD0.c ..\Common\iolib\io_TAUD1.c ..\Common\iolib\io_TAUJ0.c ..\Common\iolib\io_TSG30.c ..\Common\iolib\io_TSG31.c ..\PE1\AWatcher\VECLIB_CMDMONI.c src\fpmsm_main.c ..\PE1\src\fi_AWatcher.c src\fi_1ms_int.c src\fi_20us_int.c src\fi_enc1_int.c src\fi_pwm_int.c ..\PE1\src\fb_kpwm_tbl.c ..\PE1\src\fb_therm_calc.c ..\PE1\src\fb_therm_tbl_module.c ..\PE1\src\fb_vctrlerr_tbl.c ..\PE1\src\fi_pwm_vctrlerrtbl.c ..\Common\iolib\io_PIO_amdt0530.c -Xobj_path=DefaultBuild -Xcpu=g3m -g -g_line -Ospeed -Oinline_size -I..\PE1\src -Isrc -I..\Common -D__CLK_HSB=80,__CLK_LSB=40,__CLKC_HSB=80,__CLK_CLSB=40 -use_recipf -Xasm_path=DefaultBuild -c
#@	compiled at Thu Aug 22 10:25:06 2024

	.file "..\Common\iolib\io_ADC.c"

	$reg_mode 32
	.dbl_size 8

	.public _adcc0_init
	.public _adcc1_init
	.public _adcc0_sg4_trig_set
	.public _adcc1_sg4_trig_set
	.public _adcc0_sg4_int_init
	.public _adcc1_sg4_int_init

	.section .text, text
_adcc0_init:
	.stack _adcc0_init = 0
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 38
	movhi 0x0000FFF2, r0, r2
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 44
	set1 0x00000000, 0x00000380[r2]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 47
	ld.h 0x00000000[r2], r5
	ori 0x00002000, r5, r5
	andi 0x00003FFF, r5, r5
	st.h r5, 0x00000000[r2]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 48
	ld.hu 0x00000000[r2], r5
	andi 0x0000FF7F, r5, r5
	st.h r5, 0x00000000[r2]
	movea 0xFFFFFFC0, r0, r5
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 49
	ld.hu 0x00000000[r2], r2
	andi 0x0000E000, r2, r2
	addi 0xFFFFE000, r2, r0
	movhi 0x0000FFF2, r0, r2
	ld.h 0x00000000[r2], r2
	bz9 .BB.LABEL.1_2
.BB.LABEL.1_1:	; if_else_bb
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 0
	movea 0xFFFFFFCC, r0, r5
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 58
	ori 0x0000000C, r2, r2
.BB.LABEL.1_2:	; if_else_bb
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 0
	and r5, r2
	movhi 0x0000FFF2, r0, r5
	st.h r2, 0x00000000[r5]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 62
	ld.h 0x00000004[r5], r2
	ori 0x00002000, r2, r2
	andi 0x00003FFF, r2, r2
	st.h r2, 0x00000004[r5]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 63
	ld.hu 0x00000004[r5], r2
	andi 0x0000FF7F, r2, r2
	st.h r2, 0x00000004[r5]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 64
	ld.hu 0x00000004[r5], r2
	andi 0x0000E000, r2, r2
	addi 0xFFFFE000, r2, r0
	movhi 0x0000FFF2, r0, r2
	ld.h 0x00000004[r2], r2
	bnz9 .BB.LABEL.1_4
.BB.LABEL.1_3:	; if_then_bb41
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 0
	movea 0xFFFFFFC1, r0, r5
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 66
	ori 0x00000001, r2, r2
	br9 .BB.LABEL.1_5
.BB.LABEL.1_4:	; if_else_bb45
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 0
	movea 0xFFFFFFCD, r0, r5
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 72
	ori 0x0000000D, r2, r2
.BB.LABEL.1_5:	; if_else_bb45
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 0
	and r5, r2
	movhi 0x0000FFF2, r0, r5
	st.h r2, 0x00000004[r5]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 76
	ld.h 0x00000008[r5], r2
	ori 0x00002000, r2, r2
	andi 0x00003FFF, r2, r2
	st.h r2, 0x00000008[r5]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 77
	ld.hu 0x00000008[r5], r2
	andi 0x0000FF7F, r2, r2
	st.h r2, 0x00000008[r5]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 78
	ld.hu 0x00000008[r5], r2
	andi 0x0000E000, r2, r2
	addi 0xFFFFE000, r2, r0
	movhi 0x0000FFF2, r0, r2
	ld.h 0x00000008[r2], r2
	bnz9 .BB.LABEL.1_7
.BB.LABEL.1_6:	; if_then_bb70
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 0
	movea 0xFFFFFFC2, r0, r5
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 80
	ori 0x00000002, r2, r2
	br9 .BB.LABEL.1_8
.BB.LABEL.1_7:	; if_else_bb74
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 0
	movea 0xFFFFFFCE, r0, r5
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 86
	ori 0x0000000E, r2, r2
.BB.LABEL.1_8:	; if_else_bb74
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 0
	and r5, r2
	movhi 0x0000FFF2, r0, r5
	st.h r2, 0x00000008[r5]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 90
	ld.h 0x0000000C[r5], r2
	ori 0x00002000, r2, r2
	andi 0x00003FFF, r2, r2
	st.h r2, 0x0000000C[r5]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 91
	ld.hu 0x0000000C[r5], r2
	andi 0x0000FF7F, r2, r2
	st.h r2, 0x0000000C[r5]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 92
	ld.hu 0x0000000C[r5], r2
	andi 0x0000E000, r2, r2
	addi 0xFFFFE000, r2, r0
	movhi 0x0000FFF2, r0, r2
	ld.h 0x0000000C[r2], r2
	bnz9 .BB.LABEL.1_10
.BB.LABEL.1_9:	; if_then_bb99
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 0
	movea 0xFFFFFFC3, r0, r5
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 94
	ori 0x00000003, r2, r2
	br9 .BB.LABEL.1_11
.BB.LABEL.1_10:	; if_else_bb103
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 0
	movea 0xFFFFFFCF, r0, r5
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 100
	ori 0x0000000F, r2, r2
.BB.LABEL.1_11:	; if_else_bb103
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 0
	and r5, r2
	movhi 0x0000FFF2, r0, r5
	st.h r2, 0x0000000C[r5]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 104
	ld.h 0x00000010[r5], r2
	ori 0x00002000, r2, r2
	andi 0x00003FFF, r2, r2
	st.h r2, 0x00000010[r5]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 105
	ld.hu 0x00000010[r5], r2
	andi 0x0000FF7F, r2, r2
	st.h r2, 0x00000010[r5]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 106
	ld.hu 0x00000010[r5], r2
	andi 0x0000E000, r2, r2
	addi 0xFFFFE000, r2, r0
	movhi 0x0000FFF2, r0, r2
	ld.h 0x00000010[r2], r2
	bnz9 .BB.LABEL.1_13
.BB.LABEL.1_12:	; if_then_bb128
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 0
	movea 0xFFFFFFC4, r0, r5
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 108
	ori 0x00000004, r2, r2
	br9 .BB.LABEL.1_14
.BB.LABEL.1_13:	; if_else_bb132
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 0
	movea 0xFFFFFFCA, r0, r5
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 114
	ori 0x0000000A, r2, r2
.BB.LABEL.1_14:	; if_else_bb132
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 0
	and r5, r2
	movhi 0x0000FFF2, r0, r5
	st.h r2, 0x00000010[r5]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 118
	ld.h 0x00000014[r5], r2
	ori 0x00002000, r2, r2
	andi 0x00003FFF, r2, r2
	st.h r2, 0x00000014[r5]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 119
	ld.hu 0x00000014[r5], r2
	andi 0x0000FF7F, r2, r2
	st.h r2, 0x00000014[r5]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 120
	ld.hu 0x00000014[r5], r2
	andi 0x0000E000, r2, r2
	addi 0xFFFFE000, r2, r0
	movhi 0x0000FFF2, r0, r2
	ld.h 0x00000014[r2], r2
	bnz9 .BB.LABEL.1_16
.BB.LABEL.1_15:	; if_then_bb157
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 0
	movea 0xFFFFFFC5, r0, r5
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 122
	ori 0x00000005, r2, r2
	br9 .BB.LABEL.1_17
.BB.LABEL.1_16:	; if_else_bb161
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 0
	movea 0xFFFFFFCB, r0, r5
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 128
	ori 0x0000000B, r2, r2
.BB.LABEL.1_17:	; if_else_bb161
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 0
	and r5, r2
	movhi 0x0000FFF2, r0, r5
	st.h r2, 0x00000014[r5]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 132
	ld.hu 0x00000020[r5], r2
	andi 0x00001FFF, r2, r2
	st.h r2, 0x00000020[r5]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 133
	ld.hu 0x00000020[r5], r2
	andi 0x0000FF7F, r2, r2
	st.h r2, 0x00000020[r5]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 136
	ld.h 0x00000020[r5], r2
	ori 0x00000001, r2, r2
	andi 0x0000FFC1, r2, r2
	st.h r2, 0x00000020[r5]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 139
	ld.hu 0x00000024[r5], r2
	andi 0x00001FFF, r2, r2
	st.h r2, 0x00000024[r5]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 140
	ld.hu 0x00000024[r5], r2
	andi 0x0000FF7F, r2, r2
	st.h r2, 0x00000024[r5]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 143
	ld.h 0x00000024[r5], r2
	ori 0x00000002, r2, r2
	andi 0x0000FFC2, r2, r2
	st.h r2, 0x00000024[r5]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 146
	ld.hu 0x00000028[r5], r2
	andi 0x00001FFF, r2, r2
	st.h r2, 0x00000028[r5]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 147
	ld.hu 0x00000028[r5], r2
	andi 0x0000FF7F, r2, r2
	st.h r2, 0x00000028[r5]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 150
	ld.h 0x00000028[r5], r2
	ori 0x00000004, r2, r2
	andi 0x0000FFC4, r2, r2
	st.h r2, 0x00000028[r5]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 154
	ld.hu 0x0000002C[r5], r2
	andi 0x00001FFF, r2, r2
	st.h r2, 0x0000002C[r5]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 155
	ld.hu 0x0000002C[r5], r2
	andi 0x0000FF7F, r2, r2
	st.h r2, 0x0000002C[r5]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 158
	ld.h 0x0000002C[r5], r2
	ori 0x00000005, r2, r2
	andi 0x0000FFC5, r2, r2
	st.h r2, 0x0000002C[r5]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 161
	ld.hu 0x00000030[r5], r2
	andi 0x00001FFF, r2, r2
	st.h r2, 0x00000030[r5]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 162
	ld.hu 0x00000030[r5], r2
	andi 0x0000FF7F, r2, r2
	st.h r2, 0x00000030[r5]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 165
	ld.h 0x00000030[r5], r2
	ori 0x00000006, r2, r2
	andi 0x0000FFC6, r2, r2
	st.h r2, 0x00000030[r5]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 168
	ld.hu 0x00000034[r5], r2
	andi 0x00001FFF, r2, r2
	st.h r2, 0x00000034[r5]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 169
	ld.hu 0x00000034[r5], r2
	andi 0x0000FF7F, r2, r2
	st.h r2, 0x00000034[r5]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 173
	ld.h 0x00000034[r5], r2
	ori 0x00000007, r2, r2
	andi 0x0000FFC7, r2, r2
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 175
	cmp 0x00000003, r6
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 173
	st.h r2, 0x00000034[r5]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 175
	bh9 .BB.LABEL.1_19
.BB.LABEL.1_18:	; if_break_bb173
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 0
	mov r6, r1
	shl 0x00000002, r1
	jmp #.SWITCH.LABEL.1_43[r1]
.SWITCH.LABEL.1_43:
	jr .BB.LABEL.1_19
	jr .BB.LABEL.1_20
	jr .BB.LABEL.1_22
	jr .BB.LABEL.1_23
.SWITCH.LABEL.1_43.END:
.BB.LABEL.1_19:	; switch_clause_bb
	movhi 0x0000FFF2, r0, r2
	ld.hu 0x00000018[r2], r5
	andi 0x00001FFF, r5, r5
	st.h r5, 0x00000018[r2]
	ld.hu 0x00000018[r2], r5
	andi 0x0000FF7F, r5, r5
	st.h r5, 0x00000018[r2]
	ld.hu 0x00000018[r2], r5
	andi 0x0000FFC0, r5, r5
	st.h r5, 0x00000018[r2]
	ld.hu 0x0000001C[r2], r5
	andi 0x00001FFF, r5, r5
	st.h r5, 0x0000001C[r2]
	ld.hu 0x0000001C[r2], r5
	andi 0x0000FF7F, r5, r5
	st.h r5, 0x0000001C[r2]
	ld.h 0x0000001C[r2], r5
	ori 0x00000003, r5, r5
	andi 0x0000FFC3, r5, r5
	st.h r5, 0x0000001C[r2]
	br9 .BB.LABEL.1_21
.BB.LABEL.1_20:	; switch_clause_bb346
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 208
	movhi 0x0000FFF2, r0, r2
.BB.LABEL.1_21:	; switch_clause_bb346
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 0
	ld.hu 0x00000038[r2], r5
	andi 0x00001FFF, r5, r5
	st.h r5, 0x00000038[r2]
	ld.hu 0x00000038[r2], r5
	andi 0x0000FF7F, r5, r5
	st.h r5, 0x00000038[r2]
	ld.h 0x00000038[r2], r5
	ori 0x00000008, r5, r5
	andi 0x0000FFC8, r5, r5
	st.h r5, 0x00000038[r2]
	ld.hu 0x0000003C[r2], r5
	andi 0x00001FFF, r5, r5
	st.h r5, 0x0000003C[r2]
	ld.hu 0x0000003C[r2], r5
	andi 0x0000FF7F, r5, r5
	st.h r5, 0x0000003C[r2]
	ld.h 0x0000003C[r2], r5
	ori 0x00000009, r5, r5
	andi 0x0000FFC9, r5, r5
	st.h r5, 0x0000003C[r2]
	br9 .BB.LABEL.1_23
.BB.LABEL.1_22:	; switch_clause_bb381
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 223
	movhi 0x0000FFF2, r0, r2
	ld.hu 0x00000018[r2], r5
	andi 0x00001FFF, r5, r5
	st.h r5, 0x00000018[r2]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 224
	ld.hu 0x00000018[r2], r5
	andi 0x0000FF7F, r5, r5
	st.h r5, 0x00000018[r2]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 227
	ld.hu 0x00000018[r2], r5
	andi 0x0000FFC0, r5, r5
	st.h r5, 0x00000018[r2]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 230
	ld.hu 0x0000001C[r2], r5
	andi 0x00001FFF, r5, r5
	st.h r5, 0x0000001C[r2]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 231
	ld.hu 0x0000001C[r2], r5
	andi 0x0000FF7F, r5, r5
	st.h r5, 0x0000001C[r2]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 234
	ld.h 0x0000001C[r2], r5
	ori 0x00000003, r5, r5
	andi 0x0000FFC3, r5, r5
	st.h r5, 0x0000001C[r2]
.BB.LABEL.1_23:	; switch_break_bb
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 272
	movhi 0x0000FFF2, r0, r2
	ld.bu 0x00000694[r2], r5
	andi 0x000000C0, r5, r5
	st.b r5, 0x00000694[r2]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 273
	ld.b 0x00000698[r2], r5
	ori 0x00000005, r5, r5
	andi 0x000000C5, r5, r5
	st.b r5, 0x00000698[r2]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 275
	ld.b 0x00000614[r2], r5
	ori 0x00000006, r5, r5
	andi 0x000000C6, r5, r5
	st.b r5, 0x00000614[r2]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 276
	ld.b 0x00000618[r2], r5
	ori 0x0000000F, r5, r5
	andi 0x000000CF, r5, r5
	st.b r5, 0x00000618[r2]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 278
	ld.b 0x00000594[r2], r5
	ori 0x00000006, r5, r5
	andi 0x000000C6, r5, r5
	st.b r5, 0x00000594[r2]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 279
	ld.b 0x00000598[r2], r5
	ori 0x0000000F, r5, r5
	andi 0x000000CF, r5, r5
	st.b r5, 0x00000598[r2]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 281
	ld.b 0x00000514[r2], r5
	ori 0x00000006, r5, r5
	andi 0x000000C6, r5, r5
	st.b r5, 0x00000514[r2]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 282
	ld.b 0x00000518[r2], r5
	ori 0x0000000F, r5, r5
	andi 0x000000CF, r5, r5
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 284
	cmp 0x00000003, r6
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 282
	st.b r5, 0x00000518[r2]
	movhi 0x0000FFF2, r0, r2
	ld.b 0x00000494[r2], r5
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 284
	bh9 .BB.LABEL.1_25
.BB.LABEL.1_24:	; switch_break_bb
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 0
	shl 0x00000001, r6
	jmp #.SWITCH.LABEL.1_44[r6]
.SWITCH.LABEL.1_44:
	br9 .BB.LABEL.1_25
	br9 .BB.LABEL.1_27
	br9 .BB.LABEL.1_28
	br9 .BB.LABEL.1_29
.SWITCH.LABEL.1_44.END:
.BB.LABEL.1_25:	; switch_clause_bb512
	ori 0x00000006, r5, r5
	andi 0x000000C6, r5, r5
.BB.LABEL.1_26:	; switch_clause_bb512
	st.b r5, 0x00000494[r2]
	movea 0xFFFFFFCF, r0, r6
	ld.b 0x00000498[r2], r2
	ori 0x0000000F, r2, r2
	br9 .BB.LABEL.1_31
.BB.LABEL.1_27:	; switch_clause_bb519
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 291
	ori 0x00000008, r5, r5
	andi 0x000000C8, r5, r5
	br9 .BB.LABEL.1_26
.BB.LABEL.1_28:	; switch_clause_bb526
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 295
	ori 0x00000006, r5, r5
	andi 0x000000C6, r5, r5
	br9 .BB.LABEL.1_30
.BB.LABEL.1_29:	; switch_clause_bb533
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 299
	ori 0x00000008, r5, r5
	andi 0x000000C8, r5, r5
.BB.LABEL.1_30:	; switch_clause_bb533
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 0
	st.b r5, 0x00000494[r2]
	movea 0xFFFFFFCD, r0, r6
	ld.b 0x00000498[r2], r2
	ori 0x0000000D, r2, r2
.BB.LABEL.1_31:	; switch_clause_bb533
	and r6, r2
	movhi 0x0000FFF2, r0, r5
	st.b r2, 0x00000498[r5]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 309
	ld.b 0x0000069C[r5], r2
	st.b r0, 0x0000069C[r5]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 311
	ld.b 0x0000061C[r5], r2
	st.b r0, 0x0000061C[r5]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 312
	ld.b 0x0000059C[r5], r2
	st.b r0, 0x0000059C[r5]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 313
	ld.b 0x0000051C[r5], r2
	st.b r0, 0x0000051C[r5]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 314
	ld.b 0x0000049C[r5], r2
	st.b r0, 0x0000049C[r5]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 317
	ld.bu 0x000006B0[r5], r2
	andi 0x000000FC, r2, r2
	st.b r2, 0x000006B0[r5]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 320
	ld.bu 0x00000630[r5], r2
	andi 0x000000FC, r2, r2
	st.b r2, 0x00000630[r5]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 321
	ld.bu 0x000005B0[r5], r2
	andi 0x000000FC, r2, r2
	st.b r2, 0x000005B0[r5]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 322
	ld.bu 0x00000530[r5], r2
	andi 0x000000FC, r2, r2
	st.b r2, 0x00000530[r5]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 323
	ld.bu 0x000004B0[r5], r2
	andi 0x000000FC, r2, r2
	st.b r2, 0x000004B0[r5]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 326
	clr1 0x00000006, 0x00000490[r5]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 327
	set1 0x00000005, 0x00000490[r5]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 328
	clr1 0x00000004, 0x00000490[r5]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 329
	clr1 0x00000000, 0x00000490[r5]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 331
	set1 0x00000006, 0x00000510[r5]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 332
	clr1 0x00000005, 0x00000510[r5]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 333
	clr1 0x00000004, 0x00000510[r5]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 334
	clr1 0x00000000, 0x00000510[r5]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 336
	set1 0x00000006, 0x00000590[r5]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 337
	clr1 0x00000005, 0x00000590[r5]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 338
	clr1 0x00000004, 0x00000590[r5]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 339
	clr1 0x00000000, 0x00000590[r5]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 342
	clr1 0x00000007, 0x00000610[r5]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 343
	set1 0x00000006, 0x00000610[r5]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 344
	clr1 0x00000005, 0x00000610[r5]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 345
	clr1 0x00000004, 0x00000610[r5]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 346
	clr1 0x00000001, 0x00000610[r5]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 347
	clr1 0x00000000, 0x00000610[r5]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 349
	clr1 0x00000007, 0x00000690[r5]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 350
	set1 0x00000006, 0x00000690[r5]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 351
	clr1 0x00000005, 0x00000690[r5]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 354
	set1 0x00000004, 0x00000690[r5]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 358
	clr1 0x00000001, 0x00000690[r5]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 359
	clr1 0x00000000, 0x00000690[r5]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 363
	set1 0x00000000, 0x0000060C[r5]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 364
	set1 0x00000000, 0x0000068C[r5]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 367
	ld.w 0x00000628[r5], r2
	movhi 0x0000FFE0, r0, r6
	mov 0x001FFFFF, r7
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 375
	movhi 0x0000FFF2, r0, r8
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 367
	and r6, r2
	st.w r2, 0x00000628[r5]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 368
	ld.w 0x000006A8[r5], r2
	and r6, r2
	st.w r2, 0x000006A8[r5]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 371
	ld.w 0x00000628[r5], r2
	or r7, r2
	st.w r2, 0x00000628[r5]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 372
	ld.w 0x000006A8[r5], r2
	or r7, r2
	st.w r2, 0x000006A8[r5]
.BB.LABEL.1_32:	; bb590
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 375
	tst1 0x00000002, 0x00000624[r8]
	bnz9 .BB.LABEL.1_32
.BB.LABEL.1_33:	; bb597
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 0
	tst1 0x00000002, 0x000006A4[r8]
	bnz9 .BB.LABEL.1_32
.BB.LABEL.1_34:	; bb611
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 376
	movhi 0x0000FFF2, r0, r2
	clr1 0x00000000, 0x00000608[r2]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 377
	clr1 0x00000000, 0x00000688[r2]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 381
	set1 0x00000000, 0x00000430[r2]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 382
	set1 0x00000001, 0x00000430[r2]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 383
	set1 0x00000002, 0x00000430[r2]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 384
	set1 0x00000003, 0x00000430[r2]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 386
	set1 0x00000004, 0x00000430[r2]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 387
	set1 0x00000005, 0x00000430[r2]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 390
	ld.hu 0x00000434[r2], r5
	andi 0x0000FFFE, r5, r5
	st.h r5, 0x00000434[r2]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 391
	ld.hu 0x00000434[r2], r5
	andi 0x0000FFFB, r5, r5
	st.h r5, 0x00000434[r2]
	movhi 0x0000FFFF, r0, r6
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 392
	ld.hu 0x00000434[r2], r5
	andi 0x0000FFEF, r5, r5
	st.h r5, 0x00000434[r2]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 393
	ld.hu 0x00000434[r2], r5
	andi 0x0000FFBF, r5, r5
	movhi 0x00007FFE, r0, r7
	st.h r5, 0x00000434[r2]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 394
	ld.hu 0x00000434[r2], r5
	mov 0x7FFEFFFF, r8
	andi 0x0000FEFF, r5, r5
	st.h r5, 0x00000434[r2]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 395
	ld.hu 0x00000434[r2], r5
	andi 0x0000FBFF, r5, r5
	st.h r5, 0x00000434[r2]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 398
	set1 0x00000005, 0x00000420[r2]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 399
	set1 0x00000004, 0x00000420[r2]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 400
	ld.b 0x00000420[r2], r5
	ori 0x00000003, r5, r5
	st.b r5, 0x00000420[r2]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 403
	set1 0x00000005, 0x00000424[r2]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 404
	set1 0x00000004, 0x00000424[r2]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 405
	ld.b 0x00000424[r2], r5
	ori 0x00000003, r5, r5
	st.b r5, 0x00000424[r2]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 409
	set1 0x00000004, 0x00000398[r2]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 410
	clr1 0x00000000, 0x00000398[r2]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 414
	ld.b 0x00000384[r2], r5
	ori 0x00000002, r5, r5
	andi 0x000000FE, r5, r5
	st.b r5, 0x00000384[r2]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 418
	clr1 0x00000000, 0x00000408[r2]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 422
	ld.w 0x000003CC[r2], r5
	and r6, r5
	st.w r5, 0x000003CC[r2]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 423
	ld.w 0x000003CC[r2], r5
	or r7, r5
	and r8, r5
	st.w r5, 0x000003CC[r2]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 424
	ld.w 0x000003D0[r2], r5
	and r6, r5
	st.w r5, 0x000003D0[r2]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 425
	ld.w 0x000003D0[r2], r5
	or r7, r5
	and r8, r5
	st.w r5, 0x000003D0[r2]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 426
	ld.w 0x000003D4[r2], r5
	and r6, r5
	st.w r5, 0x000003D4[r2]
	mov 0x0000000F, r6
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 427
	ld.w 0x000003D4[r2], r5
	or r7, r5
	and r8, r5
	st.w r5, 0x000003D4[r2]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 431
	clr1 0x00000000, 0x000003C0[r2]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 432
	clr1 0x00000001, 0x000003C0[r2]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 433
	clr1 0x00000002, 0x000003C0[r2]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 434
	clr1 0x00000003, 0x000003C0[r2]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 437
	set1 0x00000003, 0x000003D8[r2]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 438
	set1 0x00000002, 0x000003D8[r2]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 439
	set1 0x00000001, 0x000003D8[r2]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 440
	set1 0x00000000, 0x000003D8[r2]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 443
	clr1 0x00000004, 0x000003C0[r2]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 448
	clr1 0x00000007, 0x000003C4[r2]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 449
	ld.bu 0x000003C4[r2], r5
	andi 0x000000FC, r5, r5
	st.b r5, 0x000003C4[r2]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 455
	clr1 0x00000007, 0x000003C8[r2]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 456
	ld.b 0x000003C8[r2], r5
	ori 0x00000004, r5, r5
	andi 0x000000C4, r5, r5
	st.b r5, 0x000003C8[r2]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 461
	set1 0x00000000, 0x00000400[r2]
.BB.LABEL.1_35:	; bb663.split.clone
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 0
	loop r6, .BB.LABEL.1_35
.BB.LABEL.1_36:	; bb671
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 471
	movhi 0x0000FFF2, r0, r2
	clr1 0x00000000, 0x00000410[r2]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 474
	clr1 0x00000000, 0x00000414[r2]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 477
	movhi 0x0000FFF2, r0, r2
.BB.LABEL.1_37:	; bb673
	tst1 0x00000001, 0x000006A4[r2]
	bnz9 .BB.LABEL.1_37
.BB.LABEL.1_38:	; bb680
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 0
	tst1 0x00000001, 0x00000624[r2]
	bnz9 .BB.LABEL.1_37
.BB.LABEL.1_39:	; bb694
	tst1 0x00000001, 0x000005A4[r2]
	bnz9 .BB.LABEL.1_37
.BB.LABEL.1_40:	; bb708
	tst1 0x00000001, 0x00000524[r2]
	bnz9 .BB.LABEL.1_37
.BB.LABEL.1_41:	; bb722
	tst1 0x00000001, 0x000004A4[r2]
	bnz9 .BB.LABEL.1_37
.BB.LABEL.1_42:	; bb737
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 481
	movhi 0x0000FFF2, r0, r2
	set1 0x00000000, 0x00000690[r2]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 483
	set1 0x00000000, 0x00000680[r2]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 484
	clr1 0x00000000, 0x00000600[r2]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 485
	clr1 0x00000000, 0x00000580[r2]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 486
	clr1 0x00000000, 0x00000500[r2]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 489
	set1 0x00000000, 0x00000480[r2]
	jmp [r31]
_adcc1_init:
	.stack _adcc1_init = 0
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 505
	movhi 0x0000FFF2, r0, r2
	set1 0x00000000, 0x00001380[r2]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 507
	ld.h 0x00001000[r2], r5
	ori 0x00002000, r5, r5
	andi 0x00003FFF, r5, r5
	st.h r5, 0x00001000[r2]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 508
	ld.hu 0x00001000[r2], r5
	andi 0x0000FF7F, r5, r5
	st.h r5, 0x00001000[r2]
	movea 0xFFFFFFC0, r0, r5
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 509
	ld.hu 0x00001000[r2], r2
	andi 0x0000E000, r2, r2
	addi 0xFFFFE000, r2, r0
	movhi 0x0000FFF2, r0, r2
	ld.h 0x00001000[r2], r2
	bz9 .BB.LABEL.2_2
.BB.LABEL.2_1:	; if_else_bb
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 0
	movea 0xFFFFFFCC, r0, r5
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 517
	ori 0x0000000C, r2, r2
.BB.LABEL.2_2:	; if_else_bb
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 0
	and r5, r2
	movhi 0x0000FFF2, r0, r5
	st.h r2, 0x00001000[r5]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 520
	ld.h 0x00001004[r5], r2
	ori 0x00002000, r2, r2
	andi 0x00003FFF, r2, r2
	st.h r2, 0x00001004[r5]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 521
	ld.hu 0x00001004[r5], r2
	andi 0x0000FF7F, r2, r2
	st.h r2, 0x00001004[r5]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 522
	ld.hu 0x00001004[r5], r2
	andi 0x0000E000, r2, r2
	addi 0xFFFFE000, r2, r0
	movhi 0x0000FFF2, r0, r2
	ld.h 0x00001004[r2], r2
	bnz9 .BB.LABEL.2_4
.BB.LABEL.2_3:	; if_then_bb40
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 0
	movea 0xFFFFFFC1, r0, r5
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 524
	ori 0x00000001, r2, r2
	br9 .BB.LABEL.2_5
.BB.LABEL.2_4:	; if_else_bb44
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 0
	movea 0xFFFFFFCD, r0, r5
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 530
	ori 0x0000000D, r2, r2
.BB.LABEL.2_5:	; if_else_bb44
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 0
	and r5, r2
	movhi 0x0000FFF2, r0, r5
	st.h r2, 0x00001004[r5]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 533
	ld.h 0x00001008[r5], r2
	ori 0x00002000, r2, r2
	andi 0x00003FFF, r2, r2
	st.h r2, 0x00001008[r5]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 534
	ld.hu 0x00001008[r5], r2
	andi 0x0000FF7F, r2, r2
	st.h r2, 0x00001008[r5]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 535
	ld.hu 0x00001008[r5], r2
	andi 0x0000E000, r2, r2
	addi 0xFFFFE000, r2, r0
	movhi 0x0000FFF2, r0, r2
	ld.h 0x00001008[r2], r2
	bnz9 .BB.LABEL.2_7
.BB.LABEL.2_6:	; if_then_bb69
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 0
	movea 0xFFFFFFC2, r0, r5
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 537
	ori 0x00000002, r2, r2
	br9 .BB.LABEL.2_8
.BB.LABEL.2_7:	; if_else_bb73
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 0
	movea 0xFFFFFFCE, r0, r5
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 543
	ori 0x0000000E, r2, r2
.BB.LABEL.2_8:	; if_else_bb73
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 0
	and r5, r2
	movhi 0x0000FFF2, r0, r5
	st.h r2, 0x00001008[r5]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 546
	ld.h 0x0000100C[r5], r2
	ori 0x00002000, r2, r2
	andi 0x00003FFF, r2, r2
	st.h r2, 0x0000100C[r5]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 547
	ld.hu 0x0000100C[r5], r2
	andi 0x0000FF7F, r2, r2
	st.h r2, 0x0000100C[r5]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 548
	ld.hu 0x0000100C[r5], r2
	andi 0x0000E000, r2, r2
	addi 0xFFFFE000, r2, r0
	movhi 0x0000FFF2, r0, r2
	ld.h 0x0000100C[r2], r2
	bnz9 .BB.LABEL.2_10
.BB.LABEL.2_9:	; if_then_bb98
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 0
	movea 0xFFFFFFC3, r0, r5
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 550
	ori 0x00000003, r2, r2
	br9 .BB.LABEL.2_11
.BB.LABEL.2_10:	; if_else_bb102
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 0
	movea 0xFFFFFFD0, r0, r5
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 556
	ori 0x00000010, r2, r2
.BB.LABEL.2_11:	; if_else_bb102
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 0
	and r5, r2
	movhi 0x0000FFF2, r0, r5
	st.h r2, 0x0000100C[r5]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 560
	ld.h 0x00001010[r5], r2
	ori 0x00002000, r2, r2
	andi 0x00003FFF, r2, r2
	st.h r2, 0x00001010[r5]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 561
	ld.hu 0x00001010[r5], r2
	andi 0x0000FF7F, r2, r2
	st.h r2, 0x00001010[r5]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 562
	ld.hu 0x00001010[r5], r2
	andi 0x0000E000, r2, r2
	addi 0xFFFFE000, r2, r0
	movhi 0x0000FFF2, r0, r2
	ld.h 0x00001010[r2], r2
	bnz9 .BB.LABEL.2_13
.BB.LABEL.2_12:	; if_then_bb127
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 0
	movea 0xFFFFFFC4, r0, r5
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 564
	ori 0x00000004, r2, r2
	br9 .BB.LABEL.2_14
.BB.LABEL.2_13:	; if_else_bb131
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 0
	movea 0xFFFFFFD1, r0, r5
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 570
	ori 0x00000011, r2, r2
.BB.LABEL.2_14:	; if_else_bb131
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 0
	and r5, r2
	movhi 0x0000FFF2, r0, r5
	st.h r2, 0x00001010[r5]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 573
	ld.h 0x00001014[r5], r2
	ori 0x00002000, r2, r2
	andi 0x00003FFF, r2, r2
	st.h r2, 0x00001014[r5]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 574
	ld.hu 0x00001014[r5], r2
	andi 0x0000FF7F, r2, r2
	st.h r2, 0x00001014[r5]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 575
	ld.hu 0x00001014[r5], r2
	andi 0x0000E000, r2, r2
	addi 0xFFFFE000, r2, r0
	movhi 0x0000FFF2, r0, r2
	ld.h 0x00001014[r2], r2
	bnz9 .BB.LABEL.2_16
.BB.LABEL.2_15:	; if_then_bb156
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 0
	movea 0xFFFFFFC5, r0, r5
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 577
	ori 0x00000005, r2, r2
	br9 .BB.LABEL.2_17
.BB.LABEL.2_16:	; if_else_bb160
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 0
	movea 0xFFFFFFD2, r0, r5
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 583
	ori 0x00000012, r2, r2
.BB.LABEL.2_17:	; if_else_bb160
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 0
	and r5, r2
	movhi 0x0000FFF2, r0, r5
	st.h r2, 0x00001014[r5]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 588
	ld.hu 0x00001018[r5], r2
	andi 0x00001FFF, r2, r2
	st.h r2, 0x00001018[r5]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 589
	ld.hu 0x00001018[r5], r2
	andi 0x0000FF7F, r2, r2
	st.h r2, 0x00001018[r5]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 592
	ld.hu 0x00001018[r5], r2
	andi 0x0000FFC0, r2, r2
	st.h r2, 0x00001018[r5]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 595
	ld.hu 0x0000101C[r5], r2
	andi 0x00001FFF, r2, r2
	st.h r2, 0x0000101C[r5]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 596
	ld.hu 0x0000101C[r5], r2
	andi 0x0000FF7F, r2, r2
	st.h r2, 0x0000101C[r5]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 599
	ld.h 0x0000101C[r5], r2
	ori 0x00000001, r2, r2
	andi 0x0000FFC1, r2, r2
	st.h r2, 0x0000101C[r5]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 602
	ld.hu 0x00001020[r5], r2
	andi 0x00001FFF, r2, r2
	st.h r2, 0x00001020[r5]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 603
	ld.hu 0x00001020[r5], r2
	andi 0x0000FF7F, r2, r2
	st.h r2, 0x00001020[r5]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 606
	ld.h 0x00001020[r5], r2
	ori 0x00000002, r2, r2
	andi 0x0000FFC2, r2, r2
	st.h r2, 0x00001020[r5]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 609
	ld.hu 0x00001024[r5], r2
	andi 0x00001FFF, r2, r2
	st.h r2, 0x00001024[r5]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 610
	ld.hu 0x00001024[r5], r2
	andi 0x0000FF7F, r2, r2
	st.h r2, 0x00001024[r5]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 613
	ld.h 0x00001024[r5], r2
	ori 0x00000004, r2, r2
	andi 0x0000FFC4, r2, r2
	st.h r2, 0x00001024[r5]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 617
	ld.hu 0x00001028[r5], r2
	andi 0x00001FFF, r2, r2
	st.h r2, 0x00001028[r5]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 618
	ld.hu 0x00001028[r5], r2
	andi 0x0000FF7F, r2, r2
	st.h r2, 0x00001028[r5]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 621
	ld.h 0x00001028[r5], r2
	ori 0x00000005, r2, r2
	andi 0x0000FFC5, r2, r2
	st.h r2, 0x00001028[r5]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 624
	ld.hu 0x0000102C[r5], r2
	andi 0x00001FFF, r2, r2
	st.h r2, 0x0000102C[r5]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 625
	ld.hu 0x0000102C[r5], r2
	andi 0x0000FF7F, r2, r2
	st.h r2, 0x0000102C[r5]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 628
	ld.h 0x0000102C[r5], r2
	ori 0x00000006, r2, r2
	andi 0x0000FFC6, r2, r2
	st.h r2, 0x0000102C[r5]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 631
	ld.hu 0x00001030[r5], r2
	andi 0x00001FFF, r2, r2
	st.h r2, 0x00001030[r5]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 632
	ld.hu 0x00001030[r5], r2
	andi 0x0000FF7F, r2, r2
	st.h r2, 0x00001030[r5]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 635
	ld.h 0x00001030[r5], r2
	ori 0x00000008, r2, r2
	andi 0x0000FFC8, r2, r2
	st.h r2, 0x00001030[r5]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 638
	ld.hu 0x00001034[r5], r2
	andi 0x00001FFF, r2, r2
	st.h r2, 0x00001034[r5]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 639
	ld.hu 0x00001034[r5], r2
	andi 0x0000FF7F, r2, r2
	st.h r2, 0x00001034[r5]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 642
	ld.h 0x00001034[r5], r2
	ori 0x00000009, r2, r2
	andi 0x0000FFC9, r2, r2
	st.h r2, 0x00001034[r5]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 645
	ld.hu 0x00001038[r5], r2
	andi 0x00001FFF, r2, r2
	st.h r2, 0x00001038[r5]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 646
	ld.hu 0x00001038[r5], r2
	andi 0x0000FF7F, r2, r2
	st.h r2, 0x00001038[r5]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 649
	ld.h 0x00001038[r5], r2
	ori 0x0000000A, r2, r2
	andi 0x0000FFCA, r2, r2
	st.h r2, 0x00001038[r5]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 652
	ld.hu 0x0000103C[r5], r2
	andi 0x00001FFF, r2, r2
	st.h r2, 0x0000103C[r5]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 653
	ld.hu 0x0000103C[r5], r2
	andi 0x0000FF7F, r2, r2
	st.h r2, 0x0000103C[r5]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 656
	ld.h 0x0000103C[r5], r2
	ori 0x00000014, r2, r2
	andi 0x0000FFD4, r2, r2
	st.h r2, 0x0000103C[r5]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 659
	ld.hu 0x00001040[r5], r2
	andi 0x00001FFF, r2, r2
	st.h r2, 0x00001040[r5]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 660
	ld.hu 0x00001040[r5], r2
	andi 0x0000FF7F, r2, r2
	st.h r2, 0x00001040[r5]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 663
	ld.h 0x00001040[r5], r2
	ori 0x00000015, r2, r2
	andi 0x0000FFD5, r2, r2
	st.h r2, 0x00001040[r5]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 666
	ld.hu 0x00001044[r5], r2
	andi 0x00001FFF, r2, r2
	st.h r2, 0x00001044[r5]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 667
	ld.hu 0x00001044[r5], r2
	andi 0x0000FF7F, r2, r2
	st.h r2, 0x00001044[r5]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 670
	ld.h 0x00001044[r5], r2
	ori 0x00000016, r2, r2
	andi 0x0000FFD6, r2, r2
	st.h r2, 0x00001044[r5]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 673
	ld.hu 0x00001048[r5], r2
	andi 0x00001FFF, r2, r2
	st.h r2, 0x00001048[r5]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 674
	ld.hu 0x00001048[r5], r2
	andi 0x0000FF7F, r2, r2
	st.h r2, 0x00001048[r5]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 677
	ld.h 0x00001048[r5], r2
	ori 0x00000018, r2, r2
	andi 0x0000FFD8, r2, r2
	st.h r2, 0x00001048[r5]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 681
	ld.hu 0x0000104C[r5], r2
	andi 0x00001FFF, r2, r2
	st.h r2, 0x0000104C[r5]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 682
	ld.hu 0x0000104C[r5], r2
	andi 0x0000FF7F, r2, r2
	st.h r2, 0x0000104C[r5]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 685
	ld.h 0x0000104C[r5], r2
	ori 0x00000019, r2, r2
	andi 0x0000FFD9, r2, r2
	st.h r2, 0x0000104C[r5]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 688
	ld.hu 0x00001050[r5], r2
	andi 0x00001FFF, r2, r2
	st.h r2, 0x00001050[r5]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 689
	ld.hu 0x00001050[r5], r2
	andi 0x0000FF7F, r2, r2
	st.h r2, 0x00001050[r5]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 692
	ld.h 0x00001050[r5], r2
	ori 0x0000001A, r2, r2
	andi 0x0000FFDA, r2, r2
	st.h r2, 0x00001050[r5]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 696
	ld.bu 0x00001694[r5], r2
	andi 0x000000C0, r2, r2
	st.b r2, 0x00001694[r5]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 697
	ld.b 0x00001698[r5], r2
	ori 0x00000005, r2, r2
	andi 0x000000C5, r2, r2
	st.b r2, 0x00001698[r5]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 699
	ld.b 0x00001614[r5], r2
	ori 0x00000006, r2, r2
	andi 0x000000C6, r2, r2
	st.b r2, 0x00001614[r5]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 700
	ld.b 0x00001618[r5], r2
	ori 0x00000014, r2, r2
	andi 0x000000D4, r2, r2
	st.b r2, 0x00001618[r5]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 702
	ld.b 0x00001594[r5], r2
	ori 0x00000006, r2, r2
	andi 0x000000C6, r2, r2
	st.b r2, 0x00001594[r5]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 703
	ld.b 0x00001598[r5], r2
	ori 0x00000014, r2, r2
	andi 0x000000D4, r2, r2
	st.b r2, 0x00001598[r5]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 705
	ld.b 0x00001514[r5], r2
	ori 0x00000006, r2, r2
	andi 0x000000C6, r2, r2
	st.b r2, 0x00001514[r5]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 706
	ld.b 0x00001518[r5], r2
	ori 0x00000014, r2, r2
	andi 0x000000D4, r2, r2
	st.b r2, 0x00001518[r5]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 708
	ld.b 0x00001494[r5], r2
	ori 0x00000006, r2, r2
	andi 0x000000C6, r2, r2
	st.b r2, 0x00001494[r5]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 709
	ld.b 0x00001498[r5], r2
	ori 0x00000014, r2, r2
	andi 0x000000D4, r2, r2
	st.b r2, 0x00001498[r5]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 712
	ld.b 0x0000169C[r5], r2
	st.b r0, 0x0000169C[r5]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 714
	ld.b 0x0000161C[r5], r2
	st.b r0, 0x0000161C[r5]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 715
	ld.b 0x0000159C[r5], r2
	st.b r0, 0x0000159C[r5]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 716
	ld.b 0x0000151C[r5], r2
	st.b r0, 0x0000151C[r5]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 717
	ld.b 0x0000149C[r5], r2
	st.b r0, 0x0000149C[r5]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 720
	ld.bu 0x000016B0[r5], r2
	andi 0x000000FC, r2, r2
	st.b r2, 0x000016B0[r5]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 723
	ld.bu 0x00001630[r5], r2
	andi 0x000000FC, r2, r2
	st.b r2, 0x00001630[r5]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 724
	ld.bu 0x000015B0[r5], r2
	andi 0x000000FC, r2, r2
	st.b r2, 0x000015B0[r5]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 725
	ld.bu 0x00001530[r5], r2
	andi 0x000000FC, r2, r2
	st.b r2, 0x00001530[r5]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 726
	ld.bu 0x000014B0[r5], r2
	andi 0x000000FC, r2, r2
	st.b r2, 0x000014B0[r5]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 729
	clr1 0x00000006, 0x00001490[r5]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 730
	set1 0x00000005, 0x00001490[r5]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 731
	clr1 0x00000004, 0x00001490[r5]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 732
	clr1 0x00000000, 0x00001490[r5]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 734
	set1 0x00000006, 0x00001510[r5]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 735
	clr1 0x00000005, 0x00001510[r5]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 736
	clr1 0x00000004, 0x00001510[r5]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 737
	clr1 0x00000000, 0x00001510[r5]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 739
	set1 0x00000006, 0x00001590[r5]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 740
	clr1 0x00000005, 0x00001590[r5]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 741
	clr1 0x00000004, 0x00001590[r5]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 742
	clr1 0x00000000, 0x00001590[r5]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 745
	clr1 0x00000007, 0x00001610[r5]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 746
	set1 0x00000006, 0x00001610[r5]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 747
	clr1 0x00000005, 0x00001610[r5]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 748
	clr1 0x00000004, 0x00001610[r5]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 749
	clr1 0x00000001, 0x00001610[r5]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 750
	clr1 0x00000000, 0x00001610[r5]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 752
	clr1 0x00000007, 0x00001690[r5]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 753
	set1 0x00000006, 0x00001690[r5]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 754
	clr1 0x00000005, 0x00001690[r5]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 757
	set1 0x00000004, 0x00001690[r5]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 761
	clr1 0x00000001, 0x00001690[r5]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 762
	clr1 0x00000000, 0x00001690[r5]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 766
	set1 0x00000000, 0x0000160C[r5]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 767
	set1 0x00000000, 0x0000168C[r5]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 770
	ld.w 0x00001628[r5], r2
	movhi 0x0000FFE0, r0, r6
	mov 0x001FFFFF, r7
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 778
	movhi 0x0000FFF2, r0, r8
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 770
	and r6, r2
	st.w r2, 0x00001628[r5]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 771
	ld.w 0x000016A8[r5], r2
	and r6, r2
	st.w r2, 0x000016A8[r5]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 774
	ld.w 0x00001628[r5], r2
	or r7, r2
	st.w r2, 0x00001628[r5]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 775
	ld.w 0x000016A8[r5], r2
	or r7, r2
	st.w r2, 0x000016A8[r5]
.BB.LABEL.2_18:	; bb500
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 778
	tst1 0x00000002, 0x00001624[r8]
	bnz9 .BB.LABEL.2_18
.BB.LABEL.2_19:	; bb507
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 0
	tst1 0x00000002, 0x000016A4[r8]
	bnz9 .BB.LABEL.2_18
.BB.LABEL.2_20:	; bb521
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 779
	movhi 0x0000FFF2, r0, r2
	clr1 0x00000000, 0x00001608[r2]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 780
	clr1 0x00000000, 0x00001688[r2]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 784
	set1 0x00000000, 0x00001430[r2]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 785
	set1 0x00000001, 0x00001430[r2]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 786
	set1 0x00000002, 0x00001430[r2]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 787
	set1 0x00000003, 0x00001430[r2]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 788
	set1 0x00000004, 0x00001430[r2]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 789
	set1 0x00000005, 0x00001430[r2]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 792
	ld.hu 0x00001434[r2], r5
	andi 0x0000FFFE, r5, r5
	st.h r5, 0x00001434[r2]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 793
	ld.hu 0x00001434[r2], r5
	andi 0x0000FFFB, r5, r5
	st.h r5, 0x00001434[r2]
	movhi 0x0000FFFF, r0, r6
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 794
	ld.hu 0x00001434[r2], r5
	andi 0x0000FFEF, r5, r5
	st.h r5, 0x00001434[r2]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 795
	ld.hu 0x00001434[r2], r5
	andi 0x0000FFBF, r5, r5
	movhi 0x00007FFE, r0, r7
	st.h r5, 0x00001434[r2]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 796
	ld.hu 0x00001434[r2], r5
	mov 0x7FFEFFFF, r8
	andi 0x0000FEFF, r5, r5
	st.h r5, 0x00001434[r2]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 797
	ld.hu 0x00001434[r2], r5
	andi 0x0000FBFF, r5, r5
	st.h r5, 0x00001434[r2]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 800
	set1 0x00000005, 0x00001420[r2]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 801
	set1 0x00000004, 0x00001420[r2]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 802
	ld.b 0x00001420[r2], r5
	ori 0x00000003, r5, r5
	st.b r5, 0x00001420[r2]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 805
	set1 0x00000005, 0x00001424[r2]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 806
	set1 0x00000004, 0x00001424[r2]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 807
	ld.b 0x00001424[r2], r5
	ori 0x00000003, r5, r5
	st.b r5, 0x00001424[r2]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 811
	set1 0x00000004, 0x00001398[r2]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 812
	clr1 0x00000000, 0x00001398[r2]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 816
	ld.b 0x00001384[r2], r5
	ori 0x00000002, r5, r5
	andi 0x000000FE, r5, r5
	st.b r5, 0x00001384[r2]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 820
	clr1 0x00000000, 0x00001408[r2]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 824
	ld.w 0x000013CC[r2], r5
	and r6, r5
	st.w r5, 0x000013CC[r2]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 825
	ld.w 0x000013CC[r2], r5
	or r7, r5
	and r8, r5
	st.w r5, 0x000013CC[r2]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 826
	ld.w 0x000013D0[r2], r5
	and r6, r5
	st.w r5, 0x000013D0[r2]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 827
	ld.w 0x000013D0[r2], r5
	or r7, r5
	and r8, r5
	st.w r5, 0x000013D0[r2]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 828
	ld.w 0x000013D4[r2], r5
	and r6, r5
	st.w r5, 0x000013D4[r2]
	mov 0x0000000F, r6
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 829
	ld.w 0x000013D4[r2], r5
	or r7, r5
	and r8, r5
	st.w r5, 0x000013D4[r2]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 833
	clr1 0x00000000, 0x000013C0[r2]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 834
	clr1 0x00000001, 0x000013C0[r2]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 835
	clr1 0x00000002, 0x000013C0[r2]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 836
	clr1 0x00000003, 0x000013C0[r2]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 839
	set1 0x00000003, 0x000013D8[r2]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 840
	set1 0x00000002, 0x000013D8[r2]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 841
	set1 0x00000001, 0x000013D8[r2]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 842
	set1 0x00000000, 0x000013D8[r2]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 845
	clr1 0x00000004, 0x000013C0[r2]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 850
	clr1 0x00000007, 0x000013C4[r2]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 851
	ld.bu 0x000013C4[r2], r5
	andi 0x000000FC, r5, r5
	st.b r5, 0x000013C4[r2]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 857
	clr1 0x00000007, 0x000013C8[r2]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 858
	ld.b 0x000013C8[r2], r5
	ori 0x00000004, r5, r5
	andi 0x000000C4, r5, r5
	st.b r5, 0x000013C8[r2]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 863
	set1 0x00000000, 0x00001400[r2]
.BB.LABEL.2_21:	; bb573.split.clone
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 0
	loop r6, .BB.LABEL.2_21
.BB.LABEL.2_22:	; bb581
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 873
	movhi 0x0000FFF2, r0, r2
	clr1 0x00000000, 0x00001410[r2]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 876
	clr1 0x00000000, 0x00001414[r2]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 879
	movhi 0x0000FFF2, r0, r2
.BB.LABEL.2_23:	; bb583
	tst1 0x00000001, 0x000016A4[r2]
	bnz9 .BB.LABEL.2_23
.BB.LABEL.2_24:	; bb590
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 0
	tst1 0x00000001, 0x00001624[r2]
	bnz9 .BB.LABEL.2_23
.BB.LABEL.2_25:	; bb604
	tst1 0x00000001, 0x000015A4[r2]
	bnz9 .BB.LABEL.2_23
.BB.LABEL.2_26:	; bb618
	tst1 0x00000001, 0x00001524[r2]
	bnz9 .BB.LABEL.2_23
.BB.LABEL.2_27:	; bb632
	tst1 0x00000001, 0x000014A4[r2]
	bnz9 .BB.LABEL.2_23
.BB.LABEL.2_28:	; bb647
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 883
	movhi 0x0000FFF2, r0, r2
	set1 0x00000000, 0x00001690[r2]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 885
	set1 0x00000000, 0x00001680[r2]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 886
	clr1 0x00000000, 0x00001600[r2]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 887
	clr1 0x00000000, 0x00001580[r2]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 888
	clr1 0x00000000, 0x00001500[r2]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 889
	set1 0x00000000, 0x00001480[r2]
	jmp [r31]
_adcc0_sg4_trig_set:
	.stack _adcc0_sg4_trig_set = 0
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 905
	cmp 0x00000003, r6
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 908
	bh9 .BB.LABEL.3_6
.BB.LABEL.3_1:	; entry
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 0
	movhi 0x0000FFDD, r0, r2
	ld.w 0x00001010[r2], r5
	shl 0x00000001, r6
	jmp #.SWITCH.LABEL.3_7[r6]
.SWITCH.LABEL.3_7:
	br9 .BB.LABEL.3_2
	br9 .BB.LABEL.3_3
	br9 .BB.LABEL.3_4
	br9 .BB.LABEL.3_5
.SWITCH.LABEL.3_7.END:
.BB.LABEL.3_2:	; switch_clause_bb
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 911
	ori 0x00000010, r5, r5
	st.w r5, 0x00001010[r2]
	br9 .BB.LABEL.3_6
.BB.LABEL.3_3:	; switch_clause_bb6
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 915
	ori 0x00000040, r5, r5
	st.w r5, 0x00001010[r2]
	br9 .BB.LABEL.3_6
.BB.LABEL.3_4:	; switch_clause_bb10
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 920
	ori 0x00000001, r5, r5
	st.w r5, 0x00001010[r2]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 921
	ld.h 0x00001050[r2], r5
	ori 0x00008000, r5, r5
	st.h r5, 0x00001050[r2]
	br9 .BB.LABEL.3_6
.BB.LABEL.3_5:	; switch_clause_bb17
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 925
	ori 0x00000002, r5, r5
	st.w r5, 0x00001010[r2]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 926
	ld.h 0x00001070[r2], r5
	ori 0x00008000, r5, r5
	st.h r5, 0x00001070[r2]
.BB.LABEL.3_6:	; switch_break_bb
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 934
	movhi 0x0000FFDD, r0, r2
	ld.hu 0x0000101C[r2], r5
	andi 0x0000FCFF, r5, r5
	st.h r5, 0x0000101C[r2]
	jmp [r31]
_adcc1_sg4_trig_set:
	.stack _adcc1_sg4_trig_set = 0
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 948
	cmp 0x00000003, r6
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 951
	bh9 .BB.LABEL.4_6
.BB.LABEL.4_1:	; entry
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 0
	movhi 0x0000FFDD, r0, r2
	ld.w 0x00001030[r2], r5
	shl 0x00000001, r6
	jmp #.SWITCH.LABEL.4_7[r6]
.SWITCH.LABEL.4_7:
	br9 .BB.LABEL.4_2
	br9 .BB.LABEL.4_3
	br9 .BB.LABEL.4_4
	br9 .BB.LABEL.4_5
.SWITCH.LABEL.4_7.END:
.BB.LABEL.4_2:	; switch_clause_bb
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 954
	ori 0x00000010, r5, r5
	st.w r5, 0x00001030[r2]
	br9 .BB.LABEL.4_6
.BB.LABEL.4_3:	; switch_clause_bb6
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 958
	ori 0x00000040, r5, r5
	st.w r5, 0x00001030[r2]
	br9 .BB.LABEL.4_6
.BB.LABEL.4_4:	; switch_clause_bb10
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 963
	ori 0x00000001, r5, r5
	st.w r5, 0x00001030[r2]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 964
	ld.h 0x00001050[r2], r5
	ori 0x00008000, r5, r5
	st.h r5, 0x00001050[r2]
	br9 .BB.LABEL.4_6
.BB.LABEL.4_5:	; switch_clause_bb17
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 968
	ori 0x00000002, r5, r5
	st.w r5, 0x00001030[r2]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 969
	ld.h 0x00001070[r2], r5
	ori 0x00008000, r5, r5
	st.h r5, 0x00001070[r2]
.BB.LABEL.4_6:	; switch_break_bb
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 976
	movhi 0x0000FFDD, r0, r2
	ld.hu 0x0000103C[r2], r5
	andi 0x0000FCFF, r5, r5
	st.h r5, 0x0000103C[r2]
	jmp [r31]
_adcc0_sg4_int_init:
	.stack _adcc0_sg4_int_init = 0
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 989
	ld.w 0xFFFFBAC0[r0], r2
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 991
	cmp 0x00000002, r7
	bnz9 .BB.LABEL.5_2
.BB.LABEL.5_1:	; if_then_bb
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 0
	movhi 0x00000001, r0, r5
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 993
	or r5, r2
	mov 0xFFFDFFFF, r7
	and r7, r2
	mov 0xFFFFFFFA, r8
	st.w r2, 0xFFFFBAC0[r0]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 994
	ld.w 0xFFFFBAC0[r0], r2
	ori 0x00000002, r2, r2
	and r8, r2
	br9 .BB.LABEL.5_3
.BB.LABEL.5_2:	; if_else_bb
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 0
	mov 0xFFFCFFFF, r5
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 998
	and r5, r2
	mov 0xFFFFFFF9, r7
	st.w r2, 0xFFFFBAC0[r0]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 999
	ld.w 0xFFFFBAC0[r0], r2
	ori 0x00000001, r2, r2
	and r7, r2
.BB.LABEL.5_3:	; if_break_bb
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 0
	st.w r2, 0xFFFFBAC0[r0]
	set1 0x00000007, 0xFFFFB160[r0]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 1002
	cmp 0x0000000F, r6
	bgt9 .BB.LABEL.5_5
.BB.LABEL.5_4:	; if_then_bb23
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 1005
	clr1 0x00000004, 0xFFFFB161[r0]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 1006
	ld.bu 0xFFFFB160[r0], r2
	andi 0x0000000F, r6, r5
	andi 0x000000F0, r2, r2
	or r5, r2
	st.b r2, 0xFFFFB160[r0]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 1007
	set1 0x00000006, 0xFFFFB160[r0]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 1008
	clr1 0x00000007, 0xFFFFB160[r0]
	jmp [r31]
.BB.LABEL.5_5:	; if_else_bb29
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 1013
	ld.b 0xFFFFB160[r0], r2
	ori 0x0000000F, r2, r2
	st.b r2, 0xFFFFB160[r0]
	jmp [r31]
_adcc1_sg4_int_init:
	.stack _adcc1_sg4_int_init = 0
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 1027
	ld.w 0xFFFFBAD4[r0], r2
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 1029
	cmp 0x00000002, r7
	bnz9 .BB.LABEL.6_2
.BB.LABEL.6_1:	; if_then_bb
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 0
	movhi 0x00000001, r0, r5
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 1031
	or r5, r2
	mov 0xFFFDFFFF, r7
	and r7, r2
	mov 0xFFFFFFFA, r8
	st.w r2, 0xFFFFBAD4[r0]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 1032
	ld.w 0xFFFFBAD4[r0], r2
	ori 0x00000002, r2, r2
	and r8, r2
	br9 .BB.LABEL.6_3
.BB.LABEL.6_2:	; if_else_bb
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 0
	mov 0xFFFCFFFF, r5
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 1036
	and r5, r2
	mov 0xFFFFFFF9, r7
	st.w r2, 0xFFFFBAD4[r0]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 1037
	ld.w 0xFFFFBAD4[r0], r2
	ori 0x00000001, r2, r2
	and r7, r2
.BB.LABEL.6_3:	; if_break_bb
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 0
	st.w r2, 0xFFFFBAD4[r0]
	set1 0x00000007, 0xFFFFB16A[r0]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 1040
	cmp 0x0000000F, r6
	bgt9 .BB.LABEL.6_5
.BB.LABEL.6_4:	; if_then_bb23
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 1043
	clr1 0x00000004, 0xFFFFB16B[r0]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 1044
	ld.bu 0xFFFFB16A[r0], r2
	andi 0x0000000F, r6, r5
	andi 0x000000F0, r2, r2
	or r5, r2
	st.b r2, 0xFFFFB16A[r0]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 1045
	set1 0x00000006, 0xFFFFB16A[r0]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 1046
	clr1 0x00000007, 0xFFFFB16A[r0]
	jmp [r31]
.BB.LABEL.6_5:	; if_else_bb29
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_ADC.c", 1051
	ld.b 0xFFFFB16A[r0], r2
	ori 0x0000000F, r2, r2
	st.b r2, 0xFFFFB16A[r0]
	jmp [r31]
