#CC-RH Compiler RH850 Assembler Source
#@	CC-RH Version : V1.03.00 [21 Aug 2015]
#@	Command : src\fi_1ms_inv0_wrctrl.c -Xobj_path=DefaultBuild -Xcommon=rh850 -Xcpu=g3m -c -g -Ospeed -Oinline_size -Isrc -I..\Common -D__CLK_HSB=80,__CLK_LSB=40,__CLKC_HSB=80,__CLK_CLSB=40 -Xasm_path=DefaultBuild
#@	compiled at Mon May 01 22:14:37 2017

	.file "src\fi_1ms_inv0_wrctrl.c"

	$reg_mode 32

	.extern _u1_pwm_inv0_status
	.extern _f4_wr_inv0_pll_lpf
	.extern _f4_pf_inv0
	.public _u1_flag_enable_inv0_wrctrl, 1
	.public _f4_speed_inv0_ref, 4
	.public _f4_wr_inv0_ref, 4
	.public _f4_dwr_inv0_ref_up, 4
	.public _f4_kp_inv0_wrctrl, 4
	.public _f4_ki_inv0_wrctrl, 4
	.public _f4_wr_inv0_ctrlerr, 4
	.public _f4_iq_inv0_wrctrlp, 4
	.public _f4_iq_inv0_wrctrli, 4
	.public _f4_iq_inv0_wrctrl, 4
	.public _f4_idq_inv0_max, 4
	.public _fi_1ms_inv0_wrctrl
	.public _fb_1ms_inv0_wrctrl_init

	.section .text, text
