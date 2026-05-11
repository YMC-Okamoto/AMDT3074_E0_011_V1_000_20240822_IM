#CC-RH Compiler RH850 Assembler Source
#@	CC-RH Version : V1.03.00 [21 Aug 2015]
#@	Command : src\fi_1ms_inv0_adctrl.c -Xobj_path=DefaultBuild -Xcommon=rh850 -Xcpu=g3m -c -g -Ospeed -Oinline_size -Isrc -I..\Common -D__CLK_HSB=80,__CLK_LSB=40,__CLKC_HSB=80,__CLK_CLSB=40 -Xasm_path=DefaultBuild
#@	compiled at Mon May 01 22:14:25 2017

	.file "src\fi_1ms_inv0_adctrl.c"

	$reg_mode 32

	.extern _s2_ad001
	.extern _s2_ad002
	.extern _s2_ad100
	.extern _s2_ad101
	.extern _s2_ad102
	.extern _s2_ad110
	.extern _s2_ad111
	.extern _s2_ad112
	.public _th_NCP18XH103, 36
	.public _th_103JT, 36
	.public _th_SEMITEC, 36
	.public _u1_flag_tmp_inv0_igbt_select, 1
	.public _f4_tmp_inv0_int, 4
	.public _f4_tmp_inv0_igbt_up, 4
	.public _f4_tmp_inv0_igbt_vp, 4
	.public _f4_tmp_inv0_igbt_wp, 4
	.public _f4_tmp_inv0_igbt_un, 4
	.public _f4_tmp_inv0_igbt_vn, 4
	.public _f4_tmp_inv0_igbt_wn, 4
	.public _f4_tmp_inv0_igbtp_max, 4
	.public _f4_tmp_inv0_igbtn_max, 4
	.public _f4_tmp_inv0_igbt_max, 4
	.public _f4_tmp_inv0_mot1, 4
	.public _f4_tmp_inv0_mot2, 4
	.public _f4_tmp_inv0_mot_max, 4
	.public _f4_wclpf_inv0_tmp, 4
	.public _fi_1ms_inv0_adctrl
	.extern _f4_thermister_calc_2_8
	.extern _fi_1ms_inv0_capctrl
	.public _fb_1ms_inv0_adctrl_init

	.section .text, text
