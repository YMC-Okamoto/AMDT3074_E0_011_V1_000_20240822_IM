#CC-RH Compiler RH850 Assembler Source
#@	CC-RH Version : V1.03.00 [21 Aug 2015]
#@	Command : src\fi_pwm_inv0_adctrl.c -Xobj_path=DefaultBuild -Xcommon=rh850 -Xcpu=g3m -c -g -Ospeed -Oinline_size -Isrc -I..\Common -D__CLK_HSB=80,__CLK_LSB=40,__CLKC_HSB=80,__CLK_CLSB=40 -Xasm_path=DefaultBuild
#@	compiled at Mon May 01 22:14:53 2017

	.file "src\fi_pwm_inv0_adctrl.c"

	$reg_mode 32

	.extern _u1_flag_pwm_source
	.extern _f4_ts_inv0_ctrl
	.extern _u1_flag_inv0_offsetadjl
	.public _s2_ad000, 2
	.public _s2_ad001, 2
	.public _s2_ad002, 2
	.public _s2_ad003, 2
	.public _s2_ad010, 2
	.public _s2_ad011, 2
	.public _s2_ad012, 2
	.public _s2_ad013, 2
	.public _s2_ad020, 2
	.public _s2_ad021, 2
	.public _s2_ad022, 2
	.public _s2_ad023, 2
	.public _s2_ad030, 2
	.public _s2_ad031, 2
	.public _s2_ad032, 2
	.public _s2_ad033, 2
	.public _s2_ad100, 2
	.public _s2_ad101, 2
	.public _s2_ad102, 2
	.public _s2_ad110, 2
	.public _s2_ad111, 2
	.public _s2_ad112, 2
	.public _s2_ad120, 2
	.public _s2_ad121, 2
	.public _s2_ad122, 2
	.public _s2_ad130, 2
	.public _s2_ad131, 2
	.public _s2_ad132, 2
	.public _s2_ad140, 2
	.public _s2_ad141, 2
	.public _s2_ad142, 2
	.public _s2_ad150, 2
	.public _s2_ad151, 2
	.public _s2_ad152, 2
	.public _s2_ad160, 2
	.public _s2_ad161, 2
	.public _s2_ad162, 2
	.public _s4_adtrig_inv0_delay_ns, 4
	.public _f4_k_iu_inv0_adscale, 4
	.public _f4_k_iv_inv0_adscale, 4
	.public _f4_k_iw_inv0_adscale, 4
	.public _f4_k_vdc_inv0_adscale, 4
	.public _f4_k_idc_inv0_adscale, 4
	.public _s4_iu_inv0_adfs, 4
	.public _s4_iv_inv0_adfs, 4
	.public _s4_iw_inv0_adfs, 4
	.public _f4_iu_inv0_ad, 4
	.public _f4_iv_inv0_ad, 4
	.public _f4_iw_inv0_ad, 4
	.public _f4_iu_inv0_tmp_ad, 4
	.public _f4_iv_inv0_tmp_ad, 4
	.public _f4_iw_inv0_tmp_ad, 4
	.public _u1_flag_ictrl_inv0_select, 1
	.public _f4_iu_inv0_ctrl, 4
	.public _f4_iv_inv0_ctrl, 4
	.public _f4_iw_inv0_ctrl, 4
	.public _f4_vdc_inv0_ad, 4
	.public _s4_idc_inv0_adfs, 4
	.public _f4_idc_inv0_ad, 4
	.public _f4_idc_inv0_tmp_ad, 4
	.public _f4_wclpf_inv0_vdc, 4
	.public _f4_vdc_inv0_lpf, 4
	.public _f4_dvdc_inv0_ad, 4
	.public _s4_offset_iu_inv0_adfs, 4
	.public _s4_offset_iv_inv0_adfs, 4
	.public _s4_offset_iw_inv0_adfs, 4
	.public _s4_offset_idc_inv0_adfs, 4
	.public _s4_offset_iu_inv0_adfs_sum, 4
	.public _s4_offset_iv_inv0_adfs_sum, 4
	.public _s4_offset_iw_inv0_adfs_sum, 4
	.public _s4_offset_idc_inv0_adfs_sum, 4
	.public _u2_cnt_inv0_offsetadj, 2
	.public _u1_flag_inv0_offsetadj_ok, 1
	.public _fi_pwm_inv0_adctrl
	.public _fb_pwm_inv0_adctrl_init

	.section .text, text
_fi_pwm_inv0_adctrl:
	.stack _fi_pwm_inv0_adctrl = 0
.BB.LABEL.1_1:	; bb3
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_adctrl.c", 180
	tst1 0x00000004, 0xFFFFB161[r0]
	bz9 .BB.LABEL.1_1
