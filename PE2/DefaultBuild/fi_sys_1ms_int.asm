#CC-RH Compiler RH850 Assembler Source
#@	CC-RH Version : V1.05.00 [07 Dec 2016]
#@	Command : src\fsysctrl_main.c src\fi_sys_1ms_int.c src\fi_sys_5ms_int.c src\fi_sys_10ms_int.c -Xobj_path=DefaultBuild -Xcommon=rh850 -Xcpu=g3m -c -g -g_line -Ospeed -Oinline_size -Isrc -I..\Common -D__CLK_HSB=80,__CLK_LSB=40,__CLKC_HSB=80,__CLK_CLSB=40 -Xasm_path=DefaultBuild
#@	compiled at Thu Apr 13 23:07:41 2017

	.file "src\fi_sys_1ms_int.c"

	$reg_mode 32

	.public _u1_cnt_1ms, 1
	.public _fi_sys_1ms_int
	.public _fb_sys_1ms_int_init

	.section .text, text
_fi_sys_1ms_int:
	.stack _fi_sys_1ms_int = 52
	.line "C:/Users/nobuy_000/Documents/010_Project/AMDT0530_CH1_STD/20170413/PE2/src/fi_sys_1ms_int.c", 53
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
	.line "C:/Users/nobuy_000/Documents/010_Project/AMDT0530_CH1_STD/20170413/PE2/src/fi_sys_1ms_int.c", 65
	ei
	.line "C:/Users/nobuy_000/Documents/010_Project/AMDT0530_CH1_STD/20170413/PE2/src/fi_sys_1ms_int.c", 71
	movhi HIGHW1(#_u1_cnt_1ms), r0, r2
	ld.b LOWW(#_u1_cnt_1ms)[r2], r5
	add 0x00000001, r5
	st.b r5, LOWW(#_u1_cnt_1ms)[r2]
	.line "C:/Users/nobuy_000/Documents/010_Project/AMDT0530_CH1_STD/20170413/PE2/src/fi_sys_1ms_int.c", 77
	di
	ld23.dw 0x00000010[r3], r8
	ldsr r9, 6
	ldsr r8, 0x00000007, 0x00000000
	ld23.dw 0x00000008[r3], r8
	ldsr r9, 0x00000011, 0x00000000
	ldsr r8, 0x00000010, 0x00000000
	ld23.dw 0x0000002C[r3], r8
	ld.w 0x00000020[r3], r5
	ld.w 0x0000001C[r3], r2
	ld.w 0x00000018[r3], r1
	ld23.dw 0x00000000[r3], r6
	ldsr r7, 0x00000001, 0x00000000
	ldsr r6, 0x00000000, 0x00000000
	ld23.dw 0x00000024[r3], r6
	movea 0x00000034, r3, r3
	eiret
_fb_sys_1ms_int_init:
	.stack _fb_sys_1ms_int_init = 0
	.line "C:/Users/nobuy_000/Documents/010_Project/AMDT0530_CH1_STD/20170413/PE2/src/fi_sys_1ms_int.c", 92
	jmp [r31]
	.section .bss, bss
_u1_cnt_1ms:
	.ds (1)
