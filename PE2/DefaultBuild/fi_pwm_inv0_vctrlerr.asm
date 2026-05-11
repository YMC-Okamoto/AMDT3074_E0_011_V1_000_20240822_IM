#CC-RH Compiler RH850 Assembler Source
#@	CC-RH Version : V1.03.00 [21 Aug 2015]
#@	Command : src\fi_pwm_inv0_vctrlerr.c -Xobj_path=DefaultBuild -Xcommon=rh850 -Xcpu=g3m -c -g -Ospeed -Oinline_size -Isrc -I..\Common -D__CLK_HSB=80,__CLK_LSB=40,__CLKC_HSB=80,__CLK_CLSB=40 -Xasm_path=DefaultBuild
#@	compiled at Mon May 01 22:15:10 2017

	.file "src\fi_pwm_inv0_vctrlerr.c"

	$reg_mode 32

	.extern _u4_fc_inv0_lsb_0
	.extern _f4_vdc_inv0_ad
	.extern _f4_sin_inv0_wtdq
	.extern _f4_cos_inv0_wtdq
	.extern _f4_id_inv0_ref
	.extern _f4_iq_inv0_ref
	.extern _u1_flag_inv0_adj
	.extern _u1_flag_inv0_vctrlerr_adj
	.public _f4_v_vctrlerr_inv0_max, 4
	.public _f4_i_vctrlerr_inv0_max, 4
	.public _f4_dfc_inv0_vctrl, 4
	.public _f4_k_dfc_inv0_vctrl, 4
	.public _f4_dvdc_inv0_vctrl, 4
	.public _f4_k_dvdc_inv0_vctrl, 4
	.public _f4_vuctrl_inv0_err, 4
	.public _f4_vvctrl_inv0_err, 4
	.public _f4_vwctrl_inv0_err, 4
	.public _fi_pwm_inv0_vctrlerr
	.extern _fi_pwm_vctrlerrtbl
	.public _fb_pwm_inv0_vctrlerr_init

	.section .text, text
