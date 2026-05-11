#CC-RH Compiler RH850 Assembler Source
#@	CC-RH Version : V1.03.00 [21 Aug 2015]
#@	Command : src\fi_1ms_inv0_errctrl.c -Xobj_path=DefaultBuild -Xcommon=rh850 -Xcpu=g3m -c -g -Ospeed -Oinline_size -Isrc -I..\Common -D__CLK_HSB=80,__CLK_LSB=40,__CLKC_HSB=80,__CLK_CLSB=40 -Xasm_path=DefaultBuild
#@	compiled at Mon May 01 22:14:28 2017

	.file "src\fi_1ms_inv0_errctrl.c"

	$reg_mode 32

	.extern _u1_pwm_inv0_status
	.extern _f4_vdc_inv0_ad
	.extern _f4_speed_inv0_lpf
	.extern _u4_flag_inv0_error
	.extern _f4_tmp_inv0_igbt_max
	.extern _f4_tmp_inv0_mot_max
	.public _f4_lev_uv_inv0_vdc, 4
	.public _f4_lev_oh_inv0_igbt, 4
	.public _f4_lev_oh_inv0_mot, 4
	.public _f4_lev_os_inv0_speed, 4
	.public _f4_lev_us_inv0_speed, 4
	.public _u2_cnt_uv_inv0_1ms_max, 2
	.public _u2_cnt_oh_inv0_igbt_1ms_max, 2
	.public _u2_cnt_oh_inv0_mot_1ms_max, 2
	.public _u2_cnt_os_inv0_speed_1ms_max, 2
	.public _u2_cnt_us_inv0_speed_1ms_max, 2
	.public _u2_cnt_uv_inv0_vdc_1ms, 2
	.public _u2_cnt_oh_inv0_igbt_1ms, 2
	.public _u2_cnt_oh_inv0_mot_1ms, 2
	.public _u2_cnt_os_inv0_speed_1ms, 2
	.public _u2_cnt_us_inv0_speed_1ms, 2
	.public _u4_flag_inv0_error_hw, 4
	.public _u2_cnt_di_inv0_safty, 2
	.public _u2_cnt_di_inv0_safty_max, 2
	.public _fi_1ms_inv0_errctrl
	.public _fb_1ms_inv0_errctrl_init

	.section .text, text
