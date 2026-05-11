#CC-RH Compiler RH850 Assembler Source
#@	CC-RH Version : V1.03.00 [21 Aug 2015]
#@	Command : src\fi_enc0_int.c -Xobj_path=DefaultBuild -Xcommon=rh850 -Xcpu=g3m -c -g -Ospeed -Oinline_size -Isrc -I..\Common -D__CLK_HSB=80,__CLK_LSB=40,__CLKC_HSB=80,__CLK_CLSB=40 -Xasm_path=DefaultBuild
#@	compiled at Mon May 01 22:14:48 2017

	.file "src\fi_enc0_int.c"

	$reg_mode 32

	.public _u1_cnt_enc_int, 1
	.public _fi_enc0_int
	.extern _fi_enc0_inv0_1pulse
	.public _fb_enc0_int_init
	.extern _fb_enc0_inv0_1pulse_init

	.section .text, text
_fi_enc0_int:
	.stack _fi_enc0_int = 96
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_enc0_int.c", 55
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
	stsr 6, r9
	st23.dw r8, 0x00000010[r3]
	prepare 0x00000001, 0x00000000
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_enc0_int.c", 60
	movhi HIGHW1(#_u1_cnt_enc_int), r0, r2
	ld.b LOWW(#_u1_cnt_enc_int)[r2], r5
	add 0x00000001, r5
	st.b r5, LOWW(#_u1_cnt_enc_int)[r2]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_enc0_int.c", 66
	jarl _fi_enc0_inv0_1pulse, r31
	dispose 0x00000000, 0x00000001
	ld23.dw 0x00000010[r3], r8
	ldsr r9, 6
	ldsr r8, 0x00000007, 0x00000000
	ld23.dw 0x00000008[r3], r8
	ldsr r9, 0x00000011, 0x00000000
	ldsr r8, 0x00000010, 0x00000000
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
	ldsr r7, 0x00000001, 0x00000000
	ldsr r6, 0x00000000, 0x00000000
	ld23.dw 0x00000024[r3], r6
	movea 0x0000005C, r3, r3
	eiret
_fb_enc0_int_init:
	.stack _fb_enc0_int_init = 0
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_enc0_int.c", 88
	jr _fb_enc0_inv0_1pulse_init
	.section .bss, bss
_u1_cnt_enc_int:
	.ds (1)
