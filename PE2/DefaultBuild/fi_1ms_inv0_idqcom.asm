#CC-RH Compiler RH850 Assembler Source
#@	CC-RH Version : V1.03.00 [21 Aug 2015]
#@	Command : src\fi_1ms_inv0_idqcom.c -Xobj_path=DefaultBuild -Xcommon=rh850 -Xcpu=g3m -c -g -Ospeed -Oinline_size -Isrc -I..\Common -D__CLK_HSB=80,__CLK_LSB=40,__CLKC_HSB=80,__CLK_CLSB=40 -Xasm_path=DefaultBuild
#@	compiled at Mon May 01 22:14:32 2017

	.file "src\fi_1ms_inv0_idqcom.c"

	$reg_mode 32

	.extern _u1_pwm_inv0_status
	.extern _f4_vdc_inv0_lpf
	.extern _f4_speed_inv0_lpf
	.extern _f4_tmp_inv0_igbt_max
	.extern _f4_tmp_inv0_mot1
	.extern _f4_tmp_inv0_mot2
	.extern _f4_iq_inv0_wrctrl
	.public _u1_flag_inv0_derating_status, 1
	.public _f4_k_inv0_tmp_igbt_limit, 4
	.public _f4_tmp_inv0_igbt_limit_start, 4
	.public _f4_tmp_inv0_igbt_limit_fin, 4
	.public _f4_k_inv0_tmp_mot1_limit, 4
	.public _f4_tmp_inv0_mot1_limit_start, 4
	.public _f4_tmp_inv0_mot1_limit_fin, 4
	.public _f4_k_inv0_tmp_mot2_limit, 4
	.public _f4_tmp_inv0_mot2_limit_start, 4
	.public _f4_tmp_inv0_mot2_limit_fin, 4
	.public _f4_k_inv0_tq_limit, 4
	.public _u1_flag_mode_inv0_idqcom, 1
	.public _f4_id_inv0_ctrl, 4
	.public _f4_iq_inv0_ctrl, 4
	.public _f4_irms_inv0_ref, 4
	.public _f4_theta_inv0_ref, 4
	.public _f4_irms_inv0_ref_tmp, 4
	.public _f4_dirms_inv0_ref_up, 4
	.public _f4_tq_inv0_ref, 4
	.public _f4_tq_inv0_ref_tmp, 4
	.public _f4_dtq_inv0_ref_up, 4
	.public _f4_tq_inv0_ref_max, 4
	.public _f4_tq_inv0_ref_min, 4
	.public _f4_tq_inv0_ref_max_tmp, 4
	.public _f4_tq_inv0_ref_min_tmp, 4
	.public _f4_speed_inv0_abs, 4
	.public _u1_flag_mode_k_inv0_ldq_cmp, 1
	.public _f4_k_inv0_ld_cmp, 4
	.public _f4_k_inv0_lq_cmp, 4
	.public _fi_1ms_inv0_idqcom
	.extern _sinf
	.extern _cosf
	.extern _u1_tq_map_limit
	.extern _u1_tq_map_get
	.extern _u1_k_inv0_ldq_cmp_map_get
	.public _fb_1ms_inv0_idqcom_init

	.section .text, text
