#CC-RH Compiler RH850 Assembler Source
#@	CC-RH Version : V2.06.00  [28 Nov 2023]
#@	Command : Common\fi_pe2_error.c ..\Common\iolib\io_CPU.c ..\Common\iolib\io_ADC.c ..\Common\iolib\io_CSIH0.c ..\Common\iolib\io_CSIH1.c ..\Common\iolib\io_ENCA0.c ..\Common\iolib\io_ENCA1.c ..\Common\iolib\io_FCAN.c ..\Common\iolib\io_RDC20.c ..\Common\iolib\io_RDC21.c ..\Common\iolib\io_SCI0_40MHz.c ..\Common\iolib\io_SCI1_40MHz.c ..\Common\iolib\io_SCI2_40MHz.c ..\Common\iolib\io_TAUD0.c ..\Common\iolib\io_TAUD1.c ..\Common\iolib\io_TAUJ0.c ..\Common\iolib\io_TSG30.c ..\Common\iolib\io_TSG31.c ..\PE1\AWatcher\VECLIB_CMDMONI.c src\fpmsm_main.c ..\PE1\src\fi_AWatcher.c src\fi_1ms_int.c src\fi_20us_int.c src\fi_enc1_int.c src\fi_pwm_int.c ..\PE1\src\fb_kpwm_tbl.c ..\PE1\src\fb_therm_calc.c ..\PE1\src\fb_therm_tbl_module.c ..\PE1\src\fb_vctrlerr_tbl.c ..\PE1\src\fi_pwm_vctrlerrtbl.c ..\Common\iolib\io_PIO_amdt0530.c -Xobj_path=DefaultBuild -Xcpu=g3m -g -g_line -Ospeed -Oinline_size -I..\PE1\src -Isrc -I..\Common -D__CLK_HSB=80,__CLK_LSB=40,__CLKC_HSB=80,__CLK_CLSB=40 -use_recipf -Xasm_path=DefaultBuild -c
#@	compiled at Thu Aug 22 10:25:06 2024

	.file "Common\fi_pe2_error.c"

	$reg_mode 32
	.dbl_size 8

	.public _u4_flag_error_PE2, 4
	.public _Dummy_func_pe2
	.public _Dummy_EI_func_pe2
	.public _Dummy_EI_PE2
	.public _Dummy_EI_PE12

	.section com.text, text
