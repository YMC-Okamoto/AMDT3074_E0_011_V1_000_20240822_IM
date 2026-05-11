#CC-RH Compiler RH850 Assembler Source
#@	CC-RH Version : V1.03.00 [21 Aug 2015]
#@	Command : src\fi_pwm_inv0_idqctrl.c -Xobj_path=DefaultBuild -Xcommon=rh850 -Xcpu=g3m -c -g -Ospeed -Oinline_size -Isrc -I..\Common -D__CLK_HSB=80,__CLK_LSB=40,__CLKC_HSB=80,__CLK_CLSB=40 -Xasm_path=DefaultBuild
#@	compiled at Mon May 01 22:15:03 2017

	.file "src\fi_pwm_inv0_idqctrl.c"

	$reg_mode 32

	.extern _u1_pwm_inv0_status
	.extern _f4_fs_inv0_ctrl
	.extern _f4_ts_inv0_ctrl
	.extern _f4_iu_inv0_ctrl
	.extern _f4_iv_inv0_ctrl
	.extern _f4_iw_inv0_ctrl
	.extern _f4_vdc_inv0_ad
	.extern _f4_vdc_inv0_lpf
	.extern _f4_dvdc_inv0_ad
	.extern _f4_sin_inv0_wtdq
	.extern _f4_cos_inv0_wtdq
	.extern _f4_wr_inv0_pll_lpf
	.extern _u1_flag_1pulse_inv0_mode
	.extern _u1_flag_inv0_adj
	.extern _f4_id_inv0_adj
	.extern _f4_iq_inv0_adj
	.extern _f4_vd_inv0_adj_ref
	.extern _f4_vq_inv0_adj_ref
	.extern _f4_rs_inv0_adj
	.extern _f4_vd_inv0_plid
	.extern _f4_vq_inv0_pliq
	.extern _u1_cnt_1pulse_inv0_hw
	.extern _f4_id_inv0_ctrl
	.extern _f4_iq_inv0_ctrl
	.extern _f4_k_inv0_ld_cmp
	.extern _f4_k_inv0_lq_cmp
	.extern _f4_k_pwm_tbl
	.extern _f4_ldisat_inv0_tbl
	.extern _f4_lqisat_inv0_tbl
	.public _f4_pf_inv0, 4
	.public _f4_dpf_inv0, 4
	.public _f4_rs_inv0, 4
	.public _f4_fm_inv0, 4
	.public _f4_ld_inv0_const, 4
	.public _f4_i_ld_inv0_isat, 4
	.public _f4_k1_ld_inv0_isat, 4
	.public _f4_k2_ld_inv0_isat, 4
	.public _f4_lq_inv0_const, 4
	.public _f4_i_lq_inv0_isat, 4
	.public _f4_k1_lq_inv0_isat, 4
	.public _f4_k2_lq_inv0_isat, 4
	.public _f4_ld_inv0_isat, 4
	.public _f4_lq_inv0_isat, 4
	.public _u1_flag_ldq_inv0_mode, 1
	.public _f4_id_inv0_ad, 4
	.public _f4_iq_inv0_ad, 4
	.public _f4_id_inv0_ref, 4
	.public _f4_iq_inv0_ref, 4
	.public _u1_flag_enalbe_inv0_kictrl, 1
	.public _f4_kp_inv0_idq_cmp, 4
	.public _f4_ki_inv0_idq_cmp, 4
	.public _f4_vdq_inv0_ictrl_max, 4
	.public _f4_vdq_inv0_ictrl_max_tmp, 4
	.public _f4_kp_inv0_idq_ctrl_max, 4
	.public _f4_kp_inv0_idq_ctrl_min, 4
	.public _f4_lev_m_kp_inv0_idq_ctrl_max, 4
	.public _f4_lev_m_kp_inv0_idq_ctrl_min, 4
	.public _f4_a_kp_inv0_idq_cmp, 4
	.public _f4_b_kp_inv0_idq_cmp, 4
	.public _f4_lev_m_inv0_kictrl_max, 4
	.public _f4_lev_m_inv0_kictrl_min, 4
	.public _f4_a_k_inv0_kictrl, 4
	.public _f4_b_k_inv0_kictrl, 4
	.public _f4_k_inv0_kictrl_stop, 4
	.public _f4_kp_inv0_idctrl, 4
	.public _f4_ki_inv0_idctrl, 4
	.public _f4_id_inv0_ctrlerr, 4
	.public _f4_vd_inv0_ctrl, 4
	.public _f4_vd_inv0_ctrlp, 4
	.public _f4_vd_inv0_ctrli, 4
	.public _f4_kp_inv0_iqctrl, 4
	.public _f4_ki_inv0_iqctrl, 4
	.public _f4_iq_inv0_ctrlerr, 4
	.public _f4_vq_inv0_ctrl, 4
	.public _f4_vq_inv0_ctrlp, 4
	.public _f4_vq_inv0_ctrli, 4
	.public _f4_vd_inv0_emf, 4
	.public _f4_vq_inv0_emf, 4
	.public _f4_vd_inv0_rs, 4
	.public _f4_vq_inv0_rs, 4
	.public _f4_vq_inv0_emf_cmp, 4
	.public _f4_vq_inv0_rs_cmp, 4
	.public _f4_vd_inv0_ref_tmp, 4
	.public _f4_vq_inv0_ref_tmp, 4
	.public _f4_k_inv0_vdq_max, 4
	.public _f4_vdq_inv0_ref, 4
	.public _f4_vdq_inv0_max, 4
	.public _f4_vd_inv0_ref, 4
	.public _f4_vq_inv0_ref, 4
	.public _f4_m_inv0_ref, 4
	.public _f4_k_inv0_modu, 4
	.public _f4_k_inv0_modu_max, 4
	.public _f4_dk_inv0_modu_kp, 4
	.public _f4_dk_inv0_modu_ki, 4
	.public _f4_dk_inv0_modu_kicmp, 4
	.public _u4_n_k_inv0_modu, 4
	.public _f4_m_inv0_lpf, 4
	.public _f4_wclpf_inv0_m, 4
	.public _u1_flag_inv0_modevctrl, 1
	.public _u2_cnt_inv0_vctrlmode, 2
	.public _u2_cnt_inv0_1pulsemode, 2
	.public _u2_cnt_inv0_svpwmmode, 2
	.public _u1_flag_enable_inv0_1pulse, 1
	.public _f4_lev_m_inv0_1pulse, 4
	.public _f4_lev_m_inv0_svpwm, 4
	.public _u1_flag_inv0_modetiming, 1
	.public _fi_pwm_inv0_idqctrl
	.extern _sqrtf
	.public _fb_pwm_inv0_idqctrl_init

	.section .text, text