_fi_pwm_inv0_vctrlerr:
	.stack _fi_pwm_inv0_vctrlerr = 52
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_vctrlerr.c", 64
	prepare 0x00000FFF, 0x00000004
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_vctrlerr.c", 100
	movhi HIGHW1(#_f4_dfc_inv0_vctrl), r0, r2
	ld.w LOWW(#_f4_dfc_inv0_vctrl)[r2], r2
	movhi HIGHW1(#_u4_fc_inv0_lsb_0), r0, r5
	ld.w LOWW(#_u4_fc_inv0_lsb_0)[r5], r5
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_vctrlerr.c", 88
	movhi HIGHW1(#_f4_iq_inv0_ref), r0, r6
	ld.w LOWW(#_f4_iq_inv0_ref)[r6], r20
	movhi HIGHW1(#_f4_sin_inv0_wtdq), r0, r6
	ld.w LOWW(#_f4_sin_inv0_wtdq)[r6], r21
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_vctrlerr.c", 100
	cvtf.uws r5, r5
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_vctrlerr.c", 88
	movhi HIGHW1(#_f4_id_inv0_ref), r0, r6
	ld.w LOWW(#_f4_id_inv0_ref)[r6], r22
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_vctrlerr.c", 107
	movhi HIGHW1(#_f4_i_vctrlerr_inv0_max), r0, r24
	ld.w LOWW(#_f4_i_vctrlerr_inv0_max)[r24], r8
	movhi HIGHW1(#_f4_v_vctrlerr_inv0_max), r0, r25
	ld.w LOWW(#_f4_v_vctrlerr_inv0_max)[r25], r7
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_vctrlerr.c", 100
	mulf.s r5, r2, r2
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_vctrlerr.c", 88
	movhi HIGHW1(#_f4_cos_inv0_wtdq), r0, r5
	ld.w LOWW(#_f4_cos_inv0_wtdq)[r5], r23
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_vctrlerr.c", 100
	movhi HIGHW1(#_f4_k_dfc_inv0_vctrl), r0, r5
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_vctrlerr.c", 121
	mov r3, r27
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_vctrlerr.c", 107
	mov r27, r9
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_vctrlerr.c", 100
	st.w r2, LOWW(#_f4_k_dfc_inv0_vctrl)[r5]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_vctrlerr.c", 103
	movhi HIGHW1(#_f4_vdc_inv0_ad), r0, r2
	ld.w LOWW(#_f4_vdc_inv0_ad)[r2], r2
	movhi HIGHW1(#_f4_dvdc_inv0_vctrl), r0, r5
	ld.w LOWW(#_f4_dvdc_inv0_vctrl)[r5], r5
	mulf.s r5, r2, r2
	movhi HIGHW1(#_f4_k_dvdc_inv0_vctrl), r0, r5
	st.w r2, LOWW(#_f4_k_dvdc_inv0_vctrl)[r5]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_vctrlerr.c", 88
	mulf.s r22, r23, r2
	mulf.s r20, r21, r5
	subf.s r5, r2, r26
	mov 0x3F5105EA, r2
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_vctrlerr.c", 107
	mulf.s r2, r26, r6
	jarl _fi_pwm_vctrlerrtbl, r31
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_vctrlerr.c", 90
	mulf.s r20, r23, r5
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_vctrlerr.c", 114
	ld.w LOWW(#_f4_i_vctrlerr_inv0_max)[r24], r8
	ld.w LOWW(#_f4_v_vctrlerr_inv0_max)[r25], r7
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_vctrlerr.c", 100
	movhi HIGHW1(#_f4_k_dfc_inv0_vctrl), r0, r2
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_vctrlerr.c", 110
	ld.w LOWW(#_f4_k_dfc_inv0_vctrl)[r2], r28
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_vctrlerr.c", 103
	movhi HIGHW1(#_f4_k_dvdc_inv0_vctrl), r0, r2
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_vctrlerr.c", 108
	ld.w LOWW(#_f4_k_dvdc_inv0_vctrl)[r2], r29
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_vctrlerr.c", 114
	mov r27, r9
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_vctrlerr.c", 108
	ld.w 0x00000000[r3], r30
	mov 0xBED105F3, r2
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_vctrlerr.c", 95
	mulf.s r2, r26, r26
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_vctrlerr.c", 90
	mulf.s r22, r21, r2
	addf.s r5, r2, r2
	mov 0x3F350265, r5
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_vctrlerr.c", 95
	mulf.s r5, r2, r20
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_vctrlerr.c", 114
	addf.s r20, r26, r6
	jarl _fi_pwm_vctrlerrtbl, r31
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_vctrlerr.c", 121
	subf.s r20, r26, r6
	ld.w LOWW(#_f4_i_vctrlerr_inv0_max)[r24], r8
	ld.w LOWW(#_f4_v_vctrlerr_inv0_max)[r25], r7
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_vctrlerr.c", 100
	movhi HIGHW1(#_f4_k_dfc_inv0_vctrl), r0, r2
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_vctrlerr.c", 117
	ld.w LOWW(#_f4_k_dfc_inv0_vctrl)[r2], r21
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_vctrlerr.c", 103
	movhi HIGHW1(#_f4_k_dvdc_inv0_vctrl), r0, r2
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_vctrlerr.c", 115
	ld.w LOWW(#_f4_k_dvdc_inv0_vctrl)[r2], r22
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_vctrlerr.c", 121
	mov r27, r9
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_vctrlerr.c", 115
	ld.w 0x00000000[r3], r23
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_vctrlerr.c", 121
	jarl _fi_pwm_vctrlerrtbl, r31
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_vctrlerr.c", 108
	mulf.s r29, r30, r7
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_vctrlerr.c", 122
	ld.w 0x00000000[r3], r5
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_vctrlerr.c", 115
	mulf.s r22, r23, r8
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_vctrlerr.c", 103
	movhi HIGHW1(#_f4_k_dvdc_inv0_vctrl), r0, r2
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_vctrlerr.c", 122
	ld.w LOWW(#_f4_k_dvdc_inv0_vctrl)[r2], r2
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_vctrlerr.c", 100
	movhi HIGHW1(#_f4_k_dfc_inv0_vctrl), r0, r6
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_vctrlerr.c", 124
	ld.w LOWW(#_f4_k_dfc_inv0_vctrl)[r6], r6
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_vctrlerr.c", 110
	mulf.s r28, r7, r7
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_vctrlerr.c", 117
	mulf.s r21, r8, r8
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_vctrlerr.c", 122
	mulf.s r2, r5, r2
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_vctrlerr.c", 128
	addf.s r8, r7, r9
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_vctrlerr.c", 124
	mulf.s r6, r2, r2
	mov 0x3EAAAAAB, r6
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_vctrlerr.c", 128
	addf.s r2, r9, r5
	mulf.s r6, r5, r5
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_vctrlerr.c", 131
	subf.s r5, r2, r2
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_vctrlerr.c", 130
	subf.s r5, r8, r6
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_vctrlerr.c", 128
	st.w r5, 0x00000000[r3]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_vctrlerr.c", 129
	subf.s r5, r7, r5
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_vctrlerr.c", 135
	movhi HIGHW1(#_u1_flag_inv0_adj), r0, r7
	ld.bu LOWW(#_u1_flag_inv0_adj)[r7], r7
	cmp 0x00000001, r7
	bz9 .BB.LABEL.1_2
.BB.LABEL.1_1:	; entry
	cmp 0x00000006, r7
	bnz9 .BB.LABEL.1_4
.BB.LABEL.1_2:	; if_else_bb
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_vctrlerr.c", 143
	movhi HIGHW1(#_u1_flag_inv0_vctrlerr_adj), r0, r7
	ld.bu LOWW(#_u1_flag_inv0_vctrlerr_adj)[r7], r7
	cmp 0x00000001, r7
	bz9 .BB.LABEL.1_4
.BB.LABEL.1_3:	; if_else_bb111
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_vctrlerr.c", 151
	movhi HIGHW1(#_f4_vuctrl_inv0_err), r0, r2
	st.w r0, LOWW(#_f4_vuctrl_inv0_err)[r2]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_vctrlerr.c", 152
	movhi HIGHW1(#_f4_vvctrl_inv0_err), r0, r2
	st.w r0, LOWW(#_f4_vvctrl_inv0_err)[r2]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_vctrlerr.c", 153
	movhi HIGHW1(#_f4_vwctrl_inv0_err), r0, r2
	st.w r0, LOWW(#_f4_vwctrl_inv0_err)[r2]
	dispose 0x00000004, 0x00000FFF, [r31]
.BB.LABEL.1_4:	; if_then_bb
	movhi HIGHW1(#_f4_vuctrl_inv0_err), r0, r7
	st.w r5, LOWW(#_f4_vuctrl_inv0_err)[r7]
	movhi HIGHW1(#_f4_vvctrl_inv0_err), r0, r5
	st.w r6, LOWW(#_f4_vvctrl_inv0_err)[r5]
	movhi HIGHW1(#_f4_vwctrl_inv0_err), r0, r5
	st.w r2, LOWW(#_f4_vwctrl_inv0_err)[r5]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_vctrlerr.c", 159
	dispose 0x00000004, 0x00000FFF, [r31]
_fb_pwm_inv0_vctrlerr_init:
	.stack _fb_pwm_inv0_vctrlerr_init = 0
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_vctrlerr.c", 176
	movhi HIGHW1(#_f4_v_vctrlerr_inv0_max), r0, r2
	mov 0x40949C78, r5
	st.w r5, LOWW(#_f4_v_vctrlerr_inv0_max)[r2]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_vctrlerr.c", 177
	movhi HIGHW1(#_f4_i_vctrlerr_inv0_max), r0, r2
	movhi 0x000041FC, r0, r5
	st.w r5, LOWW(#_f4_i_vctrlerr_inv0_max)[r2]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_vctrlerr.c", 179
	movhi HIGHW1(#_f4_dfc_inv0_vctrl), r0, r2
	mov 0x392EC33E, r5
	st.w r5, LOWW(#_f4_dfc_inv0_vctrl)[r2]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_vctrlerr.c", 180
	movhi HIGHW1(#_f4_k_dfc_inv0_vctrl), r0, r2
	st.w r0, LOWW(#_f4_k_dfc_inv0_vctrl)[r2]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_vctrlerr.c", 182
	movhi HIGHW1(#_f4_dvdc_inv0_vctrl), r0, r2
	mov 0x3BDA25DE, r5
	st.w r5, LOWW(#_f4_dvdc_inv0_vctrl)[r2]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_vctrlerr.c", 183
	movhi HIGHW1(#_f4_k_dvdc_inv0_vctrl), r0, r2
	st.w r0, LOWW(#_f4_k_dvdc_inv0_vctrl)[r2]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_vctrlerr.c", 185
	movhi HIGHW1(#_f4_vuctrl_inv0_err), r0, r2
	st.w r0, LOWW(#_f4_vuctrl_inv0_err)[r2]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_vctrlerr.c", 186
	movhi HIGHW1(#_f4_vvctrl_inv0_err), r0, r2
	st.w r0, LOWW(#_f4_vvctrl_inv0_err)[r2]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_vctrlerr.c", 187
	movhi HIGHW1(#_f4_vwctrl_inv0_err), r0, r2
	st.w r0, LOWW(#_f4_vwctrl_inv0_err)[r2]
	jmp [r31]
	.section .bss, bss
	.align 4
_f4_v_vctrlerr_inv0_max:
	.ds (4)
	.align 4
_f4_i_vctrlerr_inv0_max:
	.ds (4)
	.align 4
_f4_dfc_inv0_vctrl:
	.ds (4)
	.align 4
_f4_k_dfc_inv0_vctrl:
	.ds (4)
	.align 4
_f4_dvdc_inv0_vctrl:
	.ds (4)
	.align 4
_f4_k_dvdc_inv0_vctrl:
	.ds (4)
	.align 4
_f4_vuctrl_inv0_err:
	.ds (4)
	.align 4
_f4_vvctrl_inv0_err:
	.ds (4)
	.align 4
_f4_vwctrl_inv0_err:
	.ds (4)
