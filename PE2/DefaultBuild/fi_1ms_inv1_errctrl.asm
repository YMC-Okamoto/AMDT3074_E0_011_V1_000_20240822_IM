#CC-RH Compiler RH850 Assembler Source
#@	CC-RH Version : V2.06.00  [28 Nov 2023]
#@	Command : Common\fi_pe2_error.c ..\Common\iolib\io_CPU.c ..\Common\iolib\io_ADC.c ..\Common\iolib\io_CSIH0.c ..\Common\iolib\io_CSIH1.c ..\Common\iolib\io_ENCA0.c ..\Common\iolib\io_ENCA1.c ..\Common\iolib\io_FCAN.c ..\Common\iolib\io_RDC20.c ..\Common\iolib\io_RDC21.c ..\Common\iolib\io_SCI0_40MHz.c ..\Common\iolib\io_SCI1_40MHz.c ..\Common\iolib\io_SCI2_40MHz.c ..\Common\iolib\io_TAUD0.c ..\Common\iolib\io_TAUD1.c ..\Common\iolib\io_TAUJ0.c ..\Common\iolib\io_TSG30.c ..\Common\iolib\io_TSG31.c ..\PE1\AWatcher\VECLIB_CMDMONI.c src\fpmsm_main.c ..\PE1\src\fi_AWatcher.c src\fi_1ms_int.c src\fi_1ms_inv1_adctrl.c src\fi_1ms_inv1_errctrl.c src\fi_20us_int.c src\fi_20us_inv1_1pulse.c src\fi_enc1_int.c src\fi_enc1_inv1_1pulse.c src\fi_pwm_int.c src\fi_pwm_inv1_1pulse.c src\fi_pwm_inv1_adctrl.c src\fi_pwm_inv1_encctrl.c src\fi_pwm_inv1_errctrl.c src\fi_pwm_inv1_idqctrl.c src\fi_pwm_inv1_invadj.c src\fi_pwm_inv1_svctrl.c src\fi_pwm_inv1_syncctrl.c src\fi_pwm_inv1_vctrlerr.c src\mapdata_ld_inv1_2d.c src\mapdata_ld_inv1_2d_map.c src\mapdata_lq_inv1_2d.c src\mapdata_lq_inv1_2d_map.c ..\PE1\src\fb_kpwm_tbl.c ..\PE1\src\fb_therm_calc.c ..\PE1\src\fb_therm_tbl_module.c ..\PE1\src\fb_vctrlerr_tbl.c src\fi_1ms_inv1_idqcom.c ..\PE1\src\fi_pwm_vctrlerrtbl.c src\fi_1ms_inv1_seqctrl.c ..\Common\iolib\io_PIO_amdt0530.c -Xobj_path=DefaultBuild -Xcpu=g3m -g -g_line -Ospeed -Oinline_size -I..\PE1\src -Isrc -I..\Common -D__CLK_HSB=80,__CLK_LSB=40,__CLKC_HSB=80,__CLK_CLSB=40 -use_recipf -Xasm_path=DefaultBuild -c
#@	compiled at Thu May 23 14:28:27 2024

	.file "src\fi_1ms_inv1_errctrl.c"

	$reg_mode 32
	.dbl_size 8

	.extern _u4_RESF_reg
	.extern _u4_flag_inv0_error
	.extern _u1_flag_inv0_sysctrl_active_discharge
	.extern _u4_flag_inv0_error_hw
	.extern _u4_status_can0
	.extern _u1_pwm_inv1_status
	.extern _f4_vdc_inv1_ad
	.extern _u4_flag_inv1_error
	.extern _u4_flag_inv1_error1
	.extern _u4_flag_inv1_error2
	.extern _f4_tmp_inv1_igbt_up
	.extern _f4_tmp_inv1_igbt_vp
	.extern _f4_tmp_inv1_igbt_wp
	.extern _f4_tmp_inv1_igbt_un
	.extern _f4_tmp_inv1_igbt_vn
	.extern _f4_tmp_inv1_igbt_wn
	.extern _f4_tmp_inv1_int
	.extern _u4_flag_inv1_error_hw
	.extern _u4_flag_inv1_error_hw_lev
	.extern _s2_ad_inv1_tmp_igbt_up
	.extern _s2_ad_inv1_tmp_igbt_un
	.extern _s2_ad_inv1_tmp_igbt_vp
	.extern _s2_ad_inv1_tmp_igbt_vn
	.extern _s2_ad_inv1_tmp_igbt_wp
	.extern _s2_ad_inv1_tmp_igbt_wn
	.extern _s2_ad_inv1_tmp_int
	.extern _f4_vctrlbd_inv1_ad
	.extern _s4_offset_iu_inv1_adfs
	.extern _s4_offset_iv_inv1_adfs
	.extern _s4_offset_iw_inv1_adfs
	.extern _s4_offset_idc_inv1_adfs
	.extern _f4_speed_inv1_lpf
	.public _f4_lev_uv_inv1_vdc, 4
	.public _f4_lev_oh_inv1_igbt, 4
	.public _f4_lev_oh_inv1_mot1, 4
	.public _f4_lev_oh_inv1_mot2, 4
	.public _f4_lev_os_inv1_speed, 4
	.public _f4_lev_oh_inv1_int, 4
	.public _f4_lev_ov_inv1_ctrlbd, 4
	.public _f4_lev_uv_inv1_ctrlbd, 4
	.public _s4_lev_snsr_inv1_iinv, 4
	.public _s4_lev_snsr_inv1_tmp_igbt, 4
	.public _s4_lev_snsr_inv1_tmp_int, 4
	.public _s4_lev_snsr_inv1_tmp_mot1, 4
	.public _s4_lev_snsr_inv1_tmp_mot2, 4
	.public _u2_cnt_uv_inv1_vdc_1ms_max, 2
	.public _u2_cnt_oh_inv1_igbt_1ms_max, 2
	.public _u2_cnt_oh_inv1_mot1_1ms_max, 2
	.public _u2_cnt_oh_inv1_mot2_1ms_max, 2
	.public _u2_cnt_os_inv1_speed_1ms_max, 2
	.public _u2_cnt_oh_inv1_int_1ms_max, 2
	.public _u2_cnt_ov_inv1_ctrlbd_1ms_max, 2
	.public _u2_cnt_uv_inv1_ctrlbd_1ms_max, 2
	.public _u2_cnt_snsr_inv1_tmp_int_1ms_max, 2
	.public _u2_cnt_snsr_inv1_tmp_igbt_1ms_max, 2
	.public _u2_cnt_snsr_inv1_tmp_mot1_1ms_max, 2
	.public _u2_cnt_snsr_inv1_tmp_mot2_1ms_max, 2
	.public _u2_cnt_uv_inv1_vdc_1ms, 2
	.public _u2_cnt_oh_inv1_igbt_up_1ms, 2
	.public _u2_cnt_oh_inv1_igbt_vp_1ms, 2
	.public _u2_cnt_oh_inv1_igbt_wp_1ms, 2
	.public _u2_cnt_oh_inv1_igbt_un_1ms, 2
	.public _u2_cnt_oh_inv1_igbt_vn_1ms, 2
	.public _u2_cnt_oh_inv1_igbt_wn_1ms, 2
	.public _u2_cnt_oh_inv1_mot1_1ms, 2
	.public _u2_cnt_oh_inv1_mot2_1ms, 2
	.public _u2_cnt_os_inv1_speed_1ms, 2
	.public _u2_cnt_oh_inv1_int_1ms, 2
	.public _u2_cnt_ov_inv1_ctrlbd_1ms, 2
	.public _u2_cnt_uv_inv1_ctrlbd_1ms, 2
	.public _u2_cnt_snsr_inv1_tmp_int_1ms, 2
	.public _u2_cnt_snsr_inv1_tmp_gdbrd_1ms, 2
	.public _u2_cnt_snsr_inv1_tmp_igbt_up_1ms, 2
	.public _u2_cnt_snsr_inv1_tmp_igbt_vp_1ms, 2
	.public _u2_cnt_snsr_inv1_tmp_igbt_wp_1ms, 2
	.public _u2_cnt_snsr_inv1_tmp_igbt_un_1ms, 2
	.public _u2_cnt_snsr_inv1_tmp_igbt_vn_1ms, 2
	.public _u2_cnt_snsr_inv1_tmp_igbt_wn_1ms, 2
	.public _u2_cnt_snsr_inv1_tmp_mot1_1ms, 2
	.public _u2_cnt_snsr_inv1_tmp_mot2_1ms, 2
	.public _u1_flag_can0_err_enable, 1
	.public _u2_cnt_di_inv1_safty, 2
	.public _u2_cnt_di_inv1_safty_max, 2
	.public _u2_cnt_di_inv1_gb, 2
	.public _u2_cnt_di_inv1_gb_max, 2
	.public _u1_err_MCU, 1
	.public _fi_1ms_inv1_errctrl
	.public _fb_1ms_inv1_errctrl_init

	.section .text, text
