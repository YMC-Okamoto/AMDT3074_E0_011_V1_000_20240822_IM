#CC-RH Compiler RH850 Assembler Source
#@	CC-RH Version : V1.03.00 [21 Aug 2015]
#@	Command : src\fi_pwm_inv0_errctrl.c -Xobj_path=DefaultBuild -Xcommon=rh850 -Xcpu=g3m -c -g -Ospeed -Oinline_size -Isrc -I..\Common -D__CLK_HSB=80,__CLK_LSB=40,__CLKC_HSB=80,__CLK_CLSB=40 -Xasm_path=DefaultBuild
#@	compiled at Mon May 01 22:14:59 2017

	.file "src\fi_pwm_inv0_errctrl.c"

	$reg_mode 32

	.extern _u1_pwm_inv0_status
	.extern _f4_iu_inv0_ad
	.extern _f4_iv_inv0_ad
	.extern _f4_iw_inv0_ad
	.extern _f4_vdc_inv0_ad
	.public _u4_flag_inv0_error, 4
	.public _f4_lev_inv0_oc_iac, 4
	.public _f4_lev_inv0_ov_vdc, 4
	.public _u2_cnt_oc_inv0_pwm_max, 2
	.public _u2_cnt_ov_inv0_pwm_max, 2
	.public _u2_cnt_oc_inv0_iu_pwm, 2
	.public _u2_cnt_oc_inv0_iv_pwm, 2
	.public _u2_cnt_oc_inv0_iw_pwm, 2
	.public _u2_cnt_oc_inv0_vdc_pwm, 2
	.public _fi_pwm_inv0_errctrl
	.extern _dpinv0_extgb_status
	.extern _u2_read_rdc20_status
	.public _fb_pwm_inv0_errctrl_init

	.section .text, text
