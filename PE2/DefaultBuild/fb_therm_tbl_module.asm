#CC-RH Compiler RH850 Assembler Source
#@	CC-RH Version : V2.06.00  [28 Nov 2023]
#@	Command : ..\Common\iolib\io_ENCA0.c ..\PE1\src\fb_therm_tbl_module.c ..\PE1\src\fi_pwm_vctrlerrtbl.c -Xobj_path=DefaultBuild -Xcpu=g3m -g -g_line -Ospeed -Oinline_size -I..\PE1\src -Isrc -I..\Common -D__CLK_HSB=80,__CLK_LSB=40,__CLKC_HSB=80,__CLK_CLSB=40 -use_recipf -Xasm_path=DefaultBuild -c
#@	compiled at Wed Jun 03 16:59:19 2026

	.file "..\PE1\src\fb_therm_tbl_module.c"

	$reg_mode 32
	.dbl_size 8

	.public _S2_THERM_MODULE_TBL0, 256
	.public _s2_therm_module_calc_lsb2

	.section .text, text
_s2_therm_module_calc_lsb2:
	.stack _s2_therm_module_calc_lsb2 = 0
	.line "C:/Users/0488813/Documents/GitHub/AMDT3074_E0_011_V1_000_20240822_IM/PE1/src/fb_therm_tbl_module.c", 163
	mov r6, r2
	.line "C:/Users/0488813/Documents/GitHub/AMDT3074_E0_011_V1_000_20240822_IM/PE1/src/fb_therm_tbl_module.c", 169
	shr 0x00000003, r2
	andi 0x0000007F, r2, r2
	movea 0x0000007F, r0, r7
	.line "C:/Users/0488813/Documents/GitHub/AMDT3074_E0_011_V1_000_20240822_IM/PE1/src/fb_therm_tbl_module.c", 174
	addi 0x00000001, r2, r5
	addi 0xFFFFFF81, r5, r0
	cmov 0x00000006, r5, r7, r5
	.line "C:/Users/0488813/Documents/GitHub/AMDT3074_E0_011_V1_000_20240822_IM/PE1/src/fb_therm_tbl_module.c", 172
	add r2, r2
	.line "C:/Users/0488813/Documents/GitHub/AMDT3074_E0_011_V1_000_20240822_IM/PE1/src/fb_therm_tbl_module.c", 174
	add r5, r5
	.line "C:/Users/0488813/Documents/GitHub/AMDT3074_E0_011_V1_000_20240822_IM/PE1/src/fb_therm_tbl_module.c", 172
	mov #_S2_THERM_MODULE_TBL0, r7
	.line "C:/Users/0488813/Documents/GitHub/AMDT3074_E0_011_V1_000_20240822_IM/PE1/src/fb_therm_tbl_module.c", 174
	add r7, r5
	.line "C:/Users/0488813/Documents/GitHub/AMDT3074_E0_011_V1_000_20240822_IM/PE1/src/fb_therm_tbl_module.c", 172
	add r2, r7
	.line "C:/Users/0488813/Documents/GitHub/AMDT3074_E0_011_V1_000_20240822_IM/PE1/src/fb_therm_tbl_module.c", 177
	ld.h 0x00000000[r5], r5
	andi 0x00000003, r6, r2
	ld.h 0x00000000[r7], r10
	subr r10, r5
	mul r2, r5, r0
	shr 0x00000003, r5
	.line "C:/Users/0488813/Documents/GitHub/AMDT3074_E0_011_V1_000_20240822_IM/PE1/src/fb_therm_tbl_module.c", 179
	sub r5, r10
	.line "C:/Users/0488813/Documents/GitHub/AMDT3074_E0_011_V1_000_20240822_IM/PE1/src/fb_therm_tbl_module.c", 180
	sxh r10
	jmp [r31]
	.section .const, const
	.align 2
_S2_THERM_MODULE_TBL0:
	.dhw 0xE30A,0xE30A,0xE30A,0xE30A,0xE30A,0xE30A,0xE30A,0xE30A,0xE30A,0xE30A,0xE30A,0xE30A
	.dhw 0xE30A,0xE30A,0xE30A,0xE30A,0xE30A,0xE30A,0xE30A,0xEA03,0xEF4C,0xF25C,0xF498,0xF666
	.dhw 0xF7EB,0xF93E,0xFA73,0xFB81,0xFC80,0xFD69,0xFE48,0xFF14,0xFFDF,0x0096,0x014A,0x01FE
	.dhw 0x02A0,0x0341,0x03E2,0x047A,0x050C,0x059F,0x0632,0x06BB,0x0743,0x07CB,0x0853,0x08D7
	.dhw 0x0957,0x09D8,0x0A58,0x0AD9,0x0B56,0x0BD2,0x0C4E,0x0CCA,0x0D46,0x0DC1,0x0E3C,0x0EB7
	.dhw 0x0F32,0x0FAD,0x1028,0x10A5,0x1121,0x119E,0x121A,0x1297,0x1318,0x139A,0x141B,0x149D
	.dhw 0x151E,0x15A3,0x162D,0x16B8,0x1742,0x17CC,0x1857,0x18ED,0x1985,0x1A1C,0x1AB4,0x1B4B
	.dhw 0x1BF1,0x1C9B,0x1D44,0x1DEE,0x1E98,0x1F59,0x201C,0x20DF,0x21A2,0x2275,0x2359,0x243E
	.dhw 0x2522,0x261E,0x272F,0x2840,0x2952,0x2A9D,0x2BE9,0x2D34,0x2ECD,0x3066,0x3227,0x3426
	.dhw 0x3642,0x38C8,0x3B92,0x3ECA,0x42CE,0x47B3,0x4E07,0x4FD4,0x4FD4,0x4FD4,0x4FD4,0x4FD4
	.dhw 0x4FD4,0x4FD4,0x4FD4,0x4FD4,0x4FD4,0x4FD4,0x4FD4,0x4FD4