_fi_1ms_inv0_wrctrl:
	.stack _fi_1ms_inv0_wrctrl = 0
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_wrctrl.c", 91
	movhi HIGHW1(#_f4_speed_inv0_ref), r0, r2
	ld.w LOWW(#_f4_speed_inv0_ref)[r2], r2
	mov 0x3DD67750, r5
	movhi HIGHW1(#_f4_pf_inv0), r0, r6
	ld.w LOWW(#_f4_pf_inv0)[r6], r6
	mulf.s r5, r2, r2
	movhi HIGHW1(#_u1_flag_enable_inv0_wrctrl), r0, r7
	ld.bu LOWW(#_u1_flag_enable_inv0_wrctrl)[r7], r7
	mulf.s r6, r2, r2
	cmp 0x00000001, r7
	bnz9 .BB.LABEL.1_6
.BB.LABEL.1_1:	; if_then_bb
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_wrctrl.c", 96
	movhi HIGHW1(#_f4_wr_inv0_ref), r0, r5
	ld.w LOWW(#_f4_wr_inv0_ref)[r5], r5
	cmpf.s 0x00000007, r2, r5
	trfsr 0
	bz9 .BB.LABEL.1_3
.BB.LABEL.1_2:	; if_then_bb15
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_wrctrl.c", 98
	movhi HIGHW1(#_f4_dwr_inv0_ref_up), r0, r6
	ld.w LOWW(#_f4_dwr_inv0_ref_up)[r6], r6
	movhi HIGHW1(#_f4_wr_inv0_ref), r0, r8
	addf.s r6, r5, r5
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_wrctrl.c", 99
	cmpf.s 0x00000004, r2, r5
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_wrctrl.c", 98
	st.w r5, LOWW(#_f4_wr_inv0_ref)[r8]
	br9 .BB.LABEL.1_5
.BB.LABEL.1_3:	; if_else_bb26
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_wrctrl.c", 105
	cmpf.s 0x00000004, r2, r5
	trfsr 0
	bnz9 .BB.LABEL.1_7
.BB.LABEL.1_4:	; if_then_bb32
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_wrctrl.c", 107
	movhi HIGHW1(#_f4_dwr_inv0_ref_up), r0, r6
	ld.w LOWW(#_f4_dwr_inv0_ref_up)[r6], r6
	movhi HIGHW1(#_f4_wr_inv0_ref), r0, r8
	subf.s r6, r5, r5
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_wrctrl.c", 108
	cmpf.s 0x00000004, r5, r2
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_wrctrl.c", 107
	st.w r5, LOWW(#_f4_wr_inv0_ref)[r8]
.BB.LABEL.1_5:	; if_then_bb32
	trfsr 0
	bnz9 .BB.LABEL.1_7
.BB.LABEL.1_6:	; if_break_bb53.PartialDrain
	movhi HIGHW1(#_f4_wr_inv0_ref), r0, r5
	st.w r2, LOWW(#_f4_wr_inv0_ref)[r5]
	mov r2, r5
.BB.LABEL.1_7:	; if_break_bb53
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_wrctrl.c", 125
	cmp 0x00000001, r7
	movhi HIGHW1(#_u1_pwm_inv0_status), r0, r6
	ld.bu LOWW(#_u1_pwm_inv0_status)[r6], r6
	setf 0x0000000A, r2
	cmp 0x00000001, r6
	bnz9 .BB.LABEL.1_9
.BB.LABEL.1_8:	; if_break_bb53
	not r2, r2
	andi 0x00000001, r2, r0
	bnz9 .BB.LABEL.1_10
.BB.LABEL.1_9:	; if_else_bb136
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_wrctrl.c", 145
	movhi HIGHW1(#_f4_iq_inv0_wrctrlp), r0, r5
	st.w r0, LOWW(#_f4_iq_inv0_wrctrlp)[r5]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_wrctrl.c", 146
	movhi HIGHW1(#_f4_idq_inv0_max), r0, r5
	ld.w LOWW(#_f4_idq_inv0_max)[r5], r5
	movhi HIGHW1(#_f4_iq_inv0_wrctrli), r0, r2
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_wrctrl.c", 147
	movhi HIGHW1(#_f4_iq_inv0_wrctrl), r0, r6
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_wrctrl.c", 146
	st.w r5, LOWW(#_f4_iq_inv0_wrctrli)[r2]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_wrctrl.c", 147
	st.w r5, LOWW(#_f4_iq_inv0_wrctrl)[r6]
	jmp [r31]
.BB.LABEL.1_10:	; if_then_bb69
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_wrctrl.c", 127
	movhi HIGHW1(#_f4_wr_inv0_pll_lpf), r0, r2
	ld.w LOWW(#_f4_wr_inv0_pll_lpf)[r2], r2
	mov 0x00000000, r6
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_wrctrl.c", 128
	cmpf.s 0x00000004, r2, r6
	trfsr 0
	bnz9 .BB.LABEL.1_12
.BB.LABEL.1_11:	; if_then_bb75
	negf.s r2, r2
.BB.LABEL.1_12:	; if_break_bb79
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_wrctrl.c", 131
	subf.s r2, r5, r2
	movhi HIGHW1(#_f4_wr_inv0_ctrlerr), r0, r5
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_wrctrl.c", 134
	movhi HIGHW1(#_f4_iq_inv0_wrctrlp), r0, r6
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_wrctrl.c", 136
	movhi HIGHW1(#_f4_ki_inv0_wrctrl), r0, r7
	ld.w LOWW(#_f4_ki_inv0_wrctrl)[r7], r7
	movhi HIGHW1(#_f4_iq_inv0_wrctrli), r0, r8
	ld.w LOWW(#_f4_iq_inv0_wrctrli)[r8], r8
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_wrctrl.c", 131
	st.w r2, LOWW(#_f4_wr_inv0_ctrlerr)[r5]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_wrctrl.c", 134
	movhi HIGHW1(#_f4_kp_inv0_wrctrl), r0, r5
	ld.w LOWW(#_f4_kp_inv0_wrctrl)[r5], r5
	mulf.s r2, r5, r5
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_wrctrl.c", 136
	mulf.s r2, r7, r2
	addf.s r2, r8, r2
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_wrctrl.c", 134
	st.w r5, LOWW(#_f4_iq_inv0_wrctrlp)[r6]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_wrctrl.c", 137
	movhi HIGHW1(#_f4_idq_inv0_max), r0, r6
	ld.w LOWW(#_f4_idq_inv0_max)[r6], r6
	cmpf.s 0x00000007, r2, r6
	trfsr 0
	cmov 0x0000000A, r6, r2, r2
	bnz9 .BB.LABEL.1_14
.BB.LABEL.1_13:	; bb97
	movhi 0x00008000, r0, r7
	cmpf.s 0x00000004, r2, r7
	cmovf.s 0, r7, r2, r2
.BB.LABEL.1_14:	; bb109
	movhi HIGHW1(#_f4_iq_inv0_wrctrli), r0, r7
	st.w r2, LOWW(#_f4_iq_inv0_wrctrli)[r7]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_wrctrl.c", 139
	addf.s r2, r5, r2
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_wrctrl.c", 140
	cmpf.s 0x00000007, r2, r6
	trfsr 0
	bnz9 .BB.LABEL.1_16
.BB.LABEL.1_15:	; bb121
	movhi 0x00008000, r0, r6
	cmpf.s 0x00000004, r2, r6
	cmovf.s 0, r6, r2, r6
.BB.LABEL.1_16:	; bb133
	movhi HIGHW1(#_f4_iq_inv0_wrctrl), r0, r2
	st.w r6, LOWW(#_f4_iq_inv0_wrctrl)[r2]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_wrctrl.c", 150
	jmp [r31]
_fb_1ms_inv0_wrctrl_init:
	.stack _fb_1ms_inv0_wrctrl_init = 0
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_wrctrl.c", 166
	movhi HIGHW1(#_u1_flag_enable_inv0_wrctrl), r0, r2
	mov 0x00000001, r5
	st.b r5, LOWW(#_u1_flag_enable_inv0_wrctrl)[r2]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_wrctrl.c", 172
	movhi HIGHW1(#_f4_speed_inv0_ref), r0, r2
	mov 0x455AC000, r5
	st.w r5, LOWW(#_f4_speed_inv0_ref)[r2]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_wrctrl.c", 174
	movhi HIGHW1(#_f4_wr_inv0_ref), r0, r2
	st.w r0, LOWW(#_f4_wr_inv0_ref)[r2]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_wrctrl.c", 175
	movhi HIGHW1(#_f4_dwr_inv0_ref_up), r0, r2
	mov 0x3FA0D97C, r5
	st.w r5, LOWW(#_f4_dwr_inv0_ref_up)[r2]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_wrctrl.c", 181
	movhi HIGHW1(#_f4_kp_inv0_wrctrl), r0, r2
	movhi 0x00003F80, r0, r5
	st.w r5, LOWW(#_f4_kp_inv0_wrctrl)[r2]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_wrctrl.c", 182
	movhi HIGHW1(#_f4_ki_inv0_wrctrl), r0, r2
	mov 0x3BA3D70A, r5
	st.w r5, LOWW(#_f4_ki_inv0_wrctrl)[r2]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_wrctrl.c", 184
	movhi HIGHW1(#_f4_wr_inv0_ctrlerr), r0, r2
	st.w r0, LOWW(#_f4_wr_inv0_ctrlerr)[r2]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_wrctrl.c", 186
	movhi HIGHW1(#_f4_iq_inv0_wrctrlp), r0, r2
	st.w r0, LOWW(#_f4_iq_inv0_wrctrlp)[r2]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_wrctrl.c", 187
	movhi HIGHW1(#_f4_iq_inv0_wrctrli), r0, r2
	st.w r0, LOWW(#_f4_iq_inv0_wrctrli)[r2]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_wrctrl.c", 188
	movhi HIGHW1(#_f4_iq_inv0_wrctrl), r0, r2
	st.w r0, LOWW(#_f4_iq_inv0_wrctrl)[r2]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_wrctrl.c", 190
	movhi HIGHW1(#_f4_idq_inv0_max), r0, r2
	mov 0x415DB22D, r5
	st.w r5, LOWW(#_f4_idq_inv0_max)[r2]
	jmp [r31]
	.section .bss, bss
_u1_flag_enable_inv0_wrctrl:
	.ds (1)
	.align 4
_f4_speed_inv0_ref:
	.ds (4)
	.align 4
_f4_wr_inv0_ref:
	.ds (4)
	.align 4
_f4_dwr_inv0_ref_up:
	.ds (4)
	.align 4
_f4_kp_inv0_wrctrl:
	.ds (4)
	.align 4
_f4_ki_inv0_wrctrl:
	.ds (4)
	.align 4
_f4_wr_inv0_ctrlerr:
	.ds (4)
	.align 4
_f4_iq_inv0_wrctrlp:
	.ds (4)
	.align 4
_f4_iq_inv0_wrctrli:
	.ds (4)
	.align 4
_f4_iq_inv0_wrctrl:
	.ds (4)
	.align 4
_f4_idq_inv0_max:
	.ds (4)
