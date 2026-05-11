#CC-RH Compiler RH850 Assembler Source
#@	CC-RH Version : V2.06.00  [28 Nov 2023]
#@	Command : Common\fi_pe2_error.c ..\Common\iolib\io_CPU.c ..\Common\iolib\io_ADC.c ..\Common\iolib\io_CSIH0.c ..\Common\iolib\io_CSIH1.c ..\Common\iolib\io_ENCA0.c ..\Common\iolib\io_ENCA1.c ..\Common\iolib\io_FCAN.c ..\Common\iolib\io_RDC20.c ..\Common\iolib\io_RDC21.c ..\Common\iolib\io_SCI0_40MHz.c ..\Common\iolib\io_SCI1_40MHz.c ..\Common\iolib\io_SCI2_40MHz.c ..\Common\iolib\io_TAUD0.c ..\Common\iolib\io_TAUD1.c ..\Common\iolib\io_TAUJ0.c ..\Common\iolib\io_TSG30.c ..\Common\iolib\io_TSG31.c ..\PE1\AWatcher\VECLIB_CMDMONI.c src\fpmsm_main.c ..\PE1\src\fi_AWatcher.c src\fi_1ms_int.c src\fi_1ms_inv1_adctrl.c src\fi_1ms_inv1_errctrl.c src\fi_20us_int.c src\fi_20us_inv1_1pulse.c src\fi_enc1_int.c src\fi_enc1_inv1_1pulse.c src\fi_pwm_int.c src\fi_pwm_inv1_1pulse.c src\fi_pwm_inv1_adctrl.c src\fi_pwm_inv1_encctrl.c src\fi_pwm_inv1_errctrl.c src\fi_pwm_inv1_idqctrl.c src\fi_pwm_inv1_invadj.c src\fi_pwm_inv1_svctrl.c src\fi_pwm_inv1_syncctrl.c src\fi_pwm_inv1_vctrlerr.c src\mapdata_ld_inv1_2d.c src\mapdata_ld_inv1_2d_map.c src\mapdata_lq_inv1_2d.c src\mapdata_lq_inv1_2d_map.c ..\PE1\src\fb_kpwm_tbl.c ..\PE1\src\fb_therm_calc.c ..\PE1\src\fb_therm_tbl_module.c ..\PE1\src\fb_vctrlerr_tbl.c src\fi_1ms_inv1_idqcom.c ..\PE1\src\fi_pwm_vctrlerrtbl.c src\fi_1ms_inv1_seqctrl.c ..\Common\iolib\io_PIO_amdt0530.c -Xobj_path=DefaultBuild -Xcpu=g3m -g -g_line -Ospeed -Oinline_size -I..\PE1\src -Isrc -I..\Common -D__CLK_HSB=80,__CLK_LSB=40,__CLKC_HSB=80,__CLK_CLSB=40 -use_recipf -Xasm_path=DefaultBuild -c
#@	compiled at Thu May 23 14:28:27 2024

	.file "src\fi_pwm_inv1_adctrl.c"

	$reg_mode 32
	.dbl_size 8

	.extern _u1_flag_inv0_offsetadjl
	.extern _u1_flag_pwm_inv1_source
	.extern _f4_ts_inv1_ctrl
	.extern _f4_vdc_inv1_ad
	.extern _u1_flag_inv1_offsetadj_ok
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
	.public _s2_ad_inv1_vdc, 2
	.public _s2_ad_inv1_vdc_tmp, 2
	.public _s2_ad_inv1_idc, 2
	.public _s2_ad_inv1_iu, 2
	.public _s2_ad_inv1_iv, 2
	.public _s2_ad_inv1_iw, 2
	.public _s2_ad_inv1_vuv, 2
	.public _s2_ad_inv1_vwv, 2
	.public _s2_ad_inv1_tmp_igbt_up, 2
	.public _s2_ad_inv1_tmp_igbt_un, 2
	.public _s2_ad_inv1_tmp_igbt_vp, 2
	.public _s2_ad_inv1_tmp_igbt_vn, 2
	.public _s2_ad_inv1_tmp_igbt_wp, 2
	.public _s2_ad_inv1_tmp_igbt_wn, 2
	.public _s2_ad_inv1_tmp_mot1, 2
	.public _s2_ad_inv1_tmp_mot2, 2
	.public _s2_ad_inv1_tmp_int, 2
	.public _s2_ad_inv1_vctrlbd, 2
	.public _s2_ad_inv1_tmp_ai0, 2
	.public _s2_ad_inv1_tmp_ai1, 2
	.public _s2_ad_inv1_tmp_ai2, 2
	.public _s2_ad_inv1_tmp_ai3, 2
	.public _s2_ad_inv1_tmp_ai4, 2
	.public _s2_AD1_cnt, 2
	.public _s2_AD1_wait_warning, 2
	.public _s4_adtrig_inv1_delay_ns, 4
	.public _f4_k_iu_inv1_adscale, 4
	.public _f4_k_iv_inv1_adscale, 4
	.public _f4_k_iw_inv1_adscale, 4
	.public _f4_k_vdc_inv1_adscale, 4
	.public _f4_k_idc_inv1_adscale, 4
	.public _f4_k_vuvw_inv1_adscale, 4
	.public _s4_iu_inv1_adfs, 4
	.public _s4_iv_inv1_adfs, 4
	.public _s4_iw_inv1_adfs, 4
	.public _f4_iu_inv1_ad, 4
	.public _f4_iv_inv1_ad, 4
	.public _f4_iw_inv1_ad, 4
	.public _f4_iu_inv1_tmp_ad, 4
	.public _f4_iv_inv1_tmp_ad, 4
	.public _f4_iw_inv1_tmp_ad, 4
	.public _u1_flag_ictrl_inv1_select, 1
	.public _u1_flag_iad_inv1_avg, 1
	.public _f4_iu_inv1_ctrl, 4
	.public _f4_iv_inv1_ctrl, 4
	.public _f4_iw_inv1_ctrl, 4
	.public _f4_vdc_inv1_ad_offset, 4
	.public _f4_vuv_inv1_ad, 4
	.public _f4_vwv_inv1_ad, 4
	.public _f4_vu_inv1_ad, 4
	.public _f4_vv_inv1_ad, 4
	.public _f4_vw_inv1_ad, 4
	.public _f4_vvw_inv1_ad, 4
	.public _f4_vwu_inv1_ad, 4
	.public _f4_vu_inv1_ad_tmp, 4
	.public _f4_vv_inv1_ad_tmp, 4
	.public _f4_vw_inv1_ad_tmp, 4
	.public _f4_vuvw_inv1_ad_offset, 4
	.public _f4_va_inv1_ad, 4
	.public _f4_vb_inv1_ad, 4
	.public _f4_vdq_inv1_ad, 4
	.public _f4_wt_inv1_vuvw_ad, 4
	.public _f4_wt_inv1_pll_vuvw_ad, 4
	.public _f4_wt_inv1_pll_vuvw_ad_err, 4
	.public _f4_kp_inv1_wrpll_vuvw_ad, 4
	.public _f4_ki_inv1_wrpll_vuvw_ad, 4
	.public _f4_wr_inv1_pll_vuvw_ad_p, 4
	.public _f4_wr_inv1_pll_vuvw_ad_i, 4
	.public _f4_wr_inv1_pll_vuvw_ad, 4
	.public _f4_wclpf_inv1_wrpll_vuvw_ad, 4
	.public _f4_wr_inv1_pll_vuvw_ad_lpf, 4
	.public _s4_idc_inv1_adfs, 4
	.public _f4_idc_inv1_ad, 4
	.public _f4_idc_inv1_tmp_ad, 4
	.public _f4_vctrlbd_inv1_ad, 4
	.public _f4_k_vctrlbd_inv1_adscale, 4
	.public _f4_wclpf_inv1_vdc, 4
	.public _f4_vdc_inv1_lpf, 4
	.public _f4_wclpf_inv1_idc, 4
	.public _f4_idc_inv1_lpf, 4
	.public _f4_wclpf_inv1_v_ai, 4
	.public _f4_v_ai_inv1_lpf, 4
	.public _f4_dvdc_inv1_ad, 4
	.public _s4_offset_iu_inv1_adfs, 4
	.public _s4_offset_iv_inv1_adfs, 4
	.public _s4_offset_iw_inv1_adfs, 4
	.public _s4_offset_idc_inv1_adfs, 4
	.public _s4_offset_iu_inv1_adfs_sum, 4
	.public _s4_offset_iv_inv1_adfs_sum, 4
	.public _s4_offset_iw_inv1_adfs_sum, 4
	.public _s4_offset_idc_inv1_adfs_sum, 4
	.public _u2_cnt_inv1_offsetadj, 2
	.public _fi_pwm_inv1_adctrl
	.public _fb_pwm_inv1_adctrl_init

	.section .text, text
