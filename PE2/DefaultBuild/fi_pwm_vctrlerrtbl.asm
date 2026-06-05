#CC-RH Compiler RH850 Assembler Source
#@	CC-RH Version : V2.06.00  [28 Nov 2023]
#@	Command : Common\fi_pe2_error.c ..\Common\iolib\io_CPU.c ..\Common\iolib\io_ADC.c ..\Common\iolib\io_CSIH0.c ..\Common\iolib\io_CSIH1.c ..\Common\iolib\io_ENCA0.c ..\Common\iolib\io_ENCA1.c ..\Common\iolib\io_FCAN.c ..\Common\iolib\io_RDC20.c ..\Common\iolib\io_RDC21.c ..\Common\iolib\io_SCI0_40MHz.c ..\Common\iolib\io_SCI1_40MHz.c ..\Common\iolib\io_SCI2_40MHz.c ..\Common\iolib\io_TAUD0.c ..\Common\iolib\io_TAUD1.c ..\Common\iolib\io_TAUJ0.c ..\Common\iolib\io_TSG30.c ..\Common\iolib\io_TSG31.c ..\PE1\AWatcher\VECLIB_CMDMONI.c src\fpmsm_main.c ..\PE1\src\fi_AWatcher.c src\fi_1ms_int.c src\fi_20us_int.c src\fi_enc1_int.c src\fi_pwm_int.c ..\PE1\src\fb_kpwm_tbl.c ..\PE1\src\fb_therm_calc.c ..\PE1\src\fb_therm_tbl_module.c ..\PE1\src\fb_vctrlerr_tbl.c ..\PE1\src\fi_pwm_vctrlerrtbl.c ..\Common\iolib\io_PIO_amdt0530.c -Xobj_path=DefaultBuild -Xcpu=g3m -g -g_line -Ospeed -Oinline_size -I..\PE1\src -Isrc -I..\Common -D__CLK_HSB=80,__CLK_LSB=40,__CLKC_HSB=80,__CLK_CLSB=40 -use_recipf -Xasm_path=DefaultBuild -c
#@	compiled at Thu Aug 22 10:25:06 2024

	.file "..\PE1\src\fi_pwm_vctrlerrtbl.c"

	$reg_mode 32
	.dbl_size 8

	.extern _f4_vctrlerr_tbl
	.public _u2_cnt_vctrltbl, 2
	.public _fi_pwm_vctrlerrtbl
	.public _fb_pwm_vctrlerr_init

	.section .text, text
_fi_pwm_vctrlerrtbl:
	.stack _fi_pwm_vctrlerrtbl = 0
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/PE1/src/fi_pwm_vctrlerrtbl.c", 50
	mov 0x00000000, r2
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/PE1/src/fi_pwm_vctrlerrtbl.c", 64
	cmpf.s 0x00000004, r6, r2
	mov r6, r5
	trfsr 0
	bnz9 .BB.LABEL.1_2
.BB.LABEL.1_1:	; if_then_bb
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/PE1/src/fi_pwm_vctrlerrtbl.c", 0
	negf.s r6, r5
.BB.LABEL.1_2:	; if_break_bb
	movhi 0x00004A00, r0, r10
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/PE1/src/fi_pwm_vctrlerrtbl.c", 67
	mulf.s r10, r5, r10
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/PE1/src/fi_pwm_vctrlerrtbl.c", 74
	cmpf.s 0x00000007, r8, r5
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/PE1/src/fi_pwm_vctrlerrtbl.c", 67
	trncf.sw r10, r10
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/PE1/src/fi_pwm_vctrlerrtbl.c", 69
	sar 0x00000012, r10
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/PE1/src/fi_pwm_vctrlerrtbl.c", 70
	andi 0x0000FFFF, r10, r11
	addi 0xFFFFFF00, r11, r0
	movea 0x00000100, r0, r11
	cmov 0x0000000F, r11, r10, r10
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/PE1/src/fi_pwm_vctrlerrtbl.c", 74
	trfsr 0
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/PE1/src/fi_pwm_vctrlerrtbl.c", 70
	movhi HIGHW1(#_u2_cnt_vctrltbl), r0, r11
	cmpf.s 0x00000007, r6, r2
	st.h r10, LOWW(#_u2_cnt_vctrltbl)[r11]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/PE1/src/fi_pwm_vctrlerrtbl.c", 74
	bz9 .BB.LABEL.1_6
.BB.LABEL.1_3:	; if_then_bb31
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/PE1/src/fi_pwm_vctrlerrtbl.c", 0
	andi 0x0000FFFF, r10, r2
	shl 0x00000002, r2
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/PE1/src/fi_pwm_vctrlerrtbl.c", 76
	trfsr 0
	bz9 .BB.LABEL.1_5
.BB.LABEL.1_4:	; if_then_bb36
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/PE1/src/fi_pwm_vctrlerrtbl.c", 0
	mov #_f4_vctrlerr_tbl, r10
	add r2, r10
	ld.w 0x00000000[r10], r2
	st.w r2, 0x00000000[r9]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/PE1/src/fi_pwm_vctrlerrtbl.c", 86
	jmp [r31]
.BB.LABEL.1_5:	; if_else_bb42
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/PE1/src/fi_pwm_vctrlerrtbl.c", 77
	mov #_f4_vctrlerr_tbl, r5
	add r2, r5
	ld.w 0x00000000[r5], r2
	negf.s r2, r2
	st.w r2, 0x00000000[r9]
	jmp [r31]
.BB.LABEL.1_6:	; if_else_bb50
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/PE1/src/fi_pwm_vctrlerrtbl.c", 81
	trfsr 0
	bz9 .BB.LABEL.1_8
.BB.LABEL.1_7:	; if_then_bb55
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/PE1/src/fi_pwm_vctrlerrtbl.c", 0
	st.w r7, 0x00000000[r9]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/PE1/src/fi_pwm_vctrlerrtbl.c", 86
	jmp [r31]
.BB.LABEL.1_8:	; if_else_bb58
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/PE1/src/fi_pwm_vctrlerrtbl.c", 82
	negf.s r7, r2
	st.w r2, 0x00000000[r9]
	jmp [r31]
_fb_pwm_vctrlerr_init:
	.stack _fb_pwm_vctrlerr_init = 0
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/PE1/src/fi_pwm_vctrlerrtbl.c", 103
	movhi HIGHW1(#_u2_cnt_vctrltbl), r0, r2
	st.h r0, LOWW(#_u2_cnt_vctrltbl)[r2]
	jmp [r31]
	.section .bss, bss
	.align 2
_u2_cnt_vctrltbl:
	.ds (2)
