#CC-RH Compiler RH850 Assembler Source
#@	CC-RH Version : V1.03.00 [21 Aug 2015]
#@	Command : src\fi_1ms_inv1_capctrl.c -Xobj_path=DefaultBuild -Xcommon=rh850 -Xcpu=g3m -c -g -Ospeed -Oinline_size -Isrc -I..\Common -D__CLK_HSB=80,__CLK_LSB=40,__CLKC_HSB=80,__CLK_CLSB=40 -Xasm_path=DefaultBuild
#@	compiled at Mon May 01 22:19:59 2017

	.file "src\fi_1ms_inv1_capctrl.c"

	$reg_mode 32

	.extern _u1_flag_err_eneble
	.extern _f4_tmp_inv0_igbt_up
	.extern _f4_tmp_inv0_igbt_vp
	.extern _f4_tmp_inv0_igbt_wp
	.extern _f4_tmp_inv0_igbt_un
	.extern _f4_tmp_inv0_igbt_vn
	.extern _f4_tmp_inv0_igbt_wn
	.extern _f4_tmp_inv0_igbtp_max
	.extern _f4_tmp_inv0_igbtn_max
	.extern _f4_tmp_inv0_igbt_max
	.public _u4_flag_inv0_ov_err, 4
	.public _u1_cap_inv0_seq_no, 1
	.public _u1_flag_inv0_ov, 1
	.public _u2_cnt_inv0_tmp_freq_cap, 2
	.public _u2_cnt_inv0_tmp_level_cap, 2
	.public _f4_duty_inv0_up, 4
	.public _f4_duty_inv0_vp, 4
	.public _f4_duty_inv0_wp, 4
	.public _f4_duty_inv0_un, 4
	.public _f4_duty_inv0_vn, 4
	.public _f4_duty_inv0_wn, 4
	.public _f4_tmp_inv0_igbt_max_inst, 4
	.public _f4_tmp_inv0_igbt_max_array, 512
	.public _u1_cnt_inv0_igbt_max_array, 1
	.public _u1_cnt_inv0_igbt_max_array_old, 1
	.public _f4_test_fast, 4
	.public _f4_test_slow, 4
	.public _f4_test_omega_fast, 4
	.public _f4_test_omega_slow, 4
	.public _f4_test_f_fast, 4
	.public _f4_test_f_slow, 4
	.public _fi_1ms_inv0_capctrl
	.public _fb_1ms_inv0_capctrl_init
	.public _fb_tmp_inv0_igbt_max_serch

	.section .text, text