_fi_1ms_inv0_errctrl:
	.stack _fi_1ms_inv0_errctrl = 0
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_errctrl.c", 90
	movhi HIGHW1(#_u1_pwm_inv0_status), r0, r2
	ld.bu LOWW(#_u1_pwm_inv0_status)[r2], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.1_4
.BB.LABEL.1_1:	; if_then_bb
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_errctrl.c", 92
	movhi HIGHW1(#_f4_vdc_inv0_ad), r0, r5
	ld.w LOWW(#_f4_vdc_inv0_ad)[r5], r5
	movhi HIGHW1(#_f4_lev_uv_inv0_vdc), r0, r6
	ld.w LOWW(#_f4_lev_uv_inv0_vdc)[r6], r6
	cmpf.s 0x00000007, r6, r5
	trfsr 0
	bz9 .BB.LABEL.1_4
.BB.LABEL.1_2:	; if_then_bb10
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_errctrl.c", 94
	movhi HIGHW1(#_u2_cnt_uv_inv0_vdc_1ms), r0, r5
	ld.h LOWW(#_u2_cnt_uv_inv0_vdc_1ms)[r5], r6
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_errctrl.c", 95
	movhi HIGHW1(#_u2_cnt_uv_inv0_1ms_max), r0, r7
	ld.hu LOWW(#_u2_cnt_uv_inv0_1ms_max)[r7], r7
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_errctrl.c", 94
	add 0x00000001, r6
	st.h r6, LOWW(#_u2_cnt_uv_inv0_vdc_1ms)[r5]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_errctrl.c", 95
	andi 0x0000FFFF, r6, r5
	cmp r7, r5
	bl9 .BB.LABEL.1_5
.BB.LABEL.1_3:	; if_then_bb20
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_errctrl.c", 97
	movhi HIGHW1(#_u4_flag_inv0_error), r0, r5
	set1 0x00000001, LOWW(#_u4_flag_inv0_error)[r5]
.BB.LABEL.1_4:	; if_break_bb26.PartialDrain
	movhi HIGHW1(#_u2_cnt_uv_inv0_vdc_1ms), r0, r5
	st.h r0, LOWW(#_u2_cnt_uv_inv0_vdc_1ms)[r5]
.BB.LABEL.1_5:	; if_break_bb26
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_errctrl.c", 117
	movhi HIGHW1(#_f4_lev_oh_inv0_igbt), r0, r5
	ld.w LOWW(#_f4_lev_oh_inv0_igbt)[r5], r5
	movhi HIGHW1(#_f4_tmp_inv0_igbt_max), r0, r6
	ld.w LOWW(#_f4_tmp_inv0_igbt_max)[r6], r6
	cmpf.s 0x00000007, r6, r5
	trfsr 0
	bz9 .BB.LABEL.1_8
.BB.LABEL.1_6:	; if_then_bb32
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_errctrl.c", 119
	movhi HIGHW1(#_u2_cnt_oh_inv0_igbt_1ms), r0, r5
	ld.h LOWW(#_u2_cnt_oh_inv0_igbt_1ms)[r5], r6
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_errctrl.c", 120
	movhi HIGHW1(#_u2_cnt_oh_inv0_igbt_1ms_max), r0, r7
	ld.hu LOWW(#_u2_cnt_oh_inv0_igbt_1ms_max)[r7], r7
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_errctrl.c", 119
	add 0x00000001, r6
	st.h r6, LOWW(#_u2_cnt_oh_inv0_igbt_1ms)[r5]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_errctrl.c", 120
	andi 0x0000FFFF, r6, r5
	cmp r7, r5
	bl9 .BB.LABEL.1_9
.BB.LABEL.1_7:	; if_then_bb42
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_errctrl.c", 122
	movhi HIGHW1(#_u4_flag_inv0_error), r0, r5
	set1 0x00000006, LOWW(#_u4_flag_inv0_error)[r5]
.BB.LABEL.1_8:	; if_break_bb48.PartialDrain
	movhi HIGHW1(#_u2_cnt_oh_inv0_igbt_1ms), r0, r5
	st.h r0, LOWW(#_u2_cnt_oh_inv0_igbt_1ms)[r5]
.BB.LABEL.1_9:	; if_break_bb48
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_errctrl.c", 137
	movhi HIGHW1(#_f4_lev_oh_inv0_mot), r0, r5
	ld.w LOWW(#_f4_lev_oh_inv0_mot)[r5], r5
	movhi HIGHW1(#_f4_tmp_inv0_mot_max), r0, r6
	ld.w LOWW(#_f4_tmp_inv0_mot_max)[r6], r6
	cmpf.s 0x00000007, r6, r5
	trfsr 0
	bz9 .BB.LABEL.1_12
.BB.LABEL.1_10:	; if_then_bb54
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_errctrl.c", 139
	movhi HIGHW1(#_u2_cnt_oh_inv0_mot_1ms), r0, r5
	ld.h LOWW(#_u2_cnt_oh_inv0_mot_1ms)[r5], r6
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_errctrl.c", 140
	movhi HIGHW1(#_u2_cnt_oh_inv0_mot_1ms_max), r0, r7
	ld.hu LOWW(#_u2_cnt_oh_inv0_mot_1ms_max)[r7], r7
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_errctrl.c", 139
	add 0x00000001, r6
	st.h r6, LOWW(#_u2_cnt_oh_inv0_mot_1ms)[r5]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_errctrl.c", 140
	andi 0x0000FFFF, r6, r5
	cmp r7, r5
	bl9 .BB.LABEL.1_13
.BB.LABEL.1_11:	; if_then_bb64
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_errctrl.c", 142
	movhi HIGHW1(#_u4_flag_inv0_error+0x00000001), r0, r5
	set1 0x00000000, LOWW(#_u4_flag_inv0_error+0x00000001)[r5]
.BB.LABEL.1_12:	; if_break_bb70.PartialDrain
	movhi HIGHW1(#_u2_cnt_oh_inv0_mot_1ms), r0, r5
	st.h r0, LOWW(#_u2_cnt_oh_inv0_mot_1ms)[r5]
.BB.LABEL.1_13:	; if_break_bb70
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_errctrl.c", 157
	movhi HIGHW1(#_f4_speed_inv0_lpf), r0, r5
	ld.w LOWW(#_f4_speed_inv0_lpf)[r5], r5
	movhi HIGHW1(#_f4_lev_os_inv0_speed), r0, r6
	ld.w LOWW(#_f4_lev_os_inv0_speed)[r6], r6
	cmpf.s 0x00000004, r6, r5
	trfsr 0
	bz9 .BB.LABEL.1_15
.BB.LABEL.1_14:	; bb
	negf.s r6, r6
	cmpf.s 0x00000007, r6, r5
	trfsr 0
	bz9 .BB.LABEL.1_17
.BB.LABEL.1_15:	; if_then_bb87
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_errctrl.c", 159
	movhi HIGHW1(#_u2_cnt_os_inv0_speed_1ms), r0, r6
	ld.h LOWW(#_u2_cnt_os_inv0_speed_1ms)[r6], r7
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_errctrl.c", 160
	movhi HIGHW1(#_u2_cnt_os_inv0_speed_1ms_max), r0, r8
	ld.hu LOWW(#_u2_cnt_os_inv0_speed_1ms_max)[r8], r8
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_errctrl.c", 159
	add 0x00000001, r7
	st.h r7, LOWW(#_u2_cnt_os_inv0_speed_1ms)[r6]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_errctrl.c", 160
	andi 0x0000FFFF, r7, r6
	cmp r8, r6
	bl9 .BB.LABEL.1_18
.BB.LABEL.1_16:	; if_then_bb97
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_errctrl.c", 162
	movhi HIGHW1(#_u4_flag_inv0_error), r0, r6
	set1 0x00000007, LOWW(#_u4_flag_inv0_error)[r6]
.BB.LABEL.1_17:	; if_break_bb103.PartialDrain
	movhi HIGHW1(#_u2_cnt_os_inv0_speed_1ms), r0, r6
	st.h r0, LOWW(#_u2_cnt_os_inv0_speed_1ms)[r6]
.BB.LABEL.1_18:	; if_break_bb103
	cmp 0x00000000, r2
	bz9 .BB.LABEL.1_23
.BB.LABEL.1_19:	; if_then_bb109
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_errctrl.c", 179
	movhi HIGHW1(#_f4_lev_us_inv0_speed), r0, r2
	ld.w LOWW(#_f4_lev_us_inv0_speed)[r2], r2
	cmpf.s 0x00000007, r2, r5
	trfsr 0
	bz9 .BB.LABEL.1_23
.BB.LABEL.1_20:	; bb114
	negf.s r2, r2
	cmpf.s 0x00000007, r5, r2
	trfsr 0
	bz9 .BB.LABEL.1_23
.BB.LABEL.1_21:	; if_then_bb128
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_errctrl.c", 181
	movhi HIGHW1(#_u2_cnt_us_inv0_speed_1ms), r0, r2
	ld.h LOWW(#_u2_cnt_us_inv0_speed_1ms)[r2], r5
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_errctrl.c", 182
	movhi HIGHW1(#_u2_cnt_us_inv0_speed_1ms_max), r0, r6
	ld.hu LOWW(#_u2_cnt_us_inv0_speed_1ms_max)[r6], r6
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_errctrl.c", 181
	add 0x00000001, r5
	st.h r5, LOWW(#_u2_cnt_us_inv0_speed_1ms)[r2]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_errctrl.c", 182
	andi 0x0000FFFF, r5, r2
	cmp r6, r2
	bl9 .BB.LABEL.1_24
.BB.LABEL.1_22:	; if_then_bb138
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_errctrl.c", 184
	movhi HIGHW1(#_u4_flag_inv0_error+0x00000001), r0, r2
	set1 0x00000005, LOWW(#_u4_flag_inv0_error+0x00000001)[r2]
.BB.LABEL.1_23:	; if_break_bb146.PartialDrain
	movhi HIGHW1(#_u2_cnt_us_inv0_speed_1ms), r0, r2
	st.h r0, LOWW(#_u2_cnt_us_inv0_speed_1ms)[r2]
.BB.LABEL.1_24:	; if_break_bb146
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_errctrl.c", 270
	ld23.hu 0xFFC1008C[r0], r2
	andi 0x00000040, r2, r0
	bnz9 .BB.LABEL.1_28
.BB.LABEL.1_25:	; if_then_bb154
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_errctrl.c", 272
	movhi HIGHW1(#_u2_cnt_di_inv0_safty), r0, r2
	ld.h LOWW(#_u2_cnt_di_inv0_safty)[r2], r5
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_errctrl.c", 273
	movhi HIGHW1(#_u2_cnt_di_inv0_safty_max), r0, r6
	ld.hu LOWW(#_u2_cnt_di_inv0_safty_max)[r6], r6
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_errctrl.c", 272
	add 0x00000001, r5
	st.h r5, LOWW(#_u2_cnt_di_inv0_safty)[r2]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_errctrl.c", 273
	andi 0x0000FFFF, r5, r2
	cmp r6, r2
	bnc9 .BB.LABEL.1_27
.BB.LABEL.1_26:	; return
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_errctrl.c", 287
	jmp [r31]
.BB.LABEL.1_27:	; if_then_bb164
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_errctrl.c", 275
	movhi HIGHW1(#_u4_flag_inv0_error+0x00000001), r0, r2
	set1 0x00000004, LOWW(#_u4_flag_inv0_error+0x00000001)[r2]
.BB.LABEL.1_28:	; if_else_bb169
	movhi HIGHW1(#_u2_cnt_di_inv0_safty), r0, r2
	st.h r0, LOWW(#_u2_cnt_di_inv0_safty)[r2]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_errctrl.c", 287
	jmp [r31]
_fb_1ms_inv0_errctrl_init:
	.stack _fb_1ms_inv0_errctrl_init = 0
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_errctrl.c", 303
	movhi HIGHW1(#_f4_lev_uv_inv0_vdc), r0, r2
	st.w r0, LOWW(#_f4_lev_uv_inv0_vdc)[r2]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_errctrl.c", 304
	movhi HIGHW1(#_f4_lev_oh_inv0_igbt), r0, r2
	movhi 0x000042A0, r0, r5
	st.w r5, LOWW(#_f4_lev_oh_inv0_igbt)[r2]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_errctrl.c", 305
	movhi HIGHW1(#_f4_lev_oh_inv0_mot), r0, r2
	movhi 0x000042F0, r0, r5
	st.w r5, LOWW(#_f4_lev_oh_inv0_mot)[r2]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_errctrl.c", 306
	movhi HIGHW1(#_f4_lev_os_inv0_speed), r0, r2
	mov 0x453B8000, r5
	st.w r5, LOWW(#_f4_lev_os_inv0_speed)[r2]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_errctrl.c", 307
	movhi HIGHW1(#_f4_lev_us_inv0_speed), r0, r2
	movhi 0x000043FA, r0, r5
	st.w r5, LOWW(#_f4_lev_us_inv0_speed)[r2]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_errctrl.c", 309
	movhi HIGHW1(#_u2_cnt_uv_inv0_1ms_max), r0, r2
	movea 0x00000064, r0, r5
	st.h r5, LOWW(#_u2_cnt_uv_inv0_1ms_max)[r2]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_errctrl.c", 310
	movhi HIGHW1(#_u2_cnt_oh_inv0_igbt_1ms_max), r0, r2
	movea 0x000003E8, r0, r5
	st.h r5, LOWW(#_u2_cnt_oh_inv0_igbt_1ms_max)[r2]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_errctrl.c", 311
	movhi HIGHW1(#_u2_cnt_oh_inv0_mot_1ms_max), r0, r2
	movea 0x000007D0, r0, r5
	st.h r5, LOWW(#_u2_cnt_oh_inv0_mot_1ms_max)[r2]
	mov 0x00000001, r2
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_errctrl.c", 312
	movhi HIGHW1(#_u2_cnt_os_inv0_speed_1ms_max), r0, r5
	st.h r2, LOWW(#_u2_cnt_os_inv0_speed_1ms_max)[r5]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_errctrl.c", 313
	movhi HIGHW1(#_u2_cnt_us_inv0_speed_1ms_max), r0, r5
	st.h r2, LOWW(#_u2_cnt_us_inv0_speed_1ms_max)[r5]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_errctrl.c", 315
	movhi HIGHW1(#_u2_cnt_uv_inv0_vdc_1ms), r0, r2
	st.h r0, LOWW(#_u2_cnt_uv_inv0_vdc_1ms)[r2]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_errctrl.c", 316
	movhi HIGHW1(#_u2_cnt_oh_inv0_igbt_1ms), r0, r2
	st.h r0, LOWW(#_u2_cnt_oh_inv0_igbt_1ms)[r2]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_errctrl.c", 317
	movhi HIGHW1(#_u2_cnt_oh_inv0_mot_1ms), r0, r2
	st.h r0, LOWW(#_u2_cnt_oh_inv0_mot_1ms)[r2]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_errctrl.c", 318
	movhi HIGHW1(#_u2_cnt_os_inv0_speed_1ms), r0, r2
	st.h r0, LOWW(#_u2_cnt_os_inv0_speed_1ms)[r2]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_errctrl.c", 319
	movhi HIGHW1(#_u2_cnt_us_inv0_speed_1ms), r0, r2
	st.h r0, LOWW(#_u2_cnt_us_inv0_speed_1ms)[r2]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_errctrl.c", 321
	movhi HIGHW1(#_u4_flag_inv0_error_hw), r0, r2
	st.w r0, LOWW(#_u4_flag_inv0_error_hw)[r2]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_errctrl.c", 327
	movhi HIGHW1(#_u2_cnt_di_inv0_safty), r0, r2
	st.h r0, LOWW(#_u2_cnt_di_inv0_safty)[r2]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_inv0_errctrl.c", 328
	movhi HIGHW1(#_u2_cnt_di_inv0_safty_max), r0, r2
	mov 0x0000000A, r5
	st.h r5, LOWW(#_u2_cnt_di_inv0_safty_max)[r2]
	jmp [r31]
	.section .bss, bss
	.align 4
_f4_lev_uv_inv0_vdc:
	.ds (4)
	.align 4
_f4_lev_oh_inv0_igbt:
	.ds (4)
	.align 4
_f4_lev_oh_inv0_mot:
	.ds (4)
	.align 4
_f4_lev_os_inv0_speed:
	.ds (4)
	.align 4
_f4_lev_us_inv0_speed:
	.ds (4)
	.align 2
_u2_cnt_uv_inv0_1ms_max:
	.ds (2)
	.align 2
_u2_cnt_oh_inv0_igbt_1ms_max:
	.ds (2)
	.align 2
_u2_cnt_oh_inv0_mot_1ms_max:
	.ds (2)
	.align 2
_u2_cnt_os_inv0_speed_1ms_max:
	.ds (2)
	.align 2
_u2_cnt_us_inv0_speed_1ms_max:
	.ds (2)
	.align 2
_u2_cnt_uv_inv0_vdc_1ms:
	.ds (2)
	.align 2
_u2_cnt_oh_inv0_igbt_1ms:
	.ds (2)
	.align 2
_u2_cnt_oh_inv0_mot_1ms:
	.ds (2)
	.align 2
_u2_cnt_os_inv0_speed_1ms:
	.ds (2)
	.align 2
_u2_cnt_us_inv0_speed_1ms:
	.ds (2)
	.align 4
_u4_flag_inv0_error_hw:
	.ds (4)
	.align 2
_u2_cnt_di_inv0_safty:
	.ds (2)
	.align 2
_u2_cnt_di_inv0_safty_max:
	.ds (2)