_fi_pwm_inv1_adctrl:
	.stack _fi_pwm_inv1_adctrl = 0
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_adctrl.c", 265
	movhi HIGHW1(#_s2_AD1_cnt), r0, r2
	movea 0x00000064, r0, r5
	st.h r5, LOWW(#_s2_AD1_cnt)[r2]
	mov 0x00000000, r2
	movhi HIGHW1(#_s2_AD1_cnt), r0, r5
.BB.LABEL.1_1:	; bb5
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_adctrl.c", 266
	tst1 0x00000004, 0xFFFFB16B[r0]
	bnz9 .BB.LABEL.1_3
.BB.LABEL.1_2:	; bb11
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_adctrl.c", 0
	movea 0x00000063, r2, r6
	add 0xFFFFFFFF, r2
	st.h r6, LOWW(#_s2_AD1_cnt)[r5]
	sxh r6
	cmp 0x00000000, r6
	bgt9 .BB.LABEL.1_1
	br9 .BB.LABEL.1_4
.BB.LABEL.1_3:	; bb5.bb24_crit_edge
	movea 0x00000064, r2, r6
.BB.LABEL.1_4:	; bb24
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_adctrl.c", 267
	sxh r6
	cmp 0x00000000, r6
	bgt9 .BB.LABEL.1_6
.BB.LABEL.1_5:	; if_then_bb
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_adctrl.c", 0
	movhi HIGHW1(#_s2_AD1_wait_warning), r0, r2
	ld.h LOWW(#_s2_AD1_wait_warning)[r2], r5
	add 0x00000001, r5
	st.h r5, LOWW(#_s2_AD1_wait_warning)[r2]
.BB.LABEL.1_6:	; if_break_bb
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_adctrl.c", 280
	movhi 0x0000FFF2, r0, r2
	ld.w 0x0000022C[r2], r5
	movhi HIGHW1(#_s2_ad011), r0, r6
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_adctrl.c", 287
	movhi HIGHW1(#_s2_ad030), r0, r7
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_adctrl.c", 288
	movhi HIGHW1(#_s2_ad031), r0, r8
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_adctrl.c", 289
	movhi HIGHW1(#_s2_ad032), r0, r9
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_adctrl.c", 336
	andi 0x00000FFF, r5, r5
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_adctrl.c", 300
	movhi HIGHW1(#_s2_ad120), r0, r10
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_adctrl.c", 280
	st.h r5, LOWW(#_s2_ad011)[r6]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_adctrl.c", 301
	movhi HIGHW1(#_s2_ad121), r0, r11
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_adctrl.c", 287
	ld.w 0x00000200[r2], r6
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_adctrl.c", 312
	movhi HIGHW1(#_s2_ad150), r0, r12
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_adctrl.c", 287
	andi 0x00000FFF, r6, r6
	st.h r6, LOWW(#_s2_ad030)[r7]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_adctrl.c", 304
	movhi HIGHW1(#_s2_ad130), r0, r7
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_adctrl.c", 288
	ld.w 0x00000204[r2], r6
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_adctrl.c", 313
	movhi HIGHW1(#_s2_ad151), r0, r13
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_adctrl.c", 288
	andi 0x00000FFF, r6, r6
	st.h r6, LOWW(#_s2_ad031)[r8]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_adctrl.c", 305
	movhi HIGHW1(#_s2_ad131), r0, r8
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_adctrl.c", 289
	ld.w 0x00000208[r2], r6
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_adctrl.c", 314
	movhi HIGHW1(#_s2_ad152), r0, r14
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_adctrl.c", 289
	andi 0x00000FFF, r6, r6
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_adctrl.c", 315
	movhi HIGHW1(#_s2_ad160), r0, r15
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_adctrl.c", 289
	st.h r6, LOWW(#_s2_ad032)[r9]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_adctrl.c", 306
	movhi HIGHW1(#_s2_ad132), r0, r9
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_adctrl.c", 300
	ld.w 0x00001230[r2], r6
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_adctrl.c", 319
	movhi HIGHW1(#_s2_ad_inv1_vdc), r0, r16
	ld.hu LOWW(#_s2_ad_inv1_vdc)[r16], r17
	movhi HIGHW1(#_s2_ad_inv1_vdc_tmp), r0, r18
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_adctrl.c", 322
	movhi HIGHW1(#_s2_ad_inv1_iu), r0, r19
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_adctrl.c", 300
	andi 0x00000FFF, r6, r6
	st.h r6, LOWW(#_s2_ad120)[r10]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_adctrl.c", 301
	ld.w 0x00001234[r2], r10
	andi 0x00000FFF, r10, r10
	st.h r10, LOWW(#_s2_ad121)[r11]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_adctrl.c", 304
	ld.w 0x00001200[r2], r11
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_adctrl.c", 336
	andi 0x00000FFF, r11, r11
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_adctrl.c", 304
	st.h r11, LOWW(#_s2_ad130)[r7]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_adctrl.c", 305
	ld.w 0x00001204[r2], r7
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_adctrl.c", 336
	andi 0x00000FFF, r7, r7
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_adctrl.c", 305
	st.h r7, LOWW(#_s2_ad131)[r8]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_adctrl.c", 306
	ld.w 0x00001208[r2], r8
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_adctrl.c", 336
	andi 0x00000FFF, r8, r8
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_adctrl.c", 306
	st.h r8, LOWW(#_s2_ad132)[r9]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_adctrl.c", 312
	ld.w 0x0000123C[r2], r9
	andi 0x00000FFF, r9, r9
	st.h r9, LOWW(#_s2_ad150)[r12]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_adctrl.c", 313
	ld.w 0x00001240[r2], r12
	andi 0x00000FFF, r12, r12
	st.h r12, LOWW(#_s2_ad151)[r13]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_adctrl.c", 314
	ld.w 0x00001244[r2], r13
	andi 0x00000FFF, r13, r13
	st.h r13, LOWW(#_s2_ad152)[r14]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_adctrl.c", 323
	movhi HIGHW1(#_s2_ad_inv1_iv), r0, r14
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_adctrl.c", 315
	ld.w 0x00001248[r2], r2
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_adctrl.c", 323
	st.h r7, LOWW(#_s2_ad_inv1_iv)[r14]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_adctrl.c", 324
	movhi HIGHW1(#_s2_ad_inv1_iw), r0, r14
	st.h r8, LOWW(#_s2_ad_inv1_iw)[r14]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_adctrl.c", 325
	movhi HIGHW1(#_s2_ad_inv1_tmp_igbt_up), r0, r14
	st.h r6, LOWW(#_s2_ad_inv1_tmp_igbt_up)[r14]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_adctrl.c", 326
	movhi HIGHW1(#_s2_ad_inv1_tmp_igbt_un), r0, r6
	st.h r10, LOWW(#_s2_ad_inv1_tmp_igbt_un)[r6]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_adctrl.c", 327
	movhi HIGHW1(#_s2_ad_inv1_tmp_igbt_vp), r0, r6
	st.h r9, LOWW(#_s2_ad_inv1_tmp_igbt_vp)[r6]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_adctrl.c", 328
	movhi HIGHW1(#_s2_ad_inv1_tmp_igbt_vn), r0, r6
	st.h r12, LOWW(#_s2_ad_inv1_tmp_igbt_vn)[r6]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_adctrl.c", 329
	movhi HIGHW1(#_s2_ad_inv1_tmp_igbt_wp), r0, r6
	st.h r13, LOWW(#_s2_ad_inv1_tmp_igbt_wp)[r6]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_adctrl.c", 315
	andi 0x00000FFF, r2, r2
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_adctrl.c", 330
	movhi HIGHW1(#_s2_ad_inv1_tmp_igbt_wn), r0, r6
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_adctrl.c", 315
	st.h r2, LOWW(#_s2_ad160)[r15]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_adctrl.c", 330
	st.h r2, LOWW(#_s2_ad_inv1_tmp_igbt_wn)[r6]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_adctrl.c", 336
	movhi HIGHW1(#_u1_flag_pwm_inv1_source), r0, r2
	ld.bu LOWW(#_u1_flag_pwm_inv1_source)[r2], r2
	movea 0xFFFFF801, r7, r7
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_adctrl.c", 322
	st.h r11, LOWW(#_s2_ad_inv1_iu)[r19]
	movea 0xFFFFF801, r11, r11
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_adctrl.c", 319
	st.h r17, LOWW(#_s2_ad_inv1_vdc_tmp)[r18]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_adctrl.c", 320
	st.h r5, LOWW(#_s2_ad_inv1_vdc)[r16]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_adctrl.c", 336
	cmp 0x00000003, r2
	bnz17 .BB.LABEL.1_10
.BB.LABEL.1_7:	; if_then_bb114
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_adctrl.c", 338
	movhi HIGHW1(#_s4_iu_inv1_adfs), r0, r6
	st.w r11, LOWW(#_s4_iu_inv1_adfs)[r6]
	movhi HIGHW1(#_s4_offset_iu_inv1_adfs), r0, r6
	ld.w LOWW(#_s4_offset_iu_inv1_adfs)[r6], r6
	movhi HIGHW1(#_f4_k_iu_inv1_adscale), r0, r9
	ld.w LOWW(#_f4_k_iu_inv1_adscale)[r9], r9
	movhi HIGHW1(#_u1_flag_iad_inv1_avg), r0, r2
	ld.bu LOWW(#_u1_flag_iad_inv1_avg)[r2], r2
	subr r11, r6
	cvtf.ws r6, r6
	cmp 0x00000001, r2
	mulf.s r9, r6, r6
	bnz9 .BB.LABEL.1_9
.BB.LABEL.1_8:	; if_then_bb120
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_adctrl.c", 345
	movhi HIGHW1(#_f4_iu_inv1_tmp_ad), r0, r2
	ld.w LOWW(#_f4_iu_inv1_tmp_ad)[r2], r9
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_adctrl.c", 346
	st.w r6, LOWW(#_f4_iu_inv1_tmp_ad)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_adctrl.c", 349
	movhi HIGHW1(#_s4_iv_inv1_adfs), r0, r2
	st.w r7, LOWW(#_s4_iv_inv1_adfs)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_adctrl.c", 350
	movhi HIGHW1(#_s4_offset_iv_inv1_adfs), r0, r2
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_adctrl.c", 345
	addf.s r9, r6, r6
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_adctrl.c", 350
	ld.w LOWW(#_s4_offset_iv_inv1_adfs)[r2], r2
	movhi 0x00003F00, r0, r10
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_adctrl.c", 352
	movhi HIGHW1(#_f4_k_iv_inv1_adscale), r0, r9
	ld.w LOWW(#_f4_k_iv_inv1_adscale)[r9], r9
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_adctrl.c", 345
	movhi HIGHW1(#_f4_iu_inv1_ad), r0, r12
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_adctrl.c", 350
	subr r7, r2
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_adctrl.c", 357
	movea 0xFFFFF801, r8, r8
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_adctrl.c", 352
	cvtf.ws r2, r2
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_adctrl.c", 353
	movhi HIGHW1(#_f4_iv_inv1_ad), r0, r14
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_adctrl.c", 345
	mulf.s r10, r6, r6
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_adctrl.c", 352
	mulf.s r9, r2, r2
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_adctrl.c", 357
	movhi HIGHW1(#_s4_iw_inv1_adfs), r0, r9
	st.w r8, LOWW(#_s4_iw_inv1_adfs)[r9]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_adctrl.c", 358
	movhi HIGHW1(#_s4_offset_iw_inv1_adfs), r0, r9
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_adctrl.c", 345
	st.w r6, LOWW(#_f4_iu_inv1_ad)[r12]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_adctrl.c", 353
	movhi HIGHW1(#_f4_iv_inv1_tmp_ad), r0, r12
	ld.w LOWW(#_f4_iv_inv1_tmp_ad)[r12], r13
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_adctrl.c", 361
	movhi HIGHW1(#_f4_iw_inv1_ad), r0, r15
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_adctrl.c", 358
	ld.w LOWW(#_s4_offset_iw_inv1_adfs)[r9], r9
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_adctrl.c", 354
	st.w r2, LOWW(#_f4_iv_inv1_tmp_ad)[r12]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_adctrl.c", 360
	movhi HIGHW1(#_f4_k_iw_inv1_adscale), r0, r12
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_adctrl.c", 353
	addf.s r13, r2, r2
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_adctrl.c", 360
	ld.w LOWW(#_f4_k_iw_inv1_adscale)[r12], r12
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_adctrl.c", 358
	subr r8, r9
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_adctrl.c", 361
	movhi HIGHW1(#_f4_iw_inv1_tmp_ad), r0, r13
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_adctrl.c", 360
	cvtf.ws r9, r9
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_adctrl.c", 353
	mulf.s r10, r2, r2
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_adctrl.c", 360
	mulf.s r12, r9, r9
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_adctrl.c", 365
	movhi HIGHW1(#_s2_ad_inv1_idc), r0, r12
	ld.h LOWW(#_s2_ad_inv1_idc)[r12], r12
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_adctrl.c", 353
	st.w r2, LOWW(#_f4_iv_inv1_ad)[r14]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_adctrl.c", 361
	ld.w LOWW(#_f4_iw_inv1_tmp_ad)[r13], r14
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_adctrl.c", 365
	movea 0xFFFFF801, r12, r12
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_adctrl.c", 362
	st.w r9, LOWW(#_f4_iw_inv1_tmp_ad)[r13]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_adctrl.c", 365
	movhi HIGHW1(#_s4_idc_inv1_adfs), r0, r13
	st.w r12, LOWW(#_s4_idc_inv1_adfs)[r13]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_adctrl.c", 369
	movhi HIGHW1(#_f4_idc_inv1_tmp_ad), r0, r13
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_adctrl.c", 361
	addf.s r14, r9, r9
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_adctrl.c", 366
	movhi HIGHW1(#_s4_offset_idc_inv1_adfs), r0, r14
	ld.w LOWW(#_s4_offset_idc_inv1_adfs)[r14], r14
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_adctrl.c", 369
	ld.w LOWW(#_f4_idc_inv1_tmp_ad)[r13], r16
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_adctrl.c", 361
	mulf.s r10, r9, r9
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_adctrl.c", 366
	subr r12, r14
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_adctrl.c", 368
	cvtf.ws r14, r14
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_adctrl.c", 361
	st.w r9, LOWW(#_f4_iw_inv1_ad)[r15]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_adctrl.c", 368
	movhi HIGHW1(#_f4_k_idc_inv1_adscale), r0, r15
	ld.w LOWW(#_f4_k_idc_inv1_adscale)[r15], r15
	mulf.s r15, r14, r14
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_adctrl.c", 369
	movhi HIGHW1(#_f4_idc_inv1_ad), r0, r15
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_adctrl.c", 370
	st.w r14, LOWW(#_f4_idc_inv1_tmp_ad)[r13]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_adctrl.c", 369
	addf.s r16, r14, r13
	mulf.s r10, r13, r10
	st.w r10, LOWW(#_f4_idc_inv1_ad)[r15]
	br9 .BB.LABEL.1_12
.BB.LABEL.1_9:	; if_else_bb
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_adctrl.c", 378
	movhi HIGHW1(#_f4_iu_inv1_ad), r0, r2
	st.w r6, LOWW(#_f4_iu_inv1_ad)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_adctrl.c", 379
	movhi HIGHW1(#_f4_iu_inv1_tmp_ad), r0, r2
	st.w r6, LOWW(#_f4_iu_inv1_tmp_ad)[r2]
	br9 .BB.LABEL.1_11
.BB.LABEL.1_10:	; if_else_bb226
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_adctrl.c", 407
	movhi HIGHW1(#_s4_iu_inv1_adfs), r0, r2
	st.w r11, LOWW(#_s4_iu_inv1_adfs)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_adctrl.c", 408
	movhi HIGHW1(#_s4_offset_iu_inv1_adfs), r0, r2
	ld.w LOWW(#_s4_offset_iu_inv1_adfs)[r2], r2
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_adctrl.c", 410
	movhi HIGHW1(#_f4_k_iu_inv1_adscale), r0, r6
	ld.w LOWW(#_f4_k_iu_inv1_adscale)[r6], r6
	movhi HIGHW1(#_f4_iu_inv1_ad), r0, r9
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_adctrl.c", 411
	movhi HIGHW1(#_f4_iu_inv1_tmp_ad), r0, r10
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_adctrl.c", 408
	subr r11, r2
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_adctrl.c", 410
	cvtf.ws r2, r2
	mulf.s r6, r2, r6
	st.w r6, LOWW(#_f4_iu_inv1_ad)[r9]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_adctrl.c", 411
	st.w r6, LOWW(#_f4_iu_inv1_tmp_ad)[r10]
.BB.LABEL.1_11:	; if_else_bb226
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_adctrl.c", 0
	movhi HIGHW1(#_s4_iv_inv1_adfs), r0, r2
	st.w r7, LOWW(#_s4_iv_inv1_adfs)[r2]
	movhi HIGHW1(#_s4_offset_iv_inv1_adfs), r0, r2
	ld.w LOWW(#_s4_offset_iv_inv1_adfs)[r2], r2
	movhi HIGHW1(#_f4_k_iv_inv1_adscale), r0, r9
	ld.w LOWW(#_f4_k_iv_inv1_adscale)[r9], r9
	movea 0xFFFFF801, r8, r8
	movhi HIGHW1(#_f4_iv_inv1_ad), r0, r10
	subr r7, r2
	movhi HIGHW1(#_f4_iv_inv1_tmp_ad), r0, r12
	cvtf.ws r2, r2
	movhi HIGHW1(#_s2_ad_inv1_idc), r0, r14
	ld.h LOWW(#_s2_ad_inv1_idc)[r14], r14
	movhi HIGHW1(#_f4_iw_inv1_tmp_ad), r0, r13
	mulf.s r9, r2, r2
	movhi HIGHW1(#_s4_iw_inv1_adfs), r0, r9
	st.w r8, LOWW(#_s4_iw_inv1_adfs)[r9]
	movhi HIGHW1(#_s4_offset_iw_inv1_adfs), r0, r9
	ld.w LOWW(#_s4_offset_iw_inv1_adfs)[r9], r9
	st.w r2, LOWW(#_f4_iv_inv1_ad)[r10]
	subr r8, r9
	cvtf.ws r9, r9
	movhi HIGHW1(#_f4_k_iw_inv1_adscale), r0, r10
	ld.w LOWW(#_f4_k_iw_inv1_adscale)[r10], r10
	movhi HIGHW1(#_f4_idc_inv1_tmp_ad), r0, r15
	st.w r2, LOWW(#_f4_iv_inv1_tmp_ad)[r12]
	movhi HIGHW1(#_f4_iw_inv1_ad), r0, r12
	mulf.s r10, r9, r9
	movhi HIGHW1(#_s4_idc_inv1_adfs), r0, r10
	st.w r9, LOWW(#_f4_iw_inv1_ad)[r12]
	movea 0xFFFFF801, r14, r12
	st.w r12, LOWW(#_s4_idc_inv1_adfs)[r10]
	movhi HIGHW1(#_s4_offset_idc_inv1_adfs), r0, r10
	ld.w LOWW(#_s4_offset_idc_inv1_adfs)[r10], r10
	movhi HIGHW1(#_f4_idc_inv1_ad), r0, r14
	st.w r9, LOWW(#_f4_iw_inv1_tmp_ad)[r13]
	movhi HIGHW1(#_f4_k_idc_inv1_adscale), r0, r13
	ld.w LOWW(#_f4_k_idc_inv1_adscale)[r13], r13
	subr r12, r10
	cvtf.ws r10, r10
	mulf.s r13, r10, r10
	st.w r10, LOWW(#_f4_idc_inv1_ad)[r14]
	st.w r10, LOWW(#_f4_idc_inv1_tmp_ad)[r15]
.BB.LABEL.1_12:	; if_break_bb271
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_adctrl.c", 436
	sxh r5
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_adctrl.c", 437
	movhi HIGHW1(#_f4_vdc_inv1_ad_offset), r0, r14
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_adctrl.c", 436
	sxh r17
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_adctrl.c", 437
	ld.w LOWW(#_f4_vdc_inv1_ad_offset)[r14], r14
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_adctrl.c", 436
	cvtf.ws r5, r5
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_adctrl.c", 440
	movhi HIGHW1(#_f4_k_vuvw_inv1_adscale), r0, r16
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_adctrl.c", 436
	cvtf.ws r17, r13
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_adctrl.c", 440
	ld.w LOWW(#_f4_k_vuvw_inv1_adscale)[r16], r16
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_adctrl.c", 437
	movhi HIGHW1(#_f4_vdc_inv1_ad), r0, r15
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_adctrl.c", 436
	addf.s r13, r5, r5
	movhi 0x00003F00, r0, r13
	mulf.s r13, r5, r5
	movhi HIGHW1(#_f4_k_vdc_inv1_adscale), r0, r13
	ld.w LOWW(#_f4_k_vdc_inv1_adscale)[r13], r13
	mulf.s r13, r5, r5
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_adctrl.c", 440
	movhi HIGHW1(#_s2_ad_inv1_vuv), r0, r13
	ld.h LOWW(#_s2_ad_inv1_vuv)[r13], r13
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_adctrl.c", 437
	subf.s r14, r5, r5
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_adctrl.c", 443
	movhi HIGHW1(#_s2_ad_inv1_vwv), r0, r14
	ld.h LOWW(#_s2_ad_inv1_vwv)[r14], r14
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_adctrl.c", 440
	movea 0xFFFFF801, r13, r13
	cvtf.ws r13, r13
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_adctrl.c", 443
	movea 0xFFFFF801, r14, r14
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_adctrl.c", 437
	st.w r5, LOWW(#_f4_vdc_inv1_ad)[r15]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_adctrl.c", 443
	cvtf.ws r14, r14
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_adctrl.c", 440
	mulf.s r16, r13, r13
	movhi HIGHW1(#_f4_vuv_inv1_ad), r0, r5
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_adctrl.c", 443
	mulf.s r16, r14, r14
	mov 0x3EAAA64C, r16
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_adctrl.c", 440
	st.w r13, LOWW(#_f4_vuv_inv1_ad)[r5]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_adctrl.c", 443
	movhi HIGHW1(#_f4_vwv_inv1_ad), r0, r5
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_adctrl.c", 447
	mulf.s r16, r14, r17
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_adctrl.c", 443
	st.w r14, LOWW(#_f4_vwv_inv1_ad)[r5]
	mov 0x3F2AA64C, r5
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_adctrl.c", 447
	mulf.s r5, r13, r15
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_adctrl.c", 449
	mulf.s r16, r13, r13
	mulf.s r5, r14, r5
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_adctrl.c", 447
	subf.s r17, r15, r15
	movhi HIGHW1(#_f4_vu_inv1_ad), r0, r17
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_adctrl.c", 449
	subf.s r13, r5, r5
	movhi HIGHW1(#_f4_vw_inv1_ad), r0, r13
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_adctrl.c", 447
	st.w r15, LOWW(#_f4_vu_inv1_ad)[r17]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_adctrl.c", 449
	st.w r5, LOWW(#_f4_vw_inv1_ad)[r13]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_adctrl.c", 452
	negf.s r15, r13
	subf.s r5, r13, r5
	movhi HIGHW1(#_f4_vv_inv1_ad), r0, r13
	st.w r5, LOWW(#_f4_vv_inv1_ad)[r13]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_adctrl.c", 457
	movhi HIGHW1(#_u1_flag_ictrl_inv1_select), r0, r5
	ld.bu LOWW(#_u1_flag_ictrl_inv1_select)[r5], r5
	cmp 0x00000000, r5
	bnz9 .BB.LABEL.1_14
.BB.LABEL.1_13:	; if_then_bb314
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_adctrl.c", 460
	movhi HIGHW1(#_f4_iv_inv1_ctrl), r0, r5
	st.w r2, LOWW(#_f4_iv_inv1_ctrl)[r5]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_adctrl.c", 463
	addf.s r9, r2, r2
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_adctrl.c", 461
	movhi HIGHW1(#_f4_iw_inv1_ctrl), r0, r5
	st.w r9, LOWW(#_f4_iw_inv1_ctrl)[r5]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_adctrl.c", 463
	movhi HIGHW1(#_f4_iu_inv1_ctrl), r0, r5
	negf.s r2, r2
	st.w r2, LOWW(#_f4_iu_inv1_ctrl)[r5]
	br9 .BB.LABEL.1_19
.BB.LABEL.1_14:	; if_else_bb321
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_adctrl.c", 465
	movhi HIGHW1(#_f4_iu_inv1_ctrl), r0, r13
	st.w r6, LOWW(#_f4_iu_inv1_ctrl)[r13]
	cmp 0x00000001, r5
	bnz9 .BB.LABEL.1_16
.BB.LABEL.1_15:	; if_then_bb327
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_adctrl.c", 469
	movhi HIGHW1(#_f4_iw_inv1_ctrl), r0, r2
	st.w r9, LOWW(#_f4_iw_inv1_ctrl)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_adctrl.c", 471
	addf.s r9, r6, r2
	movhi HIGHW1(#_f4_iv_inv1_ctrl), r0, r5
	negf.s r2, r2
	st.w r2, LOWW(#_f4_iv_inv1_ctrl)[r5]
	br9 .BB.LABEL.1_19
.BB.LABEL.1_16:	; if_else_bb334
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_adctrl.c", 473
	movhi HIGHW1(#_f4_iv_inv1_ctrl), r0, r13
	st.w r2, LOWW(#_f4_iv_inv1_ctrl)[r13]
	cmp 0x00000002, r5
	bnz9 .BB.LABEL.1_18
.BB.LABEL.1_17:	; if_then_bb340
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_adctrl.c", 479
	addf.s r2, r6, r9
	negf.s r9, r9
.BB.LABEL.1_18:	; if_else_bb347
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_adctrl.c", 0
	movhi HIGHW1(#_f4_iw_inv1_ctrl), r0, r2
	st.w r9, LOWW(#_f4_iw_inv1_ctrl)[r2]
.BB.LABEL.1_19:	; if_break_bb353
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_adctrl.c", 489
	movhi HIGHW1(#_s2_ad_inv1_vctrlbd), r0, r5
	ld.h LOWW(#_s2_ad_inv1_vctrlbd)[r5], r5
	movhi HIGHW1(#_f4_k_vctrlbd_inv1_adscale), r0, r2
	ld.w LOWW(#_f4_k_vctrlbd_inv1_adscale)[r2], r2
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_adctrl.c", 496
	movhi HIGHW1(#_f4_vdc_inv1_ad), r0, r9
	movhi HIGHW1(#_f4_vdc_inv1_lpf), r0, r14
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_adctrl.c", 489
	cvtf.ws r5, r5
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_adctrl.c", 496
	ld.w LOWW(#_f4_vdc_inv1_ad)[r9], r13
	ld.w LOWW(#_f4_vdc_inv1_lpf)[r14], r15
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_adctrl.c", 489
	movhi HIGHW1(#_f4_vctrlbd_inv1_ad), r0, r6
	mulf.s r2, r5, r2
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_adctrl.c", 496
	subf.s r15, r13, r5
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_adctrl.c", 489
	st.w r2, LOWW(#_f4_vctrlbd_inv1_ad)[r6]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_adctrl.c", 497
	movhi HIGHW1(#_f4_wclpf_inv1_vdc), r0, r2
	ld.w LOWW(#_f4_wclpf_inv1_vdc)[r2], r2
	movhi HIGHW1(#_f4_ts_inv1_ctrl), r0, r6
	ld.w LOWW(#_f4_ts_inv1_ctrl)[r6], r13
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_adctrl.c", 501
	ld.w LOWW(#_f4_ts_inv1_ctrl)[r6], r6
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_adctrl.c", 508
	ld.w LOWW(#_f4_vdc_inv1_ad)[r9], r9
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_adctrl.c", 497
	mulf.s r5, r2, r2
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_adctrl.c", 500
	movhi HIGHW1(#_f4_idc_inv1_lpf), r0, r5
	ld.w LOWW(#_f4_idc_inv1_lpf)[r5], r16
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_adctrl.c", 497
	mulf.s r13, r2, r2
	mov 0x00000000, r13
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_adctrl.c", 500
	subf.s r16, r10, r10
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_adctrl.c", 508
	cmpf.s 0x00000004, r13, r9
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_adctrl.c", 497
	addf.s r2, r15, r2
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_adctrl.c", 508
	trfsr 0
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_adctrl.c", 497
	st.w r2, LOWW(#_f4_vdc_inv1_lpf)[r14]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_adctrl.c", 501
	movhi HIGHW1(#_f4_wclpf_inv1_idc), r0, r2
	ld.w LOWW(#_f4_wclpf_inv1_idc)[r2], r2
	mulf.s r10, r2, r2
	mulf.s r6, r2, r2
	addf.s r2, r16, r2
	st.w r2, LOWW(#_f4_idc_inv1_lpf)[r5]
	bnz9 .BB.LABEL.1_21
.BB.LABEL.1_20:	; if_then_bb382
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_adctrl.c", 510
	movhi HIGHW1(#_f4_vdc_inv1_ad), r0, r13
	ld.w LOWW(#_f4_vdc_inv1_ad)[r13], r13
	recipf.s r13, r13
.BB.LABEL.1_21:	; if_break_bb386
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_adctrl.c", 0
	movhi HIGHW1(#_f4_dvdc_inv1_ad), r0, r2
	st.w r13, LOWW(#_f4_dvdc_inv1_ad)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_adctrl.c", 521
	movhi HIGHW1(#_u1_flag_inv0_offsetadjl), r0, r2
	ld.bu LOWW(#_u1_flag_inv0_offsetadjl)[r2], r2
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.1_25
.BB.LABEL.1_22:	; bb391
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_adctrl.c", 0
	movhi HIGHW1(#_u1_flag_inv1_offsetadj_ok), r0, r2
	ld.bu LOWW(#_u1_flag_inv1_offsetadj_ok)[r2], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.1_25
.BB.LABEL.1_23:	; if_then_bb404
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_adctrl.c", 523
	movhi HIGHW1(#_u2_cnt_inv1_offsetadj), r0, r2
	ld.h LOWW(#_u2_cnt_inv1_offsetadj)[r2], r5
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_adctrl.c", 526
	movhi HIGHW1(#_s4_offset_iu_inv1_adfs), r0, r6
	st.w r0, LOWW(#_s4_offset_iu_inv1_adfs)[r6]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_adctrl.c", 527
	movhi HIGHW1(#_s4_offset_iv_inv1_adfs), r0, r6
	st.w r0, LOWW(#_s4_offset_iv_inv1_adfs)[r6]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_adctrl.c", 523
	add 0x00000001, r5
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_adctrl.c", 528
	movhi HIGHW1(#_s4_offset_iw_inv1_adfs), r0, r6
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_adctrl.c", 523
	st.h r5, LOWW(#_u2_cnt_inv1_offsetadj)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_adctrl.c", 529
	movhi HIGHW1(#_s4_offset_idc_inv1_adfs), r0, r2
	st.w r0, LOWW(#_s4_offset_idc_inv1_adfs)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_adctrl.c", 531
	movhi HIGHW1(#_s4_offset_iu_inv1_adfs_sum), r0, r2
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_adctrl.c", 528
	st.w r0, LOWW(#_s4_offset_iw_inv1_adfs)[r6]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_adctrl.c", 532
	movhi HIGHW1(#_s4_offset_iv_inv1_adfs_sum), r0, r9
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_adctrl.c", 531
	ld.w LOWW(#_s4_offset_iu_inv1_adfs_sum)[r2], r6
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_adctrl.c", 533
	movhi HIGHW1(#_s4_offset_iw_inv1_adfs_sum), r0, r13
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_adctrl.c", 534
	movhi HIGHW1(#_s4_offset_idc_inv1_adfs_sum), r0, r15
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_adctrl.c", 532
	ld.w LOWW(#_s4_offset_iv_inv1_adfs_sum)[r9], r10
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_adctrl.c", 533
	ld.w LOWW(#_s4_offset_iw_inv1_adfs_sum)[r13], r14
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_adctrl.c", 534
	ld.w LOWW(#_s4_offset_idc_inv1_adfs_sum)[r15], r16
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_adctrl.c", 531
	add r6, r11
	st.w r11, LOWW(#_s4_offset_iu_inv1_adfs_sum)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_adctrl.c", 532
	add r10, r7
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_adctrl.c", 533
	add r14, r8
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_adctrl.c", 536
	andi 0x0000FFFF, r5, r2
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_adctrl.c", 534
	add r16, r12
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_adctrl.c", 532
	st.w r7, LOWW(#_s4_offset_iv_inv1_adfs_sum)[r9]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_adctrl.c", 533
	st.w r8, LOWW(#_s4_offset_iw_inv1_adfs_sum)[r13]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_adctrl.c", 536
	addi 0xFFFFFF80, r2, r0
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_adctrl.c", 534
	st.w r12, LOWW(#_s4_offset_idc_inv1_adfs_sum)[r15]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_adctrl.c", 536
	blt9 .BB.LABEL.1_27
.BB.LABEL.1_24:	; if_then_bb426
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_adctrl.c", 539
	sar 0x00000007, r11
	movhi HIGHW1(#_s4_offset_iu_inv1_adfs), r0, r2
	st.w r11, LOWW(#_s4_offset_iu_inv1_adfs)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_adctrl.c", 540
	sar 0x00000007, r7
	movhi HIGHW1(#_s4_offset_iv_inv1_adfs), r0, r2
	st.w r7, LOWW(#_s4_offset_iv_inv1_adfs)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_adctrl.c", 541
	sar 0x00000007, r8
	movhi HIGHW1(#_s4_offset_iw_inv1_adfs), r0, r2
	st.w r8, LOWW(#_s4_offset_iw_inv1_adfs)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_adctrl.c", 542
	sar 0x00000007, r12
	movhi HIGHW1(#_s4_offset_idc_inv1_adfs), r0, r2
	st.w r12, LOWW(#_s4_offset_idc_inv1_adfs)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_adctrl.c", 544
	movhi HIGHW1(#_u1_flag_inv1_offsetadj_ok), r0, r2
	mov 0x00000001, r5
	st.b r5, LOWW(#_u1_flag_inv1_offsetadj_ok)[r2]
	jmp [r31]
.BB.LABEL.1_25:	; if_else_bb437
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_adctrl.c", 548
	movhi HIGHW1(#_u1_flag_inv0_offsetadjl), r0, r2
	ld.bu LOWW(#_u1_flag_inv0_offsetadjl)[r2], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.1_27
.BB.LABEL.1_26:	; if_then_bb443
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_adctrl.c", 550
	movhi HIGHW1(#_u1_flag_inv1_offsetadj_ok), r0, r2
	st.b r0, LOWW(#_u1_flag_inv1_offsetadj_ok)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_adctrl.c", 552
	movhi HIGHW1(#_u2_cnt_inv1_offsetadj), r0, r2
	st.h r0, LOWW(#_u2_cnt_inv1_offsetadj)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_adctrl.c", 554
	movhi HIGHW1(#_s4_offset_iu_inv1_adfs_sum), r0, r2
	st.w r0, LOWW(#_s4_offset_iu_inv1_adfs_sum)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_adctrl.c", 555
	movhi HIGHW1(#_s4_offset_iv_inv1_adfs_sum), r0, r2
	st.w r0, LOWW(#_s4_offset_iv_inv1_adfs_sum)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_adctrl.c", 556
	movhi HIGHW1(#_s4_offset_iw_inv1_adfs_sum), r0, r2
	st.w r0, LOWW(#_s4_offset_iw_inv1_adfs_sum)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_adctrl.c", 557
	movhi HIGHW1(#_s4_offset_idc_inv1_adfs_sum), r0, r2
	st.w r0, LOWW(#_s4_offset_idc_inv1_adfs_sum)[r2]
.BB.LABEL.1_27:	; return
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_adctrl.c", 563
	jmp [r31]
_fb_pwm_inv1_adctrl_init:
	.stack _fb_pwm_inv1_adctrl_init = 0
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_adctrl.c", 580
	movhi HIGHW1(#_s2_ad000), r0, r2
	st.h r0, LOWW(#_s2_ad000)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_adctrl.c", 581
	movhi HIGHW1(#_s2_ad001), r0, r2
	st.h r0, LOWW(#_s2_ad001)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_adctrl.c", 582
	movhi HIGHW1(#_s2_ad002), r0, r2
	st.h r0, LOWW(#_s2_ad002)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_adctrl.c", 583
	movhi HIGHW1(#_s2_ad003), r0, r2
	st.h r0, LOWW(#_s2_ad003)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_adctrl.c", 584
	movhi HIGHW1(#_s2_ad010), r0, r2
	st.h r0, LOWW(#_s2_ad010)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_adctrl.c", 585
	movhi HIGHW1(#_s2_ad011), r0, r2
	st.h r0, LOWW(#_s2_ad011)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_adctrl.c", 586
	movhi HIGHW1(#_s2_ad012), r0, r2
	st.h r0, LOWW(#_s2_ad012)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_adctrl.c", 587
	movhi HIGHW1(#_s2_ad013), r0, r2
	st.h r0, LOWW(#_s2_ad013)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_adctrl.c", 588
	movhi HIGHW1(#_s2_ad020), r0, r2
	st.h r0, LOWW(#_s2_ad020)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_adctrl.c", 589
	movhi HIGHW1(#_s2_ad021), r0, r2
	st.h r0, LOWW(#_s2_ad021)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_adctrl.c", 590
	movhi HIGHW1(#_s2_ad022), r0, r2
	st.h r0, LOWW(#_s2_ad022)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_adctrl.c", 591
	movhi HIGHW1(#_s2_ad023), r0, r2
	st.h r0, LOWW(#_s2_ad023)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_adctrl.c", 592
	movhi HIGHW1(#_s2_ad030), r0, r2
	st.h r0, LOWW(#_s2_ad030)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_adctrl.c", 593
	movhi HIGHW1(#_s2_ad031), r0, r2
	st.h r0, LOWW(#_s2_ad031)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_adctrl.c", 594
	movhi HIGHW1(#_s2_ad032), r0, r2
	st.h r0, LOWW(#_s2_ad032)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_adctrl.c", 595
	movhi HIGHW1(#_s2_ad033), r0, r2
	st.h r0, LOWW(#_s2_ad033)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_adctrl.c", 596
	movhi HIGHW1(#_s2_ad100), r0, r2
	st.h r0, LOWW(#_s2_ad100)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_adctrl.c", 597
	movhi HIGHW1(#_s2_ad101), r0, r2
	st.h r0, LOWW(#_s2_ad101)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_adctrl.c", 598
	movhi HIGHW1(#_s2_ad102), r0, r2
	st.h r0, LOWW(#_s2_ad102)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_adctrl.c", 599
	movhi HIGHW1(#_s2_ad110), r0, r2
	st.h r0, LOWW(#_s2_ad110)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_adctrl.c", 600
	movhi HIGHW1(#_s2_ad111), r0, r2
	st.h r0, LOWW(#_s2_ad111)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_adctrl.c", 601
	movhi HIGHW1(#_s2_ad112), r0, r2
	st.h r0, LOWW(#_s2_ad112)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_adctrl.c", 602
	movhi HIGHW1(#_s2_ad161), r0, r2
	st.h r0, LOWW(#_s2_ad161)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_adctrl.c", 603
	movhi HIGHW1(#_s2_ad162), r0, r2
	st.h r0, LOWW(#_s2_ad162)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_adctrl.c", 605
	movhi HIGHW1(#_s2_ad142), r0, r2
	st.h r0, LOWW(#_s2_ad142)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_adctrl.c", 611
	movhi HIGHW1(#_s2_ad_inv1_vdc), r0, r2
	st.h r0, LOWW(#_s2_ad_inv1_vdc)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_adctrl.c", 612
	movhi HIGHW1(#_s2_ad_inv1_idc), r0, r2
	st.h r0, LOWW(#_s2_ad_inv1_idc)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_adctrl.c", 613
	movhi HIGHW1(#_s2_ad_inv1_iu), r0, r2
	st.h r0, LOWW(#_s2_ad_inv1_iu)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_adctrl.c", 614
	movhi HIGHW1(#_s2_ad_inv1_iv), r0, r2
	st.h r0, LOWW(#_s2_ad_inv1_iv)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_adctrl.c", 615
	movhi HIGHW1(#_s2_ad_inv1_iw), r0, r2
	st.h r0, LOWW(#_s2_ad_inv1_iw)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_adctrl.c", 616
	movhi HIGHW1(#_s2_ad_inv1_vuv), r0, r2
	st.h r0, LOWW(#_s2_ad_inv1_vuv)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_adctrl.c", 617
	movhi HIGHW1(#_s2_ad_inv1_vwv), r0, r2
	st.h r0, LOWW(#_s2_ad_inv1_vwv)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_adctrl.c", 618
	movhi HIGHW1(#_s2_ad_inv1_tmp_igbt_up), r0, r2
	st.h r0, LOWW(#_s2_ad_inv1_tmp_igbt_up)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_adctrl.c", 619
	movhi HIGHW1(#_s2_ad_inv1_tmp_igbt_un), r0, r2
	st.h r0, LOWW(#_s2_ad_inv1_tmp_igbt_un)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_adctrl.c", 620
	movhi HIGHW1(#_s2_ad_inv1_tmp_igbt_vp), r0, r2
	st.h r0, LOWW(#_s2_ad_inv1_tmp_igbt_vp)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_adctrl.c", 621
	movhi HIGHW1(#_s2_ad_inv1_tmp_igbt_vn), r0, r2
	st.h r0, LOWW(#_s2_ad_inv1_tmp_igbt_vn)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_adctrl.c", 622
	movhi HIGHW1(#_s2_ad_inv1_tmp_igbt_wp), r0, r2
	st.h r0, LOWW(#_s2_ad_inv1_tmp_igbt_wp)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_adctrl.c", 623
	movhi HIGHW1(#_s2_ad_inv1_tmp_igbt_wn), r0, r2
	st.h r0, LOWW(#_s2_ad_inv1_tmp_igbt_wn)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_adctrl.c", 624
	movhi HIGHW1(#_s2_ad_inv1_tmp_mot1), r0, r2
	st.h r0, LOWW(#_s2_ad_inv1_tmp_mot1)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_adctrl.c", 625
	movhi HIGHW1(#_s2_ad_inv1_tmp_mot2), r0, r2
	st.h r0, LOWW(#_s2_ad_inv1_tmp_mot2)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_adctrl.c", 626
	movhi HIGHW1(#_s2_ad_inv1_tmp_int), r0, r2
	st.h r0, LOWW(#_s2_ad_inv1_tmp_int)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_adctrl.c", 627
	movhi HIGHW1(#_s2_ad_inv1_vctrlbd), r0, r2
	st.h r0, LOWW(#_s2_ad_inv1_vctrlbd)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_adctrl.c", 629
	movhi HIGHW1(#_s2_ad_inv1_tmp_ai0), r0, r2
	st.h r0, LOWW(#_s2_ad_inv1_tmp_ai0)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_adctrl.c", 630
	movhi HIGHW1(#_s2_ad_inv1_tmp_ai1), r0, r2
	st.h r0, LOWW(#_s2_ad_inv1_tmp_ai1)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_adctrl.c", 631
	movhi HIGHW1(#_s2_ad_inv1_tmp_ai2), r0, r2
	st.h r0, LOWW(#_s2_ad_inv1_tmp_ai2)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_adctrl.c", 632
	movhi HIGHW1(#_s2_ad_inv1_tmp_ai3), r0, r2
	st.h r0, LOWW(#_s2_ad_inv1_tmp_ai3)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_adctrl.c", 633
	movhi HIGHW1(#_s2_ad_inv1_tmp_ai4), r0, r2
	st.h r0, LOWW(#_s2_ad_inv1_tmp_ai4)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_adctrl.c", 639
	movhi HIGHW1(#_s4_adtrig_inv1_delay_ns), r0, r2
	st.w r0, LOWW(#_s4_adtrig_inv1_delay_ns)[r2]
	mov 0xBF0CA000, r2
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_adctrl.c", 645
	movhi HIGHW1(#_f4_k_iu_inv1_adscale), r0, r5
	st.w r2, LOWW(#_f4_k_iu_inv1_adscale)[r5]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_adctrl.c", 646
	movhi HIGHW1(#_f4_k_iv_inv1_adscale), r0, r5
	st.w r2, LOWW(#_f4_k_iv_inv1_adscale)[r5]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_adctrl.c", 647
	movhi HIGHW1(#_f4_k_iw_inv1_adscale), r0, r5
	st.w r2, LOWW(#_f4_k_iw_inv1_adscale)[r5]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_adctrl.c", 648
	movhi HIGHW1(#_f4_k_vdc_inv1_adscale), r0, r2
	movhi 0x00003CA0, r0, r5
	st.w r5, LOWW(#_f4_k_vdc_inv1_adscale)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_adctrl.c", 649
	movhi HIGHW1(#_f4_k_idc_inv1_adscale), r0, r2
	mov 0x3F0CA000, r5
	st.w r5, LOWW(#_f4_k_idc_inv1_adscale)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_adctrl.c", 651
	movhi HIGHW1(#_s4_iu_inv1_adfs), r0, r2
	st.w r0, LOWW(#_s4_iu_inv1_adfs)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_adctrl.c", 652
	movhi HIGHW1(#_s4_iv_inv1_adfs), r0, r2
	st.w r0, LOWW(#_s4_iv_inv1_adfs)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_adctrl.c", 653
	movhi HIGHW1(#_s4_iw_inv1_adfs), r0, r2
	st.w r0, LOWW(#_s4_iw_inv1_adfs)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_adctrl.c", 655
	movhi HIGHW1(#_f4_iu_inv1_ad), r0, r2
	st.w r0, LOWW(#_f4_iu_inv1_ad)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_adctrl.c", 656
	movhi HIGHW1(#_f4_iv_inv1_ad), r0, r2
	st.w r0, LOWW(#_f4_iv_inv1_ad)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_adctrl.c", 657
	movhi HIGHW1(#_f4_iw_inv1_ad), r0, r2
	st.w r0, LOWW(#_f4_iw_inv1_ad)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_adctrl.c", 659
	movhi HIGHW1(#_f4_iu_inv1_tmp_ad), r0, r2
	st.w r0, LOWW(#_f4_iu_inv1_tmp_ad)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_adctrl.c", 660
	movhi HIGHW1(#_f4_iv_inv1_tmp_ad), r0, r2
	st.w r0, LOWW(#_f4_iv_inv1_tmp_ad)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_adctrl.c", 661
	movhi HIGHW1(#_f4_iw_inv1_tmp_ad), r0, r2
	st.w r0, LOWW(#_f4_iw_inv1_tmp_ad)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_adctrl.c", 663
	movhi HIGHW1(#_u1_flag_ictrl_inv1_select), r0, r2
	mov 0x00000003, r5
	st.b r5, LOWW(#_u1_flag_ictrl_inv1_select)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_adctrl.c", 665
	movhi HIGHW1(#_u1_flag_iad_inv1_avg), r0, r2
	st.b r0, LOWW(#_u1_flag_iad_inv1_avg)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_adctrl.c", 668
	movhi HIGHW1(#_f4_iu_inv1_ctrl), r0, r2
	st.w r0, LOWW(#_f4_iu_inv1_ctrl)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_adctrl.c", 669
	movhi HIGHW1(#_f4_iv_inv1_ctrl), r0, r2
	st.w r0, LOWW(#_f4_iv_inv1_ctrl)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_adctrl.c", 670
	movhi HIGHW1(#_f4_iw_inv1_ctrl), r0, r2
	st.w r0, LOWW(#_f4_iw_inv1_ctrl)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_adctrl.c", 672
	movhi HIGHW1(#_f4_vdc_inv1_ad), r0, r2
	st.w r0, LOWW(#_f4_vdc_inv1_ad)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_adctrl.c", 673
	movhi HIGHW1(#_f4_vdc_inv1_ad_offset), r0, r2
	st.w r0, LOWW(#_f4_vdc_inv1_ad_offset)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_adctrl.c", 675
	movhi HIGHW1(#_f4_k_vuvw_inv1_adscale), r0, r2
	movhi 0x00003D20, r0, r5
	st.w r5, LOWW(#_f4_k_vuvw_inv1_adscale)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_adctrl.c", 676
	movhi HIGHW1(#_f4_vuv_inv1_ad), r0, r2
	st.w r0, LOWW(#_f4_vuv_inv1_ad)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_adctrl.c", 677
	movhi HIGHW1(#_f4_vwv_inv1_ad), r0, r2
	st.w r0, LOWW(#_f4_vwv_inv1_ad)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_adctrl.c", 678
	movhi HIGHW1(#_f4_vu_inv1_ad), r0, r2
	st.w r0, LOWW(#_f4_vu_inv1_ad)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_adctrl.c", 679
	movhi HIGHW1(#_f4_vv_inv1_ad), r0, r2
	st.w r0, LOWW(#_f4_vv_inv1_ad)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_adctrl.c", 680
	movhi HIGHW1(#_f4_vw_inv1_ad), r0, r2
	st.w r0, LOWW(#_f4_vw_inv1_ad)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_adctrl.c", 681
	movhi HIGHW1(#_f4_va_inv1_ad), r0, r2
	st.w r0, LOWW(#_f4_va_inv1_ad)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_adctrl.c", 682
	movhi HIGHW1(#_f4_vb_inv1_ad), r0, r2
	st.w r0, LOWW(#_f4_vb_inv1_ad)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_adctrl.c", 683
	movhi HIGHW1(#_f4_vdq_inv1_ad), r0, r2
	st.w r0, LOWW(#_f4_vdq_inv1_ad)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_adctrl.c", 685
	movhi HIGHW1(#_f4_wt_inv1_vuvw_ad), r0, r2
	st.w r0, LOWW(#_f4_wt_inv1_vuvw_ad)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_adctrl.c", 687
	movhi HIGHW1(#_f4_wt_inv1_pll_vuvw_ad), r0, r2
	st.w r0, LOWW(#_f4_wt_inv1_pll_vuvw_ad)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_adctrl.c", 688
	movhi HIGHW1(#_f4_wt_inv1_pll_vuvw_ad_err), r0, r2
	st.w r0, LOWW(#_f4_wt_inv1_pll_vuvw_ad_err)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_adctrl.c", 690
	movhi HIGHW1(#_f4_kp_inv1_wrpll_vuvw_ad), r0, r2
	movhi 0x0000447A, r0, r5
	st.w r5, LOWW(#_f4_kp_inv1_wrpll_vuvw_ad)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_adctrl.c", 691
	movhi HIGHW1(#_f4_ki_inv1_wrpll_vuvw_ad), r0, r2
	mov 0x461C4000, r5
	st.w r5, LOWW(#_f4_ki_inv1_wrpll_vuvw_ad)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_adctrl.c", 693
	movhi HIGHW1(#_f4_wr_inv1_pll_vuvw_ad_p), r0, r2
	st.w r0, LOWW(#_f4_wr_inv1_pll_vuvw_ad_p)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_adctrl.c", 694
	movhi HIGHW1(#_f4_wr_inv1_pll_vuvw_ad_i), r0, r2
	st.w r0, LOWW(#_f4_wr_inv1_pll_vuvw_ad_i)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_adctrl.c", 695
	movhi HIGHW1(#_f4_wr_inv1_pll_vuvw_ad), r0, r2
	st.w r0, LOWW(#_f4_wr_inv1_pll_vuvw_ad)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_adctrl.c", 697
	movhi HIGHW1(#_f4_wclpf_inv1_wrpll_vuvw_ad), r0, r2
	movhi 0x000040A0, r0, r5
	st.w r5, LOWW(#_f4_wclpf_inv1_wrpll_vuvw_ad)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_adctrl.c", 698
	movhi HIGHW1(#_f4_wr_inv1_pll_vuvw_ad_lpf), r0, r2
	st.w r0, LOWW(#_f4_wr_inv1_pll_vuvw_ad_lpf)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_adctrl.c", 700
	movhi HIGHW1(#_s4_idc_inv1_adfs), r0, r2
	st.w r0, LOWW(#_s4_idc_inv1_adfs)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_adctrl.c", 701
	movhi HIGHW1(#_f4_idc_inv1_ad), r0, r2
	st.w r0, LOWW(#_f4_idc_inv1_ad)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_adctrl.c", 702
	movhi HIGHW1(#_f4_idc_inv1_tmp_ad), r0, r2
	st.w r0, LOWW(#_f4_idc_inv1_tmp_ad)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_adctrl.c", 704
	movhi HIGHW1(#_f4_vctrlbd_inv1_ad), r0, r2
	st.w r0, LOWW(#_f4_vctrlbd_inv1_ad)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_adctrl.c", 705
	movhi HIGHW1(#_f4_k_vctrlbd_inv1_adscale), r0, r2
	movhi 0x00003C0C, r0, r5
	st.w r5, LOWW(#_f4_k_vctrlbd_inv1_adscale)[r2]
	movhi 0x00004396, r0, r2
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_adctrl.c", 711
	movhi HIGHW1(#_f4_wclpf_inv1_vdc), r0, r5
	st.w r2, LOWW(#_f4_wclpf_inv1_vdc)[r5]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_adctrl.c", 712
	movhi HIGHW1(#_f4_vdc_inv1_lpf), r0, r5
	st.w r0, LOWW(#_f4_vdc_inv1_lpf)[r5]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_adctrl.c", 713
	movhi HIGHW1(#_f4_wclpf_inv1_idc), r0, r5
	st.w r2, LOWW(#_f4_wclpf_inv1_idc)[r5]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_adctrl.c", 714
	movhi HIGHW1(#_f4_idc_inv1_lpf), r0, r2
	st.w r0, LOWW(#_f4_idc_inv1_lpf)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_adctrl.c", 720
	movhi HIGHW1(#_f4_dvdc_inv1_ad), r0, r2
	st.w r0, LOWW(#_f4_dvdc_inv1_ad)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_adctrl.c", 726
	movhi HIGHW1(#_s4_offset_iu_inv1_adfs), r0, r2
	st.w r0, LOWW(#_s4_offset_iu_inv1_adfs)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_adctrl.c", 727
	movhi HIGHW1(#_s4_offset_iv_inv1_adfs), r0, r2
	st.w r0, LOWW(#_s4_offset_iv_inv1_adfs)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_adctrl.c", 728
	movhi HIGHW1(#_s4_offset_iw_inv1_adfs), r0, r2
	st.w r0, LOWW(#_s4_offset_iw_inv1_adfs)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_adctrl.c", 729
	movhi HIGHW1(#_s4_offset_idc_inv1_adfs), r0, r2
	st.w r0, LOWW(#_s4_offset_idc_inv1_adfs)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_adctrl.c", 731
	movhi HIGHW1(#_s4_offset_iu_inv1_adfs_sum), r0, r2
	st.w r0, LOWW(#_s4_offset_iu_inv1_adfs_sum)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_adctrl.c", 732
	movhi HIGHW1(#_s4_offset_iv_inv1_adfs_sum), r0, r2
	st.w r0, LOWW(#_s4_offset_iv_inv1_adfs_sum)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_adctrl.c", 733
	movhi HIGHW1(#_s4_offset_iw_inv1_adfs_sum), r0, r2
	st.w r0, LOWW(#_s4_offset_iw_inv1_adfs_sum)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_adctrl.c", 734
	movhi HIGHW1(#_s4_offset_idc_inv1_adfs_sum), r0, r2
	st.w r0, LOWW(#_s4_offset_idc_inv1_adfs_sum)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_adctrl.c", 736
	movhi HIGHW1(#_u2_cnt_inv1_offsetadj), r0, r2
	st.h r0, LOWW(#_u2_cnt_inv1_offsetadj)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_adctrl.c", 737
	movhi HIGHW1(#_u1_flag_inv1_offsetadj_ok), r0, r2
	st.b r0, LOWW(#_u1_flag_inv1_offsetadj_ok)[r2]
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
	.align 2
_s2_ad_inv1_vdc:
	.ds (2)
	.align 2
_s2_ad_inv1_vdc_tmp:
	.ds (2)
	.align 2
_s2_ad_inv1_idc:
	.ds (2)
	.align 2
_s2_ad_inv1_iu:
	.ds (2)
	.align 2
_s2_ad_inv1_iv:
	.ds (2)
	.align 2
_s2_ad_inv1_iw:
	.ds (2)
	.align 2
_s2_ad_inv1_vuv:
	.ds (2)
	.align 2
_s2_ad_inv1_vwv:
	.ds (2)
	.align 2
_s2_ad_inv1_tmp_igbt_up:
	.ds (2)
	.align 2
_s2_ad_inv1_tmp_igbt_un:
	.ds (2)
	.align 2
_s2_ad_inv1_tmp_igbt_vp:
	.ds (2)
	.align 2
_s2_ad_inv1_tmp_igbt_vn:
	.ds (2)
	.align 2
_s2_ad_inv1_tmp_igbt_wp:
	.ds (2)
	.align 2
_s2_ad_inv1_tmp_igbt_wn:
	.ds (2)
	.align 2
_s2_ad_inv1_tmp_mot1:
	.ds (2)
	.align 2
_s2_ad_inv1_tmp_mot2:
	.ds (2)
	.align 2
_s2_ad_inv1_tmp_int:
	.ds (2)
	.align 2
_s2_ad_inv1_vctrlbd:
	.ds (2)
	.align 2
_s2_ad_inv1_tmp_ai0:
	.ds (2)
	.align 2
_s2_ad_inv1_tmp_ai1:
	.ds (2)
	.align 2
_s2_ad_inv1_tmp_ai2:
	.ds (2)
	.align 2
_s2_ad_inv1_tmp_ai3:
	.ds (2)
	.align 2
_s2_ad_inv1_tmp_ai4:
	.ds (2)
	.align 2
_s2_AD1_cnt:
	.ds (2)
	.align 2
_s2_AD1_wait_warning:
	.ds (2)
	.align 4
_s4_adtrig_inv1_delay_ns:
	.ds (4)
	.align 4
_f4_k_iu_inv1_adscale:
	.ds (4)
	.align 4
_f4_k_iv_inv1_adscale:
	.ds (4)
	.align 4
_f4_k_iw_inv1_adscale:
	.ds (4)
	.align 4
_f4_k_vdc_inv1_adscale:
	.ds (4)
	.align 4
_f4_k_idc_inv1_adscale:
	.ds (4)
	.align 4
_f4_k_vuvw_inv1_adscale:
	.ds (4)
	.align 4
_s4_iu_inv1_adfs:
	.ds (4)
	.align 4
_s4_iv_inv1_adfs:
	.ds (4)
	.align 4
_s4_iw_inv1_adfs:
	.ds (4)
	.align 4
_f4_iu_inv1_ad:
	.ds (4)
	.align 4
_f4_iv_inv1_ad:
	.ds (4)
	.align 4
_f4_iw_inv1_ad:
	.ds (4)
	.align 4
_f4_iu_inv1_tmp_ad:
	.ds (4)
	.align 4
_f4_iv_inv1_tmp_ad:
	.ds (4)
	.align 4
_f4_iw_inv1_tmp_ad:
	.ds (4)
_u1_flag_ictrl_inv1_select:
	.ds (1)
_u1_flag_iad_inv1_avg:
	.ds (1)
	.align 4
_f4_iu_inv1_ctrl:
	.ds (4)
	.align 4
_f4_iv_inv1_ctrl:
	.ds (4)
	.align 4
_f4_iw_inv1_ctrl:
	.ds (4)
	.align 4
_f4_vdc_inv1_ad_offset:
	.ds (4)
	.align 4
_f4_vuv_inv1_ad:
	.ds (4)
	.align 4
_f4_vwv_inv1_ad:
	.ds (4)
	.align 4
_f4_vu_inv1_ad:
	.ds (4)
	.align 4
_f4_vv_inv1_ad:
	.ds (4)
	.align 4
_f4_vw_inv1_ad:
	.ds (4)
	.align 4
_f4_vvw_inv1_ad:
	.ds (4)
	.align 4
_f4_vwu_inv1_ad:
	.ds (4)
	.align 4
_f4_vu_inv1_ad_tmp:
	.ds (4)
	.align 4
_f4_vv_inv1_ad_tmp:
	.ds (4)
	.align 4
_f4_vw_inv1_ad_tmp:
	.ds (4)
	.align 4
_f4_vuvw_inv1_ad_offset:
	.ds (4)
	.align 4
_f4_va_inv1_ad:
	.ds (4)
	.align 4
_f4_vb_inv1_ad:
	.ds (4)
	.align 4
_f4_vdq_inv1_ad:
	.ds (4)
	.align 4
_f4_wt_inv1_vuvw_ad:
	.ds (4)
	.align 4
_f4_wt_inv1_pll_vuvw_ad:
	.ds (4)
	.align 4
_f4_wt_inv1_pll_vuvw_ad_err:
	.ds (4)
	.align 4
_f4_kp_inv1_wrpll_vuvw_ad:
	.ds (4)
	.align 4
_f4_ki_inv1_wrpll_vuvw_ad:
	.ds (4)
	.align 4
_f4_wr_inv1_pll_vuvw_ad_p:
	.ds (4)
	.align 4
_f4_wr_inv1_pll_vuvw_ad_i:
	.ds (4)
	.align 4
_f4_wr_inv1_pll_vuvw_ad:
	.ds (4)
	.align 4
_f4_wclpf_inv1_wrpll_vuvw_ad:
	.ds (4)
	.align 4
_f4_wr_inv1_pll_vuvw_ad_lpf:
	.ds (4)
	.align 4
_s4_idc_inv1_adfs:
	.ds (4)
	.align 4
_f4_idc_inv1_ad:
	.ds (4)
	.align 4
_f4_idc_inv1_tmp_ad:
	.ds (4)
	.align 4
_f4_vctrlbd_inv1_ad:
	.ds (4)
	.align 4
_f4_k_vctrlbd_inv1_adscale:
	.ds (4)
	.align 4
_f4_wclpf_inv1_vdc:
	.ds (4)
	.align 4
_f4_vdc_inv1_lpf:
	.ds (4)
	.align 4
_f4_wclpf_inv1_idc:
	.ds (4)
	.align 4
_f4_idc_inv1_lpf:
	.ds (4)
	.align 4
_f4_wclpf_inv1_v_ai:
	.ds (4)
	.align 4
_f4_v_ai_inv1_lpf:
	.ds (4)
	.align 4
_f4_dvdc_inv1_ad:
	.ds (4)
	.align 4
_s4_offset_iu_inv1_adfs:
	.ds (4)
	.align 4
_s4_offset_iv_inv1_adfs:
	.ds (4)
	.align 4
_s4_offset_iw_inv1_adfs:
	.ds (4)
	.align 4
_s4_offset_idc_inv1_adfs:
	.ds (4)
	.align 4
_s4_offset_iu_inv1_adfs_sum:
	.ds (4)
	.align 4
_s4_offset_iv_inv1_adfs_sum:
	.ds (4)
	.align 4
_s4_offset_iw_inv1_adfs_sum:
	.ds (4)
	.align 4
_s4_offset_idc_inv1_adfs_sum:
	.ds (4)
	.align 2
_u2_cnt_inv1_offsetadj:
	.ds (2)