_fi_1ms_inv0_capctrl:
	.stack _fi_1ms_inv0_capctrl = 0
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv1_capctrl.c", 95
	movhi HIGHW1(#_u1_flag_inv0_ov), r0, r2
	st.b r0, LOWW(#_u1_flag_inv0_ov)[r2]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv1_capctrl.c", 96
	movhi HIGHW1(#_u2_cnt_inv0_tmp_level_cap), r0, r2
	st.h r0, LOWW(#_u2_cnt_inv0_tmp_level_cap)[r2]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv1_capctrl.c", 97
	movhi HIGHW1(#_u2_cnt_inv0_tmp_freq_cap), r0, r2
	mov 0xFFFFFFFF, r5
	st.h r5, LOWW(#_u2_cnt_inv0_tmp_freq_cap)[r2]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv1_capctrl.c", 296
	movhi HIGHW1(#_f4_duty_inv0_up), r0, r2
	ld.w LOWW(#_f4_duty_inv0_up)[r2], r2
	movhi HIGHW1(#_f4_tmp_inv0_igbt_up), r0, r5
	mov 0x54C985F0, r6
	mov 0x4071B3C1, r7
	cvtf.sd r2, r12
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv1_capctrl.c", 297
	movhi HIGHW1(#_f4_duty_inv0_vp), r0, r10
	ld.w LOWW(#_f4_duty_inv0_vp)[r10], r10
	mov 0x9B3D07C8, r8
	mov 0x404E3F55, r9
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv1_capctrl.c", 296
	mulf.d r6, r12, r12
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv1_capctrl.c", 297
	cvtf.sd r10, r10
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv1_capctrl.c", 300
	movhi HIGHW1(#_f4_duty_inv0_vn), r0, r14
	ld.w LOWW(#_f4_duty_inv0_vn)[r14], r14
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv1_capctrl.c", 296
	subf.d r8, r12, r12
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv1_capctrl.c", 297
	mulf.d r6, r10, r10
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv1_capctrl.c", 296
	cvtf.ds r12, r2
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv1_capctrl.c", 299
	movhi HIGHW1(#_f4_duty_inv0_un), r0, r12
	ld.w LOWW(#_f4_duty_inv0_un)[r12], r12
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv1_capctrl.c", 297
	subf.d r8, r10, r10
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv1_capctrl.c", 299
	movhi HIGHW1(#_f4_tmp_inv0_igbt_un), r0, r13
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv1_capctrl.c", 296
	st.w r2, LOWW(#_f4_tmp_inv0_igbt_up)[r5]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv1_capctrl.c", 297
	cvtf.ds r10, r5
	movhi HIGHW1(#_f4_tmp_inv0_igbt_vp), r0, r10
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv1_capctrl.c", 298
	movhi HIGHW1(#_f4_tmp_inv0_igbt_wp), r0, r11
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv1_capctrl.c", 297
	st.w r5, LOWW(#_f4_tmp_inv0_igbt_vp)[r10]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv1_capctrl.c", 298
	movhi HIGHW1(#_f4_duty_inv0_wp), r0, r10
	ld.w LOWW(#_f4_duty_inv0_wp)[r10], r10
	cvtf.sd r10, r16
	mulf.d r6, r16, r16
	subf.d r8, r16, r16
	cvtf.ds r16, r10
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv1_capctrl.c", 299
	cvtf.sd r12, r16
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv1_capctrl.c", 304
	cmpf.s 0x00000004, r5, r2
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv1_capctrl.c", 299
	mulf.d r6, r16, r16
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv1_capctrl.c", 304
	cmovf.s 0, r2, r5, r15
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv1_capctrl.c", 298
	st.w r10, LOWW(#_f4_tmp_inv0_igbt_wp)[r11]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv1_capctrl.c", 299
	subf.d r8, r16, r16
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv1_capctrl.c", 304
	cmpf.s 0x00000004, r10, r15
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv1_capctrl.c", 299
	cvtf.ds r16, r11
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv1_capctrl.c", 304
	trfsr 0
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv1_capctrl.c", 299
	st.w r11, LOWW(#_f4_tmp_inv0_igbt_un)[r13]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv1_capctrl.c", 300
	cvtf.sd r14, r12
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv1_capctrl.c", 301
	movhi HIGHW1(#_f4_tmp_inv0_igbt_wn), r0, r14
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv1_capctrl.c", 300
	mulf.d r6, r12, r12
	subf.d r8, r12, r12
	cvtf.ds r12, r12
	movhi HIGHW1(#_f4_tmp_inv0_igbt_vn), r0, r13
	st.w r12, LOWW(#_f4_tmp_inv0_igbt_vn)[r13]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv1_capctrl.c", 301
	movhi HIGHW1(#_f4_duty_inv0_wn), r0, r13
	ld.w LOWW(#_f4_duty_inv0_wn)[r13], r13
	cvtf.sd r13, r16
	mulf.d r6, r16, r6
	subf.d r8, r6, r6
	cvtf.ds r6, r6
	st.w r6, LOWW(#_f4_tmp_inv0_igbt_wn)[r14]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv1_capctrl.c", 304
	bz9 .BB.LABEL.1_2
.BB.LABEL.1_1:	; entry.bb61_crit_edge
	mov #_f4_tmp_inv0_igbt_wp, r2
	br9 .BB.LABEL.1_3
.BB.LABEL.1_2:	; bb44
	cmpf.s 0x00000004, r5, r2
	mov #_f4_tmp_inv0_igbt_vp, r2
	mov #_f4_tmp_inv0_igbt_up, r5
	cmovf.s 0, r5, r2, r2
.BB.LABEL.1_3:	; bb61
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv1_capctrl.c", 305
	cmpf.s 0x00000004, r12, r11
	ld.w 0x00000000[r2], r2
	movhi HIGHW1(#_f4_tmp_inv0_igbtp_max), r0, r5
	st.w r2, LOWW(#_f4_tmp_inv0_igbtp_max)[r5]
	cmovf.s 0, r11, r12, r7
	cmpf.s 0x00000004, r6, r7
	trfsr 0
	bz9 .BB.LABEL.1_5
.BB.LABEL.1_4:	; bb61.bb96_crit_edge
	mov #_f4_tmp_inv0_igbt_wn, r11
	br9 .BB.LABEL.1_6
.BB.LABEL.1_5:	; bb80
	cmpf.s 0x00000004, r12, r11
	mov #_f4_tmp_inv0_igbt_vn, r11
	mov #_f4_tmp_inv0_igbt_un, r5
	cmovf.s 0, r5, r11, r11
.BB.LABEL.1_6:	; bb96
	ld.w 0x00000000[r11], r5
	movhi HIGHW1(#_f4_tmp_inv0_igbtn_max), r0, r6
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv1_capctrl.c", 307
	movhi HIGHW1(#_f4_tmp_inv0_igbt_max_inst), r0, r7
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv1_capctrl.c", 320
	movhi HIGHW1(#_u1_cnt_inv0_igbt_max_array), r0, r8
	ld.bu LOWW(#_u1_cnt_inv0_igbt_max_array)[r8], r9
	mov #_f4_tmp_inv0_igbt_max_array, r10
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv1_capctrl.c", 307
	cmpf.s 0x00000004, r5, r2
	st.w r5, LOWW(#_f4_tmp_inv0_igbtn_max)[r6]
	cmovf.s 0, r2, r5, r2
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv1_capctrl.c", 320
	mov r9, r5
	shl 0x00000002, r5
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv1_capctrl.c", 322
	add 0x00000001, r9
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv1_capctrl.c", 320
	add r5, r10
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv1_capctrl.c", 307
	st.w r2, LOWW(#_f4_tmp_inv0_igbt_max_inst)[r7]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv1_capctrl.c", 320
	st.w r2, 0x00000000[r10]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv1_capctrl.c", 323
	andi 0x0000007F, r9, r2
	st.b r2, LOWW(#_u1_cnt_inv0_igbt_max_array)[r8]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv1_capctrl.c", 326
	movhi HIGHW1(#_u1_flag_err_eneble), r0, r2
	ld.bu LOWW(#_u1_flag_err_eneble)[r2], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.1_8
.BB.LABEL.1_7:	; if_then_bb
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv1_capctrl.c", 328
	movhi HIGHW1(#_u4_flag_inv0_ov_err), r0, r2
	st.w r0, LOWW(#_u4_flag_inv0_ov_err)[r2]
.BB.LABEL.1_8:	; return
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv1_capctrl.c", 335
	jmp [r31]
_fb_1ms_inv0_capctrl_init:
	.stack _fb_1ms_inv0_capctrl_init = 0
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv1_capctrl.c", 351
	movhi HIGHW1(#_u4_flag_inv0_ov_err), r0, r2
	st.w r0, LOWW(#_u4_flag_inv0_ov_err)[r2]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv1_capctrl.c", 353
	movhi HIGHW1(#_u1_cap_inv0_seq_no), r0, r2
	st.b r0, LOWW(#_u1_cap_inv0_seq_no)[r2]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv1_capctrl.c", 354
	movhi HIGHW1(#_u1_flag_inv0_ov), r0, r2
	st.b r0, LOWW(#_u1_flag_inv0_ov)[r2]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv1_capctrl.c", 355
	movhi HIGHW1(#_u2_cnt_inv0_tmp_freq_cap), r0, r2
	st.h r0, LOWW(#_u2_cnt_inv0_tmp_freq_cap)[r2]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv1_capctrl.c", 356
	movhi HIGHW1(#_u2_cnt_inv0_tmp_level_cap), r0, r2
	st.h r0, LOWW(#_u2_cnt_inv0_tmp_level_cap)[r2]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv1_capctrl.c", 358
	movhi HIGHW1(#_f4_duty_inv0_up), r0, r2
	st.w r0, LOWW(#_f4_duty_inv0_up)[r2]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv1_capctrl.c", 359
	movhi HIGHW1(#_f4_duty_inv0_vp), r0, r2
	st.w r0, LOWW(#_f4_duty_inv0_vp)[r2]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv1_capctrl.c", 360
	movhi HIGHW1(#_f4_duty_inv0_wp), r0, r2
	st.w r0, LOWW(#_f4_duty_inv0_wp)[r2]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv1_capctrl.c", 361
	movhi HIGHW1(#_f4_duty_inv0_un), r0, r2
	st.w r0, LOWW(#_f4_duty_inv0_un)[r2]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv1_capctrl.c", 362
	movhi HIGHW1(#_f4_duty_inv0_vn), r0, r2
	st.w r0, LOWW(#_f4_duty_inv0_vn)[r2]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv1_capctrl.c", 363
	movhi HIGHW1(#_f4_duty_inv0_wn), r0, r2
	st.w r0, LOWW(#_f4_duty_inv0_wn)[r2]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv1_capctrl.c", 364
	movhi HIGHW1(#_f4_tmp_inv0_igbtp_max), r0, r2
	st.w r0, LOWW(#_f4_tmp_inv0_igbtp_max)[r2]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv1_capctrl.c", 365
	movhi HIGHW1(#_f4_tmp_inv0_igbtn_max), r0, r2
	st.w r0, LOWW(#_f4_tmp_inv0_igbtn_max)[r2]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv1_capctrl.c", 372
	movhi HIGHW1(#_f4_tmp_inv0_igbt_up), r0, r2
	st.w r0, LOWW(#_f4_tmp_inv0_igbt_up)[r2]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv1_capctrl.c", 373
	movhi HIGHW1(#_f4_tmp_inv0_igbt_vp), r0, r2
	st.w r0, LOWW(#_f4_tmp_inv0_igbt_vp)[r2]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv1_capctrl.c", 374
	movhi HIGHW1(#_f4_tmp_inv0_igbt_wp), r0, r2
	st.w r0, LOWW(#_f4_tmp_inv0_igbt_wp)[r2]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv1_capctrl.c", 375
	movhi HIGHW1(#_f4_tmp_inv0_igbt_un), r0, r2
	st.w r0, LOWW(#_f4_tmp_inv0_igbt_un)[r2]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv1_capctrl.c", 376
	movhi HIGHW1(#_f4_tmp_inv0_igbt_vn), r0, r2
	st.w r0, LOWW(#_f4_tmp_inv0_igbt_vn)[r2]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv1_capctrl.c", 377
	movhi HIGHW1(#_f4_tmp_inv0_igbt_wn), r0, r2
	st.w r0, LOWW(#_f4_tmp_inv0_igbt_wn)[r2]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv1_capctrl.c", 379
	movhi HIGHW1(#_f4_tmp_inv0_igbt_max_inst), r0, r2
	st.w r0, LOWW(#_f4_tmp_inv0_igbt_max_inst)[r2]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv1_capctrl.c", 380
	movhi HIGHW1(#_f4_tmp_inv0_igbt_max), r0, r2
	st.w r0, LOWW(#_f4_tmp_inv0_igbt_max)[r2]
	movhi HIGHW1(#_u1_cnt_inv0_igbt_max_array), r0, r2
	st.b r0, LOWW(#_u1_cnt_inv0_igbt_max_array)[r2]
	mov 0x00000000, r2
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv1_capctrl.c", 384
	mov #_f4_tmp_inv0_igbt_max_array, r5
.BB.LABEL.2_1:	; bb.split
	andi 0x000000FF, r2, r6
	add 0x00000001, r2
	shl 0x00000002, r6
	add r5, r6
	st.w r0, 0x00000000[r6]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv1_capctrl.c", 382
	andi 0x000000FF, r2, r6
	addi 0xFFFFFF80, r6, r0
	blt9 .BB.LABEL.2_1
.BB.LABEL.2_2:	; bb5.bb10_crit_edge
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv1_capctrl.c", 387
	movhi HIGHW1(#_u1_cnt_inv0_igbt_max_array), r0, r2
	st.b r0, LOWW(#_u1_cnt_inv0_igbt_max_array)[r2]
	jmp [r31]
_fb_tmp_inv0_igbt_max_serch:
	.stack _fb_tmp_inv0_igbt_max_serch = 0
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv1_capctrl.c", 407
	movhi HIGHW1(#_u1_cnt_inv0_igbt_max_array), r0, r2
	ld.bu LOWW(#_u1_cnt_inv0_igbt_max_array)[r2], r2
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv1_capctrl.c", 416
	movhi HIGHW1(#_u1_cnt_inv0_igbt_max_array_old), r0, r5
	ld.bu LOWW(#_u1_cnt_inv0_igbt_max_array_old)[r5], r5
	mov #_f4_tmp_inv0_igbt_max_array, r6
	movea 0x00000020, r0, r7
	cmp r5, r2
	mov 0x00000000, r5
	bnz9 .BB.LABEL.3_2
.BB.LABEL.3_1:	; return
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv1_capctrl.c", 431
	jmp [r31]
.BB.LABEL.3_2:	; bb.split.clone
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv1_capctrl.c", 420
	ld.w 0x00000000[r6], r8
	ld.w 0x00000004[r6], r9
	ld.w 0x00000008[r6], r10
	ld.w 0x0000000C[r6], r11
	cmpf.s 0x00000004, r8, r5
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv1_capctrl.c", 418
	movea 0x00000010, r6, r6
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv1_capctrl.c", 420
	cmovf.s 0, r5, r8, r5
	cmpf.s 0x00000004, r9, r5
	cmovf.s 0, r5, r9, r5
	cmpf.s 0x00000004, r10, r5
	cmovf.s 0, r5, r10, r5
	cmpf.s 0x00000004, r11, r5
	cmovf.s 0, r5, r11, r5
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv1_capctrl.c", 418
	loop r7, .BB.LABEL.3_2
.BB.LABEL.3_3:	; bb32
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv1_capctrl.c", 423
	di
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv1_capctrl.c", 424
	movhi HIGHW1(#_f4_tmp_inv0_igbt_max), r0, r6
	st.w r5, LOWW(#_f4_tmp_inv0_igbt_max)[r6]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv1_capctrl.c", 425
	ei
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv1_capctrl.c", 427
	movhi HIGHW1(#_u1_cnt_inv0_igbt_max_array_old), r0, r5
	st.b r2, LOWW(#_u1_cnt_inv0_igbt_max_array_old)[r5]
	jmp [r31]
	.section .bss, bss
	.align 4
_u4_flag_inv0_ov_err:
	.ds (4)
_u1_cap_inv0_seq_no:
	.ds (1)
_u1_flag_inv0_ov:
	.ds (1)
	.align 2
_u2_cnt_inv0_tmp_freq_cap:
	.ds (2)
	.align 2
_u2_cnt_inv0_tmp_level_cap:
	.ds (2)
	.align 4
_f4_duty_inv0_up:
	.ds (4)
	.align 4
_f4_duty_inv0_vp:
	.ds (4)
	.align 4
_f4_duty_inv0_wp:
	.ds (4)
	.align 4
_f4_duty_inv0_un:
	.ds (4)
	.align 4
_f4_duty_inv0_vn:
	.ds (4)
	.align 4
_f4_duty_inv0_wn:
	.ds (4)
	.align 4
_f4_tmp_inv0_igbt_max_inst:
	.ds (4)
	.align 4
_f4_tmp_inv0_igbt_max_array:
	.ds (512)
_u1_cnt_inv0_igbt_max_array:
	.ds (1)
_u1_cnt_inv0_igbt_max_array_old:
	.ds (1)
	.align 4
_f4_test_fast:
	.ds (4)
	.align 4
_f4_test_slow:
	.ds (4)
	.align 4
_f4_test_omega_fast:
	.ds (4)
	.align 4
_f4_test_omega_slow:
	.ds (4)
	.align 4
_f4_test_f_fast:
	.ds (4)
	.align 4
_f4_test_f_slow:
	.ds (4)
