#CC-RH Compiler RH850 Assembler Source
#@	CC-RH Version : V2.06.00  [28 Nov 2023]
#@	Command : Common\fi_pe2_error.c ..\Common\iolib\io_CPU.c ..\Common\iolib\io_ADC.c ..\Common\iolib\io_CSIH0.c ..\Common\iolib\io_CSIH1.c ..\Common\iolib\io_ENCA0.c ..\Common\iolib\io_ENCA1.c ..\Common\iolib\io_FCAN.c ..\Common\iolib\io_RDC20.c ..\Common\iolib\io_RDC21.c ..\Common\iolib\io_SCI0_40MHz.c ..\Common\iolib\io_SCI1_40MHz.c ..\Common\iolib\io_SCI2_40MHz.c ..\Common\iolib\io_TAUD0.c ..\Common\iolib\io_TAUD1.c ..\Common\iolib\io_TAUJ0.c ..\Common\iolib\io_TSG30.c ..\Common\iolib\io_TSG31.c ..\PE1\AWatcher\VECLIB_CMDMONI.c src\fpmsm_main.c ..\PE1\src\fi_AWatcher.c src\fi_1ms_int.c src\fi_20us_int.c src\fi_enc1_int.c src\fi_pwm_int.c ..\PE1\src\fb_kpwm_tbl.c ..\PE1\src\fb_therm_calc.c ..\PE1\src\fb_therm_tbl_module.c ..\PE1\src\fb_vctrlerr_tbl.c ..\PE1\src\fi_pwm_vctrlerrtbl.c ..\Common\iolib\io_PIO_amdt0530.c -Xobj_path=DefaultBuild -Xcpu=g3m -g -g_line -Ospeed -Oinline_size -I..\PE1\src -Isrc -I..\Common -D__CLK_HSB=80,__CLK_LSB=40,__CLKC_HSB=80,__CLK_CLSB=40 -use_recipf -Xasm_path=DefaultBuild -c
#@	compiled at Thu Aug 22 10:25:06 2024

	.file "..\PE1\src\fi_AWatcher.c"

	$reg_mode 32
	.dbl_size 8

	.public _u4_cnt_re_oer, 4
	.public _u4_cnt_re_fer, 4
	.public _fi_awc_rx
	.extern _VECLIB_CMDMONI_INTR
	.public _fi_awc_re
	.extern _VECLIB_CMDMONI_INTRE

	.section .text, text
_fi_awc_rx:
	.stack _fi_awc_rx = 96
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/PE1/src/fi_AWatcher.c", 42
	movea 0xFFFFFFA4, r3, r3
	st23.dw r6, 0x00000024[r3]
	stsr 0x00000000, r6, 0x00000000
	stsr 0x00000001, r7, 0x00000000
	st23.dw r6, 0x00000000[r3]
	st.w r1, 0x00000018[r3]
	st.w r2, 0x0000001C[r3]
	st.w r5, 0x00000020[r3]
	st23.dw r8, 0x0000002C[r3]
	st23.dw r10, 0x00000034[r3]
	st23.dw r12, 0x0000003C[r3]
	st23.dw r14, 0x00000044[r3]
	st23.dw r16, 0x0000004C[r3]
	st23.dw r18, 0x00000054[r3]
	stsr 0x00000010, r8, 0x00000000
	stsr 0x00000011, r9, 0x00000000
	st23.dw r8, 0x00000008[r3]
	stsr 0x00000007, r8, 0x00000000
	stsr 0x00000006, r9, 0x00000000
	st23.dw r8, 0x00000010[r3]
	prepare 0x00000001, 0x00000000
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/PE1/src/fi_AWatcher.c", 47
	ei
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/PE1/src/fi_AWatcher.c", 53
	jarl _VECLIB_CMDMONI_INTR, r31
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/PE1/src/fi_AWatcher.c", 59
	di
	dispose 0x00000000, 0x00000001
	ld23.dw 0x00000010[r3], r8
	ldsr r8, 0x00000007, 0x00000000
	ldsr r9, 6
	ld23.dw 0x00000008[r3], r8
	ldsr r8, 0x00000010, 0x00000000
	ldsr r9, 0x00000011, 0x00000000
	ld23.dw 0x00000054[r3], r18
	ld23.dw 0x0000004C[r3], r16
	ld23.dw 0x00000044[r3], r14
	ld23.dw 0x0000003C[r3], r12
	ld23.dw 0x00000034[r3], r10
	ld23.dw 0x0000002C[r3], r8
	ld.w 0x00000020[r3], r5
	ld.w 0x0000001C[r3], r2
	ld.w 0x00000018[r3], r1
	ld23.dw 0x00000000[r3], r6
	ldsr r6, 0x00000000, 0x00000000
	ldsr r7, 0x00000001, 0x00000000
	ld23.dw 0x00000024[r3], r6
	movea 0x0000005C, r3, r3
	eiret
