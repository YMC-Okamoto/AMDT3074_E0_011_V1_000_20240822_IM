#CC-RH Compiler RH850 Assembler Source
#@	CC-RH Version : V2.06.00  [28 Nov 2023]
#@	Command : Common\fi_pe2_error.c ..\Common\iolib\io_CPU.c ..\Common\iolib\io_ADC.c ..\Common\iolib\io_CSIH0.c ..\Common\iolib\io_CSIH1.c ..\Common\iolib\io_ENCA0.c ..\Common\iolib\io_ENCA1.c ..\Common\iolib\io_FCAN.c ..\Common\iolib\io_RDC20.c ..\Common\iolib\io_RDC21.c ..\Common\iolib\io_SCI0_40MHz.c ..\Common\iolib\io_SCI1_40MHz.c ..\Common\iolib\io_SCI2_40MHz.c ..\Common\iolib\io_TAUD0.c ..\Common\iolib\io_TAUD1.c ..\Common\iolib\io_TAUJ0.c ..\Common\iolib\io_TSG30.c ..\Common\iolib\io_TSG31.c ..\PE1\AWatcher\VECLIB_CMDMONI.c src\fpmsm_main.c ..\PE1\src\fi_AWatcher.c src\fi_1ms_int.c src\fi_20us_int.c src\fi_enc1_int.c src\fi_pwm_int.c ..\PE1\src\fb_kpwm_tbl.c ..\PE1\src\fb_therm_calc.c ..\PE1\src\fb_therm_tbl_module.c ..\PE1\src\fb_vctrlerr_tbl.c ..\PE1\src\fi_pwm_vctrlerrtbl.c ..\Common\iolib\io_PIO_amdt0530.c -Xobj_path=DefaultBuild -Xcpu=g3m -g -g_line -Ospeed -Oinline_size -I..\PE1\src -Isrc -I..\Common -D__CLK_HSB=80,__CLK_LSB=40,__CLKC_HSB=80,__CLK_CLSB=40 -use_recipf -Xasm_path=DefaultBuild -c
#@	compiled at Thu Aug 22 10:25:06 2024

	.file "..\PE1\src\fb_therm_calc.c"

	$reg_mode 32
	.dbl_size 8

	.public _f4_thermister_calc_2_8
	.extern _logf

	.section .text, text
_f4_thermister_calc_2_8:
	.stack _f4_thermister_calc_2_8 = 36
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/PE1/src/fb_therm_calc.c", 25
	add 0xFFFFFFF4, r3
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/PE1/src/fb_therm_calc.c", 27
	cvtf.uws r6, r6
	st.w r7, 0x00000000[r3]
	st23.dw r8, 0x00000004[r3]
	prepare 0x00000479, 0x00000000
	ld.w 0x00000030[r3], r2
	movea 0x00000018, r3, r20
	ld.w 0x00000034[r3], r7
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/PE1/src/fb_therm_calc.c", 33
	ld.w 0x0000002C[r3], r5
	ld.w 0x00000038[r3], r8
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/PE1/src/fb_therm_calc.c", 27
	divf.s r7, r2, r7
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/PE1/src/fb_therm_calc.c", 33
	mulf.s r2, r5, r9
	cmp 0x00000000, r8
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/PE1/src/fb_therm_calc.c", 27
	mulf.s r7, r6, r21
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/PE1/src/fb_therm_calc.c", 33
	bnz9 .BB.LABEL.1_2
.BB.LABEL.1_1:	; if_then_bb
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/PE1/src/fb_therm_calc.c", 35
	ld.w 0x00000010[r20], r6
	subf.s r2, r21, r2
	addf.s r5, r6, r5
	mulf.s r5, r21, r5
	subf.s r5, r9, r5
	divf.s r2, r5, r5
	br9 .BB.LABEL.1_3
.BB.LABEL.1_2:	; if_else_bb
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/PE1/src/fb_therm_calc.c", 39
	divf.s r21, r9, r6
	ld.w 0x00000010[r20], r2
	subf.s r2, r6, r2
	subf.s r5, r2, r5
.BB.LABEL.1_3:	; if_break_bb
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/PE1/src/fb_therm_calc.c", 42
	cvtf.sd r5, r6
	mov 0x00000000, r8
	movhi 0x00003FF0, r0, r9
	movhi 0x00003F80, r0, r2
	cmpf.d 0x00000004, r6, r8
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/PE1/src/fb_therm_calc.c", 44
	cmovf.s 0, r2, r5, r22
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/PE1/src/fb_therm_calc.c", 48
	mov r22, r6
	jarl _logf, r31
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/PE1/src/fb_therm_calc.c", 49
	ld.w 0x00000004[r20], r6
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/PE1/src/fb_therm_calc.c", 48
	mov r10, r23
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/PE1/src/fb_therm_calc.c", 49
	ld.w 0x00000000[r20], r24
	jarl _logf, r31
	ld.w 0x00000008[r20], r5
	cvtf.sd r24, r8
	mov 0x66666666, r6
	mov 0x40711266, r7
	cvtf.sd r5, r12
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/PE1/src/fb_therm_calc.c", 51
	ld.w 0x0000000C[r20], r2
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/PE1/src/fb_therm_calc.c", 49
	subf.s r10, r23, r10
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/PE1/src/fb_therm_calc.c", 51
	mulf.s r21, r2, r2
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/PE1/src/fb_therm_calc.c", 49
	addf.d r6, r12, r12
	cvtf.sd r10, r10
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/PE1/src/fb_therm_calc.c", 51
	mulf.s r21, r2, r2
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/PE1/src/fb_therm_calc.c", 49
	divf.d r12, r8, r12
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/PE1/src/fb_therm_calc.c", 51
	divf.s r22, r2, r2
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/PE1/src/fb_therm_calc.c", 49
	addf.d r12, r10, r10
	divf.d r10, r8, r8
	cvtf.ds r8, r5
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/PE1/src/fb_therm_calc.c", 51
	subf.s r2, r5, r2
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/PE1/src/fb_therm_calc.c", 53
	cvtf.sd r2, r8
	subf.d r6, r8, r6
	mov 0x00000000, r8
	mov 0x406FE000, r9
	cvtf.ds r6, r2
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/PE1/src/fb_therm_calc.c", 55
	cvtf.sd r2, r6
	cmpf.d 0x00000007, r6, r8
	trfsr 0
	bnz9 .BB.LABEL.1_6
.BB.LABEL.1_4:	; bb97
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/PE1/src/fb_therm_calc.c", 0
	mov 0x00000000, r8
	mov 0xC06FE000, r9
	cmpf.d 0x00000007, r8, r6
	trfsr 0
	bnz9 .BB.LABEL.1_6
.BB.LABEL.1_5:	; bb103
	cmovf.d 0, r6, r6, r8
.BB.LABEL.1_6:	; bb110
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/PE1/src/fb_therm_calc.c", 58
	dispose 0x00000000, 0x00000479
	cvtf.ds r8, r10
	add 0x0000000C, r3
	jmp [r31]
