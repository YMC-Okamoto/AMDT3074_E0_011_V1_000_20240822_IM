#CC-RH Compiler RH850 Assembler Source
#@	CC-RH Version : V1.05.00 [07 Dec 2016]
#@	Command : src\fsysctrl_main.c ..\Common\iolib\io_ENCA1.c -Xobj_path=DefaultBuild -Xcommon=rh850 -Xcpu=g3m -c -g -g_line -Ospeed -Oinline_size -Isrc -I..\Common -D__CLK_HSB=80,__CLK_LSB=40,__CLKC_HSB=80,__CLK_CLSB=40 -Xasm_path=DefaultBuild
#@	compiled at Thu Apr 13 23:53:10 2017

	.file "src\fsysctrl_main.c"

	$reg_mode 32

	.public _main
	.extern _core_peg_init
	.extern _interval10_start
	.extern _interval12_start
	.extern _interval13_start

	.section .text, text
_main:
	.stack _main = 8
	.line "C:/Users/nobuy_000/Documents/010_Project/AMDT0530_CH1_STD/20170413/PE2/src/fsysctrl_main.c", 52
	prepare 0x00000041, 0x00000000
	movhi 0x0000FFFF, r0, r2
.BB.LABEL.1_1:	; bb1
	.line "C:/Users/nobuy_000/Documents/010_Project/AMDT0530_CH1_STD/20170413/PE2/src/fsysctrl_main.c", 59
	tst1 0x00000004, 0xFFFFEA01[r2]
	bz9 .BB.LABEL.1_1
.BB.LABEL.1_2:	; bb7
	.line "C:/Users/nobuy_000/Documents/010_Project/AMDT0530_CH1_STD/20170413/PE2/src/fsysctrl_main.c", 0
	movhi 0x0000FFFF, r0, r20
	mov 0x00000001, r6
	.line "C:/Users/nobuy_000/Documents/010_Project/AMDT0530_CH1_STD/20170413/PE2/src/fsysctrl_main.c", 62
	clr1 0x00000004, 0xFFFFEA01[r20]
	.line "C:/Users/nobuy_000/Documents/010_Project/AMDT0530_CH1_STD/20170413/PE2/src/fsysctrl_main.c", 64
	jarl _core_peg_init, r31
	.line "C:/Users/nobuy_000/Documents/010_Project/AMDT0530_CH1_STD/20170413/PE2/src/fsysctrl_main.c", 68
	set1 0x00000000, 0xFFFFEC80[r20]
	.line "C:/Users/nobuy_000/Documents/010_Project/AMDT0530_CH1_STD/20170413/PE2/src/fsysctrl_main.c", 74
	jarl _interval10_start, r31
	.line "C:/Users/nobuy_000/Documents/010_Project/AMDT0530_CH1_STD/20170413/PE2/src/fsysctrl_main.c", 75
	jarl _interval12_start, r31
	.line "C:/Users/nobuy_000/Documents/010_Project/AMDT0530_CH1_STD/20170413/PE2/src/fsysctrl_main.c", 76
	jarl _interval13_start, r31
	.line "C:/Users/nobuy_000/Documents/010_Project/AMDT0530_CH1_STD/20170413/PE2/src/fsysctrl_main.c", 82
	ei
.BB.LABEL.1_3:	; bb9
	.line "C:/Users/nobuy_000/Documents/010_Project/AMDT0530_CH1_STD/20170413/PE2/src/fsysctrl_main.c", 86
	br9 .BB.LABEL.1_3