_fi_pwm_inv0_errctrl:
	.stack _fi_pwm_inv0_errctrl = 4
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_errctrl.c", 69
	prepare 0x00000001, 0x00000000
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_errctrl.c", 75
	movhi HIGHW1(#_f4_iu_inv0_ad), r0, r2
	ld.w LOWW(#_f4_iu_inv0_ad)[r2], r2
	movhi HIGHW1(#_f4_lev_inv0_oc_iac), r0, r5
	ld.w LOWW(#_f4_lev_inv0_oc_iac)[r5], r5
	cmpf.s 0x00000004, r5, r2
	trfsr 0
	bz9 .BB.LABEL.1_2
.BB.LABEL.1_1:	; bb
	negf.s r5, r6
	cmpf.s 0x00000007, r6, r2
	trfsr 0
	bz9 .BB.LABEL.1_4
.BB.LABEL.1_2:	; if_then_bb
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_errctrl.c", 78
	movhi HIGHW1(#_u2_cnt_oc_inv0_iu_pwm), r0, r2
	ld.h LOWW(#_u2_cnt_oc_inv0_iu_pwm)[r2], r6
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_errctrl.c", 79
	movhi HIGHW1(#_u2_cnt_oc_inv0_pwm_max), r0, r7
	ld.hu LOWW(#_u2_cnt_oc_inv0_pwm_max)[r7], r7
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_errctrl.c", 78
	add 0x00000001, r6
	st.h r6, LOWW(#_u2_cnt_oc_inv0_iu_pwm)[r2]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_errctrl.c", 79
	andi 0x0000FFFF, r6, r2
	cmp r7, r2
	bl9 .BB.LABEL.1_5
.BB.LABEL.1_3:	; if_then_bb24
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_errctrl.c", 81
	movhi HIGHW1(#_u4_flag_inv0_error), r0, r2
	set1 0x00000002, LOWW(#_u4_flag_inv0_error)[r2]
.BB.LABEL.1_4:	; if_break_bb28.PartialDrain
	movhi HIGHW1(#_u2_cnt_oc_inv0_iu_pwm), r0, r2
	st.h r0, LOWW(#_u2_cnt_oc_inv0_iu_pwm)[r2]
.BB.LABEL.1_5:	; if_break_bb28
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_errctrl.c", 96
	movhi HIGHW1(#_f4_iv_inv0_ad), r0, r2
	ld.w LOWW(#_f4_iv_inv0_ad)[r2], r2
	cmpf.s 0x00000004, r5, r2
	trfsr 0
	bz9 .BB.LABEL.1_7
.BB.LABEL.1_6:	; bb33
	negf.s r5, r6
	cmpf.s 0x00000007, r6, r2
	trfsr 0
	bz9 .BB.LABEL.1_9
.BB.LABEL.1_7:	; if_then_bb47
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_errctrl.c", 99
	movhi HIGHW1(#_u2_cnt_oc_inv0_iv_pwm), r0, r2
	ld.h LOWW(#_u2_cnt_oc_inv0_iv_pwm)[r2], r6
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_errctrl.c", 100
	movhi HIGHW1(#_u2_cnt_oc_inv0_pwm_max), r0, r7
	ld.hu LOWW(#_u2_cnt_oc_inv0_pwm_max)[r7], r7
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_errctrl.c", 99
	add 0x00000001, r6
	st.h r6, LOWW(#_u2_cnt_oc_inv0_iv_pwm)[r2]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_errctrl.c", 100
	andi 0x0000FFFF, r6, r2
	cmp r7, r2
	bl9 .BB.LABEL.1_10
.BB.LABEL.1_8:	; if_then_bb57
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_errctrl.c", 102
	movhi HIGHW1(#_u4_flag_inv0_error), r0, r2
	set1 0x00000003, LOWW(#_u4_flag_inv0_error)[r2]
.BB.LABEL.1_9:	; if_break_bb63.PartialDrain
	movhi HIGHW1(#_u2_cnt_oc_inv0_iv_pwm), r0, r2
	st.h r0, LOWW(#_u2_cnt_oc_inv0_iv_pwm)[r2]
.BB.LABEL.1_10:	; if_break_bb63
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_errctrl.c", 117
	movhi HIGHW1(#_f4_iw_inv0_ad), r0, r2
	ld.w LOWW(#_f4_iw_inv0_ad)[r2], r2
	cmpf.s 0x00000004, r5, r2
	trfsr 0
	bz9 .BB.LABEL.1_12
.BB.LABEL.1_11:	; bb68
	negf.s r5, r5
	cmpf.s 0x00000007, r5, r2
	trfsr 0
	bz9 .BB.LABEL.1_14
.BB.LABEL.1_12:	; if_then_bb82
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_errctrl.c", 120
	movhi HIGHW1(#_u2_cnt_oc_inv0_iw_pwm), r0, r2
	ld.h LOWW(#_u2_cnt_oc_inv0_iw_pwm)[r2], r5
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_errctrl.c", 121
	movhi HIGHW1(#_u2_cnt_oc_inv0_pwm_max), r0, r6
	ld.hu LOWW(#_u2_cnt_oc_inv0_pwm_max)[r6], r6
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_errctrl.c", 120
	add 0x00000001, r5
	st.h r5, LOWW(#_u2_cnt_oc_inv0_iw_pwm)[r2]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_errctrl.c", 121
	andi 0x0000FFFF, r5, r2
	cmp r6, r2
	bl9 .BB.LABEL.1_15
.BB.LABEL.1_13:	; if_then_bb92
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_errctrl.c", 123
	movhi HIGHW1(#_u4_flag_inv0_error), r0, r2
	set1 0x00000004, LOWW(#_u4_flag_inv0_error)[r2]
.BB.LABEL.1_14:	; if_break_bb98.PartialDrain
	movhi HIGHW1(#_u2_cnt_oc_inv0_iw_pwm), r0, r2
	st.h r0, LOWW(#_u2_cnt_oc_inv0_iw_pwm)[r2]
.BB.LABEL.1_15:	; if_break_bb98
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_errctrl.c", 138
	movhi HIGHW1(#_u1_pwm_inv0_status), r0, r2
	ld.bu LOWW(#_u1_pwm_inv0_status)[r2], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.1_18
.BB.LABEL.1_16:	; bb103
	jarl _dpinv0_extgb_status, r31
	cmp 0x00000000, r10
	bz9 .BB.LABEL.1_18
.BB.LABEL.1_17:	; if_then_bb116
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_errctrl.c", 140
	movhi HIGHW1(#_u4_flag_inv0_error), r0, r2
	set1 0x00000005, LOWW(#_u4_flag_inv0_error)[r2]
.BB.LABEL.1_18:	; if_break_bb120
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_errctrl.c", 148
	movhi HIGHW1(#_f4_lev_inv0_ov_vdc), r0, r2
	ld.w LOWW(#_f4_lev_inv0_ov_vdc)[r2], r2
	movhi HIGHW1(#_f4_vdc_inv0_ad), r0, r5
	ld.w LOWW(#_f4_vdc_inv0_ad)[r5], r5
	cmpf.s 0x00000007, r5, r2
	trfsr 0
	bz9 .BB.LABEL.1_21
.BB.LABEL.1_19:	; if_then_bb126
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_errctrl.c", 150
	movhi HIGHW1(#_u2_cnt_oc_inv0_vdc_pwm), r0, r2
	ld.h LOWW(#_u2_cnt_oc_inv0_vdc_pwm)[r2], r5
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_errctrl.c", 151
	movhi HIGHW1(#_u2_cnt_ov_inv0_pwm_max), r0, r6
	ld.hu LOWW(#_u2_cnt_ov_inv0_pwm_max)[r6], r6
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_errctrl.c", 150
	add 0x00000001, r5
	st.h r5, LOWW(#_u2_cnt_oc_inv0_vdc_pwm)[r2]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_errctrl.c", 151
	andi 0x0000FFFF, r5, r2
	cmp r6, r2
	bl9 .BB.LABEL.1_22
.BB.LABEL.1_20:	; if_then_bb136
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_errctrl.c", 153
	movhi HIGHW1(#_u4_flag_inv0_error), r0, r2
	set1 0x00000000, LOWW(#_u4_flag_inv0_error)[r2]
.BB.LABEL.1_21:	; if_break_bb142.PartialDrain
	movhi HIGHW1(#_u2_cnt_oc_inv0_vdc_pwm), r0, r2
	st.h r0, LOWW(#_u2_cnt_oc_inv0_vdc_pwm)[r2]
.BB.LABEL.1_22:	; if_break_bb142
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_errctrl.c", 168
	jarl _u2_read_rdc20_status, r31
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.1_24
.BB.LABEL.1_23:	; return
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_errctrl.c", 174
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.1_24:	; if_then_bb148
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_errctrl.c", 170
	movhi HIGHW1(#_u4_flag_inv0_error+0x00000001), r0, r2
	set1 0x00000001, LOWW(#_u4_flag_inv0_error+0x00000001)[r2]
	dispose 0x00000000, 0x00000001, [r31]
_fb_pwm_inv0_errctrl_init:
	.stack _fb_pwm_inv0_errctrl_init = 0
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_errctrl.c", 191
	movhi HIGHW1(#_u4_flag_inv0_error), r0, r2
	st.w r0, LOWW(#_u4_flag_inv0_error)[r2]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_errctrl.c", 197
	movhi HIGHW1(#_f4_lev_inv0_oc_iac), r0, r2
	movhi 0x000041F0, r0, r5
	st.w r5, LOWW(#_f4_lev_inv0_oc_iac)[r2]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_errctrl.c", 198
	movhi HIGHW1(#_f4_lev_inv0_ov_vdc), r0, r2
	movhi 0x000043C8, r0, r5
	st.w r5, LOWW(#_f4_lev_inv0_ov_vdc)[r2]
	mov 0x00000001, r2
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_errctrl.c", 201
	movhi HIGHW1(#_u2_cnt_oc_inv0_pwm_max), r0, r5
	st.h r2, LOWW(#_u2_cnt_oc_inv0_pwm_max)[r5]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_errctrl.c", 202
	movhi HIGHW1(#_u2_cnt_ov_inv0_pwm_max), r0, r5
	st.h r2, LOWW(#_u2_cnt_ov_inv0_pwm_max)[r5]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_errctrl.c", 204
	movhi HIGHW1(#_u2_cnt_oc_inv0_iu_pwm), r0, r2
	st.h r0, LOWW(#_u2_cnt_oc_inv0_iu_pwm)[r2]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_errctrl.c", 205
	movhi HIGHW1(#_u2_cnt_oc_inv0_iv_pwm), r0, r2
	st.h r0, LOWW(#_u2_cnt_oc_inv0_iv_pwm)[r2]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_errctrl.c", 206
	movhi HIGHW1(#_u2_cnt_oc_inv0_iw_pwm), r0, r2
	st.h r0, LOWW(#_u2_cnt_oc_inv0_iw_pwm)[r2]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_errctrl.c", 207
	movhi HIGHW1(#_u2_cnt_oc_inv0_vdc_pwm), r0, r2
	st.h r0, LOWW(#_u2_cnt_oc_inv0_vdc_pwm)[r2]
	jmp [r31]
	.section .bss, bss
	.align 4
_u4_flag_inv0_error:
	.ds (4)
	.align 4
_f4_lev_inv0_oc_iac:
	.ds (4)
	.align 4
_f4_lev_inv0_ov_vdc:
	.ds (4)
	.align 2
_u2_cnt_oc_inv0_pwm_max:
	.ds (2)
	.align 2
_u2_cnt_ov_inv0_pwm_max:
	.ds (2)
	.align 2
_u2_cnt_oc_inv0_iu_pwm:
	.ds (2)
	.align 2
_u2_cnt_oc_inv0_iv_pwm:
	.ds (2)
	.align 2
_u2_cnt_oc_inv0_iw_pwm:
	.ds (2)
	.align 2
_u2_cnt_oc_inv0_vdc_pwm:
	.ds (2)