.BB.LABEL.1_2:	; bb9
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_adctrl.c", 181
	clr1 0x00000004, 0xFFFFB161[r0]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_adctrl.c", 187
	movhi 0x0000FFF2, r0, r2
	ld.w 0x00000218[r2], r5
	movhi HIGHW1(#_s2_ad000), r0, r6
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_adctrl.c", 188
	movhi HIGHW1(#_s2_ad001), r0, r7
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_adctrl.c", 189
	movhi HIGHW1(#_s2_ad002), r0, r8
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_adctrl.c", 190
	movhi HIGHW1(#_s2_ad003), r0, r9
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_adctrl.c", 191
	movhi HIGHW1(#_s2_ad010), r0, r10
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_adctrl.c", 187
	andi 0x00000FFF, r5, r5
	st.h r5, LOWW(#_s2_ad000)[r6]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_adctrl.c", 192
	movhi HIGHW1(#_s2_ad011), r0, r6
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_adctrl.c", 188
	ld.w 0x00000220[r2], r5
	andi 0x00000FFF, r5, r5
	st.h r5, LOWW(#_s2_ad001)[r7]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_adctrl.c", 193
	movhi HIGHW1(#_s2_ad012), r0, r7
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_adctrl.c", 189
	ld.w 0x00000224[r2], r5
	andi 0x00000FFF, r5, r5
	st.h r5, LOWW(#_s2_ad002)[r8]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_adctrl.c", 194
	movhi HIGHW1(#_s2_ad013), r0, r8
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_adctrl.c", 190
	ld.w 0x0000021C[r2], r5
	andi 0x00000FFF, r5, r5
	st.h r5, LOWW(#_s2_ad003)[r9]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_adctrl.c", 195
	movhi HIGHW1(#_s2_ad020), r0, r9
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_adctrl.c", 191
	ld.w 0x00000228[r2], r5
	andi 0x00000FFF, r5, r5
	st.h r5, LOWW(#_s2_ad010)[r10]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_adctrl.c", 196
	movhi HIGHW1(#_s2_ad021), r0, r10
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_adctrl.c", 192
	ld.w 0x0000022C[r2], r5
	andi 0x00000FFF, r5, r5
	st.h r5, LOWW(#_s2_ad011)[r6]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_adctrl.c", 197
	movhi HIGHW1(#_s2_ad022), r0, r6
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_adctrl.c", 193
	ld.w 0x00000230[r2], r5
	andi 0x00000FFF, r5, r5
	st.h r5, LOWW(#_s2_ad012)[r7]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_adctrl.c", 198
	movhi HIGHW1(#_s2_ad023), r0, r7
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_adctrl.c", 194
	ld.w 0x00000234[r2], r5
	andi 0x00000FFF, r5, r5
	st.h r5, LOWW(#_s2_ad013)[r8]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_adctrl.c", 199
	movhi HIGHW1(#_s2_ad030), r0, r8
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_adctrl.c", 195
	ld.w 0x00000238[r2], r5
	andi 0x00000FFF, r5, r5
	st.h r5, LOWW(#_s2_ad020)[r9]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_adctrl.c", 200
	movhi HIGHW1(#_s2_ad031), r0, r9
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_adctrl.c", 196
	ld.w 0x0000023C[r2], r5
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_adctrl.c", 206
	movhi HIGHW1(#_s2_ad101), r0, r11
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_adctrl.c", 196
	andi 0x00000FFF, r5, r5
	st.h r5, LOWW(#_s2_ad021)[r10]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_adctrl.c", 201
	movhi HIGHW1(#_s2_ad032), r0, r10
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_adctrl.c", 197
	ld.w 0x00000210[r2], r5
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_adctrl.c", 207
	movhi HIGHW1(#_s2_ad102), r0, r12
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_adctrl.c", 197
	andi 0x00000FFF, r5, r5
	st.h r5, LOWW(#_s2_ad022)[r6]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_adctrl.c", 202
	movhi HIGHW1(#_s2_ad033), r0, r6
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_adctrl.c", 198
	ld.w 0x00000214[r2], r5
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_adctrl.c", 208
	movhi HIGHW1(#_s2_ad110), r0, r13
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_adctrl.c", 198
	andi 0x00000FFF, r5, r5
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_adctrl.c", 209
	movhi HIGHW1(#_s2_ad111), r0, r14
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_adctrl.c", 198
	st.h r5, LOWW(#_s2_ad023)[r7]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_adctrl.c", 205
	movhi HIGHW1(#_s2_ad100), r0, r7
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_adctrl.c", 199
	ld.w 0x00000200[r2], r5
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_adctrl.c", 231
	andi 0x00000FFF, r5, r5
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_adctrl.c", 199
	st.h r5, LOWW(#_s2_ad030)[r8]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_adctrl.c", 200
	ld.w 0x00000204[r2], r8
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_adctrl.c", 231
	andi 0x00000FFF, r8, r8
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_adctrl.c", 200
	st.h r8, LOWW(#_s2_ad031)[r9]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_adctrl.c", 201
	ld.w 0x00000208[r2], r9
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_adctrl.c", 231
	andi 0x00000FFF, r9, r9
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_adctrl.c", 201
	st.h r9, LOWW(#_s2_ad032)[r10]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_adctrl.c", 202
	ld.w 0x0000020C[r2], r10
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_adctrl.c", 231
	andi 0x00000FFF, r10, r10
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_adctrl.c", 202
	st.h r10, LOWW(#_s2_ad033)[r6]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_adctrl.c", 205
	ld.w 0x00001218[r2], r6
	andi 0x00000FFF, r6, r6
	st.h r6, LOWW(#_s2_ad100)[r7]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_adctrl.c", 210
	movhi HIGHW1(#_s2_ad112), r0, r7
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_adctrl.c", 206
	ld.w 0x0000121C[r2], r6
	andi 0x00000FFF, r6, r6
	st.h r6, LOWW(#_s2_ad101)[r11]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_adctrl.c", 211
	movhi HIGHW1(#_s2_ad120), r0, r11
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_adctrl.c", 207
	ld.w 0x00001220[r2], r6
	andi 0x00000FFF, r6, r6
	st.h r6, LOWW(#_s2_ad102)[r12]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_adctrl.c", 212
	movhi HIGHW1(#_s2_ad121), r0, r12
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_adctrl.c", 208
	ld.w 0x00001224[r2], r6
	andi 0x00000FFF, r6, r6
	st.h r6, LOWW(#_s2_ad110)[r13]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_adctrl.c", 213
	movhi HIGHW1(#_s2_ad122), r0, r13
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_adctrl.c", 209
	ld.w 0x00001228[r2], r6
	andi 0x00000FFF, r6, r6
	st.h r6, LOWW(#_s2_ad111)[r14]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_adctrl.c", 214
	movhi HIGHW1(#_s2_ad130), r0, r14
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_adctrl.c", 210
	ld.w 0x0000122C[r2], r6
	andi 0x00000FFF, r6, r6
	st.h r6, LOWW(#_s2_ad112)[r7]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_adctrl.c", 215
	movhi HIGHW1(#_s2_ad131), r0, r7
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_adctrl.c", 211
	ld.w 0x00001230[r2], r6
	andi 0x00000FFF, r6, r6
	st.h r6, LOWW(#_s2_ad120)[r11]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_adctrl.c", 216
	movhi HIGHW1(#_s2_ad132), r0, r11
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_adctrl.c", 212
	ld.w 0x00001234[r2], r6
	andi 0x00000FFF, r6, r6
	st.h r6, LOWW(#_s2_ad121)[r12]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_adctrl.c", 217
	movhi HIGHW1(#_s2_ad140), r0, r12
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_adctrl.c", 213
	ld.w 0x00001238[r2], r6
	andi 0x00000FFF, r6, r6
	st.h r6, LOWW(#_s2_ad122)[r13]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_adctrl.c", 218
	movhi HIGHW1(#_s2_ad141), r0, r13
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_adctrl.c", 214
	ld.w 0x00001200[r2], r6
	andi 0x00000FFF, r6, r6
	st.h r6, LOWW(#_s2_ad130)[r14]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_adctrl.c", 219
	movhi HIGHW1(#_s2_ad142), r0, r14
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_adctrl.c", 215
	ld.w 0x00001204[r2], r6
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_adctrl.c", 223
	movhi HIGHW1(#_s2_ad160), r0, r15
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_adctrl.c", 215
	andi 0x00000FFF, r6, r6
	st.h r6, LOWW(#_s2_ad131)[r7]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_adctrl.c", 220
	movhi HIGHW1(#_s2_ad150), r0, r7
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_adctrl.c", 216
	ld.w 0x00001208[r2], r6
	andi 0x00000FFF, r6, r6
	st.h r6, LOWW(#_s2_ad132)[r11]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_adctrl.c", 221
	movhi HIGHW1(#_s2_ad151), r0, r11
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_adctrl.c", 217
	ld.w 0x0000120C[r2], r6
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_adctrl.c", 231
	movea 0xFFFFF801, r5, r5
	movhi HIGHW1(#_u1_flag_pwm_source), r0, r16
	ld.bu LOWW(#_u1_flag_pwm_source)[r16], r16
	movhi HIGHW1(#_s4_iu_inv0_adfs), r0, r17
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_adctrl.c", 217
	andi 0x00000FFF, r6, r6
	st.h r6, LOWW(#_s2_ad140)[r12]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_adctrl.c", 222
	movhi HIGHW1(#_s2_ad152), r0, r12
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_adctrl.c", 218
	ld.w 0x00001210[r2], r6
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_adctrl.c", 231
	andi 0x00000FFF, r6, r6
	movhi HIGHW1(#_f4_k_iu_inv0_adscale), r0, r18
	ld.w LOWW(#_f4_k_iu_inv0_adscale)[r18], r18
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_adctrl.c", 218
	st.h r6, LOWW(#_s2_ad141)[r13]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_adctrl.c", 219
	ld.w 0x00001214[r2], r13
	andi 0x00000FFF, r13, r13
	st.h r13, LOWW(#_s2_ad142)[r14]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_adctrl.c", 224
	movhi HIGHW1(#_s2_ad161), r0, r14
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_adctrl.c", 220
	ld.w 0x0000123C[r2], r13
	andi 0x00000FFF, r13, r13
	st.h r13, LOWW(#_s2_ad150)[r7]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_adctrl.c", 225
	movhi HIGHW1(#_s2_ad162), r0, r13
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_adctrl.c", 221
	ld.w 0x00001240[r2], r7
	andi 0x00000FFF, r7, r7
	st.h r7, LOWW(#_s2_ad151)[r11]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_adctrl.c", 231
	movhi HIGHW1(#_s4_offset_iu_inv0_adfs), r0, r11
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_adctrl.c", 222
	ld.w 0x00001244[r2], r7
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_adctrl.c", 231
	ld.w LOWW(#_s4_offset_iu_inv0_adfs)[r11], r11
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_adctrl.c", 222
	andi 0x00000FFF, r7, r7
	st.h r7, LOWW(#_s2_ad152)[r12]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_adctrl.c", 231
	subr r5, r11
	cvtf.ws r11, r11
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_adctrl.c", 223
	ld.w 0x00001248[r2], r7
	andi 0x00000FFF, r7, r7
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_adctrl.c", 231
	mulf.s r18, r11, r11
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_adctrl.c", 223
	st.h r7, LOWW(#_s2_ad160)[r15]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_adctrl.c", 224
	ld.w 0x0000124C[r2], r7
	andi 0x00000FFF, r7, r7
	st.h r7, LOWW(#_s2_ad161)[r14]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_adctrl.c", 225
	ld.w 0x00001250[r2], r2
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_adctrl.c", 231
	st.w r5, LOWW(#_s4_iu_inv0_adfs)[r17]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_adctrl.c", 225
	andi 0x00000FFF, r2, r2
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_adctrl.c", 231
	cmp 0x00000003, r16
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_adctrl.c", 225
	st.h r2, LOWW(#_s2_ad162)[r13]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_adctrl.c", 231
	bnz9 .BB.LABEL.1_4
.BB.LABEL.1_3:	; if_then_bb
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_adctrl.c", 238
	movhi HIGHW1(#_f4_iu_inv0_tmp_ad), r0, r2
	ld.w LOWW(#_f4_iu_inv0_tmp_ad)[r2], r7
	movhi 0x00003F00, r0, r12
	movhi HIGHW1(#_f4_iu_inv0_ad), r0, r13
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_adctrl.c", 239
	st.w r11, LOWW(#_f4_iu_inv0_tmp_ad)[r2]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_adctrl.c", 242
	andi 0x0000FFFF, r8, r8
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_adctrl.c", 238
	addf.s r7, r11, r11
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_adctrl.c", 242
	movea 0xFFFFF801, r8, r8
	movhi HIGHW1(#_s4_iv_inv0_adfs), r0, r2
	st.w r8, LOWW(#_s4_iv_inv0_adfs)[r2]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_adctrl.c", 243
	movhi HIGHW1(#_s4_offset_iv_inv0_adfs), r0, r2
	ld.w LOWW(#_s4_offset_iv_inv0_adfs)[r2], r2
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_adctrl.c", 245
	movhi HIGHW1(#_f4_k_iv_inv0_adscale), r0, r7
	ld.w LOWW(#_f4_k_iv_inv0_adscale)[r7], r7
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_adctrl.c", 238
	mulf.s r12, r11, r11
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_adctrl.c", 246
	movhi HIGHW1(#_f4_iv_inv0_ad), r0, r15
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_adctrl.c", 243
	subr r8, r2
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_adctrl.c", 250
	andi 0x0000FFFF, r9, r9
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_adctrl.c", 245
	cvtf.ws r2, r2
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_adctrl.c", 250
	movea 0xFFFFF801, r9, r9
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_adctrl.c", 238
	st.w r11, LOWW(#_f4_iu_inv0_ad)[r13]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_adctrl.c", 246
	movhi HIGHW1(#_f4_iv_inv0_tmp_ad), r0, r13
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_adctrl.c", 245
	mulf.s r7, r2, r2
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_adctrl.c", 246
	ld.w LOWW(#_f4_iv_inv0_tmp_ad)[r13], r14
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_adctrl.c", 250
	movhi HIGHW1(#_s4_iw_inv0_adfs), r0, r7
	st.w r9, LOWW(#_s4_iw_inv0_adfs)[r7]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_adctrl.c", 251
	movhi HIGHW1(#_s4_offset_iw_inv0_adfs), r0, r7
	ld.w LOWW(#_s4_offset_iw_inv0_adfs)[r7], r7
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_adctrl.c", 254
	movhi HIGHW1(#_f4_iw_inv0_ad), r0, r16
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_adctrl.c", 258
	andi 0x0000FFFF, r10, r10
	movea 0xFFFFF801, r10, r10
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_adctrl.c", 247
	st.w r2, LOWW(#_f4_iv_inv0_tmp_ad)[r13]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_adctrl.c", 246
	addf.s r14, r2, r2
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_adctrl.c", 253
	movhi HIGHW1(#_f4_k_iw_inv0_adscale), r0, r13
	ld.w LOWW(#_f4_k_iw_inv0_adscale)[r13], r13
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_adctrl.c", 254
	movhi HIGHW1(#_f4_iw_inv0_tmp_ad), r0, r14
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_adctrl.c", 251
	subr r9, r7
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_adctrl.c", 253
	cvtf.ws r7, r7
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_adctrl.c", 246
	mulf.s r12, r2, r2
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_adctrl.c", 253
	mulf.s r13, r7, r7
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_adctrl.c", 258
	movhi HIGHW1(#_s4_idc_inv0_adfs), r0, r13
	st.w r10, LOWW(#_s4_idc_inv0_adfs)[r13]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_adctrl.c", 259
	movhi HIGHW1(#_s4_offset_idc_inv0_adfs), r0, r13
	ld.w LOWW(#_s4_offset_idc_inv0_adfs)[r13], r13
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_adctrl.c", 246
	st.w r2, LOWW(#_f4_iv_inv0_ad)[r15]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_adctrl.c", 254
	ld.w LOWW(#_f4_iw_inv0_tmp_ad)[r14], r15
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_adctrl.c", 255
	st.w r7, LOWW(#_f4_iw_inv0_tmp_ad)[r14]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_adctrl.c", 261
	movhi HIGHW1(#_f4_k_idc_inv0_adscale), r0, r14
	ld.w LOWW(#_f4_k_idc_inv0_adscale)[r14], r14
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_adctrl.c", 259
	subr r10, r13
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_adctrl.c", 254
	addf.s r15, r7, r7
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_adctrl.c", 262
	movhi HIGHW1(#_f4_idc_inv0_tmp_ad), r0, r15
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_adctrl.c", 261
	cvtf.ws r13, r13
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_adctrl.c", 262
	ld.w LOWW(#_f4_idc_inv0_tmp_ad)[r15], r15
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_adctrl.c", 254
	mulf.s r12, r7, r7
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_adctrl.c", 261
	mulf.s r14, r13, r13
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_adctrl.c", 262
	addf.s r15, r13, r14
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_adctrl.c", 254
	st.w r7, LOWW(#_f4_iw_inv0_ad)[r16]
	br9 .BB.LABEL.1_5
.BB.LABEL.1_4:	; if_else_bb
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_adctrl.c", 272
	movhi HIGHW1(#_f4_iu_inv0_ad), r0, r2
	st.w r11, LOWW(#_f4_iu_inv0_ad)[r2]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_adctrl.c", 273
	movhi HIGHW1(#_f4_iu_inv0_tmp_ad), r0, r2
	st.w r11, LOWW(#_f4_iu_inv0_tmp_ad)[r2]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_adctrl.c", 276
	andi 0x0000FFFF, r8, r2
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_adctrl.c", 277
	movhi HIGHW1(#_s4_offset_iv_inv0_adfs), r0, r7
	ld.w LOWW(#_s4_offset_iv_inv0_adfs)[r7], r7
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_adctrl.c", 276
	movea 0xFFFFF801, r2, r2
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_adctrl.c", 279
	movhi HIGHW1(#_f4_k_iv_inv0_adscale), r0, r8
	ld.w LOWW(#_f4_k_iv_inv0_adscale)[r8], r8
	movhi HIGHW1(#_f4_iv_inv0_ad), r0, r12
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_adctrl.c", 280
	movhi HIGHW1(#_f4_iv_inv0_tmp_ad), r0, r13
	st.w r2, LOWW(#_f4_iv_inv0_tmp_ad)[r13]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_adctrl.c", 277
	sub r7, r2
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_adctrl.c", 279
	cvtf.ws r2, r2
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_adctrl.c", 283
	andi 0x0000FFFF, r9, r7
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_adctrl.c", 286
	movhi HIGHW1(#_f4_iw_inv0_ad), r0, r13
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_adctrl.c", 287
	movhi HIGHW1(#_f4_iw_inv0_tmp_ad), r0, r14
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_adctrl.c", 279
	mulf.s r8, r2, r2
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_adctrl.c", 283
	movea 0xFFFFF801, r7, r8
	movhi HIGHW1(#_s4_iv_inv0_adfs), r0, r7
	st.w r8, LOWW(#_s4_iv_inv0_adfs)[r7]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_adctrl.c", 284
	movhi HIGHW1(#_s4_iw_inv0_adfs), r0, r7
	ld.w LOWW(#_s4_iw_inv0_adfs)[r7], r9
	movhi HIGHW1(#_s4_offset_iw_inv0_adfs), r0, r7
	ld.w LOWW(#_s4_offset_iw_inv0_adfs)[r7], r7
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_adctrl.c", 290
	andi 0x0000FFFF, r10, r10
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_adctrl.c", 279
	st.w r2, LOWW(#_f4_iv_inv0_ad)[r12]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_adctrl.c", 286
	movhi HIGHW1(#_f4_k_iw_inv0_adscale), r0, r12
	ld.w LOWW(#_f4_k_iw_inv0_adscale)[r12], r12
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_adctrl.c", 284
	subr r9, r7
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_adctrl.c", 286
	cvtf.ws r7, r7
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_adctrl.c", 287
	st.w r2, LOWW(#_f4_iw_inv0_tmp_ad)[r14]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_adctrl.c", 290
	movea 0xFFFFF801, r10, r10
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_adctrl.c", 286
	mulf.s r12, r7, r7
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_adctrl.c", 290
	movhi HIGHW1(#_s4_idc_inv0_adfs), r0, r12
	st.w r10, LOWW(#_s4_idc_inv0_adfs)[r12]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_adctrl.c", 291
	movhi HIGHW1(#_s4_offset_idc_inv0_adfs), r0, r12
	ld.w LOWW(#_s4_offset_idc_inv0_adfs)[r12], r12
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_adctrl.c", 286
	st.w r7, LOWW(#_f4_iw_inv0_ad)[r13]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_adctrl.c", 293
	movhi HIGHW1(#_f4_k_idc_inv0_adscale), r0, r13
	ld.w LOWW(#_f4_k_idc_inv0_adscale)[r13], r14
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_adctrl.c", 291
	subr r10, r12
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_adctrl.c", 293
	cvtf.ws r12, r12
.BB.LABEL.1_5:	; if_break_bb
	mulf.s r14, r12, r12
	movhi HIGHW1(#_f4_idc_inv0_ad), r0, r14
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_adctrl.c", 298
	sxh r6
	cvtf.ws r6, r6
	st.w r12, LOWW(#_f4_idc_inv0_ad)[r14]
	movhi HIGHW1(#_f4_idc_inv0_tmp_ad), r0, r12
	st.w r13, LOWW(#_f4_idc_inv0_tmp_ad)[r12]
	movhi HIGHW1(#_f4_k_vdc_inv0_adscale), r0, r12
	ld.w LOWW(#_f4_k_vdc_inv0_adscale)[r12], r12
	movhi HIGHW1(#_f4_vdc_inv0_ad), r0, r13
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_adctrl.c", 302
	movhi HIGHW1(#_u1_flag_ictrl_inv0_select), r0, r14
	ld.bu LOWW(#_u1_flag_ictrl_inv0_select)[r14], r14
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_adctrl.c", 298
	mulf.s r12, r6, r6
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_adctrl.c", 302
	cmp 0x00000000, r14
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_adctrl.c", 298
	st.w r6, LOWW(#_f4_vdc_inv0_ad)[r13]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_adctrl.c", 302
	bnz9 .BB.LABEL.1_7
.BB.LABEL.1_6:	; if_then_bb317
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_adctrl.c", 305
	movhi HIGHW1(#_f4_iv_inv0_ctrl), r0, r11
	st.w r2, LOWW(#_f4_iv_inv0_ctrl)[r11]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_adctrl.c", 308
	addf.s r7, r2, r2
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_adctrl.c", 306
	movhi HIGHW1(#_f4_iw_inv0_ctrl), r0, r11
	st.w r7, LOWW(#_f4_iw_inv0_ctrl)[r11]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_adctrl.c", 308
	movhi HIGHW1(#_f4_iu_inv0_ctrl), r0, r7
	negf.s r2, r2
	st.w r2, LOWW(#_f4_iu_inv0_ctrl)[r7]
	br9 .BB.LABEL.1_12
.BB.LABEL.1_7:	; if_else_bb324
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_adctrl.c", 310
	movhi HIGHW1(#_f4_iu_inv0_ctrl), r0, r12
	st.w r11, LOWW(#_f4_iu_inv0_ctrl)[r12]
	cmp 0x00000001, r14
	bnz9 .BB.LABEL.1_9
.BB.LABEL.1_8:	; if_then_bb330
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_adctrl.c", 314
	movhi HIGHW1(#_f4_iw_inv0_ctrl), r0, r2
	st.w r7, LOWW(#_f4_iw_inv0_ctrl)[r2]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_adctrl.c", 316
	addf.s r7, r11, r2
	movhi HIGHW1(#_f4_iv_inv0_ctrl), r0, r7
	negf.s r2, r2
	st.w r2, LOWW(#_f4_iv_inv0_ctrl)[r7]
	br9 .BB.LABEL.1_12
.BB.LABEL.1_9:	; if_else_bb337
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_adctrl.c", 318
	movhi HIGHW1(#_f4_iv_inv0_ctrl), r0, r12
	st.w r2, LOWW(#_f4_iv_inv0_ctrl)[r12]
	cmp 0x00000002, r14
	bnz9 .BB.LABEL.1_11
.BB.LABEL.1_10:	; if_then_bb343
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_adctrl.c", 324
	addf.s r2, r11, r7
	negf.s r7, r7
.BB.LABEL.1_11:	; if_else_bb350
	movhi HIGHW1(#_f4_iw_inv0_ctrl), r0, r2
	st.w r7, LOWW(#_f4_iw_inv0_ctrl)[r2]
.BB.LABEL.1_12:	; if_break_bb356
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_adctrl.c", 338
	movhi HIGHW1(#_f4_vdc_inv0_lpf), r0, r2
	ld.w LOWW(#_f4_vdc_inv0_lpf)[r2], r7
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_adctrl.c", 339
	movhi HIGHW1(#_f4_wclpf_inv0_vdc), r0, r11
	ld.w LOWW(#_f4_wclpf_inv0_vdc)[r11], r11
	movhi HIGHW1(#_f4_ts_inv0_ctrl), r0, r12
	ld.w LOWW(#_f4_ts_inv0_ctrl)[r12], r12
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_adctrl.c", 338
	subf.s r7, r6, r14
	mov 0x00000000, r13
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_adctrl.c", 346
	cmpf.s 0x00000004, r13, r6
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_adctrl.c", 339
	mulf.s r14, r11, r11
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_adctrl.c", 346
	trfsr 0
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_adctrl.c", 339
	mulf.s r12, r11, r11
	addf.s r11, r7, r7
	st.w r7, LOWW(#_f4_vdc_inv0_lpf)[r2]
	bnz9 .BB.LABEL.1_14
.BB.LABEL.1_13:	; if_then_bb371
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_adctrl.c", 348
	recipf.s r6, r13
.BB.LABEL.1_14:	; if_break_bb375
	movhi HIGHW1(#_f4_dvdc_inv0_ad), r0, r2
	st.w r13, LOWW(#_f4_dvdc_inv0_ad)[r2]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_adctrl.c", 359
	movhi HIGHW1(#_u1_flag_inv0_offsetadjl), r0, r2
	ld.bu LOWW(#_u1_flag_inv0_offsetadjl)[r2], r2
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.1_18
.BB.LABEL.1_15:	; bb380
	movhi HIGHW1(#_u1_flag_inv0_offsetadj_ok), r0, r6
	ld.bu LOWW(#_u1_flag_inv0_offsetadj_ok)[r6], r6
	cmp 0x00000000, r6
	bnz9 .BB.LABEL.1_18
.BB.LABEL.1_16:	; if_then_bb392
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_adctrl.c", 361
	movhi HIGHW1(#_u2_cnt_inv0_offsetadj), r0, r2
	ld.h LOWW(#_u2_cnt_inv0_offsetadj)[r2], r6
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_adctrl.c", 364
	movhi HIGHW1(#_s4_offset_iu_inv0_adfs), r0, r7
	st.w r0, LOWW(#_s4_offset_iu_inv0_adfs)[r7]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_adctrl.c", 365
	movhi HIGHW1(#_s4_offset_iv_inv0_adfs), r0, r7
	st.w r0, LOWW(#_s4_offset_iv_inv0_adfs)[r7]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_adctrl.c", 366
	movhi HIGHW1(#_s4_offset_iw_inv0_adfs), r0, r7
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_adctrl.c", 361
	add 0x00000001, r6
	st.h r6, LOWW(#_u2_cnt_inv0_offsetadj)[r2]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_adctrl.c", 367
	movhi HIGHW1(#_s4_offset_idc_inv0_adfs), r0, r2
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_adctrl.c", 366
	st.w r0, LOWW(#_s4_offset_iw_inv0_adfs)[r7]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_adctrl.c", 370
	movhi HIGHW1(#_s4_offset_iv_inv0_adfs_sum), r0, r11
	ld.w LOWW(#_s4_offset_iv_inv0_adfs_sum)[r11], r12
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_adctrl.c", 371
	movhi HIGHW1(#_s4_offset_iw_inv0_adfs_sum), r0, r13
	ld.w LOWW(#_s4_offset_iw_inv0_adfs_sum)[r13], r14
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_adctrl.c", 372
	movhi HIGHW1(#_s4_offset_idc_inv0_adfs_sum), r0, r15
	ld.w LOWW(#_s4_offset_idc_inv0_adfs_sum)[r15], r16
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_adctrl.c", 367
	st.w r0, LOWW(#_s4_offset_idc_inv0_adfs)[r2]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_adctrl.c", 369
	movhi HIGHW1(#_s4_offset_iu_inv0_adfs_sum), r0, r2
	ld.w LOWW(#_s4_offset_iu_inv0_adfs_sum)[r2], r7
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_adctrl.c", 370
	add r12, r8
	st.w r8, LOWW(#_s4_offset_iv_inv0_adfs_sum)[r11]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_adctrl.c", 371
	add r14, r9
	st.w r9, LOWW(#_s4_offset_iw_inv0_adfs_sum)[r13]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_adctrl.c", 372
	add r16, r10
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_adctrl.c", 369
	add r7, r5
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_adctrl.c", 372
	st.w r10, LOWW(#_s4_offset_idc_inv0_adfs_sum)[r15]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_adctrl.c", 369
	st.w r5, LOWW(#_s4_offset_iu_inv0_adfs_sum)[r2]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_adctrl.c", 374
	andi 0x0000FFFF, r6, r2
	addi 0xFFFFFF80, r2, r0
	blt9 .BB.LABEL.1_20
.BB.LABEL.1_17:	; if_then_bb414
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_adctrl.c", 377
	sar 0x00000007, r5
	movhi HIGHW1(#_s4_offset_iu_inv0_adfs), r0, r2
	st.w r5, LOWW(#_s4_offset_iu_inv0_adfs)[r2]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_adctrl.c", 378
	sar 0x00000007, r8
	movhi HIGHW1(#_s4_offset_iv_inv0_adfs), r0, r2
	st.w r8, LOWW(#_s4_offset_iv_inv0_adfs)[r2]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_adctrl.c", 379
	sar 0x00000007, r9
	movhi HIGHW1(#_s4_offset_iw_inv0_adfs), r0, r2
	st.w r9, LOWW(#_s4_offset_iw_inv0_adfs)[r2]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_adctrl.c", 380
	sar 0x00000007, r10
	movhi HIGHW1(#_s4_offset_idc_inv0_adfs), r0, r2
	st.w r10, LOWW(#_s4_offset_idc_inv0_adfs)[r2]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_adctrl.c", 382
	movhi HIGHW1(#_u1_flag_inv0_offsetadj_ok), r0, r2
	mov 0x00000001, r5
	st.b r5, LOWW(#_u1_flag_inv0_offsetadj_ok)[r2]
	jmp [r31]
.BB.LABEL.1_18:	; if_else_bb425
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_adctrl.c", 386
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.1_20
.BB.LABEL.1_19:	; if_then_bb431
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_adctrl.c", 388
	movhi HIGHW1(#_u1_flag_inv0_offsetadj_ok), r0, r2
	st.b r0, LOWW(#_u1_flag_inv0_offsetadj_ok)[r2]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_adctrl.c", 390
	movhi HIGHW1(#_u2_cnt_inv0_offsetadj), r0, r2
	st.h r0, LOWW(#_u2_cnt_inv0_offsetadj)[r2]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_adctrl.c", 392
	movhi HIGHW1(#_s4_offset_iu_inv0_adfs_sum), r0, r2
	st.w r0, LOWW(#_s4_offset_iu_inv0_adfs_sum)[r2]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_adctrl.c", 393
	movhi HIGHW1(#_s4_offset_iv_inv0_adfs_sum), r0, r2
	st.w r0, LOWW(#_s4_offset_iv_inv0_adfs_sum)[r2]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_adctrl.c", 394
	movhi HIGHW1(#_s4_offset_iw_inv0_adfs_sum), r0, r2
	st.w r0, LOWW(#_s4_offset_iw_inv0_adfs_sum)[r2]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_adctrl.c", 395
	movhi HIGHW1(#_s4_offset_idc_inv0_adfs_sum), r0, r2
	st.w r0, LOWW(#_s4_offset_idc_inv0_adfs_sum)[r2]
.BB.LABEL.1_20:	; return
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_adctrl.c", 401
	jmp [r31]
_fb_pwm_inv0_adctrl_init:
	.stack _fb_pwm_inv0_adctrl_init = 0
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_adctrl.c", 418
	movhi HIGHW1(#_s2_ad000), r0, r2
	st.h r0, LOWW(#_s2_ad000)[r2]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_adctrl.c", 419
	movhi HIGHW1(#_s2_ad001), r0, r2
	st.h r0, LOWW(#_s2_ad001)[r2]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_adctrl.c", 420
	movhi HIGHW1(#_s2_ad002), r0, r2
	st.h r0, LOWW(#_s2_ad002)[r2]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_adctrl.c", 421
	movhi HIGHW1(#_s2_ad003), r0, r2
	st.h r0, LOWW(#_s2_ad003)[r2]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_adctrl.c", 422
	movhi HIGHW1(#_s2_ad010), r0, r2
	st.h r0, LOWW(#_s2_ad010)[r2]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_adctrl.c", 423
	movhi HIGHW1(#_s2_ad011), r0, r2
	st.h r0, LOWW(#_s2_ad011)[r2]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_adctrl.c", 424
	movhi HIGHW1(#_s2_ad012), r0, r2
	st.h r0, LOWW(#_s2_ad012)[r2]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_adctrl.c", 425
	movhi HIGHW1(#_s2_ad013), r0, r2
	st.h r0, LOWW(#_s2_ad013)[r2]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_adctrl.c", 426
	movhi HIGHW1(#_s2_ad020), r0, r2
	st.h r0, LOWW(#_s2_ad020)[r2]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_adctrl.c", 427
	movhi HIGHW1(#_s2_ad021), r0, r2
	st.h r0, LOWW(#_s2_ad021)[r2]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_adctrl.c", 428
	movhi HIGHW1(#_s2_ad022), r0, r2
	st.h r0, LOWW(#_s2_ad022)[r2]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_adctrl.c", 429
	movhi HIGHW1(#_s2_ad023), r0, r2
	st.h r0, LOWW(#_s2_ad023)[r2]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_adctrl.c", 430
	movhi HIGHW1(#_s2_ad030), r0, r2
	st.h r0, LOWW(#_s2_ad030)[r2]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_adctrl.c", 431
	movhi HIGHW1(#_s2_ad031), r0, r2
	st.h r0, LOWW(#_s2_ad031)[r2]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_adctrl.c", 432
	movhi HIGHW1(#_s2_ad032), r0, r2
	st.h r0, LOWW(#_s2_ad032)[r2]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_adctrl.c", 433
	movhi HIGHW1(#_s2_ad033), r0, r2
	st.h r0, LOWW(#_s2_ad033)[r2]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_adctrl.c", 434
	movhi HIGHW1(#_s2_ad100), r0, r2
	st.h r0, LOWW(#_s2_ad100)[r2]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_adctrl.c", 435
	movhi HIGHW1(#_s2_ad101), r0, r2
	st.h r0, LOWW(#_s2_ad101)[r2]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_adctrl.c", 436
	movhi HIGHW1(#_s2_ad102), r0, r2
	st.h r0, LOWW(#_s2_ad102)[r2]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_adctrl.c", 437
	movhi HIGHW1(#_s2_ad110), r0, r2
	st.h r0, LOWW(#_s2_ad110)[r2]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_adctrl.c", 438
	movhi HIGHW1(#_s2_ad111), r0, r2
	st.h r0, LOWW(#_s2_ad111)[r2]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_adctrl.c", 439
	movhi HIGHW1(#_s2_ad112), r0, r2
	st.h r0, LOWW(#_s2_ad112)[r2]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_adctrl.c", 440
	movhi HIGHW1(#_s2_ad120), r0, r2
	st.h r0, LOWW(#_s2_ad120)[r2]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_adctrl.c", 441
	movhi HIGHW1(#_s2_ad121), r0, r2
	st.h r0, LOWW(#_s2_ad121)[r2]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_adctrl.c", 442
	movhi HIGHW1(#_s2_ad122), r0, r2
	st.h r0, LOWW(#_s2_ad122)[r2]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_adctrl.c", 443
	movhi HIGHW1(#_s2_ad130), r0, r2
	st.h r0, LOWW(#_s2_ad130)[r2]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_adctrl.c", 444
	movhi HIGHW1(#_s2_ad131), r0, r2
	st.h r0, LOWW(#_s2_ad131)[r2]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_adctrl.c", 445
	movhi HIGHW1(#_s2_ad132), r0, r2
	st.h r0, LOWW(#_s2_ad132)[r2]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_adctrl.c", 446
	movhi HIGHW1(#_s2_ad140), r0, r2
	st.h r0, LOWW(#_s2_ad140)[r2]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_adctrl.c", 447
	movhi HIGHW1(#_s2_ad141), r0, r2
	st.h r0, LOWW(#_s2_ad141)[r2]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_adctrl.c", 448
	movhi HIGHW1(#_s2_ad142), r0, r2
	st.h r0, LOWW(#_s2_ad142)[r2]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_adctrl.c", 449
	movhi HIGHW1(#_s2_ad150), r0, r2
	st.h r0, LOWW(#_s2_ad150)[r2]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_adctrl.c", 450
	movhi HIGHW1(#_s2_ad151), r0, r2
	st.h r0, LOWW(#_s2_ad151)[r2]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_adctrl.c", 451
	movhi HIGHW1(#_s2_ad152), r0, r2
	st.h r0, LOWW(#_s2_ad152)[r2]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_adctrl.c", 452
	movhi HIGHW1(#_s2_ad160), r0, r2
	st.h r0, LOWW(#_s2_ad160)[r2]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_adctrl.c", 453
	movhi HIGHW1(#_s2_ad161), r0, r2
	st.h r0, LOWW(#_s2_ad161)[r2]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_adctrl.c", 454
	movhi HIGHW1(#_s2_ad162), r0, r2
	st.h r0, LOWW(#_s2_ad162)[r2]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_adctrl.c", 460
	movhi HIGHW1(#_s4_adtrig_inv0_delay_ns), r0, r2
	st.w r0, LOWW(#_s4_adtrig_inv0_delay_ns)[r2]
	movhi 0x00003CC8, r0, r2
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_adctrl.c", 466
	movhi HIGHW1(#_f4_k_iu_inv0_adscale), r0, r5
	st.w r2, LOWW(#_f4_k_iu_inv0_adscale)[r5]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_adctrl.c", 467
	movhi HIGHW1(#_f4_k_iv_inv0_adscale), r0, r5
	st.w r2, LOWW(#_f4_k_iv_inv0_adscale)[r5]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_adctrl.c", 468
	movhi HIGHW1(#_f4_k_iw_inv0_adscale), r0, r5
	st.w r2, LOWW(#_f4_k_iw_inv0_adscale)[r5]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_adctrl.c", 469
	movhi HIGHW1(#_f4_k_vdc_inv0_adscale), r0, r5
	mov 0x3EABE000, r6
	st.w r6, LOWW(#_f4_k_vdc_inv0_adscale)[r5]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_adctrl.c", 470
	movhi HIGHW1(#_f4_k_idc_inv0_adscale), r0, r5
	st.w r2, LOWW(#_f4_k_idc_inv0_adscale)[r5]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_adctrl.c", 472
	movhi HIGHW1(#_s4_iu_inv0_adfs), r0, r2
	st.w r0, LOWW(#_s4_iu_inv0_adfs)[r2]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_adctrl.c", 473
	movhi HIGHW1(#_s4_iv_inv0_adfs), r0, r2
	st.w r0, LOWW(#_s4_iv_inv0_adfs)[r2]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_adctrl.c", 474
	movhi HIGHW1(#_s4_iw_inv0_adfs), r0, r2
	st.w r0, LOWW(#_s4_iw_inv0_adfs)[r2]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_adctrl.c", 476
	movhi HIGHW1(#_f4_iu_inv0_ad), r0, r2
	st.w r0, LOWW(#_f4_iu_inv0_ad)[r2]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_adctrl.c", 477
	movhi HIGHW1(#_f4_iv_inv0_ad), r0, r2
	st.w r0, LOWW(#_f4_iv_inv0_ad)[r2]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_adctrl.c", 478
	movhi HIGHW1(#_f4_iw_inv0_ad), r0, r2
	st.w r0, LOWW(#_f4_iw_inv0_ad)[r2]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_adctrl.c", 480
	movhi HIGHW1(#_f4_iu_inv0_tmp_ad), r0, r2
	st.w r0, LOWW(#_f4_iu_inv0_tmp_ad)[r2]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_adctrl.c", 481
	movhi HIGHW1(#_f4_iv_inv0_tmp_ad), r0, r2
	st.w r0, LOWW(#_f4_iv_inv0_tmp_ad)[r2]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_adctrl.c", 482
	movhi HIGHW1(#_f4_iw_inv0_tmp_ad), r0, r2
	st.w r0, LOWW(#_f4_iw_inv0_tmp_ad)[r2]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_adctrl.c", 484
	movhi HIGHW1(#_u1_flag_ictrl_inv0_select), r0, r2
	mov 0x00000001, r5
	st.b r5, LOWW(#_u1_flag_ictrl_inv0_select)[r2]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_adctrl.c", 487
	movhi HIGHW1(#_f4_iu_inv0_ctrl), r0, r2
	st.w r0, LOWW(#_f4_iu_inv0_ctrl)[r2]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_adctrl.c", 488
	movhi HIGHW1(#_f4_iv_inv0_ctrl), r0, r2
	st.w r0, LOWW(#_f4_iv_inv0_ctrl)[r2]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_adctrl.c", 489
	movhi HIGHW1(#_f4_iw_inv0_ctrl), r0, r2
	st.w r0, LOWW(#_f4_iw_inv0_ctrl)[r2]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_adctrl.c", 491
	movhi HIGHW1(#_f4_vdc_inv0_ad), r0, r2
	st.w r0, LOWW(#_f4_vdc_inv0_ad)[r2]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_adctrl.c", 493
	movhi HIGHW1(#_s4_idc_inv0_adfs), r0, r2
	st.w r0, LOWW(#_s4_idc_inv0_adfs)[r2]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_adctrl.c", 494
	movhi HIGHW1(#_f4_idc_inv0_ad), r0, r2
	st.w r0, LOWW(#_f4_idc_inv0_ad)[r2]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_adctrl.c", 495
	movhi HIGHW1(#_f4_idc_inv0_tmp_ad), r0, r2
	st.w r0, LOWW(#_f4_idc_inv0_tmp_ad)[r2]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_adctrl.c", 501
	movhi HIGHW1(#_f4_wclpf_inv0_vdc), r0, r2
	movhi 0x00004396, r0, r5
	st.w r5, LOWW(#_f4_wclpf_inv0_vdc)[r2]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_adctrl.c", 502
	movhi HIGHW1(#_f4_vdc_inv0_lpf), r0, r2
	st.w r0, LOWW(#_f4_vdc_inv0_lpf)[r2]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_pwm_inv0_adctrl.c", 508
	movhi HIGHW1(#_f4_dvdc_inv0_ad), r0, r2
	st.w r0, LOWW(#_f4_dvdc_inv0_ad)[r2]
	jmp [r31]
	.section .bss, bss
	.align 2
_s2_ad000:
	.ds (2)
	.align 2
_s2_ad001:
	.ds (2)
	.align 2
_s2_ad002:
	.ds (2)
	.align 2
_s2_ad003:
	.ds (2)
	.align 2
_s2_ad010:
	.ds (2)
	.align 2
_s2_ad011:
	.ds (2)
	.align 2
_s2_ad012:
	.ds (2)
	.align 2
_s2_ad013:
	.ds (2)
	.align 2
_s2_ad020:
	.ds (2)
	.align 2
_s2_ad021:
	.ds (2)
	.align 2
_s2_ad022:
	.ds (2)
	.align 2
_s2_ad023:
	.ds (2)
	.align 2
_s2_ad030:
	.ds (2)
	.align 2
_s2_ad031:
	.ds (2)
	.align 2
_s2_ad032:
	.ds (2)
	.align 2
_s2_ad033:
	.ds (2)
	.align 2
_s2_ad100:
	.ds (2)
	.align 2
_s2_ad101:
	.ds (2)
	.align 2
_s2_ad102:
	.ds (2)
	.align 2
_s2_ad110:
	.ds (2)
	.align 2
_s2_ad111:
	.ds (2)
	.align 2
_s2_ad112:
	.ds (2)
	.align 2
_s2_ad120:
	.ds (2)
	.align 2
_s2_ad121:
	.ds (2)
	.align 2
_s2_ad122:
	.ds (2)
	.align 2
_s2_ad130:
	.ds (2)
	.align 2
_s2_ad131:
	.ds (2)
	.align 2
_s2_ad132:
	.ds (2)
	.align 2
_s2_ad140:
	.ds (2)
	.align 2
_s2_ad141:
	.ds (2)
	.align 2
_s2_ad142:
	.ds (2)
	.align 2
_s2_ad150:
	.ds (2)
	.align 2
_s2_ad151:
	.ds (2)
	.align 2
_s2_ad152:
	.ds (2)
	.align 2
_s2_ad160:
	.ds (2)
	.align 2
_s2_ad161:
	.ds (2)
	.align 2
_s2_ad162:
	.ds (2)
	.align 4
_s4_adtrig_inv0_delay_ns:
	.ds (4)
	.align 4
_f4_k_iu_inv0_adscale:
	.ds (4)
	.align 4
_f4_k_iv_inv0_adscale:
	.ds (4)
	.align 4
_f4_k_iw_inv0_adscale:
	.ds (4)
	.align 4
_f4_k_vdc_inv0_adscale:
	.ds (4)
	.align 4
_f4_k_idc_inv0_adscale:
	.ds (4)
	.align 4
_s4_iu_inv0_adfs:
	.ds (4)
	.align 4
_s4_iv_inv0_adfs:
	.ds (4)
	.align 4
_s4_iw_inv0_adfs:
	.ds (4)
	.align 4
_f4_iu_inv0_ad:
	.ds (4)
	.align 4
_f4_iv_inv0_ad:
	.ds (4)
	.align 4
_f4_iw_inv0_ad:
	.ds (4)
	.align 4
_f4_iu_inv0_tmp_ad:
	.ds (4)
	.align 4
_f4_iv_inv0_tmp_ad:
	.ds (4)
	.align 4
_f4_iw_inv0_tmp_ad:
	.ds (4)
_u1_flag_ictrl_inv0_select:
	.ds (1)
	.align 4
_f4_iu_inv0_ctrl:
	.ds (4)
	.align 4
_f4_iv_inv0_ctrl:
	.ds (4)
	.align 4
_f4_iw_inv0_ctrl:
	.ds (4)
	.align 4
_f4_vdc_inv0_ad:
	.ds (4)
	.align 4
_s4_idc_inv0_adfs:
	.ds (4)
	.align 4
_f4_idc_inv0_ad:
	.ds (4)
	.align 4
_f4_idc_inv0_tmp_ad:
	.ds (4)
	.align 4
_f4_wclpf_inv0_vdc:
	.ds (4)
	.align 4
_f4_vdc_inv0_lpf:
	.ds (4)
	.align 4
_f4_dvdc_inv0_ad:
	.ds (4)
	.align 4
_s4_offset_iu_inv0_adfs:
	.ds (4)
	.align 4
_s4_offset_iv_inv0_adfs:
	.ds (4)
	.align 4
_s4_offset_iw_inv0_adfs:
	.ds (4)
	.align 4
_s4_offset_idc_inv0_adfs:
	.ds (4)
	.align 4
_s4_offset_iu_inv0_adfs_sum:
	.ds (4)
	.align 4
_s4_offset_iv_inv0_adfs_sum:
	.ds (4)
	.align 4
_s4_offset_iw_inv0_adfs_sum:
	.ds (4)
	.align 4
_s4_offset_idc_inv0_adfs_sum:
	.ds (4)
	.align 2
_u2_cnt_inv0_offsetadj:
	.ds (2)
_u1_flag_inv0_offsetadj_ok:
	.ds (1)
