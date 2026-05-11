#CC-RH Compiler RH850 Assembler Source
#@	CC-RH Version : V1.03.00 [21 Aug 2015]
#@	Command : src\fi_pwm_inv0_invadj.c -Xobj_path=DefaultBuild -Xcommon=rh850 -Xcpu=g3m -c -g -Ospeed -Oinline_size -Isrc -I..\Common -D__CLK_HSB=80,__CLK_LSB=40,__CLKC_HSB=80,__CLK_CLSB=40 -Xasm_path=DefaultBuild
#@	compiled at Mon May 01 22:15:06 2017

	.file "src\fi_pwm_inv0_invadj.c"

	$reg_mode 32

	.extern _u1_pwm_inv0_status
	.extern _f4_ts_inv0_ctrl
	.extern _f4_wt_inv0_dq_tmp
	.extern _f4_ld_inv0_const
	.extern _f4_lq_inv0_const
	.extern _f4_vd_inv0_ctrl
	.extern _f4_vq_inv0_ctrl
	.extern _f4_vd_inv0_ref
	.extern _f4_vq_inv0_ref
	.public _u1_flag_inv0_adj, 1
	.public _f4_f_inv0_adj, 4
	.public _f4_f_inv0_adj_tmp, 4
	.public _f4_df_inv0_adj, 4
	.public _f4_wr_inv0_adj, 4
	.public _f4_wt_inv0_adj, 4
	.public _f4_sin_inv0_wtadj, 4
	.public _f4_cos_inv0_wtadj, 4
	.public _f4_id_inv0_adj, 4
	.public _f4_iq_inv0_adj, 4
	.public _f4_id_inv0_dc_adj, 4
	.public _f4_id_inv0_ac_adj, 4
	.public _f4_iq_inv0_dc_adj, 4
	.public _f4_iq_inv0_ac_adj, 4
	.public _f4_vd_inv0_adj_ref, 4
	.public _f4_vq_inv0_adj_ref, 4
	.public _f4_wtdq_inv0_adj, 4
	.public _f4_vd_inv0_adj_ad, 4
	.public _f4_vq_inv0_adj_ad, 4
	.public _u1_flag_inv0_vctrlerr_adj, 1
	.public _f4_vctrlerr_inv0_adj, 4
	.public _f4_rs_inv0_adj, 4
	.public _f4_wt_inv0_offset_adj, 4
	.public _f4_vd_inv0_plid, 4
	.public _f4_vq_inv0_pliq, 4
	.public _fi_pwm_inv0_invadj
	.extern _sinf
	.extern _cosf
	.public _fb_pwm_inv0_invadj_init

	.section .text, text