_fi_1ms_inv1_errctrl:
	.stack _fi_1ms_inv1_errctrl = 0
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_errctrl.c", 141
	movhi HIGHW1(#_u1_pwm_inv1_status), r0, r2
	ld.bu LOWW(#_u1_pwm_inv1_status)[r2], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.1_5
.BB.LABEL.1_1:	; bb
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_errctrl.c", 0
	movhi HIGHW1(#_u1_flag_inv0_sysctrl_active_discharge), r0, r2
	ld.bu LOWW(#_u1_flag_inv0_sysctrl_active_discharge)[r2], r2
	cmp 0x00000001, r2
	bz9 .BB.LABEL.1_5
.BB.LABEL.1_2:	; if_then_bb
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_errctrl.c", 143
	movhi HIGHW1(#_f4_vdc_inv1_ad), r0, r2
	movhi HIGHW1(#_f4_lev_uv_inv1_vdc), r0, r5
	ld.w LOWW(#_f4_vdc_inv1_ad)[r2], r2
	ld.w LOWW(#_f4_lev_uv_inv1_vdc)[r5], r5
	cmpf.s 0x00000007, r5, r2
	trfsr 0
	bz9 .BB.LABEL.1_5
.BB.LABEL.1_3:	; if_then_bb20
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_errctrl.c", 145
	movhi HIGHW1(#_u2_cnt_uv_inv1_vdc_1ms), r0, r2
	ld.h LOWW(#_u2_cnt_uv_inv1_vdc_1ms)[r2], r5
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_errctrl.c", 146
	movhi HIGHW1(#_u2_cnt_uv_inv1_vdc_1ms_max), r0, r6
	ld.hu LOWW(#_u2_cnt_uv_inv1_vdc_1ms_max)[r6], r6
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_errctrl.c", 145
	add 0x00000001, r5
	st.h r5, LOWW(#_u2_cnt_uv_inv1_vdc_1ms)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_errctrl.c", 146
	andi 0x0000FFFF, r5, r2
	cmp r6, r2
	bl9 .BB.LABEL.1_6
.BB.LABEL.1_4:	; if_then_bb30
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_errctrl.c", 148
	movhi HIGHW1(#_u4_flag_inv1_error1), r0, r2
	ld.w LOWW(#_u4_flag_inv1_error1)[r2], r5
	ori 0x00000002, r5, r5
	st.w r5, LOWW(#_u4_flag_inv1_error1)[r2]
.BB.LABEL.1_5:	; if_break_bb36.PartialDrain
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_errctrl.c", 0
	movhi HIGHW1(#_u2_cnt_uv_inv1_vdc_1ms), r0, r2
	st.h r0, LOWW(#_u2_cnt_uv_inv1_vdc_1ms)[r2]
.BB.LABEL.1_6:	; if_break_bb36
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_errctrl.c", 168
	movhi HIGHW1(#_f4_tmp_inv1_igbt_up), r0, r2
	movhi HIGHW1(#_f4_lev_oh_inv1_igbt), r0, r5
	ld.w LOWW(#_f4_tmp_inv1_igbt_up)[r2], r2
	ld.w LOWW(#_f4_lev_oh_inv1_igbt)[r5], r5
	cmpf.s 0x00000007, r2, r5
	trfsr 0
	bz9 .BB.LABEL.1_9
.BB.LABEL.1_7:	; if_then_bb42
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_errctrl.c", 170
	movhi HIGHW1(#_u2_cnt_oh_inv1_igbt_up_1ms), r0, r2
	ld.h LOWW(#_u2_cnt_oh_inv1_igbt_up_1ms)[r2], r6
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_errctrl.c", 171
	movhi HIGHW1(#_u2_cnt_oh_inv1_igbt_1ms_max), r0, r7
	ld.hu LOWW(#_u2_cnt_oh_inv1_igbt_1ms_max)[r7], r7
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_errctrl.c", 170
	add 0x00000001, r6
	st.h r6, LOWW(#_u2_cnt_oh_inv1_igbt_up_1ms)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_errctrl.c", 171
	andi 0x0000FFFF, r6, r2
	cmp r7, r2
	bl9 .BB.LABEL.1_10
.BB.LABEL.1_8:	; if_then_bb52
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_errctrl.c", 173
	movhi HIGHW1(#_u4_flag_inv1_error1), r0, r2
	ld.w LOWW(#_u4_flag_inv1_error1)[r2], r6
	ori 0x00001000, r6, r6
	st.w r6, LOWW(#_u4_flag_inv1_error1)[r2]
.BB.LABEL.1_9:	; if_break_bb58.PartialDrain
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_errctrl.c", 0
	movhi HIGHW1(#_u2_cnt_oh_inv1_igbt_up_1ms), r0, r2
	st.h r0, LOWW(#_u2_cnt_oh_inv1_igbt_up_1ms)[r2]
.BB.LABEL.1_10:	; if_break_bb58
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_errctrl.c", 188
	movhi HIGHW1(#_f4_tmp_inv1_igbt_vp), r0, r2
	ld.w LOWW(#_f4_tmp_inv1_igbt_vp)[r2], r2
	cmpf.s 0x00000007, r2, r5
	trfsr 0
	bz9 .BB.LABEL.1_13
.BB.LABEL.1_11:	; if_then_bb64
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_errctrl.c", 190
	movhi HIGHW1(#_u2_cnt_oh_inv1_igbt_vp_1ms), r0, r2
	ld.h LOWW(#_u2_cnt_oh_inv1_igbt_vp_1ms)[r2], r6
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_errctrl.c", 191
	movhi HIGHW1(#_u2_cnt_oh_inv1_igbt_1ms_max), r0, r7
	ld.hu LOWW(#_u2_cnt_oh_inv1_igbt_1ms_max)[r7], r7
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_errctrl.c", 190
	add 0x00000001, r6
	st.h r6, LOWW(#_u2_cnt_oh_inv1_igbt_vp_1ms)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_errctrl.c", 191
	andi 0x0000FFFF, r6, r2
	cmp r7, r2
	bl9 .BB.LABEL.1_14
.BB.LABEL.1_12:	; if_then_bb74
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_errctrl.c", 193
	movhi HIGHW1(#_u4_flag_inv1_error1), r0, r2
	ld.w LOWW(#_u4_flag_inv1_error1)[r2], r6
	ori 0x00004000, r6, r6
	st.w r6, LOWW(#_u4_flag_inv1_error1)[r2]
.BB.LABEL.1_13:	; if_break_bb80.PartialDrain
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_errctrl.c", 0
	movhi HIGHW1(#_u2_cnt_oh_inv1_igbt_vp_1ms), r0, r2
	st.h r0, LOWW(#_u2_cnt_oh_inv1_igbt_vp_1ms)[r2]
.BB.LABEL.1_14:	; if_break_bb80
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_errctrl.c", 208
	movhi HIGHW1(#_f4_tmp_inv1_igbt_wp), r0, r2
	ld.w LOWW(#_f4_tmp_inv1_igbt_wp)[r2], r2
	cmpf.s 0x00000007, r2, r5
	trfsr 0
	bz9 .BB.LABEL.1_17
.BB.LABEL.1_15:	; if_then_bb86
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_errctrl.c", 210
	movhi HIGHW1(#_u2_cnt_oh_inv1_igbt_wp_1ms), r0, r2
	ld.h LOWW(#_u2_cnt_oh_inv1_igbt_wp_1ms)[r2], r6
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_errctrl.c", 211
	movhi HIGHW1(#_u2_cnt_oh_inv1_igbt_1ms_max), r0, r7
	ld.hu LOWW(#_u2_cnt_oh_inv1_igbt_1ms_max)[r7], r7
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_errctrl.c", 210
	add 0x00000001, r6
	st.h r6, LOWW(#_u2_cnt_oh_inv1_igbt_wp_1ms)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_errctrl.c", 211
	andi 0x0000FFFF, r6, r2
	cmp r7, r2
	bl9 .BB.LABEL.1_18
.BB.LABEL.1_16:	; if_then_bb96
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_errctrl.c", 213
	movhi HIGHW1(#_u4_flag_inv1_error1), r0, r2
	ld.w LOWW(#_u4_flag_inv1_error1)[r2], r6
	movhi 0x00000001, r0, r7
	or r7, r6
	st.w r6, LOWW(#_u4_flag_inv1_error1)[r2]
.BB.LABEL.1_17:	; if_break_bb102.PartialDrain
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_errctrl.c", 0
	movhi HIGHW1(#_u2_cnt_oh_inv1_igbt_wp_1ms), r0, r2
	st.h r0, LOWW(#_u2_cnt_oh_inv1_igbt_wp_1ms)[r2]
.BB.LABEL.1_18:	; if_break_bb102
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_errctrl.c", 228
	movhi HIGHW1(#_f4_tmp_inv1_igbt_un), r0, r2
	ld.w LOWW(#_f4_tmp_inv1_igbt_un)[r2], r2
	cmpf.s 0x00000007, r2, r5
	trfsr 0
	bz9 .BB.LABEL.1_21
.BB.LABEL.1_19:	; if_then_bb108
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_errctrl.c", 230
	movhi HIGHW1(#_u2_cnt_oh_inv1_igbt_un_1ms), r0, r2
	ld.h LOWW(#_u2_cnt_oh_inv1_igbt_un_1ms)[r2], r6
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_errctrl.c", 231
	movhi HIGHW1(#_u2_cnt_oh_inv1_igbt_1ms_max), r0, r7
	ld.hu LOWW(#_u2_cnt_oh_inv1_igbt_1ms_max)[r7], r7
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_errctrl.c", 230
	add 0x00000001, r6
	st.h r6, LOWW(#_u2_cnt_oh_inv1_igbt_un_1ms)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_errctrl.c", 231
	andi 0x0000FFFF, r6, r2
	cmp r7, r2
	bl9 .BB.LABEL.1_22
.BB.LABEL.1_20:	; if_then_bb118
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_errctrl.c", 233
	movhi HIGHW1(#_u4_flag_inv1_error1), r0, r2
	ld.w LOWW(#_u4_flag_inv1_error1)[r2], r6
	ori 0x00002000, r6, r6
	st.w r6, LOWW(#_u4_flag_inv1_error1)[r2]
.BB.LABEL.1_21:	; if_break_bb124.PartialDrain
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_errctrl.c", 0
	movhi HIGHW1(#_u2_cnt_oh_inv1_igbt_un_1ms), r0, r2
	st.h r0, LOWW(#_u2_cnt_oh_inv1_igbt_un_1ms)[r2]
.BB.LABEL.1_22:	; if_break_bb124
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_errctrl.c", 248
	movhi HIGHW1(#_f4_tmp_inv1_igbt_vn), r0, r2
	ld.w LOWW(#_f4_tmp_inv1_igbt_vn)[r2], r2
	cmpf.s 0x00000007, r2, r5
	trfsr 0
	bz9 .BB.LABEL.1_25
.BB.LABEL.1_23:	; if_then_bb130
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_errctrl.c", 250
	movhi HIGHW1(#_u2_cnt_oh_inv1_igbt_vn_1ms), r0, r2
	ld.h LOWW(#_u2_cnt_oh_inv1_igbt_vn_1ms)[r2], r6
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_errctrl.c", 251
	movhi HIGHW1(#_u2_cnt_oh_inv1_igbt_1ms_max), r0, r7
	ld.hu LOWW(#_u2_cnt_oh_inv1_igbt_1ms_max)[r7], r7
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_errctrl.c", 250
	add 0x00000001, r6
	st.h r6, LOWW(#_u2_cnt_oh_inv1_igbt_vn_1ms)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_errctrl.c", 251
	andi 0x0000FFFF, r6, r2
	cmp r7, r2
	bl9 .BB.LABEL.1_26
.BB.LABEL.1_24:	; if_then_bb140
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_errctrl.c", 253
	movhi HIGHW1(#_u4_flag_inv1_error1), r0, r2
	ld.w LOWW(#_u4_flag_inv1_error1)[r2], r6
	ori 0x00008000, r6, r6
	st.w r6, LOWW(#_u4_flag_inv1_error1)[r2]
.BB.LABEL.1_25:	; if_break_bb146.PartialDrain
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_errctrl.c", 0
	movhi HIGHW1(#_u2_cnt_oh_inv1_igbt_vn_1ms), r0, r2
	st.h r0, LOWW(#_u2_cnt_oh_inv1_igbt_vn_1ms)[r2]
.BB.LABEL.1_26:	; if_break_bb146
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_errctrl.c", 268
	movhi HIGHW1(#_f4_tmp_inv1_igbt_wn), r0, r2
	ld.w LOWW(#_f4_tmp_inv1_igbt_wn)[r2], r2
	cmpf.s 0x00000007, r2, r5
	trfsr 0
	bz9 .BB.LABEL.1_29
.BB.LABEL.1_27:	; if_then_bb152
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_errctrl.c", 270
	movhi HIGHW1(#_u2_cnt_oh_inv1_igbt_wn_1ms), r0, r2
	ld.h LOWW(#_u2_cnt_oh_inv1_igbt_wn_1ms)[r2], r5
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_errctrl.c", 271
	movhi HIGHW1(#_u2_cnt_oh_inv1_igbt_1ms_max), r0, r6
	ld.hu LOWW(#_u2_cnt_oh_inv1_igbt_1ms_max)[r6], r6
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_errctrl.c", 270
	add 0x00000001, r5
	st.h r5, LOWW(#_u2_cnt_oh_inv1_igbt_wn_1ms)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_errctrl.c", 271
	andi 0x0000FFFF, r5, r2
	cmp r6, r2
	bl9 .BB.LABEL.1_30
.BB.LABEL.1_28:	; if_then_bb162
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_errctrl.c", 273
	movhi HIGHW1(#_u4_flag_inv1_error1), r0, r2
	ld.w LOWW(#_u4_flag_inv1_error1)[r2], r5
	movhi 0x00000002, r0, r6
	or r6, r5
	st.w r5, LOWW(#_u4_flag_inv1_error1)[r2]
.BB.LABEL.1_29:	; if_break_bb168.PartialDrain
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_errctrl.c", 0
	movhi HIGHW1(#_u2_cnt_oh_inv1_igbt_wn_1ms), r0, r2
	st.h r0, LOWW(#_u2_cnt_oh_inv1_igbt_wn_1ms)[r2]
.BB.LABEL.1_30:	; if_break_bb168
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_errctrl.c", 332
	movhi HIGHW1(#_f4_tmp_inv1_int), r0, r2
	movhi HIGHW1(#_f4_lev_oh_inv1_int), r0, r5
	ld.w LOWW(#_f4_tmp_inv1_int)[r2], r2
	ld.w LOWW(#_f4_lev_oh_inv1_int)[r5], r5
	cmpf.s 0x00000007, r2, r5
	trfsr 0
	bz9 .BB.LABEL.1_33
.BB.LABEL.1_31:	; if_then_bb174
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_errctrl.c", 334
	movhi HIGHW1(#_u2_cnt_oh_inv1_int_1ms), r0, r2
	ld.h LOWW(#_u2_cnt_oh_inv1_int_1ms)[r2], r5
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_errctrl.c", 335
	movhi HIGHW1(#_u2_cnt_oh_inv1_int_1ms_max), r0, r6
	ld.hu LOWW(#_u2_cnt_oh_inv1_int_1ms_max)[r6], r6
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_errctrl.c", 334
	add 0x00000001, r5
	st.h r5, LOWW(#_u2_cnt_oh_inv1_int_1ms)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_errctrl.c", 335
	andi 0x0000FFFF, r5, r2
	cmp r6, r2
	bl9 .BB.LABEL.1_34
.BB.LABEL.1_32:	; if_then_bb184
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_errctrl.c", 337
	movhi HIGHW1(#_u4_flag_inv1_error1), r0, r2
	ld.w LOWW(#_u4_flag_inv1_error1)[r2], r5
	st.w r5, LOWW(#_u4_flag_inv1_error1)[r2]
.BB.LABEL.1_33:	; if_break_bb190.PartialDrain
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_errctrl.c", 0
	movhi HIGHW1(#_u2_cnt_oh_inv1_int_1ms), r0, r2
	st.h r0, LOWW(#_u2_cnt_oh_inv1_int_1ms)[r2]
.BB.LABEL.1_34:	; if_break_bb190
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_errctrl.c", 352
	movhi HIGHW1(#_f4_lev_ov_inv1_ctrlbd), r0, r2
	movhi HIGHW1(#_f4_vctrlbd_inv1_ad), r0, r5
	ld.w LOWW(#_f4_lev_ov_inv1_ctrlbd)[r2], r2
	ld.w LOWW(#_f4_vctrlbd_inv1_ad)[r5], r5
	cmpf.s 0x00000007, r5, r2
	trfsr 0
	bz9 .BB.LABEL.1_37
.BB.LABEL.1_35:	; if_then_bb196
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_errctrl.c", 354
	movhi HIGHW1(#_u2_cnt_ov_inv1_ctrlbd_1ms), r0, r2
	ld.h LOWW(#_u2_cnt_ov_inv1_ctrlbd_1ms)[r2], r6
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_errctrl.c", 355
	movhi HIGHW1(#_u2_cnt_ov_inv1_ctrlbd_1ms_max), r0, r7
	ld.hu LOWW(#_u2_cnt_ov_inv1_ctrlbd_1ms_max)[r7], r7
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_errctrl.c", 354
	add 0x00000001, r6
	st.h r6, LOWW(#_u2_cnt_ov_inv1_ctrlbd_1ms)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_errctrl.c", 355
	andi 0x0000FFFF, r6, r2
	cmp r7, r2
	bl9 .BB.LABEL.1_38
.BB.LABEL.1_36:	; if_then_bb206
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_errctrl.c", 357
	movhi HIGHW1(#_u4_flag_inv1_error1), r0, r2
	ld.w LOWW(#_u4_flag_inv1_error1)[r2], r6
	movhi 0x00000020, r0, r7
	or r7, r6
	st.w r6, LOWW(#_u4_flag_inv1_error1)[r2]
.BB.LABEL.1_37:	; if_break_bb212.PartialDrain
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_errctrl.c", 0
	movhi HIGHW1(#_u2_cnt_ov_inv1_ctrlbd_1ms), r0, r2
	st.h r0, LOWW(#_u2_cnt_ov_inv1_ctrlbd_1ms)[r2]
.BB.LABEL.1_38:	; if_break_bb212
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_errctrl.c", 372
	movhi HIGHW1(#_f4_lev_uv_inv1_ctrlbd), r0, r2
	ld.w LOWW(#_f4_lev_uv_inv1_ctrlbd)[r2], r2
	cmpf.s 0x00000007, r2, r5
	trfsr 0
	bz9 .BB.LABEL.1_41
.BB.LABEL.1_39:	; if_then_bb218
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_errctrl.c", 374
	movhi HIGHW1(#_u2_cnt_uv_inv1_ctrlbd_1ms), r0, r2
	ld.h LOWW(#_u2_cnt_uv_inv1_ctrlbd_1ms)[r2], r5
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_errctrl.c", 375
	movhi HIGHW1(#_u2_cnt_uv_inv1_ctrlbd_1ms_max), r0, r6
	ld.hu LOWW(#_u2_cnt_uv_inv1_ctrlbd_1ms_max)[r6], r6
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_errctrl.c", 374
	add 0x00000001, r5
	st.h r5, LOWW(#_u2_cnt_uv_inv1_ctrlbd_1ms)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_errctrl.c", 375
	andi 0x0000FFFF, r5, r2
	cmp r6, r2
	bl9 .BB.LABEL.1_42
.BB.LABEL.1_40:	; if_then_bb228
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_errctrl.c", 377
	movhi HIGHW1(#_u4_flag_inv1_error1), r0, r2
	ld.w LOWW(#_u4_flag_inv1_error1)[r2], r5
	movhi 0x00000040, r0, r6
	or r6, r5
	st.w r5, LOWW(#_u4_flag_inv1_error1)[r2]
.BB.LABEL.1_41:	; if_break_bb234.PartialDrain
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_errctrl.c", 0
	movhi HIGHW1(#_u2_cnt_uv_inv1_ctrlbd_1ms), r0, r2
	st.h r0, LOWW(#_u2_cnt_uv_inv1_ctrlbd_1ms)[r2]
.BB.LABEL.1_42:	; if_break_bb234
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_errctrl.c", 392
	movhi HIGHW1(#_f4_speed_inv1_lpf), r0, r2
	movhi HIGHW1(#_f4_lev_os_inv1_speed), r0, r5
	ld.w LOWW(#_f4_speed_inv1_lpf)[r2], r2
	ld.w LOWW(#_f4_lev_os_inv1_speed)[r5], r5
	cmpf.s 0x00000004, r5, r2
	trfsr 0
	bz9 .BB.LABEL.1_44
.BB.LABEL.1_43:	; bb239
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_errctrl.c", 0
	negf.s r5, r5
	cmpf.s 0x00000007, r5, r2
	trfsr 0
	bz9 .BB.LABEL.1_46
.BB.LABEL.1_44:	; if_then_bb253
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_errctrl.c", 394
	movhi HIGHW1(#_u2_cnt_os_inv1_speed_1ms), r0, r2
	ld.h LOWW(#_u2_cnt_os_inv1_speed_1ms)[r2], r5
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_errctrl.c", 395
	movhi HIGHW1(#_u2_cnt_os_inv1_speed_1ms_max), r0, r6
	ld.hu LOWW(#_u2_cnt_os_inv1_speed_1ms_max)[r6], r6
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_errctrl.c", 394
	add 0x00000001, r5
	st.h r5, LOWW(#_u2_cnt_os_inv1_speed_1ms)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_errctrl.c", 395
	andi 0x0000FFFF, r5, r2
	cmp r6, r2
	bl9 .BB.LABEL.1_47
.BB.LABEL.1_45:	; if_then_bb263
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_errctrl.c", 397
	movhi HIGHW1(#_u4_flag_inv1_error1), r0, r2
	ld.w LOWW(#_u4_flag_inv1_error1)[r2], r5
	ori 0x00000040, r5, r5
	st.w r5, LOWW(#_u4_flag_inv1_error1)[r2]
.BB.LABEL.1_46:	; if_break_bb269.PartialDrain
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_errctrl.c", 0
	movhi HIGHW1(#_u2_cnt_os_inv1_speed_1ms), r0, r2
	st.h r0, LOWW(#_u2_cnt_os_inv1_speed_1ms)[r2]
.BB.LABEL.1_47:	; if_break_bb269
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_errctrl.c", 412
	movhi HIGHW1(#_u4_status_can0), r0, r2
	ld.w LOWW(#_u4_status_can0)[r2], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.1_50
.BB.LABEL.1_48:	; bb273
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_errctrl.c", 0
	movhi HIGHW1(#_u1_flag_can0_err_enable), r0, r2
	ld.bu LOWW(#_u1_flag_can0_err_enable)[r2], r2
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.1_50
.BB.LABEL.1_49:	; if_then_bb286
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_errctrl.c", 414
	movhi HIGHW1(#_u4_flag_inv1_error1), r0, r2
	ld.w LOWW(#_u4_flag_inv1_error1)[r2], r5
	ori 0x00000400, r5, r5
	st.w r5, LOWW(#_u4_flag_inv1_error1)[r2]
.BB.LABEL.1_50:	; if_break_bb290
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_errctrl.c", 426
	movhi HIGHW1(#_s4_offset_iu_inv1_adfs), r0, r2
	movhi HIGHW1(#_s4_lev_snsr_inv1_iinv), r0, r5
	ld.w LOWW(#_s4_offset_iu_inv1_adfs)[r2], r2
	ld.w LOWW(#_s4_lev_snsr_inv1_iinv)[r5], r5
	cmp r5, r2
	bgt9 .BB.LABEL.1_52
.BB.LABEL.1_51:	; bb295
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_errctrl.c", 0
	mov r5, r6
	subr r0, r6
	cmp r6, r2
	bge9 .BB.LABEL.1_53
.BB.LABEL.1_52:	; if_then_bb309
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_errctrl.c", 429
	movhi HIGHW1(#_u4_flag_inv1_error2), r0, r2
	ld.w LOWW(#_u4_flag_inv1_error2)[r2], r6
	ori 0x00000200, r6, r6
	st.w r6, LOWW(#_u4_flag_inv1_error2)[r2]
.BB.LABEL.1_53:	; if_break_bb313
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_errctrl.c", 433
	movhi HIGHW1(#_s4_offset_iv_inv1_adfs), r0, r2
	ld.w LOWW(#_s4_offset_iv_inv1_adfs)[r2], r2
	cmp r5, r2
	bgt9 .BB.LABEL.1_55
.BB.LABEL.1_54:	; bb318
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_errctrl.c", 0
	mov r5, r6
	subr r0, r6
	cmp r6, r2
	bge9 .BB.LABEL.1_56
.BB.LABEL.1_55:	; if_then_bb332
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_errctrl.c", 436
	movhi HIGHW1(#_u4_flag_inv1_error2), r0, r2
	ld.w LOWW(#_u4_flag_inv1_error2)[r2], r6
	ori 0x00000400, r6, r6
	st.w r6, LOWW(#_u4_flag_inv1_error2)[r2]
.BB.LABEL.1_56:	; if_break_bb336
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_errctrl.c", 440
	movhi HIGHW1(#_s4_offset_iw_inv1_adfs), r0, r2
	ld.w LOWW(#_s4_offset_iw_inv1_adfs)[r2], r2
	cmp r5, r2
	bgt9 .BB.LABEL.1_58
.BB.LABEL.1_57:	; bb341
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_errctrl.c", 0
	mov r5, r6
	subr r0, r6
	cmp r6, r2
	bge9 .BB.LABEL.1_59
.BB.LABEL.1_58:	; if_then_bb355
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_errctrl.c", 443
	movhi HIGHW1(#_u4_flag_inv1_error2), r0, r2
	ld.w LOWW(#_u4_flag_inv1_error2)[r2], r6
	ori 0x00000800, r6, r6
	st.w r6, LOWW(#_u4_flag_inv1_error2)[r2]
.BB.LABEL.1_59:	; if_break_bb359
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_errctrl.c", 447
	movhi HIGHW1(#_s4_offset_idc_inv1_adfs), r0, r2
	ld.w LOWW(#_s4_offset_idc_inv1_adfs)[r2], r2
	cmp r5, r2
	bgt9 .BB.LABEL.1_61
.BB.LABEL.1_60:	; bb364
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_errctrl.c", 0
	subr r0, r5
	cmp r5, r2
	bge9 .BB.LABEL.1_62
.BB.LABEL.1_61:	; if_then_bb378
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_errctrl.c", 450
	movhi HIGHW1(#_u4_flag_inv1_error2), r0, r2
	ld.w LOWW(#_u4_flag_inv1_error2)[r2], r5
	st.w r5, LOWW(#_u4_flag_inv1_error2)[r2]
.BB.LABEL.1_62:	; if_break_bb382
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_errctrl.c", 460
	movhi HIGHW1(#_s2_ad_inv1_tmp_igbt_up), r0, r2
	movhi HIGHW1(#_s4_lev_snsr_inv1_tmp_igbt), r0, r5
	ld.h LOWW(#_s2_ad_inv1_tmp_igbt_up)[r2], r2
	ld.w LOWW(#_s4_lev_snsr_inv1_tmp_igbt)[r5], r5
	cmp r5, r2
	bge9 .BB.LABEL.1_65
.BB.LABEL.1_63:	; if_then_bb389
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_errctrl.c", 462
	movhi HIGHW1(#_u2_cnt_snsr_inv1_tmp_igbt_up_1ms), r0, r2
	ld.h LOWW(#_u2_cnt_snsr_inv1_tmp_igbt_up_1ms)[r2], r6
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_errctrl.c", 463
	movhi HIGHW1(#_u2_cnt_snsr_inv1_tmp_igbt_1ms_max), r0, r7
	ld.hu LOWW(#_u2_cnt_snsr_inv1_tmp_igbt_1ms_max)[r7], r7
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_errctrl.c", 462
	add 0x00000001, r6
	st.h r6, LOWW(#_u2_cnt_snsr_inv1_tmp_igbt_up_1ms)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_errctrl.c", 463
	andi 0x0000FFFF, r6, r2
	cmp r7, r2
	bnh9 .BB.LABEL.1_65
.BB.LABEL.1_64:	; if_then_bb399
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_errctrl.c", 465
	movhi HIGHW1(#_u2_cnt_snsr_inv1_tmp_igbt_up_1ms), r0, r2
	st.h r0, LOWW(#_u2_cnt_snsr_inv1_tmp_igbt_up_1ms)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_errctrl.c", 466
	movhi HIGHW1(#_u4_flag_inv1_error2), r0, r2
	ld.w LOWW(#_u4_flag_inv1_error2)[r2], r6
	ori 0x00000008, r6, r6
	st.w r6, LOWW(#_u4_flag_inv1_error2)[r2]
.BB.LABEL.1_65:	; if_break_bb405
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_errctrl.c", 473
	movhi HIGHW1(#_s2_ad_inv1_tmp_igbt_vp), r0, r2
	ld.h LOWW(#_s2_ad_inv1_tmp_igbt_vp)[r2], r2
	cmp r5, r2
	bge9 .BB.LABEL.1_68
.BB.LABEL.1_66:	; if_then_bb412
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_errctrl.c", 475
	movhi HIGHW1(#_u2_cnt_snsr_inv1_tmp_igbt_vp_1ms), r0, r2
	ld.h LOWW(#_u2_cnt_snsr_inv1_tmp_igbt_vp_1ms)[r2], r6
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_errctrl.c", 476
	movhi HIGHW1(#_u2_cnt_snsr_inv1_tmp_igbt_1ms_max), r0, r7
	ld.hu LOWW(#_u2_cnt_snsr_inv1_tmp_igbt_1ms_max)[r7], r7
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_errctrl.c", 475
	add 0x00000001, r6
	st.h r6, LOWW(#_u2_cnt_snsr_inv1_tmp_igbt_vp_1ms)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_errctrl.c", 476
	andi 0x0000FFFF, r6, r2
	cmp r7, r2
	bnh9 .BB.LABEL.1_68
.BB.LABEL.1_67:	; if_then_bb422
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_errctrl.c", 478
	movhi HIGHW1(#_u2_cnt_snsr_inv1_tmp_igbt_vp_1ms), r0, r2
	st.h r0, LOWW(#_u2_cnt_snsr_inv1_tmp_igbt_vp_1ms)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_errctrl.c", 479
	movhi HIGHW1(#_u4_flag_inv1_error2), r0, r2
	ld.w LOWW(#_u4_flag_inv1_error2)[r2], r6
	ori 0x00000020, r6, r6
	st.w r6, LOWW(#_u4_flag_inv1_error2)[r2]
.BB.LABEL.1_68:	; if_break_bb428
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_errctrl.c", 486
	movhi HIGHW1(#_s2_ad_inv1_tmp_igbt_wp), r0, r2
	ld.h LOWW(#_s2_ad_inv1_tmp_igbt_wp)[r2], r2
	cmp r5, r2
	bge9 .BB.LABEL.1_71
.BB.LABEL.1_69:	; if_then_bb435
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_errctrl.c", 488
	movhi HIGHW1(#_u2_cnt_snsr_inv1_tmp_igbt_wp_1ms), r0, r2
	ld.h LOWW(#_u2_cnt_snsr_inv1_tmp_igbt_wp_1ms)[r2], r6
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_errctrl.c", 489
	movhi HIGHW1(#_u2_cnt_snsr_inv1_tmp_igbt_1ms_max), r0, r7
	ld.hu LOWW(#_u2_cnt_snsr_inv1_tmp_igbt_1ms_max)[r7], r7
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_errctrl.c", 488
	add 0x00000001, r6
	st.h r6, LOWW(#_u2_cnt_snsr_inv1_tmp_igbt_wp_1ms)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_errctrl.c", 489
	andi 0x0000FFFF, r6, r2
	cmp r7, r2
	bnh9 .BB.LABEL.1_71
.BB.LABEL.1_70:	; if_then_bb445
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_errctrl.c", 491
	movhi HIGHW1(#_u2_cnt_snsr_inv1_tmp_igbt_wp_1ms), r0, r2
	st.h r0, LOWW(#_u2_cnt_snsr_inv1_tmp_igbt_wp_1ms)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_errctrl.c", 492
	movhi HIGHW1(#_u4_flag_inv1_error2), r0, r2
	ld.w LOWW(#_u4_flag_inv1_error2)[r2], r6
	ori 0x00000080, r6, r6
	st.w r6, LOWW(#_u4_flag_inv1_error2)[r2]
.BB.LABEL.1_71:	; if_break_bb451
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_errctrl.c", 499
	movhi HIGHW1(#_s2_ad_inv1_tmp_igbt_un), r0, r2
	ld.h LOWW(#_s2_ad_inv1_tmp_igbt_un)[r2], r2
	cmp r5, r2
	bge9 .BB.LABEL.1_74
.BB.LABEL.1_72:	; if_then_bb458
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_errctrl.c", 501
	movhi HIGHW1(#_u2_cnt_snsr_inv1_tmp_igbt_un_1ms), r0, r2
	ld.h LOWW(#_u2_cnt_snsr_inv1_tmp_igbt_un_1ms)[r2], r6
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_errctrl.c", 502
	movhi HIGHW1(#_u2_cnt_snsr_inv1_tmp_igbt_1ms_max), r0, r7
	ld.hu LOWW(#_u2_cnt_snsr_inv1_tmp_igbt_1ms_max)[r7], r7
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_errctrl.c", 501
	add 0x00000001, r6
	st.h r6, LOWW(#_u2_cnt_snsr_inv1_tmp_igbt_un_1ms)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_errctrl.c", 502
	andi 0x0000FFFF, r6, r2
	cmp r7, r2
	bnh9 .BB.LABEL.1_74
.BB.LABEL.1_73:	; if_then_bb468
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_errctrl.c", 504
	movhi HIGHW1(#_u2_cnt_snsr_inv1_tmp_igbt_un_1ms), r0, r2
	st.h r0, LOWW(#_u2_cnt_snsr_inv1_tmp_igbt_un_1ms)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_errctrl.c", 505
	movhi HIGHW1(#_u4_flag_inv1_error2), r0, r2
	ld.w LOWW(#_u4_flag_inv1_error2)[r2], r6
	ori 0x00000010, r6, r6
	st.w r6, LOWW(#_u4_flag_inv1_error2)[r2]
.BB.LABEL.1_74:	; if_break_bb474
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_errctrl.c", 512
	movhi HIGHW1(#_s2_ad_inv1_tmp_igbt_vn), r0, r2
	ld.h LOWW(#_s2_ad_inv1_tmp_igbt_vn)[r2], r2
	cmp r5, r2
	bge9 .BB.LABEL.1_77
.BB.LABEL.1_75:	; if_then_bb481
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_errctrl.c", 514
	movhi HIGHW1(#_u2_cnt_snsr_inv1_tmp_igbt_vn_1ms), r0, r2
	ld.h LOWW(#_u2_cnt_snsr_inv1_tmp_igbt_vn_1ms)[r2], r6
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_errctrl.c", 515
	movhi HIGHW1(#_u2_cnt_snsr_inv1_tmp_igbt_1ms_max), r0, r7
	ld.hu LOWW(#_u2_cnt_snsr_inv1_tmp_igbt_1ms_max)[r7], r7
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_errctrl.c", 514
	add 0x00000001, r6
	st.h r6, LOWW(#_u2_cnt_snsr_inv1_tmp_igbt_vn_1ms)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_errctrl.c", 515
	andi 0x0000FFFF, r6, r2
	cmp r7, r2
	bnh9 .BB.LABEL.1_77
.BB.LABEL.1_76:	; if_then_bb491
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_errctrl.c", 517
	movhi HIGHW1(#_u2_cnt_snsr_inv1_tmp_igbt_vn_1ms), r0, r2
	st.h r0, LOWW(#_u2_cnt_snsr_inv1_tmp_igbt_vn_1ms)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_errctrl.c", 518
	movhi HIGHW1(#_u4_flag_inv1_error2), r0, r2
	ld.w LOWW(#_u4_flag_inv1_error2)[r2], r6
	ori 0x00000040, r6, r6
	st.w r6, LOWW(#_u4_flag_inv1_error2)[r2]
.BB.LABEL.1_77:	; if_break_bb497
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_errctrl.c", 525
	movhi HIGHW1(#_s2_ad_inv1_tmp_igbt_wn), r0, r2
	ld.h LOWW(#_s2_ad_inv1_tmp_igbt_wn)[r2], r2
	cmp r5, r2
	bge9 .BB.LABEL.1_80
.BB.LABEL.1_78:	; if_then_bb504
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_errctrl.c", 527
	movhi HIGHW1(#_u2_cnt_snsr_inv1_tmp_igbt_wn_1ms), r0, r2
	ld.h LOWW(#_u2_cnt_snsr_inv1_tmp_igbt_wn_1ms)[r2], r5
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_errctrl.c", 528
	movhi HIGHW1(#_u2_cnt_snsr_inv1_tmp_igbt_1ms_max), r0, r6
	ld.hu LOWW(#_u2_cnt_snsr_inv1_tmp_igbt_1ms_max)[r6], r6
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_errctrl.c", 527
	add 0x00000001, r5
	st.h r5, LOWW(#_u2_cnt_snsr_inv1_tmp_igbt_wn_1ms)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_errctrl.c", 528
	andi 0x0000FFFF, r5, r2
	cmp r6, r2
	bnh9 .BB.LABEL.1_80
.BB.LABEL.1_79:	; if_then_bb514
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_errctrl.c", 530
	movhi HIGHW1(#_u2_cnt_snsr_inv1_tmp_igbt_wn_1ms), r0, r2
	st.h r0, LOWW(#_u2_cnt_snsr_inv1_tmp_igbt_wn_1ms)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_errctrl.c", 531
	movhi HIGHW1(#_u4_flag_inv1_error2), r0, r2
	ld.w LOWW(#_u4_flag_inv1_error2)[r2], r5
	ori 0x00000100, r5, r5
	st.w r5, LOWW(#_u4_flag_inv1_error2)[r2]
.BB.LABEL.1_80:	; if_break_bb520
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_errctrl.c", 538
	movhi HIGHW1(#_s2_ad_inv1_tmp_int), r0, r2
	movhi HIGHW1(#_s4_lev_snsr_inv1_tmp_int), r0, r5
	ld.h LOWW(#_s2_ad_inv1_tmp_int)[r2], r2
	ld.w LOWW(#_s4_lev_snsr_inv1_tmp_int)[r5], r5
	cmp r5, r2
	bge9 .BB.LABEL.1_83
.BB.LABEL.1_81:	; if_then_bb527
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_errctrl.c", 540
	movhi HIGHW1(#_u2_cnt_snsr_inv1_tmp_int_1ms), r0, r2
	ld.h LOWW(#_u2_cnt_snsr_inv1_tmp_int_1ms)[r2], r5
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_errctrl.c", 541
	movhi HIGHW1(#_u2_cnt_snsr_inv1_tmp_int_1ms_max), r0, r6
	ld.hu LOWW(#_u2_cnt_snsr_inv1_tmp_int_1ms_max)[r6], r6
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_errctrl.c", 540
	add 0x00000001, r5
	st.h r5, LOWW(#_u2_cnt_snsr_inv1_tmp_int_1ms)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_errctrl.c", 541
	andi 0x0000FFFF, r5, r2
	cmp r6, r2
	bnh9 .BB.LABEL.1_83
.BB.LABEL.1_82:	; if_then_bb537
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_errctrl.c", 543
	movhi HIGHW1(#_u2_cnt_snsr_inv1_tmp_int_1ms), r0, r2
	st.h r0, LOWW(#_u2_cnt_snsr_inv1_tmp_int_1ms)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_errctrl.c", 544
	movhi HIGHW1(#_u4_flag_inv1_error2), r0, r2
	ld.w LOWW(#_u4_flag_inv1_error2)[r2], r5
	st.w r5, LOWW(#_u4_flag_inv1_error2)[r2]
.BB.LABEL.1_83:	; if_break_bb543
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_errctrl.c", 584
	ld23.hu 0xFFC1008C[r0], r2
	andi 0x00000040, r2, r0
	bnz9 .BB.LABEL.1_86
.BB.LABEL.1_84:	; if_then_bb551
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_errctrl.c", 586
	movhi HIGHW1(#_u2_cnt_di_inv1_safty), r0, r2
	ld.h LOWW(#_u2_cnt_di_inv1_safty)[r2], r5
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_errctrl.c", 587
	movhi HIGHW1(#_u2_cnt_di_inv1_safty_max), r0, r6
	ld.hu LOWW(#_u2_cnt_di_inv1_safty_max)[r6], r6
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_errctrl.c", 586
	add 0x00000001, r5
	st.h r5, LOWW(#_u2_cnt_di_inv1_safty)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_errctrl.c", 587
	andi 0x0000FFFF, r5, r2
	cmp r6, r2
	bl9 .BB.LABEL.1_87
.BB.LABEL.1_85:	; if_then_bb561
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_errctrl.c", 589
	movhi HIGHW1(#_u4_flag_inv1_error_hw_lev), r0, r2
	ld.w LOWW(#_u4_flag_inv1_error_hw_lev)[r2], r5
	ori 0x00000040, r5, r5
	st.w r5, LOWW(#_u4_flag_inv1_error_hw_lev)[r2]
.BB.LABEL.1_86:	; if_break_bb567.PartialDrain
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_errctrl.c", 0
	movhi HIGHW1(#_u2_cnt_di_inv1_safty), r0, r2
	st.h r0, LOWW(#_u2_cnt_di_inv1_safty)[r2]
.BB.LABEL.1_87:	; if_break_bb567
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_errctrl.c", 600
	ld23.hu 0xFFC100CC[r0], r2
	andi 0x00000008, r2, r0
	bz9 .BB.LABEL.1_90
.BB.LABEL.1_88:	; if_then_bb575
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_errctrl.c", 602
	movhi HIGHW1(#_u2_cnt_di_inv1_gb), r0, r2
	ld.h LOWW(#_u2_cnt_di_inv1_gb)[r2], r5
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_errctrl.c", 603
	movhi HIGHW1(#_u2_cnt_di_inv1_gb_max), r0, r6
	ld.hu LOWW(#_u2_cnt_di_inv1_gb_max)[r6], r6
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_errctrl.c", 602
	add 0x00000001, r5
	st.h r5, LOWW(#_u2_cnt_di_inv1_gb)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_errctrl.c", 603
	andi 0x0000FFFF, r5, r2
	cmp r6, r2
	bl9 .BB.LABEL.1_91
.BB.LABEL.1_89:	; if_then_bb585
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_errctrl.c", 605
	movhi HIGHW1(#_u4_flag_inv1_error_hw_lev), r0, r2
	ld.w LOWW(#_u4_flag_inv1_error_hw_lev)[r2], r5
	ori 0x00000080, r5, r5
	st.w r5, LOWW(#_u4_flag_inv1_error_hw_lev)[r2]
.BB.LABEL.1_90:	; if_break_bb591.PartialDrain
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_errctrl.c", 0
	movhi HIGHW1(#_u2_cnt_di_inv1_gb), r0, r2
	st.h r0, LOWW(#_u2_cnt_di_inv1_gb)[r2]
.BB.LABEL.1_91:	; if_break_bb591
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_errctrl.c", 617
	movhi HIGHW1(#_u4_flag_inv1_error_hw_lev), r0, r2
	ld.w LOWW(#_u4_flag_inv1_error_hw_lev)[r2], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.1_93
.BB.LABEL.1_92:	; if_then_bb596
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_errctrl.c", 619
	movhi HIGHW1(#_u4_flag_inv1_error1), r0, r2
	ld.w LOWW(#_u4_flag_inv1_error1)[r2], r5
	movhi 0x00000008, r0, r6
	or r6, r5
	st.w r5, LOWW(#_u4_flag_inv1_error1)[r2]
.BB.LABEL.1_93:	; if_break_bb600
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_errctrl.c", 628
	movhi HIGHW1(#_u4_flag_inv1_error_hw), r0, r2
	ld.w LOWW(#_u4_flag_inv1_error_hw)[r2], r5
	movhi HIGHW1(#_u4_flag_inv0_error_hw), r0, r6
	ld.w LOWW(#_u4_flag_inv0_error_hw)[r6], r6
	or r5, r6
	st.w r6, LOWW(#_u4_flag_inv1_error_hw)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_errctrl.c", 630
	ld.w LOWW(#_u4_flag_inv1_error_hw)[r2], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.1_95
.BB.LABEL.1_94:	; if_then_bb608
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_errctrl.c", 632
	movhi HIGHW1(#_u4_flag_inv1_error1), r0, r2
	ld.w LOWW(#_u4_flag_inv1_error1)[r2], r5
	ori 0x00000020, r5, r5
	st.w r5, LOWW(#_u4_flag_inv1_error1)[r2]
.BB.LABEL.1_95:	; if_break_bb612
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_errctrl.c", 640
	movhi HIGHW1(#_u4_RESF_reg), r0, r2
	ld.w LOWW(#_u4_RESF_reg)[r2], r2
	andi 0x00000002, r2, r0
	bz9 .BB.LABEL.1_97
.BB.LABEL.1_96:	; if_then_bb618
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_errctrl.c", 642
	movhi HIGHW1(#_u1_err_MCU), r0, r2
	mov 0x00000001, r5
	st.b r5, LOWW(#_u1_err_MCU)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_errctrl.c", 643
	movhi HIGHW1(#_u4_flag_inv1_error1), r0, r2
	ld.w LOWW(#_u4_flag_inv1_error1)[r2], r5
	ori 0x00000800, r5, r5
	st.w r5, LOWW(#_u4_flag_inv1_error1)[r2]
.BB.LABEL.1_97:	; if_break_bb622
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_errctrl.c", 651
	movhi HIGHW1(#_u4_flag_inv1_error1), r0, r2
	ld.w LOWW(#_u4_flag_inv1_error1)[r2], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.1_99
.BB.LABEL.1_98:	; if_then_bb627
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_errctrl.c", 653
	movhi HIGHW1(#_u4_flag_inv1_error), r0, r2
	ld.w LOWW(#_u4_flag_inv1_error)[r2], r5
	ori 0x00000001, r5, r5
	st.w r5, LOWW(#_u4_flag_inv1_error)[r2]
.BB.LABEL.1_99:	; if_break_bb631
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_errctrl.c", 657
	movhi HIGHW1(#_u4_flag_inv1_error2), r0, r2
	ld.w LOWW(#_u4_flag_inv1_error2)[r2], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.1_101
.BB.LABEL.1_100:	; if_then_bb636
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_errctrl.c", 659
	movhi HIGHW1(#_u4_flag_inv1_error), r0, r2
	ld.w LOWW(#_u4_flag_inv1_error)[r2], r5
	ori 0x00000002, r5, r5
	st.w r5, LOWW(#_u4_flag_inv1_error)[r2]
.BB.LABEL.1_101:	; if_break_bb640
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_errctrl.c", 665
	movhi HIGHW1(#_u4_flag_inv0_error), r0, r2
	ld.w LOWW(#_u4_flag_inv0_error)[r2], r2
	andi 0x00000001, r2, r0
	bnz9 .BB.LABEL.1_104
.BB.LABEL.1_102:	; bb645
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_errctrl.c", 0
	movhi HIGHW1(#_u4_flag_inv0_error), r0, r2
	ld.w LOWW(#_u4_flag_inv0_error)[r2], r2
	andi 0x00000002, r2, r0
	bnz9 .BB.LABEL.1_104
.BB.LABEL.1_103:	; return
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_errctrl.c", 673
	jmp [r31]
.BB.LABEL.1_104:	; if_then_bb658
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_errctrl.c", 667
	movhi HIGHW1(#_u4_flag_inv1_error), r0, r2
	ld.w LOWW(#_u4_flag_inv1_error)[r2], r5
	ori 0x00000004, r5, r5
	st.w r5, LOWW(#_u4_flag_inv1_error)[r2]
	jmp [r31]
_fb_1ms_inv1_errctrl_init:
	.stack _fb_1ms_inv1_errctrl_init = 0
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_errctrl.c", 689
	movhi HIGHW1(#_f4_lev_uv_inv1_vdc), r0, r2
	movhi 0x000040A0, r0, r5
	st.w r5, LOWW(#_f4_lev_uv_inv1_vdc)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_errctrl.c", 690
	movhi HIGHW1(#_f4_lev_oh_inv1_igbt), r0, r2
	movhi 0x000042B4, r0, r5
	st.w r5, LOWW(#_f4_lev_oh_inv1_igbt)[r2]
	movhi 0x00004302, r0, r2
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_errctrl.c", 691
	movhi HIGHW1(#_f4_lev_oh_inv1_mot1), r0, r5
	st.w r2, LOWW(#_f4_lev_oh_inv1_mot1)[r5]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_errctrl.c", 692
	movhi HIGHW1(#_f4_lev_oh_inv1_mot2), r0, r5
	st.w r2, LOWW(#_f4_lev_oh_inv1_mot2)[r5]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_errctrl.c", 693
	movhi HIGHW1(#_f4_lev_os_inv1_speed), r0, r2
	movhi 0x000045FA, r0, r5
	st.w r5, LOWW(#_f4_lev_os_inv1_speed)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_errctrl.c", 695
	movhi HIGHW1(#_f4_lev_oh_inv1_int), r0, r2
	movhi 0x000042AA, r0, r5
	st.w r5, LOWW(#_f4_lev_oh_inv1_int)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_errctrl.c", 696
	movhi HIGHW1(#_f4_lev_ov_inv1_ctrlbd), r0, r2
	movhi 0x00004178, r0, r5
	st.w r5, LOWW(#_f4_lev_ov_inv1_ctrlbd)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_errctrl.c", 697
	movhi HIGHW1(#_f4_lev_uv_inv1_ctrlbd), r0, r2
	mov 0x4104CCCD, r5
	st.w r5, LOWW(#_f4_lev_uv_inv1_ctrlbd)[r2]
	movea 0x00000052, r0, r2
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_errctrl.c", 699
	movhi HIGHW1(#_s4_lev_snsr_inv1_iinv), r0, r5
	st.w r2, LOWW(#_s4_lev_snsr_inv1_iinv)[r5]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_errctrl.c", 700
	movhi HIGHW1(#_s4_lev_snsr_inv1_tmp_int), r0, r5
	st.w r2, LOWW(#_s4_lev_snsr_inv1_tmp_int)[r5]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_errctrl.c", 701
	movhi HIGHW1(#_s4_lev_snsr_inv1_tmp_igbt), r0, r5
	st.w r2, LOWW(#_s4_lev_snsr_inv1_tmp_igbt)[r5]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_errctrl.c", 702
	movhi HIGHW1(#_s4_lev_snsr_inv1_tmp_mot1), r0, r5
	st.w r2, LOWW(#_s4_lev_snsr_inv1_tmp_mot1)[r5]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_errctrl.c", 703
	movhi HIGHW1(#_s4_lev_snsr_inv1_tmp_mot2), r0, r5
	st.w r2, LOWW(#_s4_lev_snsr_inv1_tmp_mot2)[r5]
	movea 0x00000064, r0, r2
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_errctrl.c", 705
	movhi HIGHW1(#_u2_cnt_uv_inv1_vdc_1ms_max), r0, r5
	st.h r2, LOWW(#_u2_cnt_uv_inv1_vdc_1ms_max)[r5]
	mov 0x0000000A, r5
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_errctrl.c", 706
	movhi HIGHW1(#_u2_cnt_oh_inv1_igbt_1ms_max), r0, r6
	st.h r5, LOWW(#_u2_cnt_oh_inv1_igbt_1ms_max)[r6]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_errctrl.c", 707
	movhi HIGHW1(#_u2_cnt_oh_inv1_mot1_1ms_max), r0, r6
	st.h r2, LOWW(#_u2_cnt_oh_inv1_mot1_1ms_max)[r6]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_errctrl.c", 708
	movhi HIGHW1(#_u2_cnt_oh_inv1_mot2_1ms_max), r0, r6
	st.h r2, LOWW(#_u2_cnt_oh_inv1_mot2_1ms_max)[r6]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_errctrl.c", 709
	movhi HIGHW1(#_u2_cnt_os_inv1_speed_1ms_max), r0, r6
	st.h r2, LOWW(#_u2_cnt_os_inv1_speed_1ms_max)[r6]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_errctrl.c", 711
	movhi HIGHW1(#_u2_cnt_oh_inv1_int_1ms_max), r0, r2
	st.h r5, LOWW(#_u2_cnt_oh_inv1_int_1ms_max)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_errctrl.c", 712
	movhi HIGHW1(#_u2_cnt_ov_inv1_ctrlbd_1ms_max), r0, r2
	st.h r5, LOWW(#_u2_cnt_ov_inv1_ctrlbd_1ms_max)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_errctrl.c", 713
	movhi HIGHW1(#_u2_cnt_uv_inv1_ctrlbd_1ms_max), r0, r2
	st.h r5, LOWW(#_u2_cnt_uv_inv1_ctrlbd_1ms_max)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_errctrl.c", 715
	movhi HIGHW1(#_u2_cnt_snsr_inv1_tmp_int_1ms_max), r0, r2
	st.h r5, LOWW(#_u2_cnt_snsr_inv1_tmp_int_1ms_max)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_errctrl.c", 716
	movhi HIGHW1(#_u2_cnt_snsr_inv1_tmp_igbt_1ms_max), r0, r2
	st.h r5, LOWW(#_u2_cnt_snsr_inv1_tmp_igbt_1ms_max)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_errctrl.c", 717
	movhi HIGHW1(#_u2_cnt_snsr_inv1_tmp_mot1_1ms_max), r0, r2
	st.h r5, LOWW(#_u2_cnt_snsr_inv1_tmp_mot1_1ms_max)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_errctrl.c", 718
	movhi HIGHW1(#_u2_cnt_snsr_inv1_tmp_mot2_1ms_max), r0, r2
	st.h r5, LOWW(#_u2_cnt_snsr_inv1_tmp_mot2_1ms_max)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_errctrl.c", 720
	movhi HIGHW1(#_u2_cnt_uv_inv1_vdc_1ms), r0, r2
	st.h r0, LOWW(#_u2_cnt_uv_inv1_vdc_1ms)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_errctrl.c", 721
	movhi HIGHW1(#_u2_cnt_oh_inv1_igbt_up_1ms), r0, r2
	st.h r0, LOWW(#_u2_cnt_oh_inv1_igbt_up_1ms)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_errctrl.c", 722
	movhi HIGHW1(#_u2_cnt_oh_inv1_igbt_vp_1ms), r0, r2
	st.h r0, LOWW(#_u2_cnt_oh_inv1_igbt_vp_1ms)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_errctrl.c", 723
	movhi HIGHW1(#_u2_cnt_oh_inv1_igbt_wp_1ms), r0, r2
	st.h r0, LOWW(#_u2_cnt_oh_inv1_igbt_wp_1ms)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_errctrl.c", 724
	movhi HIGHW1(#_u2_cnt_oh_inv1_igbt_un_1ms), r0, r2
	st.h r0, LOWW(#_u2_cnt_oh_inv1_igbt_un_1ms)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_errctrl.c", 725
	movhi HIGHW1(#_u2_cnt_oh_inv1_igbt_vn_1ms), r0, r2
	st.h r0, LOWW(#_u2_cnt_oh_inv1_igbt_vn_1ms)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_errctrl.c", 726
	movhi HIGHW1(#_u2_cnt_oh_inv1_igbt_wn_1ms), r0, r2
	st.h r0, LOWW(#_u2_cnt_oh_inv1_igbt_wn_1ms)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_errctrl.c", 727
	movhi HIGHW1(#_u2_cnt_oh_inv1_mot1_1ms), r0, r2
	st.h r0, LOWW(#_u2_cnt_oh_inv1_mot1_1ms)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_errctrl.c", 728
	movhi HIGHW1(#_u2_cnt_oh_inv1_mot2_1ms), r0, r2
	st.h r0, LOWW(#_u2_cnt_oh_inv1_mot2_1ms)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_errctrl.c", 729
	movhi HIGHW1(#_u2_cnt_os_inv1_speed_1ms), r0, r2
	st.h r0, LOWW(#_u2_cnt_os_inv1_speed_1ms)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_errctrl.c", 731
	movhi HIGHW1(#_u2_cnt_oh_inv1_int_1ms), r0, r2
	st.h r0, LOWW(#_u2_cnt_oh_inv1_int_1ms)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_errctrl.c", 732
	movhi HIGHW1(#_u2_cnt_ov_inv1_ctrlbd_1ms), r0, r2
	st.h r0, LOWW(#_u2_cnt_ov_inv1_ctrlbd_1ms)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_errctrl.c", 733
	movhi HIGHW1(#_u2_cnt_uv_inv1_ctrlbd_1ms), r0, r2
	st.h r0, LOWW(#_u2_cnt_uv_inv1_ctrlbd_1ms)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_errctrl.c", 735
	movhi HIGHW1(#_u2_cnt_snsr_inv1_tmp_int_1ms), r0, r2
	st.h r0, LOWW(#_u2_cnt_snsr_inv1_tmp_int_1ms)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_errctrl.c", 736
	movhi HIGHW1(#_u2_cnt_snsr_inv1_tmp_igbt_up_1ms), r0, r2
	st.h r0, LOWW(#_u2_cnt_snsr_inv1_tmp_igbt_up_1ms)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_errctrl.c", 737
	movhi HIGHW1(#_u2_cnt_snsr_inv1_tmp_igbt_vp_1ms), r0, r2
	st.h r0, LOWW(#_u2_cnt_snsr_inv1_tmp_igbt_vp_1ms)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_errctrl.c", 738
	movhi HIGHW1(#_u2_cnt_snsr_inv1_tmp_igbt_wp_1ms), r0, r2
	st.h r0, LOWW(#_u2_cnt_snsr_inv1_tmp_igbt_wp_1ms)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_errctrl.c", 739
	movhi HIGHW1(#_u2_cnt_snsr_inv1_tmp_igbt_un_1ms), r0, r2
	st.h r0, LOWW(#_u2_cnt_snsr_inv1_tmp_igbt_un_1ms)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_errctrl.c", 740
	movhi HIGHW1(#_u2_cnt_snsr_inv1_tmp_igbt_vn_1ms), r0, r2
	st.h r0, LOWW(#_u2_cnt_snsr_inv1_tmp_igbt_vn_1ms)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_errctrl.c", 741
	movhi HIGHW1(#_u2_cnt_snsr_inv1_tmp_igbt_wn_1ms), r0, r2
	st.h r0, LOWW(#_u2_cnt_snsr_inv1_tmp_igbt_wn_1ms)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_errctrl.c", 742
	movhi HIGHW1(#_u2_cnt_snsr_inv1_tmp_mot1_1ms), r0, r2
	st.h r0, LOWW(#_u2_cnt_snsr_inv1_tmp_mot1_1ms)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_errctrl.c", 743
	movhi HIGHW1(#_u2_cnt_snsr_inv1_tmp_mot2_1ms), r0, r2
	st.h r0, LOWW(#_u2_cnt_snsr_inv1_tmp_mot2_1ms)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_errctrl.c", 745
	movhi HIGHW1(#_u4_flag_inv1_error_hw), r0, r2
	st.w r0, LOWW(#_u4_flag_inv1_error_hw)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_errctrl.c", 747
	movhi HIGHW1(#_u1_flag_can0_err_enable), r0, r2
	mov 0x00000001, r6
	st.b r6, LOWW(#_u1_flag_can0_err_enable)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_errctrl.c", 753
	movhi HIGHW1(#_u4_flag_inv1_error_hw_lev), r0, r2
	st.w r0, LOWW(#_u4_flag_inv1_error_hw_lev)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_errctrl.c", 755
	movhi HIGHW1(#_u2_cnt_di_inv1_safty), r0, r2
	st.h r0, LOWW(#_u2_cnt_di_inv1_safty)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_errctrl.c", 756
	movhi HIGHW1(#_u2_cnt_di_inv1_safty_max), r0, r2
	st.h r5, LOWW(#_u2_cnt_di_inv1_safty_max)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_errctrl.c", 758
	movhi HIGHW1(#_u2_cnt_di_inv1_gb), r0, r2
	st.h r0, LOWW(#_u2_cnt_di_inv1_gb)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_errctrl.c", 759
	movhi HIGHW1(#_u2_cnt_di_inv1_gb_max), r0, r2
	st.h r5, LOWW(#_u2_cnt_di_inv1_gb_max)[r2]
	jmp [r31]
	.section .bss, bss
	.align 4
_f4_lev_uv_inv1_vdc:
	.ds (4)
	.align 4
_f4_lev_oh_inv1_igbt:
	.ds (4)
	.align 4
_f4_lev_oh_inv1_mot1:
	.ds (4)
	.align 4
_f4_lev_oh_inv1_mot2:
	.ds (4)
	.align 4
_f4_lev_os_inv1_speed:
	.ds (4)
	.align 4
_f4_lev_oh_inv1_int:
	.ds (4)
	.align 4
_f4_lev_ov_inv1_ctrlbd:
	.ds (4)
	.align 4
_f4_lev_uv_inv1_ctrlbd:
	.ds (4)
	.align 4
_s4_lev_snsr_inv1_iinv:
	.ds (4)
	.align 4
_s4_lev_snsr_inv1_tmp_igbt:
	.ds (4)
	.align 4
_s4_lev_snsr_inv1_tmp_int:
	.ds (4)
	.align 4
_s4_lev_snsr_inv1_tmp_mot1:
	.ds (4)
	.align 4
_s4_lev_snsr_inv1_tmp_mot2:
	.ds (4)
	.align 2
_u2_cnt_uv_inv1_vdc_1ms_max:
	.ds (2)
	.align 2
_u2_cnt_oh_inv1_igbt_1ms_max:
	.ds (2)
	.align 2
_u2_cnt_oh_inv1_mot1_1ms_max:
	.ds (2)
	.align 2
_u2_cnt_oh_inv1_mot2_1ms_max:
	.ds (2)
	.align 2
_u2_cnt_os_inv1_speed_1ms_max:
	.ds (2)
	.align 2
_u2_cnt_oh_inv1_int_1ms_max:
	.ds (2)
	.align 2
_u2_cnt_ov_inv1_ctrlbd_1ms_max:
	.ds (2)
	.align 2
_u2_cnt_uv_inv1_ctrlbd_1ms_max:
	.ds (2)
	.align 2
_u2_cnt_snsr_inv1_tmp_int_1ms_max:
	.ds (2)
	.align 2
_u2_cnt_snsr_inv1_tmp_igbt_1ms_max:
	.ds (2)
	.align 2
_u2_cnt_snsr_inv1_tmp_mot1_1ms_max:
	.ds (2)
	.align 2
_u2_cnt_snsr_inv1_tmp_mot2_1ms_max:
	.ds (2)
	.align 2
_u2_cnt_uv_inv1_vdc_1ms:
	.ds (2)
	.align 2
_u2_cnt_oh_inv1_igbt_up_1ms:
	.ds (2)
	.align 2
_u2_cnt_oh_inv1_igbt_vp_1ms:
	.ds (2)
	.align 2
_u2_cnt_oh_inv1_igbt_wp_1ms:
	.ds (2)
	.align 2
_u2_cnt_oh_inv1_igbt_un_1ms:
	.ds (2)
	.align 2
_u2_cnt_oh_inv1_igbt_vn_1ms:
	.ds (2)
	.align 2
_u2_cnt_oh_inv1_igbt_wn_1ms:
	.ds (2)
	.align 2
_u2_cnt_oh_inv1_mot1_1ms:
	.ds (2)
	.align 2
_u2_cnt_oh_inv1_mot2_1ms:
	.ds (2)
	.align 2
_u2_cnt_os_inv1_speed_1ms:
	.ds (2)
	.align 2
_u2_cnt_oh_inv1_int_1ms:
	.ds (2)
	.align 2
_u2_cnt_ov_inv1_ctrlbd_1ms:
	.ds (2)
	.align 2
_u2_cnt_uv_inv1_ctrlbd_1ms:
	.ds (2)
	.align 2
_u2_cnt_snsr_inv1_tmp_int_1ms:
	.ds (2)
	.align 2
_u2_cnt_snsr_inv1_tmp_gdbrd_1ms:
	.ds (2)
	.align 2
_u2_cnt_snsr_inv1_tmp_igbt_up_1ms:
	.ds (2)
	.align 2
_u2_cnt_snsr_inv1_tmp_igbt_vp_1ms:
	.ds (2)
	.align 2
_u2_cnt_snsr_inv1_tmp_igbt_wp_1ms:
	.ds (2)
	.align 2
_u2_cnt_snsr_inv1_tmp_igbt_un_1ms:
	.ds (2)
	.align 2
_u2_cnt_snsr_inv1_tmp_igbt_vn_1ms:
	.ds (2)
	.align 2
_u2_cnt_snsr_inv1_tmp_igbt_wn_1ms:
	.ds (2)
	.align 2
_u2_cnt_snsr_inv1_tmp_mot1_1ms:
	.ds (2)
	.align 2
_u2_cnt_snsr_inv1_tmp_mot2_1ms:
	.ds (2)
_u1_flag_can0_err_enable:
	.ds (1)
	.align 2
_u2_cnt_di_inv1_safty:
	.ds (2)
	.align 2
_u2_cnt_di_inv1_safty_max:
	.ds (2)
	.align 2
_u2_cnt_di_inv1_gb:
	.ds (2)
	.align 2
_u2_cnt_di_inv1_gb_max:
	.ds (2)
_u1_err_MCU:
	.ds (1)
