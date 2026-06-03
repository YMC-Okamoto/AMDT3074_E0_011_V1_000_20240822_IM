#CC-RH Compiler RH850 Assembler Source
#@	CC-RH Version : V2.06.00  [28 Nov 2023]
#@	Command : src\fpmsm_main.c src\fi_1ms_int.c src\fi_20us_int.c src\fi_enc1_int.c src\fi_pwm_int.c ..\PE1\src\fb_therm_tbl_module.c ..\PE1\src\fi_pwm_vctrlerrtbl.c -Xobj_path=DefaultBuild -Xcpu=g3m -g -g_line -Ospeed -Oinline_size -I..\PE1\src -Isrc -I..\Common -D__CLK_HSB=80,__CLK_LSB=40,__CLKC_HSB=80,__CLK_CLSB=40 -use_recipf -Xasm_path=DefaultBuild -c
#@	compiled at Fri May 15 15:29:10 2026

	.file "src\fi_pwm_int.c"

	$reg_mode 32
	.dbl_size 8

	.public _u4_cnt_pwm_inv1, 4
	.public _fi_pwm_int
	.public _fb_pwm_int_init

	.section .text, text
_fi_pwm_int:
	.stack _fi_pwm_int = 52
	.line "C:/Users/0488813/Documents/GitHub/AMDT3074_E0_011_V1_000_20240822_IM/PE2/src/fi_pwm_int.c", 70
	movea 0xFFFFFFCC, r3, r3
	st23.dw r6, 0x00000024[r3]
	stsr 0x00000000, r6, 0x00000000
	stsr 0x00000001, r7, 0x00000000
	st23.dw r6, 0x00000000[r3]
	st.w r1, 0x00000018[r3]
	st.w r2, 0x0000001C[r3]
	st.w r5, 0x00000020[r3]
	st23.dw r8, 0x0000002C[r3]
	stsr 0x00000010, r8, 0x00000000
	stsr 0x00000011, r9, 0x00000000
	st23.dw r8, 0x00000008[r3]
	stsr 0x00000007, r8, 0x00000000
	stsr 0x00000006, r9, 0x00000000
	st23.dw r8, 0x00000010[r3]
	.line "C:/Users/0488813/Documents/GitHub/AMDT3074_E0_011_V1_000_20240822_IM/PE2/src/fi_pwm_int.c", 76
	clr1 0x00000004, 0xFFFFB16B[r0]
	.line "C:/Users/0488813/Documents/GitHub/AMDT3074_E0_011_V1_000_20240822_IM/PE2/src/fi_pwm_int.c", 82
	ei
	.line "C:/Users/0488813/Documents/GitHub/AMDT3074_E0_011_V1_000_20240822_IM/PE2/src/fi_pwm_int.c", 88
	movhi HIGHW1(#_u4_cnt_pwm_inv1), r0, r2
	ld.w LOWW(#_u4_cnt_pwm_inv1)[r2], r5
	add 0x00000001, r5
	st.w r5, LOWW(#_u4_cnt_pwm_inv1)[r2]
	.line "C:/Users/0488813/Documents/GitHub/AMDT3074_E0_011_V1_000_20240822_IM/PE2/src/fi_pwm_int.c", 100
	di
	ld23.dw 0x00000010[r3], r8
	ldsr r8, 0x00000007, 0x00000000
	ldsr r9, 6
	ld23.dw 0x00000008[r3], r8
	ldsr r8, 0x00000010, 0x00000000
	ldsr r9, 0x00000011, 0x00000000
	ld23.dw 0x0000002C[r3], r8
	ld.w 0x00000020[r3], r5
	ld.w 0x0000001C[r3], r2
	ld.w 0x00000018[r3], r1
	ld23.dw 0x00000000[r3], r6
	ldsr r6, 0x00000000, 0x00000000
	ldsr r7, 0x00000001, 0x00000000
	ld23.dw 0x00000024[r3], r6
	movea 0x00000034, r3, r3
	eiret
_fb_pwm_int_init:
	.stack _fb_pwm_int_init = 0
	.line "C:/Users/0488813/Documents/GitHub/AMDT3074_E0_011_V1_000_20240822_IM/PE2/src/fi_pwm_int.c", 115
	jmp [r31]
	.section .bss, bss
	.align 4
_u4_cnt_pwm_inv1:
	.ds (4)