_fi_awc_re:
	.stack _fi_awc_re = 96
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/PE1/src/fi_AWatcher.c", 76
	movea 0xFFFFFFA4, r3, r3
	st23.dw r6, 0x00000024[r3]
	stsr 0x00000000, r6, 0x00000000
	stsr 0x00000001, r7, 0x00000000
	st23.dw r6, 0x00000000[r3]
	st.w r1, 0x00000018[r3]
	st.w r2, 0x0000001C[r3]
	st.w r5, 0x00000020[r3]
	st23.dw r8, 0x0000002C[r3]
	st23.dw r10, 0x00000034[r3]
	st23.dw r12, 0x0000003C[r3]
	st23.dw r14, 0x00000044[r3]
	st23.dw r16, 0x0000004C[r3]
	st23.dw r18, 0x00000054[r3]
	stsr 0x00000010, r8, 0x00000000
	stsr 0x00000011, r9, 0x00000000
	st23.dw r8, 0x00000008[r3]
	stsr 0x00000007, r8, 0x00000000
	stsr 0x00000006, r9, 0x00000000
	st23.dw r8, 0x00000010[r3]
	prepare 0x00000001, 0x00000000
	movhi 0x0000FFD9, r0, r2
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/PE1/src/fi_AWatcher.c", 78
	tst1 0x00000005, 0x00000010[r2]
	bz9 .BB.LABEL.2_2
.BB.LABEL.2_1:	; if_then_bb
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/PE1/src/fi_AWatcher.c", 80
	movhi HIGHW1(#_u4_cnt_re_oer), r0, r2
	ld.w LOWW(#_u4_cnt_re_oer)[r2], r5
	add 0x00000001, r5
	st.w r5, LOWW(#_u4_cnt_re_oer)[r2]
.BB.LABEL.2_2:	; if_break_bb
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/PE1/src/fi_AWatcher.c", 0
	movhi 0x0000FFD9, r0, r2
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/PE1/src/fi_AWatcher.c", 82
	tst1 0x00000004, 0x00000010[r2]
	bz9 .BB.LABEL.2_4
.BB.LABEL.2_3:	; if_then_bb15
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/PE1/src/fi_AWatcher.c", 84
	movhi HIGHW1(#_u4_cnt_re_fer), r0, r2
	ld.w LOWW(#_u4_cnt_re_fer)[r2], r5
	add 0x00000001, r5
	st.w r5, LOWW(#_u4_cnt_re_fer)[r2]
.BB.LABEL.2_4:	; if_break_bb18
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/PE1/src/fi_AWatcher.c", 89
	ei
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/PE1/src/fi_AWatcher.c", 95
	jarl _VECLIB_CMDMONI_INTRE, r31
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/PE1/src/fi_AWatcher.c", 101
	di
	dispose 0x00000000, 0x00000001
	ld23.dw 0x00000010[r3], r8
	ldsr r8, 0x00000007, 0x00000000
	ldsr r9, 6
	ld23.dw 0x00000008[r3], r8
	ldsr r8, 0x00000010, 0x00000000
	ldsr r9, 0x00000011, 0x00000000
	ld23.dw 0x00000054[r3], r18
	ld23.dw 0x0000004C[r3], r16
	ld23.dw 0x00000044[r3], r14
	ld23.dw 0x0000003C[r3], r12
	ld23.dw 0x00000034[r3], r10
	ld23.dw 0x0000002C[r3], r8
	ld.w 0x00000020[r3], r5
	ld.w 0x0000001C[r3], r2
	ld.w 0x00000018[r3], r1
	ld23.dw 0x00000000[r3], r6
	ldsr r6, 0x00000000, 0x00000000
	ldsr r7, 0x00000001, 0x00000000
	ld23.dw 0x00000024[r3], r6
	movea 0x0000005C, r3, r3
	eiret
	.section .bss, bss
	.align 4
_u4_cnt_re_oer:
	.ds (4)
	.align 4
_u4_cnt_re_fer:
	.ds (4)