_fi_1ms_inv0_adctrl:
	.stack _fi_1ms_inv0_adctrl = 52
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_adctrl.c", 83
	prepare 0x00000679, 0x00000018
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_adctrl.c", 94
	movhi HIGHW1(#_u1_flag_tmp_inv0_igbt_select), r0, r2
	ld.bu LOWW(#_u1_flag_tmp_inv0_igbt_select)[r2], r2
	cmp 0x00000000, r2
	bnz17 .BB.LABEL.1_8
.BB.LABEL.1_1:	; if_then_bb
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_adctrl.c", 96
	movhi HIGHW1(#_s2_ad100), r0, r2
	ld.hu LOWW(#_s2_ad100)[r2], r6
	mov #_th_103JT, r20
	ld.w 0x0000000C[r20], r2
	ld.w 0x00000010[r20], r5
	ld.w 0x00000014[r20], r10
	ld.w 0x00000018[r20], r11
	ld.w 0x0000001C[r20], r12
	ld.w 0x00000020[r20], r13
	ld23.dw 0x00000004[r20], r8
	ld.w 0x00000000[r20], r7
	st.w r2, 0x00000000[r3]
	st.w r5, 0x00000004[r3]
	st.w r10, 0x00000008[r3]
	st.w r11, 0x0000000C[r3]
	st.w r12, 0x00000010[r3]
	st.w r13, 0x00000014[r3]
	jarl _f4_thermister_calc_2_8, r31
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_adctrl.c", 101
	ld.w 0x0000000C[r20], r2
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_adctrl.c", 97
	movhi HIGHW1(#_f4_tmp_inv0_igbt_up), r0, r21
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_adctrl.c", 101
	ld.w 0x00000010[r20], r5
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_adctrl.c", 98
	movhi HIGHW1(#_f4_wclpf_inv0_tmp), r0, r22
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_adctrl.c", 101
	ld.w 0x00000014[r20], r11
	movhi HIGHW1(#_s2_ad101), r0, r6
	ld.w 0x00000018[r20], r12
	ld.w 0x0000001C[r20], r13
	ld.w 0x00000020[r20], r14
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_adctrl.c", 97
	ld.w LOWW(#_f4_tmp_inv0_igbt_up)[r21], r7
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_adctrl.c", 98
	ld.w LOWW(#_f4_wclpf_inv0_tmp)[r22], r8
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_adctrl.c", 101
	ld.hu LOWW(#_s2_ad101)[r6], r6
	mov 0x3A83126F, r23
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_adctrl.c", 97
	subf.s r7, r10, r9
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_adctrl.c", 101
	st.w r2, 0x00000000[r3]
	st.w r5, 0x00000004[r3]
	st.w r11, 0x00000008[r3]
	st.w r12, 0x0000000C[r3]
	st.w r13, 0x00000010[r3]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_adctrl.c", 98
	mulf.s r9, r8, r8
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_adctrl.c", 101
	st.w r14, 0x00000014[r3]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_adctrl.c", 98
	mulf.s r23, r8, r8
	addf.s r8, r7, r7
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_adctrl.c", 101
	ld23.dw 0x00000004[r20], r8
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_adctrl.c", 98
	st.w r7, LOWW(#_f4_tmp_inv0_igbt_up)[r21]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_adctrl.c", 101
	ld.w 0x00000000[r20], r7
	jarl _f4_thermister_calc_2_8, r31
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_adctrl.c", 103
	ld.w LOWW(#_f4_wclpf_inv0_tmp)[r22], r2
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_adctrl.c", 102
	movhi HIGHW1(#_f4_tmp_inv0_igbt_un), r0, r7
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_adctrl.c", 106
	ld.w 0x0000000C[r20], r5
	movhi HIGHW1(#_s2_ad102), r0, r6
	ld.w 0x00000010[r20], r11
	ld.w 0x00000014[r20], r12
	ld.w 0x00000018[r20], r13
	ld.w 0x0000001C[r20], r14
	ld.w 0x00000020[r20], r15
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_adctrl.c", 102
	ld.w LOWW(#_f4_tmp_inv0_igbt_un)[r7], r8
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_adctrl.c", 106
	ld.hu LOWW(#_s2_ad102)[r6], r6
	st.w r5, 0x00000000[r3]
	st.w r11, 0x00000004[r3]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_adctrl.c", 102
	subf.s r8, r10, r9
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_adctrl.c", 106
	st.w r12, 0x00000008[r3]
	st.w r13, 0x0000000C[r3]
	st.w r14, 0x00000010[r3]
	st.w r15, 0x00000014[r3]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_adctrl.c", 103
	mulf.s r9, r2, r2
	mulf.s r23, r2, r2
	addf.s r2, r8, r2
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_adctrl.c", 106
	ld23.dw 0x00000004[r20], r8
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_adctrl.c", 103
	st.w r2, LOWW(#_f4_tmp_inv0_igbt_un)[r7]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_adctrl.c", 106
	ld.w 0x00000000[r20], r7
	jarl _f4_thermister_calc_2_8, r31
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_adctrl.c", 108
	ld.w LOWW(#_f4_wclpf_inv0_tmp)[r22], r2
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_adctrl.c", 107
	movhi HIGHW1(#_f4_tmp_inv0_igbt_vp), r0, r24
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_adctrl.c", 111
	ld.w 0x0000000C[r20], r5
	movhi HIGHW1(#_s2_ad110), r0, r6
	ld.w 0x00000010[r20], r11
	ld.w 0x00000014[r20], r12
	ld.w 0x00000018[r20], r13
	ld.w 0x0000001C[r20], r14
	ld.w 0x00000020[r20], r15
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_adctrl.c", 107
	ld.w LOWW(#_f4_tmp_inv0_igbt_vp)[r24], r7
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_adctrl.c", 111
	ld.hu LOWW(#_s2_ad110)[r6], r6
	st.w r5, 0x00000000[r3]
	st.w r11, 0x00000004[r3]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_adctrl.c", 107
	subf.s r7, r10, r8
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_adctrl.c", 111
	st.w r12, 0x00000008[r3]
	st.w r13, 0x0000000C[r3]
	st.w r14, 0x00000010[r3]
	st.w r15, 0x00000014[r3]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_adctrl.c", 108
	mulf.s r8, r2, r2
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_adctrl.c", 111
	ld23.dw 0x00000004[r20], r8
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_adctrl.c", 108
	mulf.s r23, r2, r2
	addf.s r2, r7, r2
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_adctrl.c", 111
	ld.w 0x00000000[r20], r7
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_adctrl.c", 108
	st.w r2, LOWW(#_f4_tmp_inv0_igbt_vp)[r24]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_adctrl.c", 111
	jarl _f4_thermister_calc_2_8, r31
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_adctrl.c", 113
	ld.w LOWW(#_f4_wclpf_inv0_tmp)[r22], r2
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_adctrl.c", 112
	movhi HIGHW1(#_f4_tmp_inv0_igbt_vn), r0, r7
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_adctrl.c", 116
	ld.w 0x0000000C[r20], r5
	movhi HIGHW1(#_s2_ad111), r0, r6
	ld.w 0x00000010[r20], r11
	ld.w 0x00000014[r20], r12
	ld.w 0x00000018[r20], r13
	ld.w 0x0000001C[r20], r14
	ld.w 0x00000020[r20], r15
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_adctrl.c", 112
	ld.w LOWW(#_f4_tmp_inv0_igbt_vn)[r7], r8
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_adctrl.c", 116
	ld.hu LOWW(#_s2_ad111)[r6], r6
	st.w r5, 0x00000000[r3]
	st.w r11, 0x00000004[r3]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_adctrl.c", 112
	subf.s r8, r10, r9
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_adctrl.c", 116
	st.w r12, 0x00000008[r3]
	st.w r13, 0x0000000C[r3]
	st.w r14, 0x00000010[r3]
	st.w r15, 0x00000014[r3]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_adctrl.c", 113
	mulf.s r9, r2, r2
	mulf.s r23, r2, r2
	addf.s r2, r8, r2
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_adctrl.c", 116
	ld23.dw 0x00000004[r20], r8
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_adctrl.c", 113
	st.w r2, LOWW(#_f4_tmp_inv0_igbt_vn)[r7]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_adctrl.c", 116
	ld.w 0x00000000[r20], r7
	jarl _f4_thermister_calc_2_8, r31
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_adctrl.c", 118
	ld.w LOWW(#_f4_wclpf_inv0_tmp)[r22], r2
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_adctrl.c", 117
	movhi HIGHW1(#_f4_tmp_inv0_igbt_wp), r0, r25
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_adctrl.c", 121
	ld.w 0x0000000C[r20], r5
	movhi HIGHW1(#_s2_ad112), r0, r6
	ld.w 0x00000010[r20], r11
	ld.w 0x00000014[r20], r12
	ld.w 0x00000018[r20], r13
	ld.w 0x0000001C[r20], r14
	ld.w 0x00000020[r20], r15
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_adctrl.c", 117
	ld.w LOWW(#_f4_tmp_inv0_igbt_wp)[r25], r7
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_adctrl.c", 121
	ld.hu LOWW(#_s2_ad112)[r6], r6
	st.w r5, 0x00000000[r3]
	st.w r11, 0x00000004[r3]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_adctrl.c", 117
	subf.s r7, r10, r8
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_adctrl.c", 121
	st.w r12, 0x00000008[r3]
	st.w r13, 0x0000000C[r3]
	st.w r14, 0x00000010[r3]
	st.w r15, 0x00000014[r3]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_adctrl.c", 118
	mulf.s r8, r2, r2
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_adctrl.c", 121
	ld23.dw 0x00000004[r20], r8
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_adctrl.c", 118
	mulf.s r23, r2, r2
	addf.s r2, r7, r2
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_adctrl.c", 121
	ld.w 0x00000000[r20], r7
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_adctrl.c", 118
	st.w r2, LOWW(#_f4_tmp_inv0_igbt_wp)[r25]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_adctrl.c", 121
	jarl _f4_thermister_calc_2_8, r31
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_adctrl.c", 123
	ld.w LOWW(#_f4_wclpf_inv0_tmp)[r22], r2
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_adctrl.c", 122
	movhi HIGHW1(#_f4_tmp_inv0_igbt_wn), r0, r8
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_adctrl.c", 126
	ld.w LOWW(#_f4_tmp_inv0_igbt_up)[r21], r5
	ld.w LOWW(#_f4_tmp_inv0_igbt_vp)[r24], r6
	ld.w LOWW(#_f4_tmp_inv0_igbt_wp)[r25], r7
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_adctrl.c", 122
	ld.w LOWW(#_f4_tmp_inv0_igbt_wn)[r8], r9
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_adctrl.c", 126
	cmpf.s 0x00000004, r6, r5
	cmovf.s 0, r5, r6, r11
	cmpf.s 0x00000004, r7, r11
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_adctrl.c", 122
	subf.s r9, r10, r7
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_adctrl.c", 126
	trfsr 0
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_adctrl.c", 123
	mulf.s r7, r2, r2
	mulf.s r23, r2, r2
	addf.s r2, r9, r2
	st.w r2, LOWW(#_f4_tmp_inv0_igbt_wn)[r8]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_adctrl.c", 126
	bz9 .BB.LABEL.1_3
.BB.LABEL.1_2:	; if_then_bb.bb100_crit_edge
	mov #_f4_tmp_inv0_igbt_wp, r5
	br9 .BB.LABEL.1_4
.BB.LABEL.1_3:	; bb84
	cmpf.s 0x00000004, r6, r5
	mov #_f4_tmp_inv0_igbt_vp, r5
	mov #_f4_tmp_inv0_igbt_up, r6
	cmovf.s 0, r6, r5, r5
.BB.LABEL.1_4:	; bb100
	ld.w 0x00000000[r5], r5
	movhi HIGHW1(#_f4_tmp_inv0_igbtp_max), r0, r6
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_adctrl.c", 127
	movhi HIGHW1(#_f4_tmp_inv0_igbt_un), r0, r7
	ld.w LOWW(#_f4_tmp_inv0_igbt_un)[r7], r7
	movhi HIGHW1(#_f4_tmp_inv0_igbt_vn), r0, r8
	ld.w LOWW(#_f4_tmp_inv0_igbt_vn)[r8], r8
	st.w r5, LOWW(#_f4_tmp_inv0_igbtp_max)[r6]
	cmpf.s 0x00000004, r8, r7
	cmovf.s 0, r7, r8, r6
	cmpf.s 0x00000004, r2, r6
	trfsr 0
	bz9 .BB.LABEL.1_6
.BB.LABEL.1_5:	; bb100.bb134_crit_edge
	mov #_f4_tmp_inv0_igbt_wn, r7
	br9 .BB.LABEL.1_7
.BB.LABEL.1_6:	; bb118
	cmpf.s 0x00000004, r8, r7
	mov #_f4_tmp_inv0_igbt_vn, r7
	mov #_f4_tmp_inv0_igbt_un, r2
	cmovf.s 0, r2, r7, r7
.BB.LABEL.1_7:	; bb134
	ld.w 0x00000000[r7], r2
	movhi HIGHW1(#_f4_tmp_inv0_igbtn_max), r0, r6
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_adctrl.c", 129
	movhi HIGHW1(#_f4_tmp_inv0_igbt_max), r0, r7
	st.w r2, LOWW(#_f4_tmp_inv0_igbtn_max)[r6]
	cmpf.s 0x00000004, r2, r5
	cmovf.s 0, r5, r2, r2
	st.w r2, LOWW(#_f4_tmp_inv0_igbt_max)[r7]
	br9 .BB.LABEL.1_9
.BB.LABEL.1_8:	; if_else_bb
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_adctrl.c", 133
	jarl _fi_1ms_inv0_capctrl, r31
.BB.LABEL.1_9:	; if_break_bb
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_adctrl.c", 140
	movhi HIGHW1(#_s2_ad001), r0, r2
	ld.hu LOWW(#_s2_ad001)[r2], r6
	mov #_th_SEMITEC, r20
	ld.w 0x0000000C[r20], r2
	ld.w 0x00000010[r20], r5
	ld.w 0x00000014[r20], r10
	ld.w 0x00000018[r20], r11
	ld.w 0x0000001C[r20], r12
	ld.w 0x00000020[r20], r13
	ld23.dw 0x00000004[r20], r8
	ld.w 0x00000000[r20], r7
	st.w r2, 0x00000000[r3]
	st.w r5, 0x00000004[r3]
	st.w r10, 0x00000008[r3]
	st.w r11, 0x0000000C[r3]
	st.w r12, 0x00000010[r3]
	st.w r13, 0x00000014[r3]
	jarl _f4_thermister_calc_2_8, r31
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_adctrl.c", 145
	ld.w 0x0000000C[r20], r2
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_adctrl.c", 141
	movhi HIGHW1(#_f4_tmp_inv0_mot1), r0, r21
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_adctrl.c", 145
	ld.w 0x00000010[r20], r5
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_adctrl.c", 142
	movhi HIGHW1(#_f4_wclpf_inv0_tmp), r0, r22
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_adctrl.c", 145
	ld.w 0x00000014[r20], r11
	movhi HIGHW1(#_s2_ad002), r0, r6
	ld.w 0x00000018[r20], r12
	ld.w 0x0000001C[r20], r13
	ld.w 0x00000020[r20], r14
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_adctrl.c", 141
	ld.w LOWW(#_f4_tmp_inv0_mot1)[r21], r7
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_adctrl.c", 142
	ld.w LOWW(#_f4_wclpf_inv0_tmp)[r22], r8
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_adctrl.c", 145
	ld.hu LOWW(#_s2_ad002)[r6], r6
	mov 0x3A83126F, r23
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_adctrl.c", 141
	subf.s r7, r10, r9
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_adctrl.c", 145
	st.w r2, 0x00000000[r3]
	st.w r5, 0x00000004[r3]
	st.w r11, 0x00000008[r3]
	st.w r12, 0x0000000C[r3]
	st.w r13, 0x00000010[r3]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_adctrl.c", 142
	mulf.s r9, r8, r8
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_adctrl.c", 145
	st.w r14, 0x00000014[r3]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_adctrl.c", 142
	mulf.s r23, r8, r8
	addf.s r8, r7, r7
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_adctrl.c", 145
	ld23.dw 0x00000004[r20], r8
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_adctrl.c", 142
	st.w r7, LOWW(#_f4_tmp_inv0_mot1)[r21]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_adctrl.c", 145
	ld.w 0x00000000[r20], r7
	jarl _f4_thermister_calc_2_8, r31
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_adctrl.c", 147
	ld.w LOWW(#_f4_wclpf_inv0_tmp)[r22], r2
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_adctrl.c", 146
	movhi HIGHW1(#_f4_tmp_inv0_mot2), r0, r7
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_adctrl.c", 150
	ld.w LOWW(#_f4_tmp_inv0_mot1)[r21], r5
	movhi HIGHW1(#_f4_tmp_inv0_mot_max), r0, r9
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_adctrl.c", 146
	ld.w LOWW(#_f4_tmp_inv0_mot2)[r7], r8
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_adctrl.c", 157
	movhi HIGHW1(#_s2_ad102), r0, r6
	ld.hu LOWW(#_s2_ad102)[r6], r6
	mov #_th_NCP18XH103, r11
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_adctrl.c", 146
	subf.s r8, r10, r10
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_adctrl.c", 157
	ld.w 0x0000000C[r11], r12
	ld.w 0x00000010[r11], r13
	ld.w 0x00000014[r11], r14
	ld.w 0x00000018[r11], r15
	ld.w 0x0000001C[r11], r16
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_adctrl.c", 147
	mulf.s r10, r2, r2
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_adctrl.c", 157
	ld.w 0x00000020[r11], r17
	st.w r12, 0x00000000[r3]
	st.w r13, 0x00000004[r3]
	st.w r14, 0x00000008[r3]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_adctrl.c", 147
	mulf.s r23, r2, r2
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_adctrl.c", 157
	st.w r15, 0x0000000C[r3]
	st.w r16, 0x00000010[r3]
	st.w r17, 0x00000014[r3]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_adctrl.c", 147
	addf.s r2, r8, r2
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_adctrl.c", 150
	cmpf.s 0x00000004, r2, r5
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_adctrl.c", 147
	st.w r2, LOWW(#_f4_tmp_inv0_mot2)[r7]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_adctrl.c", 157
	ld.w 0x00000000[r11], r7
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_adctrl.c", 150
	cmovf.s 0, r5, r2, r2
	st.w r2, LOWW(#_f4_tmp_inv0_mot_max)[r9]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_adctrl.c", 157
	ld23.dw 0x00000004[r11], r8
	jarl _f4_thermister_calc_2_8, r31
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_adctrl.c", 158
	dispose 0x00000018, 0x00000679, [r31]
_fb_1ms_inv0_adctrl_init:
	.stack _fb_1ms_inv0_adctrl_init = 0
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_adctrl.c", 178
	movhi HIGHW1(#_f4_tmp_inv0_int), r0, r2
	st.w r0, LOWW(#_f4_tmp_inv0_int)[r2]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_adctrl.c", 180
	movhi HIGHW1(#_f4_tmp_inv0_igbt_up), r0, r2
	st.w r0, LOWW(#_f4_tmp_inv0_igbt_up)[r2]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_adctrl.c", 181
	movhi HIGHW1(#_f4_tmp_inv0_igbt_vp), r0, r2
	st.w r0, LOWW(#_f4_tmp_inv0_igbt_vp)[r2]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_adctrl.c", 182
	movhi HIGHW1(#_f4_tmp_inv0_igbt_wp), r0, r2
	st.w r0, LOWW(#_f4_tmp_inv0_igbt_wp)[r2]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_adctrl.c", 183
	movhi HIGHW1(#_f4_tmp_inv0_igbt_un), r0, r2
	st.w r0, LOWW(#_f4_tmp_inv0_igbt_un)[r2]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_adctrl.c", 184
	movhi HIGHW1(#_f4_tmp_inv0_igbt_vn), r0, r2
	st.w r0, LOWW(#_f4_tmp_inv0_igbt_vn)[r2]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_adctrl.c", 185
	movhi HIGHW1(#_f4_tmp_inv0_igbt_wn), r0, r2
	st.w r0, LOWW(#_f4_tmp_inv0_igbt_wn)[r2]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_adctrl.c", 187
	movhi HIGHW1(#_f4_tmp_inv0_mot1), r0, r2
	st.w r0, LOWW(#_f4_tmp_inv0_mot1)[r2]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_adctrl.c", 188
	movhi HIGHW1(#_f4_tmp_inv0_mot2), r0, r2
	st.w r0, LOWW(#_f4_tmp_inv0_mot2)[r2]
	movhi 0x000040A0, r0, r2
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_adctrl.c", 190
	movhi HIGHW1(#_f4_wclpf_inv0_tmp), r0, r5
	st.w r2, LOWW(#_f4_wclpf_inv0_tmp)[r5]
	movhi 0x000041C8, r0, r7
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_adctrl.c", 192
	mov #_th_NCP18XH103, r5
	mov 0x45534000, r6
	st.w r6, 0x00000000[r5]
	movhi 0x000044FA, r0, r9
	mov 0x461C4000, r6
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_adctrl.c", 193
	st.w r6, 0x00000004[r5]
	movhi 0x00004580, r0, r10
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_adctrl.c", 194
	st.w r7, 0x00000008[r5]
	mov 0x3A83126F, r8
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_adctrl.c", 195
	st.w r8, 0x0000000C[r5]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_adctrl.c", 196
	st.w r9, 0x00000010[r5]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_adctrl.c", 197
	st.w r0, 0x00000014[r5]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_adctrl.c", 198
	st.w r2, 0x00000018[r5]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_adctrl.c", 199
	st.w r10, 0x0000001C[r5]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_adctrl.c", 200
	st.w r0, 0x00000020[r5]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_adctrl.c", 202
	mov #_th_SEMITEC, r5
	mov 0x4553B000, r11
	st.w r11, 0x00000000[r5]
	movhi 0x0000447A, r0, r11
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_adctrl.c", 203
	st.w r11, 0x00000004[r5]
	movhi 0x000042C8, r0, r11
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_adctrl.c", 204
	st.w r11, 0x00000008[r5]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_adctrl.c", 205
	st.w r8, 0x0000000C[r5]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_adctrl.c", 206
	st.w r9, 0x00000010[r5]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_adctrl.c", 207
	st.w r0, 0x00000014[r5]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_adctrl.c", 208
	st.w r2, 0x00000018[r5]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_adctrl.c", 209
	st.w r10, 0x0000001C[r5]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_adctrl.c", 210
	st.w r0, 0x00000020[r5]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_adctrl.c", 212
	mov #_th_103JT, r5
	mov 0x4556B000, r9
	st.w r9, 0x00000000[r5]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_adctrl.c", 213
	st.w r6, 0x00000004[r5]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_adctrl.c", 214
	st.w r7, 0x00000008[r5]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_adctrl.c", 215
	st.w r8, 0x0000000C[r5]
	mov 0x44D05666, r6
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_adctrl.c", 216
	st.w r6, 0x00000010[r5]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_adctrl.c", 217
	st.w r0, 0x00000014[r5]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_adctrl.c", 218
	st.w r2, 0x00000018[r5]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_adctrl.c", 219
	st.w r10, 0x0000001C[r5]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_adctrl.c", 220
	st.w r0, 0x00000020[r5]
	jmp [r31]
	.section .bss, bss
	.align 4
_th_NCP18XH103:
	.ds (36)
	.align 4
_th_103JT:
	.ds (36)
	.align 4
_th_SEMITEC:
	.ds (36)
_u1_flag_tmp_inv0_igbt_select:
	.ds (1)
	.align 4
_f4_tmp_inv0_int:
	.ds (4)
	.align 4
_f4_tmp_inv0_igbt_up:
	.ds (4)
	.align 4
_f4_tmp_inv0_igbt_vp:
	.ds (4)
	.align 4
_f4_tmp_inv0_igbt_wp:
	.ds (4)
	.align 4
_f4_tmp_inv0_igbt_un:
	.ds (4)
	.align 4
_f4_tmp_inv0_igbt_vn:
	.ds (4)
	.align 4
_f4_tmp_inv0_igbt_wn:
	.ds (4)
	.align 4
_f4_tmp_inv0_igbtp_max:
	.ds (4)
	.align 4
_f4_tmp_inv0_igbtn_max:
	.ds (4)
	.align 4
_f4_tmp_inv0_igbt_max:
	.ds (4)
	.align 4
_f4_tmp_inv0_mot1:
	.ds (4)
	.align 4
_f4_tmp_inv0_mot2:
	.ds (4)
	.align 4
_f4_tmp_inv0_mot_max:
	.ds (4)
	.align 4
_f4_wclpf_inv0_tmp:
	.ds (4)