_Dummy_func_pe2:
	.stack _Dummy_func_pe2 = 0
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/PE2/Common/fi_pe2_error.c", 19
	movhi HIGHW1(#_u4_flag_error_PE2), r0, r2
	set1 0x00000000, LOWW(#_u4_flag_error_PE2)[r2]
	jmp [r31]
_Dummy_EI_func_pe2:
	.stack _Dummy_EI_func_pe2 = 48
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/PE2/Common/fi_pe2_error.c", 22
	movea 0xFFFFFFD0, r3, r3
	st23.dw r6, 0x00000020[r3]
	stsr 0x00000000, r6, 0x00000000
	stsr 0x00000001, r7, 0x00000000
	st23.dw r6, 0x00000000[r3]
	st.w r1, 0x00000018[r3]
	st.w r2, 0x0000001C[r3]
	st23.dw r8, 0x00000028[r3]
	stsr 0x00000010, r8, 0x00000000
	stsr 0x00000011, r9, 0x00000000
	st23.dw r8, 0x00000008[r3]
	stsr 0x00000007, r8, 0x00000000
	stsr 0x00000006, r9, 0x00000000
	st23.dw r8, 0x00000010[r3]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/PE2/Common/fi_pe2_error.c", 24
	ld23.dw 0x00000010[r3], r8
	movhi HIGHW1(#_u4_flag_error_PE2), r0, r2
	set1 0x00000001, LOWW(#_u4_flag_error_PE2)[r2]
	ldsr r8, 0x00000007, 0x00000000
	ldsr r9, 6
	ld23.dw 0x00000008[r3], r8
	ldsr r8, 0x00000010, 0x00000000
	ldsr r9, 0x00000011, 0x00000000
	ld23.dw 0x00000028[r3], r8
	ld.w 0x0000001C[r3], r2
	ld.w 0x00000018[r3], r1
	ld23.dw 0x00000000[r3], r6
	ldsr r6, 0x00000000, 0x00000000
	ldsr r7, 0x00000001, 0x00000000
	ld23.dw 0x00000020[r3], r6
	movea 0x00000030, r3, r3
	eiret
	.section .text, text
_Dummy_EI_PE2:
	.stack _Dummy_EI_PE2 = 48
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/PE2/Common/fi_pe2_error.c", 30
	movea 0xFFFFFFD0, r3, r3
	st23.dw r6, 0x00000020[r3]
	stsr 0x00000000, r6, 0x00000000
	stsr 0x00000001, r7, 0x00000000
	st23.dw r6, 0x00000000[r3]
	st.w r1, 0x00000018[r3]
	st.w r2, 0x0000001C[r3]
	st23.dw r8, 0x00000028[r3]
	stsr 0x00000010, r8, 0x00000000
	stsr 0x00000011, r9, 0x00000000
	st23.dw r8, 0x00000008[r3]
	stsr 0x00000007, r8, 0x00000000
	stsr 0x00000006, r9, 0x00000000
	st23.dw r8, 0x00000010[r3]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/PE2/Common/fi_pe2_error.c", 32
	ld23.dw 0x00000010[r3], r8
	movhi HIGHW1(#_u4_flag_error_PE2), r0, r2
	set1 0x00000002, LOWW(#_u4_flag_error_PE2)[r2]
	ldsr r8, 0x00000007, 0x00000000
	ldsr r9, 6
	ld23.dw 0x00000008[r3], r8
	ldsr r8, 0x00000010, 0x00000000
	ldsr r9, 0x00000011, 0x00000000
	ld23.dw 0x00000028[r3], r8
	ld.w 0x0000001C[r3], r2
	ld.w 0x00000018[r3], r1
	ld23.dw 0x00000000[r3], r6
	ldsr r6, 0x00000000, 0x00000000
	ldsr r7, 0x00000001, 0x00000000
	ld23.dw 0x00000020[r3], r6
	movea 0x00000030, r3, r3
	eiret
_Dummy_EI_PE12:
	.stack _Dummy_EI_PE12 = 48
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/PE2/Common/fi_pe2_error.c", 35
	movea 0xFFFFFFD0, r3, r3
	st23.dw r6, 0x00000020[r3]
	stsr 0x00000000, r6, 0x00000000
	stsr 0x00000001, r7, 0x00000000
	st23.dw r6, 0x00000000[r3]
	st.w r1, 0x00000018[r3]
	st.w r2, 0x0000001C[r3]
	st23.dw r8, 0x00000028[r3]
	stsr 0x00000010, r8, 0x00000000
	stsr 0x00000011, r9, 0x00000000
	st23.dw r8, 0x00000008[r3]
	stsr 0x00000007, r8, 0x00000000
	stsr 0x00000006, r9, 0x00000000
	st23.dw r8, 0x00000010[r3]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/PE2/Common/fi_pe2_error.c", 37
	ld23.dw 0x00000010[r3], r8
	movhi HIGHW1(#_u4_flag_error_PE2), r0, r2
	set1 0x00000003, LOWW(#_u4_flag_error_PE2)[r2]
	ldsr r8, 0x00000007, 0x00000000
	ldsr r9, 6
	ld23.dw 0x00000008[r3], r8
	ldsr r8, 0x00000010, 0x00000000
	ldsr r9, 0x00000011, 0x00000000
	ld23.dw 0x00000028[r3], r8
	ld.w 0x0000001C[r3], r2
	ld.w 0x00000018[r3], r1
	ld23.dw 0x00000000[r3], r6
	ldsr r6, 0x00000000, 0x00000000
	ldsr r7, 0x00000001, 0x00000000
	ld23.dw 0x00000020[r3], r6
	movea 0x00000030, r3, r3
	eiret
	.section comGRAMB.bss, bss
	.align 4
_u4_flag_error_PE2:
	.ds (4)