_fi_pwm_inv0_invadj:
	.stack _fi_pwm_inv0_invadj = 4
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_invadj.c", 103
	prepare 0x00000001, 0x00000000
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_invadj.c", 109
	movhi HIGHW1(#_u1_flag_inv0_adj), r0, r2
	ld.bu LOWW(#_u1_flag_inv0_adj)[r2], r2
	cmp 0x00000000, r2
	bz17 .BB.LABEL.1_23
.BB.LABEL.1_1:	; if_then_bb
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_invadj.c", 114
	movhi HIGHW1(#_u1_pwm_inv0_status), r0, r2
	ld.bu LOWW(#_u1_pwm_inv0_status)[r2], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.1_3
.BB.LABEL.1_2:	; if_else_bb73
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_invadj.c", 153
	movhi HIGHW1(#_f4_wt_inv0_adj), r0, r2
	st.w r0, LOWW(#_f4_wt_inv0_adj)[r2]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_invadj.c", 155
	movhi HIGHW1(#_f4_f_inv0_adj_tmp), r0, r2
	st.w r0, LOWW(#_f4_f_inv0_adj_tmp)[r2]
	mov 0x00000000, r6
	br9 .BB.LABEL.1_13
.BB.LABEL.1_3:	; if_then_bb9
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_invadj.c", 117
	movhi HIGHW1(#_f4_f_inv0_adj_tmp), r0, r2
	ld.w LOWW(#_f4_f_inv0_adj_tmp)[r2], r2
	movhi HIGHW1(#_f4_f_inv0_adj), r0, r5
	ld.w LOWW(#_f4_f_inv0_adj)[r5], r5
	cmpf.s 0x00000007, r5, r2
	trfsr 0
	bz9 .BB.LABEL.1_5
.BB.LABEL.1_4:	; if_then_bb15
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_invadj.c", 119
	movhi HIGHW1(#_f4_df_inv0_adj), r0, r6
	ld.w LOWW(#_f4_df_inv0_adj)[r6], r6
	movhi HIGHW1(#_f4_f_inv0_adj_tmp), r0, r7
	addf.s r6, r2, r2
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_invadj.c", 120
	cmpf.s 0x00000004, r5, r2
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_invadj.c", 119
	st.w r2, LOWW(#_f4_f_inv0_adj_tmp)[r7]
	br9 .BB.LABEL.1_7
.BB.LABEL.1_5:	; if_else_bb26
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_invadj.c", 126
	cmpf.s 0x00000004, r5, r2
	trfsr 0
	bnz9 .BB.LABEL.1_9
.BB.LABEL.1_6:	; if_then_bb32
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_invadj.c", 128
	movhi HIGHW1(#_f4_df_inv0_adj), r0, r6
	ld.w LOWW(#_f4_df_inv0_adj)[r6], r6
	movhi HIGHW1(#_f4_f_inv0_adj_tmp), r0, r7
	subf.s r6, r2, r2
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_invadj.c", 129
	cmpf.s 0x00000004, r2, r5
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_invadj.c", 128
	st.w r2, LOWW(#_f4_f_inv0_adj_tmp)[r7]
.BB.LABEL.1_7:	; if_then_bb32
	trfsr 0
	bnz9 .BB.LABEL.1_9
.BB.LABEL.1_8:	; if_break_bb47.PartialDrain
	movhi HIGHW1(#_f4_f_inv0_adj_tmp), r0, r2
	st.w r5, LOWW(#_f4_f_inv0_adj_tmp)[r2]
	mov r5, r2
.BB.LABEL.1_9:	; if_break_bb47
	mov 0x40C90FDB, r5
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_invadj.c", 137
	mulf.s r5, r2, r2
	movhi HIGHW1(#_f4_wr_inv0_adj), r0, r6
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_invadj.c", 140
	movhi HIGHW1(#_f4_wt_inv0_adj), r0, r7
	ld.w LOWW(#_f4_wt_inv0_adj)[r7], r8
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_invadj.c", 137
	st.w r2, LOWW(#_f4_wr_inv0_adj)[r6]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_invadj.c", 140
	movhi HIGHW1(#_f4_ts_inv0_ctrl), r0, r6
	ld.w LOWW(#_f4_ts_inv0_ctrl)[r6], r6
	mulf.s r6, r2, r2
	addf.s r2, r8, r6
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_invadj.c", 141
	cmpf.s 0x00000007, r6, r5
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_invadj.c", 140
	st.w r6, LOWW(#_f4_wt_inv0_adj)[r7]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_invadj.c", 141
	trfsr 0
	bz9 .BB.LABEL.1_11
.BB.LABEL.1_10:	; if_then_bb59
	mov 0xC0C90FDB, r5
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_invadj.c", 143
	addf.s r5, r6, r6
	movhi HIGHW1(#_f4_wt_inv0_adj), r0, r5
	st.w r6, LOWW(#_f4_wt_inv0_adj)[r5]
	br9 .BB.LABEL.1_13
.BB.LABEL.1_11:	; if_else_bb62
	mov 0x00000000, r2
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_invadj.c", 145
	cmpf.s 0x00000004, r6, r2
	trfsr 0
	bnz9 .BB.LABEL.1_13
.BB.LABEL.1_12:	; if_then_bb67
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_invadj.c", 147
	addf.s r5, r6, r6
	movhi HIGHW1(#_f4_wt_inv0_adj), r0, r2
	st.w r6, LOWW(#_f4_wt_inv0_adj)[r2]
.BB.LABEL.1_13:	; if_break_bb74
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_invadj.c", 159
	jarl _sinf, r31
	movhi HIGHW1(#_f4_sin_inv0_wtadj), r0, r2
	st.w r10, LOWW(#_f4_sin_inv0_wtadj)[r2]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_invadj.c", 160
	movhi HIGHW1(#_f4_wt_inv0_adj), r0, r2
	ld.w LOWW(#_f4_wt_inv0_adj)[r2], r6
	jarl _cosf, r31
	movhi HIGHW1(#_f4_cos_inv0_wtadj), r0, r2
	st.w r10, LOWW(#_f4_cos_inv0_wtadj)[r2]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_invadj.c", 166
	movhi HIGHW1(#_u1_flag_inv0_adj), r0, r2
	ld.bu LOWW(#_u1_flag_inv0_adj)[r2], r2
	add 0xFFFFFFFF, r2
	cmp 0x00000007, r2
	bh17 .BB.LABEL.1_23
.BB.LABEL.1_14:	; if_break_bb74
	shl 0x00000002, r2
	jmp #.SWITCH.LABEL.1_24[r2]
.SWITCH.LABEL.1_24:
	jr .BB.LABEL.1_15
	jr .BB.LABEL.1_16
	jr .BB.LABEL.1_17
	jr .BB.LABEL.1_18
	jr .BB.LABEL.1_19
	jr .BB.LABEL.1_20
	jr .BB.LABEL.1_21
	jr .BB.LABEL.1_22
.SWITCH.LABEL.1_24.END:
.BB.LABEL.1_15:	; bb
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_invadj.c", 174
	movhi HIGHW1(#_f4_id_inv0_ac_adj), r0, r2
	ld.w LOWW(#_f4_id_inv0_ac_adj)[r2], r2
	movhi HIGHW1(#_f4_sin_inv0_wtadj), r0, r5
	ld.w LOWW(#_f4_sin_inv0_wtadj)[r5], r5
	movhi HIGHW1(#_f4_id_inv0_dc_adj), r0, r6
	ld.w LOWW(#_f4_id_inv0_dc_adj)[r6], r6
	movhi HIGHW1(#_f4_id_inv0_adj), r0, r7
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_invadj.c", 176
	movhi HIGHW1(#_f4_iq_inv0_adj), r0, r8
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_invadj.c", 174
	mulf.s r5, r2, r2
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_invadj.c", 176
	st.w r0, LOWW(#_f4_iq_inv0_adj)[r8]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_invadj.c", 178
	movhi HIGHW1(#_f4_wtdq_inv0_adj), r0, r5
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_invadj.c", 174
	addf.s r2, r6, r2
	st.w r2, LOWW(#_f4_id_inv0_adj)[r7]
	mov 0x3FC90FDB, r2
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_invadj.c", 178
	st.w r2, LOWW(#_f4_wtdq_inv0_adj)[r5]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_invadj.c", 182
	movhi HIGHW1(#_f4_vd_inv0_ctrl), r0, r2
	ld.w LOWW(#_f4_vd_inv0_ctrl)[r2], r2
	movhi HIGHW1(#_f4_vctrlerr_inv0_adj), r0, r5
	st.w r2, LOWW(#_f4_vctrlerr_inv0_adj)[r5]
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.1_16:	; bb87
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_invadj.c", 194
	movhi HIGHW1(#_f4_id_inv0_ac_adj), r0, r2
	ld.w LOWW(#_f4_id_inv0_ac_adj)[r2], r2
	movhi HIGHW1(#_f4_sin_inv0_wtadj), r0, r5
	ld.w LOWW(#_f4_sin_inv0_wtadj)[r5], r5
	movhi HIGHW1(#_f4_id_inv0_dc_adj), r0, r6
	ld.w LOWW(#_f4_id_inv0_dc_adj)[r6], r6
	movhi HIGHW1(#_f4_id_inv0_adj), r0, r7
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_invadj.c", 196
	movhi HIGHW1(#_f4_iq_inv0_adj), r0, r8
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_invadj.c", 194
	mulf.s r5, r2, r5
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_invadj.c", 196
	st.w r0, LOWW(#_f4_iq_inv0_adj)[r8]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_invadj.c", 198
	movhi HIGHW1(#_f4_wtdq_inv0_adj), r0, r8
	st.w r0, LOWW(#_f4_wtdq_inv0_adj)[r8]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_invadj.c", 202
	movhi HIGHW1(#_f4_vq_inv0_adj_ad), r0, r8
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_invadj.c", 205
	movhi HIGHW1(#_f4_wr_inv0_adj), r0, r9
	ld.w LOWW(#_f4_wr_inv0_adj)[r9], r9
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_invadj.c", 194
	addf.s r5, r6, r5
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_invadj.c", 201
	movhi HIGHW1(#_f4_vd_inv0_adj_ad), r0, r6
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_invadj.c", 194
	st.w r5, LOWW(#_f4_id_inv0_adj)[r7]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_invadj.c", 201
	movhi HIGHW1(#_f4_vd_inv0_ref), r0, r5
	ld.w LOWW(#_f4_vd_inv0_ref)[r5], r5
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_invadj.c", 202
	movhi HIGHW1(#_f4_vq_inv0_ref), r0, r7
	ld.w LOWW(#_f4_vq_inv0_ref)[r7], r7
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_invadj.c", 201
	st.w r5, LOWW(#_f4_vd_inv0_adj_ad)[r6]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_invadj.c", 205
	movhi HIGHW1(#_f4_ld_inv0_const), r0, r5
	ld.w LOWW(#_f4_ld_inv0_const)[r5], r5
	movhi HIGHW1(#_f4_vd_inv0_plid), r0, r6
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_invadj.c", 202
	st.w r7, LOWW(#_f4_vq_inv0_adj_ad)[r8]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_invadj.c", 207
	movhi HIGHW1(#_f4_vq_inv0_pliq), r0, r7
	st.w r0, LOWW(#_f4_vq_inv0_pliq)[r7]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_invadj.c", 205
	mulf.s r5, r9, r5
	mulf.s r2, r5, r2
	mulf.s r10, r2, r2
	st.w r2, LOWW(#_f4_vd_inv0_plid)[r6]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_invadj.c", 207
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.1_17:	; bb102
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_invadj.c", 218
	movhi HIGHW1(#_f4_id_inv0_dc_adj), r0, r2
	ld.w LOWW(#_f4_id_inv0_dc_adj)[r2], r2
	movhi HIGHW1(#_f4_id_inv0_adj), r0, r5
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_invadj.c", 219
	movhi HIGHW1(#_f4_iq_inv0_ac_adj), r0, r6
	ld.w LOWW(#_f4_iq_inv0_ac_adj)[r6], r6
	movhi HIGHW1(#_f4_sin_inv0_wtadj), r0, r7
	ld.w LOWW(#_f4_sin_inv0_wtadj)[r7], r7
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_invadj.c", 218
	st.w r2, LOWW(#_f4_id_inv0_adj)[r5]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_invadj.c", 219
	movhi HIGHW1(#_f4_iq_inv0_adj), r0, r2
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_invadj.c", 222
	movhi HIGHW1(#_f4_wtdq_inv0_adj), r0, r5
	st.w r0, LOWW(#_f4_wtdq_inv0_adj)[r5]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_invadj.c", 219
	mulf.s r7, r6, r7
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_invadj.c", 225
	movhi HIGHW1(#_f4_vd_inv0_ref), r0, r5
	ld.w LOWW(#_f4_vd_inv0_ref)[r5], r5
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_invadj.c", 219
	st.w r7, LOWW(#_f4_iq_inv0_adj)[r2]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_invadj.c", 225
	movhi HIGHW1(#_f4_vd_inv0_adj_ad), r0, r2
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_invadj.c", 226
	movhi HIGHW1(#_f4_vq_inv0_ref), r0, r7
	ld.w LOWW(#_f4_vq_inv0_ref)[r7], r7
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_invadj.c", 225
	st.w r5, LOWW(#_f4_vd_inv0_adj_ad)[r2]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_invadj.c", 226
	movhi HIGHW1(#_f4_vq_inv0_adj_ad), r0, r2
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_invadj.c", 229
	movhi HIGHW1(#_f4_vd_inv0_plid), r0, r5
	st.w r0, LOWW(#_f4_vd_inv0_plid)[r5]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_invadj.c", 231
	movhi HIGHW1(#_f4_wr_inv0_adj), r0, r5
	ld.w LOWW(#_f4_wr_inv0_adj)[r5], r5
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_invadj.c", 226
	st.w r7, LOWW(#_f4_vq_inv0_adj_ad)[r2]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_invadj.c", 231
	movhi HIGHW1(#_f4_lq_inv0_const), r0, r2
	ld.w LOWW(#_f4_lq_inv0_const)[r2], r2
	movhi HIGHW1(#_f4_vq_inv0_pliq), r0, r7
	mulf.s r2, r5, r2
	mulf.s r6, r2, r2
	mulf.s r10, r2, r2
	st.w r2, LOWW(#_f4_vq_inv0_pliq)[r7]
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.1_18:	; bb116
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_invadj.c", 243
	movhi HIGHW1(#_f4_id_inv0_dc_adj), r0, r2
	ld.w LOWW(#_f4_id_inv0_dc_adj)[r2], r2
	movhi HIGHW1(#_f4_id_inv0_adj), r0, r5
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_invadj.c", 244
	movhi HIGHW1(#_f4_iq_inv0_dc_adj), r0, r6
	ld.w LOWW(#_f4_iq_inv0_dc_adj)[r6], r6
	movhi HIGHW1(#_f4_iq_inv0_adj), r0, r7
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_invadj.c", 246
	movhi HIGHW1(#_f4_wt_inv0_adj), r0, r8
	ld.w LOWW(#_f4_wt_inv0_adj)[r8], r8
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_invadj.c", 243
	st.w r2, LOWW(#_f4_id_inv0_adj)[r5]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_invadj.c", 246
	movhi HIGHW1(#_f4_wtdq_inv0_adj), r0, r2
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_invadj.c", 244
	st.w r6, LOWW(#_f4_iq_inv0_adj)[r7]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_invadj.c", 246
	st.w r8, LOWW(#_f4_wtdq_inv0_adj)[r2]
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.1_19:	; bb120
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_invadj.c", 256
	movhi HIGHW1(#_f4_id_inv0_dc_adj), r0, r2
	ld.w LOWW(#_f4_id_inv0_dc_adj)[r2], r2
	movhi HIGHW1(#_f4_id_inv0_adj), r0, r5
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_invadj.c", 258
	movhi HIGHW1(#_f4_iq_inv0_adj), r0, r6
	st.w r0, LOWW(#_f4_iq_inv0_adj)[r6]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_invadj.c", 260
	movhi HIGHW1(#_f4_wtdq_inv0_adj), r0, r6
	st.w r0, LOWW(#_f4_wtdq_inv0_adj)[r6]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_invadj.c", 256
	st.w r2, LOWW(#_f4_id_inv0_adj)[r5]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_invadj.c", 263
	movhi HIGHW1(#_f4_wt_inv0_dq_tmp), r0, r2
	ld.w LOWW(#_f4_wt_inv0_dq_tmp)[r2], r2
	movhi HIGHW1(#_f4_wt_inv0_offset_adj), r0, r5
	st.w r2, LOWW(#_f4_wt_inv0_offset_adj)[r5]
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.1_20:	; bb123
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_invadj.c", 274
	movhi HIGHW1(#_f4_id_inv0_adj), r0, r2
	st.w r0, LOWW(#_f4_id_inv0_adj)[r2]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_invadj.c", 275
	movhi HIGHW1(#_f4_iq_inv0_adj), r0, r2
	st.w r0, LOWW(#_f4_iq_inv0_adj)[r2]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_invadj.c", 277
	movhi HIGHW1(#_f4_wt_inv0_adj), r0, r2
	ld.w LOWW(#_f4_wt_inv0_adj)[r2], r2
	movhi HIGHW1(#_f4_wtdq_inv0_adj), r0, r5
	st.w r2, LOWW(#_f4_wtdq_inv0_adj)[r5]
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.1_21:	; bb125
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_invadj.c", 287
	movhi HIGHW1(#_f4_id_inv0_ac_adj), r0, r2
	ld.w LOWW(#_f4_id_inv0_ac_adj)[r2], r2
	movhi HIGHW1(#_f4_sin_inv0_wtadj), r0, r5
	ld.w LOWW(#_f4_sin_inv0_wtadj)[r5], r5
	movhi HIGHW1(#_f4_id_inv0_dc_adj), r0, r6
	ld.w LOWW(#_f4_id_inv0_dc_adj)[r6], r6
	movhi HIGHW1(#_f4_id_inv0_adj), r0, r7
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_invadj.c", 289
	movhi HIGHW1(#_f4_iq_inv0_adj), r0, r8
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_invadj.c", 287
	mulf.s r5, r2, r2
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_invadj.c", 289
	st.w r0, LOWW(#_f4_iq_inv0_adj)[r8]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_invadj.c", 291
	movhi HIGHW1(#_f4_wtdq_inv0_adj), r0, r5
	st.w r0, LOWW(#_f4_wtdq_inv0_adj)[r5]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_invadj.c", 295
	movhi HIGHW1(#_f4_vq_inv0_adj_ad), r0, r5
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_invadj.c", 287
	addf.s r2, r6, r2
	st.w r2, LOWW(#_f4_id_inv0_adj)[r7]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_invadj.c", 294
	movhi HIGHW1(#_f4_vd_inv0_adj_ad), r0, r2
	st.w r0, LOWW(#_f4_vd_inv0_adj_ad)[r2]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_invadj.c", 295
	movhi HIGHW1(#_f4_vq_inv0_ctrl), r0, r2
	ld.w LOWW(#_f4_vq_inv0_ctrl)[r2], r2
	st.w r2, LOWW(#_f4_vq_inv0_adj_ad)[r5]
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.1_22:	; bb132
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_invadj.c", 306
	movhi HIGHW1(#_f4_id_inv0_adj), r0, r2
	st.w r0, LOWW(#_f4_id_inv0_adj)[r2]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_invadj.c", 308
	movhi HIGHW1(#_f4_iq_inv0_ac_adj), r0, r2
	ld.w LOWW(#_f4_iq_inv0_ac_adj)[r2], r2
	movhi HIGHW1(#_f4_sin_inv0_wtadj), r0, r5
	ld.w LOWW(#_f4_sin_inv0_wtadj)[r5], r5
	movhi HIGHW1(#_f4_iq_inv0_dc_adj), r0, r6
	ld.w LOWW(#_f4_iq_inv0_dc_adj)[r6], r6
	movhi HIGHW1(#_f4_iq_inv0_adj), r0, r7
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_invadj.c", 311
	movhi HIGHW1(#_f4_wtdq_inv0_adj), r0, r8
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_invadj.c", 308
	mulf.s r5, r2, r2
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_invadj.c", 311
	st.w r0, LOWW(#_f4_wtdq_inv0_adj)[r8]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_invadj.c", 314
	movhi HIGHW1(#_f4_vd_inv0_ctrl), r0, r5
	ld.w LOWW(#_f4_vd_inv0_ctrl)[r5], r5
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_invadj.c", 308
	addf.s r2, r6, r2
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_invadj.c", 315
	movhi HIGHW1(#_f4_vq_inv0_adj_ad), r0, r6
	st.w r0, LOWW(#_f4_vq_inv0_adj_ad)[r6]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_invadj.c", 308
	st.w r2, LOWW(#_f4_iq_inv0_adj)[r7]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_invadj.c", 314
	movhi HIGHW1(#_f4_vd_inv0_adj_ad), r0, r2
	st.w r5, LOWW(#_f4_vd_inv0_adj_ad)[r2]
.BB.LABEL.1_23:	; return
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_invadj.c", 327
	dispose 0x00000000, 0x00000001, [r31]
_fb_pwm_inv0_invadj_init:
	.stack _fb_pwm_inv0_invadj_init = 0
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_invadj.c", 344
	movhi HIGHW1(#_u1_flag_inv0_adj), r0, r2
	st.b r0, LOWW(#_u1_flag_inv0_adj)[r2]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_invadj.c", 347
	movhi HIGHW1(#_f4_f_inv0_adj), r0, r2
	st.w r0, LOWW(#_f4_f_inv0_adj)[r2]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_invadj.c", 348
	movhi HIGHW1(#_f4_f_inv0_adj_tmp), r0, r2
	st.w r0, LOWW(#_f4_f_inv0_adj_tmp)[r2]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_invadj.c", 349
	movhi HIGHW1(#_f4_df_inv0_adj), r0, r2
	mov 0x3B888889, r5
	st.w r5, LOWW(#_f4_df_inv0_adj)[r2]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_invadj.c", 351
	movhi HIGHW1(#_f4_wr_inv0_adj), r0, r2
	st.w r0, LOWW(#_f4_wr_inv0_adj)[r2]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_invadj.c", 352
	movhi HIGHW1(#_f4_wt_inv0_adj), r0, r2
	st.w r0, LOWW(#_f4_wt_inv0_adj)[r2]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_invadj.c", 354
	movhi HIGHW1(#_f4_sin_inv0_wtadj), r0, r2
	st.w r0, LOWW(#_f4_sin_inv0_wtadj)[r2]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_invadj.c", 355
	movhi HIGHW1(#_f4_cos_inv0_wtadj), r0, r2
	st.w r0, LOWW(#_f4_cos_inv0_wtadj)[r2]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_invadj.c", 358
	movhi HIGHW1(#_f4_id_inv0_adj), r0, r2
	st.w r0, LOWW(#_f4_id_inv0_adj)[r2]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_invadj.c", 359
	movhi HIGHW1(#_f4_iq_inv0_adj), r0, r2
	st.w r0, LOWW(#_f4_iq_inv0_adj)[r2]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_invadj.c", 360
	movhi HIGHW1(#_f4_id_inv0_dc_adj), r0, r2
	st.w r0, LOWW(#_f4_id_inv0_dc_adj)[r2]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_invadj.c", 361
	movhi HIGHW1(#_f4_id_inv0_ac_adj), r0, r2
	st.w r0, LOWW(#_f4_id_inv0_ac_adj)[r2]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_invadj.c", 362
	movhi HIGHW1(#_f4_iq_inv0_dc_adj), r0, r2
	st.w r0, LOWW(#_f4_iq_inv0_dc_adj)[r2]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_invadj.c", 363
	movhi HIGHW1(#_f4_iq_inv0_ac_adj), r0, r2
	st.w r0, LOWW(#_f4_iq_inv0_ac_adj)[r2]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_invadj.c", 365
	movhi HIGHW1(#_f4_vd_inv0_adj_ref), r0, r2
	st.w r0, LOWW(#_f4_vd_inv0_adj_ref)[r2]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_invadj.c", 366
	movhi HIGHW1(#_f4_vq_inv0_adj_ref), r0, r2
	st.w r0, LOWW(#_f4_vq_inv0_adj_ref)[r2]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_invadj.c", 368
	movhi HIGHW1(#_f4_wtdq_inv0_adj), r0, r2
	st.w r0, LOWW(#_f4_wtdq_inv0_adj)[r2]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_invadj.c", 371
	movhi HIGHW1(#_f4_vd_inv0_adj_ad), r0, r2
	st.w r0, LOWW(#_f4_vd_inv0_adj_ad)[r2]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_invadj.c", 372
	movhi HIGHW1(#_f4_vq_inv0_adj_ad), r0, r2
	st.w r0, LOWW(#_f4_vq_inv0_adj_ad)[r2]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_invadj.c", 374
	movhi HIGHW1(#_u1_flag_inv0_vctrlerr_adj), r0, r2
	st.b r0, LOWW(#_u1_flag_inv0_vctrlerr_adj)[r2]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_invadj.c", 376
	movhi HIGHW1(#_f4_vctrlerr_inv0_adj), r0, r2
	st.w r0, LOWW(#_f4_vctrlerr_inv0_adj)[r2]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_invadj.c", 377
	movhi HIGHW1(#_f4_rs_inv0_adj), r0, r2
	movhi 0x00003F00, r0, r5
	st.w r5, LOWW(#_f4_rs_inv0_adj)[r2]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_invadj.c", 379
	movhi HIGHW1(#_f4_wt_inv0_offset_adj), r0, r2
	st.w r0, LOWW(#_f4_wt_inv0_offset_adj)[r2]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_invadj.c", 385
	movhi HIGHW1(#_f4_vd_inv0_plid), r0, r2
	st.w r0, LOWW(#_f4_vd_inv0_plid)[r2]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_invadj.c", 386
	movhi HIGHW1(#_f4_vq_inv0_pliq), r0, r2
	st.w r0, LOWW(#_f4_vq_inv0_pliq)[r2]
	jmp [r31]
	.section .bss, bss
_u1_flag_inv0_adj:
	.ds (1)
	.align 4
_f4_f_inv0_adj:
	.ds (4)
	.align 4
_f4_f_inv0_adj_tmp:
	.ds (4)
	.align 4
_f4_df_inv0_adj:
	.ds (4)
	.align 4
_f4_wr_inv0_adj:
	.ds (4)
	.align 4
_f4_wt_inv0_adj:
	.ds (4)
	.align 4
_f4_sin_inv0_wtadj:
	.ds (4)
	.align 4
_f4_cos_inv0_wtadj:
	.ds (4)
	.align 4
_f4_id_inv0_adj:
	.ds (4)
	.align 4
_f4_iq_inv0_adj:
	.ds (4)
	.align 4
_f4_id_inv0_dc_adj:
	.ds (4)
	.align 4
_f4_id_inv0_ac_adj:
	.ds (4)
	.align 4
_f4_iq_inv0_dc_adj:
	.ds (4)
	.align 4
_f4_iq_inv0_ac_adj:
	.ds (4)
	.align 4
_f4_vd_inv0_adj_ref:
	.ds (4)
	.align 4
_f4_vq_inv0_adj_ref:
	.ds (4)
	.align 4
_f4_wtdq_inv0_adj:
	.ds (4)
	.align 4
_f4_vd_inv0_adj_ad:
	.ds (4)
	.align 4
_f4_vq_inv0_adj_ad:
	.ds (4)
_u1_flag_inv0_vctrlerr_adj:
	.ds (1)
	.align 4
_f4_vctrlerr_inv0_adj:
	.ds (4)
	.align 4
_f4_rs_inv0_adj:
	.ds (4)
	.align 4
_f4_wt_inv0_offset_adj:
	.ds (4)
	.align 4
_f4_vd_inv0_plid:
	.ds (4)
	.align 4
_f4_vq_inv0_pliq:
	.ds (4)