_fi_1ms_inv0_idqcom:
	.stack _fi_1ms_inv0_idqcom = 20
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_idqcom.c", 118
	prepare 0x00000041, 0x0000000C
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_idqcom.c", 130
	movhi HIGHW1(#_f4_tmp_inv0_igbt_limit_fin), r0, r2
	ld.w LOWW(#_f4_tmp_inv0_igbt_limit_fin)[r2], r2
	movhi HIGHW1(#_f4_tmp_inv0_igbt_max), r0, r5
	ld.w LOWW(#_f4_tmp_inv0_igbt_max)[r5], r5
	movhi HIGHW1(#_f4_tmp_inv0_igbt_limit_start), r0, r6
	ld.w LOWW(#_f4_tmp_inv0_igbt_limit_start)[r6], r6
	movhi 0x00003F80, r0, r7
	subf.s r5, r2, r5
	subf.s r6, r2, r2
	recipf.s r2, r2
	mulf.s r5, r2, r2
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_idqcom.c", 131
	cmpf.s 0x00000007, r2, r7
	trfsr 0
	bz9 .BB.LABEL.1_2
.BB.LABEL.1_1:	; entry.bb25_crit_edge
	movhi 0x00003F80, r0, r2
	br9 .BB.LABEL.1_3
.BB.LABEL.1_2:	; bb15
	mov 0x00000000, r5
	cmpf.s 0x00000004, r2, r5
	cmovf.s 0, r5, r2, r2
.BB.LABEL.1_3:	; bb25
	movhi HIGHW1(#_f4_k_inv0_tmp_igbt_limit), r0, r5
	st.w r2, LOWW(#_f4_k_inv0_tmp_igbt_limit)[r5]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_idqcom.c", 134
	movhi HIGHW1(#_f4_tmp_inv0_mot1_limit_fin), r0, r5
	ld.w LOWW(#_f4_tmp_inv0_mot1_limit_fin)[r5], r5
	movhi HIGHW1(#_f4_tmp_inv0_mot1), r0, r6
	ld.w LOWW(#_f4_tmp_inv0_mot1)[r6], r6
	movhi HIGHW1(#_f4_tmp_inv0_mot1_limit_start), r0, r7
	ld.w LOWW(#_f4_tmp_inv0_mot1_limit_start)[r7], r7
	movhi 0x00003F80, r0, r8
	subf.s r6, r5, r6
	subf.s r7, r5, r5
	recipf.s r5, r5
	mulf.s r6, r5, r5
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_idqcom.c", 135
	cmpf.s 0x00000007, r5, r8
	trfsr 0
	bz9 .BB.LABEL.1_5
.BB.LABEL.1_4:	; bb25.bb52_crit_edge
	movhi 0x00003F80, r0, r5
	br9 .BB.LABEL.1_6
.BB.LABEL.1_5:	; bb40
	mov 0x00000000, r6
	cmpf.s 0x00000004, r5, r6
	cmovf.s 0, r6, r5, r5
.BB.LABEL.1_6:	; bb52
	movhi HIGHW1(#_f4_k_inv0_tmp_mot1_limit), r0, r6
	st.w r5, LOWW(#_f4_k_inv0_tmp_mot1_limit)[r6]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_idqcom.c", 138
	movhi HIGHW1(#_f4_tmp_inv0_mot2_limit_fin), r0, r6
	ld.w LOWW(#_f4_tmp_inv0_mot2_limit_fin)[r6], r6
	movhi HIGHW1(#_f4_tmp_inv0_mot2), r0, r7
	ld.w LOWW(#_f4_tmp_inv0_mot2)[r7], r7
	movhi HIGHW1(#_f4_tmp_inv0_mot2_limit_start), r0, r8
	ld.w LOWW(#_f4_tmp_inv0_mot2_limit_start)[r8], r8
	movhi 0x00003F80, r0, r9
	subf.s r7, r6, r7
	subf.s r8, r6, r6
	recipf.s r6, r6
	mulf.s r7, r6, r6
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_idqcom.c", 139
	cmpf.s 0x00000007, r6, r9
	trfsr 0
	bz9 .BB.LABEL.1_8
.BB.LABEL.1_7:	; bb52.bb79_crit_edge
	movhi 0x00003F80, r0, r6
	br9 .BB.LABEL.1_9
.BB.LABEL.1_8:	; bb67
	mov 0x00000000, r7
	cmpf.s 0x00000004, r6, r7
	cmovf.s 0, r7, r6, r6
.BB.LABEL.1_9:	; bb79
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_idqcom.c", 141
	cmpf.s 0x00000004, r2, r5
	movhi HIGHW1(#_f4_k_inv0_tmp_mot2_limit), r0, r7
	st.w r6, LOWW(#_f4_k_inv0_tmp_mot2_limit)[r7]
	cmovf.s 0, r2, r5, r2
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_idqcom.c", 142
	movhi HIGHW1(#_f4_k_inv0_tq_limit), r0, r5
	cmpf.s 0x00000004, r2, r6
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_idqcom.c", 141
	st.w r2, 0x00000004[r3]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_idqcom.c", 142
	cmovf.s 0, r2, r6, r2
	st.w r2, LOWW(#_f4_k_inv0_tq_limit)[r5]
	movhi 0x00003F80, r0, r5
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_idqcom.c", 144
	cmpf.s 0x00000004, r2, r5
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_idqcom.c", 150
	movhi HIGHW1(#_u1_flag_inv0_derating_status), r0, r5
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_idqcom.c", 144
	trfsr 0
	setf 0x00000002, r2
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_idqcom.c", 150
	st.b r2, LOWW(#_u1_flag_inv0_derating_status)[r5]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_idqcom.c", 157
	movhi HIGHW1(#_u1_flag_mode_inv0_idqcom), r0, r2
	ld.bu LOWW(#_u1_flag_mode_inv0_idqcom)[r2], r2
	cmp 0x00000001, r2
	bz17 .BB.LABEL.1_24
.BB.LABEL.1_10:	; bb79
	cmp 0x00000000, r2
	bnz17 .BB.LABEL.1_45
.BB.LABEL.1_11:	; bb112
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_idqcom.c", 164
	movhi HIGHW1(#_u1_pwm_inv0_status), r0, r2
	ld.bu LOWW(#_u1_pwm_inv0_status)[r2], r2
	cmp 0x00000001, r2
	bnz17 .BB.LABEL.1_23
.BB.LABEL.1_12:	; if_then_bb118
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_idqcom.c", 167
	movhi HIGHW1(#_f4_irms_inv0_ref_tmp), r0, r2
	ld.w LOWW(#_f4_irms_inv0_ref_tmp)[r2], r2
	movhi HIGHW1(#_f4_irms_inv0_ref), r0, r5
	ld.w LOWW(#_f4_irms_inv0_ref)[r5], r5
	cmpf.s 0x00000007, r5, r2
	trfsr 0
	bz9 .BB.LABEL.1_14
.BB.LABEL.1_13:	; if_then_bb124
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_idqcom.c", 169
	movhi HIGHW1(#_f4_dirms_inv0_ref_up), r0, r6
	ld.w LOWW(#_f4_dirms_inv0_ref_up)[r6], r6
	movhi HIGHW1(#_f4_irms_inv0_ref_tmp), r0, r7
	addf.s r6, r2, r2
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_idqcom.c", 170
	cmpf.s 0x00000004, r5, r2
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_idqcom.c", 169
	st.w r2, LOWW(#_f4_irms_inv0_ref_tmp)[r7]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_idqcom.c", 170
	trfsr 0
	bz9 .BB.LABEL.1_16
	br9 .BB.LABEL.1_17
.BB.LABEL.1_14:	; if_else_bb137
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_idqcom.c", 176
	cmpf.s 0x00000007, r2, r5
	trfsr 0
	bz9 .BB.LABEL.1_17
.BB.LABEL.1_15:	; if_then_bb143
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_idqcom.c", 178
	movhi HIGHW1(#_f4_dirms_inv0_ref_up), r0, r6
	ld.w LOWW(#_f4_dirms_inv0_ref_up)[r6], r6
	movhi HIGHW1(#_f4_irms_inv0_ref_tmp), r0, r7
	subf.s r6, r2, r2
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_idqcom.c", 179
	cmpf.s 0x00000007, r5, r2
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_idqcom.c", 178
	st.w r2, LOWW(#_f4_irms_inv0_ref_tmp)[r7]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_idqcom.c", 179
	trfsr 0
	bz9 .BB.LABEL.1_17
.BB.LABEL.1_16:	; if_break_bb158.PartialDrain
	movhi HIGHW1(#_f4_irms_inv0_ref_tmp), r0, r2
	st.w r5, LOWW(#_f4_irms_inv0_ref_tmp)[r2]
.BB.LABEL.1_17:	; if_break_bb158
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_idqcom.c", 188
	movhi HIGHW1(#_f4_theta_inv0_ref), r0, r2
	ld.w LOWW(#_f4_theta_inv0_ref)[r2], r2
	mov 0x3C8EFA35, r5
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_idqcom.c", 190
	mulf.s r5, r2, r6
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_idqcom.c", 188
	st.w r6, 0x00000004[r3]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_idqcom.c", 190
	jarl _sinf, r31
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_idqcom.c", 191
	ld.w 0x00000004[r3], r6
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_idqcom.c", 190
	st.w r10, 0x00000008[r3]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_idqcom.c", 191
	jarl _cosf, r31
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_idqcom.c", 193
	movhi HIGHW1(#_f4_irms_inv0_ref_tmp), r0, r2
	ld.w LOWW(#_f4_irms_inv0_ref_tmp)[r2], r2
	mov 0x00000000, r5
	cmpf.s 0x00000007, r2, r5
	trfsr 0
	bz9 .BB.LABEL.1_19
.BB.LABEL.1_18:	; if_then_bb169
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_idqcom.c", 195
	negf.s r2, r6
	ld.w 0x00000008[r3], r5
	br9 .BB.LABEL.1_20
.BB.LABEL.1_19:	; if_else_bb175
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_idqcom.c", 200
	ld.w 0x00000008[r3], r6
	mov r2, r5
.BB.LABEL.1_20:	; if_break_bb180
	mulf.s r6, r5, r5
	movhi HIGHW1(#_f4_id_inv0_ctrl), r0, r7
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_idqcom.c", 204
	mulf.s r10, r2, r2
	mov 0x3FDDB3D0, r6
	mulf.s r6, r5, r5
	mulf.s r6, r2, r2
	st.w r5, LOWW(#_f4_id_inv0_ctrl)[r7]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_idqcom.c", 205
	movhi HIGHW1(#_f4_iq_inv0_wrctrl), r0, r5
	ld.w LOWW(#_f4_iq_inv0_wrctrl)[r5], r5
	cmpf.s 0x00000007, r2, r5
	trfsr 0
	bnz9 .BB.LABEL.1_22
.BB.LABEL.1_21:	; bb191
	negf.s r5, r5
	cmpf.s 0x00000004, r2, r5
	trfsr 0
	cmov 0x0000000A, r2, r5, r5
.BB.LABEL.1_22:	; bb207
	movhi HIGHW1(#_f4_iq_inv0_ctrl), r0, r2
	st.w r5, LOWW(#_f4_iq_inv0_ctrl)[r2]
	jr .BB.LABEL.1_45
.BB.LABEL.1_23:	; if_else_bb210
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_idqcom.c", 211
	movhi HIGHW1(#_f4_iq_inv0_ctrl), r0, r2
	st.w r0, LOWW(#_f4_iq_inv0_ctrl)[r2]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_idqcom.c", 212
	movhi HIGHW1(#_f4_irms_inv0_ref_tmp), r0, r2
	st.w r0, LOWW(#_f4_irms_inv0_ref_tmp)[r2]
	jr .BB.LABEL.1_45
.BB.LABEL.1_24:	; bb212
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_idqcom.c", 223
	movhi HIGHW1(#_u1_pwm_inv0_status), r0, r2
	ld.bu LOWW(#_u1_pwm_inv0_status)[r2], r2
	cmp 0x00000001, r2
	bnz17 .BB.LABEL.1_44
.BB.LABEL.1_25:	; if_then_bb218
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_idqcom.c", 226
	movhi HIGHW1(#_f4_tq_inv0_ref_tmp), r0, r2
	ld.w LOWW(#_f4_tq_inv0_ref_tmp)[r2], r2
	movhi HIGHW1(#_f4_tq_inv0_ref), r0, r5
	ld.w LOWW(#_f4_tq_inv0_ref)[r5], r5
	cmpf.s 0x00000007, r5, r2
	trfsr 0
	bz9 .BB.LABEL.1_27
.BB.LABEL.1_26:	; if_then_bb224
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_idqcom.c", 228
	movhi HIGHW1(#_f4_dtq_inv0_ref_up), r0, r6
	ld.w LOWW(#_f4_dtq_inv0_ref_up)[r6], r6
	movhi HIGHW1(#_f4_tq_inv0_ref_tmp), r0, r7
	addf.s r6, r2, r2
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_idqcom.c", 229
	cmpf.s 0x00000004, r5, r2
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_idqcom.c", 228
	st.w r2, LOWW(#_f4_tq_inv0_ref_tmp)[r7]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_idqcom.c", 229
	trfsr 0
	bz9 .BB.LABEL.1_29
	br9 .BB.LABEL.1_30
.BB.LABEL.1_27:	; if_else_bb237
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_idqcom.c", 235
	cmpf.s 0x00000007, r2, r5
	trfsr 0
	bz9 .BB.LABEL.1_30
.BB.LABEL.1_28:	; if_then_bb243
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_idqcom.c", 237
	movhi HIGHW1(#_f4_dtq_inv0_ref_up), r0, r6
	ld.w LOWW(#_f4_dtq_inv0_ref_up)[r6], r6
	movhi HIGHW1(#_f4_tq_inv0_ref_tmp), r0, r7
	subf.s r6, r2, r2
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_idqcom.c", 238
	cmpf.s 0x00000007, r5, r2
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_idqcom.c", 237
	st.w r2, LOWW(#_f4_tq_inv0_ref_tmp)[r7]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_idqcom.c", 238
	trfsr 0
	bz9 .BB.LABEL.1_30
.BB.LABEL.1_29:	; if_break_bb258.PartialDrain
	movhi HIGHW1(#_f4_tq_inv0_ref_tmp), r0, r2
	st.w r5, LOWW(#_f4_tq_inv0_ref_tmp)[r2]
.BB.LABEL.1_30:	; if_break_bb258
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_idqcom.c", 246
	movhi HIGHW1(#_f4_speed_inv0_lpf), r0, r2
	ld.w LOWW(#_f4_speed_inv0_lpf)[r2], r6
	mov 0x00000000, r20
	cmpf.s 0x00000004, r6, r20
	trfsr 0
	bnz9 .BB.LABEL.1_32
.BB.LABEL.1_31:	; if_then_bb263
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_idqcom.c", 248
	negf.s r6, r6
.BB.LABEL.1_32:	; if_break_bb268
	movhi HIGHW1(#_f4_speed_inv0_abs), r0, r2
	st.w r6, LOWW(#_f4_speed_inv0_abs)[r2]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_idqcom.c", 256
	movhi HIGHW1(#_f4_vdc_inv0_lpf), r0, r2
	ld.w LOWW(#_f4_vdc_inv0_lpf)[r2], r7
	mov #_f4_tq_inv0_ref_max_tmp, r9
	mov #_f4_tq_inv0_ref_min_tmp, r8
	jarl _u1_tq_map_limit, r31
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_idqcom.c", 259
	movhi HIGHW1(#_f4_speed_inv0_lpf), r0, r2
	ld.w LOWW(#_f4_speed_inv0_lpf)[r2], r2
	cmpf.s 0x00000007, r20, r2
	trfsr 0
	bz9 .BB.LABEL.1_34
.BB.LABEL.1_33:	; if_then_bb276
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_idqcom.c", 261
	movhi HIGHW1(#_f4_k_inv0_tq_limit), r0, r5
	ld.w LOWW(#_f4_k_inv0_tq_limit)[r5], r5
	movhi HIGHW1(#_f4_tq_inv0_ref_max_tmp), r0, r6
	ld.w LOWW(#_f4_tq_inv0_ref_max_tmp)[r6], r6
	movhi HIGHW1(#_f4_tq_inv0_ref_min), r0, r7
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_idqcom.c", 262
	movhi HIGHW1(#_f4_tq_inv0_ref_min_tmp), r0, r8
	ld.w LOWW(#_f4_tq_inv0_ref_min_tmp)[r8], r8
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_idqcom.c", 261
	negf.s r6, r6
	mulf.s r6, r5, r6
	st.w r6, LOWW(#_f4_tq_inv0_ref_min)[r7]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_idqcom.c", 262
	negf.s r8, r7
	br9 .BB.LABEL.1_35
.BB.LABEL.1_34:	; if_else_bb285
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_idqcom.c", 266
	movhi HIGHW1(#_f4_tq_inv0_ref_min_tmp), r0, r5
	ld.w LOWW(#_f4_tq_inv0_ref_min_tmp)[r5], r6
	movhi HIGHW1(#_f4_k_inv0_tq_limit), r0, r5
	ld.w LOWW(#_f4_k_inv0_tq_limit)[r5], r5
	movhi HIGHW1(#_f4_tq_inv0_ref_min), r0, r8
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_idqcom.c", 267
	movhi HIGHW1(#_f4_tq_inv0_ref_max_tmp), r0, r7
	ld.w LOWW(#_f4_tq_inv0_ref_max_tmp)[r7], r7
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_idqcom.c", 266
	mulf.s r5, r6, r6
	st.w r6, LOWW(#_f4_tq_inv0_ref_min)[r8]
.BB.LABEL.1_35:	; if_break_bb292
	mulf.s r5, r7, r5
	movhi HIGHW1(#_f4_tq_inv0_ref_max), r0, r7
	st.w r5, LOWW(#_f4_tq_inv0_ref_max)[r7]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_idqcom.c", 271
	movhi HIGHW1(#_f4_tq_inv0_ref_tmp), r0, r7
	ld.w LOWW(#_f4_tq_inv0_ref_tmp)[r7], r7
	cmpf.s 0x00000007, r7, r5
	trfsr 0
	bz9 .BB.LABEL.1_37
.BB.LABEL.1_36:	; if_break_bb292.bb313_crit_edge
	mov #_f4_tq_inv0_ref_max, r6
	br9 .BB.LABEL.1_38
.BB.LABEL.1_37:	; bb299
	cmpf.s 0x00000004, r7, r6
	mov #_f4_tq_inv0_ref_tmp, r6
	mov #_f4_tq_inv0_ref_min, r5
	cmovf.s 0, r5, r6, r6
.BB.LABEL.1_38:	; bb313
	cmpf.s 0x00000004, r2, r20
	ld.w 0x00000000[r6], r5
	movhi HIGHW1(#_f4_tq_inv0_ref_tmp), r0, r6
	st.w r5, LOWW(#_f4_tq_inv0_ref_tmp)[r6]
	trfsr 0
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_idqcom.c", 274
	bz9 .BB.LABEL.1_43
.BB.LABEL.1_39:	; bb313.if_break_bb325_crit_edge
	mov r5, r7
.BB.LABEL.1_40:	; if_break_bb325
	st.w r5, 0x00000004[r3]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_idqcom.c", 283
	movhi HIGHW1(#_f4_vdc_inv0_lpf), r0, r2
	ld.w LOWW(#_f4_vdc_inv0_lpf)[r2], r8
	movhi HIGHW1(#_f4_speed_inv0_abs), r0, r2
	ld.w LOWW(#_f4_speed_inv0_abs)[r2], r6
	movea 0x00000008, r3, r2
	st.w r2, 0x00000000[r3]
	mov #_f4_id_inv0_ctrl, r9
	jarl _u1_tq_map_get, r31
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_idqcom.c", 286
	ld.w 0x00000008[r3], r2
	movhi HIGHW1(#_f4_speed_inv0_lpf), r0, r5
	ld.w LOWW(#_f4_speed_inv0_lpf)[r5], r5
	cmpf.s 0x00000007, r20, r5
	trfsr 0
	bz9 .BB.LABEL.1_42
.BB.LABEL.1_41:	; if_then_bb334
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_idqcom.c", 288
	negf.s r2, r2
.BB.LABEL.1_42:	; if_else_bb337
	movhi HIGHW1(#_f4_iq_inv0_ctrl), r0, r5
	st.w r2, LOWW(#_f4_iq_inv0_ctrl)[r5]
	br9 .BB.LABEL.1_45
.BB.LABEL.1_43:	; if_then_bb320
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_idqcom.c", 276
	negf.s r5, r5
	br9 .BB.LABEL.1_39
.BB.LABEL.1_44:	; if_else_bb340
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_idqcom.c", 297
	movhi HIGHW1(#_f4_id_inv0_ctrl), r0, r2
	st.w r0, LOWW(#_f4_id_inv0_ctrl)[r2]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_idqcom.c", 298
	movhi HIGHW1(#_f4_iq_inv0_ctrl), r0, r2
	st.w r0, LOWW(#_f4_iq_inv0_ctrl)[r2]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_idqcom.c", 300
	movhi HIGHW1(#_f4_tq_inv0_ref_tmp), r0, r2
	st.w r0, LOWW(#_f4_tq_inv0_ref_tmp)[r2]
.BB.LABEL.1_45:	; bb343
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_idqcom.c", 315
	movhi HIGHW1(#_u1_flag_mode_k_inv0_ldq_cmp), r0, r2
	ld.bu LOWW(#_u1_flag_mode_k_inv0_ldq_cmp)[r2], r2
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.1_53
.BB.LABEL.1_46:	; bb347
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_idqcom.c", 321
	movhi HIGHW1(#_f4_speed_inv0_abs), r0, r2
	ld.w LOWW(#_f4_speed_inv0_abs)[r2], r6
	movea 0x00000008, r3, r8
	movea 0x00000004, r3, r7
	jarl _u1_k_inv0_ldq_cmp_map_get, r31
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_idqcom.c", 323
	ld.w 0x00000004[r3], r2
	movhi 0x00004000, r0, r5
	cmpf.s 0x00000007, r2, r5
	trfsr 0
	bz9 .BB.LABEL.1_48
.BB.LABEL.1_47:	; bb347.bb366_crit_edge
	movhi 0x00004000, r0, r2
	br9 .BB.LABEL.1_49
.BB.LABEL.1_48:	; bb354
	movhi 0x00003F00, r0, r5
	cmpf.s 0x00000004, r2, r5
	cmovf.s 0, r5, r2, r2
.BB.LABEL.1_49:	; bb366
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_idqcom.c", 324
	ld.w 0x00000008[r3], r5
	movhi HIGHW1(#_f4_k_inv0_ld_cmp), r0, r6
	st.w r2, LOWW(#_f4_k_inv0_ld_cmp)[r6]
	movhi 0x00004000, r0, r2
	cmpf.s 0x00000007, r5, r2
	trfsr 0
	bz9 .BB.LABEL.1_51
.BB.LABEL.1_50:	; bb366.bb385_crit_edge
	movhi 0x00004000, r0, r5
	br9 .BB.LABEL.1_52
.BB.LABEL.1_51:	; bb373
	movhi 0x00003F00, r0, r2
	cmpf.s 0x00000004, r5, r2
	cmovf.s 0, r2, r5, r5
.BB.LABEL.1_52:	; bb385
	movhi HIGHW1(#_f4_k_inv0_lq_cmp), r0, r2
	st.w r5, LOWW(#_f4_k_inv0_lq_cmp)[r2]
.BB.LABEL.1_53:	; return
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_idqcom.c", 332
	dispose 0x0000000C, 0x00000041, [r31]
_fb_1ms_inv0_idqcom_init:
	.stack _fb_1ms_inv0_idqcom_init = 0
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_idqcom.c", 348
	movhi HIGHW1(#_u1_flag_inv0_derating_status), r0, r2
	st.b r0, LOWW(#_u1_flag_inv0_derating_status)[r2]
	movhi 0x00003F80, r0, r2
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_idqcom.c", 350
	movhi HIGHW1(#_f4_k_inv0_tmp_igbt_limit), r0, r5
	st.w r2, LOWW(#_f4_k_inv0_tmp_igbt_limit)[r5]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_idqcom.c", 351
	movhi HIGHW1(#_f4_tmp_inv0_igbt_limit_start), r0, r5
	movhi 0x0000430C, r0, r6
	st.w r6, LOWW(#_f4_tmp_inv0_igbt_limit_start)[r5]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_idqcom.c", 352
	movhi HIGHW1(#_f4_tmp_inv0_igbt_limit_fin), r0, r5
	movhi 0x00004316, r0, r6
	st.w r6, LOWW(#_f4_tmp_inv0_igbt_limit_fin)[r5]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_idqcom.c", 354
	movhi HIGHW1(#_f4_k_inv0_tmp_mot1_limit), r0, r5
	st.w r2, LOWW(#_f4_k_inv0_tmp_mot1_limit)[r5]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_idqcom.c", 355
	movhi HIGHW1(#_f4_tmp_inv0_mot1_limit_start), r0, r5
	movhi 0x00004320, r0, r6
	st.w r6, LOWW(#_f4_tmp_inv0_mot1_limit_start)[r5]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_idqcom.c", 356
	movhi HIGHW1(#_f4_tmp_inv0_mot1_limit_fin), r0, r5
	movhi 0x00004334, r0, r6
	st.w r6, LOWW(#_f4_tmp_inv0_mot1_limit_fin)[r5]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_idqcom.c", 358
	movhi HIGHW1(#_f4_k_inv0_tmp_mot2_limit), r0, r5
	st.w r2, LOWW(#_f4_k_inv0_tmp_mot2_limit)[r5]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_idqcom.c", 359
	movhi HIGHW1(#_f4_tmp_inv0_mot2_limit_start), r0, r5
	movhi 0x0000437A, r0, r6
	st.w r6, LOWW(#_f4_tmp_inv0_mot2_limit_start)[r5]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_idqcom.c", 360
	movhi HIGHW1(#_f4_tmp_inv0_mot2_limit_fin), r0, r5
	movhi 0x00004396, r0, r6
	st.w r6, LOWW(#_f4_tmp_inv0_mot2_limit_fin)[r5]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_idqcom.c", 362
	movhi HIGHW1(#_f4_k_inv0_tq_limit), r0, r5
	st.w r2, LOWW(#_f4_k_inv0_tq_limit)[r5]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_idqcom.c", 369
	movhi HIGHW1(#_u1_flag_mode_inv0_idqcom), r0, r5
	st.b r0, LOWW(#_u1_flag_mode_inv0_idqcom)[r5]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_idqcom.c", 371
	movhi HIGHW1(#_f4_id_inv0_ctrl), r0, r5
	st.w r0, LOWW(#_f4_id_inv0_ctrl)[r5]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_idqcom.c", 372
	movhi HIGHW1(#_f4_iq_inv0_ctrl), r0, r5
	st.w r0, LOWW(#_f4_iq_inv0_ctrl)[r5]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_idqcom.c", 378
	movhi HIGHW1(#_f4_irms_inv0_ref), r0, r5
	st.w r0, LOWW(#_f4_irms_inv0_ref)[r5]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_idqcom.c", 379
	movhi HIGHW1(#_f4_irms_inv0_ref_tmp), r0, r5
	st.w r0, LOWW(#_f4_irms_inv0_ref_tmp)[r5]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_idqcom.c", 381
	movhi HIGHW1(#_f4_theta_inv0_ref), r0, r5
	st.w r0, LOWW(#_f4_theta_inv0_ref)[r5]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_idqcom.c", 383
	movhi HIGHW1(#_f4_dirms_inv0_ref_up), r0, r5
	movhi 0x00004020, r0, r6
	st.w r6, LOWW(#_f4_dirms_inv0_ref_up)[r5]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_idqcom.c", 389
	movhi HIGHW1(#_f4_tq_inv0_ref), r0, r5
	st.w r0, LOWW(#_f4_tq_inv0_ref)[r5]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_idqcom.c", 390
	movhi HIGHW1(#_f4_tq_inv0_ref_tmp), r0, r5
	st.w r0, LOWW(#_f4_tq_inv0_ref_tmp)[r5]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_idqcom.c", 392
	movhi HIGHW1(#_f4_dtq_inv0_ref_up), r0, r5
	mov 0x3CA3D70A, r6
	st.w r6, LOWW(#_f4_dtq_inv0_ref_up)[r5]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_idqcom.c", 394
	movhi HIGHW1(#_f4_tq_inv0_ref_max), r0, r5
	st.w r0, LOWW(#_f4_tq_inv0_ref_max)[r5]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_idqcom.c", 395
	movhi HIGHW1(#_f4_tq_inv0_ref_min), r0, r5
	st.w r0, LOWW(#_f4_tq_inv0_ref_min)[r5]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_idqcom.c", 397
	movhi HIGHW1(#_f4_tq_inv0_ref_max_tmp), r0, r5
	st.w r0, LOWW(#_f4_tq_inv0_ref_max_tmp)[r5]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_idqcom.c", 398
	movhi HIGHW1(#_f4_tq_inv0_ref_min_tmp), r0, r5
	st.w r0, LOWW(#_f4_tq_inv0_ref_min_tmp)[r5]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_idqcom.c", 400
	movhi HIGHW1(#_f4_speed_inv0_abs), r0, r5
	st.w r0, LOWW(#_f4_speed_inv0_abs)[r5]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_idqcom.c", 406
	movhi HIGHW1(#_u1_flag_mode_k_inv0_ldq_cmp), r0, r5
	st.b r0, LOWW(#_u1_flag_mode_k_inv0_ldq_cmp)[r5]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_idqcom.c", 407
	movhi HIGHW1(#_f4_k_inv0_ld_cmp), r0, r5
	st.w r2, LOWW(#_f4_k_inv0_ld_cmp)[r5]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_idqcom.c", 408
	movhi HIGHW1(#_f4_k_inv0_lq_cmp), r0, r5
	st.w r2, LOWW(#_f4_k_inv0_lq_cmp)[r5]
	jmp [r31]
	.section .bss, bss
_u1_flag_inv0_derating_status:
	.ds (1)
	.align 4
_f4_k_inv0_tmp_igbt_limit:
	.ds (4)
	.align 4
_f4_tmp_inv0_igbt_limit_start:
	.ds (4)
	.align 4
_f4_tmp_inv0_igbt_limit_fin:
	.ds (4)
	.align 4
_f4_k_inv0_tmp_mot1_limit:
	.ds (4)
	.align 4
_f4_tmp_inv0_mot1_limit_start:
	.ds (4)
	.align 4
_f4_tmp_inv0_mot1_limit_fin:
	.ds (4)
	.align 4
_f4_k_inv0_tmp_mot2_limit:
	.ds (4)
	.align 4
_f4_tmp_inv0_mot2_limit_start:
	.ds (4)
	.align 4
_f4_tmp_inv0_mot2_limit_fin:
	.ds (4)
	.align 4
_f4_k_inv0_tq_limit:
	.ds (4)
_u1_flag_mode_inv0_idqcom:
	.ds (1)
	.align 4
_f4_id_inv0_ctrl:
	.ds (4)
	.align 4
_f4_iq_inv0_ctrl:
	.ds (4)
	.align 4
_f4_irms_inv0_ref:
	.ds (4)
	.align 4
_f4_theta_inv0_ref:
	.ds (4)
	.align 4
_f4_irms_inv0_ref_tmp:
	.ds (4)
	.align 4
_f4_dirms_inv0_ref_up:
	.ds (4)
	.align 4
_f4_tq_inv0_ref:
	.ds (4)
	.align 4
_f4_tq_inv0_ref_tmp:
	.ds (4)
	.align 4
_f4_dtq_inv0_ref_up:
	.ds (4)
	.align 4
_f4_tq_inv0_ref_max:
	.ds (4)
	.align 4
_f4_tq_inv0_ref_min:
	.ds (4)
	.align 4
_f4_tq_inv0_ref_max_tmp:
	.ds (4)
	.align 4
_f4_tq_inv0_ref_min_tmp:
	.ds (4)
	.align 4
_f4_speed_inv0_abs:
	.ds (4)
_u1_flag_mode_k_inv0_ldq_cmp:
	.ds (1)
	.align 4
_f4_k_inv0_ld_cmp:
	.ds (4)
	.align 4
_f4_k_inv0_lq_cmp:
	.ds (4)
