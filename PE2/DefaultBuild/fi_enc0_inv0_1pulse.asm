#CC-RH Compiler RH850 Assembler Source
#@	CC-RH Version : V1.03.00 [21 Aug 2015]
#@	Command : src\fi_enc0_inv0_1pulse.c -Xobj_path=DefaultBuild -Xcommon=rh850 -Xcpu=g3m -c -g -Ospeed -Oinline_size -Isrc -I..\Common -D__CLK_HSB=80,__CLK_LSB=40,__CLKC_HSB=80,__CLK_CLSB=40 -Xasm_path=DefaultBuild
#@	compiled at Mon May 01 22:14:49 2017

	.file "src\fi_enc0_inv0_1pulse.c"

	$reg_mode 32

	.extern _u1_flag_inv0_modevctrl
	.extern _u1_flag_inv0_modetiming
	.extern _u1_flag_1pulse_inv0_mode
	.extern _u1_flag_1pulse_inv0_gate
	.extern _u1_flag_encint_inv0_clr
	.public _u1_flag_enable_inv0_hw_1pulse, 1
	.public _u1_cnt_1pulse_inv0_hw, 1
	.public _u1_cnt_1pulse_inv0_hw_max, 1
	.public _fi_enc0_inv0_1pulse
	.extern _dpinv0_setuvw_1pulse
	.public _fb_enc0_inv0_1pulse_init

	.section .text, text
_fi_enc0_inv0_1pulse:
	.stack _fi_enc0_inv0_1pulse = 4
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_enc0_inv0_1pulse.c", 60
	prepare 0x00000001, 0x00000000
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_enc0_inv0_1pulse.c", 66
	movhi HIGHW1(#_u1_flag_encint_inv0_clr), r0, r2
	st.b r0, LOWW(#_u1_flag_encint_inv0_clr)[r2]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_enc0_inv0_1pulse.c", 72
	movhi HIGHW1(#_u1_cnt_1pulse_inv0_hw), r0, r2
	ld.bu LOWW(#_u1_cnt_1pulse_inv0_hw)[r2], r2
	movhi HIGHW1(#_u1_cnt_1pulse_inv0_hw_max), r0, r5
	ld.bu LOWW(#_u1_cnt_1pulse_inv0_hw_max)[r5], r5
	cmp r5, r2
	bnc9 .BB.LABEL.1_2
.BB.LABEL.1_1:	; if_then_bb
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_enc0_inv0_1pulse.c", 74
	add 0x00000001, r2
	movhi HIGHW1(#_u1_cnt_1pulse_inv0_hw), r0, r5
	st.b r2, LOWW(#_u1_cnt_1pulse_inv0_hw)[r5]
	br9 .BB.LABEL.1_6
.BB.LABEL.1_2:	; if_else_bb
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_enc0_inv0_1pulse.c", 78
	movhi HIGHW1(#_u1_flag_enable_inv0_hw_1pulse), r0, r2
	ld.bu LOWW(#_u1_flag_enable_inv0_hw_1pulse)[r2], r2
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.1_5
.BB.LABEL.1_3:	; if_then_bb13
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_enc0_inv0_1pulse.c", 80
	movhi HIGHW1(#_u1_flag_1pulse_inv0_mode), r0, r2
	mov 0x00000001, r5
	st.b r5, LOWW(#_u1_flag_1pulse_inv0_mode)[r2]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_enc0_inv0_1pulse.c", 82
	movhi HIGHW1(#_u1_flag_inv0_modevctrl), r0, r2
	ld.bu LOWW(#_u1_flag_inv0_modevctrl)[r2], r2
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.1_6
.BB.LABEL.1_4:	; if_then_bb19
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_enc0_inv0_1pulse.c", 84
	movhi HIGHW1(#_u1_flag_1pulse_inv0_gate), r0, r2
	ld.bu LOWW(#_u1_flag_1pulse_inv0_gate)[r2], r6
	jarl _dpinv0_setuvw_1pulse, r31
	br9 .BB.LABEL.1_6
.BB.LABEL.1_5:	; if_else_bb22
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_enc0_inv0_1pulse.c", 90
	movhi HIGHW1(#_u1_cnt_1pulse_inv0_hw), r0, r2
	st.b r0, LOWW(#_u1_cnt_1pulse_inv0_hw)[r2]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_enc0_inv0_1pulse.c", 91
	movhi HIGHW1(#_u1_flag_1pulse_inv0_mode), r0, r2
	st.b r0, LOWW(#_u1_flag_1pulse_inv0_mode)[r2]
.BB.LABEL.1_6:	; if_break_bb24
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_enc0_inv0_1pulse.c", 99
	movhi HIGHW1(#_u1_flag_inv0_modetiming), r0, r2
	mov 0x00000001, r5
	st.b r5, LOWW(#_u1_flag_inv0_modetiming)[r2]
	dispose 0x00000000, 0x00000001, [r31]
_fb_enc0_inv0_1pulse_init:
	.stack _fb_enc0_inv0_1pulse_init = 0
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_enc0_inv0_1pulse.c", 120
	movhi HIGHW1(#_u1_flag_enable_inv0_hw_1pulse), r0, r2
	mov 0x00000001, r5
	st.b r5, LOWW(#_u1_flag_enable_inv0_hw_1pulse)[r2]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_enc0_inv0_1pulse.c", 122
	movhi HIGHW1(#_u1_cnt_1pulse_inv0_hw), r0, r2
	st.b r0, LOWW(#_u1_cnt_1pulse_inv0_hw)[r2]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_enc0_inv0_1pulse.c", 123
	movhi HIGHW1(#_u1_cnt_1pulse_inv0_hw_max), r0, r2
	mov 0x00000005, r5
	st.b r5, LOWW(#_u1_cnt_1pulse_inv0_hw_max)[r2]
	jmp [r31]
	.section .bss, bss
_u1_flag_enable_inv0_hw_1pulse:
	.ds (1)
_u1_cnt_1pulse_inv0_hw:
	.ds (1)
_u1_cnt_1pulse_inv0_hw_max:
	.ds (1)