_fi_pwm_inv0_idqctrl:
	.stack _fi_pwm_inv0_idqctrl = 20
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 209
	prepare 0x00000079, 0x00000000
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 226
	movhi HIGHW1(#_f4_iv_inv0_ctrl), r0, r2
	ld.w LOWW(#_f4_iv_inv0_ctrl)[r2], r2
	movhi HIGHW1(#_f4_iw_inv0_ctrl), r0, r5
	ld.w LOWW(#_f4_iw_inv0_ctrl)[r5], r5
	movhi 0x00003F00, r0, r6
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 231
	movhi HIGHW1(#_f4_sin_inv0_wtdq), r0, r8
	ld.w LOWW(#_f4_sin_inv0_wtdq)[r8], r8
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 226
	movhi HIGHW1(#_f4_iu_inv0_ctrl), r0, r9
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 228
	subf.s r5, r2, r10
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 226
	ld.w LOWW(#_f4_iu_inv0_ctrl)[r9], r9
	addf.s r5, r2, r2
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 238
	movhi HIGHW1(#_u1_flag_inv0_adj), r0, r11
	ld.bu LOWW(#_u1_flag_inv0_adj)[r11], r11
	mov 0x3FB504F2, r7
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 228
	mulf.s r6, r10, r10
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 226
	mulf.s r6, r2, r2
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 231
	movhi HIGHW1(#_f4_id_inv0_ad), r0, r6
	mov 0x3F5105EA, r5
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 238
	cmp 0x00000000, r11
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 228
	mulf.s r7, r10, r7
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 226
	subf.s r2, r9, r2
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 233
	movhi HIGHW1(#_f4_iq_inv0_ad), r0, r9
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 231
	mulf.s r7, r8, r10
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 226
	mulf.s r5, r2, r2
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 231
	movhi HIGHW1(#_f4_cos_inv0_wtdq), r0, r5
	ld.w LOWW(#_f4_cos_inv0_wtdq)[r5], r5
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 233
	mulf.s r2, r8, r8
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 231
	mulf.s r2, r5, r2
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 233
	mulf.s r7, r5, r5
	mov #_f4_id_inv0_ctrl, r7
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 231
	addf.s r10, r2, r2
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 233
	subf.s r8, r5, r5
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 231
	st.w r2, LOWW(#_f4_id_inv0_ad)[r6]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 233
	st.w r5, LOWW(#_f4_iq_inv0_ad)[r9]
	mov #_f4_iq_inv0_ctrl, r6
	bz9 .BB.LABEL.1_2
.BB.LABEL.1_1:	; if_else_bb
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 246
	mov #_f4_iq_inv0_adj, r6
	mov #_f4_id_inv0_adj, r7
.BB.LABEL.1_2:	; if_break_bb
	ld.w 0x00000000[r7], r7
	movhi HIGHW1(#_f4_id_inv0_ref), r0, r8
	movhi HIGHW1(#_f4_iq_inv0_ref), r0, r9
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 253
	cmp 0x00000000, r11
	st.w r7, LOWW(#_f4_id_inv0_ref)[r8]
	ld.w 0x00000000[r6], r6
	st.w r6, LOWW(#_f4_iq_inv0_ref)[r9]
	bnz17 .BB.LABEL.1_17
.BB.LABEL.1_3:	; if_then_bb55
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 255
	movhi HIGHW1(#_u1_flag_ldq_inv0_mode), r0, r8
	ld.bu LOWW(#_u1_flag_ldq_inv0_mode)[r8], r8
	cmp 0x00000000, r8
	bnz9 .BB.LABEL.1_12
.BB.LABEL.1_4:	; if_then_bb61
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 260
	movhi HIGHW1(#_f4_i_ld_inv0_isat), r0, r8
	ld.w LOWW(#_f4_i_ld_inv0_isat)[r8], r8
	cmpf.s 0x00000007, r8, r7
	trfsr 0
	bz9 .BB.LABEL.1_6
.BB.LABEL.1_5:	; if_then_bb68
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 262
	movhi HIGHW1(#_f4_ld_inv0_const), r0, r8
	ld.w LOWW(#_f4_ld_inv0_const)[r8], r8
	br9 .BB.LABEL.1_7
.BB.LABEL.1_6:	; if_else_bb70
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 266
	movhi HIGHW1(#_f4_k2_ld_inv0_isat), r0, r8
	ld.w LOWW(#_f4_k2_ld_inv0_isat)[r8], r8
	movhi HIGHW1(#_f4_k1_ld_inv0_isat), r0, r9
	ld.w LOWW(#_f4_k1_ld_inv0_isat)[r9], r9
	divf.s r7, r8, r8
	addf.s r9, r8, r8
.BB.LABEL.1_7:	; if_break_bb76
	movhi HIGHW1(#_f4_ld_inv0_isat), r0, r9
	st.w r8, LOWW(#_f4_ld_inv0_isat)[r9]
	mov 0x00000000, r9
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 271
	cmpf.s 0x00000004, r6, r9
	mov r6, r9
	trfsr 0
	bnz9 .BB.LABEL.1_9
.BB.LABEL.1_8:	; if_then_bb82
	negf.s r6, r9
.BB.LABEL.1_9:	; if_break_bb86
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 274
	movhi HIGHW1(#_f4_i_lq_inv0_isat), r0, r10
	ld.w LOWW(#_f4_i_lq_inv0_isat)[r10], r10
	cmpf.s 0x00000007, r10, r9
	trfsr 0
	bz9 .BB.LABEL.1_11
.BB.LABEL.1_10:	; if_then_bb92
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 276
	movhi HIGHW1(#_f4_lq_inv0_const), r0, r9
	ld.w LOWW(#_f4_lq_inv0_const)[r9], r9
	br9 .BB.LABEL.1_18
.BB.LABEL.1_11:	; if_else_bb94
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 280
	movhi HIGHW1(#_f4_k2_lq_inv0_isat), r0, r10
	ld.w LOWW(#_f4_k2_lq_inv0_isat)[r10], r10
	movhi HIGHW1(#_f4_k1_lq_inv0_isat), r0, r12
	ld.w LOWW(#_f4_k1_lq_inv0_isat)[r12], r12
	divf.s r9, r10, r9
	addf.s r12, r9, r9
	br9 .BB.LABEL.1_18
.BB.LABEL.1_12:	; if_else_bb101
	mov 0x00000000, r8
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 289
	cmpf.s 0x00000004, r7, r8
	mov r7, r9
	trfsr 0
	bnz9 .BB.LABEL.1_14
.BB.LABEL.1_13:	; if_then_bb107
	negf.s r7, r9
.BB.LABEL.1_14:	; if_break_bb111
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 298
	cmpf.s 0x00000004, r6, r8
	movhi 0x00003E80, r0, r10
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 292
	mulf.s r10, r9, r9
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 294
	movhi HIGHW1(#_f4_ld_inv0_isat), r0, r12
	mov #_f4_ldisat_inv0_tbl, r10
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 292
	trncf.sw r9, r9
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 294
	shl 0x00000002, r9
	add r9, r10
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 298
	trfsr 0
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 294
	ld.w 0x00000000[r10], r9
	movhi HIGHW1(#_f4_k_inv0_ld_cmp), r0, r10
	ld.w LOWW(#_f4_k_inv0_ld_cmp)[r10], r10
	mulf.s r10, r9, r8
	mov r6, r9
	st.w r8, LOWW(#_f4_ld_inv0_isat)[r12]
	bnz9 .BB.LABEL.1_16
.BB.LABEL.1_15:	; if_then_bb125
	negf.s r6, r9
.BB.LABEL.1_16:	; if_break_bb129
	movhi 0x00003E80, r0, r10
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 301
	mulf.s r10, r9, r9
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 303
	mov #_f4_lqisat_inv0_tbl, r10
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 301
	trncf.sw r9, r9
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 303
	shl 0x00000002, r9
	add r9, r10
	ld.w 0x00000000[r10], r9
	movhi HIGHW1(#_f4_k_inv0_lq_cmp), r0, r10
	ld.w LOWW(#_f4_k_inv0_lq_cmp)[r10], r10
	mulf.s r10, r9, r9
	br9 .BB.LABEL.1_18
.BB.LABEL.1_17:	; if_else_bb139
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 308
	movhi HIGHW1(#_f4_ld_inv0_const), r0, r8
	ld.w LOWW(#_f4_ld_inv0_const)[r8], r8
	movhi HIGHW1(#_f4_ld_inv0_isat), r0, r10
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 309
	movhi HIGHW1(#_f4_lq_inv0_const), r0, r9
	ld.w LOWW(#_f4_lq_inv0_const)[r9], r9
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 308
	st.w r8, LOWW(#_f4_ld_inv0_isat)[r10]
.BB.LABEL.1_18:	; if_break_bb142
	movhi HIGHW1(#_f4_lq_inv0_isat), r0, r10
	st.w r9, LOWW(#_f4_lq_inv0_isat)[r10]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 318
	movhi HIGHW1(#_f4_lev_m_kp_inv0_idq_ctrl_min), r0, r10
	ld.w LOWW(#_f4_lev_m_kp_inv0_idq_ctrl_min)[r10], r10
	movhi HIGHW1(#_f4_lev_m_kp_inv0_idq_ctrl_max), r0, r12
	ld.w LOWW(#_f4_lev_m_kp_inv0_idq_ctrl_max)[r12], r12
	mov 0x00000000, r20
	subf.s r12, r10, r10
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 319
	cmpf.s 0x00000007, r10, r20
	trfsr 0
	bz9 .BB.LABEL.1_20
.BB.LABEL.1_19:	; if_then_bb150
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 321
	movhi HIGHW1(#_f4_kp_inv0_idq_ctrl_min), r0, r13
	ld.w LOWW(#_f4_kp_inv0_idq_ctrl_min)[r13], r13
	movhi HIGHW1(#_f4_kp_inv0_idq_ctrl_max), r0, r14
	ld.w LOWW(#_f4_kp_inv0_idq_ctrl_max)[r14], r14
	movhi HIGHW1(#_f4_a_kp_inv0_idq_cmp), r0, r15
	subf.s r14, r13, r13
	divf.s r10, r13, r10
	st.w r10, LOWW(#_f4_a_kp_inv0_idq_cmp)[r15]
.BB.LABEL.1_20:	; if_break_bb157
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 325
	movhi HIGHW1(#_f4_a_kp_inv0_idq_cmp), r0, r10
	ld.w LOWW(#_f4_a_kp_inv0_idq_cmp)[r10], r10
	movhi HIGHW1(#_f4_kp_inv0_idq_ctrl_max), r0, r13
	ld.w LOWW(#_f4_kp_inv0_idq_ctrl_max)[r13], r13
	movhi HIGHW1(#_f4_b_kp_inv0_idq_cmp), r0, r14
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 331
	movhi HIGHW1(#_f4_m_inv0_lpf), r0, r15
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 325
	mulf.s r12, r10, r16
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 331
	ld.w LOWW(#_f4_m_inv0_lpf)[r15], r15
	cmpf.s 0x00000005, r12, r15
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 325
	subf.s r16, r13, r16
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 331
	trfsr 0
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 325
	st.w r16, LOWW(#_f4_b_kp_inv0_idq_cmp)[r14]
	bnz9 .BB.LABEL.1_23
.BB.LABEL.1_21:	; if_else_bb170
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 337
	mulf.s r15, r10, r10
	addf.s r16, r10, r10
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 338
	cmpf.s 0x00000004, r13, r10
	trfsr 0
	bz9 .BB.LABEL.1_23
.BB.LABEL.1_22:	; bb181
	movhi HIGHW1(#_f4_kp_inv0_idq_ctrl_min), r0, r13
	ld.w LOWW(#_f4_kp_inv0_idq_ctrl_min)[r13], r13
	cmpf.s 0x00000004, r10, r13
	cmovf.s 0, r13, r10, r13
.BB.LABEL.1_23:	; if_break_bb197
	movhi HIGHW1(#_f4_kp_inv0_idq_cmp), r0, r10
	st.w r13, LOWW(#_f4_kp_inv0_idq_cmp)[r10]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 342
	movhi HIGHW1(#_f4_lev_m_inv0_kictrl_max), r0, r10
	ld.w LOWW(#_f4_lev_m_inv0_kictrl_max)[r10], r10
	cmpf.s 0x00000005, r10, r15
	trfsr 0
	bz9 .BB.LABEL.1_25
.BB.LABEL.1_24:	; if_break_bb197.if_break_bb229_crit_edge
	movhi 0x00003F80, r0, r15
	br9 .BB.LABEL.1_27
.BB.LABEL.1_25:	; if_else_bb204
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 348
	movhi HIGHW1(#_f4_a_k_inv0_kictrl), r0, r10
	ld.w LOWW(#_f4_a_k_inv0_kictrl)[r10], r10
	movhi HIGHW1(#_f4_b_k_inv0_kictrl), r0, r12
	ld.w LOWW(#_f4_b_k_inv0_kictrl)[r12], r12
	movhi 0x00003F80, r0, r14
	mulf.s r15, r10, r15
	addf.s r12, r15, r15
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 349
	cmpf.s 0x00000004, r14, r15
	trfsr 0
	bz9 .BB.LABEL.1_24
.BB.LABEL.1_26:	; bb214
	mov 0x00000000, r10
	cmpf.s 0x00000004, r15, r10
	cmovf.s 0, r10, r15, r15
.BB.LABEL.1_27:	; if_break_bb229
	movhi HIGHW1(#_f4_k_inv0_kictrl_stop), r0, r10
	st.w r15, LOWW(#_f4_k_inv0_kictrl_stop)[r10]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 352
	movhi HIGHW1(#_f4_vdq_inv0_ictrl_max), r0, r10
	ld.w LOWW(#_f4_vdq_inv0_ictrl_max)[r10], r10
	movhi HIGHW1(#_f4_vdq_inv0_ictrl_max_tmp), r0, r12
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 355
	movhi HIGHW1(#_f4_fs_inv0_ctrl), r0, r14
	ld.w LOWW(#_f4_fs_inv0_ctrl)[r14], r14
	movhi HIGHW1(#_f4_dk_inv0_modu_kp), r0, r16
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 352
	mulf.s r15, r10, r15
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 355
	ld.w LOWW(#_f4_dk_inv0_modu_kp)[r16], r16
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 356
	movhi HIGHW1(#_f4_dk_inv0_modu_ki), r0, r17
	ld.w LOWW(#_f4_dk_inv0_modu_ki)[r17], r17
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 355
	mulf.s r14, r8, r8
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 356
	movhi HIGHW1(#_f4_ki_inv0_idctrl), r0, r18
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 358
	mulf.s r14, r9, r14
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 352
	st.w r15, LOWW(#_f4_vdq_inv0_ictrl_max_tmp)[r12]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 355
	movhi HIGHW1(#_f4_kp_inv0_idctrl), r0, r12
	mulf.s r13, r8, r8
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 358
	mulf.s r13, r14, r13
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 355
	mulf.s r16, r8, r8
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 358
	mulf.s r16, r13, r13
	movhi HIGHW1(#_f4_kp_inv0_iqctrl), r0, r16
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 355
	st.w r8, LOWW(#_f4_kp_inv0_idctrl)[r12]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 356
	movhi HIGHW1(#_f4_ki_inv0_idq_cmp), r0, r12
	ld.w LOWW(#_f4_ki_inv0_idq_cmp)[r12], r12
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 358
	st.w r13, LOWW(#_f4_kp_inv0_iqctrl)[r16]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 359
	movhi HIGHW1(#_f4_ki_inv0_iqctrl), r0, r16
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 356
	mulf.s r12, r8, r14
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 359
	mulf.s r12, r13, r12
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 356
	mulf.s r17, r14, r14
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 359
	mulf.s r17, r12, r12
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 356
	st.w r14, LOWW(#_f4_ki_inv0_idctrl)[r18]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 359
	st.w r12, LOWW(#_f4_ki_inv0_iqctrl)[r16]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 362
	movhi HIGHW1(#_u1_pwm_inv0_status), r0, r16
	ld.bu LOWW(#_u1_pwm_inv0_status)[r16], r16
	cmp 0x00000001, r16
	bnz17 .BB.LABEL.1_48
.BB.LABEL.1_28:	; if_then_bb262
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 367
	subf.s r2, r7, r2
	movhi HIGHW1(#_f4_id_inv0_ctrlerr), r0, r7
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 373
	cmp 0x00000000, r11
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 367
	st.w r2, LOWW(#_f4_id_inv0_ctrlerr)[r7]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 370
	mulf.s r8, r2, r7
	movhi HIGHW1(#_f4_vd_inv0_ctrlp), r0, r8
	st.w r7, LOWW(#_f4_vd_inv0_ctrlp)[r8]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 373
	bnz9 .BB.LABEL.1_32
.BB.LABEL.1_29:	; if_then_bb274
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 375
	movhi HIGHW1(#_u1_flag_enalbe_inv0_kictrl), r0, r8
	ld.bu LOWW(#_u1_flag_enalbe_inv0_kictrl)[r8], r8
	cmp 0x00000001, r8
	bnz9 .BB.LABEL.1_35
.BB.LABEL.1_30:	; if_then_bb280
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 377
	mulf.s r2, r14, r2
	movhi HIGHW1(#_f4_vd_inv0_ctrli), r0, r14
	ld.w LOWW(#_f4_vd_inv0_ctrli)[r14], r14
	addf.s r2, r14, r2
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 378
	cmpf.s 0x00000007, r2, r15
	trfsr 0
	cmov 0x0000000A, r15, r2, r2
	bnz9 .BB.LABEL.1_34
.BB.LABEL.1_31:	; bb292
	negf.s r15, r14
	cmpf.s 0x00000004, r2, r14
	trfsr 0
	cmov 0x00000002, r14, r2, r2
	br9 .BB.LABEL.1_34
.BB.LABEL.1_32:	; if_else_bb313
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 388
	mulf.s r2, r14, r14
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 387
	movhi HIGHW1(#_f4_vdc_inv0_lpf), r0, r8
	ld.w LOWW(#_f4_vdc_inv0_lpf)[r8], r8
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 388
	movhi HIGHW1(#_f4_vd_inv0_ctrli), r0, r2
	ld.w LOWW(#_f4_vd_inv0_ctrli)[r2], r17
	mov 0x3F3504E6, r16
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 387
	mulf.s r16, r8, r2
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 388
	addf.s r14, r17, r8
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 389
	cmpf.s 0x00000007, r8, r2
	trfsr 0
	bnz9 .BB.LABEL.1_34
.BB.LABEL.1_33:	; bb327
	negf.s r2, r2
	cmpf.s 0x00000004, r8, r2
	trfsr 0
	cmov 0x0000000A, r8, r2, r2
.BB.LABEL.1_34:	; if_break_bb346.PartialDrain
	movhi HIGHW1(#_f4_vd_inv0_ctrli), r0, r8
	st.w r2, LOWW(#_f4_vd_inv0_ctrli)[r8]
.BB.LABEL.1_35:	; if_break_bb346
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 394
	movhi HIGHW1(#_f4_vd_inv0_ctrli), r0, r2
	ld.w LOWW(#_f4_vd_inv0_ctrli)[r2], r2
	addf.s r2, r7, r2
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 395
	cmpf.s 0x00000007, r2, r10
	trfsr 0
	cmov 0x0000000A, r10, r2, r2
	bnz9 .BB.LABEL.1_38
.BB.LABEL.1_36:	; bb356
	negf.s r10, r7
	cmpf.s 0x00000004, r2, r7
	trfsr 0
	bnz9 .BB.LABEL.1_38
.BB.LABEL.1_37:	; bb362
	mov r7, r2
.BB.LABEL.1_38:	; bb372
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 402
	subf.s r5, r6, r5
	movhi HIGHW1(#_f4_vd_inv0_ctrl), r0, r7
	st.w r2, LOWW(#_f4_vd_inv0_ctrl)[r7]
	movhi HIGHW1(#_f4_iq_inv0_ctrlerr), r0, r6
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 405
	movhi HIGHW1(#_f4_vq_inv0_ctrlp), r0, r7
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 408
	cmp 0x00000000, r11
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 402
	st.w r5, LOWW(#_f4_iq_inv0_ctrlerr)[r6]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 405
	mulf.s r13, r5, r6
	st.w r6, LOWW(#_f4_vq_inv0_ctrlp)[r7]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 408
	bnz9 .BB.LABEL.1_41
.BB.LABEL.1_39:	; if_then_bb386
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 410
	movhi HIGHW1(#_u1_flag_enalbe_inv0_kictrl), r0, r7
	ld.bu LOWW(#_u1_flag_enalbe_inv0_kictrl)[r7], r7
	cmp 0x00000001, r7
	bnz9 .BB.LABEL.1_45
.BB.LABEL.1_40:	; if_then_bb392
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 412
	mulf.s r5, r12, r5
	movhi HIGHW1(#_f4_vq_inv0_ctrli), r0, r12
	ld.w LOWW(#_f4_vq_inv0_ctrli)[r12], r12
	addf.s r5, r12, r5
	br9 .BB.LABEL.1_42
.BB.LABEL.1_41:	; if_else_bb425
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 423
	mulf.s r5, r12, r5
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 422
	movhi HIGHW1(#_f4_vdc_inv0_lpf), r0, r15
	ld.w LOWW(#_f4_vdc_inv0_lpf)[r15], r15
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 423
	movhi HIGHW1(#_f4_vq_inv0_ctrli), r0, r8
	ld.w LOWW(#_f4_vq_inv0_ctrli)[r8], r8
	mov 0x3F3504E6, r7
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 422
	mulf.s r7, r15, r15
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 423
	addf.s r5, r8, r5
.BB.LABEL.1_42:	; if_else_bb425
	cmpf.s 0x00000007, r5, r15
	trfsr 0
	bnz9 .BB.LABEL.1_44
.BB.LABEL.1_43:	; bb439
	negf.s r15, r15
	cmpf.s 0x00000004, r5, r15
	trfsr 0
	cmov 0x0000000A, r5, r15, r15
.BB.LABEL.1_44:	; if_break_bb458.PartialDrain
	movhi HIGHW1(#_f4_vq_inv0_ctrli), r0, r5
	st.w r15, LOWW(#_f4_vq_inv0_ctrli)[r5]
.BB.LABEL.1_45:	; if_break_bb458
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 429
	movhi HIGHW1(#_f4_vq_inv0_ctrli), r0, r5
	ld.w LOWW(#_f4_vq_inv0_ctrli)[r5], r5
	addf.s r5, r6, r5
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 430
	cmpf.s 0x00000007, r5, r10
	trfsr 0
	bnz9 .BB.LABEL.1_47
.BB.LABEL.1_46:	; bb468
	negf.s r10, r10
	cmpf.s 0x00000004, r5, r10
	trfsr 0
	cmov 0x0000000A, r5, r10, r10
.BB.LABEL.1_47:	; bb484
	movhi HIGHW1(#_f4_vq_inv0_ctrl), r0, r5
	st.w r10, LOWW(#_f4_vq_inv0_ctrl)[r5]
	br9 .BB.LABEL.1_49
.BB.LABEL.1_48:	; if_else_bb487
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 436
	movhi HIGHW1(#_f4_vd_inv0_ctrl), r0, r2
	st.w r0, LOWW(#_f4_vd_inv0_ctrl)[r2]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 437
	movhi HIGHW1(#_f4_vd_inv0_ctrlp), r0, r2
	st.w r0, LOWW(#_f4_vd_inv0_ctrlp)[r2]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 438
	movhi HIGHW1(#_f4_vd_inv0_ctrli), r0, r2
	st.w r0, LOWW(#_f4_vd_inv0_ctrli)[r2]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 440
	movhi HIGHW1(#_f4_vq_inv0_ctrl), r0, r2
	st.w r0, LOWW(#_f4_vq_inv0_ctrl)[r2]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 441
	movhi HIGHW1(#_f4_vq_inv0_ctrlp), r0, r2
	st.w r0, LOWW(#_f4_vq_inv0_ctrlp)[r2]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 442
	movhi HIGHW1(#_f4_vq_inv0_ctrli), r0, r2
	st.w r0, LOWW(#_f4_vq_inv0_ctrli)[r2]
	mov 0x00000000, r10
	mov r10, r2
.BB.LABEL.1_49:	; if_break_bb488
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 449
	movhi HIGHW1(#_u1_flag_inv0_adj), r0, r5
	ld.bu LOWW(#_u1_flag_inv0_adj)[r5], r5
	cmp 0x00000000, r5
	bnz9 .BB.LABEL.1_55
.BB.LABEL.1_50:	; if_then_bb494
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 452
	movhi HIGHW1(#_f4_wr_inv0_pll_lpf), r0, r5
	ld.w LOWW(#_f4_wr_inv0_pll_lpf)[r5], r5
	movhi HIGHW1(#_f4_iq_inv0_ref), r0, r6
	ld.w LOWW(#_f4_iq_inv0_ref)[r6], r6
	movhi HIGHW1(#_f4_vd_inv0_emf), r0, r7
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 454
	movhi HIGHW1(#_f4_fm_inv0), r0, r8
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 452
	negf.s r5, r11
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 454
	ld.w LOWW(#_f4_fm_inv0)[r8], r8
	movhi HIGHW1(#_f4_vq_inv0_emf), r0, r12
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 456
	movhi HIGHW1(#_f4_rs_inv0), r0, r13
	ld.w LOWW(#_f4_rs_inv0)[r13], r13
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 454
	mulf.s r8, r5, r8
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 452
	mulf.s r11, r9, r9
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 454
	movhi HIGHW1(#_f4_id_inv0_ref), r0, r11
	ld.w LOWW(#_f4_id_inv0_ref)[r11], r11
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 452
	mulf.s r6, r9, r9
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 458
	mulf.s r6, r13, r6
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 464
	movhi HIGHW1(#_f4_iq_inv0_ad), r0, r15
	ld.w LOWW(#_f4_iq_inv0_ad)[r15], r15
	movhi HIGHW1(#_f4_vq_inv0_rs_cmp), r0, r16
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 468
	addf.s r9, r2, r2
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 452
	st.w r9, LOWW(#_f4_vd_inv0_emf)[r7]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 454
	movhi HIGHW1(#_f4_ld_inv0_isat), r0, r7
	ld.w LOWW(#_f4_ld_inv0_isat)[r7], r7
	mulf.s r7, r5, r5
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 456
	movhi HIGHW1(#_f4_vd_inv0_rs), r0, r7
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 454
	mulf.s r11, r5, r14
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 456
	mulf.s r11, r13, r11
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 454
	addf.s r8, r14, r14
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 468
	addf.s r11, r2, r21
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 469
	movhi HIGHW1(#_f4_vdq_inv0_max), r0, r2
	ld.w LOWW(#_f4_vdq_inv0_max)[r2], r22
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 456
	st.w r11, LOWW(#_f4_vd_inv0_rs)[r7]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 458
	movhi HIGHW1(#_f4_vq_inv0_rs), r0, r7
	st.w r6, LOWW(#_f4_vq_inv0_rs)[r7]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 462
	movhi HIGHW1(#_f4_id_inv0_ad), r0, r7
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 469
	cmpf.s 0x00000007, r21, r22
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 462
	ld.w LOWW(#_f4_id_inv0_ad)[r7], r7
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 454
	st.w r14, LOWW(#_f4_vq_inv0_emf)[r12]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 462
	movhi HIGHW1(#_f4_vq_inv0_emf_cmp), r0, r12
	mulf.s r7, r5, r5
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 469
	trfsr 0
	cmov 0x0000000A, r22, r21, r21
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 462
	addf.s r8, r5, r5
	st.w r5, LOWW(#_f4_vq_inv0_emf_cmp)[r12]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 464
	mulf.s r15, r13, r5
	st.w r5, LOWW(#_f4_vq_inv0_rs_cmp)[r16]
	bnz9 .BB.LABEL.1_53
.BB.LABEL.1_51:	; bb539
	negf.s r22, r2
	cmpf.s 0x00000004, r21, r2
	trfsr 0
	bnz9 .BB.LABEL.1_53
.BB.LABEL.1_52:	; bb545
	mov r2, r21
.BB.LABEL.1_53:	; bb555
	movhi HIGHW1(#_f4_vd_inv0_ref_tmp), r0, r2
	st.w r21, LOWW(#_f4_vd_inv0_ref_tmp)[r2]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 471
	addf.s r14, r10, r2
.BB.LABEL.1_54:	; bb555
	addf.s r6, r2, r2
	jr .BB.LABEL.1_76
.BB.LABEL.1_55:	; if_else_bb588
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 478
	movhi HIGHW1(#_f4_vd_inv0_emf), r0, r21
	st.w r0, LOWW(#_f4_vd_inv0_emf)[r21]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 481
	movhi HIGHW1(#_f4_vq_inv0_emf), r0, r21
	st.w r0, LOWW(#_f4_vq_inv0_emf)[r21]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 483
	cmp 0x00000001, r5
	bnz9 .BB.LABEL.1_60
.BB.LABEL.1_56:	; if_then_bb594
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 486
	movhi HIGHW1(#_f4_rs_inv0_adj), r0, r5
	ld.w LOWW(#_f4_rs_inv0_adj)[r5], r5
	movhi HIGHW1(#_f4_id_inv0_ref), r0, r21
	ld.w LOWW(#_f4_id_inv0_ref)[r21], r21
	movhi HIGHW1(#_f4_vd_inv0_rs), r0, r6
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 488
	movhi HIGHW1(#_f4_iq_inv0_ref), r0, r22
	ld.w LOWW(#_f4_iq_inv0_ref)[r22], r7
	movhi HIGHW1(#_f4_vq_inv0_rs), r0, r8
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 486
	mulf.s r21, r5, r21
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 493
	movhi HIGHW1(#_f4_vdq_inv0_max), r0, r22
	ld.w LOWW(#_f4_vdq_inv0_max)[r22], r22
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 488
	mulf.s r7, r5, r5
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 486
	st.w r21, LOWW(#_f4_vd_inv0_rs)[r6]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 492
	addf.s r21, r2, r21
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 488
	st.w r5, LOWW(#_f4_vq_inv0_rs)[r8]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 493
	cmpf.s 0x00000007, r21, r22
	trfsr 0
	cmov 0x0000000A, r22, r21, r21
	bnz9 .BB.LABEL.1_59
.BB.LABEL.1_57:	; bb610
	negf.s r22, r2
	cmpf.s 0x00000004, r21, r2
	trfsr 0
	bnz9 .BB.LABEL.1_59
.BB.LABEL.1_58:	; bb616
	mov r2, r21
.BB.LABEL.1_59:	; bb626
	movhi HIGHW1(#_f4_vd_inv0_ref_tmp), r0, r2
	st.w r21, LOWW(#_f4_vd_inv0_ref_tmp)[r2]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 495
	addf.s r5, r10, r2
	jr .BB.LABEL.1_76
.BB.LABEL.1_60:	; if_else_bb657
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 499
	cmp 0x00000006, r5
	bnz9 .BB.LABEL.1_62
.BB.LABEL.1_61:	; if_then_bb663
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 502
	movhi HIGHW1(#_f4_vd_inv0_rs), r0, r2
	st.w r0, LOWW(#_f4_vd_inv0_rs)[r2]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 503
	movhi HIGHW1(#_f4_vq_inv0_rs), r0, r2
	st.w r0, LOWW(#_f4_vq_inv0_rs)[r2]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 506
	movhi HIGHW1(#_f4_vd_inv0_adj_ref), r0, r2
	ld.w LOWW(#_f4_vd_inv0_adj_ref)[r2], r21
	movhi HIGHW1(#_f4_vd_inv0_ref_tmp), r0, r2
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 507
	movhi HIGHW1(#_f4_vq_inv0_adj_ref), r0, r5
	ld.w LOWW(#_f4_vq_inv0_adj_ref)[r5], r22
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 506
	st.w r21, LOWW(#_f4_vd_inv0_ref_tmp)[r2]
	jr .BB.LABEL.1_78
.BB.LABEL.1_62:	; if_else_bb666
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 509
	cmp 0x00000007, r5
	bnz9 .BB.LABEL.1_67
.BB.LABEL.1_63:	; if_then_bb672
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 512
	movhi HIGHW1(#_f4_vd_inv0_emf), r0, r5
	st.w r0, LOWW(#_f4_vd_inv0_emf)[r5]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 514
	movhi HIGHW1(#_f4_wr_inv0_pll_lpf), r0, r5
	ld.w LOWW(#_f4_wr_inv0_pll_lpf)[r5], r5
	movhi HIGHW1(#_f4_fm_inv0), r0, r21
	ld.w LOWW(#_f4_fm_inv0)[r21], r21
	movhi HIGHW1(#_f4_vq_inv0_emf), r0, r22
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 516
	movhi HIGHW1(#_f4_rs_inv0), r0, r6
	ld.w LOWW(#_f4_rs_inv0)[r6], r6
	movhi HIGHW1(#_f4_id_inv0_ref), r0, r7
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 514
	mulf.s r21, r5, r5
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 516
	ld.w LOWW(#_f4_id_inv0_ref)[r7], r7
	movhi HIGHW1(#_f4_vd_inv0_rs), r0, r21
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 514
	st.w r5, LOWW(#_f4_vq_inv0_emf)[r22]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 518
	movhi HIGHW1(#_f4_vq_inv0_rs), r0, r22
	st.w r0, LOWW(#_f4_vq_inv0_rs)[r22]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 516
	mulf.s r7, r6, r22
	mov 0x00000000, r6
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 522
	addf.s r6, r2, r2
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 516
	st.w r22, LOWW(#_f4_vd_inv0_rs)[r21]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 522
	addf.s r22, r2, r21
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 523
	movhi HIGHW1(#_f4_vdq_inv0_max), r0, r2
	ld.w LOWW(#_f4_vdq_inv0_max)[r2], r22
	cmpf.s 0x00000007, r21, r22
	trfsr 0
	cmov 0x0000000A, r22, r21, r21
	bnz9 .BB.LABEL.1_66
.BB.LABEL.1_64:	; bb690
	negf.s r22, r2
	cmpf.s 0x00000004, r21, r2
	trfsr 0
	bnz9 .BB.LABEL.1_66
.BB.LABEL.1_65:	; bb696
	mov r2, r21
.BB.LABEL.1_66:	; bb706
	movhi HIGHW1(#_f4_vd_inv0_ref_tmp), r0, r2
	st.w r21, LOWW(#_f4_vd_inv0_ref_tmp)[r2]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 525
	addf.s r5, r10, r2
	jr .BB.LABEL.1_54
.BB.LABEL.1_67:	; if_else_bb739
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 529
	cmp 0x00000008, r5
	bnz9 .BB.LABEL.1_72
.BB.LABEL.1_68:	; if_then_bb745
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 532
	movhi HIGHW1(#_f4_vd_inv0_emf), r0, r21
	st.w r0, LOWW(#_f4_vd_inv0_emf)[r21]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 534
	movhi HIGHW1(#_f4_wr_inv0_pll_lpf), r0, r21
	ld.w LOWW(#_f4_wr_inv0_pll_lpf)[r21], r21
	movhi HIGHW1(#_f4_fm_inv0), r0, r22
	ld.w LOWW(#_f4_fm_inv0)[r22], r22
	movhi HIGHW1(#_f4_vq_inv0_emf), r0, r5
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 536
	movhi HIGHW1(#_f4_vd_inv0_rs), r0, r6
	st.w r0, LOWW(#_f4_vd_inv0_rs)[r6]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 538
	movhi HIGHW1(#_f4_rs_inv0), r0, r6
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 534
	mulf.s r22, r21, r7
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 538
	ld.w LOWW(#_f4_rs_inv0)[r6], r6
	movhi HIGHW1(#_f4_iq_inv0_ref), r0, r21
	movhi HIGHW1(#_f4_vq_inv0_rs), r0, r8
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 534
	st.w r7, LOWW(#_f4_vq_inv0_emf)[r5]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 538
	ld.w LOWW(#_f4_iq_inv0_ref)[r21], r5
	mov 0x00000000, r21
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 542
	addf.s r21, r2, r2
	addf.s r21, r2, r21
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 543
	movhi HIGHW1(#_f4_vdq_inv0_max), r0, r2
	ld.w LOWW(#_f4_vdq_inv0_max)[r2], r22
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 538
	mulf.s r5, r6, r2
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 543
	cmpf.s 0x00000007, r21, r22
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 538
	st.w r2, LOWW(#_f4_vq_inv0_rs)[r8]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 543
	trfsr 0
	cmov 0x0000000A, r22, r21, r21
	bnz9 .BB.LABEL.1_71
.BB.LABEL.1_69:	; bb763
	negf.s r22, r5
	cmpf.s 0x00000004, r21, r5
	trfsr 0
	bnz9 .BB.LABEL.1_71
.BB.LABEL.1_70:	; bb769
	mov r5, r21
.BB.LABEL.1_71:	; bb779
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 545
	addf.s r7, r10, r10
	movhi HIGHW1(#_f4_vd_inv0_ref_tmp), r0, r5
	st.w r21, LOWW(#_f4_vd_inv0_ref_tmp)[r5]
	addf.s r2, r10, r2
	br9 .BB.LABEL.1_76
.BB.LABEL.1_72:	; if_else_bb812
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 552
	movhi HIGHW1(#_f4_rs_inv0), r0, r21
	ld.w LOWW(#_f4_rs_inv0)[r21], r21
	movhi HIGHW1(#_f4_id_inv0_ref), r0, r22
	ld.w LOWW(#_f4_id_inv0_ref)[r22], r22
	movhi HIGHW1(#_f4_vd_inv0_rs), r0, r5
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 554
	movhi HIGHW1(#_f4_iq_inv0_ref), r0, r6
	ld.w LOWW(#_f4_iq_inv0_ref)[r6], r6
	movhi HIGHW1(#_f4_vq_inv0_rs), r0, r7
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 552
	mulf.s r22, r21, r22
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 558
	movhi HIGHW1(#_f4_vd_inv0_plid), r0, r8
	ld.w LOWW(#_f4_vd_inv0_plid)[r8], r8
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 552
	st.w r22, LOWW(#_f4_vd_inv0_rs)[r5]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 554
	mulf.s r6, r21, r5
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 558
	addf.s r22, r2, r21
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 559
	movhi HIGHW1(#_f4_vdq_inv0_max), r0, r22
	ld.w LOWW(#_f4_vdq_inv0_max)[r22], r22
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 554
	st.w r5, LOWW(#_f4_vq_inv0_rs)[r7]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 558
	addf.s r8, r21, r21
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 559
	cmpf.s 0x00000007, r21, r22
	trfsr 0
	cmov 0x0000000A, r22, r21, r21
	bnz9 .BB.LABEL.1_75
.BB.LABEL.1_73:	; bb830
	negf.s r22, r2
	cmpf.s 0x00000004, r21, r2
	trfsr 0
	bnz9 .BB.LABEL.1_75
.BB.LABEL.1_74:	; bb836
	mov r2, r21
.BB.LABEL.1_75:	; bb846
	movhi HIGHW1(#_f4_vd_inv0_ref_tmp), r0, r2
	st.w r21, LOWW(#_f4_vd_inv0_ref_tmp)[r2]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 561
	addf.s r5, r10, r2
	movhi HIGHW1(#_f4_vq_inv0_pliq), r0, r5
	ld.w LOWW(#_f4_vq_inv0_pliq)[r5], r5
	addf.s r5, r2, r2
.BB.LABEL.1_76:	; bb846
	cmpf.s 0x00000007, r2, r22
	trfsr 0
	bnz9 .BB.LABEL.1_78
.BB.LABEL.1_77:	; bb860
	negf.s r22, r22
	cmpf.s 0x00000004, r2, r22
	trfsr 0
	cmov 0x0000000A, r2, r22, r22
.BB.LABEL.1_78:	; if_break_bb883
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 579
	mulf.s r21, r21, r23
	movhi HIGHW1(#_f4_vq_inv0_ref_tmp), r0, r2
	st.w r22, LOWW(#_f4_vq_inv0_ref_tmp)[r2]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 581
	mulf.s r22, r22, r2
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 583
	addf.s r2, r23, r6
	jarl _sqrtf, r31
	movhi HIGHW1(#_f4_vdq_inv0_ref), r0, r2
	st.w r10, LOWW(#_f4_vdq_inv0_ref)[r2]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 587
	movhi HIGHW1(#_f4_vdc_inv0_ad), r0, r2
	ld.w LOWW(#_f4_vdc_inv0_ad)[r2], r2
	mov 0x3F3504E6, r5
	movhi HIGHW1(#_f4_k_inv0_vdq_max), r0, r6
	ld.w LOWW(#_f4_k_inv0_vdq_max)[r6], r6
	mulf.s r5, r2, r2
	movhi HIGHW1(#_f4_vdq_inv0_max), r0, r7
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 590
	movhi HIGHW1(#_f4_vd_inv0_ref), r0, r8
	st.w r21, LOWW(#_f4_vd_inv0_ref)[r8]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 587
	mulf.s r6, r2, r2
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 592
	cmpf.s 0x00000007, r10, r2
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 587
	st.w r2, LOWW(#_f4_vdq_inv0_max)[r7]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 592
	trfsr 0
	bz9 .BB.LABEL.1_83
.BB.LABEL.1_79:	; if_then_bb906
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 597
	mulf.s r2, r2, r2
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 599
	subf.s r23, r2, r2
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 600
	cmpf.s 0x00000004, r2, r20
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 603
	cmovf.s 0, r20, r2, r6
	jarl _sqrtf, r31
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 604
	cmpf.s 0x00000007, r22, r20
	trfsr 0
	bnz9 .BB.LABEL.1_81
.BB.LABEL.1_80:	; if_else_bb931
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 610
	negf.s r10, r10
.BB.LABEL.1_81:	; if_break_bb934
	movhi HIGHW1(#_f4_vq_inv0_ref), r0, r22
	st.w r10, LOWW(#_f4_vq_inv0_ref)[r22]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 613
	movhi HIGHW1(#_f4_vdq_inv0_max), r0, r22
	ld.w LOWW(#_f4_vdq_inv0_max)[r22], r22
	movhi HIGHW1(#_f4_vdq_inv0_ref), r0, r2
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 615
	movhi HIGHW1(#_u1_flag_enalbe_inv0_kictrl), r0, r5
	ld.bu LOWW(#_u1_flag_enalbe_inv0_kictrl)[r5], r5
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 613
	st.w r22, LOWW(#_f4_vdq_inv0_ref)[r2]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 615
	cmp 0x00000001, r5
	bnz9 .BB.LABEL.1_84
.BB.LABEL.1_82:	; if_then_bb941
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 617
	movhi HIGHW1(#_f4_vq_inv0_rs_cmp), r0, r2
	ld.w LOWW(#_f4_vq_inv0_rs_cmp)[r2], r2
	movhi HIGHW1(#_f4_vq_inv0_emf_cmp), r0, r5
	ld.w LOWW(#_f4_vq_inv0_emf_cmp)[r5], r5
	movhi HIGHW1(#_f4_vq_inv0_ctrlp), r0, r6
	ld.w LOWW(#_f4_vq_inv0_ctrlp)[r6], r6
	movhi HIGHW1(#_f4_vq_inv0_ctrli), r0, r7
	addf.s r5, r2, r2
	subf.s r2, r10, r2
	subf.s r6, r2, r2
	st.w r2, LOWW(#_f4_vq_inv0_ctrli)[r7]
	br9 .BB.LABEL.1_84
.BB.LABEL.1_83:	; if_else_bb951
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 624
	movhi HIGHW1(#_f4_vq_inv0_ref), r0, r2
	st.w r22, LOWW(#_f4_vq_inv0_ref)[r2]
	mov r10, r22
.BB.LABEL.1_84:	; if_break_bb953
	mov 0x3FB504F3, r2
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 633
	mulf.s r2, r22, r2
	movhi HIGHW1(#_f4_dvdc_inv0_ad), r0, r5
	ld.w LOWW(#_f4_dvdc_inv0_ad)[r5], r5
	movhi HIGHW1(#_f4_m_inv0_ref), r0, r6
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 635
	movhi HIGHW1(#_f4_m_inv0_lpf), r0, r7
	ld.w LOWW(#_f4_m_inv0_lpf)[r7], r8
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 636
	movhi HIGHW1(#_f4_wclpf_inv0_m), r0, r9
	ld.w LOWW(#_f4_wclpf_inv0_m)[r9], r9
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 633
	mulf.s r5, r2, r2
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 636
	movhi HIGHW1(#_f4_ts_inv0_ctrl), r0, r5
	ld.w LOWW(#_f4_ts_inv0_ctrl)[r5], r5
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 633
	st.w r2, LOWW(#_f4_m_inv0_ref)[r6]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 635
	subf.s r8, r2, r2
	movhi 0x00003F80, r0, r6
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 636
	mulf.s r2, r9, r2
	mulf.s r5, r2, r2
	addf.s r2, r8, r2
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 640
	cmpf.s 0x00000004, r6, r2
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 636
	st.w r2, LOWW(#_f4_m_inv0_lpf)[r7]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 640
	trfsr 0
	bz9 .BB.LABEL.1_86
.BB.LABEL.1_85:	; if_break_bb953.if_break_bb1025.PartialDrain_crit_edge
	movhi 0x00003F80, r0, r20
	br9 .BB.LABEL.1_89
.BB.LABEL.1_86:	; if_then_bb972
	movhi 0x0000BF80, r0, r5
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 647
	addf.s r5, r2, r5
	mov 0x00000000, r8
	movhi 0x00004110, r0, r9
	cvtf.sd r5, r6
	mulf.d r8, r6, r6
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 656
	mov #_f4_k_pwm_tbl, r8
	movea 0x000001FF, r0, r9
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 647
	trncf.duw r6, r5
	movea 0x00007FFF, r0, r6
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 649
	cmp r6, r5
	cmov 0x0000000B, r6, r5, r5
	movhi HIGHW1(#_u4_n_k_inv0_modu), r0, r6
	st.w r5, LOWW(#_u4_n_k_inv0_modu)[r6]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 652
	mov r5, r6
	shr 0x00000006, r6
	andi 0x000001FF, r6, r6
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 656
	mov r6, r7
	shl 0x00000002, r7
	add r8, r7
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 658
	add 0x00000001, r6
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 656
	ld.w 0x00000000[r7], r8
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 659
	cmp r9, r6
	bnc9 .BB.LABEL.1_88
.BB.LABEL.1_87:	; if_then_bb999
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 661
	ld.w 0x00000004[r7], r20
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 654
	andi 0x0000003F, r5, r5
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 663
	cvtf.uws r5, r5
	movhi 0x00003C80, r0, r6
	subf.s r20, r8, r20
	mulf.s r5, r20, r20
	mulf.s r6, r20, r20
.BB.LABEL.1_88:	; if_break_bb1011
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 671
	subf.s r20, r8, r5
	movhi HIGHW1(#_f4_k_inv0_modu), r0, r20
	st.w r5, LOWW(#_f4_k_inv0_modu)[r20]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 672
	movhi HIGHW1(#_f4_k_inv0_modu_max), r0, r20
	ld.w LOWW(#_f4_k_inv0_modu_max)[r20], r20
	cmpf.s 0x00000004, r20, r5
	trfsr 0
	bnz9 .BB.LABEL.1_90
.BB.LABEL.1_89:	; if_break_bb1025.PartialDrain
	movhi HIGHW1(#_f4_k_inv0_modu), r0, r5
	st.w r20, LOWW(#_f4_k_inv0_modu)[r5]
	mov r20, r5
.BB.LABEL.1_90:	; if_break_bb1025
	movhi 0x00003F80, r0, r6
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 683
	cmpf.s 0x00000007, r5, r6
	trfsr 0
	bz9 .BB.LABEL.1_92
.BB.LABEL.1_91:	; if_then_bb1030
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 686
	recipf.s r5, r5
	movhi HIGHW1(#_f4_dk_inv0_modu_kp), r0, r6
	st.w r5, LOWW(#_f4_dk_inv0_modu_kp)[r6]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 687
	movhi HIGHW1(#_f4_dk_inv0_modu_kicmp), r0, r6
	ld.w LOWW(#_f4_dk_inv0_modu_kicmp)[r6], r6
	mulf.s r6, r5, r5
	br9 .BB.LABEL.1_93
.BB.LABEL.1_92:	; if_else_bb1036
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 691
	movhi HIGHW1(#_f4_dk_inv0_modu_kp), r0, r6
	movhi 0x00003F80, r0, r5
	st.w r5, LOWW(#_f4_dk_inv0_modu_kp)[r6]
.BB.LABEL.1_93:	; if_break_bb1037
	movhi HIGHW1(#_f4_dk_inv0_modu_ki), r0, r6
	st.w r5, LOWW(#_f4_dk_inv0_modu_ki)[r6]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 699
	movhi HIGHW1(#_u1_flag_inv0_modevctrl), r0, r5
	ld.bu LOWW(#_u1_flag_inv0_modevctrl)[r5], r5
	cmp 0x00000000, r5
	bnz9 .BB.LABEL.1_100
.BB.LABEL.1_94:	; if_then_bb1043
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 702
	movhi HIGHW1(#_f4_lev_m_inv0_1pulse), r0, r5
	ld.w LOWW(#_f4_lev_m_inv0_1pulse)[r5], r5
	movhi HIGHW1(#_u2_cnt_inv0_vctrlmode), r0, r6
	ld.h LOWW(#_u2_cnt_inv0_vctrlmode)[r6], r6
	cmpf.s 0x00000007, r2, r5
	trfsr 0
	bz9 .BB.LABEL.1_98
.BB.LABEL.1_95:	; if_then_bb1049
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 704
	add 0x00000001, r6
	movhi HIGHW1(#_u2_cnt_inv0_vctrlmode), r0, r2
	st.h r6, LOWW(#_u2_cnt_inv0_vctrlmode)[r2]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 705
	andi 0x0000FFFF, r6, r2
	movhi HIGHW1(#_u2_cnt_inv0_1pulsemode), r0, r6
	ld.hu LOWW(#_u2_cnt_inv0_1pulsemode)[r6], r6
	cmp r6, r2
	bnh9 .BB.LABEL.1_108
.BB.LABEL.1_96:	; bb1058
	movhi HIGHW1(#_u1_flag_enable_inv0_1pulse), r0, r2
	ld.bu LOWW(#_u1_flag_enable_inv0_1pulse)[r2], r2
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.1_108
.BB.LABEL.1_97:	; if_then_bb1071
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 707
	movhi HIGHW1(#_u1_flag_inv0_modevctrl), r0, r2
	mov 0x00000001, r6
	st.b r6, LOWW(#_u1_flag_inv0_modevctrl)[r2]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 708
	movhi HIGHW1(#_u2_cnt_inv0_vctrlmode), r0, r2
	st.h r0, LOWW(#_u2_cnt_inv0_vctrlmode)[r2]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 710
	movhi HIGHW1(#_u1_cnt_1pulse_inv0_hw), r0, r2
	st.b r0, LOWW(#_u1_cnt_1pulse_inv0_hw)[r2]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 711
	movhi HIGHW1(#_u1_flag_1pulse_inv0_mode), r0, r2
	st.b r0, LOWW(#_u1_flag_1pulse_inv0_mode)[r2]
	br9 .BB.LABEL.1_108
.BB.LABEL.1_98:	; if_else_bb1074
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 717
	andi 0x0000FFFF, r6, r0
	bz9 .BB.LABEL.1_108
.BB.LABEL.1_99:	; if_then_bb1080
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 719
	add 0xFFFFFFFF, r6
	movhi HIGHW1(#_u2_cnt_inv0_vctrlmode), r0, r2
	st.h r6, LOWW(#_u2_cnt_inv0_vctrlmode)[r2]
	br9 .BB.LABEL.1_108
.BB.LABEL.1_100:	; if_else_bb1086
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 729
	movhi HIGHW1(#_u1_flag_inv0_modetiming), r0, r5
	ld.bu LOWW(#_u1_flag_inv0_modetiming)[r5], r5
	cmp 0x00000001, r5
	bnz9 .BB.LABEL.1_109
.BB.LABEL.1_101:	; if_then_bb1092
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 732
	movhi HIGHW1(#_f4_lev_m_inv0_svpwm), r0, r5
	ld.w LOWW(#_f4_lev_m_inv0_svpwm)[r5], r5
	movhi HIGHW1(#_u2_cnt_inv0_vctrlmode), r0, r6
	ld.h LOWW(#_u2_cnt_inv0_vctrlmode)[r6], r6
	cmpf.s 0x00000007, r5, r2
	trfsr 0
	bz9 .BB.LABEL.1_104
.BB.LABEL.1_102:	; if_then_bb1098
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 734
	add 0x00000001, r6
	movhi HIGHW1(#_u2_cnt_inv0_vctrlmode), r0, r2
	st.h r6, LOWW(#_u2_cnt_inv0_vctrlmode)[r2]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 735
	andi 0x0000FFFF, r6, r6
	movhi HIGHW1(#_u2_cnt_inv0_svpwmmode), r0, r2
	ld.hu LOWW(#_u2_cnt_inv0_svpwmmode)[r2], r2
	cmp r2, r6
	bnh9 .BB.LABEL.1_106
.BB.LABEL.1_103:	; if_then_bb1108
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 737
	movhi HIGHW1(#_u1_flag_inv0_modevctrl), r0, r6
	st.b r0, LOWW(#_u1_flag_inv0_modevctrl)[r6]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 738
	movhi HIGHW1(#_u2_cnt_inv0_vctrlmode), r0, r6
	st.h r0, LOWW(#_u2_cnt_inv0_vctrlmode)[r6]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 740
	movhi HIGHW1(#_u1_flag_1pulse_inv0_mode), r0, r6
	st.b r0, LOWW(#_u1_flag_1pulse_inv0_mode)[r6]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 742
	movhi HIGHW1(#_u1_cnt_1pulse_inv0_hw), r0, r6
	st.b r0, LOWW(#_u1_cnt_1pulse_inv0_hw)[r6]
	br9 .BB.LABEL.1_106
.BB.LABEL.1_104:	; if_else_bb1111
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 748
	andi 0x0000FFFF, r6, r0
	bz9 .BB.LABEL.1_106
.BB.LABEL.1_105:	; if_then_bb1117
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 750
	add 0xFFFFFFFF, r6
	movhi HIGHW1(#_u2_cnt_inv0_vctrlmode), r0, r2
	st.h r6, LOWW(#_u2_cnt_inv0_vctrlmode)[r2]
.BB.LABEL.1_106:	; if_break_bb1122
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 755
	movhi HIGHW1(#_u1_flag_enable_inv0_1pulse), r0, r2
	ld.bu LOWW(#_u1_flag_enable_inv0_1pulse)[r2], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.1_108
.BB.LABEL.1_107:	; if_then_bb1128
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 757
	movhi HIGHW1(#_u1_flag_inv0_modevctrl), r0, r2
	st.b r0, LOWW(#_u1_flag_inv0_modevctrl)[r2]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 758
	movhi HIGHW1(#_u2_cnt_inv0_vctrlmode), r0, r2
	st.h r0, LOWW(#_u2_cnt_inv0_vctrlmode)[r2]
.BB.LABEL.1_108:	; if_break_bb1133.PartialDrain
	movhi HIGHW1(#_u1_flag_inv0_modetiming), r0, r2
	st.b r0, LOWW(#_u1_flag_inv0_modetiming)[r2]
.BB.LABEL.1_109:	; if_break_bb1133
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 768
	movhi HIGHW1(#_u1_pwm_inv0_status), r0, r2
	ld.bu LOWW(#_u1_pwm_inv0_status)[r2], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.1_111
.BB.LABEL.1_110:	; if_then_bb1139
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 770
	movhi HIGHW1(#_u1_flag_1pulse_inv0_mode), r0, r2
	st.b r0, LOWW(#_u1_flag_1pulse_inv0_mode)[r2]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 772
	movhi HIGHW1(#_u1_cnt_1pulse_inv0_hw), r0, r2
	st.b r0, LOWW(#_u1_cnt_1pulse_inv0_hw)[r2]
.BB.LABEL.1_111:	; return
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 777
	dispose 0x00000000, 0x00000079, [r31]
_fb_pwm_inv0_idqctrl_init:
	.stack _fb_pwm_inv0_idqctrl_init = 0
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 799
	movhi HIGHW1(#_f4_pf_inv0), r0, r2
	movhi 0x00004080, r0, r5
	st.w r5, LOWW(#_f4_pf_inv0)[r2]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 800
	movhi HIGHW1(#_f4_dpf_inv0), r0, r2
	movhi 0x00003E80, r0, r5
	st.w r5, LOWW(#_f4_dpf_inv0)[r2]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 802
	movhi HIGHW1(#_f4_rs_inv0), r0, r2
	movhi 0x00003F00, r0, r5
	st.w r5, LOWW(#_f4_rs_inv0)[r2]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 804
	movhi HIGHW1(#_f4_fm_inv0), r0, r2
	mov 0x3D90624E, r5
	st.w r5, LOWW(#_f4_fm_inv0)[r2]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 806
	movhi HIGHW1(#_f4_ld_inv0_const), r0, r5
	mov 0x3B1E12A5, r2
	st.w r2, LOWW(#_f4_ld_inv0_const)[r5]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 807
	movhi HIGHW1(#_f4_i_ld_inv0_isat), r0, r5
	mov 0x40E947AE, r6
	st.w r6, LOWW(#_f4_i_ld_inv0_isat)[r5]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 808
	movhi HIGHW1(#_f4_k1_ld_inv0_isat), r0, r5
	mov 0x3AC111AE, r6
	st.w r6, LOWW(#_f4_k1_ld_inv0_isat)[r5]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 809
	movhi HIGHW1(#_f4_k2_ld_inv0_isat), r0, r5
	mov 0x3BE02A78, r6
	st.w r6, LOWW(#_f4_k2_ld_inv0_isat)[r5]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 811
	movhi HIGHW1(#_f4_lq_inv0_const), r0, r6
	mov 0x3B23D70A, r5
	st.w r5, LOWW(#_f4_lq_inv0_const)[r6]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 812
	movhi HIGHW1(#_f4_i_lq_inv0_isat), r0, r6
	movhi 0x00004120, r0, r7
	st.w r7, LOWW(#_f4_i_lq_inv0_isat)[r6]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 813
	movhi HIGHW1(#_f4_k1_lq_inv0_isat), r0, r6
	mov 0x3AF96E16, r7
	st.w r7, LOWW(#_f4_k1_lq_inv0_isat)[r6]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 814
	movhi HIGHW1(#_f4_k2_lq_inv0_isat), r0, r6
	mov 0x3BC37E6F, r7
	st.w r7, LOWW(#_f4_k2_lq_inv0_isat)[r6]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 816
	movhi HIGHW1(#_f4_ld_inv0_isat), r0, r6
	st.w r2, LOWW(#_f4_ld_inv0_isat)[r6]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 817
	movhi HIGHW1(#_f4_lq_inv0_isat), r0, r2
	st.w r5, LOWW(#_f4_lq_inv0_isat)[r2]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 819
	movhi HIGHW1(#_u1_flag_ldq_inv0_mode), r0, r2
	st.b r0, LOWW(#_u1_flag_ldq_inv0_mode)[r2]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 825
	movhi HIGHW1(#_f4_id_inv0_ad), r0, r2
	st.w r0, LOWW(#_f4_id_inv0_ad)[r2]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 826
	movhi HIGHW1(#_f4_iq_inv0_ad), r0, r2
	st.w r0, LOWW(#_f4_iq_inv0_ad)[r2]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 828
	movhi HIGHW1(#_f4_id_inv0_ref), r0, r2
	st.w r0, LOWW(#_f4_id_inv0_ref)[r2]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 829
	movhi HIGHW1(#_f4_iq_inv0_ref), r0, r2
	st.w r0, LOWW(#_f4_iq_inv0_ref)[r2]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 835
	movhi HIGHW1(#_u1_flag_enalbe_inv0_kictrl), r0, r2
	st.b r0, LOWW(#_u1_flag_enalbe_inv0_kictrl)[r2]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 838
	movhi HIGHW1(#_f4_kp_inv0_idq_cmp), r0, r5
	mov 0x3DCCCCCD, r2
	st.w r2, LOWW(#_f4_kp_inv0_idq_cmp)[r5]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 839
	movhi HIGHW1(#_f4_ki_inv0_idq_cmp), r0, r5
	st.w r2, LOWW(#_f4_ki_inv0_idq_cmp)[r5]
	movhi 0x00004348, r0, r5
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 841
	movhi HIGHW1(#_f4_vdq_inv0_ictrl_max), r0, r6
	st.w r5, LOWW(#_f4_vdq_inv0_ictrl_max)[r6]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 842
	movhi HIGHW1(#_f4_vdq_inv0_ictrl_max_tmp), r0, r6
	st.w r5, LOWW(#_f4_vdq_inv0_ictrl_max_tmp)[r6]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 845
	movhi HIGHW1(#_f4_kp_inv0_idq_ctrl_max), r0, r5
	st.w r2, LOWW(#_f4_kp_inv0_idq_ctrl_max)[r5]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 846
	movhi HIGHW1(#_f4_kp_inv0_idq_ctrl_min), r0, r2
	mov 0x3CA3D70A, r5
	st.w r5, LOWW(#_f4_kp_inv0_idq_ctrl_min)[r2]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 848
	movhi HIGHW1(#_f4_lev_m_kp_inv0_idq_ctrl_max), r0, r2
	mov 0x3F59999A, r5
	st.w r5, LOWW(#_f4_lev_m_kp_inv0_idq_ctrl_max)[r2]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 849
	movhi HIGHW1(#_f4_lev_m_kp_inv0_idq_ctrl_min), r0, r2
	mov 0x3F7D70A4, r5
	st.w r5, LOWW(#_f4_lev_m_kp_inv0_idq_ctrl_min)[r2]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 854
	movhi HIGHW1(#_f4_a_kp_inv0_idq_cmp), r0, r2
	mov 0xBF124925, r5
	st.w r5, LOWW(#_f4_a_kp_inv0_idq_cmp)[r2]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 858
	movhi HIGHW1(#_f4_b_kp_inv0_idq_cmp), r0, r2
	mov 0x3F15F160, r5
	st.w r5, LOWW(#_f4_b_kp_inv0_idq_cmp)[r2]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 861
	movhi HIGHW1(#_f4_lev_m_inv0_kictrl_max), r0, r2
	mov 0x3F666666, r5
	st.w r5, LOWW(#_f4_lev_m_inv0_kictrl_max)[r2]
	movhi 0x00003F80, r0, r2
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 862
	movhi HIGHW1(#_f4_lev_m_inv0_kictrl_min), r0, r5
	st.w r2, LOWW(#_f4_lev_m_inv0_kictrl_min)[r5]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 867
	movhi HIGHW1(#_f4_a_k_inv0_kictrl), r0, r5
	mov 0xC11FFFFE, r6
	st.w r6, LOWW(#_f4_a_k_inv0_kictrl)[r5]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 871
	movhi HIGHW1(#_f4_b_k_inv0_kictrl), r0, r5
	mov 0x411FFFFE, r6
	st.w r6, LOWW(#_f4_b_k_inv0_kictrl)[r5]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 873
	movhi HIGHW1(#_f4_k_inv0_kictrl_stop), r0, r5
	st.w r2, LOWW(#_f4_k_inv0_kictrl_stop)[r5]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 876
	movhi HIGHW1(#_f4_kp_inv0_idctrl), r0, r5
	st.w r0, LOWW(#_f4_kp_inv0_idctrl)[r5]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 877
	movhi HIGHW1(#_f4_ki_inv0_idctrl), r0, r5
	st.w r0, LOWW(#_f4_ki_inv0_idctrl)[r5]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 879
	movhi HIGHW1(#_f4_id_inv0_ctrlerr), r0, r5
	st.w r0, LOWW(#_f4_id_inv0_ctrlerr)[r5]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 880
	movhi HIGHW1(#_f4_vd_inv0_ctrl), r0, r5
	st.w r0, LOWW(#_f4_vd_inv0_ctrl)[r5]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 881
	movhi HIGHW1(#_f4_vd_inv0_ctrlp), r0, r5
	st.w r0, LOWW(#_f4_vd_inv0_ctrlp)[r5]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 882
	movhi HIGHW1(#_f4_vd_inv0_ctrli), r0, r5
	st.w r0, LOWW(#_f4_vd_inv0_ctrli)[r5]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 885
	movhi HIGHW1(#_f4_kp_inv0_iqctrl), r0, r5
	st.w r0, LOWW(#_f4_kp_inv0_iqctrl)[r5]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 886
	movhi HIGHW1(#_f4_ki_inv0_iqctrl), r0, r5
	st.w r0, LOWW(#_f4_ki_inv0_iqctrl)[r5]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 888
	movhi HIGHW1(#_f4_iq_inv0_ctrlerr), r0, r5
	st.w r0, LOWW(#_f4_iq_inv0_ctrlerr)[r5]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 889
	movhi HIGHW1(#_f4_vq_inv0_ctrl), r0, r5
	st.w r0, LOWW(#_f4_vq_inv0_ctrl)[r5]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 890
	movhi HIGHW1(#_f4_vq_inv0_ctrlp), r0, r5
	st.w r0, LOWW(#_f4_vq_inv0_ctrlp)[r5]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 891
	movhi HIGHW1(#_f4_vq_inv0_ctrli), r0, r5
	st.w r0, LOWW(#_f4_vq_inv0_ctrli)[r5]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 897
	movhi HIGHW1(#_f4_vd_inv0_emf), r0, r5
	st.w r0, LOWW(#_f4_vd_inv0_emf)[r5]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 898
	movhi HIGHW1(#_f4_vq_inv0_emf), r0, r5
	st.w r0, LOWW(#_f4_vq_inv0_emf)[r5]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 899
	movhi HIGHW1(#_f4_vd_inv0_rs), r0, r5
	st.w r0, LOWW(#_f4_vd_inv0_rs)[r5]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 900
	movhi HIGHW1(#_f4_vq_inv0_rs), r0, r5
	st.w r0, LOWW(#_f4_vq_inv0_rs)[r5]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 902
	movhi HIGHW1(#_f4_vq_inv0_emf_cmp), r0, r5
	st.w r0, LOWW(#_f4_vq_inv0_emf_cmp)[r5]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 903
	movhi HIGHW1(#_f4_vq_inv0_rs_cmp), r0, r5
	st.w r0, LOWW(#_f4_vq_inv0_rs_cmp)[r5]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 905
	movhi HIGHW1(#_f4_vd_inv0_ref_tmp), r0, r5
	st.w r0, LOWW(#_f4_vd_inv0_ref_tmp)[r5]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 906
	movhi HIGHW1(#_f4_vq_inv0_ref_tmp), r0, r5
	st.w r0, LOWW(#_f4_vq_inv0_ref_tmp)[r5]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 912
	movhi HIGHW1(#_f4_k_inv0_vdq_max), r0, r5
	mov 0x3F933333, r6
	st.w r6, LOWW(#_f4_k_inv0_vdq_max)[r5]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 914
	movhi HIGHW1(#_f4_vdq_inv0_ref), r0, r5
	st.w r0, LOWW(#_f4_vdq_inv0_ref)[r5]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 915
	movhi HIGHW1(#_f4_vdq_inv0_max), r0, r5
	st.w r0, LOWW(#_f4_vdq_inv0_max)[r5]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 917
	movhi HIGHW1(#_f4_vd_inv0_ref), r0, r5
	st.w r0, LOWW(#_f4_vd_inv0_ref)[r5]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 918
	movhi HIGHW1(#_f4_vq_inv0_ref), r0, r5
	st.w r0, LOWW(#_f4_vq_inv0_ref)[r5]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 925
	movhi HIGHW1(#_f4_k_inv0_modu), r0, r5
	st.w r2, LOWW(#_f4_k_inv0_modu)[r5]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 926
	movhi HIGHW1(#_f4_k_inv0_modu_max), r0, r5
	movhi 0x00004090, r0, r6
	st.w r6, LOWW(#_f4_k_inv0_modu_max)[r5]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 928
	movhi HIGHW1(#_f4_dk_inv0_modu_kp), r0, r5
	st.w r2, LOWW(#_f4_dk_inv0_modu_kp)[r5]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 929
	movhi HIGHW1(#_f4_dk_inv0_modu_ki), r0, r5
	st.w r2, LOWW(#_f4_dk_inv0_modu_ki)[r5]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 930
	movhi HIGHW1(#_f4_dk_inv0_modu_kicmp), r0, r2
	mov 0x3E4CCCCD, r5
	st.w r5, LOWW(#_f4_dk_inv0_modu_kicmp)[r2]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 932
	movhi HIGHW1(#_u4_n_k_inv0_modu), r0, r2
	st.w r0, LOWW(#_u4_n_k_inv0_modu)[r2]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 934
	movhi HIGHW1(#_f4_m_inv0_lpf), r0, r2
	st.w r0, LOWW(#_f4_m_inv0_lpf)[r2]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 935
	movhi HIGHW1(#_f4_wclpf_inv0_m), r0, r2
	movhi 0x00004396, r0, r5
	st.w r5, LOWW(#_f4_wclpf_inv0_m)[r2]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 941
	movhi HIGHW1(#_u1_flag_inv0_modevctrl), r0, r2
	st.b r0, LOWW(#_u1_flag_inv0_modevctrl)[r2]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 943
	movhi HIGHW1(#_u2_cnt_inv0_vctrlmode), r0, r2
	st.h r0, LOWW(#_u2_cnt_inv0_vctrlmode)[r2]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 944
	movhi HIGHW1(#_u2_cnt_inv0_svpwmmode), r0, r2
	mov 0x0000000A, r5
	st.h r5, LOWW(#_u2_cnt_inv0_svpwmmode)[r2]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 945
	movhi HIGHW1(#_u2_cnt_inv0_1pulsemode), r0, r2
	movea 0x00000190, r0, r5
	st.h r5, LOWW(#_u2_cnt_inv0_1pulsemode)[r2]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 947
	movhi HIGHW1(#_u1_flag_enable_inv0_1pulse), r0, r2
	mov 0x00000001, r5
	st.b r5, LOWW(#_u1_flag_enable_inv0_1pulse)[r2]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 949
	movhi HIGHW1(#_f4_lev_m_inv0_1pulse), r0, r2
	mov 0x3F8CCCCD, r5
	st.w r5, LOWW(#_f4_lev_m_inv0_1pulse)[r2]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 950
	movhi HIGHW1(#_f4_lev_m_inv0_svpwm), r0, r2
	mov 0x3F8A3D71, r5
	st.w r5, LOWW(#_f4_lev_m_inv0_svpwm)[r2]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_idqctrl.c", 952
	movhi HIGHW1(#_u1_flag_inv0_modetiming), r0, r2
	st.b r0, LOWW(#_u1_flag_inv0_modetiming)[r2]
	jmp [r31]
	.section .bss, bss
	.align 4
_f4_pf_inv0:
	.ds (4)
	.align 4
_f4_dpf_inv0:
	.ds (4)
	.align 4
_f4_rs_inv0:
	.ds (4)
	.align 4
_f4_fm_inv0:
	.ds (4)
	.align 4
_f4_ld_inv0_const:
	.ds (4)
	.align 4
_f4_i_ld_inv0_isat:
	.ds (4)
	.align 4
_f4_k1_ld_inv0_isat:
	.ds (4)
	.align 4
_f4_k2_ld_inv0_isat:
	.ds (4)
	.align 4
_f4_lq_inv0_const:
	.ds (4)
	.align 4
_f4_i_lq_inv0_isat:
	.ds (4)
	.align 4
_f4_k1_lq_inv0_isat:
	.ds (4)
	.align 4
_f4_k2_lq_inv0_isat:
	.ds (4)
	.align 4
_f4_ld_inv0_isat:
	.ds (4)
	.align 4
_f4_lq_inv0_isat:
	.ds (4)
_u1_flag_ldq_inv0_mode:
	.ds (1)
	.align 4
_f4_id_inv0_ad:
	.ds (4)
	.align 4
_f4_iq_inv0_ad:
	.ds (4)
	.align 4
_f4_id_inv0_ref:
	.ds (4)
	.align 4
_f4_iq_inv0_ref:
	.ds (4)
_u1_flag_enalbe_inv0_kictrl:
	.ds (1)
	.align 4
_f4_kp_inv0_idq_cmp:
	.ds (4)
	.align 4
_f4_ki_inv0_idq_cmp:
	.ds (4)
	.align 4
_f4_vdq_inv0_ictrl_max:
	.ds (4)
	.align 4
_f4_vdq_inv0_ictrl_max_tmp:
	.ds (4)
	.align 4
_f4_kp_inv0_idq_ctrl_max:
	.ds (4)
	.align 4
_f4_kp_inv0_idq_ctrl_min:
	.ds (4)
	.align 4
_f4_lev_m_kp_inv0_idq_ctrl_max:
	.ds (4)
	.align 4
_f4_lev_m_kp_inv0_idq_ctrl_min:
	.ds (4)
	.align 4
_f4_a_kp_inv0_idq_cmp:
	.ds (4)
	.align 4
_f4_b_kp_inv0_idq_cmp:
	.ds (4)
	.align 4
_f4_lev_m_inv0_kictrl_max:
	.ds (4)
	.align 4
_f4_lev_m_inv0_kictrl_min:
	.ds (4)
	.align 4
_f4_a_k_inv0_kictrl:
	.ds (4)
	.align 4
_f4_b_k_inv0_kictrl:
	.ds (4)
	.align 4
_f4_k_inv0_kictrl_stop:
	.ds (4)
	.align 4
_f4_kp_inv0_idctrl:
	.ds (4)
	.align 4
_f4_ki_inv0_idctrl:
	.ds (4)
	.align 4
_f4_id_inv0_ctrlerr:
	.ds (4)
	.align 4
_f4_vd_inv0_ctrl:
	.ds (4)
	.align 4
_f4_vd_inv0_ctrlp:
	.ds (4)
	.align 4
_f4_vd_inv0_ctrli:
	.ds (4)
	.align 4
_f4_kp_inv0_iqctrl:
	.ds (4)
	.align 4
_f4_ki_inv0_iqctrl:
	.ds (4)
	.align 4
_f4_iq_inv0_ctrlerr:
	.ds (4)
	.align 4
_f4_vq_inv0_ctrl:
	.ds (4)
	.align 4
_f4_vq_inv0_ctrlp:
	.ds (4)
	.align 4
_f4_vq_inv0_ctrli:
	.ds (4)
	.align 4
_f4_vd_inv0_emf:
	.ds (4)
	.align 4
_f4_vq_inv0_emf:
	.ds (4)
	.align 4
_f4_vd_inv0_rs:
	.ds (4)
	.align 4
_f4_vq_inv0_rs:
	.ds (4)
	.align 4
_f4_vq_inv0_emf_cmp:
	.ds (4)
	.align 4
_f4_vq_inv0_rs_cmp:
	.ds (4)
	.align 4
_f4_vd_inv0_ref_tmp:
	.ds (4)
	.align 4
_f4_vq_inv0_ref_tmp:
	.ds (4)
	.align 4
_f4_k_inv0_vdq_max:
	.ds (4)
	.align 4
_f4_vdq_inv0_ref:
	.ds (4)
	.align 4
_f4_vdq_inv0_max:
	.ds (4)
	.align 4
_f4_vd_inv0_ref:
	.ds (4)
	.align 4
_f4_vq_inv0_ref:
	.ds (4)
	.align 4
_f4_m_inv0_ref:
	.ds (4)
	.align 4
_f4_k_inv0_modu:
	.ds (4)
	.align 4
_f4_k_inv0_modu_max:
	.ds (4)
	.align 4
_f4_dk_inv0_modu_kp:
	.ds (4)
	.align 4
_f4_dk_inv0_modu_ki:
	.ds (4)
	.align 4
_f4_dk_inv0_modu_kicmp:
	.ds (4)
	.align 4
_u4_n_k_inv0_modu:
	.ds (4)
	.align 4
_f4_m_inv0_lpf:
	.ds (4)
	.align 4
_f4_wclpf_inv0_m:
	.ds (4)
_u1_flag_inv0_modevctrl:
	.ds (1)
	.align 2
_u2_cnt_inv0_vctrlmode:
	.ds (2)
	.align 2
_u2_cnt_inv0_1pulsemode:
	.ds (2)
	.align 2
_u2_cnt_inv0_svpwmmode:
	.ds (2)
_u1_flag_enable_inv0_1pulse:
	.ds (1)
	.align 4
_f4_lev_m_inv0_1pulse:
	.ds (4)
	.align 4
_f4_lev_m_inv0_svpwm:
	.ds (4)
_u1_flag_inv0_modetiming:
	.ds (1)
