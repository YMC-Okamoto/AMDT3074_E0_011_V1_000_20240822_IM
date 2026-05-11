#CC-RH Compiler RH850 Assembler Source
#@	CC-RH Version : V2.06.00  [28 Nov 2023]
#@	Command : Common\fi_pe2_error.c ..\Common\iolib\io_CPU.c ..\Common\iolib\io_ADC.c ..\Common\iolib\io_CSIH0.c ..\Common\iolib\io_CSIH1.c ..\Common\iolib\io_ENCA0.c ..\Common\iolib\io_ENCA1.c ..\Common\iolib\io_FCAN.c ..\Common\iolib\io_RDC20.c ..\Common\iolib\io_RDC21.c ..\Common\iolib\io_SCI0_40MHz.c ..\Common\iolib\io_SCI1_40MHz.c ..\Common\iolib\io_SCI2_40MHz.c ..\Common\iolib\io_TAUD0.c ..\Common\iolib\io_TAUD1.c ..\Common\iolib\io_TAUJ0.c ..\Common\iolib\io_TSG30.c ..\Common\iolib\io_TSG31.c ..\PE1\AWatcher\VECLIB_CMDMONI.c src\fpmsm_main.c ..\PE1\src\fi_AWatcher.c src\fi_1ms_int.c src\fi_1ms_inv1_adctrl.c src\fi_1ms_inv1_errctrl.c src\fi_20us_int.c src\fi_20us_inv1_1pulse.c src\fi_enc1_int.c src\fi_enc1_inv1_1pulse.c src\fi_pwm_int.c src\fi_pwm_inv1_1pulse.c src\fi_pwm_inv1_adctrl.c src\fi_pwm_inv1_encctrl.c src\fi_pwm_inv1_errctrl.c src\fi_pwm_inv1_idqctrl.c src\fi_pwm_inv1_invadj.c src\fi_pwm_inv1_svctrl.c src\fi_pwm_inv1_syncctrl.c src\fi_pwm_inv1_vctrlerr.c src\mapdata_ld_inv1_2d.c src\mapdata_ld_inv1_2d_map.c src\mapdata_lq_inv1_2d.c src\mapdata_lq_inv1_2d_map.c ..\PE1\src\fb_kpwm_tbl.c ..\PE1\src\fb_therm_calc.c ..\PE1\src\fb_therm_tbl_module.c ..\PE1\src\fb_vctrlerr_tbl.c src\fi_1ms_inv1_idqcom.c ..\PE1\src\fi_pwm_vctrlerrtbl.c src\fi_1ms_inv1_seqctrl.c ..\Common\iolib\io_PIO_amdt0530.c -Xobj_path=DefaultBuild -Xcpu=g3m -g -g_line -Ospeed -Oinline_size -I..\PE1\src -Isrc -I..\Common -D__CLK_HSB=80,__CLK_LSB=40,__CLKC_HSB=80,__CLK_CLSB=40 -use_recipf -Xasm_path=DefaultBuild -c
#@	compiled at Thu May 23 14:28:27 2024

	.file "src\fi_pwm_inv1_idqctrl.c"

	$reg_mode 32
	.dbl_size 8

	.extern _f4_ld_inv0_isat
	.extern _f4_lq_inv0_isat
	.extern _u1_flag_mode_inv0_idqcom
	.extern _f4_id_inv0_ctrl
	.extern _f4_iq_inv0_ctrl
	.extern _f4_irms_inv0_ref_tmp
	.extern _u1_flag_enable_inv0_wrctrl
	.extern _f4_idq_inv0_max
	.extern _u1_pwm_inv1_status
	.extern _f4_fs_inv1_ctrl
	.extern _f4_ts_inv1_ctrl
	.extern _f4_vdc_inv1_ad
	.extern _f4_id_inv1_ad
	.extern _f4_iq_inv1_ad
	.extern _f4_id_inv1_ref
	.extern _f4_iq_inv1_ref
	.extern _f4_vdq_inv1_ref
	.extern _f4_vd_inv1_ref
	.extern _f4_vq_inv1_ref
	.extern _u1_flag_inv1_modevctrl
	.extern _f4_iu_inv1_ctrl
	.extern _f4_iv_inv1_ctrl
	.extern _f4_iw_inv1_ctrl
	.extern _f4_vdc_inv1_lpf
	.extern _f4_dvdc_inv1_ad
	.extern _f4_wt_inv1_dq
	.extern _f4_sin_inv1_wtdq
	.extern _f4_cos_inv1_wtdq
	.extern _f4_wr_inv1_pll_lpf
	.extern _u1_flag_1pulse_inv1_mode
	.extern _u1_flag_inv1_adj
	.extern _f4_id_inv1_adj
	.extern _f4_iq_inv1_adj
	.extern _f4_vd_inv1_adj_ref
	.extern _f4_vq_inv1_adj_ref
	.extern _f4_rs_inv1_adj
	.extern _f4_vd_inv1_plid
	.extern _f4_vq_inv1_plid
	.extern _u1_cnt_1pulse_inv1_hw
	.extern _u1_cnt_1pulse_inv1_hw_max
	.extern _u1_flag_status_inv1_idq_ctrl
	.extern _f4_k_pwm_tbl
	.public _f4_pf_inv1, 4
	.public _f4_dpf_inv1, 4
	.public _f4_rs_inv1, 4
	.public _f4_fm_inv1, 4
	.public _f4_dfm_inv1, 4
	.public _f4_ld_inv1_const, 4
	.public _f4_i_ld_inv1_isat, 4
	.public _f4_k1_ld_inv1_isat, 4
	.public _f4_k2_ld_inv1_isat, 4
	.public _f4_lq_inv1_const, 4
	.public _f4_i_lq_inv1_isat, 4
	.public _f4_k1_lq_inv1_isat, 4
	.public _f4_k2_lq_inv1_isat, 4
	.public _f4_ld_inv1_isat, 4
	.public _f4_lq_inv1_isat, 4
	.public _u1_flag_ldq_inv1_mode, 1
	.public _f4_kp_inv1_vdqctrl, 4
	.public _f4_ki_inv1_vdqctrl, 4
	.public _f4_k_inv1_vdq_vctrl, 4
	.public _f4_vdq_inv1_vctrl, 4
	.public _f4_vdqctrl_inv1_err, 4
	.public _f4_id_inv1_vdqctrlp, 4
	.public _f4_id_inv1_vdqctrli, 4
	.public _f4_id_inv1_vdqctrl, 4
	.public _f4_id_inv1_vdqctrl_max, 4
	.public _f4_iq_inv1_vdqctrlp, 4
	.public _f4_iq_inv1_vdqctrli, 4
	.public _f4_iq_inv1_vdqctrl, 4
	.public _f4_iq_inv1_vdqctrl_max, 4
	.public _u1_flag_status_inv1_vdqctrl, 1
	.public _f4_idq_inv1_ref, 4
	.public _f4_id_inv1_ad_sum, 4
	.public _f4_iq_inv1_ad_sum, 4
	.public _f4_id_inv1_ad_ave, 4
	.public _f4_iq_inv1_ad_ave, 4
	.public _u4_cnt_idq_inv1_ad_ave, 4
	.public _f4_k_inv1_idq_cmp, 4
	.public _f4_wt_inv1_idq_cmp, 4
	.public _f4_sin_inv1_wtidq_cmp, 4
	.public _f4_cos_inv1_wtidq_cmp, 4
	.public _f4_id_inv1_ad_cmp, 4
	.public _f4_iq_inv1_ad_cmp, 4
	.public _f4_fai_d_inv1_ref, 4
	.public _f4_fai_q_inv1_ref, 4
	.public _f4_fai_d_inv1_ad, 4
	.public _f4_fai_q_inv1_ad, 4
	.public _f4_fai_d_inv1_ad_ave, 4
	.public _f4_fai_q_inv1_ad_ave, 4
	.public _f4_wt_inv1_faicd, 4
	.public _f4_sin_inv1_wtcd, 4
	.public _f4_cos_inv1_wtcd, 4
	.public _f4_fai_gamma_inv1_ref, 4
	.public _f4_fai_delta_inv1_ref, 4
	.public _f4_fai_gamma_inv1_ad, 4
	.public _f4_fai_delta_inv1_ad, 4
	.public _f4_fai_gamma_inv1_ad_ave, 4
	.public _f4_fai_delta_inv1_ad_ave, 4
	.public _u1_flag_enable_inv1_kictrl, 1
	.public _f4_kp_inv1_idq_cmp, 4
	.public _f4_ki_inv1_idq_cmp, 4
	.public _f4_vdq_inv1_ctrl_max, 4
	.public _f4_kp_inv1_idq_ctrl_max, 4
	.public _f4_kp_inv1_idq_ctrl_min, 4
	.public _f4_lev_m_kp_inv1_idq_ctrl_max, 4
	.public _f4_lev_m_kp_inv1_idq_ctrl_min, 4
	.public _f4_a_kp_inv1_idq_cmp, 4
	.public _f4_b_kp_inv1_idq_cmp, 4
	.public _f4_ki_inv1_idq_ctrl_max, 4
	.public _f4_ki_inv1_idq_ctrl_min, 4
	.public _f4_lev_m_ki_inv1_idq_ctrl_max, 4
	.public _f4_lev_m_ki_inv1_idq_ctrl_min, 4
	.public _f4_a_ki_inv1_idq_cmp, 4
	.public _f4_b_ki_inv1_idq_cmp, 4
	.public _u1_cnt_idq_inv1_ctrli_delay, 1
	.public _u1_cnt_idq_inv1_ctrli_delay_max, 1
	.public _f4_lev_m_inv1_idq_ctrl, 4
	.public _f4_lev_m_inv1_idq_ctrl_hys, 4
	.public _u1_flag_inv1_status_idqctrl_hys, 1
	.public _f4_kp_inv1_idctrl, 4
	.public _f4_ki_inv1_idctrl, 4
	.public _f4_id_inv1_ctrlperr, 4
	.public _f4_id_inv1_ctrlierr, 4
	.public _f4_id_inv1_ctrliref, 4
	.public _f4_id_inv1_ctrliref_array, 20
	.public _f4_vd_inv1_ctrl, 4
	.public _f4_vd_inv1_ctrlp, 4
	.public _f4_vd_inv1_ctrli, 4
	.public _f4_vq_inv1_ctrl_1pulse, 4
	.public _f4_vq_inv1_ctrlp_1pulse, 4
	.public _f4_vq_inv1_ctrli_1pulse, 4
	.public _f4_kp_inv1_iqctrl, 4
	.public _f4_ki_inv1_iqctrl, 4
	.public _f4_iq_inv1_ctrlperr, 4
	.public _f4_iq_inv1_ctrlierr, 4
	.public _f4_iq_inv1_ctrliref, 4
	.public _f4_iq_inv1_ctrliref_array, 20
	.public _f4_vq_inv1_ctrl, 4
	.public _f4_vq_inv1_ctrlp, 4
	.public _f4_vq_inv1_ctrli, 4
	.public _f4_vd_inv1_ctrl_1pulse, 4
	.public _f4_vd_inv1_ctrlp_1pulse, 4
	.public _f4_vd_inv1_ctrli_1pulse, 4
	.public _u1_flag_select_inv1_fai_ctrl, 1
	.public _f4_alf_inv1_faictrl_1x, 4
	.public _f4_alf_inv1_faictrl_2x, 4
	.public _f4_w0_inv1_faictrl, 4
	.public _f4_kp_inv1_fai_cmp, 4
	.public _f4_ki_inv1_fai_cmp, 4
	.public _f4_kp_inv1_fai_ctrl_max, 4
	.public _f4_kp_inv1_fai_ctrl_min, 4
	.public _f4_lev_m_kp_inv1_fai_ctrl_max, 4
	.public _f4_lev_m_kp_inv1_fai_ctrl_min, 4
	.public _f4_a_kp_inv1_fai_cmp, 4
	.public _f4_b_kp_inv1_fai_cmp, 4
	.public _f4_ki_inv1_fai_ctrl_max, 4
	.public _f4_ki_inv1_fai_ctrl_min, 4
	.public _f4_lev_m_ki_inv1_fai_ctrl_max, 4
	.public _f4_lev_m_ki_inv1_fai_ctrl_min, 4
	.public _f4_a_ki_inv1_fai_cmp, 4
	.public _f4_b_ki_inv1_fai_cmp, 4
	.public _f4_kp_inv1_faictrl_11, 4
	.public _f4_ki_inv1_faictrl_11, 4
	.public _f4_kp_inv1_faictrl_12, 4
	.public _f4_ki_inv1_faictrl_12, 4
	.public _f4_kp_inv1_faictrl_21, 4
	.public _f4_ki_inv1_faictrl_21, 4
	.public _f4_kp_inv1_faictrl_22, 4
	.public _f4_ki_inv1_faictrl_22, 4
	.public _f4_fai_gamma_inv1_ctrlperr, 4
	.public _f4_fai_gamma_inv1_ctrlierr, 4
	.public _f4_fai_gamma_inv1_ctrliref, 4
	.public _f4_fai_gamma_inv1_ctrliref_array, 20
	.public _f4_v_gamma_inv1_ctrl, 4
	.public _f4_v_gamma_inv1_ctrlp, 4
	.public _f4_v_gamma_inv1_ctrli, 4
	.public _f4_v_gamma_inv1_ctrl_1pulse, 4
	.public _f4_v_gamma_inv1_ctrlp_1pulse, 4
	.public _f4_v_gamma_inv1_ctrli_1pulse, 4
	.public _f4_fai_delta_inv1_ctrlperr, 4
	.public _f4_fai_delta_inv1_ctrlierr, 4
	.public _f4_fai_delta_inv1_ctrliref, 4
	.public _f4_fai_delta_inv1_ctrliref_array, 20
	.public _f4_v_delta_inv1_ctrl, 4
	.public _f4_v_delta_inv1_ctrlp, 4
	.public _f4_v_delta_inv1_ctrli, 4
	.public _f4_v_delta_inv1_ctrl_1pulse, 4
	.public _f4_v_delta_inv1_ctrlp_1pulse, 4
	.public _f4_v_delta_inv1_ctrli_1pulse, 4
	.public _u1_flag_inv1_status_idqctrl, 1
	.public _f4_vd_inv1_emf, 4
	.public _f4_vq_inv1_emf, 4
	.public _f4_vd_inv1_rs, 4
	.public _f4_vq_inv1_rs, 4
	.public _f4_v_gamma_inv1_emf, 4
	.public _f4_v_delta_inv1_emf, 4
	.public _f4_v_gamma_inv1_rs, 4
	.public _f4_v_delta_inv1_rs, 4
	.public _f4_vd_inv1_ref_tmp, 4
	.public _f4_vq_inv1_ref_tmp, 4
	.public _f4_v_gamma_inv1_ref_tmp, 4
	.public _f4_v_delta_inv1_ref_tmp, 4
	.public _u1_flag_inv1_status_vdq_max, 1
	.public _f4_k_inv1_vdq_max, 4
	.public _f4_vdq_inv1_max, 4
	.public _f4_v_gamma_inv1_ref, 4
	.public _f4_v_delta_inv1_ref, 4
	.public _f4_m_inv1_ref, 4
	.public _f4_k_inv1_modu, 4
	.public _f4_k_inv1_modu_max, 4
	.public _u1_flag_enable_inv1_dk_modu, 1
	.public _f4_dk_inv1_modu_kp, 4
	.public _f4_dk_inv1_modu_ki, 4
	.public _f4_dk_inv1_modu_kicmp, 4
	.public _u4_n_k_inv1_modu, 4
	.public _f4_m_inv1_lpf, 4
	.public _f4_wclpf_inv1_m, 4
	.public _u1_flag_inv1_modevctrl_tmp, 1
	.public _u2_cnt_inv1_vctrlmode, 2
	.public _u2_cnt_inv1_1pulsemode, 2
	.public _u2_cnt_inv1_svpwmmode, 2
	.public _u1_flag_enable_inv1_1pulse, 1
	.public _f4_lev_m_inv1_1pulse, 4
	.public _f4_lev_m_inv1_svpwm, 4
	.public _u1_flag_inv1_modetiming, 1
	.public _u1_flag_status_inv1_idq_ctrl_pwm, 1
	.public _f4_wt_inv1_delay, 4
	.public _f4_wt_inv1_svctrl, 4
	.public _f4_sin_inv1_wtsvctrl, 4
	.public _f4_cos_inv1_wtsvctrl, 4
	.public _s4_wt_inv1_dq_2pi_2_31, 4
	.public _s4_wt_inv1_delay_2pi_2_31, 4
	.public _f4_wt_inv1_vdq, 4
	.public _s4_wt_inv1_vdq_2pi_2_31, 4
	.public _s4_wt_inv1_1pulse_pwm_2pi_2_31, 4
	.public _f4_vdq_inv1_max_1pulse, 4
	.public _f4_vd_inv1_ref_1pulse, 4
	.public _f4_vq_inv1_ref_1pulse, 4
	.public _f4_vdq_inv1_ref_1pulse, 4
	.public _f4_v_gamma_inv1_ref_1pulse, 4
	.public _f4_v_delta_inv1_ref_1pulse, 4
	.public _f4_wclpf_inv1_p123, 4
	.public _f4_power_inv1_p123, 4
	.public _f4_power_inv1_p123_lpf, 4
	.public _fi_pwm_inv1_idqctrl
	.extern _sinf
	.extern _cosf
	.extern _sqrtf
	.extern _u1_ld_map_2d_get
	.extern _u1_lq_map_2d_get
	.extern _atan2f
	.public _fb_pwm_inv1_idqctrl_init

	.section .text, text
_fi_pwm_inv1_idqctrl:
	.stack _fi_pwm_inv1_idqctrl = 64
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 416
	prepare 0x00000FFF, 0x00000010
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 435
	movhi HIGHW1(#_f4_iv_inv1_ctrl), r0, r2
	movhi HIGHW1(#_f4_iw_inv1_ctrl), r0, r5
	ld.w LOWW(#_f4_iv_inv1_ctrl)[r2], r2
	movhi 0x00003F00, r0, r6
	ld.w LOWW(#_f4_iw_inv1_ctrl)[r5], r5
	movhi HIGHW1(#_f4_iu_inv1_ctrl), r0, r8
	ld.w LOWW(#_f4_iu_inv1_ctrl)[r8], r8
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 440
	movhi HIGHW1(#_f4_sin_inv1_wtdq), r0, r7
	mov 0x3FB504F3, r10
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 437
	subf.s r5, r2, r9
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 440
	ld.w LOWW(#_f4_sin_inv1_wtdq)[r7], r7
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 435
	addf.s r5, r2, r2
	mov 0x3F5105EC, r5
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 437
	mulf.s r6, r9, r9
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 435
	mulf.s r6, r2, r2
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 437
	mulf.s r10, r9, r20
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 435
	subf.s r2, r8, r2
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 447
	movhi HIGHW1(#_f4_k_inv1_idq_cmp), r0, r8
	ld.w LOWW(#_f4_k_inv1_idq_cmp)[r8], r8
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 440
	mulf.s r20, r7, r9
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 435
	mulf.s r5, r2, r21
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 440
	movhi HIGHW1(#_f4_cos_inv1_wtdq), r0, r2
	ld.w LOWW(#_f4_cos_inv1_wtdq)[r2], r2
	movhi HIGHW1(#_f4_id_inv1_ad), r0, r5
	mulf.s r21, r2, r10
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 442
	mulf.s r21, r7, r6
	movhi HIGHW1(#_f4_iq_inv1_ad), r0, r7
	mulf.s r20, r2, r2
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 440
	addf.s r9, r10, r9
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 442
	subf.s r6, r2, r2
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 449
	movhi HIGHW1(#_f4_wt_inv1_dq), r0, r6
	ld.w LOWW(#_f4_wt_inv1_dq)[r6], r6
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 440
	st.w r9, LOWW(#_f4_id_inv1_ad)[r5]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 447
	movhi HIGHW1(#_f4_ts_inv1_ctrl), r0, r5
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 442
	st.w r2, LOWW(#_f4_iq_inv1_ad)[r7]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 447
	movhi HIGHW1(#_f4_wr_inv1_pll_lpf), r0, r2
	ld.w LOWW(#_f4_wr_inv1_pll_lpf)[r2], r2
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 449
	movhi HIGHW1(#_f4_wt_inv1_idq_cmp), r0, r7
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 447
	ld.w LOWW(#_f4_ts_inv1_ctrl)[r5], r5
	mulf.s r2, r8, r2
	mov 0x40490FDB, r8
	mulf.s r5, r2, r2
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 449
	addf.s r2, r6, r6
	mov 0xC0C90FDB, r2
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 450
	cmpf.s 0x00000007, r6, r8
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 449
	st.w r6, LOWW(#_f4_wt_inv1_idq_cmp)[r7]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 450
	trfsr 0
	bnz9 .BB.LABEL.1_3
.BB.LABEL.1_1:	; if_else_bb
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 0
	mov 0xC0490FDB, r2
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 451
	cmpf.s 0x00000004, r6, r2
	trfsr 0
	bnz9 .BB.LABEL.1_4
.BB.LABEL.1_2:	; if_then_bb77
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 0
	mov 0x40C90FDB, r2
.BB.LABEL.1_3:	; if_then_bb77
	addf.s r2, r6, r6
	movhi HIGHW1(#_f4_wt_inv1_idq_cmp), r0, r2
	st.w r6, LOWW(#_f4_wt_inv1_idq_cmp)[r2]
.BB.LABEL.1_4:	; if_break_bb81
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 455
	jarl _sinf, r31
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 456
	movhi HIGHW1(#_f4_wt_inv1_idq_cmp), r0, r2
	ld.w LOWW(#_f4_wt_inv1_idq_cmp)[r2], r6
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 455
	movhi HIGHW1(#_f4_sin_inv1_wtidq_cmp), r0, r22
	st.w r10, LOWW(#_f4_sin_inv1_wtidq_cmp)[r22]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 456
	jarl _cosf, r31
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 459
	ld.w LOWW(#_f4_sin_inv1_wtidq_cmp)[r22], r2
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 456
	movhi HIGHW1(#_f4_cos_inv1_wtidq_cmp), r0, r5
	st.w r10, LOWW(#_f4_cos_inv1_wtidq_cmp)[r5]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 459
	mulf.s r21, r10, r5
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 461
	mulf.s r20, r10, r7
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 459
	movhi HIGHW1(#_f4_id_inv1_ad_cmp), r0, r6
	mulf.s r20, r2, r8
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 465
	movhi HIGHW1(#_f4_power_inv1_p123_lpf), r0, r9
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 461
	mulf.s r21, r2, r2
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 465
	ld.w LOWW(#_f4_power_inv1_p123_lpf)[r9], r10
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 459
	addf.s r8, r5, r5
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 464
	movhi HIGHW1(#_f4_power_inv1_p123), r0, r8
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 461
	subf.s r2, r7, r2
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 464
	movhi HIGHW1(#_f4_vq_inv1_ref), r0, r7
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 459
	st.w r5, LOWW(#_f4_id_inv1_ad_cmp)[r6]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 461
	movhi HIGHW1(#_f4_iq_inv1_ad_cmp), r0, r6
	st.w r2, LOWW(#_f4_iq_inv1_ad_cmp)[r6]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 464
	movhi HIGHW1(#_f4_vd_inv1_ref), r0, r6
	ld.w LOWW(#_f4_vd_inv1_ref)[r6], r6
	ld.w LOWW(#_f4_vq_inv1_ref)[r7], r7
	mulf.s r5, r6, r5
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 466
	movhi HIGHW1(#_f4_wclpf_inv1_p123), r0, r6
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 464
	mulf.s r2, r7, r2
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 466
	ld.w LOWW(#_f4_wclpf_inv1_p123)[r6], r6
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 464
	addf.s r2, r5, r2
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 466
	movhi HIGHW1(#_f4_ts_inv1_ctrl), r0, r5
	ld.w LOWW(#_f4_ts_inv1_ctrl)[r5], r5
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 464
	st.w r2, LOWW(#_f4_power_inv1_p123)[r8]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 465
	subf.s r10, r2, r2
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 474
	movhi HIGHW1(#_f4_id_inv1_ad_sum), r0, r8
	ld.w LOWW(#_f4_id_inv1_ad_sum)[r8], r11
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 466
	mulf.s r2, r6, r2
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 471
	movhi HIGHW1(#_u4_cnt_idq_inv1_ad_ave), r0, r6
	ld.w LOWW(#_u4_cnt_idq_inv1_ad_ave)[r6], r7
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 466
	mulf.s r5, r2, r2
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 471
	add 0x00000001, r7
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 474
	movhi HIGHW1(#_f4_id_inv1_ad), r0, r5
	ld.w LOWW(#_f4_id_inv1_ad)[r5], r5
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 466
	addf.s r2, r10, r2
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 477
	movhi HIGHW1(#_u1_flag_status_inv1_idq_ctrl), r0, r10
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 474
	addf.s r5, r11, r5
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 477
	ld.bu LOWW(#_u1_flag_status_inv1_idq_ctrl)[r10], r10
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 466
	st.w r2, LOWW(#_f4_power_inv1_p123_lpf)[r9]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 475
	movhi HIGHW1(#_f4_iq_inv1_ad), r0, r9
	mov 0x7FFFFFFF, r2
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 472
	cmov 0x00000004, r2, r7, r2
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 475
	ld.w LOWW(#_f4_iq_inv1_ad)[r9], r9
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 472
	st.w r2, LOWW(#_u4_cnt_idq_inv1_ad_ave)[r6]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 475
	movhi HIGHW1(#_f4_iq_inv1_ad_sum), r0, r6
	ld.w LOWW(#_f4_iq_inv1_ad_sum)[r6], r7
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 478
	cmp 0x00000001, r10
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 474
	st.w r5, LOWW(#_f4_id_inv1_ad_sum)[r8]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 477
	movhi HIGHW1(#_u1_flag_status_inv1_idq_ctrl_pwm), r0, r8
	st.b r10, LOWW(#_u1_flag_status_inv1_idq_ctrl_pwm)[r8]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 475
	addf.s r9, r7, r7
	st.w r7, LOWW(#_f4_iq_inv1_ad_sum)[r6]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 478
	bnz9 .BB.LABEL.1_6
.BB.LABEL.1_5:	; if_then_bb149
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 480
	cvtf.uws r2, r2
	movhi HIGHW1(#_f4_id_inv1_ad_ave), r0, r6
	divf.s r2, r5, r5
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 481
	divf.s r2, r7, r2
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 480
	st.w r5, LOWW(#_f4_id_inv1_ad_ave)[r6]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 481
	movhi HIGHW1(#_f4_iq_inv1_ad_ave), r0, r5
	st.w r2, LOWW(#_f4_iq_inv1_ad_ave)[r5]
.BB.LABEL.1_6:	; if_break_bb159
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 491
	movhi HIGHW1(#_f4_vdc_inv1_lpf), r0, r2
	ld.w LOWW(#_f4_vdc_inv1_lpf)[r2], r2
	mov 0x3F3504E6, r8
	movhi HIGHW1(#_f4_k_inv1_vdq_vctrl), r0, r5
	ld.w LOWW(#_f4_k_inv1_vdq_vctrl)[r5], r5
	mulf.s r8, r2, r2
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 494
	movhi HIGHW1(#_u1_pwm_inv1_status), r0, r7
	ld.bu LOWW(#_u1_pwm_inv1_status)[r7], r7
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 491
	movhi HIGHW1(#_f4_vdq_inv1_vctrl), r0, r6
	mulf.s r5, r2, r2
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 494
	cmp 0x00000001, r7
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 491
	st.w r2, LOWW(#_f4_vdq_inv1_vctrl)[r6]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 494
	bnz17 .BB.LABEL.1_35
.BB.LABEL.1_7:	; if_then_bb169
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 496
	movhi HIGHW1(#_u1_flag_inv1_modevctrl), r0, r5
	ld.bu LOWW(#_u1_flag_inv1_modevctrl)[r5], r5
	cmp 0x00000000, r5
	bz9 .BB.LABEL.1_10
.BB.LABEL.1_8:	; bb174
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 0
	movhi HIGHW1(#_u1_flag_inv1_modevctrl), r0, r5
	ld.bu LOWW(#_u1_flag_inv1_modevctrl)[r5], r5
	cmp 0x00000001, r5
	bnz17 .BB.LABEL.1_37
.BB.LABEL.1_9:	; bb174
	cmp 0x00000001, r10
	bnz17 .BB.LABEL.1_37
.BB.LABEL.1_10:	; if_then_bb199
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 500
	movhi HIGHW1(#_f4_iq_inv0_ctrl), r0, r5
	ld.w LOWW(#_f4_iq_inv0_ctrl)[r5], r5
	mov 0x00000000, r6
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 501
	cmpf.s 0x00000004, r5, r6
	trfsr 0
	bnz9 .BB.LABEL.1_12
.BB.LABEL.1_11:	; if_then_bb205
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 503
	negf.s r5, r5
.BB.LABEL.1_12:	; if_break_bb208
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 505
	movhi HIGHW1(#_f4_iq_inv1_vdqctrl_max), r0, r7
	st.w r5, LOWW(#_f4_iq_inv1_vdqctrl_max)[r7]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 507
	movhi HIGHW1(#_f4_vdq_inv1_ref), r0, r7
	ld.w LOWW(#_f4_vdq_inv1_ref)[r7], r7
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 510
	movhi HIGHW1(#_u1_flag_status_inv1_vdqctrl), r0, r9
	ld.bu LOWW(#_u1_flag_status_inv1_vdqctrl)[r9], r9
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 507
	movhi HIGHW1(#_f4_vdqctrl_inv1_err), r0, r8
	subf.s r7, r2, r2
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 510
	cmp 0x00000000, r9
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 507
	st.w r2, LOWW(#_f4_vdqctrl_inv1_err)[r8]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 510
	bnz17 .BB.LABEL.1_28
.BB.LABEL.1_13:	; if_then_bb218
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 513
	cmpf.s 0x00000004, r2, r6
	trfsr 0
	bnz9 .BB.LABEL.1_19
.BB.LABEL.1_14:	; if_then_bb223
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 515
	movhi HIGHW1(#_f4_vq_inv1_ref), r0, r7
	ld.w LOWW(#_f4_vq_inv1_ref)[r7], r7
	mov 0x00000000, r8
	cmpf.s 0x00000007, r7, r8
	trfsr 0
	bz9 .BB.LABEL.1_16
.BB.LABEL.1_15:	; bb227
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 0
	movhi HIGHW1(#_f4_wr_inv1_pll_lpf), r0, r7
	ld.w LOWW(#_f4_wr_inv1_pll_lpf)[r7], r7
	cmpf.s 0x00000004, r7, r8
	trfsr 0
	bz9 .BB.LABEL.1_18
.BB.LABEL.1_16:	; bb238
	movhi HIGHW1(#_f4_vq_inv1_ref), r0, r7
	ld.w LOWW(#_f4_vq_inv1_ref)[r7], r7
	mov 0x00000000, r9
	cmpf.s 0x00000007, r9, r7
	trfsr 0
	bz9 .BB.LABEL.1_19
.BB.LABEL.1_17:	; bb242
	movhi HIGHW1(#_f4_wr_inv1_pll_lpf), r0, r7
	ld.w LOWW(#_f4_wr_inv1_pll_lpf)[r7], r7
	cmpf.s 0x00000007, r7, r9
	trfsr 0
	bz9 .BB.LABEL.1_19
.BB.LABEL.1_18:	; if_then_bb261
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 519
	movhi HIGHW1(#_f4_vdqctrl_inv1_err), r0, r2
	st.w r0, LOWW(#_f4_vdqctrl_inv1_err)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 521
	movhi HIGHW1(#_u1_flag_status_inv1_vdqctrl), r0, r2
	mov 0x00000001, r7
	st.b r7, LOWW(#_u1_flag_status_inv1_vdqctrl)[r2]
	mov r8, r2
.BB.LABEL.1_19:	; if_break_bb265
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 527
	movhi HIGHW1(#_f4_kp_inv1_vdqctrl), r0, r7
	ld.w LOWW(#_f4_kp_inv1_vdqctrl)[r7], r7
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 529
	movhi HIGHW1(#_f4_ki_inv1_vdqctrl), r0, r9
	ld.w LOWW(#_f4_ki_inv1_vdqctrl)[r9], r9
	movhi HIGHW1(#_f4_id_inv1_vdqctrli), r0, r10
	ld.w LOWW(#_f4_id_inv1_vdqctrli)[r10], r10
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 527
	mulf.s r2, r7, r7
	movhi HIGHW1(#_f4_id_inv1_vdqctrlp), r0, r8
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 529
	mulf.s r2, r9, r2
	addf.s r2, r10, r2
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 527
	st.w r7, LOWW(#_f4_id_inv1_vdqctrlp)[r8]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 530
	cmpf.s 0x00000007, r2, r6
	trfsr 0
	bnz9 .BB.LABEL.1_22
.BB.LABEL.1_20:	; bb278
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 0
	movhi HIGHW1(#_f4_id_inv1_vdqctrl_max), r0, r6
	ld.w LOWW(#_f4_id_inv1_vdqctrl_max)[r6], r6
	negf.s r6, r6
	cmpf.s 0x00000007, r6, r2
	trfsr 0
	bnz9 .BB.LABEL.1_22
.BB.LABEL.1_21:	; bb287
	mov r2, r6
.BB.LABEL.1_22:	; bb294
	movhi HIGHW1(#_f4_id_inv1_vdqctrli), r0, r2
	st.w r6, LOWW(#_f4_id_inv1_vdqctrli)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 532
	addf.s r6, r7, r2
	mov 0x00000000, r6
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 536
	cmpf.s 0x00000007, r2, r6
	trfsr 0
	bz9 .BB.LABEL.1_24
.BB.LABEL.1_23:	; if_then_bb304
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 538
	movhi HIGHW1(#_f4_id_inv1_vdqctrl), r0, r2
	st.w r0, LOWW(#_f4_id_inv1_vdqctrl)[r2]
	br9 .BB.LABEL.1_27
.BB.LABEL.1_24:	; if_else_bb305
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 540
	movhi HIGHW1(#_f4_id_inv1_vdqctrl_max), r0, r6
	ld.w LOWW(#_f4_id_inv1_vdqctrl_max)[r6], r6
	negf.s r6, r6
	cmpf.s 0x00000007, r6, r2
	trfsr 0
	bz9 .BB.LABEL.1_26
.BB.LABEL.1_25:	; if_then_bb312
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 542
	movhi HIGHW1(#_f4_id_inv1_vdqctrl), r0, r2
	st.w r6, LOWW(#_f4_id_inv1_vdqctrl)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 543
	movhi HIGHW1(#_u1_flag_status_inv1_vdqctrl), r0, r2
	mov 0x00000001, r6
	st.b r6, LOWW(#_u1_flag_status_inv1_vdqctrl)[r2]
	br9 .BB.LABEL.1_27
.BB.LABEL.1_26:	; if_else_bb315
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 547
	movhi HIGHW1(#_f4_id_inv1_vdqctrl), r0, r6
	st.w r2, LOWW(#_f4_id_inv1_vdqctrl)[r6]
.BB.LABEL.1_27:	; if_break_bb318
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 550
	movhi HIGHW1(#_f4_iq_inv1_vdqctrl), r0, r2
	st.w r5, LOWW(#_f4_iq_inv1_vdqctrl)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 551
	movhi HIGHW1(#_f4_iq_inv1_vdqctrli), r0, r2
	st.w r5, LOWW(#_f4_iq_inv1_vdqctrli)[r2]
	br9 .BB.LABEL.1_37
.BB.LABEL.1_28:	; if_else_bb321
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 555
	movhi HIGHW1(#_f4_kp_inv1_vdqctrl), r0, r6
	ld.w LOWW(#_f4_kp_inv1_vdqctrl)[r6], r6
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 557
	movhi HIGHW1(#_f4_ki_inv1_vdqctrl), r0, r8
	ld.w LOWW(#_f4_ki_inv1_vdqctrl)[r8], r8
	movhi HIGHW1(#_f4_iq_inv1_vdqctrli), r0, r9
	ld.w LOWW(#_f4_iq_inv1_vdqctrli)[r9], r9
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 555
	mulf.s r2, r6, r6
	movhi HIGHW1(#_f4_iq_inv1_vdqctrlp), r0, r7
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 557
	mulf.s r2, r8, r2
	addf.s r2, r9, r2
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 555
	st.w r6, LOWW(#_f4_iq_inv1_vdqctrlp)[r7]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 558
	cmpf.s 0x00000007, r2, r5
	trfsr 0
	cmov 0x0000000A, r5, r2, r2
	bnz9 .BB.LABEL.1_30
.BB.LABEL.1_29:	; bb336
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 0
	mov 0x00000000, r7
	cmpf.s 0x00000004, r2, r7
	cmovf.s 0, r7, r2, r2
.BB.LABEL.1_30:	; bb348
	movhi HIGHW1(#_f4_iq_inv1_vdqctrli), r0, r7
	st.w r2, LOWW(#_f4_iq_inv1_vdqctrli)[r7]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 560
	addf.s r2, r6, r2
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 562
	cmpf.s 0x00000007, r2, r5
	trfsr 0
	bz9 .BB.LABEL.1_32
.BB.LABEL.1_31:	; if_then_bb359
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 564
	movhi HIGHW1(#_f4_iq_inv1_vdqctrl), r0, r2
	st.w r5, LOWW(#_f4_iq_inv1_vdqctrl)[r2]
	br9 .BB.LABEL.1_36
.BB.LABEL.1_32:	; if_else_bb361
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 0
	mov 0x00000000, r5
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 567
	cmpf.s 0x00000007, r5, r2
	trfsr 0
	bz9 .BB.LABEL.1_34
.BB.LABEL.1_33:	; if_then_bb366
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 569
	movhi HIGHW1(#_f4_iq_inv1_vdqctrl), r0, r2
	st.w r0, LOWW(#_f4_iq_inv1_vdqctrl)[r2]
	br9 .BB.LABEL.1_37
.BB.LABEL.1_34:	; if_else_bb367
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 573
	movhi HIGHW1(#_f4_iq_inv1_vdqctrl), r0, r5
	st.w r2, LOWW(#_f4_iq_inv1_vdqctrl)[r5]
	br9 .BB.LABEL.1_37
.BB.LABEL.1_35:	; if_else_bb374
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 581
	movhi HIGHW1(#_f4_id_inv1_vdqctrl), r0, r2
	st.w r0, LOWW(#_f4_id_inv1_vdqctrl)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 582
	movhi HIGHW1(#_f4_id_inv1_vdqctrlp), r0, r2
	st.w r0, LOWW(#_f4_id_inv1_vdqctrlp)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 583
	movhi HIGHW1(#_f4_id_inv1_vdqctrli), r0, r2
	st.w r0, LOWW(#_f4_id_inv1_vdqctrli)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 584
	movhi HIGHW1(#_f4_iq_inv1_vdqctrl), r0, r2
	st.w r0, LOWW(#_f4_iq_inv1_vdqctrl)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 585
	movhi HIGHW1(#_f4_iq_inv1_vdqctrlp), r0, r2
	st.w r0, LOWW(#_f4_iq_inv1_vdqctrlp)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 586
	movhi HIGHW1(#_f4_iq_inv1_vdqctrli), r0, r2
	st.w r0, LOWW(#_f4_iq_inv1_vdqctrli)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 588
	movhi HIGHW1(#_f4_iq_inv1_vdqctrl_max), r0, r2
	st.w r0, LOWW(#_f4_iq_inv1_vdqctrl_max)[r2]
.BB.LABEL.1_36:	; if_else_bb374
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 0
	movhi HIGHW1(#_u1_flag_status_inv1_vdqctrl), r0, r2
	st.b r0, LOWW(#_u1_flag_status_inv1_vdqctrl)[r2]
.BB.LABEL.1_37:	; if_break_bb375
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 598
	movhi HIGHW1(#_u1_flag_inv1_adj), r0, r2
	ld.bu LOWW(#_u1_flag_inv1_adj)[r2], r2
	cmp 0x00000000, r2
	bnz17 .BB.LABEL.1_53
.BB.LABEL.1_38:	; if_then_bb381
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 600
	movhi HIGHW1(#_f4_id_inv0_ctrl), r0, r2
	movhi HIGHW1(#_f4_id_inv1_vdqctrl), r0, r5
	ld.w LOWW(#_f4_id_inv0_ctrl)[r2], r2
	movhi HIGHW1(#_f4_id_inv1_ref), r0, r6
	ld.w LOWW(#_f4_id_inv1_vdqctrl)[r5], r5
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 604
	movhi HIGHW1(#_f4_iq_inv0_ctrl), r0, r7
	movhi HIGHW1(#_f4_iq_inv1_vdqctrl), r0, r8
	ld.w LOWW(#_f4_iq_inv1_vdqctrl)[r8], r8
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 600
	addf.s r5, r2, r2
	st.w r2, LOWW(#_f4_id_inv1_ref)[r6]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 604
	ld.w LOWW(#_f4_iq_inv0_ctrl)[r7], r2
	cmpf.s 0x00000007, r2, r8
	trfsr 0
	bnz9 .BB.LABEL.1_41
.BB.LABEL.1_39:	; bb391
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 0
	negf.s r8, r8
	movhi HIGHW1(#_f4_iq_inv0_ctrl), r0, r2
	ld.w LOWW(#_f4_iq_inv0_ctrl)[r2], r2
	cmpf.s 0x00000007, r8, r2
	trfsr 0
	bnz9 .BB.LABEL.1_41
.BB.LABEL.1_40:	; bb400
	movhi HIGHW1(#_f4_iq_inv0_ctrl), r0, r8
	ld.w LOWW(#_f4_iq_inv0_ctrl)[r8], r8
.BB.LABEL.1_41:	; bb407
	movhi HIGHW1(#_f4_iq_inv1_ref), r0, r2
	st.w r8, LOWW(#_f4_iq_inv1_ref)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 613
	movhi HIGHW1(#_f4_id_inv1_ref), r0, r20
	ld.w LOWW(#_f4_id_inv1_ref)[r20], r21
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 614
	ld.w LOWW(#_f4_iq_inv1_ref)[r2], r22
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 617
	mulf.s r21, r21, r2
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 619
	mulf.s r22, r22, r5
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 621
	addf.s r5, r2, r6
	jarl _sqrtf, r31
	movhi HIGHW1(#_f4_idq_inv1_ref), r0, r2
	st.w r10, LOWW(#_f4_idq_inv1_ref)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 625
	st.w r21, LOWW(#_f4_id_inv1_ref)[r20]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 628
	movhi HIGHW1(#_u1_flag_mode_inv0_idqcom), r0, r2
	ld.bu LOWW(#_u1_flag_mode_inv0_idqcom)[r2], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.1_46
.BB.LABEL.1_42:	; bb427
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 0
	movhi HIGHW1(#_u1_flag_enable_inv0_wrctrl), r0, r2
	ld.bu LOWW(#_u1_flag_enable_inv0_wrctrl)[r2], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.1_46
.BB.LABEL.1_43:	; if_then_bb440
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 630
	movhi HIGHW1(#_f4_irms_inv0_ref_tmp), r0, r2
	ld.w LOWW(#_f4_irms_inv0_ref_tmp)[r2], r2
	mov 0x00000000, r5
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 631
	cmpf.s 0x00000004, r2, r5
	trfsr 0
	bnz9 .BB.LABEL.1_45
.BB.LABEL.1_44:	; if_then_bb446
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 0
	negf.s r2, r2
.BB.LABEL.1_45:	; if_break_bb450
	mov 0x3FDDB3D0, r5
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 634
	mulf.s r5, r2, r2
	br9 .BB.LABEL.1_47
.BB.LABEL.1_46:	; if_else_bb453
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 638
	movhi HIGHW1(#_f4_idq_inv0_max), r0, r2
	ld.w LOWW(#_f4_idq_inv0_max)[r2], r2
.BB.LABEL.1_47:	; if_break_bb455
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 641
	cmpf.s 0x00000007, r10, r2
	trfsr 0
	bz9 .BB.LABEL.1_52
.BB.LABEL.1_48:	; if_then_bb461
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 643
	movhi HIGHW1(#_f4_id_inv1_ref), r0, r5
	ld.w LOWW(#_f4_id_inv1_ref)[r5], r6
	ld.w LOWW(#_f4_id_inv1_ref)[r5], r5
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 645
	mulf.s r2, r2, r2
	mov 0x00000000, r20
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 643
	mulf.s r5, r6, r5
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 647
	subf.s r5, r2, r2
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 648
	cmpf.s 0x00000004, r2, r20
	cmovf.s 0, r20, r2, r6
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 651
	jarl _sqrtf, r31
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 652
	cmpf.s 0x00000007, r22, r20
	trfsr 0
	bz9 .BB.LABEL.1_50
.BB.LABEL.1_49:	; if_then_bb484
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 654
	movhi HIGHW1(#_f4_iq_inv1_ref), r0, r22
	st.w r10, LOWW(#_f4_iq_inv1_ref)[r22]
	br9 .BB.LABEL.1_51
.BB.LABEL.1_50:	; if_else_bb486
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 658
	negf.s r10, r22
	movhi HIGHW1(#_f4_iq_inv1_ref), r0, r2
	st.w r22, LOWW(#_f4_iq_inv1_ref)[r2]
.BB.LABEL.1_51:	; if_break_bb489
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 661
	movhi HIGHW1(#_f4_id_inv1_ref), r0, r22
	ld.w LOWW(#_f4_id_inv1_ref)[r22], r2
	ld.w LOWW(#_f4_id_inv1_ref)[r22], r22
	movhi HIGHW1(#_f4_iq_inv1_ref), r0, r5
	ld.w LOWW(#_f4_iq_inv1_ref)[r5], r6
	ld.w LOWW(#_f4_iq_inv1_ref)[r5], r5
	mulf.s r22, r2, r22
	mulf.s r5, r6, r2
	addf.s r2, r22, r6
	jarl _sqrtf, r31
	movhi HIGHW1(#_f4_idq_inv1_ref), r0, r22
	st.w r10, LOWW(#_f4_idq_inv1_ref)[r22]
	br9 .BB.LABEL.1_54
.BB.LABEL.1_52:	; if_else_bb498
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 666
	movhi HIGHW1(#_f4_iq_inv1_ref), r0, r2
	st.w r22, LOWW(#_f4_iq_inv1_ref)[r2]
	br9 .BB.LABEL.1_54
.BB.LABEL.1_53:	; if_else_bb501
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 673
	movhi HIGHW1(#_f4_id_inv1_adj), r0, r2
	ld.w LOWW(#_f4_id_inv1_adj)[r2], r2
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 674
	movhi HIGHW1(#_f4_iq_inv1_adj), r0, r6
	ld.w LOWW(#_f4_iq_inv1_adj)[r6], r6
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 673
	movhi HIGHW1(#_f4_id_inv1_ref), r0, r5
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 674
	movhi HIGHW1(#_f4_iq_inv1_ref), r0, r7
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 673
	st.w r2, LOWW(#_f4_id_inv1_ref)[r5]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 674
	st.w r6, LOWW(#_f4_iq_inv1_ref)[r7]
.BB.LABEL.1_54:	; if_break_bb504
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 681
	movhi HIGHW1(#_u1_flag_inv1_adj), r0, r2
	ld.bu LOWW(#_u1_flag_inv1_adj)[r2], r2
	cmp 0x00000000, r2
	bnz17 .BB.LABEL.1_71
.BB.LABEL.1_55:	; if_then_bb510
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 683
	movhi HIGHW1(#_u1_flag_ldq_inv1_mode), r0, r2
	ld.bu LOWW(#_u1_flag_ldq_inv1_mode)[r2], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.1_64
.BB.LABEL.1_56:	; if_then_bb516
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 686
	movhi HIGHW1(#_f4_id_inv1_ref), r0, r2
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 688
	movhi HIGHW1(#_f4_i_ld_inv1_isat), r0, r5
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 686
	ld.w LOWW(#_f4_id_inv1_ref)[r2], r2
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 688
	ld.w LOWW(#_f4_i_ld_inv1_isat)[r5], r5
	cmpf.s 0x00000007, r5, r2
	trfsr 0
	bz9 .BB.LABEL.1_58
.BB.LABEL.1_57:	; if_then_bb523
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 690
	movhi HIGHW1(#_f4_ld_inv1_const), r0, r2
	ld.w LOWW(#_f4_ld_inv1_const)[r2], r2
	br9 .BB.LABEL.1_59
.BB.LABEL.1_58:	; if_else_bb525
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 694
	movhi HIGHW1(#_f4_k2_ld_inv1_isat), r0, r5
	ld.w LOWW(#_f4_k2_ld_inv1_isat)[r5], r5
	movhi HIGHW1(#_f4_k1_ld_inv1_isat), r0, r6
	ld.w LOWW(#_f4_k1_ld_inv1_isat)[r6], r6
	divf.s r2, r5, r2
	addf.s r6, r2, r2
.BB.LABEL.1_59:	; if_break_bb531
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 0
	movhi HIGHW1(#_f4_ld_inv1_isat), r0, r5
	st.w r2, LOWW(#_f4_ld_inv1_isat)[r5]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 698
	movhi HIGHW1(#_f4_iq_inv1_ref), r0, r2
	ld.w LOWW(#_f4_iq_inv1_ref)[r2], r2
	mov 0x00000000, r5
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 699
	cmpf.s 0x00000004, r2, r5
	trfsr 0
	bnz9 .BB.LABEL.1_61
.BB.LABEL.1_60:	; if_then_bb537
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 0
	negf.s r2, r2
.BB.LABEL.1_61:	; if_break_bb541
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 702
	movhi HIGHW1(#_f4_i_lq_inv1_isat), r0, r5
	ld.w LOWW(#_f4_i_lq_inv1_isat)[r5], r5
	cmpf.s 0x00000007, r5, r2
	trfsr 0
	bz9 .BB.LABEL.1_63
.BB.LABEL.1_62:	; if_then_bb547
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 704
	movhi HIGHW1(#_f4_lq_inv1_const), r0, r2
	ld.w LOWW(#_f4_lq_inv1_const)[r2], r2
	movhi HIGHW1(#_f4_lq_inv1_isat), r0, r5
	st.w r2, LOWW(#_f4_lq_inv1_isat)[r5]
	br9 .BB.LABEL.1_73
.BB.LABEL.1_63:	; if_else_bb549
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 708
	movhi HIGHW1(#_f4_k2_lq_inv1_isat), r0, r5
	ld.w LOWW(#_f4_k2_lq_inv1_isat)[r5], r5
	movhi HIGHW1(#_f4_k1_lq_inv1_isat), r0, r6
	ld.w LOWW(#_f4_k1_lq_inv1_isat)[r6], r6
	movhi HIGHW1(#_f4_lq_inv1_isat), r0, r7
	divf.s r2, r5, r2
	addf.s r6, r2, r2
	st.w r2, LOWW(#_f4_lq_inv1_isat)[r7]
	br9 .BB.LABEL.1_73
.BB.LABEL.1_64:	; if_else_bb556
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 711
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.1_70
.BB.LABEL.1_65:	; if_then_bb562
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 713
	movhi HIGHW1(#_f4_id_inv1_ref), r0, r2
	ld.w LOWW(#_f4_id_inv1_ref)[r2], r20
	mov 0x00000000, r2
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 714
	cmpf.s 0x00000004, r20, r2
	trfsr 0
	bnz9 .BB.LABEL.1_67
.BB.LABEL.1_66:	; if_then_bb568
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 716
	negf.s r20, r20
.BB.LABEL.1_67:	; if_break_bb572
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 720
	movhi HIGHW1(#_f4_iq_inv1_ref), r0, r5
	ld.w LOWW(#_f4_iq_inv1_ref)[r5], r21
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 721
	cmpf.s 0x00000004, r21, r2
	trfsr 0
	bnz9 .BB.LABEL.1_69
.BB.LABEL.1_68:	; if_then_bb578
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 723
	negf.s r21, r21
.BB.LABEL.1_69:	; if_break_bb582
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 728
	mov #_f4_ld_inv1_isat, r8
	mov r20, r6
	mov r21, r7
	jarl _u1_ld_map_2d_get, r31
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 731
	mov #_f4_lq_inv1_isat, r8
	mov r21, r6
	mov r20, r7
	jarl _u1_lq_map_2d_get, r31
	br9 .BB.LABEL.1_73
.BB.LABEL.1_70:	; if_else_bb589
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 735
	movhi HIGHW1(#_f4_ld_inv0_isat), r0, r2
	ld.w LOWW(#_f4_ld_inv0_isat)[r2], r2
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 736
	movhi HIGHW1(#_f4_lq_inv0_isat), r0, r6
	ld.w LOWW(#_f4_lq_inv0_isat)[r6], r6
	br9 .BB.LABEL.1_72
.BB.LABEL.1_71:	; if_else_bb594
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 741
	movhi HIGHW1(#_f4_ld_inv1_const), r0, r2
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 742
	movhi HIGHW1(#_f4_lq_inv1_const), r0, r6
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 741
	ld.w LOWW(#_f4_ld_inv1_const)[r2], r2
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 742
	ld.w LOWW(#_f4_lq_inv1_const)[r6], r6
.BB.LABEL.1_72:	; if_else_bb594
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 0
	movhi HIGHW1(#_f4_ld_inv1_isat), r0, r5
	movhi HIGHW1(#_f4_lq_inv1_isat), r0, r7
	st.w r2, LOWW(#_f4_ld_inv1_isat)[r5]
	st.w r6, LOWW(#_f4_lq_inv1_isat)[r7]
.BB.LABEL.1_73:	; if_break_bb597
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 750
	movhi HIGHW1(#_f4_ld_inv1_isat), r0, r2
	movhi HIGHW1(#_f4_id_inv1_ref), r0, r6
	ld.w LOWW(#_f4_ld_inv1_isat)[r2], r2
	movhi HIGHW1(#_f4_fm_inv1), r0, r5
	ld.w LOWW(#_f4_id_inv1_ref)[r6], r6
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 751
	movhi HIGHW1(#_f4_lq_inv1_isat), r0, r7
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 750
	ld.w LOWW(#_f4_fm_inv1)[r5], r5
	movhi HIGHW1(#_f4_fai_d_inv1_ref), r0, r8
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 751
	ld.w LOWW(#_f4_lq_inv1_isat)[r7], r9
	movhi HIGHW1(#_f4_iq_inv1_ref), r0, r7
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 750
	mulf.s r6, r2, r6
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 751
	ld.w LOWW(#_f4_iq_inv1_ref)[r7], r10
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 750
	addf.s r6, r5, r7
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 753
	movhi HIGHW1(#_f4_id_inv1_ad), r0, r6
	ld.w LOWW(#_f4_id_inv1_ad)[r6], r11
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 751
	mulf.s r10, r9, r6
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 754
	movhi HIGHW1(#_f4_iq_inv1_ad), r0, r10
	ld.w LOWW(#_f4_iq_inv1_ad)[r10], r10
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 753
	mulf.s r11, r2, r11
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 754
	mulf.s r10, r9, r10
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 750
	st.w r7, LOWW(#_f4_fai_d_inv1_ref)[r8]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 751
	movhi HIGHW1(#_f4_fai_q_inv1_ref), r0, r8
	st.w r6, LOWW(#_f4_fai_q_inv1_ref)[r8]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 753
	movhi HIGHW1(#_f4_fai_d_inv1_ad), r0, r8
	mov 0x00000000, r20
	addf.s r11, r5, r11
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 760
	cmpf.s 0x00000003, r7, r20
	trfsr 0
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 753
	st.w r11, LOWW(#_f4_fai_d_inv1_ad)[r8]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 756
	movhi HIGHW1(#_f4_id_inv1_ad_ave), r0, r11
	ld.w LOWW(#_f4_id_inv1_ad_ave)[r11], r11
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 754
	movhi HIGHW1(#_f4_fai_q_inv1_ad), r0, r8
	st.w r10, LOWW(#_f4_fai_q_inv1_ad)[r8]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 757
	movhi HIGHW1(#_f4_iq_inv1_ad_ave), r0, r10
	ld.w LOWW(#_f4_iq_inv1_ad_ave)[r10], r10
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 756
	mulf.s r11, r2, r2
	movhi HIGHW1(#_f4_fai_d_inv1_ad_ave), r0, r8
	addf.s r2, r5, r2
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 757
	mulf.s r10, r9, r5
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 756
	st.w r2, LOWW(#_f4_fai_d_inv1_ad_ave)[r8]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 757
	movhi HIGHW1(#_f4_fai_q_inv1_ad_ave), r0, r2
	st.w r5, LOWW(#_f4_fai_q_inv1_ad_ave)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 760
	bz9 .BB.LABEL.1_75
.BB.LABEL.1_74:	; bb632
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 762
	jarl _atan2f, r31
	br9 .BB.LABEL.1_77
.BB.LABEL.1_75:	; bb632.thread
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 0
	mov 0x00000000, r2
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 767
	cmpf.s 0x00000007, r6, r2
	mov 0x3FC90FDB, r10
	trfsr 0
	bnz9 .BB.LABEL.1_77
.BB.LABEL.1_76:	; if_else_bb647
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 0
	mov 0xBFC90FDB, r10
.BB.LABEL.1_77:	; if_break_bb649
	movhi HIGHW1(#_f4_wt_inv1_faicd), r0, r21
	st.w r10, LOWW(#_f4_wt_inv1_faicd)[r21]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 779
	mov r10, r6
	jarl _sinf, r31
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 780
	ld.w LOWW(#_f4_wt_inv1_faicd)[r21], r6
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 779
	movhi HIGHW1(#_f4_sin_inv1_wtcd), r0, r21
	st.w r10, LOWW(#_f4_sin_inv1_wtcd)[r21]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 780
	jarl _cosf, r31
	movhi HIGHW1(#_f4_cos_inv1_wtcd), r0, r5
	st.w r10, LOWW(#_f4_cos_inv1_wtcd)[r5]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 783
	movhi HIGHW1(#_f4_fai_q_inv1_ref), r0, r5
	movhi HIGHW1(#_f4_fai_d_inv1_ref), r0, r6
	ld.w LOWW(#_f4_sin_inv1_wtcd)[r21], r2
	movhi HIGHW1(#_f4_fai_gamma_inv1_ref), r0, r7
	ld.w LOWW(#_f4_fai_q_inv1_ref)[r5], r5
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 788
	movhi HIGHW1(#_f4_fai_q_inv1_ad), r0, r9
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 783
	ld.w LOWW(#_f4_fai_d_inv1_ref)[r6], r6
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 785
	movhi HIGHW1(#_f4_fai_delta_inv1_ref), r0, r8
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 788
	ld.w LOWW(#_f4_fai_q_inv1_ad)[r9], r9
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 793
	movhi HIGHW1(#_f4_fai_q_inv1_ad_ave), r0, r13
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 783
	mulf.s r5, r2, r11
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 793
	ld.w LOWW(#_f4_fai_q_inv1_ad_ave)[r13], r13
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 783
	mulf.s r6, r10, r12
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 785
	mulf.s r6, r2, r6
	mulf.s r5, r10, r5
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 783
	addf.s r11, r12, r11
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 790
	movhi HIGHW1(#_f4_fai_delta_inv1_ad), r0, r12
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 785
	subf.s r6, r5, r5
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 788
	mulf.s r9, r2, r6
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 790
	mulf.s r9, r10, r9
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 783
	st.w r11, LOWW(#_f4_fai_gamma_inv1_ref)[r7]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 788
	movhi HIGHW1(#_f4_fai_d_inv1_ad), r0, r7
	ld.w LOWW(#_f4_fai_d_inv1_ad)[r7], r7
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 785
	st.w r5, LOWW(#_f4_fai_delta_inv1_ref)[r8]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 788
	movhi HIGHW1(#_f4_fai_gamma_inv1_ad), r0, r8
	mulf.s r7, r10, r14
	addf.s r6, r14, r6
	st.w r6, 0x0000000C[r3]
	st.w r6, LOWW(#_f4_fai_gamma_inv1_ad)[r8]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 790
	mulf.s r7, r2, r6
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 793
	movhi HIGHW1(#_f4_fai_d_inv1_ad_ave), r0, r7
	ld.w LOWW(#_f4_fai_d_inv1_ad_ave)[r7], r7
	movhi HIGHW1(#_f4_fai_gamma_inv1_ad_ave), r0, r8
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 790
	subf.s r6, r9, r6
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 795
	mulf.s r13, r10, r9
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 793
	mulf.s r7, r10, r10
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 790
	st.w r6, 0x00000008[r3]
	st.w r6, LOWW(#_f4_fai_delta_inv1_ad)[r12]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 793
	mulf.s r13, r2, r6
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 795
	mulf.s r7, r2, r2
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 802
	movhi HIGHW1(#_f4_lev_m_kp_inv1_idq_ctrl_min), r0, r13
	movhi HIGHW1(#_f4_lev_m_kp_inv1_idq_ctrl_max), r0, r7
	ld.w LOWW(#_f4_lev_m_kp_inv1_idq_ctrl_min)[r13], r13
	ld.w LOWW(#_f4_lev_m_kp_inv1_idq_ctrl_max)[r7], r7
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 795
	movhi HIGHW1(#_f4_fai_delta_inv1_ad_ave), r0, r12
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 793
	addf.s r6, r10, r6
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 795
	subf.s r2, r9, r2
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 793
	st.w r6, LOWW(#_f4_fai_gamma_inv1_ad_ave)[r8]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 802
	subf.s r7, r13, r8
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 795
	st.w r2, LOWW(#_f4_fai_delta_inv1_ad_ave)[r12]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 803
	cmpf.s 0x00000007, r8, r20
	trfsr 0
	bz9 .BB.LABEL.1_79
.BB.LABEL.1_78:	; if_then_bb706
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 805
	movhi HIGHW1(#_f4_kp_inv1_idq_ctrl_min), r0, r9
	movhi HIGHW1(#_f4_kp_inv1_idq_ctrl_max), r0, r10
	ld.w LOWW(#_f4_kp_inv1_idq_ctrl_min)[r9], r9
	movhi HIGHW1(#_f4_a_kp_inv1_idq_cmp), r0, r12
	ld.w LOWW(#_f4_kp_inv1_idq_ctrl_max)[r10], r10
	subf.s r10, r9, r9
	divf.s r8, r9, r8
	st.w r8, LOWW(#_f4_a_kp_inv1_idq_cmp)[r12]
.BB.LABEL.1_79:	; if_break_bb713
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 809
	movhi HIGHW1(#_f4_a_kp_inv1_idq_cmp), r0, r8
	ld.w LOWW(#_f4_a_kp_inv1_idq_cmp)[r8], r8
	movhi HIGHW1(#_f4_kp_inv1_idq_ctrl_max), r0, r9
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 812
	movhi HIGHW1(#_f4_m_inv1_lpf), r0, r12
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 809
	ld.w LOWW(#_f4_kp_inv1_idq_ctrl_max)[r9], r9
	movhi HIGHW1(#_f4_b_kp_inv1_idq_cmp), r0, r10
	mulf.s r7, r8, r13
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 812
	ld.w LOWW(#_f4_m_inv1_lpf)[r12], r12
	cmpf.s 0x00000005, r7, r12
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 809
	subf.s r13, r9, r13
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 812
	trfsr 0
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 809
	st.w r13, LOWW(#_f4_b_kp_inv1_idq_cmp)[r10]
	bnz9 .BB.LABEL.1_82
.BB.LABEL.1_80:	; if_else_bb726
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 818
	mulf.s r12, r8, r7
	addf.s r13, r7, r7
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 819
	cmpf.s 0x00000004, r9, r7
	trfsr 0
	bz9 .BB.LABEL.1_82
.BB.LABEL.1_81:	; bb738
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 0
	movhi HIGHW1(#_f4_kp_inv1_idq_ctrl_min), r0, r9
	ld.w LOWW(#_f4_kp_inv1_idq_ctrl_min)[r9], r9
	cmpf.s 0x00000004, r7, r9
	cmovf.s 0, r9, r7, r9
.BB.LABEL.1_82:	; if_break_bb755
	movhi HIGHW1(#_f4_kp_inv1_idq_cmp), r0, r7
	st.w r9, LOWW(#_f4_kp_inv1_idq_cmp)[r7]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 823
	movhi HIGHW1(#_f4_lev_m_ki_inv1_idq_ctrl_min), r0, r7
	movhi HIGHW1(#_f4_lev_m_ki_inv1_idq_ctrl_max), r0, r8
	ld.w LOWW(#_f4_lev_m_ki_inv1_idq_ctrl_min)[r7], r7
	ld.w LOWW(#_f4_lev_m_ki_inv1_idq_ctrl_max)[r8], r8
	subf.s r8, r7, r7
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 824
	cmpf.s 0x00000007, r7, r20
	trfsr 0
	bz9 .BB.LABEL.1_84
.BB.LABEL.1_83:	; if_then_bb763
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 826
	movhi HIGHW1(#_f4_ki_inv1_idq_ctrl_min), r0, r10
	movhi HIGHW1(#_f4_ki_inv1_idq_ctrl_max), r0, r13
	ld.w LOWW(#_f4_ki_inv1_idq_ctrl_min)[r10], r10
	movhi HIGHW1(#_f4_a_ki_inv1_idq_cmp), r0, r14
	ld.w LOWW(#_f4_ki_inv1_idq_ctrl_max)[r13], r13
	subf.s r13, r10, r10
	divf.s r7, r10, r7
	st.w r7, LOWW(#_f4_a_ki_inv1_idq_cmp)[r14]
.BB.LABEL.1_84:	; if_break_bb770
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 830
	movhi HIGHW1(#_f4_a_ki_inv1_idq_cmp), r0, r7
	ld.w LOWW(#_f4_a_ki_inv1_idq_cmp)[r7], r7
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 833
	cmpf.s 0x00000005, r8, r12
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 830
	movhi HIGHW1(#_f4_ki_inv1_idq_ctrl_max), r0, r10
	ld.w LOWW(#_f4_ki_inv1_idq_ctrl_max)[r10], r10
	movhi HIGHW1(#_f4_b_ki_inv1_idq_cmp), r0, r13
	mulf.s r8, r7, r8
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 833
	trfsr 0
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 830
	subf.s r8, r10, r8
	st.w r8, LOWW(#_f4_b_ki_inv1_idq_cmp)[r13]
	bnz9 .BB.LABEL.1_87
.BB.LABEL.1_85:	; if_else_bb783
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 839
	mulf.s r12, r7, r7
	addf.s r8, r7, r7
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 840
	cmpf.s 0x00000004, r10, r7
	trfsr 0
	bz9 .BB.LABEL.1_87
.BB.LABEL.1_86:	; bb795
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 0
	movhi HIGHW1(#_f4_ki_inv1_idq_ctrl_min), r0, r10
	ld.w LOWW(#_f4_ki_inv1_idq_ctrl_min)[r10], r10
	cmpf.s 0x00000004, r7, r10
	cmovf.s 0, r10, r7, r10
.BB.LABEL.1_87:	; if_break_bb812
	movhi HIGHW1(#_f4_ki_inv1_idq_cmp), r0, r7
	st.w r10, LOWW(#_f4_ki_inv1_idq_cmp)[r7]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 844
	movhi HIGHW1(#_f4_ld_inv1_isat), r0, r7
	movhi HIGHW1(#_f4_fs_inv1_ctrl), r0, r8
	ld.w LOWW(#_f4_ld_inv1_isat)[r7], r7
	movhi HIGHW1(#_f4_dk_inv1_modu_kp), r0, r14
	ld.w LOWW(#_f4_fs_inv1_ctrl)[r8], r13
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 845
	movhi HIGHW1(#_f4_dk_inv1_modu_ki), r0, r16
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 844
	ld.w LOWW(#_f4_dk_inv1_modu_kp)[r14], r14
	movhi HIGHW1(#_f4_kp_inv1_idctrl), r0, r15
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 845
	ld.w LOWW(#_f4_dk_inv1_modu_ki)[r16], r16
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 847
	movhi HIGHW1(#_f4_kp_inv1_iqctrl), r0, r17
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 844
	mulf.s r13, r7, r7
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 847
	ld.w LOWW(#_f4_fs_inv1_ctrl)[r8], r8
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 852
	movhi HIGHW1(#_f4_lev_m_kp_inv1_fai_ctrl_min), r0, r19
	movhi HIGHW1(#_f4_lev_m_kp_inv1_fai_ctrl_max), r0, r21
	ld.w LOWW(#_f4_lev_m_kp_inv1_fai_ctrl_min)[r19], r19
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 848
	movhi HIGHW1(#_f4_ki_inv1_iqctrl), r0, r18
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 852
	ld.w LOWW(#_f4_lev_m_kp_inv1_fai_ctrl_max)[r21], r21
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 844
	mulf.s r9, r7, r7
	mulf.s r14, r7, r7
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 845
	mulf.s r10, r7, r13
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 844
	st.w r7, LOWW(#_f4_kp_inv1_idctrl)[r15]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 845
	movhi HIGHW1(#_f4_ki_inv1_idctrl), r0, r15
	mulf.s r16, r13, r13
	st.w r13, LOWW(#_f4_ki_inv1_idctrl)[r15]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 847
	movhi HIGHW1(#_f4_lq_inv1_isat), r0, r15
	ld.w LOWW(#_f4_lq_inv1_isat)[r15], r15
	mulf.s r8, r15, r8
	mulf.s r9, r8, r8
	mulf.s r14, r8, r8
	st.w r8, 0x00000000[r3]
	st.w r8, LOWW(#_f4_kp_inv1_iqctrl)[r17]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 848
	mulf.s r10, r8, r8
	mulf.s r16, r8, r8
	st.w r8, 0x00000004[r3]
	st.w r8, LOWW(#_f4_ki_inv1_iqctrl)[r18]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 852
	subf.s r21, r19, r8
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 853
	cmpf.s 0x00000007, r8, r20
	trfsr 0
	bz9 .BB.LABEL.1_89
.BB.LABEL.1_88:	; if_then_bb844
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 855
	movhi HIGHW1(#_f4_kp_inv1_fai_ctrl_min), r0, r15
	movhi HIGHW1(#_f4_kp_inv1_fai_ctrl_max), r0, r17
	ld.w LOWW(#_f4_kp_inv1_fai_ctrl_min)[r15], r15
	movhi HIGHW1(#_f4_a_kp_inv1_fai_cmp), r0, r18
	ld.w LOWW(#_f4_kp_inv1_fai_ctrl_max)[r17], r17
	subf.s r17, r15, r15
	divf.s r8, r15, r8
	st.w r8, LOWW(#_f4_a_kp_inv1_fai_cmp)[r18]
.BB.LABEL.1_89:	; if_break_bb851
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 859
	movhi HIGHW1(#_f4_a_kp_inv1_fai_cmp), r0, r8
	ld.w LOWW(#_f4_a_kp_inv1_fai_cmp)[r8], r8
	movhi HIGHW1(#_f4_kp_inv1_fai_ctrl_max), r0, r15
	ld.w LOWW(#_f4_kp_inv1_fai_ctrl_max)[r15], r15
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 862
	cmpf.s 0x00000005, r21, r12
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 859
	movhi HIGHW1(#_f4_b_kp_inv1_fai_cmp), r0, r17
	mulf.s r21, r8, r18
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 862
	trfsr 0
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 859
	subf.s r18, r15, r18
	st.w r18, LOWW(#_f4_b_kp_inv1_fai_cmp)[r17]
	bnz9 .BB.LABEL.1_92
.BB.LABEL.1_90:	; if_else_bb864
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 868
	mulf.s r12, r8, r8
	addf.s r18, r8, r8
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 869
	cmpf.s 0x00000004, r15, r8
	trfsr 0
	bz9 .BB.LABEL.1_92
.BB.LABEL.1_91:	; bb876
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 0
	movhi HIGHW1(#_f4_kp_inv1_fai_ctrl_min), r0, r15
	ld.w LOWW(#_f4_kp_inv1_fai_ctrl_min)[r15], r15
	cmpf.s 0x00000004, r8, r15
	cmovf.s 0, r15, r8, r15
.BB.LABEL.1_92:	; if_break_bb893
	movhi HIGHW1(#_f4_kp_inv1_fai_cmp), r0, r8
	st.w r15, LOWW(#_f4_kp_inv1_fai_cmp)[r8]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 873
	movhi HIGHW1(#_f4_lev_m_ki_inv1_fai_ctrl_min), r0, r8
	movhi HIGHW1(#_f4_lev_m_ki_inv1_fai_ctrl_max), r0, r17
	ld.w LOWW(#_f4_lev_m_ki_inv1_fai_ctrl_min)[r8], r8
	ld.w LOWW(#_f4_lev_m_ki_inv1_fai_ctrl_max)[r17], r17
	subf.s r17, r8, r8
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 874
	cmpf.s 0x00000007, r8, r20
	trfsr 0
	bz9 .BB.LABEL.1_94
.BB.LABEL.1_93:	; if_then_bb901
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 876
	movhi HIGHW1(#_f4_ki_inv1_fai_ctrl_min), r0, r18
	movhi HIGHW1(#_f4_ki_inv1_fai_ctrl_max), r0, r19
	ld.w LOWW(#_f4_ki_inv1_fai_ctrl_min)[r18], r18
	movhi HIGHW1(#_f4_a_ki_inv1_fai_cmp), r0, r21
	ld.w LOWW(#_f4_ki_inv1_fai_ctrl_max)[r19], r19
	subf.s r19, r18, r18
	divf.s r8, r18, r8
	st.w r8, LOWW(#_f4_a_ki_inv1_fai_cmp)[r21]
.BB.LABEL.1_94:	; if_break_bb908
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 880
	movhi HIGHW1(#_f4_a_ki_inv1_fai_cmp), r0, r8
	ld.w LOWW(#_f4_a_ki_inv1_fai_cmp)[r8], r8
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 883
	cmpf.s 0x00000005, r17, r12
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 880
	movhi HIGHW1(#_f4_ki_inv1_fai_ctrl_max), r0, r18
	ld.w LOWW(#_f4_ki_inv1_fai_ctrl_max)[r18], r18
	movhi HIGHW1(#_f4_b_ki_inv1_fai_cmp), r0, r19
	mulf.s r17, r8, r17
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 883
	trfsr 0
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 880
	subf.s r17, r18, r17
	st.w r17, LOWW(#_f4_b_ki_inv1_fai_cmp)[r19]
	bnz9 .BB.LABEL.1_97
.BB.LABEL.1_95:	; if_else_bb921
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 889
	mulf.s r12, r8, r8
	addf.s r17, r8, r8
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 890
	cmpf.s 0x00000004, r18, r8
	trfsr 0
	bz9 .BB.LABEL.1_97
.BB.LABEL.1_96:	; bb933
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 0
	movhi HIGHW1(#_f4_ki_inv1_fai_ctrl_min), r0, r18
	ld.w LOWW(#_f4_ki_inv1_fai_ctrl_min)[r18], r18
	cmpf.s 0x00000004, r8, r18
	cmovf.s 0, r18, r8, r18
.BB.LABEL.1_97:	; if_break_bb950
	movhi HIGHW1(#_f4_ki_inv1_fai_cmp), r0, r8
	st.w r18, LOWW(#_f4_ki_inv1_fai_cmp)[r8]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 893
	movhi HIGHW1(#_f4_fs_inv1_ctrl), r0, r8
	ld.w LOWW(#_f4_fs_inv1_ctrl)[r8], r8
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 894
	movhi HIGHW1(#_f4_alf_inv1_faictrl_1x), r0, r19
	ld.w LOWW(#_f4_alf_inv1_faictrl_1x)[r19], r19
	movhi 0x00004000, r0, r21
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 893
	movhi HIGHW1(#_f4_w0_inv1_faictrl), r0, r17
	mulf.s r9, r8, r8
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 894
	movhi HIGHW1(#_f4_kp_inv1_faictrl_11), r0, r22
	subf.s r19, r21, r9
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 893
	mulf.s r14, r8, r8
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 894
	mulf.s r9, r8, r9
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 893
	st.w r8, LOWW(#_f4_w0_inv1_faictrl)[r17]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 895
	movhi HIGHW1(#_f4_ki_inv1_faictrl_11), r0, r17
	mulf.s r10, r9, r14
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 894
	st.w r9, LOWW(#_f4_kp_inv1_faictrl_11)[r22]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 895
	st.w r14, LOWW(#_f4_ki_inv1_faictrl_11)[r17]
	movhi 0x00003F80, r0, r17
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 897
	subf.s r19, r17, r17
	movhi HIGHW1(#_f4_wr_inv1_pll_lpf), r0, r19
	ld.w LOWW(#_f4_wr_inv1_pll_lpf)[r19], r19
	mulf.s r8, r17, r17
	trncf.sw r19, r21
	mulf.s r8, r17, r17
	cmp 0x00000000, r21
	bnz9 .BB.LABEL.1_99
.BB.LABEL.1_98:	; if_then_bb980
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 0
	movhi 0x00003F80, r0, r21
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 899
	subf.s r17, r21, r17
	mov r15, r21
	br9 .BB.LABEL.1_100
.BB.LABEL.1_99:	; if_else_bb992
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 903
	mulf.s r19, r19, r21
	divf.s r21, r17, r17
	movhi 0x00003F80, r0, r21
	subf.s r17, r21, r17
	mulf.s r17, r15, r21
	mov r19, r17
.BB.LABEL.1_100:	; if_break_bb1008
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 0
	mulf.s r17, r21, r17
	movhi HIGHW1(#_f4_kp_inv1_faictrl_12), r0, r21
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 905
	movhi HIGHW1(#_f4_ki_inv1_faictrl_12), r0, r22
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 906
	mulf.s r19, r15, r15
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 914
	movhi HIGHW1(#_u1_cnt_idq_inv1_ctrli_delay), r0, r27
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 907
	movhi HIGHW1(#_f4_ki_inv1_faictrl_21), r0, r24
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 914
	ld.bu LOWW(#_u1_cnt_idq_inv1_ctrli_delay)[r27], r27
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 906
	movhi HIGHW1(#_f4_kp_inv1_faictrl_21), r0, r23
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 908
	movhi HIGHW1(#_f4_kp_inv1_faictrl_22), r0, r25
	st.w r17, LOWW(#_f4_kp_inv1_faictrl_12)[r21]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 905
	mulf.s r18, r17, r21
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 909
	movhi HIGHW1(#_f4_ki_inv1_faictrl_22), r0, r26
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 905
	mulf.s r16, r21, r21
	st.w r21, LOWW(#_f4_ki_inv1_faictrl_12)[r22]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 906
	movhi HIGHW1(#_f4_alf_inv1_faictrl_2x), r0, r22
	ld.w LOWW(#_f4_alf_inv1_faictrl_2x)[r22], r22
	mulf.s r22, r15, r15
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 908
	mulf.s r22, r8, r8
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 914
	mov #_f4_id_inv1_ctrliref_array, r22
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 907
	mulf.s r18, r15, r18
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 909
	mulf.s r10, r8, r10
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 906
	st.w r15, LOWW(#_f4_kp_inv1_faictrl_21)[r23]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 914
	mov r22, r23
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 908
	st.w r8, LOWW(#_f4_kp_inv1_faictrl_22)[r25]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 916
	mov #_f4_iq_inv1_ctrliref_array, r25
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 907
	mulf.s r16, r18, r16
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 914
	mov r27, r18
	shl 0x00000002, r18
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 909
	st.w r10, LOWW(#_f4_ki_inv1_faictrl_22)[r26]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 914
	add r18, r23
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 916
	mov r25, r26
	add r18, r26
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 907
	st.w r16, LOWW(#_f4_ki_inv1_faictrl_21)[r24]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 914
	movhi HIGHW1(#_f4_id_inv1_ref), r0, r24
	ld.w LOWW(#_f4_id_inv1_ref)[r24], r24
	st.w r24, 0x00000000[r23]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 916
	movhi HIGHW1(#_f4_iq_inv1_ref), r0, r23
	ld.w LOWW(#_f4_iq_inv1_ref)[r23], r23
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 919
	mov #_f4_fai_gamma_inv1_ctrliref_array, r24
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 916
	st.w r23, 0x00000000[r26]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 919
	mov r24, r23
	add r18, r23
	st.w r11, 0x00000000[r23]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 921
	mov #_f4_fai_delta_inv1_ctrliref_array, r23
	add r23, r18
	st.w r5, 0x00000000[r18]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 924
	movhi HIGHW1(#_u1_flag_inv1_modevctrl), r0, r18
	ld.bu LOWW(#_u1_flag_inv1_modevctrl)[r18], r18
	cmp 0x00000001, r18
	bnz9 .BB.LABEL.1_102
.BB.LABEL.1_101:	; if_then_bb1051
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 926
	movhi HIGHW1(#_u1_flag_status_inv1_idq_ctrl_pwm), r0, r18
	ld.bu LOWW(#_u1_flag_status_inv1_idq_ctrl_pwm)[r18], r18
	cmp 0x00000001, r18
	bnz9 .BB.LABEL.1_103
.BB.LABEL.1_102:	; if_break_bb1065.PartialDrain
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 0
	add 0x00000001, r27
	movhi HIGHW1(#_u1_cnt_idq_inv1_ctrli_delay), r0, r18
	st.b r27, LOWW(#_u1_cnt_idq_inv1_ctrli_delay)[r18]
.BB.LABEL.1_103:	; if_break_bb1065
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 937
	movhi HIGHW1(#_u1_cnt_idq_inv1_ctrli_delay_max), r0, r18
	ld.bu LOWW(#_u1_cnt_idq_inv1_ctrli_delay_max)[r18], r18
	andi 0x000000FF, r27, r26
	cmp r18, r26
	bnh9 .BB.LABEL.1_105
.BB.LABEL.1_104:	; if_then_bb1073
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 939
	movhi HIGHW1(#_u1_cnt_idq_inv1_ctrli_delay), r0, r27
	st.b r0, LOWW(#_u1_cnt_idq_inv1_ctrli_delay)[r27]
	mov 0x00000000, r27
.BB.LABEL.1_105:	; if_break_bb1075
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 943
	andi 0x000000FF, r27, r26
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 945
	mov r25, r29
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 943
	shl 0x00000002, r26
	mov r22, r27
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 945
	add r26, r29
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 943
	add r26, r27
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 945
	ld.w 0x00000000[r29], r29
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 948
	mov r24, r31
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 943
	ld.w 0x00000000[r27], r27
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 945
	movhi HIGHW1(#_f4_iq_inv1_ctrliref), r0, r30
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 948
	add r26, r31
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 943
	movhi HIGHW1(#_f4_id_inv1_ctrliref), r0, r28
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 948
	ld.w 0x00000000[r31], r31
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 950
	add r23, r26
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 945
	st.w r29, LOWW(#_f4_iq_inv1_ctrliref)[r30]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 954
	movhi HIGHW1(#_u1_pwm_inv1_status), r0, r30
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 943
	st.w r27, LOWW(#_f4_id_inv1_ctrliref)[r28]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 948
	movhi HIGHW1(#_f4_fai_gamma_inv1_ctrliref), r0, r28
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 950
	ld.w 0x00000000[r26], r26
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 954
	ld.bu LOWW(#_u1_pwm_inv1_status)[r30], r30
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 948
	st.w r31, LOWW(#_f4_fai_gamma_inv1_ctrliref)[r28]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 950
	movhi HIGHW1(#_f4_fai_delta_inv1_ctrliref), r0, r28
	st.w r26, LOWW(#_f4_fai_delta_inv1_ctrliref)[r28]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 954
	cmp 0x00000001, r30
	bnz17 .BB.LABEL.1_210
.BB.LABEL.1_106:	; if_then_bb1097
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 959
	movhi HIGHW1(#_u1_flag_inv1_modevctrl), r0, r18
	ld.bu LOWW(#_u1_flag_inv1_modevctrl)[r18], r18
	cmp 0x00000001, r18
	bnz9 .BB.LABEL.1_109
.BB.LABEL.1_107:	; if_then_bb1103
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 961
	movhi HIGHW1(#_u1_flag_status_inv1_idq_ctrl_pwm), r0, r18
	ld.bu LOWW(#_u1_flag_status_inv1_idq_ctrl_pwm)[r18], r18
	cmp 0x00000001, r18
	bnz9 .BB.LABEL.1_111
.BB.LABEL.1_108:	; if_then_bb1109
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 963
	movhi HIGHW1(#_f4_id_inv1_ref), r0, r18
	movhi HIGHW1(#_f4_id_inv1_ad_ave), r0, r22
	ld.w LOWW(#_f4_id_inv1_ref)[r18], r18
	movhi HIGHW1(#_f4_id_inv1_ctrlperr), r0, r23
	ld.w LOWW(#_f4_id_inv1_ad_ave)[r22], r22
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 969
	movhi HIGHW1(#_f4_iq_inv1_ref), r0, r25
	movhi HIGHW1(#_f4_iq_inv1_ad_ave), r0, r28
	ld.w LOWW(#_f4_iq_inv1_ref)[r25], r25
	ld.w LOWW(#_f4_iq_inv1_ad_ave)[r28], r28
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 966
	movhi HIGHW1(#_f4_id_inv1_ctrlierr), r0, r24
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 963
	subf.s r22, r18, r18
	st.w r18, LOWW(#_f4_id_inv1_ctrlperr)[r23]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 966
	subf.s r22, r27, r18
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 969
	subf.s r28, r25, r22
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 966
	st.w r18, LOWW(#_f4_id_inv1_ctrlierr)[r24]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 969
	movhi HIGHW1(#_f4_iq_inv1_ctrlperr), r0, r18
	st.w r22, LOWW(#_f4_iq_inv1_ctrlperr)[r18]
	br9 .BB.LABEL.1_110
.BB.LABEL.1_109:	; if_else_bb1136
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 993
	movhi HIGHW1(#_f4_id_inv1_ref), r0, r2
	ld.w LOWW(#_f4_id_inv1_ref)[r2], r2
	movhi HIGHW1(#_f4_id_inv1_ad), r0, r6
	ld.w LOWW(#_f4_id_inv1_ad)[r6], r18
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 996
	ld.w LOWW(#_f4_id_inv1_ad)[r6], r6
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 993
	movhi HIGHW1(#_f4_id_inv1_ctrlperr), r0, r22
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 996
	movhi HIGHW1(#_f4_id_inv1_ctrlierr), r0, r23
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 999
	movhi HIGHW1(#_f4_iq_inv1_ref), r0, r24
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 993
	subf.s r18, r2, r2
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 999
	ld.w LOWW(#_f4_iq_inv1_ref)[r24], r24
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 993
	st.w r2, LOWW(#_f4_id_inv1_ctrlperr)[r22]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 996
	subf.s r6, r27, r2
	st.w r2, LOWW(#_f4_id_inv1_ctrlierr)[r23]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 999
	movhi HIGHW1(#_f4_iq_inv1_ad), r0, r2
	ld.w LOWW(#_f4_iq_inv1_ad)[r2], r6
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1002
	ld.w LOWW(#_f4_iq_inv1_ad)[r2], r28
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 999
	movhi HIGHW1(#_f4_iq_inv1_ctrlperr), r0, r2
	subf.s r6, r24, r6
	st.w r6, LOWW(#_f4_iq_inv1_ctrlperr)[r2]
	ld.w 0x0000000C[r3], r2
	mov r2, r6
	ld.w 0x00000008[r3], r2
.BB.LABEL.1_110:	; if_break_bb1161.PartialDrain
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 0
	subf.s r28, r29, r18
	movhi HIGHW1(#_f4_iq_inv1_ctrlierr), r0, r22
	subf.s r6, r11, r11
	subf.s r2, r5, r5
	st.w r18, LOWW(#_f4_iq_inv1_ctrlierr)[r22]
	movhi HIGHW1(#_f4_fai_gamma_inv1_ctrlperr), r0, r18
	st.w r11, LOWW(#_f4_fai_gamma_inv1_ctrlperr)[r18]
	subf.s r6, r31, r11
	movhi HIGHW1(#_f4_fai_gamma_inv1_ctrlierr), r0, r18
	st.w r11, LOWW(#_f4_fai_gamma_inv1_ctrlierr)[r18]
	movhi HIGHW1(#_f4_fai_delta_inv1_ctrlperr), r0, r11
	st.w r5, LOWW(#_f4_fai_delta_inv1_ctrlperr)[r11]
	subf.s r2, r26, r5
	movhi HIGHW1(#_f4_fai_delta_inv1_ctrlierr), r0, r11
	st.w r5, LOWW(#_f4_fai_delta_inv1_ctrlierr)[r11]
.BB.LABEL.1_111:	; if_break_bb1161
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1022
	movhi HIGHW1(#_u1_flag_inv1_adj), r0, r5
	ld.bu LOWW(#_u1_flag_inv1_adj)[r5], r5
	cmp 0x00000000, r5
	bnz17 .BB.LABEL.1_198
.BB.LABEL.1_112:	; if_then_bb1167
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1024
	movhi HIGHW1(#_u1_flag_inv1_modevctrl), r0, r5
	ld.bu LOWW(#_u1_flag_inv1_modevctrl)[r5], r5
	cmp 0x00000001, r5
	bnz17 .BB.LABEL.1_149
.BB.LABEL.1_113:	; if_then_bb1173
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1026
	movhi HIGHW1(#_u1_flag_status_inv1_idq_ctrl_pwm), r0, r5
	ld.bu LOWW(#_u1_flag_status_inv1_idq_ctrl_pwm)[r5], r5
	cmp 0x00000001, r5
	bnz17 .BB.LABEL.1_218
.BB.LABEL.1_114:	; if_then_bb1179
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1028
	movhi HIGHW1(#_u1_flag_select_inv1_fai_ctrl), r0, r5
	ld.bu LOWW(#_u1_flag_select_inv1_fai_ctrl)[r5], r5
	cmp 0x00000000, r5
	movhi HIGHW1(#_u1_flag_inv1_status_idqctrl), r0, r5
	bnz17 .BB.LABEL.1_136
.BB.LABEL.1_115:	; if_then_bb1185
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1033
	cmpf.s 0x00000004, r20, r19
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1030
	st.b r0, LOWW(#_u1_flag_inv1_status_idqctrl)[r5]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1033
	trfsr 0
	bz9 .BB.LABEL.1_117
.BB.LABEL.1_116:	; if_else_bb1191
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1037
	movhi HIGHW1(#_f4_id_inv1_ctrlperr), r0, r5
	ld.w LOWW(#_f4_id_inv1_ctrlperr)[r5], r7
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1038
	movhi HIGHW1(#_f4_id_inv1_ctrlierr), r0, r8
	ld.w LOWW(#_f4_id_inv1_ctrlierr)[r8], r9
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1037
	negf.s r7, r7
	st.w r7, LOWW(#_f4_id_inv1_ctrlperr)[r5]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1038
	negf.s r9, r5
	st.w r5, LOWW(#_f4_id_inv1_ctrlierr)[r8]
.BB.LABEL.1_117:	; if_break_bb1196
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1041
	movhi HIGHW1(#_f4_id_inv1_ctrlperr), r0, r5
	movhi HIGHW1(#_u4_cnt_idq_inv1_ad_ave), r0, r7
	ld.w LOWW(#_f4_id_inv1_ctrlperr)[r5], r5
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1044
	movhi HIGHW1(#_u1_flag_enable_inv1_kictrl), r0, r9
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1041
	ld.w LOWW(#_u4_cnt_idq_inv1_ad_ave)[r7], r7
	movhi HIGHW1(#_f4_vq_inv1_ctrlp_1pulse), r0, r8
	ld.w 0x00000000[r3], r10
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1044
	ld.bu LOWW(#_u1_flag_enable_inv1_kictrl)[r9], r9
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1041
	cvtf.uws r7, r7
	mulf.s r10, r5, r5
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1044
	cmp 0x00000001, r9
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1041
	divf.s r7, r5, r5
	st.w r5, LOWW(#_f4_vq_inv1_ctrlp_1pulse)[r8]
	bnz9 .BB.LABEL.1_120
.BB.LABEL.1_118:	; if_then_bb1208
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1046
	movhi HIGHW1(#_f4_id_inv1_ctrlierr), r0, r8
	ld.w LOWW(#_f4_id_inv1_ctrlierr)[r8], r8
	movhi HIGHW1(#_f4_vq_inv1_ctrli_1pulse), r0, r10
	ld.w LOWW(#_f4_vq_inv1_ctrli_1pulse)[r10], r10
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1047
	movhi HIGHW1(#_f4_vdq_inv1_ctrl_max), r0, r11
	ld.w LOWW(#_f4_vdq_inv1_ctrl_max)[r11], r20
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1046
	mulf.s r8, r13, r8
	divf.s r7, r8, r8
	addf.s r8, r10, r8
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1047
	cmpf.s 0x00000007, r8, r20
	trfsr 0
	bnz9 .BB.LABEL.1_120
.BB.LABEL.1_119:	; bb1223
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 0
	negf.s r20, r20
	cmpf.s 0x00000004, r8, r20
	trfsr 0
	cmov 0x0000000A, r8, r20, r20
.BB.LABEL.1_120:	; if_break_bb1243
	movhi HIGHW1(#_f4_vq_inv1_ctrli_1pulse), r0, r8
	st.w r20, LOWW(#_f4_vq_inv1_ctrli_1pulse)[r8]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1056
	addf.s r20, r5, r8
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1057
	movhi HIGHW1(#_f4_vdq_inv1_ctrl_max), r0, r10
	ld.w LOWW(#_f4_vdq_inv1_ctrl_max)[r10], r10
	cmpf.s 0x00000007, r8, r10
	trfsr 0
	cmov 0x0000000A, r10, r8, r8
	bnz9 .BB.LABEL.1_123
.BB.LABEL.1_121:	; bb1253
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 0
	negf.s r10, r11
	cmpf.s 0x00000004, r8, r11
	trfsr 0
	bnz9 .BB.LABEL.1_123
.BB.LABEL.1_122:	; bb1259
	mov r11, r8
.BB.LABEL.1_123:	; bb1269
	movhi HIGHW1(#_f4_vq_inv1_ctrl_1pulse), r0, r11
	st.w r8, LOWW(#_f4_vq_inv1_ctrl_1pulse)[r11]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1060
	movhi HIGHW1(#_f4_vq_inv1_ref), r0, r11
	ld.w LOWW(#_f4_vq_inv1_ref)[r11], r11
	mov 0x00000000, r12
	cmpf.s 0x00000007, r11, r12
	trfsr 0
	bz9 .BB.LABEL.1_125
.BB.LABEL.1_124:	; if_then_bb1276
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1062
	cmpf.s 0x00000004, r12, r8
	trfsr 0
	bz9 .BB.LABEL.1_126
	br9 .BB.LABEL.1_127
.BB.LABEL.1_125:	; if_else_bb1286
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 0
	mov 0x00000000, r11
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1071
	cmpf.s 0x00000007, r11, r8
	trfsr 0
	bz9 .BB.LABEL.1_127
.BB.LABEL.1_126:	; if_break_bb1296.PartialDrain
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 0
	negf.s r5, r5
	movhi HIGHW1(#_f4_vq_inv1_ctrl_1pulse), r0, r8
	st.w r0, LOWW(#_f4_vq_inv1_ctrl_1pulse)[r8]
	movhi HIGHW1(#_f4_vq_inv1_ctrli_1pulse), r0, r8
	st.w r5, LOWW(#_f4_vq_inv1_ctrli_1pulse)[r8]
.BB.LABEL.1_127:	; if_break_bb1296
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1080
	cmpf.s 0x00000007, r19, r12
	trfsr 0
	bz9 .BB.LABEL.1_129
.BB.LABEL.1_128:	; if_then_bb1301
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1082
	movhi HIGHW1(#_f4_iq_inv1_ctrlperr), r0, r5
	ld.w LOWW(#_f4_iq_inv1_ctrlperr)[r5], r8
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1083
	movhi HIGHW1(#_f4_iq_inv1_ctrlierr), r0, r11
	ld.w LOWW(#_f4_iq_inv1_ctrlierr)[r11], r13
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1082
	negf.s r8, r8
	st.w r8, LOWW(#_f4_iq_inv1_ctrlperr)[r5]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1083
	negf.s r13, r5
	st.w r5, LOWW(#_f4_iq_inv1_ctrlierr)[r11]
.BB.LABEL.1_129:	; if_break_bb1307
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1087
	movhi HIGHW1(#_f4_iq_inv1_ctrlperr), r0, r5
	movhi HIGHW1(#_f4_kp_inv1_idctrl), r0, r8
	ld.w LOWW(#_f4_iq_inv1_ctrlperr)[r5], r5
	movhi HIGHW1(#_f4_vd_inv1_ctrlp_1pulse), r0, r11
	ld.w LOWW(#_f4_kp_inv1_idctrl)[r8], r8
	cmp 0x00000001, r9
	mulf.s r8, r5, r5
	divf.s r7, r5, r5
	st.w r5, LOWW(#_f4_vd_inv1_ctrlp_1pulse)[r11]
	bnz9 .BB.LABEL.1_133
.BB.LABEL.1_130:	; if_then_bb1319
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1092
	movhi HIGHW1(#_f4_ki_inv1_idctrl), r0, r12
	movhi HIGHW1(#_f4_iq_inv1_ctrlierr), r0, r8
	ld.w LOWW(#_f4_ki_inv1_idctrl)[r12], r12
	movhi HIGHW1(#_f4_vd_inv1_ctrli_1pulse), r0, r9
	ld.w LOWW(#_f4_iq_inv1_ctrlierr)[r8], r8
	ld.w LOWW(#_f4_vd_inv1_ctrli_1pulse)[r9], r9
	mulf.s r8, r12, r12
	divf.s r7, r12, r12
	addf.s r12, r9, r12
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1093
	cmpf.s 0x00000007, r12, r10
	trfsr 0
	cmov 0x0000000A, r10, r12, r12
	bnz9 .BB.LABEL.1_133
.BB.LABEL.1_131:	; bb1334
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 0
	negf.s r10, r7
	cmpf.s 0x00000004, r12, r7
	trfsr 0
	bnz9 .BB.LABEL.1_133
.BB.LABEL.1_132:	; bb1340
	mov r7, r12
.BB.LABEL.1_133:	; if_break_bb1354
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1102
	addf.s r12, r5, r5
	movhi HIGHW1(#_f4_vd_inv1_ctrli_1pulse), r0, r7
	st.w r12, LOWW(#_f4_vd_inv1_ctrli_1pulse)[r7]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1103
	cmpf.s 0x00000007, r5, r10
	trfsr 0
	bnz9 .BB.LABEL.1_135
.BB.LABEL.1_134:	; bb1364
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 0
	negf.s r10, r10
	cmpf.s 0x00000004, r5, r10
	trfsr 0
	cmov 0x0000000A, r5, r10, r10
.BB.LABEL.1_135:	; bb1380
	movhi HIGHW1(#_f4_vd_inv1_ctrl_1pulse), r0, r5
	st.w r10, LOWW(#_f4_vd_inv1_ctrl_1pulse)[r5]
	jr .BB.LABEL.1_218
.BB.LABEL.1_136:	; if_else_bb1383
	mov 0x00000001, r10
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1110
	st.b r10, LOWW(#_u1_flag_inv1_status_idqctrl)[r5]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1112
	movhi HIGHW1(#_f4_fai_gamma_inv1_ctrlperr), r0, r5
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1113
	movhi HIGHW1(#_f4_fai_delta_inv1_ctrlperr), r0, r10
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1112
	ld.w LOWW(#_f4_fai_gamma_inv1_ctrlperr)[r5], r5
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1115
	movhi HIGHW1(#_u1_flag_enable_inv1_kictrl), r0, r12
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1113
	ld.w LOWW(#_f4_fai_delta_inv1_ctrlperr)[r10], r10
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1114
	movhi HIGHW1(#_f4_v_gamma_inv1_ctrlp_1pulse), r0, r11
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1115
	ld.bu LOWW(#_u1_flag_enable_inv1_kictrl)[r12], r12
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1112
	mulf.s r5, r9, r9
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1113
	mulf.s r10, r17, r13
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1115
	cmp 0x00000001, r12
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1114
	addf.s r13, r9, r9
	st.w r9, LOWW(#_f4_v_gamma_inv1_ctrlp_1pulse)[r11]
	mov 0x00000000, r11
	bnz9 .BB.LABEL.1_138
.BB.LABEL.1_137:	; if_then_bb1398
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1117
	movhi HIGHW1(#_f4_fai_delta_inv1_ctrlierr), r0, r11
	movhi HIGHW1(#_u4_cnt_idq_inv1_ad_ave), r0, r13
	ld.w LOWW(#_f4_fai_delta_inv1_ctrlierr)[r11], r11
	movhi HIGHW1(#_f4_v_gamma_inv1_ctrli_1pulse), r0, r14
	ld.w LOWW(#_u4_cnt_idq_inv1_ad_ave)[r13], r13
	ld.w LOWW(#_f4_v_gamma_inv1_ctrli_1pulse)[r14], r14
	mulf.s r21, r11, r11
	cvtf.uws r13, r13
	mulf.s r13, r11, r11
	subf.s r11, r14, r11
.BB.LABEL.1_138:	; if_break_bb1409
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1126
	mulf.s r10, r8, r8
	movhi HIGHW1(#_f4_v_gamma_inv1_ctrli_1pulse), r0, r13
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1125
	mulf.s r15, r5, r5
	st.w r11, LOWW(#_f4_v_gamma_inv1_ctrli_1pulse)[r13]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1123
	addf.s r11, r9, r9
	movhi HIGHW1(#_f4_v_gamma_inv1_ctrl_1pulse), r0, r11
	cmp 0x00000001, r12
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1127
	subf.s r5, r8, r5
	movhi HIGHW1(#_f4_v_delta_inv1_ctrlp_1pulse), r0, r8
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1123
	st.w r9, LOWW(#_f4_v_gamma_inv1_ctrl_1pulse)[r11]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1127
	st.w r5, LOWW(#_f4_v_delta_inv1_ctrlp_1pulse)[r8]
	mov 0x00000000, r8
	bnz9 .BB.LABEL.1_140
.BB.LABEL.1_139:	; if_then_bb1428
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1130
	movhi HIGHW1(#_f4_fai_gamma_inv1_ctrlierr), r0, r8
	movhi HIGHW1(#_u4_cnt_idq_inv1_ad_ave), r0, r10
	ld.w LOWW(#_f4_fai_gamma_inv1_ctrlierr)[r8], r8
	movhi HIGHW1(#_f4_v_delta_inv1_ctrli_1pulse), r0, r11
	ld.w LOWW(#_u4_cnt_idq_inv1_ad_ave)[r10], r10
	ld.w LOWW(#_f4_v_delta_inv1_ctrli_1pulse)[r11], r11
	mulf.s r8, r16, r8
	cvtf.uws r10, r10
	mulf.s r10, r8, r8
	addf.s r8, r11, r8
.BB.LABEL.1_140:	; if_break_bb1438
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 0
	movhi HIGHW1(#_f4_v_delta_inv1_ctrli_1pulse), r0, r10
	st.w r8, LOWW(#_f4_v_delta_inv1_ctrli_1pulse)[r10]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1136
	addf.s r8, r5, r8
	movhi HIGHW1(#_f4_v_delta_inv1_ctrl_1pulse), r0, r10
	mov 0x00000000, r11
	st.w r8, LOWW(#_f4_v_delta_inv1_ctrl_1pulse)[r10]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1138
	movhi HIGHW1(#_f4_v_delta_inv1_ref), r0, r10
	ld.w LOWW(#_f4_v_delta_inv1_ref)[r10], r10
	cmpf.s 0x00000007, r10, r11
	trfsr 0
	bz9 .BB.LABEL.1_142
.BB.LABEL.1_141:	; if_then_bb1446
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1140
	cmpf.s 0x00000004, r11, r8
	trfsr 0
	bz9 .BB.LABEL.1_143
	br9 .BB.LABEL.1_144
.BB.LABEL.1_142:	; if_else_bb1456
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 0
	mov 0x00000000, r10
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1149
	cmpf.s 0x00000007, r10, r8
	trfsr 0
	bz9 .BB.LABEL.1_144
.BB.LABEL.1_143:	; if_break_bb1466.PartialDrain
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 0
	movhi HIGHW1(#_f4_v_delta_inv1_ctrl_1pulse), r0, r8
	st.w r0, LOWW(#_f4_v_delta_inv1_ctrl_1pulse)[r8]
	negf.s r5, r8
	movhi HIGHW1(#_f4_v_delta_inv1_ctrli_1pulse), r0, r5
	st.w r8, LOWW(#_f4_v_delta_inv1_ctrli_1pulse)[r5]
	mov r11, r8
.BB.LABEL.1_144:	; if_break_bb1466
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1158
	movhi HIGHW1(#_f4_cos_inv1_wtcd), r0, r5
	ld.w LOWW(#_f4_cos_inv1_wtcd)[r5], r5
	movhi HIGHW1(#_f4_sin_inv1_wtcd), r0, r10
	ld.w LOWW(#_f4_sin_inv1_wtcd)[r10], r10
	mov 0x00000000, r13
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1163
	cmpf.s 0x00000004, r13, r19
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1158
	mulf.s r9, r5, r14
	movhi HIGHW1(#_f4_vd_inv1_ctrl_1pulse), r0, r11
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1160
	mulf.s r8, r5, r5
	movhi HIGHW1(#_f4_vq_inv1_ctrl_1pulse), r0, r12
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1158
	mulf.s r8, r10, r8
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1160
	mulf.s r9, r10, r9
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1163
	trfsr 0
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1158
	subf.s r8, r14, r8
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1160
	addf.s r5, r9, r5
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1158
	st.w r8, LOWW(#_f4_vd_inv1_ctrl_1pulse)[r11]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1160
	st.w r5, LOWW(#_f4_vq_inv1_ctrl_1pulse)[r12]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1163
	bz9 .BB.LABEL.1_146
.BB.LABEL.1_145:	; if_else_bb1486
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1167
	movhi HIGHW1(#_f4_id_inv1_ctrlperr), r0, r9
	ld.w LOWW(#_f4_id_inv1_ctrlperr)[r9], r10
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1168
	movhi HIGHW1(#_f4_id_inv1_ctrlierr), r0, r11
	ld.w LOWW(#_f4_id_inv1_ctrlierr)[r11], r12
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1167
	negf.s r10, r10
	st.w r10, LOWW(#_f4_id_inv1_ctrlperr)[r9]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1168
	negf.s r12, r9
	st.w r9, LOWW(#_f4_id_inv1_ctrlierr)[r11]
.BB.LABEL.1_146:	; if_break_bb1491
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1171
	movhi HIGHW1(#_f4_id_inv1_ctrlperr), r0, r9
	movhi HIGHW1(#_u4_cnt_idq_inv1_ad_ave), r0, r10
	ld.w LOWW(#_f4_id_inv1_ctrlperr)[r9], r9
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1174
	cmpf.s 0x00000007, r19, r13
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1171
	ld.w LOWW(#_u4_cnt_idq_inv1_ad_ave)[r10], r10
	movhi HIGHW1(#_f4_vq_inv1_ctrlp_1pulse), r0, r11
	ld.w 0x00000000[r3], r12
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1174
	trfsr 0
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1171
	mulf.s r12, r9, r9
	cvtf.uws r10, r10
	divf.s r10, r9, r9
	st.w r9, LOWW(#_f4_vq_inv1_ctrlp_1pulse)[r11]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1174
	bz9 .BB.LABEL.1_148
.BB.LABEL.1_147:	; if_then_bb1502
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1176
	movhi HIGHW1(#_f4_iq_inv1_ctrlperr), r0, r11
	ld.w LOWW(#_f4_iq_inv1_ctrlperr)[r11], r12
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1177
	movhi HIGHW1(#_f4_iq_inv1_ctrlierr), r0, r13
	ld.w LOWW(#_f4_iq_inv1_ctrlierr)[r13], r14
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1176
	negf.s r12, r12
	st.w r12, LOWW(#_f4_iq_inv1_ctrlperr)[r11]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1177
	negf.s r14, r11
	st.w r11, LOWW(#_f4_iq_inv1_ctrlierr)[r13]
.BB.LABEL.1_148:	; if_break_bb1508
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1185
	subf.s r9, r5, r5
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1181
	movhi HIGHW1(#_f4_iq_inv1_ctrlperr), r0, r11
	ld.w LOWW(#_f4_iq_inv1_ctrlperr)[r11], r11
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1185
	movhi HIGHW1(#_f4_vq_inv1_ctrli_1pulse), r0, r9
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1181
	movhi HIGHW1(#_f4_vd_inv1_ctrlp_1pulse), r0, r12
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1184
	movhi HIGHW1(#_f4_vd_inv1_ctrli_1pulse), r0, r13
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1185
	st.w r5, LOWW(#_f4_vq_inv1_ctrli_1pulse)[r9]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1181
	mulf.s r7, r11, r5
	divf.s r10, r5, r5
	st.w r5, LOWW(#_f4_vd_inv1_ctrlp_1pulse)[r12]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1184
	subf.s r5, r8, r5
	st.w r5, LOWW(#_f4_vd_inv1_ctrli_1pulse)[r13]
	jr .BB.LABEL.1_218
.BB.LABEL.1_149:	; if_else_bb1524
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1194
	movhi HIGHW1(#_u1_flag_inv1_status_idqctrl_hys), r0, r5
	ld.bu LOWW(#_u1_flag_inv1_status_idqctrl_hys)[r5], r5
	movhi HIGHW1(#_f4_lev_m_inv1_idq_ctrl), r0, r11
	ld.w LOWW(#_f4_lev_m_inv1_idq_ctrl)[r11], r11
	cmp 0x00000000, r5
	bnz9 .BB.LABEL.1_151
.BB.LABEL.1_150:	; if_then_bb1530
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1196
	movhi HIGHW1(#_f4_lev_m_inv1_idq_ctrl_hys), r0, r18
	ld.w LOWW(#_f4_lev_m_inv1_idq_ctrl_hys)[r18], r18
	addf.s r18, r11, r11
	cmpf.s 0x00000004, r11, r12
	trfsr 0
	cmov 0x00000002, 0x00000001, r5, r5
	bz9 .BB.LABEL.1_153
	br9 .BB.LABEL.1_154
.BB.LABEL.1_151:	; if_else_bb1541
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1207
	cmpf.s 0x00000004, r11, r12
	trfsr 0
	bz9 .BB.LABEL.1_154
.BB.LABEL.1_152:	; if_else_bb1541.if_break_bb1550.PartialDrain_crit_edge
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 0
	mov 0x00000000, r5
.BB.LABEL.1_153:	; if_break_bb1550.PartialDrain
	movhi HIGHW1(#_u1_flag_inv1_status_idqctrl_hys), r0, r11
	st.b r5, LOWW(#_u1_flag_inv1_status_idqctrl_hys)[r11]
.BB.LABEL.1_154:	; if_break_bb1550
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1218
	cmp 0x00000001, r5
	movhi HIGHW1(#_u1_flag_select_inv1_fai_ctrl), r0, r5
	ld.bu LOWW(#_u1_flag_select_inv1_fai_ctrl)[r5], r5
	bnz17 .BB.LABEL.1_179
.BB.LABEL.1_155:	; if_then_bb1556
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1220
	cmp 0x00000000, r5
	movhi HIGHW1(#_u1_flag_inv1_status_idqctrl), r0, r5
	bnz17 .BB.LABEL.1_174
.BB.LABEL.1_156:	; if_then_bb1562
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 0
	mov 0x00000002, r10
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1222
	st.b r10, LOWW(#_u1_flag_inv1_status_idqctrl)[r5]
	mov 0x00000000, r5
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1225
	cmpf.s 0x00000004, r5, r19
	trfsr 0
	bz9 .BB.LABEL.1_158
.BB.LABEL.1_157:	; if_else_bb1568
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1229
	movhi HIGHW1(#_f4_id_inv1_ctrlperr), r0, r10
	ld.w LOWW(#_f4_id_inv1_ctrlperr)[r10], r11
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1230
	movhi HIGHW1(#_f4_id_inv1_ctrlierr), r0, r14
	ld.w LOWW(#_f4_id_inv1_ctrlierr)[r14], r16
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1229
	negf.s r11, r11
	st.w r11, LOWW(#_f4_id_inv1_ctrlperr)[r10]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1230
	negf.s r16, r10
	st.w r10, LOWW(#_f4_id_inv1_ctrlierr)[r14]
.BB.LABEL.1_158:	; if_break_bb1573
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1233
	movhi HIGHW1(#_f4_id_inv1_ctrlperr), r0, r10
	ld.w LOWW(#_f4_id_inv1_ctrlperr)[r10], r10
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1236
	movhi HIGHW1(#_u1_flag_enable_inv1_kictrl), r0, r14
	ld.bu LOWW(#_u1_flag_enable_inv1_kictrl)[r14], r14
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1233
	movhi HIGHW1(#_f4_vq_inv1_ctrlp), r0, r11
	mulf.s r7, r10, r7
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1236
	cmp 0x00000001, r14
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1233
	st.w r7, LOWW(#_f4_vq_inv1_ctrlp)[r11]
	bnz9 .BB.LABEL.1_161
.BB.LABEL.1_159:	; if_then_bb1582
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1238
	movhi HIGHW1(#_f4_id_inv1_ctrlierr), r0, r5
	ld.w LOWW(#_f4_id_inv1_ctrlierr)[r5], r10
	movhi HIGHW1(#_f4_vq_inv1_ctrli), r0, r5
	ld.w LOWW(#_f4_vq_inv1_ctrli)[r5], r11
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1239
	movhi HIGHW1(#_f4_vdq_inv1_ctrl_max), r0, r5
	ld.w LOWW(#_f4_vdq_inv1_ctrl_max)[r5], r5
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1238
	mulf.s r10, r13, r10
	addf.s r10, r11, r10
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1239
	cmpf.s 0x00000007, r10, r5
	trfsr 0
	bnz9 .BB.LABEL.1_161
.BB.LABEL.1_160:	; bb1594
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 0
	negf.s r5, r5
	cmpf.s 0x00000004, r10, r5
	trfsr 0
	cmov 0x0000000A, r10, r5, r5
.BB.LABEL.1_161:	; if_break_bb1614
	movhi HIGHW1(#_f4_vq_inv1_ctrli), r0, r10
	st.w r5, LOWW(#_f4_vq_inv1_ctrli)[r10]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1248
	addf.s r5, r7, r5
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1249
	movhi HIGHW1(#_f4_vdq_inv1_ctrl_max), r0, r7
	ld.w LOWW(#_f4_vdq_inv1_ctrl_max)[r7], r7
	cmpf.s 0x00000007, r5, r7
	trfsr 0
	cmov 0x0000000A, r7, r5, r5
	bnz9 .BB.LABEL.1_164
.BB.LABEL.1_162:	; bb1624
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 0
	negf.s r7, r10
	cmpf.s 0x00000004, r5, r10
	trfsr 0
	bnz9 .BB.LABEL.1_164
.BB.LABEL.1_163:	; bb1630
	mov r10, r5
.BB.LABEL.1_164:	; bb1640
	movhi HIGHW1(#_f4_vq_inv1_ctrl), r0, r10
	st.w r5, LOWW(#_f4_vq_inv1_ctrl)[r10]
	mov 0x00000000, r10
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1253
	cmpf.s 0x00000007, r19, r10
	trfsr 0
	bz9 .BB.LABEL.1_166
.BB.LABEL.1_165:	; if_then_bb1647
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1255
	movhi HIGHW1(#_f4_iq_inv1_ctrlperr), r0, r11
	ld.w LOWW(#_f4_iq_inv1_ctrlperr)[r11], r13
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1256
	movhi HIGHW1(#_f4_iq_inv1_ctrlierr), r0, r16
	ld.w LOWW(#_f4_iq_inv1_ctrlierr)[r16], r18
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1255
	negf.s r13, r13
	st.w r13, LOWW(#_f4_iq_inv1_ctrlperr)[r11]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1256
	negf.s r18, r11
	st.w r11, LOWW(#_f4_iq_inv1_ctrlierr)[r16]
.BB.LABEL.1_166:	; if_break_bb1653
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1260
	movhi HIGHW1(#_f4_iq_inv1_ctrlperr), r0, r11
	movhi HIGHW1(#_f4_kp_inv1_iqctrl), r0, r13
	ld.w LOWW(#_f4_iq_inv1_ctrlperr)[r11], r11
	movhi HIGHW1(#_f4_vd_inv1_ctrlp), r0, r16
	ld.w LOWW(#_f4_kp_inv1_iqctrl)[r13], r13
	cmp 0x00000001, r14
	mulf.s r13, r11, r11
	st.w r11, LOWW(#_f4_vd_inv1_ctrlp)[r16]
	bnz9 .BB.LABEL.1_170
.BB.LABEL.1_167:	; if_then_bb1662
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1265
	movhi HIGHW1(#_f4_ki_inv1_iqctrl), r0, r10
	movhi HIGHW1(#_f4_iq_inv1_ctrlierr), r0, r13
	ld.w LOWW(#_f4_ki_inv1_iqctrl)[r10], r10
	movhi HIGHW1(#_f4_vd_inv1_ctrli), r0, r14
	ld.w LOWW(#_f4_iq_inv1_ctrlierr)[r13], r13
	ld.w LOWW(#_f4_vd_inv1_ctrli)[r14], r14
	mulf.s r13, r10, r10
	addf.s r10, r14, r10
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1266
	cmpf.s 0x00000007, r10, r7
	trfsr 0
	cmov 0x0000000A, r7, r10, r10
	bnz9 .BB.LABEL.1_170
.BB.LABEL.1_168:	; bb1674
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 0
	negf.s r7, r13
	cmpf.s 0x00000004, r10, r13
	trfsr 0
	bnz9 .BB.LABEL.1_170
.BB.LABEL.1_169:	; bb1680
	mov r13, r10
.BB.LABEL.1_170:	; if_break_bb1694
	movhi HIGHW1(#_f4_vd_inv1_ctrli), r0, r13
	st.w r10, LOWW(#_f4_vd_inv1_ctrli)[r13]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1275
	addf.s r10, r11, r10
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1276
	cmpf.s 0x00000007, r10, r7
	trfsr 0
	bnz9 .BB.LABEL.1_172
.BB.LABEL.1_171:	; bb1704
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 0
	negf.s r7, r7
	cmpf.s 0x00000004, r10, r7
	trfsr 0
	cmov 0x0000000A, r10, r7, r7
.BB.LABEL.1_172:	; bb1720
	movhi HIGHW1(#_f4_vd_inv1_ctrl), r0, r10
	st.w r7, LOWW(#_f4_vd_inv1_ctrl)[r10]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1279
	movhi HIGHW1(#_f4_cos_inv1_wtcd), r0, r10
	movhi HIGHW1(#_f4_sin_inv1_wtcd), r0, r11
	ld.w LOWW(#_f4_cos_inv1_wtcd)[r10], r10
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1283
	movhi HIGHW1(#_f4_fai_gamma_inv1_ctrlperr), r0, r16
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1279
	ld.w LOWW(#_f4_sin_inv1_wtcd)[r11], r11
	movhi HIGHW1(#_f4_v_gamma_inv1_ctrl), r0, r13
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1283
	ld.w LOWW(#_f4_fai_gamma_inv1_ctrlperr)[r16], r16
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1281
	movhi HIGHW1(#_f4_v_delta_inv1_ctrl), r0, r14
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1279
	mulf.s r7, r10, r18
	mulf.s r5, r11, r21
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1281
	mulf.s r5, r10, r5
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1285
	movhi HIGHW1(#_f4_v_gamma_inv1_ctrlp), r0, r10
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1281
	mulf.s r7, r11, r7
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1287
	mulf.s r15, r16, r11
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1279
	addf.s r21, r18, r18
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1281
	subf.s r7, r5, r5
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1283
	mulf.s r16, r9, r7
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1284
	movhi HIGHW1(#_f4_fai_delta_inv1_ctrlperr), r0, r9
	ld.w LOWW(#_f4_fai_delta_inv1_ctrlperr)[r9], r9
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1279
	st.w r18, LOWW(#_f4_v_gamma_inv1_ctrl)[r13]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1281
	st.w r5, LOWW(#_f4_v_delta_inv1_ctrl)[r14]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1284
	mulf.s r9, r17, r16
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1285
	addf.s r16, r7, r7
	st.w r7, LOWW(#_f4_v_gamma_inv1_ctrlp)[r10]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1291
	subf.s r7, r18, r7
.BB.LABEL.1_173:	; bb1720
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 0
	mulf.s r9, r8, r8
	movhi HIGHW1(#_f4_v_delta_inv1_ctrlp), r0, r13
	movhi HIGHW1(#_f4_v_gamma_inv1_ctrli), r0, r14
	movhi HIGHW1(#_f4_v_delta_inv1_ctrli), r0, r15
	st.w r7, LOWW(#_f4_v_gamma_inv1_ctrli)[r14]
	subf.s r11, r8, r8
	subf.s r8, r5, r5
	st.w r8, LOWW(#_f4_v_delta_inv1_ctrlp)[r13]
	st.w r5, LOWW(#_f4_v_delta_inv1_ctrli)[r15]
	jr .BB.LABEL.1_218
.BB.LABEL.1_174:	; if_else_bb1763
	mov 0x00000003, r10
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1298
	st.b r10, LOWW(#_u1_flag_inv1_status_idqctrl)[r5]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1300
	movhi HIGHW1(#_f4_fai_gamma_inv1_ctrlperr), r0, r5
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1301
	movhi HIGHW1(#_f4_fai_delta_inv1_ctrlperr), r0, r10
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1300
	ld.w LOWW(#_f4_fai_gamma_inv1_ctrlperr)[r5], r5
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1304
	movhi HIGHW1(#_u1_flag_enable_inv1_kictrl), r0, r13
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1301
	ld.w LOWW(#_f4_fai_delta_inv1_ctrlperr)[r10], r10
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1302
	movhi HIGHW1(#_f4_v_gamma_inv1_ctrlp), r0, r11
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1304
	ld.bu LOWW(#_u1_flag_enable_inv1_kictrl)[r13], r13
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1300
	mulf.s r5, r9, r9
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1301
	mulf.s r10, r17, r14
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1304
	cmp 0x00000001, r13
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1302
	addf.s r14, r9, r9
	st.w r9, LOWW(#_f4_v_gamma_inv1_ctrlp)[r11]
	mov 0x00000000, r11
	bnz9 .BB.LABEL.1_176
.BB.LABEL.1_175:	; if_then_bb1778
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1306
	movhi HIGHW1(#_f4_fai_delta_inv1_ctrlierr), r0, r11
	ld.w LOWW(#_f4_fai_delta_inv1_ctrlierr)[r11], r11
	movhi HIGHW1(#_f4_v_gamma_inv1_ctrli), r0, r14
	ld.w LOWW(#_f4_v_gamma_inv1_ctrli)[r14], r14
	mulf.s r21, r11, r11
	subf.s r11, r14, r11
.BB.LABEL.1_176:	; if_break_bb1786
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1315
	mulf.s r10, r8, r8
	movhi HIGHW1(#_f4_v_gamma_inv1_ctrli), r0, r14
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1314
	mulf.s r15, r5, r5
	st.w r11, LOWW(#_f4_v_gamma_inv1_ctrli)[r14]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1312
	addf.s r11, r9, r9
	movhi HIGHW1(#_f4_v_gamma_inv1_ctrl), r0, r11
	cmp 0x00000001, r13
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1316
	subf.s r5, r8, r5
	movhi HIGHW1(#_f4_v_delta_inv1_ctrlp), r0, r8
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1312
	st.w r9, LOWW(#_f4_v_gamma_inv1_ctrl)[r11]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1316
	st.w r5, LOWW(#_f4_v_delta_inv1_ctrlp)[r8]
	mov 0x00000000, r8
	bnz9 .BB.LABEL.1_178
.BB.LABEL.1_177:	; if_then_bb1805
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1320
	movhi HIGHW1(#_f4_fai_gamma_inv1_ctrlierr), r0, r8
	ld.w LOWW(#_f4_fai_gamma_inv1_ctrlierr)[r8], r8
	movhi HIGHW1(#_f4_v_delta_inv1_ctrli), r0, r10
	ld.w LOWW(#_f4_v_delta_inv1_ctrli)[r10], r10
	mulf.s r8, r16, r8
	addf.s r8, r10, r8
.BB.LABEL.1_178:	; if_break_bb1812
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1326
	addf.s r8, r5, r5
	movhi HIGHW1(#_f4_v_delta_inv1_ctrli), r0, r10
	st.w r8, LOWW(#_f4_v_delta_inv1_ctrli)[r10]
	movhi HIGHW1(#_f4_v_delta_inv1_ctrl), r0, r8
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1329
	movhi HIGHW1(#_f4_cos_inv1_wtcd), r0, r10
	ld.w LOWW(#_f4_cos_inv1_wtcd)[r10], r10
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1334
	movhi HIGHW1(#_f4_id_inv1_ctrlperr), r0, r14
	ld.w LOWW(#_f4_id_inv1_ctrlperr)[r14], r14
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1331
	movhi HIGHW1(#_f4_vq_inv1_ctrl), r0, r13
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1326
	st.w r5, LOWW(#_f4_v_delta_inv1_ctrl)[r8]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1329
	movhi HIGHW1(#_f4_sin_inv1_wtcd), r0, r8
	ld.w LOWW(#_f4_sin_inv1_wtcd)[r8], r8
	mulf.s r9, r10, r17
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1334
	mulf.s r7, r14, r7
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1329
	movhi HIGHW1(#_f4_vd_inv1_ctrl), r0, r11
	mulf.s r5, r8, r15
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1331
	mulf.s r5, r10, r5
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1337
	movhi HIGHW1(#_f4_vd_inv1_ctrli), r0, r10
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1331
	mulf.s r9, r8, r8
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1335
	movhi HIGHW1(#_f4_vq_inv1_ctrlp), r0, r9
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1329
	subf.s r15, r17, r15
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1331
	addf.s r5, r8, r5
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1334
	movhi HIGHW1(#_f4_vd_inv1_ctrlp), r0, r8
	st.w r7, LOWW(#_f4_vd_inv1_ctrlp)[r8]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1335
	movhi HIGHW1(#_f4_iq_inv1_ctrlperr), r0, r8
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1337
	subf.s r7, r15, r7
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1335
	ld.w LOWW(#_f4_iq_inv1_ctrlperr)[r8], r8
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1329
	st.w r15, LOWW(#_f4_vd_inv1_ctrl)[r11]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1331
	st.w r5, LOWW(#_f4_vq_inv1_ctrl)[r13]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1337
	st.w r7, LOWW(#_f4_vd_inv1_ctrli)[r10]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1338
	movhi HIGHW1(#_f4_vq_inv1_ctrli), r0, r7
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1335
	ld.w 0x00000000[r3], r10
	mulf.s r10, r8, r8
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1338
	subf.s r8, r5, r5
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1335
	st.w r8, LOWW(#_f4_vq_inv1_ctrlp)[r9]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1338
	st.w r5, LOWW(#_f4_vq_inv1_ctrli)[r7]
	jr .BB.LABEL.1_218
.BB.LABEL.1_179:	; if_else_bb1843
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1343
	cmp 0x00000000, r5
	movhi HIGHW1(#_u1_flag_inv1_status_idqctrl), r0, r5
	bnz17 .BB.LABEL.1_193
.BB.LABEL.1_180:	; if_then_bb1849
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 0
	mov 0x00000004, r10
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1345
	st.b r10, LOWW(#_u1_flag_inv1_status_idqctrl)[r5]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1348
	movhi HIGHW1(#_f4_id_inv1_ctrlperr), r0, r5
	ld.w LOWW(#_f4_id_inv1_ctrlperr)[r5], r5
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1351
	movhi HIGHW1(#_u1_flag_enable_inv1_kictrl), r0, r11
	ld.bu LOWW(#_u1_flag_enable_inv1_kictrl)[r11], r11
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1348
	movhi HIGHW1(#_f4_vd_inv1_ctrlp), r0, r10
	mulf.s r7, r5, r5
	mov 0x00000000, r7
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1351
	cmp 0x00000001, r11
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1348
	st.w r5, LOWW(#_f4_vd_inv1_ctrlp)[r10]
	bnz9 .BB.LABEL.1_183
.BB.LABEL.1_181:	; if_then_bb1858
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1353
	movhi HIGHW1(#_f4_id_inv1_ctrlierr), r0, r7
	ld.w LOWW(#_f4_id_inv1_ctrlierr)[r7], r10
	movhi HIGHW1(#_f4_vd_inv1_ctrli), r0, r7
	ld.w LOWW(#_f4_vd_inv1_ctrli)[r7], r14
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1354
	movhi HIGHW1(#_f4_vdq_inv1_ctrl_max), r0, r7
	ld.w LOWW(#_f4_vdq_inv1_ctrl_max)[r7], r7
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1353
	mulf.s r10, r13, r10
	addf.s r10, r14, r10
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1354
	cmpf.s 0x00000007, r10, r7
	trfsr 0
	bnz9 .BB.LABEL.1_183
.BB.LABEL.1_182:	; bb1870
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 0
	negf.s r7, r7
	cmpf.s 0x00000004, r10, r7
	trfsr 0
	cmov 0x0000000A, r10, r7, r7
.BB.LABEL.1_183:	; if_break_bb1890
	movhi HIGHW1(#_f4_vd_inv1_ctrli), r0, r10
	st.w r7, LOWW(#_f4_vd_inv1_ctrli)[r10]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1363
	addf.s r7, r5, r5
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1364
	movhi HIGHW1(#_f4_vdq_inv1_ctrl_max), r0, r7
	ld.w LOWW(#_f4_vdq_inv1_ctrl_max)[r7], r7
	cmpf.s 0x00000007, r5, r7
	trfsr 0
	cmov 0x0000000A, r7, r5, r5
	bnz9 .BB.LABEL.1_186
.BB.LABEL.1_184:	; bb1900
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 0
	negf.s r7, r10
	cmpf.s 0x00000004, r5, r10
	trfsr 0
	bnz9 .BB.LABEL.1_186
.BB.LABEL.1_185:	; bb1906
	mov r10, r5
.BB.LABEL.1_186:	; bb1916
	movhi HIGHW1(#_f4_vd_inv1_ctrl), r0, r10
	st.w r5, LOWW(#_f4_vd_inv1_ctrl)[r10]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1368
	movhi HIGHW1(#_f4_iq_inv1_ctrlperr), r0, r10
	cmp 0x00000001, r11
	ld.w LOWW(#_f4_iq_inv1_ctrlperr)[r10], r10
	movhi HIGHW1(#_f4_vq_inv1_ctrlp), r0, r13
	ld.w 0x00000000[r3], r11
	mulf.s r11, r10, r10
	mov 0x00000000, r11
	st.w r10, LOWW(#_f4_vq_inv1_ctrlp)[r13]
	bnz9 .BB.LABEL.1_190
.BB.LABEL.1_187:	; if_then_bb1927
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1373
	movhi HIGHW1(#_f4_iq_inv1_ctrlierr), r0, r11
	ld.w LOWW(#_f4_iq_inv1_ctrlierr)[r11], r11
	ld.w 0x00000004[r3], r14
	movhi HIGHW1(#_f4_vq_inv1_ctrli), r0, r13
	ld.w LOWW(#_f4_vq_inv1_ctrli)[r13], r13
	mulf.s r11, r14, r11
	addf.s r11, r13, r11
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1374
	cmpf.s 0x00000007, r11, r7
	trfsr 0
	cmov 0x0000000A, r7, r11, r11
	bnz9 .BB.LABEL.1_190
.BB.LABEL.1_188:	; bb1939
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 0
	negf.s r7, r13
	cmpf.s 0x00000004, r11, r13
	trfsr 0
	bnz9 .BB.LABEL.1_190
.BB.LABEL.1_189:	; bb1945
	mov r13, r11
.BB.LABEL.1_190:	; if_break_bb1959
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1383
	addf.s r11, r10, r10
	movhi HIGHW1(#_f4_vq_inv1_ctrli), r0, r13
	st.w r11, LOWW(#_f4_vq_inv1_ctrli)[r13]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1384
	cmpf.s 0x00000007, r10, r7
	trfsr 0
	bnz9 .BB.LABEL.1_192
.BB.LABEL.1_191:	; bb1969
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 0
	negf.s r7, r7
	cmpf.s 0x00000004, r10, r7
	trfsr 0
	cmov 0x0000000A, r10, r7, r7
.BB.LABEL.1_192:	; bb1985
	movhi HIGHW1(#_f4_vq_inv1_ctrl), r0, r10
	st.w r7, LOWW(#_f4_vq_inv1_ctrl)[r10]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1387
	movhi HIGHW1(#_f4_cos_inv1_wtcd), r0, r10
	movhi HIGHW1(#_f4_sin_inv1_wtcd), r0, r11
	ld.w LOWW(#_f4_cos_inv1_wtcd)[r10], r10
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1391
	movhi HIGHW1(#_f4_fai_gamma_inv1_ctrlperr), r0, r18
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1387
	ld.w LOWW(#_f4_sin_inv1_wtcd)[r11], r11
	movhi HIGHW1(#_f4_v_gamma_inv1_ctrl), r0, r13
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1391
	ld.w LOWW(#_f4_fai_gamma_inv1_ctrlperr)[r18], r18
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1389
	movhi HIGHW1(#_f4_v_delta_inv1_ctrl), r0, r14
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1387
	mulf.s r5, r10, r22
	mulf.s r7, r11, r23
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1389
	mulf.s r7, r10, r7
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1393
	movhi HIGHW1(#_f4_v_gamma_inv1_ctrlp), r0, r10
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1389
	mulf.s r5, r11, r5
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1395
	mulf.s r15, r18, r11
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1387
	addf.s r23, r22, r22
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1389
	subf.s r5, r7, r5
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1391
	mulf.s r18, r9, r7
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1392
	movhi HIGHW1(#_f4_fai_delta_inv1_ctrlperr), r0, r9
	ld.w LOWW(#_f4_fai_delta_inv1_ctrlperr)[r9], r9
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1387
	st.w r22, LOWW(#_f4_v_gamma_inv1_ctrl)[r13]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1389
	st.w r5, LOWW(#_f4_v_delta_inv1_ctrl)[r14]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1392
	mulf.s r9, r17, r17
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1393
	addf.s r17, r7, r7
	st.w r7, LOWW(#_f4_v_gamma_inv1_ctrlp)[r10]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1399
	subf.s r7, r22, r7
	jr .BB.LABEL.1_173
.BB.LABEL.1_193:	; if_else_bb2028
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 0
	mov 0x00000005, r11
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1404
	st.b r11, LOWW(#_u1_flag_inv1_status_idqctrl)[r5]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1406
	movhi HIGHW1(#_f4_fai_gamma_inv1_ctrlperr), r0, r5
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1407
	movhi HIGHW1(#_f4_fai_delta_inv1_ctrlperr), r0, r11
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1406
	ld.w LOWW(#_f4_fai_gamma_inv1_ctrlperr)[r5], r5
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1410
	movhi HIGHW1(#_u1_flag_enable_inv1_kictrl), r0, r18
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1407
	ld.w LOWW(#_f4_fai_delta_inv1_ctrlperr)[r11], r11
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1408
	movhi HIGHW1(#_f4_v_gamma_inv1_ctrlp), r0, r13
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1410
	ld.bu LOWW(#_u1_flag_enable_inv1_kictrl)[r18], r18
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1406
	mulf.s r5, r9, r22
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1407
	mulf.s r11, r17, r23
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1410
	cmp 0x00000001, r18
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1408
	addf.s r23, r22, r22
	st.w r22, LOWW(#_f4_v_gamma_inv1_ctrlp)[r13]
	mov 0x00000000, r13
	bnz9 .BB.LABEL.1_195
.BB.LABEL.1_194:	; if_then_bb2043
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1412
	movhi HIGHW1(#_f4_fai_gamma_inv1_ctrlierr), r0, r13
	ld.w LOWW(#_f4_fai_gamma_inv1_ctrlierr)[r13], r13
	movhi HIGHW1(#_f4_v_gamma_inv1_ctrli), r0, r23
	ld.w LOWW(#_f4_v_gamma_inv1_ctrli)[r23], r23
	mulf.s r13, r14, r13
	addf.s r13, r23, r13
.BB.LABEL.1_195:	; if_break_bb2050
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1421
	mulf.s r11, r8, r11
	movhi HIGHW1(#_f4_v_gamma_inv1_ctrli), r0, r23
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1420
	mulf.s r15, r5, r5
	st.w r13, LOWW(#_f4_v_gamma_inv1_ctrli)[r23]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1418
	addf.s r13, r22, r13
	movhi HIGHW1(#_f4_v_gamma_inv1_ctrl), r0, r22
	cmp 0x00000001, r18
	cmov 0x0000000A, 0x00000000, r10, r10
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1422
	subf.s r5, r11, r5
	movhi HIGHW1(#_f4_v_delta_inv1_ctrlp), r0, r11
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1418
	st.w r13, LOWW(#_f4_v_gamma_inv1_ctrl)[r22]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1422
	st.w r5, LOWW(#_f4_v_delta_inv1_ctrlp)[r11]
	bnz9 .BB.LABEL.1_197
.BB.LABEL.1_196:	; if_then_bb2069
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1426
	movhi HIGHW1(#_f4_fai_delta_inv1_ctrlierr), r0, r11
	ld.w LOWW(#_f4_fai_delta_inv1_ctrlierr)[r11], r11
	movhi HIGHW1(#_f4_v_delta_inv1_ctrli), r0, r18
	ld.w LOWW(#_f4_v_delta_inv1_ctrli)[r18], r18
	mulf.s r11, r10, r10
	addf.s r10, r18, r10
.BB.LABEL.1_197:	; if_break_bb2076
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1432
	addf.s r10, r5, r5
	movhi HIGHW1(#_f4_v_delta_inv1_ctrli), r0, r11
	st.w r10, LOWW(#_f4_v_delta_inv1_ctrli)[r11]
	movhi HIGHW1(#_f4_v_delta_inv1_ctrl), r0, r11
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1435
	movhi HIGHW1(#_f4_cos_inv1_wtcd), r0, r18
	ld.w LOWW(#_f4_cos_inv1_wtcd)[r18], r18
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1440
	movhi HIGHW1(#_f4_id_inv1_ctrlperr), r0, r24
	ld.w LOWW(#_f4_id_inv1_ctrlperr)[r24], r24
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1437
	movhi HIGHW1(#_f4_vq_inv1_ctrl), r0, r23
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1432
	st.w r5, LOWW(#_f4_v_delta_inv1_ctrl)[r11]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1435
	movhi HIGHW1(#_f4_sin_inv1_wtcd), r0, r11
	ld.w LOWW(#_f4_sin_inv1_wtcd)[r11], r11
	mulf.s r13, r18, r2
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1440
	mulf.s r7, r24, r7
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1435
	movhi HIGHW1(#_f4_vd_inv1_ctrl), r0, r22
	mulf.s r5, r11, r25
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1437
	mulf.s r5, r18, r5
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1443
	movhi HIGHW1(#_f4_vd_inv1_ctrli), r0, r18
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1437
	mulf.s r13, r11, r11
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1441
	movhi HIGHW1(#_f4_vq_inv1_ctrlp), r0, r13
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1435
	subf.s r25, r2, r25
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1437
	addf.s r5, r11, r5
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1440
	movhi HIGHW1(#_f4_vd_inv1_ctrlp), r0, r11
	st.w r7, LOWW(#_f4_vd_inv1_ctrlp)[r11]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1441
	movhi HIGHW1(#_f4_iq_inv1_ctrlperr), r0, r11
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1443
	subf.s r7, r25, r7
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1441
	ld.w LOWW(#_f4_iq_inv1_ctrlperr)[r11], r11
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1435
	st.w r25, LOWW(#_f4_vd_inv1_ctrl)[r22]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1437
	st.w r5, LOWW(#_f4_vq_inv1_ctrl)[r23]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1443
	st.w r7, LOWW(#_f4_vd_inv1_ctrli)[r18]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1444
	movhi HIGHW1(#_f4_vq_inv1_ctrli), r0, r7
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1441
	ld.w 0x00000000[r3], r18
	mulf.s r18, r11, r11
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1444
	subf.s r11, r5, r5
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1441
	st.w r11, LOWW(#_f4_vq_inv1_ctrlp)[r13]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1444
	st.w r5, LOWW(#_f4_vq_inv1_ctrli)[r7]
	jr .BB.LABEL.1_218
.BB.LABEL.1_198:	; if_else_bb2109
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1451
	movhi HIGHW1(#_u1_flag_inv1_status_idqctrl), r0, r5
	mov 0x00000004, r11
	st.b r11, LOWW(#_u1_flag_inv1_status_idqctrl)[r5]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1454
	movhi HIGHW1(#_f4_id_inv1_ctrlperr), r0, r5
	ld.w LOWW(#_f4_id_inv1_ctrlperr)[r5], r5
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1458
	movhi HIGHW1(#_f4_id_inv1_ctrlierr), r0, r22
	ld.w LOWW(#_f4_id_inv1_ctrlierr)[r22], r22
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1454
	movhi HIGHW1(#_f4_vd_inv1_ctrlp), r0, r11
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1457
	movhi HIGHW1(#_f4_vdc_inv1_lpf), r0, r18
	ld.w LOWW(#_f4_vdc_inv1_lpf)[r18], r18
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1454
	mulf.s r7, r5, r5
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1458
	mulf.s r22, r13, r22
	mov 0x3F3504E6, r23
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1457
	mulf.s r23, r18, r18
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1454
	st.w r5, LOWW(#_f4_vd_inv1_ctrlp)[r11]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1458
	movhi HIGHW1(#_f4_vd_inv1_ctrli), r0, r11
	ld.w LOWW(#_f4_vd_inv1_ctrli)[r11], r11
	addf.s r22, r11, r11
	mov r18, r22
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1459
	cmpf.s 0x00000007, r11, r18
	trfsr 0
	bnz9 .BB.LABEL.1_201
.BB.LABEL.1_199:	; bb2126
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 0
	negf.s r18, r22
	cmpf.s 0x00000007, r22, r11
	trfsr 0
	bnz9 .BB.LABEL.1_201
.BB.LABEL.1_200:	; bb2135
	mov r11, r22
.BB.LABEL.1_201:	; bb2142
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1462
	addf.s r22, r5, r5
	movhi HIGHW1(#_f4_vd_inv1_ctrli), r0, r11
	st.w r22, LOWW(#_f4_vd_inv1_ctrli)[r11]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1463
	cmpf.s 0x00000007, r5, r18
	trfsr 0
	cmov 0x0000000A, r18, r5, r5
	bnz9 .BB.LABEL.1_204
.BB.LABEL.1_202:	; bb2154
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 0
	negf.s r18, r11
	cmpf.s 0x00000004, r5, r11
	trfsr 0
	bnz9 .BB.LABEL.1_204
.BB.LABEL.1_203:	; bb2160
	mov r11, r5
.BB.LABEL.1_204:	; bb2170
	movhi HIGHW1(#_f4_vd_inv1_ctrl), r0, r11
	st.w r5, LOWW(#_f4_vd_inv1_ctrl)[r11]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1467
	movhi HIGHW1(#_f4_iq_inv1_ctrlperr), r0, r5
	ld.w LOWW(#_f4_iq_inv1_ctrlperr)[r5], r5
	ld.w 0x00000000[r3], r24
	movhi HIGHW1(#_f4_vq_inv1_ctrlp), r0, r11
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1471
	movhi HIGHW1(#_f4_iq_inv1_ctrlierr), r0, r22
	ld.w LOWW(#_f4_iq_inv1_ctrlierr)[r22], r22
	movhi HIGHW1(#_f4_vq_inv1_ctrli), r0, r23
	ld.w LOWW(#_f4_vq_inv1_ctrli)[r23], r23
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1467
	mulf.s r24, r5, r5
	st.w r5, LOWW(#_f4_vq_inv1_ctrlp)[r11]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1471
	ld.w 0x00000004[r3], r11
	mulf.s r22, r11, r11
	mov r18, r22
	addf.s r11, r23, r11
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1472
	cmpf.s 0x00000007, r11, r18
	trfsr 0
	bnz9 .BB.LABEL.1_207
.BB.LABEL.1_205:	; bb2189
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 0
	negf.s r18, r22
	cmpf.s 0x00000007, r22, r11
	trfsr 0
	bnz9 .BB.LABEL.1_207
.BB.LABEL.1_206:	; bb2198
	mov r11, r22
.BB.LABEL.1_207:	; bb2205
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1475
	addf.s r22, r5, r5
	movhi HIGHW1(#_f4_vq_inv1_ctrli), r0, r11
	st.w r22, LOWW(#_f4_vq_inv1_ctrli)[r11]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1476
	cmpf.s 0x00000007, r5, r18
	trfsr 0
	bnz9 .BB.LABEL.1_209
.BB.LABEL.1_208:	; bb2217
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 0
	negf.s r18, r18
	cmpf.s 0x00000004, r5, r18
	trfsr 0
	cmov 0x0000000A, r5, r18, r18
.BB.LABEL.1_209:	; bb2233
	movhi HIGHW1(#_f4_vq_inv1_ctrl), r0, r5
	st.w r18, LOWW(#_f4_vq_inv1_ctrl)[r5]
	jr .BB.LABEL.1_218
.BB.LABEL.1_210:	; if_else_bb2237
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1484
	movhi HIGHW1(#_u1_flag_inv1_status_idqctrl), r0, r2
	mov 0x00000004, r6
	st.b r6, LOWW(#_u1_flag_inv1_status_idqctrl)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1485
	movhi HIGHW1(#_u1_flag_inv1_status_idqctrl_hys), r0, r2
	st.b r0, LOWW(#_u1_flag_inv1_status_idqctrl_hys)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1487
	movhi HIGHW1(#_f4_vd_inv1_ctrl), r0, r2
	st.w r0, LOWW(#_f4_vd_inv1_ctrl)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1488
	movhi HIGHW1(#_f4_vd_inv1_ctrlp), r0, r2
	st.w r0, LOWW(#_f4_vd_inv1_ctrlp)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1489
	movhi HIGHW1(#_f4_vd_inv1_ctrli), r0, r2
	st.w r0, LOWW(#_f4_vd_inv1_ctrli)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1491
	movhi HIGHW1(#_f4_vq_inv1_ctrl), r0, r2
	st.w r0, LOWW(#_f4_vq_inv1_ctrl)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1492
	movhi HIGHW1(#_f4_vq_inv1_ctrlp), r0, r2
	st.w r0, LOWW(#_f4_vq_inv1_ctrlp)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1493
	movhi HIGHW1(#_f4_vq_inv1_ctrli), r0, r2
	st.w r0, LOWW(#_f4_vq_inv1_ctrli)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1495
	movhi HIGHW1(#_f4_id_inv1_ref), r0, r2
	ld.w LOWW(#_f4_id_inv1_ref)[r2], r2
	movhi HIGHW1(#_f4_id_inv1_ctrliref), r0, r6
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1496
	movhi HIGHW1(#_f4_iq_inv1_ref), r0, r7
	ld.w LOWW(#_f4_iq_inv1_ref)[r7], r7
	movhi HIGHW1(#_f4_iq_inv1_ctrliref), r0, r8
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1499
	movhi HIGHW1(#_f4_v_gamma_inv1_ctrl), r0, r9
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1495
	st.w r2, LOWW(#_f4_id_inv1_ctrliref)[r6]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1500
	movhi HIGHW1(#_f4_v_gamma_inv1_ctrlp), r0, r2
	st.w r0, LOWW(#_f4_v_gamma_inv1_ctrlp)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1501
	movhi HIGHW1(#_f4_v_gamma_inv1_ctrli), r0, r2
	st.w r0, LOWW(#_f4_v_gamma_inv1_ctrli)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1503
	movhi HIGHW1(#_f4_v_delta_inv1_ctrl), r0, r2
	st.w r0, LOWW(#_f4_v_delta_inv1_ctrl)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1504
	movhi HIGHW1(#_f4_v_delta_inv1_ctrlp), r0, r2
	st.w r0, LOWW(#_f4_v_delta_inv1_ctrlp)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1505
	movhi HIGHW1(#_f4_v_delta_inv1_ctrli), r0, r2
	st.w r0, LOWW(#_f4_v_delta_inv1_ctrli)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1507
	movhi HIGHW1(#_f4_fai_gamma_inv1_ctrliref), r0, r2
	st.w r11, LOWW(#_f4_fai_gamma_inv1_ctrliref)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1508
	movhi HIGHW1(#_f4_fai_delta_inv1_ctrliref), r0, r2
	st.w r5, LOWW(#_f4_fai_delta_inv1_ctrliref)[r2]
	movhi HIGHW1(#_u1_cnt_idq_inv1_ctrli_delay), r0, r2
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1499
	st.w r0, LOWW(#_f4_v_gamma_inv1_ctrl)[r9]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1511
	cmp 0x00000000, r18
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1496
	st.w r7, LOWW(#_f4_iq_inv1_ctrliref)[r8]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1508
	st.b r0, LOWW(#_u1_cnt_idq_inv1_ctrli_delay)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1511
	bz9 .BB.LABEL.1_217
.BB.LABEL.1_211:	; bb.nph.split
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 0
	addi 0xFFFFFFFF, r18, r2
	cmp 0x00000000, r18
	cmov 0x00000002, 0x00000000, r2, r2
	mov 0x00000000, r7
	andi 0x000000FF, r2, r2
	addi 0x00000001, r2, r6
	cmp 0x00000003, r6
	ble9 .BB.LABEL.1_215
.BB.LABEL.1_212:	; preheader.ul168
	add 0xFFFFFFFD, r2
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1514
	movhi HIGHW1(#_f4_id_inv1_ref), r0, r8
	shr 0x00000002, r2
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1515
	movhi HIGHW1(#_f4_iq_inv1_ref), r0, r9
	add 0x00000001, r2
	mov r22, r10
	mov r2, r7
	shl 0x00000002, r7
	mov r25, r12
	mov r24, r13
	mov r23, r14
.BB.LABEL.1_213:	; bb2242.split.clone
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1514
	ld.w LOWW(#_f4_id_inv1_ref)[r8], r15
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1515
	ld.w LOWW(#_f4_iq_inv1_ref)[r9], r16
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1514
	ld.w LOWW(#_f4_id_inv1_ref)[r8], r17
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1515
	ld.w LOWW(#_f4_iq_inv1_ref)[r9], r18
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1514
	ld.w LOWW(#_f4_id_inv1_ref)[r8], r19
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1515
	ld.w LOWW(#_f4_iq_inv1_ref)[r9], r20
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1514
	ld.w LOWW(#_f4_id_inv1_ref)[r8], r21
	st.w r15, 0x00000000[r10]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1515
	ld.w LOWW(#_f4_iq_inv1_ref)[r9], r15
	st.w r16, 0x00000000[r12]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1516
	st.w r11, 0x00000000[r13]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1517
	st.w r5, 0x00000000[r14]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1514
	st.w r17, 0x00000004[r10]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1515
	st.w r18, 0x00000004[r12]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1516
	st.w r11, 0x00000004[r13]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1517
	st.w r5, 0x00000004[r14]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1514
	st.w r19, 0x00000008[r10]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1515
	st.w r20, 0x00000008[r12]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1516
	st.w r11, 0x00000008[r13]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1517
	st.w r5, 0x00000008[r14]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1514
	st.w r21, 0x0000000C[r10]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1511
	movea 0x00000010, r10, r10
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1515
	st.w r15, 0x0000000C[r12]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1511
	movea 0x00000010, r12, r12
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1516
	st.w r11, 0x0000000C[r13]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1511
	movea 0x00000010, r13, r13
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1517
	st.w r5, 0x0000000C[r14]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1511
	movea 0x00000010, r14, r14
	loop r2, .BB.LABEL.1_213
.BB.LABEL.1_214:	; exit.ul169
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 0
	cmp r6, r7
	bz9 .BB.LABEL.1_217
.BB.LABEL.1_215:	; bb2242.split.preheader
	sub r7, r6
	shl 0x00000002, r7
	add r7, r22
	add r7, r25
	add r7, r24
	add r7, r23
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1514
	movhi HIGHW1(#_f4_id_inv1_ref), r0, r2
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1515
	movhi HIGHW1(#_f4_iq_inv1_ref), r0, r7
.BB.LABEL.1_216:	; bb2242.split
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1514
	ld.w LOWW(#_f4_id_inv1_ref)[r2], r8
	st.w r8, 0x00000000[r22]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1511
	add 0x00000004, r22
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1515
	ld.w LOWW(#_f4_iq_inv1_ref)[r7], r8
	st.w r8, 0x00000000[r25]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1511
	add 0x00000004, r25
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1516
	st.w r11, 0x00000000[r24]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1511
	add 0x00000004, r24
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1517
	st.w r5, 0x00000000[r23]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1511
	add 0x00000004, r23
	loop r6, .BB.LABEL.1_216
.BB.LABEL.1_217:	; bb2269
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1520
	movhi HIGHW1(#_u1_cnt_idq_inv1_ctrli_delay), r0, r2
	st.b r0, LOWW(#_u1_cnt_idq_inv1_ctrli_delay)[r2]
.BB.LABEL.1_218:	; if_break_bb2270
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1529
	movhi HIGHW1(#_u1_flag_inv1_adj), r0, r2
	ld.bu LOWW(#_u1_flag_inv1_adj)[r2], r2
	cmp 0x00000000, r2
	bnz17 .BB.LABEL.1_225
.BB.LABEL.1_219:	; if_then_bb2276
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1532
	movhi HIGHW1(#_f4_wr_inv1_pll_lpf), r0, r5
	ld.w LOWW(#_f4_wr_inv1_pll_lpf)[r5], r5
	movhi HIGHW1(#_f4_lq_inv1_isat), r0, r2
	ld.w LOWW(#_f4_lq_inv1_isat)[r2], r2
	movhi HIGHW1(#_f4_iq_inv1_ref), r0, r6
	ld.w LOWW(#_f4_iq_inv1_ref)[r6], r7
	negf.s r5, r10
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1534
	movhi HIGHW1(#_f4_ld_inv1_isat), r0, r9
	ld.w LOWW(#_f4_ld_inv1_isat)[r9], r9
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1532
	movhi HIGHW1(#_f4_vd_inv1_emf), r0, r8
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1536
	movhi HIGHW1(#_f4_rs_inv1), r0, r11
	ld.w LOWW(#_f4_rs_inv1)[r11], r11
	movhi HIGHW1(#_f4_vd_inv1_rs), r0, r12
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1532
	mulf.s r10, r2, r2
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1534
	movhi HIGHW1(#_f4_fm_inv1), r0, r10
	mulf.s r9, r5, r9
	ld.w LOWW(#_f4_fm_inv1)[r10], r10
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1532
	mulf.s r7, r2, r2
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1534
	movhi HIGHW1(#_f4_id_inv1_ref), r0, r7
	mulf.s r10, r5, r5
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1532
	st.w r2, LOWW(#_f4_vd_inv1_emf)[r8]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1534
	ld.w LOWW(#_f4_id_inv1_ref)[r7], r8
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1536
	ld.w LOWW(#_f4_id_inv1_ref)[r7], r7
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1538
	ld.w LOWW(#_f4_iq_inv1_ref)[r6], r6
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1534
	mulf.s r8, r9, r8
	movhi HIGHW1(#_f4_vq_inv1_emf), r0, r9
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1536
	mulf.s r7, r11, r7
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1538
	mulf.s r6, r11, r6
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1534
	addf.s r5, r8, r5
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1538
	movhi HIGHW1(#_f4_vq_inv1_rs), r0, r8
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1536
	st.w r7, LOWW(#_f4_vd_inv1_rs)[r12]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1538
	st.w r6, LOWW(#_f4_vq_inv1_rs)[r8]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1542
	movhi HIGHW1(#_f4_vd_inv1_ctrl), r0, r8
	ld.w LOWW(#_f4_vd_inv1_ctrl)[r8], r8
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1534
	st.w r5, LOWW(#_f4_vq_inv1_emf)[r9]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1543
	movhi HIGHW1(#_f4_vdq_inv1_max), r0, r9
	ld.w LOWW(#_f4_vdq_inv1_max)[r9], r20
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1542
	addf.s r2, r8, r8
	addf.s r7, r8, r21
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1543
	cmpf.s 0x00000007, r21, r20
	trfsr 0
	cmov 0x0000000A, r20, r21, r21
	bnz9 .BB.LABEL.1_222
.BB.LABEL.1_220:	; bb2309
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 0
	negf.s r20, r8
	cmpf.s 0x00000004, r21, r8
	trfsr 0
	bnz9 .BB.LABEL.1_222
.BB.LABEL.1_221:	; bb2315
	mov r8, r21
.BB.LABEL.1_222:	; bb2325
	movhi HIGHW1(#_f4_vd_inv1_ref_tmp), r0, r8
	st.w r21, LOWW(#_f4_vd_inv1_ref_tmp)[r8]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1545
	movhi HIGHW1(#_f4_vq_inv1_ctrl), r0, r8
	ld.w LOWW(#_f4_vq_inv1_ctrl)[r8], r8
	movhi HIGHW1(#_f4_vq_inv1_ctrl_1pulse), r0, r9
	ld.w LOWW(#_f4_vq_inv1_ctrl_1pulse)[r9], r9
	addf.s r5, r8, r8
	addf.s r6, r8, r8
	addf.s r9, r8, r8
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1546
	cmpf.s 0x00000007, r8, r20
	trfsr 0
	bnz9 .BB.LABEL.1_224
.BB.LABEL.1_223:	; bb2341
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 0
	negf.s r20, r20
	cmpf.s 0x00000004, r8, r20
	trfsr 0
	cmov 0x0000000A, r8, r20, r20
.BB.LABEL.1_224:	; bb2357
	movhi HIGHW1(#_f4_vq_inv1_ref_tmp), r0, r8
	st.w r20, LOWW(#_f4_vq_inv1_ref_tmp)[r8]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1549
	movhi HIGHW1(#_f4_cos_inv1_wtcd), r0, r8
	ld.w LOWW(#_f4_cos_inv1_wtcd)[r8], r8
	movhi HIGHW1(#_f4_sin_inv1_wtcd), r0, r9
	ld.w LOWW(#_f4_sin_inv1_wtcd)[r9], r9
	movhi HIGHW1(#_f4_v_gamma_inv1_emf), r0, r10
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1551
	movhi HIGHW1(#_f4_v_delta_inv1_emf), r0, r11
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1549
	mulf.s r2, r8, r13
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1554
	movhi HIGHW1(#_f4_v_gamma_inv1_rs), r0, r12
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1551
	mulf.s r5, r8, r14
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1549
	mulf.s r5, r9, r5
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1551
	mulf.s r2, r9, r2
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1549
	addf.s r5, r13, r5
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1551
	subf.s r2, r14, r2
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1549
	st.w r5, LOWW(#_f4_v_gamma_inv1_emf)[r10]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1554
	mulf.s r6, r9, r5
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1551
	st.w r2, LOWW(#_f4_v_delta_inv1_emf)[r11]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1554
	mulf.s r7, r8, r2
	addf.s r5, r2, r2
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1556
	mulf.s r7, r9, r5
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1554
	st.w r2, LOWW(#_f4_v_gamma_inv1_rs)[r12]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1556
	mulf.s r6, r8, r2
	subf.s r5, r2, r2
	movhi HIGHW1(#_f4_v_delta_inv1_rs), r0, r5
	st.w r2, LOWW(#_f4_v_delta_inv1_rs)[r5]
	jr .BB.LABEL.1_251
.BB.LABEL.1_225:	; if_else_bb2405
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1568
	movhi HIGHW1(#_f4_vd_inv1_emf), r0, r20
	st.w r0, LOWW(#_f4_vd_inv1_emf)[r20]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1571
	movhi HIGHW1(#_f4_vq_inv1_emf), r0, r20
	st.w r0, LOWW(#_f4_vq_inv1_emf)[r20]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1573
	movhi HIGHW1(#_f4_v_gamma_inv1_emf), r0, r20
	st.w r0, LOWW(#_f4_v_gamma_inv1_emf)[r20]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1574
	movhi HIGHW1(#_f4_v_delta_inv1_emf), r0, r20
	st.w r0, LOWW(#_f4_v_delta_inv1_emf)[r20]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1575
	movhi HIGHW1(#_f4_v_gamma_inv1_rs), r0, r20
	st.w r0, LOWW(#_f4_v_gamma_inv1_rs)[r20]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1576
	movhi HIGHW1(#_f4_v_delta_inv1_rs), r0, r20
	st.w r0, LOWW(#_f4_v_delta_inv1_rs)[r20]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1578
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.1_230
.BB.LABEL.1_226:	; if_then_bb2411
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1581
	movhi HIGHW1(#_f4_rs_inv1_adj), r0, r2
	movhi HIGHW1(#_f4_id_inv1_ref), r0, r20
	ld.w LOWW(#_f4_rs_inv1_adj)[r2], r2
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1587
	movhi HIGHW1(#_f4_vd_inv1_ctrl), r0, r7
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1581
	ld.w LOWW(#_f4_id_inv1_ref)[r20], r20
	movhi HIGHW1(#_f4_vd_inv1_rs), r0, r21
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1587
	ld.w LOWW(#_f4_vd_inv1_ctrl)[r7], r7
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1583
	movhi HIGHW1(#_f4_iq_inv1_ref), r0, r5
	ld.w LOWW(#_f4_iq_inv1_ref)[r5], r5
	movhi HIGHW1(#_f4_vq_inv1_rs), r0, r6
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1581
	mulf.s r20, r2, r8
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1588
	movhi HIGHW1(#_f4_vdq_inv1_max), r0, r20
	ld.w LOWW(#_f4_vdq_inv1_max)[r20], r20
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1583
	mulf.s r5, r2, r2
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1581
	st.w r8, LOWW(#_f4_vd_inv1_rs)[r21]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1587
	addf.s r8, r7, r21
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1583
	st.w r2, LOWW(#_f4_vq_inv1_rs)[r6]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1588
	cmpf.s 0x00000007, r21, r20
	trfsr 0
	cmov 0x0000000A, r20, r21, r21
	bnz9 .BB.LABEL.1_229
.BB.LABEL.1_227:	; bb2427
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 0
	negf.s r20, r5
	cmpf.s 0x00000004, r21, r5
	trfsr 0
	bnz9 .BB.LABEL.1_229
.BB.LABEL.1_228:	; bb2433
	mov r5, r21
.BB.LABEL.1_229:	; bb2443
	movhi HIGHW1(#_f4_vd_inv1_ref_tmp), r0, r5
	st.w r21, LOWW(#_f4_vd_inv1_ref_tmp)[r5]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1590
	movhi HIGHW1(#_f4_vq_inv1_ctrl), r0, r5
	ld.w LOWW(#_f4_vq_inv1_ctrl)[r5], r5
	addf.s r2, r5, r2
	jr .BB.LABEL.1_248
.BB.LABEL.1_230:	; if_else_bb2474
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1594
	cmp 0x00000006, r2
	bnz9 .BB.LABEL.1_232
.BB.LABEL.1_231:	; if_then_bb2480
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1597
	movhi HIGHW1(#_f4_vd_inv1_rs), r0, r2
	st.w r0, LOWW(#_f4_vd_inv1_rs)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1598
	movhi HIGHW1(#_f4_vq_inv1_rs), r0, r2
	st.w r0, LOWW(#_f4_vq_inv1_rs)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1601
	movhi HIGHW1(#_f4_vd_inv1_adj_ref), r0, r2
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1602
	movhi HIGHW1(#_f4_vq_inv1_adj_ref), r0, r20
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1601
	ld.w LOWW(#_f4_vd_inv1_adj_ref)[r2], r21
	movhi HIGHW1(#_f4_vd_inv1_ref_tmp), r0, r2
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1602
	ld.w LOWW(#_f4_vq_inv1_adj_ref)[r20], r20
	movhi HIGHW1(#_f4_vq_inv1_ref_tmp), r0, r5
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1601
	st.w r21, LOWW(#_f4_vd_inv1_ref_tmp)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1602
	st.w r20, LOWW(#_f4_vq_inv1_ref_tmp)[r5]
	jr .BB.LABEL.1_251
.BB.LABEL.1_232:	; if_else_bb2483
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1604
	cmp 0x00000007, r2
	bz9 .BB.LABEL.1_234
.BB.LABEL.1_233:	; if_else_bb2559
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1624
	cmp 0x00000008, r2
	bnz9 .BB.LABEL.1_239
.BB.LABEL.1_234:	; if_then_bb2565
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 0
	movhi HIGHW1(#_f4_vd_inv1_emf), r0, r2
	st.w r0, LOWW(#_f4_vd_inv1_emf)[r2]
	movhi HIGHW1(#_f4_wr_inv1_pll_lpf), r0, r2
	movhi HIGHW1(#_f4_fm_inv1), r0, r20
	ld.w LOWW(#_f4_wr_inv1_pll_lpf)[r2], r2
	movhi HIGHW1(#_f4_vq_inv1_emf), r0, r21
	ld.w LOWW(#_f4_fm_inv1)[r20], r20
	movhi HIGHW1(#_f4_rs_inv1), r0, r5
	movhi HIGHW1(#_f4_id_inv1_ref), r0, r6
	ld.w LOWW(#_f4_rs_inv1)[r5], r5
	ld.w LOWW(#_f4_id_inv1_ref)[r6], r6
	movhi HIGHW1(#_f4_vd_inv1_ctrl), r0, r7
	mulf.s r20, r2, r2
	ld.w LOWW(#_f4_vd_inv1_ctrl)[r7], r7
	movhi HIGHW1(#_f4_vd_inv1_rs), r0, r20
	mulf.s r6, r5, r6
	st.w r2, LOWW(#_f4_vq_inv1_emf)[r21]
	movhi HIGHW1(#_f4_iq_inv1_ref), r0, r21
	ld.w LOWW(#_f4_iq_inv1_ref)[r21], r21
	st.w r6, LOWW(#_f4_vd_inv1_rs)[r20]
	movhi HIGHW1(#_f4_vq_inv1_rs), r0, r20
	mulf.s r21, r5, r5
	mov 0x00000000, r21
	addf.s r21, r7, r21
	addf.s r6, r21, r21
	st.w r5, LOWW(#_f4_vq_inv1_rs)[r20]
	movhi HIGHW1(#_f4_vdq_inv1_max), r0, r20
	ld.w LOWW(#_f4_vdq_inv1_max)[r20], r20
	cmpf.s 0x00000007, r21, r20
	trfsr 0
	cmov 0x0000000A, r20, r21, r21
	bnz9 .BB.LABEL.1_237
.BB.LABEL.1_235:	; bb2586
	negf.s r20, r6
	cmpf.s 0x00000004, r21, r6
	trfsr 0
	bnz9 .BB.LABEL.1_237
.BB.LABEL.1_236:	; bb2592
	mov r6, r21
.BB.LABEL.1_237:	; bb2602
	movhi HIGHW1(#_f4_vd_inv1_ref_tmp), r0, r6
	st.w r21, LOWW(#_f4_vd_inv1_ref_tmp)[r6]
	movhi HIGHW1(#_f4_vq_inv1_ctrl), r0, r6
	ld.w LOWW(#_f4_vq_inv1_ctrl)[r6], r6
	addf.s r2, r6, r2
.BB.LABEL.1_238:	; bb2602
	addf.s r5, r2, r2
	jr .BB.LABEL.1_248
.BB.LABEL.1_239:	; if_else_bb2635
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1644
	cmp 0x00000009, r2
	bnz9 .BB.LABEL.1_244
.BB.LABEL.1_240:	; if_then_bb2641
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1647
	movhi HIGHW1(#_f4_vd_inv1_emf), r0, r20
	st.w r0, LOWW(#_f4_vd_inv1_emf)[r20]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1649
	movhi HIGHW1(#_f4_wr_inv1_pll_lpf), r0, r20
	movhi HIGHW1(#_f4_fm_inv1), r0, r21
	ld.w LOWW(#_f4_wr_inv1_pll_lpf)[r20], r20
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1651
	movhi HIGHW1(#_f4_rs_inv1), r0, r5
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1649
	ld.w LOWW(#_f4_fm_inv1)[r21], r21
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1651
	movhi HIGHW1(#_f4_id_inv1_ref), r0, r6
	ld.w LOWW(#_f4_rs_inv1)[r5], r5
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1649
	movhi HIGHW1(#_f4_vq_inv1_emf), r0, r2
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1651
	ld.w LOWW(#_f4_id_inv1_ref)[r6], r6
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1649
	mulf.s r21, r20, r7
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1653
	movhi HIGHW1(#_f4_iq_inv1_ref), r0, r21
	ld.w LOWW(#_f4_iq_inv1_ref)[r21], r21
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1651
	movhi HIGHW1(#_f4_vd_inv1_rs), r0, r20
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1649
	st.w r7, LOWW(#_f4_vq_inv1_emf)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1651
	mulf.s r6, r5, r2
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1657
	movhi HIGHW1(#_f4_vd_inv1_ctrl), r0, r6
	ld.w LOWW(#_f4_vd_inv1_ctrl)[r6], r6
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1653
	mulf.s r21, r5, r5
	mov 0x00000000, r21
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1657
	addf.s r21, r6, r21
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1651
	st.w r2, LOWW(#_f4_vd_inv1_rs)[r20]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1653
	movhi HIGHW1(#_f4_vq_inv1_rs), r0, r20
	st.w r5, LOWW(#_f4_vq_inv1_rs)[r20]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1658
	movhi HIGHW1(#_f4_vdq_inv1_max), r0, r20
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1657
	addf.s r2, r21, r21
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1658
	ld.w LOWW(#_f4_vdq_inv1_max)[r20], r20
	cmpf.s 0x00000007, r21, r20
	trfsr 0
	cmov 0x0000000A, r20, r21, r21
	bnz9 .BB.LABEL.1_243
.BB.LABEL.1_241:	; bb2662
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 0
	negf.s r20, r2
	cmpf.s 0x00000004, r21, r2
	trfsr 0
	bnz9 .BB.LABEL.1_243
.BB.LABEL.1_242:	; bb2668
	mov r2, r21
.BB.LABEL.1_243:	; bb2678
	movhi HIGHW1(#_f4_vd_inv1_ref_tmp), r0, r2
	st.w r21, LOWW(#_f4_vd_inv1_ref_tmp)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1660
	movhi HIGHW1(#_f4_vq_inv1_ctrl), r0, r2
	ld.w LOWW(#_f4_vq_inv1_ctrl)[r2], r2
	addf.s r7, r2, r2
	br9 .BB.LABEL.1_238
.BB.LABEL.1_244:	; if_else_bb2711
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1667
	movhi HIGHW1(#_f4_rs_inv1), r0, r20
	movhi HIGHW1(#_f4_id_inv1_ref), r0, r21
	ld.w LOWW(#_f4_rs_inv1)[r20], r20
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1669
	movhi HIGHW1(#_f4_iq_inv1_ref), r0, r5
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1667
	ld.w LOWW(#_f4_id_inv1_ref)[r21], r21
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1673
	movhi HIGHW1(#_f4_vd_inv1_ctrl), r0, r7
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1669
	ld.w LOWW(#_f4_iq_inv1_ref)[r5], r5
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1667
	movhi HIGHW1(#_f4_vd_inv1_rs), r0, r2
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1673
	ld.w LOWW(#_f4_vd_inv1_ctrl)[r7], r7
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1669
	movhi HIGHW1(#_f4_vq_inv1_rs), r0, r6
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1667
	mulf.s r21, r20, r21
	st.w r21, LOWW(#_f4_vd_inv1_rs)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1669
	mulf.s r5, r20, r2
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1673
	addf.s r21, r7, r21
	movhi HIGHW1(#_f4_vd_inv1_plid), r0, r20
	ld.w LOWW(#_f4_vd_inv1_plid)[r20], r5
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1674
	movhi HIGHW1(#_f4_vdq_inv1_max), r0, r20
	ld.w LOWW(#_f4_vdq_inv1_max)[r20], r20
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1669
	st.w r2, LOWW(#_f4_vq_inv1_rs)[r6]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1673
	addf.s r5, r21, r21
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1674
	cmpf.s 0x00000007, r21, r20
	trfsr 0
	cmov 0x0000000A, r20, r21, r21
	bnz9 .BB.LABEL.1_247
.BB.LABEL.1_245:	; bb2729
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 0
	negf.s r20, r5
	cmpf.s 0x00000004, r21, r5
	trfsr 0
	bnz9 .BB.LABEL.1_247
.BB.LABEL.1_246:	; bb2735
	mov r5, r21
.BB.LABEL.1_247:	; bb2745
	movhi HIGHW1(#_f4_vd_inv1_ref_tmp), r0, r5
	st.w r21, LOWW(#_f4_vd_inv1_ref_tmp)[r5]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1676
	movhi HIGHW1(#_f4_vq_inv1_ctrl), r0, r5
	ld.w LOWW(#_f4_vq_inv1_ctrl)[r5], r5
	movhi HIGHW1(#_f4_vq_inv1_plid), r0, r6
	ld.w LOWW(#_f4_vq_inv1_plid)[r6], r6
	addf.s r2, r5, r2
	addf.s r6, r2, r2
.BB.LABEL.1_248:	; bb2745
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 0
	cmpf.s 0x00000007, r2, r20
	trfsr 0
	bnz9 .BB.LABEL.1_250
.BB.LABEL.1_249:	; bb2759
	negf.s r20, r20
	cmpf.s 0x00000004, r2, r20
	trfsr 0
	cmov 0x0000000A, r2, r20, r20
.BB.LABEL.1_250:	; bb2775
	movhi HIGHW1(#_f4_vq_inv1_ref_tmp), r0, r2
	st.w r20, LOWW(#_f4_vq_inv1_ref_tmp)[r2]
.BB.LABEL.1_251:	; if_break_bb2798
	movhi HIGHW1(#_f4_cos_inv1_wtcd), r0, r2
	movhi HIGHW1(#_f4_sin_inv1_wtcd), r0, r5
	ld.w LOWW(#_f4_cos_inv1_wtcd)[r2], r2
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1692
	movhi HIGHW1(#_u1_flag_inv1_modevctrl), r0, r8
	ld.w LOWW(#_f4_sin_inv1_wtcd)[r5], r5
	movhi HIGHW1(#_f4_v_gamma_inv1_ref_tmp), r0, r6
	ld.bu LOWW(#_u1_flag_inv1_modevctrl)[r8], r8
	movhi HIGHW1(#_f4_v_delta_inv1_ref_tmp), r0, r7
	mulf.s r21, r2, r9
	mulf.s r20, r5, r10
	mulf.s r20, r2, r2
	cmp 0x00000001, r8
	mulf.s r21, r5, r5
	addf.s r10, r9, r22
	subf.s r5, r2, r23
	st.w r22, LOWW(#_f4_v_gamma_inv1_ref_tmp)[r6]
	st.w r23, LOWW(#_f4_v_delta_inv1_ref_tmp)[r7]
	bnz9 .BB.LABEL.1_254
.BB.LABEL.1_252:	; bb2803
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 0
	movhi HIGHW1(#_u1_flag_status_inv1_idq_ctrl_pwm), r0, r2
	ld.bu LOWW(#_u1_flag_status_inv1_idq_ctrl_pwm)[r2], r2
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.1_254
.BB.LABEL.1_253:	; if_then_bb2816
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1702
	mulf.s r21, r21, r22
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1704
	mulf.s r20, r20, r23
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1706
	addf.s r23, r22, r6
	jarl _sqrtf, r31
	movhi HIGHW1(#_f4_vdq_inv1_ref), r0, r22
	st.w r10, LOWW(#_f4_vdq_inv1_ref)[r22]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1710
	movhi HIGHW1(#_f4_vdc_inv1_ad), r0, r22
	ld.w LOWW(#_f4_vdc_inv1_ad)[r22], r22
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1713
	movhi HIGHW1(#_f4_vd_inv1_ref), r0, r5
	st.w r21, LOWW(#_f4_vd_inv1_ref)[r5]
	mov 0x3F3504E6, r21
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1710
	mulf.s r21, r22, r21
	movhi HIGHW1(#_f4_k_inv1_vdq_max), r0, r23
	ld.w LOWW(#_f4_k_inv1_vdq_max)[r23], r23
	movhi HIGHW1(#_f4_vdq_inv1_max), r0, r2
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1714
	movhi HIGHW1(#_f4_vq_inv1_ref), r0, r22
	st.w r20, LOWW(#_f4_vq_inv1_ref)[r22]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1710
	mulf.s r23, r21, r21
	st.w r21, LOWW(#_f4_vdq_inv1_max)[r2]
	jr .BB.LABEL.1_281
.BB.LABEL.1_254:	; if_else_bb2835
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1719
	movhi HIGHW1(#_u1_flag_inv1_modevctrl), r0, r2
	ld.bu LOWW(#_u1_flag_inv1_modevctrl)[r2], r2
	cmp 0x00000000, r2
	bnz17 .BB.LABEL.1_281
.BB.LABEL.1_255:	; if_then_bb2841
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1733
	mulf.s r21, r21, r2
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1735
	mulf.s r20, r20, r5
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1737
	addf.s r5, r2, r6
	jarl _sqrtf, r31
	movhi HIGHW1(#_f4_vdq_inv1_ref), r0, r2
	st.w r10, LOWW(#_f4_vdq_inv1_ref)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1741
	movhi HIGHW1(#_f4_vdc_inv1_ad), r0, r2
	ld.w LOWW(#_f4_vdc_inv1_ad)[r2], r2
	mov 0x3F3504E6, r8
	movhi HIGHW1(#_f4_k_inv1_vdq_max), r0, r5
	ld.w LOWW(#_f4_k_inv1_vdq_max)[r5], r5
	mulf.s r8, r2, r2
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1745
	movhi HIGHW1(#_u1_flag_select_inv1_fai_ctrl), r0, r7
	ld.bu LOWW(#_u1_flag_select_inv1_fai_ctrl)[r7], r7
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1741
	movhi HIGHW1(#_f4_vdq_inv1_max), r0, r6
	mulf.s r5, r2, r2
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1745
	cmp 0x00000000, r7
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1741
	st.w r2, LOWW(#_f4_vdq_inv1_max)[r6]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1745
	bz17 .BB.LABEL.1_269
.BB.LABEL.1_256:	; bb2864
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 0
	movhi HIGHW1(#_u1_flag_inv1_adj), r0, r5
	ld.bu LOWW(#_u1_flag_inv1_adj)[r5], r5
	cmp 0x00000000, r5
	bnz17 .BB.LABEL.1_269
.BB.LABEL.1_257:	; if_else_bb2957
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1811
	movhi HIGHW1(#_f4_v_gamma_inv1_ref), r0, r20
	st.w r22, LOWW(#_f4_v_gamma_inv1_ref)[r20]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1813
	movhi HIGHW1(#_f4_vdq_inv1_ref), r0, r20
	ld.w LOWW(#_f4_vdq_inv1_ref)[r20], r20
	cmpf.s 0x00000007, r20, r2
	trfsr 0
	bz9 .BB.LABEL.1_267
.BB.LABEL.1_258:	; if_then_bb2964
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1815
	movhi HIGHW1(#_u1_flag_inv1_status_vdq_max), r0, r20
	mov 0x00000001, r21
	st.b r21, LOWW(#_u1_flag_inv1_status_vdq_max)[r20]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1819
	mulf.s r2, r2, r20
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1817
	mulf.s r22, r22, r21
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1821
	subf.s r21, r20, r6
	mov 0x00000000, r20
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1822
	cmpf.s 0x00000004, r6, r20
	trfsr 0
	bnz9 .BB.LABEL.1_263
.BB.LABEL.1_259:	; if_then_bb2978
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1826
	cmpf.s 0x00000007, r22, r20
	trfsr 0
	bnz9 .BB.LABEL.1_261
.BB.LABEL.1_260:	; if_else_bb2985
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1834
	negf.s r2, r2
.BB.LABEL.1_261:	; if_break_bb2988
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 0
	movhi HIGHW1(#_f4_v_gamma_inv1_ref), r0, r21
	st.w r2, LOWW(#_f4_v_gamma_inv1_ref)[r21]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1837
	movhi HIGHW1(#_u1_flag_enable_inv1_kictrl), r0, r21
	ld.bu LOWW(#_u1_flag_enable_inv1_kictrl)[r21], r21
	mov r20, r6
	cmp 0x00000001, r21
	bnz9 .BB.LABEL.1_263
.BB.LABEL.1_262:	; if_then_bb2994
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1839
	movhi HIGHW1(#_f4_v_gamma_inv1_emf), r0, r21
	movhi HIGHW1(#_f4_v_gamma_inv1_rs), r0, r5
	ld.w LOWW(#_f4_v_gamma_inv1_emf)[r21], r21
	movhi HIGHW1(#_f4_v_gamma_inv1_ctrlp), r0, r6
	ld.w LOWW(#_f4_v_gamma_inv1_rs)[r5], r5
	movhi HIGHW1(#_f4_v_gamma_inv1_ctrli), r0, r8
	ld.w LOWW(#_f4_v_gamma_inv1_ctrlp)[r6], r7
	mov 0x00000000, r6
	addf.s r5, r21, r21
	subf.s r21, r2, r2
	subf.s r7, r2, r2
	st.w r2, LOWW(#_f4_v_gamma_inv1_ctrli)[r8]
.BB.LABEL.1_263:	; if_break_bb3005
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1846
	jarl _sqrtf, r31
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1847
	cmpf.s 0x00000007, r23, r20
	trfsr 0
	bnz9 .BB.LABEL.1_265
.BB.LABEL.1_264:	; if_else_bb3014
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1853
	negf.s r10, r10
.BB.LABEL.1_265:	; if_break_bb3017
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1856
	movhi HIGHW1(#_f4_vdq_inv1_max), r0, r2
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1858
	movhi HIGHW1(#_u1_flag_enable_inv1_kictrl), r0, r21
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1856
	ld.w LOWW(#_f4_vdq_inv1_max)[r2], r2
	movhi HIGHW1(#_f4_vdq_inv1_ref), r0, r20
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1858
	ld.bu LOWW(#_u1_flag_enable_inv1_kictrl)[r21], r21
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1856
	st.w r2, LOWW(#_f4_vdq_inv1_ref)[r20]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1858
	cmp 0x00000001, r21
	bnz9 .BB.LABEL.1_268
.BB.LABEL.1_266:	; if_then_bb3024
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1860
	movhi HIGHW1(#_f4_v_delta_inv1_rs), r0, r2
	movhi HIGHW1(#_f4_v_delta_inv1_emf), r0, r20
	ld.w LOWW(#_f4_v_delta_inv1_rs)[r2], r2
	movhi HIGHW1(#_f4_v_delta_inv1_ctrlp), r0, r21
	ld.w LOWW(#_f4_v_delta_inv1_emf)[r20], r20
	movhi HIGHW1(#_f4_v_delta_inv1_ctrli), r0, r23
	ld.w LOWW(#_f4_v_delta_inv1_ctrlp)[r21], r21
	addf.s r20, r2, r2
	subf.s r2, r10, r2
	subf.s r21, r2, r2
	st.w r2, LOWW(#_f4_v_delta_inv1_ctrli)[r23]
	br9 .BB.LABEL.1_268
.BB.LABEL.1_267:	; if_else_bb3034
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1867
	movhi HIGHW1(#_u1_flag_inv1_status_vdq_max), r0, r2
	st.b r0, LOWW(#_u1_flag_inv1_status_vdq_max)[r2]
	mov r23, r10
.BB.LABEL.1_268:	; if_break_bb3036
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1871
	movhi HIGHW1(#_f4_cos_inv1_wtcd), r0, r2
	ld.w LOWW(#_f4_cos_inv1_wtcd)[r2], r2
	movhi HIGHW1(#_f4_v_gamma_inv1_ref), r0, r20
	movhi HIGHW1(#_f4_sin_inv1_wtcd), r0, r21
	ld.w LOWW(#_f4_v_gamma_inv1_ref)[r20], r20
	movhi HIGHW1(#_f4_vd_inv1_ref), r0, r5
	ld.w LOWW(#_f4_sin_inv1_wtcd)[r21], r21
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1873
	mulf.s r10, r2, r6
	movhi HIGHW1(#_f4_vq_inv1_ref), r0, r7
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1871
	mulf.s r20, r2, r2
	mulf.s r10, r21, r8
	subf.s r8, r2, r2
	st.w r2, LOWW(#_f4_vd_inv1_ref)[r5]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1873
	mulf.s r20, r21, r2
	addf.s r6, r2, r2
	st.w r2, LOWW(#_f4_vq_inv1_ref)[r7]
	jr .BB.LABEL.1_281
.BB.LABEL.1_269:	; if_then_bb2877
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1747
	movhi HIGHW1(#_f4_vd_inv1_ref), r0, r5
	st.w r21, LOWW(#_f4_vd_inv1_ref)[r5]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1749
	movhi HIGHW1(#_f4_vdq_inv1_ref), r0, r5
	ld.w LOWW(#_f4_vdq_inv1_ref)[r5], r5
	cmpf.s 0x00000007, r5, r2
	trfsr 0
	bz17 .BB.LABEL.1_280
.BB.LABEL.1_270:	; if_then_bb2884
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1752
	movhi HIGHW1(#_u1_flag_inv1_status_vdq_max), r0, r5
	mov 0x00000001, r6
	st.b r6, LOWW(#_u1_flag_inv1_status_vdq_max)[r5]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1754
	movhi HIGHW1(#_f4_vd_inv1_ref), r0, r5
	ld.w LOWW(#_f4_vd_inv1_ref)[r5], r6
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1756
	mulf.s r2, r2, r7
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1754
	ld.w LOWW(#_f4_vd_inv1_ref)[r5], r5
	mov 0x00000000, r21
	mulf.s r5, r6, r5
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1758
	subf.s r5, r7, r6
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1759
	cmpf.s 0x00000004, r6, r21
	trfsr 0
	bnz9 .BB.LABEL.1_274
.BB.LABEL.1_271:	; if_then_bb2898
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1763
	movhi HIGHW1(#_f4_vd_inv1_ref), r0, r5
	ld.w LOWW(#_f4_vd_inv1_ref)[r5], r5
	cmpf.s 0x00000007, r5, r21
	trfsr 0
	bz9 .BB.LABEL.1_276
.BB.LABEL.1_272:	; if_then_bb2903
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 0
	movhi HIGHW1(#_f4_vd_inv1_ref), r0, r5
	st.w r2, LOWW(#_f4_vd_inv1_ref)[r5]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1774
	movhi HIGHW1(#_u1_flag_enable_inv1_kictrl), r0, r2
	ld.bu LOWW(#_u1_flag_enable_inv1_kictrl)[r2], r2
	mov r21, r6
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.1_274
.BB.LABEL.1_273:	; if_then_bb2914
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1776
	movhi HIGHW1(#_f4_vd_inv1_emf), r0, r5
	movhi HIGHW1(#_f4_vd_inv1_rs), r0, r6
	ld.w LOWW(#_f4_vd_inv1_emf)[r5], r5
	movhi HIGHW1(#_f4_vd_inv1_ref), r0, r2
	ld.w LOWW(#_f4_vd_inv1_rs)[r6], r7
	movhi HIGHW1(#_f4_vd_inv1_ctrlp), r0, r6
	ld.w LOWW(#_f4_vd_inv1_ref)[r2], r2
	movhi HIGHW1(#_f4_vd_inv1_ctrli), r0, r9
	ld.w LOWW(#_f4_vd_inv1_ctrlp)[r6], r8
	mov 0x00000000, r6
	addf.s r7, r5, r5
	subf.s r5, r2, r2
	subf.s r8, r2, r2
	st.w r2, LOWW(#_f4_vd_inv1_ctrli)[r9]
.BB.LABEL.1_274:	; if_break_bb2925
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1783
	jarl _sqrtf, r31
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1784
	cmpf.s 0x00000007, r20, r21
	trfsr 0
	bz9 .BB.LABEL.1_277
.BB.LABEL.1_275:	; if_then_bb2932
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1786
	movhi HIGHW1(#_f4_vq_inv1_ref), r0, r20
	st.w r10, LOWW(#_f4_vq_inv1_ref)[r20]
	br9 .BB.LABEL.1_278
.BB.LABEL.1_276:	; if_else_bb2905
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1771
	negf.s r2, r2
	br9 .BB.LABEL.1_272
.BB.LABEL.1_277:	; if_else_bb2934
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1790
	negf.s r10, r20
	movhi HIGHW1(#_f4_vq_inv1_ref), r0, r2
	st.w r20, LOWW(#_f4_vq_inv1_ref)[r2]
.BB.LABEL.1_278:	; if_break_bb2937
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1793
	movhi HIGHW1(#_f4_vdq_inv1_max), r0, r20
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1795
	movhi HIGHW1(#_u1_flag_enable_inv1_kictrl), r0, r5
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1793
	ld.w LOWW(#_f4_vdq_inv1_max)[r20], r20
	movhi HIGHW1(#_f4_vdq_inv1_ref), r0, r2
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1795
	ld.bu LOWW(#_u1_flag_enable_inv1_kictrl)[r5], r5
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1793
	st.w r20, LOWW(#_f4_vdq_inv1_ref)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1795
	cmp 0x00000001, r5
	bnz9 .BB.LABEL.1_281
.BB.LABEL.1_279:	; if_then_bb2944
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1797
	movhi HIGHW1(#_f4_vq_inv1_rs), r0, r2
	movhi HIGHW1(#_f4_vq_inv1_emf), r0, r5
	ld.w LOWW(#_f4_vq_inv1_rs)[r2], r2
	movhi HIGHW1(#_f4_vq_inv1_ref), r0, r20
	ld.w LOWW(#_f4_vq_inv1_emf)[r5], r5
	movhi HIGHW1(#_f4_vq_inv1_ctrlp), r0, r6
	ld.w LOWW(#_f4_vq_inv1_ref)[r20], r20
	movhi HIGHW1(#_f4_vq_inv1_ctrli), r0, r7
	ld.w LOWW(#_f4_vq_inv1_ctrlp)[r6], r6
	addf.s r5, r2, r2
	subf.s r2, r20, r20
	subf.s r6, r20, r20
	st.w r20, LOWW(#_f4_vq_inv1_ctrli)[r7]
	br9 .BB.LABEL.1_281
.BB.LABEL.1_280:	; if_else_bb2954
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1805
	movhi HIGHW1(#_u1_flag_inv1_status_vdq_max), r0, r2
	st.b r0, LOWW(#_u1_flag_inv1_status_vdq_max)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1806
	movhi HIGHW1(#_f4_vq_inv1_ref), r0, r2
	st.w r20, LOWW(#_f4_vq_inv1_ref)[r2]
.BB.LABEL.1_281:	; if_break_bb3054
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1879
	movhi HIGHW1(#_f4_vd_inv1_ref), r0, r5
	ld.w LOWW(#_f4_vd_inv1_ref)[r5], r6
	movhi HIGHW1(#_f4_vq_inv1_ref), r0, r8
	movhi HIGHW1(#_f4_cos_inv1_wtcd), r0, r2
	ld.w LOWW(#_f4_vq_inv1_ref)[r8], r9
	movhi HIGHW1(#_f4_sin_inv1_wtcd), r0, r7
	ld.w LOWW(#_f4_cos_inv1_wtcd)[r2], r2
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1881
	movhi HIGHW1(#_f4_v_delta_inv1_ref), r0, r11
	ld.w LOWW(#_f4_vd_inv1_ref)[r5], r5
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1879
	movhi HIGHW1(#_f4_v_gamma_inv1_ref), r0, r10
	ld.w LOWW(#_f4_sin_inv1_wtcd)[r7], r7
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1881
	ld.w LOWW(#_f4_vq_inv1_ref)[r8], r8
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1879
	mulf.s r6, r2, r6
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1881
	mulf.s r5, r7, r5
	mulf.s r8, r2, r2
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1879
	mulf.s r9, r7, r9
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1891
	movhi HIGHW1(#_f4_m_inv1_lpf), r0, r7
	ld.w LOWW(#_f4_m_inv1_lpf)[r7], r8
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1881
	subf.s r5, r2, r2
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1889
	movhi HIGHW1(#_f4_dvdc_inv1_ad), r0, r5
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1879
	addf.s r9, r6, r6
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1889
	ld.w LOWW(#_f4_dvdc_inv1_ad)[r5], r5
	mov 0x3FB504F3, r9
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1881
	st.w r2, LOWW(#_f4_v_delta_inv1_ref)[r11]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1889
	movhi HIGHW1(#_f4_vdq_inv1_ref), r0, r2
	ld.w LOWW(#_f4_vdq_inv1_ref)[r2], r2
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1879
	st.w r6, LOWW(#_f4_v_gamma_inv1_ref)[r10]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1889
	movhi HIGHW1(#_f4_m_inv1_ref), r0, r6
	mulf.s r9, r2, r2
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1892
	movhi HIGHW1(#_f4_wclpf_inv1_m), r0, r9
	ld.w LOWW(#_f4_wclpf_inv1_m)[r9], r9
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1889
	mulf.s r5, r2, r2
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1892
	movhi HIGHW1(#_f4_ts_inv1_ctrl), r0, r5
	ld.w LOWW(#_f4_ts_inv1_ctrl)[r5], r5
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1889
	st.w r2, LOWW(#_f4_m_inv1_ref)[r6]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1891
	subf.s r8, r2, r2
	movhi 0x00003F80, r0, r6
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1892
	mulf.s r2, r9, r2
	mulf.s r5, r2, r2
	movhi 0x00003F80, r0, r5
	addf.s r2, r8, r2
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1896
	cmpf.s 0x00000004, r6, r2
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1892
	st.w r2, LOWW(#_f4_m_inv1_lpf)[r7]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1896
	trfsr 0
	bnz9 .BB.LABEL.1_285
.BB.LABEL.1_282:	; if_then_bb3088
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 0
	movhi 0x0000BF80, r0, r5
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1903
	addf.s r5, r2, r5
	mov 0x00000000, r8
	movhi 0x00004110, r0, r9
	cvtf.sd r5, r6
	mulf.d r8, r6, r6
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1912
	mov #_f4_k_pwm_tbl, r8
	movea 0x000001FF, r0, r9
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1903
	trncf.duw r6, r5
	movea 0x00007FFF, r0, r6
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1905
	cmp r6, r5
	cmov 0x0000000B, r6, r5, r5
	movhi HIGHW1(#_u4_n_k_inv1_modu), r0, r6
	st.w r5, LOWW(#_u4_n_k_inv1_modu)[r6]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1908
	mov r5, r6
	shr 0x00000006, r6
	andi 0x000001FF, r6, r6
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1912
	mov r6, r7
	shl 0x00000002, r7
	add r8, r7
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1914
	add 0x00000001, r6
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1912
	ld.w 0x00000000[r7], r8
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1915
	cmp r9, r6
	cmov 0x00000009, 0x00000000, r5, r5
	bnc9 .BB.LABEL.1_284
.BB.LABEL.1_283:	; if_then_bb3115
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1917
	ld.w 0x00000004[r7], r6
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1910
	andi 0x0000003F, r5, r5
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1919
	cvtf.uws r5, r5
	movhi 0x00003C80, r0, r7
	subf.s r6, r8, r6
	mulf.s r5, r6, r5
	mulf.s r7, r5, r5
.BB.LABEL.1_284:	; if_break_bb3127
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1927
	subf.s r5, r8, r6
	movhi HIGHW1(#_f4_k_inv1_modu), r0, r5
	st.w r6, LOWW(#_f4_k_inv1_modu)[r5]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1928
	movhi HIGHW1(#_f4_k_inv1_modu_max), r0, r5
	ld.w LOWW(#_f4_k_inv1_modu_max)[r5], r5
	cmpf.s 0x00000004, r5, r6
	trfsr 0
	bnz9 .BB.LABEL.1_286
.BB.LABEL.1_285:	; if_break_bb3141.PartialDrain
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 0
	movhi HIGHW1(#_f4_k_inv1_modu), r0, r6
	st.w r5, LOWW(#_f4_k_inv1_modu)[r6]
	mov r5, r6
.BB.LABEL.1_286:	; if_break_bb3141
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1939
	movhi HIGHW1(#_u1_flag_enable_inv1_dk_modu), r0, r5
	ld.bu LOWW(#_u1_flag_enable_inv1_dk_modu)[r5], r5
	cmp 0x00000001, r5
	bnz9 .BB.LABEL.1_289
.BB.LABEL.1_287:	; if_then_bb3147
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 0
	movhi 0x00003F80, r0, r5
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1941
	cmpf.s 0x00000007, r6, r5
	trfsr 0
	bz9 .BB.LABEL.1_289
.BB.LABEL.1_288:	; if_then_bb3152
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1944
	recipf.s r6, r5
	movhi HIGHW1(#_f4_dk_inv1_modu_kp), r0, r6
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1945
	movhi HIGHW1(#_f4_dk_inv1_modu_ki), r0, r7
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1944
	st.w r5, LOWW(#_f4_dk_inv1_modu_kp)[r6]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1945
	movhi HIGHW1(#_f4_dk_inv1_modu_kicmp), r0, r6
	ld.w LOWW(#_f4_dk_inv1_modu_kicmp)[r6], r6
	mulf.s r6, r5, r5
	st.w r5, LOWW(#_f4_dk_inv1_modu_ki)[r7]
	br9 .BB.LABEL.1_290
.BB.LABEL.1_289:	; if_else_bb3160
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 0
	movhi 0x00003F80, r0, r5
	movhi HIGHW1(#_f4_dk_inv1_modu_kp), r0, r6
	st.w r5, LOWW(#_f4_dk_inv1_modu_kp)[r6]
	movhi HIGHW1(#_f4_dk_inv1_modu_ki), r0, r6
	st.w r5, LOWW(#_f4_dk_inv1_modu_ki)[r6]
.BB.LABEL.1_290:	; if_break_bb3161
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1963
	movhi HIGHW1(#_u1_flag_inv1_modevctrl), r0, r5
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1965
	movhi HIGHW1(#_u1_flag_inv1_adj), r0, r7
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1963
	ld.b LOWW(#_u1_flag_inv1_modevctrl)[r5], r5
	movhi HIGHW1(#_u1_flag_inv1_modevctrl_tmp), r0, r6
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1965
	ld.bu LOWW(#_u1_flag_inv1_adj)[r7], r7
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1963
	st.b r5, LOWW(#_u1_flag_inv1_modevctrl_tmp)[r6]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1965
	cmp 0x00000000, r7
	bnz17 .BB.LABEL.1_310
.BB.LABEL.1_291:	; if_then_bb3168
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1968
	movhi HIGHW1(#_u1_flag_inv1_modevctrl), r0, r5
	ld.bu LOWW(#_u1_flag_inv1_modevctrl)[r5], r5
	cmp 0x00000000, r5
	bnz9 .BB.LABEL.1_301
.BB.LABEL.1_292:	; if_then_bb3174
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1971
	movhi HIGHW1(#_f4_lev_m_inv1_1pulse), r0, r5
	ld.w LOWW(#_f4_lev_m_inv1_1pulse)[r5], r5
	movhi HIGHW1(#_u2_cnt_inv1_vctrlmode), r0, r6
	ld.hu LOWW(#_u2_cnt_inv1_vctrlmode)[r6], r6
	cmpf.s 0x00000007, r2, r5
	trfsr 0
	bz9 .BB.LABEL.1_299
.BB.LABEL.1_293:	; if_then_bb3180
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1973
	add 0x00000001, r6
	movhi HIGHW1(#_u2_cnt_inv1_vctrlmode), r0, r2
	st.h r6, LOWW(#_u2_cnt_inv1_vctrlmode)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1974
	andi 0x0000FFFF, r6, r2
	movhi HIGHW1(#_u2_cnt_inv1_1pulsemode), r0, r6
	ld.hu LOWW(#_u2_cnt_inv1_1pulsemode)[r6], r6
	cmp r6, r2
	bnh9 .BB.LABEL.1_309
.BB.LABEL.1_294:	; bb3189
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 0
	movhi HIGHW1(#_u1_flag_enable_inv1_1pulse), r0, r2
	ld.bu LOWW(#_u1_flag_enable_inv1_1pulse)[r2], r2
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.1_309
.BB.LABEL.1_295:	; if_then_bb3202
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1976
	movhi HIGHW1(#_u4_cnt_idq_inv1_ad_ave), r0, r2
	ld.w LOWW(#_u4_cnt_idq_inv1_ad_ave)[r2], r2
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.1_309
.BB.LABEL.1_296:	; if_then_bb3207
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1978
	movhi HIGHW1(#_u1_flag_inv1_modevctrl), r0, r2
	mov 0x00000001, r6
	st.b r6, LOWW(#_u1_flag_inv1_modevctrl)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1980
	movhi HIGHW1(#_u2_cnt_inv1_vctrlmode), r0, r2
	st.h r0, LOWW(#_u2_cnt_inv1_vctrlmode)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1982
	movhi HIGHW1(#_u1_cnt_1pulse_inv1_hw), r0, r2
	st.b r0, LOWW(#_u1_cnt_1pulse_inv1_hw)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1984
	movhi HIGHW1(#_u1_cnt_1pulse_inv1_hw_max), r0, r2
	ld.bu LOWW(#_u1_cnt_1pulse_inv1_hw_max)[r2], r2
	cmp 0x00000000, r2
	movhi HIGHW1(#_u1_flag_1pulse_inv1_mode), r0, r2
	bnz9 .BB.LABEL.1_298
.BB.LABEL.1_297:	; if_else_bb3214
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1991
	st.b r6, LOWW(#_u1_flag_1pulse_inv1_mode)[r2]
	br9 .BB.LABEL.1_309
.BB.LABEL.1_298:	; if_then_bb3213
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 1986
	st.b r0, LOWW(#_u1_flag_1pulse_inv1_mode)[r2]
	br9 .BB.LABEL.1_309
.BB.LABEL.1_299:	; if_else_bb3219
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2001
	cmp 0x00000000, r6
	bz9 .BB.LABEL.1_309
.BB.LABEL.1_300:	; if_then_bb3225
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2003
	add 0xFFFFFFFF, r6
	movhi HIGHW1(#_u2_cnt_inv1_vctrlmode), r0, r2
	st.h r6, LOWW(#_u2_cnt_inv1_vctrlmode)[r2]
	br9 .BB.LABEL.1_309
.BB.LABEL.1_301:	; if_else_bb3231
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2011
	movhi HIGHW1(#_u1_flag_inv1_modetiming), r0, r5
	ld.bu LOWW(#_u1_flag_inv1_modetiming)[r5], r5
	cmp 0x00000001, r5
	bnz9 .BB.LABEL.1_311
.BB.LABEL.1_302:	; if_then_bb3237
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2014
	movhi HIGHW1(#_f4_lev_m_inv1_svpwm), r0, r5
	ld.w LOWW(#_f4_lev_m_inv1_svpwm)[r5], r5
	movhi HIGHW1(#_u2_cnt_inv1_vctrlmode), r0, r6
	ld.hu LOWW(#_u2_cnt_inv1_vctrlmode)[r6], r6
	cmpf.s 0x00000007, r5, r2
	trfsr 0
	bz9 .BB.LABEL.1_305
.BB.LABEL.1_303:	; if_then_bb3243
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2016
	add 0x00000001, r6
	movhi HIGHW1(#_u2_cnt_inv1_vctrlmode), r0, r2
	st.h r6, LOWW(#_u2_cnt_inv1_vctrlmode)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2017
	movhi HIGHW1(#_u2_cnt_inv1_svpwmmode), r0, r2
	ld.hu LOWW(#_u2_cnt_inv1_svpwmmode)[r2], r2
	andi 0x0000FFFF, r6, r6
	cmp r2, r6
	bnh9 .BB.LABEL.1_307
.BB.LABEL.1_304:	; if_then_bb3253
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2019
	movhi HIGHW1(#_u1_flag_inv1_modevctrl), r0, r6
	st.b r0, LOWW(#_u1_flag_inv1_modevctrl)[r6]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2020
	movhi HIGHW1(#_u2_cnt_inv1_vctrlmode), r0, r6
	st.h r0, LOWW(#_u2_cnt_inv1_vctrlmode)[r6]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2022
	movhi HIGHW1(#_u1_cnt_1pulse_inv1_hw_max), r0, r6
	ld.bu LOWW(#_u1_cnt_1pulse_inv1_hw_max)[r6], r6
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2028
	movhi HIGHW1(#_u1_flag_1pulse_inv1_mode), r0, r2
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2031
	movhi HIGHW1(#_u1_cnt_1pulse_inv1_hw), r0, r5
	st.b r0, LOWW(#_u1_cnt_1pulse_inv1_hw)[r5]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2022
	cmp 0x00000000, r6
	setf 0x00000002, r6
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2028
	st.b r6, LOWW(#_u1_flag_1pulse_inv1_mode)[r2]
	br9 .BB.LABEL.1_307
.BB.LABEL.1_305:	; if_else_bb3264
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2037
	cmp 0x00000000, r6
	bz9 .BB.LABEL.1_307
.BB.LABEL.1_306:	; if_then_bb3270
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2039
	add 0xFFFFFFFF, r6
	movhi HIGHW1(#_u2_cnt_inv1_vctrlmode), r0, r2
	st.h r6, LOWW(#_u2_cnt_inv1_vctrlmode)[r2]
.BB.LABEL.1_307:	; if_break_bb3275
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2044
	movhi HIGHW1(#_u1_flag_enable_inv1_1pulse), r0, r2
	ld.bu LOWW(#_u1_flag_enable_inv1_1pulse)[r2], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.1_309
.BB.LABEL.1_308:	; if_then_bb3281
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2046
	movhi HIGHW1(#_u1_flag_inv1_modevctrl), r0, r2
	st.b r0, LOWW(#_u1_flag_inv1_modevctrl)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2047
	movhi HIGHW1(#_u2_cnt_inv1_vctrlmode), r0, r2
	st.h r0, LOWW(#_u2_cnt_inv1_vctrlmode)[r2]
.BB.LABEL.1_309:	; if_break_bb3283
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 0
	movhi HIGHW1(#_u1_flag_inv1_modetiming), r0, r2
	st.b r0, LOWW(#_u1_flag_inv1_modetiming)[r2]
	br9 .BB.LABEL.1_311
.BB.LABEL.1_310:	; if_else_bb3287
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2058
	movhi HIGHW1(#_u1_flag_inv1_modevctrl), r0, r2
	st.b r0, LOWW(#_u1_flag_inv1_modevctrl)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2059
	movhi HIGHW1(#_u2_cnt_inv1_vctrlmode), r0, r2
	st.h r0, LOWW(#_u2_cnt_inv1_vctrlmode)[r2]
.BB.LABEL.1_311:	; if_break_bb3288
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2063
	movhi HIGHW1(#_u1_pwm_inv1_status), r0, r2
	ld.bu LOWW(#_u1_pwm_inv1_status)[r2], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.1_313
.BB.LABEL.1_312:	; if_then_bb3294
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2065
	movhi HIGHW1(#_u1_cnt_1pulse_inv1_hw_max), r0, r2
	ld.bu LOWW(#_u1_cnt_1pulse_inv1_hw_max)[r2], r2
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2071
	movhi HIGHW1(#_u1_flag_1pulse_inv1_mode), r0, r5
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2074
	movhi HIGHW1(#_u1_cnt_1pulse_inv1_hw), r0, r6
	st.b r0, LOWW(#_u1_cnt_1pulse_inv1_hw)[r6]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2065
	cmp 0x00000000, r2
	setf 0x00000002, r2
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2071
	st.b r2, LOWW(#_u1_flag_1pulse_inv1_mode)[r5]
.BB.LABEL.1_313:	; if_break_bb3304
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2084
	cmp 0x00000000, r7
	bz9 .BB.LABEL.1_316
.BB.LABEL.1_314:	; if_else_bb3315
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2090
	addi 0xFFFFFFF9, r7, r2
	andi 0x000000FF, r2, r2
	cmp 0x00000002, r2
	bl9 .BB.LABEL.1_316
.BB.LABEL.1_315:	; if_else_bb3315
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 0
	cmp 0x00000009, r7
	mov 0x00000000, r7
	bnz9 .BB.LABEL.1_317
.BB.LABEL.1_316:	; if_else_bb3346
	movhi HIGHW1(#_f4_wr_inv1_pll_lpf), r0, r7
	ld.w LOWW(#_f4_wr_inv1_pll_lpf)[r7], r7
	movhi 0x00003FC0, r0, r2
	movhi HIGHW1(#_f4_ts_inv1_ctrl), r0, r5
	ld.w LOWW(#_f4_ts_inv1_ctrl)[r5], r5
	mulf.s r2, r7, r7
	mulf.s r5, r7, r7
.BB.LABEL.1_317:	; if_break_bb3352
	movhi HIGHW1(#_f4_wt_inv1_delay), r0, r2
	st.w r7, LOWW(#_f4_wt_inv1_delay)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2101
	movhi HIGHW1(#_f4_wt_inv1_dq), r0, r2
	ld.w LOWW(#_f4_wt_inv1_dq)[r2], r2
	mov 0x40C90FDB, r20
	movhi HIGHW1(#_f4_wt_inv1_svctrl), r0, r5
	addf.s r7, r2, r6
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2102
	cmpf.s 0x00000007, r6, r20
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2101
	st.w r6, LOWW(#_f4_wt_inv1_svctrl)[r5]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2102
	trfsr 0
	bz9 .BB.LABEL.1_319
.BB.LABEL.1_318:	; if_then_bb3360
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 0
	mov 0xC0C90FDB, r2
	addf.s r2, r6, r6
	br9 .BB.LABEL.1_321
.BB.LABEL.1_319:	; if_else_bb3363
	mov 0x00000000, r2
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2103
	cmpf.s 0x00000004, r6, r2
	trfsr 0
	bnz9 .BB.LABEL.1_322
.BB.LABEL.1_320:	; if_then_bb3368
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 0
	addf.s r20, r6, r6
.BB.LABEL.1_321:	; if_break_bb3373.PartialDrain
	movhi HIGHW1(#_f4_wt_inv1_svctrl), r0, r2
	st.w r6, LOWW(#_f4_wt_inv1_svctrl)[r2]
.BB.LABEL.1_322:	; if_break_bb3373
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2106
	jarl _sinf, r31
	movhi HIGHW1(#_f4_sin_inv1_wtsvctrl), r0, r2
	st.w r10, LOWW(#_f4_sin_inv1_wtsvctrl)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2107
	movhi HIGHW1(#_f4_wt_inv1_svctrl), r0, r2
	ld.w LOWW(#_f4_wt_inv1_svctrl)[r2], r6
	jarl _cosf, r31
	movhi HIGHW1(#_f4_cos_inv1_wtsvctrl), r0, r2
	st.w r10, LOWW(#_f4_cos_inv1_wtsvctrl)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2111
	movhi HIGHW1(#_f4_ts_inv1_ctrl), r0, r2
	ld.w LOWW(#_f4_ts_inv1_ctrl)[r2], r2
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2112
	movhi HIGHW1(#_f4_wt_inv1_delay), r0, r2
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2116
	movhi HIGHW1(#_u1_flag_inv1_modevctrl), r0, r6
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2112
	ld.w LOWW(#_f4_wt_inv1_delay)[r2], r2
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2113
	movhi HIGHW1(#_s4_wt_inv1_delay_2pi_2_31), r0, r5
	mov 0x4DA2F983, r21
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2116
	ld.bu LOWW(#_u1_flag_inv1_modevctrl)[r6], r6
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2112
	mulf.s r21, r2, r2
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2116
	cmp 0x00000001, r6
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2113
	trncf.sw r2, r2
	st.w r2, LOWW(#_s4_wt_inv1_delay_2pi_2_31)[r5]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2116
	bnz17 .BB.LABEL.1_353
.BB.LABEL.1_323:	; if_then_bb3391
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2118
	movhi HIGHW1(#_u1_flag_status_inv1_idq_ctrl_pwm), r0, r2
	ld.bu LOWW(#_u1_flag_status_inv1_idq_ctrl_pwm)[r2], r2
	cmp 0x00000001, r2
	bnz17 .BB.LABEL.1_348
.BB.LABEL.1_324:	; if_then_bb3397
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2126
	movhi HIGHW1(#_f4_vd_inv1_ref), r0, r2
	movhi HIGHW1(#_f4_vd_inv1_ctrl_1pulse), r0, r5
	ld.w LOWW(#_f4_vd_inv1_ref)[r2], r2
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2127
	movhi HIGHW1(#_f4_vq_inv1_ref), r0, r6
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2126
	ld.w LOWW(#_f4_vd_inv1_ctrl_1pulse)[r5], r5
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2127
	ld.w LOWW(#_f4_vq_inv1_ref)[r6], r22
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2129
	movhi HIGHW1(#_f4_sin_inv1_wtcd), r0, r6
	ld.w LOWW(#_f4_sin_inv1_wtcd)[r6], r23
	movhi HIGHW1(#_f4_cos_inv1_wtcd), r0, r6
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2126
	addf.s r5, r2, r25
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2129
	ld.w LOWW(#_f4_cos_inv1_wtcd)[r6], r24
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2136
	mulf.s r22, r22, r2
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2134
	mulf.s r25, r25, r26
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2138
	addf.s r2, r26, r6
	jarl _sqrtf, r31
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2147
	movhi HIGHW1(#_f4_vdc_inv1_ad), r0, r5
	ld.w LOWW(#_f4_vdc_inv1_ad)[r5], r5
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2138
	movhi HIGHW1(#_f4_vdq_inv1_ref_1pulse), r0, r2
	st.w r10, LOWW(#_f4_vdq_inv1_ref_1pulse)[r2]
	mov 0x3F3504E6, r9
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2149
	movhi HIGHW1(#_f4_vd_inv1_ref_1pulse), r0, r7
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2147
	mulf.s r9, r5, r5
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2145
	movhi HIGHW1(#_f4_k_inv1_vdq_max), r0, r2
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2149
	st.w r25, LOWW(#_f4_vd_inv1_ref_1pulse)[r7]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2145
	ld.w LOWW(#_f4_k_inv1_vdq_max)[r2], r2
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2129
	mulf.s r25, r24, r7
	mulf.s r22, r23, r8
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2147
	movhi HIGHW1(#_f4_vdq_inv1_max_1pulse), r0, r6
	mulf.s r2, r5, r2
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2129
	addf.s r8, r7, r5
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2131
	mulf.s r25, r23, r7
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2147
	st.w r2, LOWW(#_f4_vdq_inv1_max_1pulse)[r6]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2151
	movhi HIGHW1(#_f4_v_gamma_inv1_ref_1pulse), r0, r6
	st.w r5, LOWW(#_f4_v_gamma_inv1_ref_1pulse)[r6]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2131
	mulf.s r22, r24, r6
	subf.s r7, r6, r23
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2153
	movhi HIGHW1(#_u1_flag_select_inv1_fai_ctrl), r0, r6
	ld.bu LOWW(#_u1_flag_select_inv1_fai_ctrl)[r6], r6
	cmp 0x00000000, r6
	bz17 .BB.LABEL.1_338
.BB.LABEL.1_325:	; bb3438
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 0
	movhi HIGHW1(#_u1_flag_inv1_adj), r0, r6
	ld.bu LOWW(#_u1_flag_inv1_adj)[r6], r6
	cmp 0x00000000, r6
	bnz17 .BB.LABEL.1_338
.BB.LABEL.1_326:	; if_else_bb3515
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2212
	cmpf.s 0x00000007, r10, r2
	trfsr 0
	bz9 .BB.LABEL.1_336
.BB.LABEL.1_327:	; if_then_bb3527
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2214
	movhi HIGHW1(#_u1_flag_inv1_status_vdq_max), r0, r22
	mov 0x00000001, r25
	st.b r25, LOWW(#_u1_flag_inv1_status_vdq_max)[r22]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2209
	mulf.s r2, r2, r2
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2207
	mulf.s r5, r5, r22
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2215
	subf.s r22, r2, r6
	mov 0x00000000, r22
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2216
	cmpf.s 0x00000004, r6, r22
	trfsr 0
	bnz9 .BB.LABEL.1_332
.BB.LABEL.1_328:	; if_then_bb3535
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2221
	cmpf.s 0x00000007, r5, r22
	movhi HIGHW1(#_f4_vdq_inv1_max), r0, r2
	ld.w LOWW(#_f4_vdq_inv1_max)[r2], r2
	trfsr 0
	bnz9 .BB.LABEL.1_330
.BB.LABEL.1_329:	; if_else_bb3542
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2229
	negf.s r2, r2
.BB.LABEL.1_330:	; if_break_bb3545
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 0
	movhi HIGHW1(#_f4_v_gamma_inv1_ref_1pulse), r0, r25
	st.w r2, LOWW(#_f4_v_gamma_inv1_ref_1pulse)[r25]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2232
	movhi HIGHW1(#_u1_flag_enable_inv1_kictrl), r0, r25
	ld.bu LOWW(#_u1_flag_enable_inv1_kictrl)[r25], r25
	mov r22, r6
	cmp 0x00000001, r25
	bnz9 .BB.LABEL.1_332
.BB.LABEL.1_331:	; if_then_bb3551
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2234
	movhi HIGHW1(#_f4_v_gamma_inv1_ctrl), r0, r25
	movhi HIGHW1(#_f4_v_gamma_inv1_emf), r0, r26
	ld.w LOWW(#_f4_v_gamma_inv1_ctrl)[r25], r25
	movhi HIGHW1(#_f4_v_gamma_inv1_rs), r0, r5
	ld.w LOWW(#_f4_v_gamma_inv1_emf)[r26], r26
	movhi HIGHW1(#_f4_v_gamma_inv1_ctrlp_1pulse), r0, r6
	ld.w LOWW(#_f4_v_gamma_inv1_rs)[r5], r5
	movhi HIGHW1(#_f4_v_gamma_inv1_ctrli_1pulse), r0, r8
	ld.w LOWW(#_f4_v_gamma_inv1_ctrlp_1pulse)[r6], r7
	mov 0x00000000, r6
	addf.s r26, r25, r25
	addf.s r5, r25, r25
	subf.s r25, r2, r2
	subf.s r7, r2, r2
	st.w r2, LOWW(#_f4_v_gamma_inv1_ctrli_1pulse)[r8]
.BB.LABEL.1_332:	; if_break_bb3564
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2241
	jarl _sqrtf, r31
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2242
	cmpf.s 0x00000007, r23, r22
	trfsr 0
	bnz9 .BB.LABEL.1_334
.BB.LABEL.1_333:	; if_else_bb3573
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2248
	negf.s r10, r10
.BB.LABEL.1_334:	; if_break_bb3576
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 0
	movhi HIGHW1(#_f4_v_delta_inv1_ref_1pulse), r0, r2
	st.w r10, LOWW(#_f4_v_delta_inv1_ref_1pulse)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2251
	movhi HIGHW1(#_u1_flag_enable_inv1_kictrl), r0, r2
	ld.bu LOWW(#_u1_flag_enable_inv1_kictrl)[r2], r2
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.1_337
.BB.LABEL.1_335:	; if_then_bb3582
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2253
	movhi HIGHW1(#_f4_v_delta_inv1_ctrl), r0, r2
	movhi HIGHW1(#_f4_v_delta_inv1_emf), r0, r22
	ld.w LOWW(#_f4_v_delta_inv1_ctrl)[r2], r2
	movhi HIGHW1(#_f4_v_delta_inv1_rs), r0, r25
	ld.w LOWW(#_f4_v_delta_inv1_emf)[r22], r22
	movhi HIGHW1(#_f4_v_delta_inv1_ctrlp_1pulse), r0, r26
	ld.w LOWW(#_f4_v_delta_inv1_rs)[r25], r25
	movhi HIGHW1(#_f4_v_delta_inv1_ctrli_1pulse), r0, r5
	ld.w LOWW(#_f4_v_delta_inv1_ctrlp_1pulse)[r26], r26
	addf.s r22, r2, r2
	addf.s r25, r2, r2
	subf.s r2, r10, r2
	subf.s r26, r2, r2
	st.w r2, LOWW(#_f4_v_delta_inv1_ctrli_1pulse)[r5]
	br9 .BB.LABEL.1_337
.BB.LABEL.1_336:	; if_else_bb3594
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2260
	movhi HIGHW1(#_u1_flag_inv1_status_vdq_max), r0, r2
	st.b r0, LOWW(#_u1_flag_inv1_status_vdq_max)[r2]
.BB.LABEL.1_337:	; if_break_bb3595
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2263
	movhi HIGHW1(#_f4_cos_inv1_wtcd), r0, r2
	movhi HIGHW1(#_f4_v_gamma_inv1_ref_1pulse), r0, r22
	ld.w LOWW(#_f4_cos_inv1_wtcd)[r2], r2
	movhi HIGHW1(#_f4_sin_inv1_wtcd), r0, r25
	ld.w LOWW(#_f4_v_gamma_inv1_ref_1pulse)[r22], r22
	movhi HIGHW1(#_f4_v_delta_inv1_ref_1pulse), r0, r26
	ld.w LOWW(#_f4_sin_inv1_wtcd)[r25], r25
	movhi HIGHW1(#_f4_vd_inv1_ref_1pulse), r0, r5
	ld.w LOWW(#_f4_v_delta_inv1_ref_1pulse)[r26], r26
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2265
	movhi HIGHW1(#_f4_vq_inv1_ref_1pulse), r0, r7
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2263
	mulf.s r22, r2, r6
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2265
	mulf.s r22, r25, r22
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2263
	mulf.s r26, r25, r25
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2265
	mulf.s r26, r2, r2
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2263
	subf.s r25, r6, r25
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2265
	addf.s r2, r22, r2
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2263
	st.w r25, LOWW(#_f4_vd_inv1_ref_1pulse)[r5]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2265
	st.w r2, LOWW(#_f4_vq_inv1_ref_1pulse)[r7]
	br9 .BB.LABEL.1_348
.BB.LABEL.1_338:	; if_then_bb3451
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2161
	cmpf.s 0x00000007, r10, r2
	trfsr 0
	bz9 .BB.LABEL.1_347
.BB.LABEL.1_339:	; if_then_bb3463
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2163
	movhi HIGHW1(#_u1_flag_inv1_status_vdq_max), r0, r5
	mov 0x00000001, r6
	st.b r6, LOWW(#_u1_flag_inv1_status_vdq_max)[r5]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2158
	mulf.s r2, r2, r5
	mov 0x00000000, r23
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2164
	subf.s r26, r5, r6
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2165
	cmpf.s 0x00000004, r6, r23
	trfsr 0
	bnz9 .BB.LABEL.1_344
.BB.LABEL.1_340:	; if_then_bb3471
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2168
	cmpf.s 0x00000007, r25, r23
	trfsr 0
	bnz9 .BB.LABEL.1_342
.BB.LABEL.1_341:	; if_else_bb3478
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2174
	negf.s r2, r2
.BB.LABEL.1_342:	; if_break_bb3481
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 0
	movhi HIGHW1(#_f4_vd_inv1_ref_1pulse), r0, r5
	st.w r2, LOWW(#_f4_vd_inv1_ref_1pulse)[r5]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2177
	movhi HIGHW1(#_u1_flag_enable_inv1_kictrl), r0, r5
	ld.bu LOWW(#_u1_flag_enable_inv1_kictrl)[r5], r5
	mov r23, r6
	cmp 0x00000001, r5
	bnz9 .BB.LABEL.1_344
.BB.LABEL.1_343:	; if_then_bb3487
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2179
	movhi HIGHW1(#_f4_vd_inv1_rs), r0, r5
	movhi HIGHW1(#_f4_vd_inv1_emf), r0, r6
	ld.w LOWW(#_f4_vd_inv1_rs)[r5], r5
	movhi HIGHW1(#_f4_vd_inv1_ctrl), r0, r7
	ld.w LOWW(#_f4_vd_inv1_emf)[r6], r6
	movhi HIGHW1(#_f4_vd_inv1_ctrlp_1pulse), r0, r8
	ld.w LOWW(#_f4_vd_inv1_ctrl)[r7], r7
	movhi HIGHW1(#_f4_vd_inv1_ctrli_1pulse), r0, r9
	ld.w LOWW(#_f4_vd_inv1_ctrlp_1pulse)[r8], r8
	addf.s r6, r5, r5
	mov 0x00000000, r6
	subf.s r5, r2, r2
	subf.s r7, r2, r2
	subf.s r8, r2, r2
	st.w r2, LOWW(#_f4_vd_inv1_ctrli_1pulse)[r9]
.BB.LABEL.1_344:	; if_break_bb3500
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2188
	jarl _sqrtf, r31
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2189
	cmpf.s 0x00000007, r22, r23
	trfsr 0
	bz9 .BB.LABEL.1_346
.BB.LABEL.1_345:	; if_then_bb3507
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2191
	movhi HIGHW1(#_f4_vq_inv1_ref_1pulse), r0, r2
	st.w r10, LOWW(#_f4_vq_inv1_ref_1pulse)[r2]
	br9 .BB.LABEL.1_348
.BB.LABEL.1_346:	; if_else_bb3509
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2195
	negf.s r10, r2
	movhi HIGHW1(#_f4_vq_inv1_ref_1pulse), r0, r5
	st.w r2, LOWW(#_f4_vq_inv1_ref_1pulse)[r5]
	br9 .BB.LABEL.1_348
.BB.LABEL.1_347:	; if_else_bb3513
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2200
	movhi HIGHW1(#_u1_flag_inv1_status_vdq_max), r0, r2
	st.b r0, LOWW(#_u1_flag_inv1_status_vdq_max)[r2]
.BB.LABEL.1_348:	; if_break_bb3612
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2273
	movhi HIGHW1(#_f4_vd_inv1_ref_1pulse), r0, r2
	ld.w LOWW(#_f4_vd_inv1_ref_1pulse)[r2], r7
	mov 0x00000000, r2
	cmpf.s 0x00000003, r7, r2
	trfsr 0
	bz9 .BB.LABEL.1_350
.BB.LABEL.1_349:	; bb3623
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 0
	movhi HIGHW1(#_f4_vq_inv1_ref_1pulse), r0, r2
	ld.w LOWW(#_f4_vq_inv1_ref_1pulse)[r2], r6
	jr .BB.LABEL.1_362
.BB.LABEL.1_350:	; bb3623.thread
	movhi HIGHW1(#_f4_vq_inv1_ref_1pulse), r0, r5
	ld.w LOWW(#_f4_vq_inv1_ref_1pulse)[r5], r5
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2280
	cmpf.s 0x00000007, r5, r2
	trfsr 0
	bz9 .BB.LABEL.1_352
.BB.LABEL.1_351:	; bb3623.thread.if_break_bb3799_crit_edge
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 0
	mov 0x3FC90FDB, r10
	jr .BB.LABEL.1_363
.BB.LABEL.1_352:	; if_else_bb3638
	mov 0xBFC90FDB, r10
	jr .BB.LABEL.1_363
.BB.LABEL.1_353:	; if_else_bb3641
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2294
	movhi HIGHW1(#_u1_flag_inv1_modevctrl_tmp), r0, r2
	ld.bu LOWW(#_u1_flag_inv1_modevctrl_tmp)[r2], r2
	cmp 0x00000001, r2
	bnz17 .BB.LABEL.1_358
.BB.LABEL.1_354:	; if_then_bb3647
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2296
	movhi HIGHW1(#_u1_flag_inv1_modevctrl_tmp), r0, r2
	st.b r0, LOWW(#_u1_flag_inv1_modevctrl_tmp)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2297
	movhi HIGHW1(#_f4_vd_inv1_ctrl_1pulse), r0, r2
	st.w r0, LOWW(#_f4_vd_inv1_ctrl_1pulse)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2298
	movhi HIGHW1(#_f4_vd_inv1_ctrlp_1pulse), r0, r2
	st.w r0, LOWW(#_f4_vd_inv1_ctrlp_1pulse)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2299
	movhi HIGHW1(#_f4_vd_inv1_ctrli_1pulse), r0, r2
	st.w r0, LOWW(#_f4_vd_inv1_ctrli_1pulse)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2301
	movhi HIGHW1(#_f4_vq_inv1_ctrl_1pulse), r0, r2
	st.w r0, LOWW(#_f4_vq_inv1_ctrl_1pulse)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2302
	movhi HIGHW1(#_f4_vq_inv1_ctrlp_1pulse), r0, r2
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2305
	movhi HIGHW1(#_f4_vdq_inv1_ref), r0, r22
	movhi HIGHW1(#_f4_wt_inv1_vdq), r0, r24
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2302
	st.w r0, LOWW(#_f4_vq_inv1_ctrlp_1pulse)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2305
	ld.w LOWW(#_f4_vdq_inv1_ref)[r22], r23
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2303
	movhi HIGHW1(#_f4_vq_inv1_ctrli_1pulse), r0, r2
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2305
	ld.w LOWW(#_f4_wt_inv1_vdq)[r24], r6
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2303
	st.w r0, LOWW(#_f4_vq_inv1_ctrli_1pulse)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2305
	jarl _cosf, r31
	mulf.s r10, r23, r2
	movhi HIGHW1(#_f4_vd_inv1_ref), r0, r5
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2306
	ld.w LOWW(#_f4_wt_inv1_vdq)[r24], r6
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2305
	st.w r2, LOWW(#_f4_vd_inv1_ref)[r5]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2306
	ld.w LOWW(#_f4_vdq_inv1_ref)[r22], r22
	jarl _sinf, r31
	mulf.s r10, r22, r2
	movhi HIGHW1(#_f4_vq_inv1_ref), r0, r5
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2311
	movhi HIGHW1(#_f4_iq_inv1_ref), r0, r9
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2309
	movhi HIGHW1(#_f4_kp_inv1_idctrl), r0, r7
	ld.w LOWW(#_f4_kp_inv1_idctrl)[r7], r7
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2308
	movhi HIGHW1(#_f4_id_inv1_ctrlperr), r0, r6
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2309
	movhi HIGHW1(#_f4_vd_inv1_ctrlp), r0, r8
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2306
	st.w r2, LOWW(#_f4_vq_inv1_ref)[r5]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2308
	movhi HIGHW1(#_f4_id_inv1_ref), r0, r2
	ld.w LOWW(#_f4_id_inv1_ref)[r2], r2
	movhi HIGHW1(#_f4_id_inv1_ad), r0, r5
	ld.w LOWW(#_f4_id_inv1_ad)[r5], r5
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2315
	movhi HIGHW1(#_u1_flag_enable_inv1_kictrl), r0, r10
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2311
	ld.w LOWW(#_f4_iq_inv1_ref)[r9], r9
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2315
	ld.bu LOWW(#_u1_flag_enable_inv1_kictrl)[r10], r10
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2308
	subf.s r5, r2, r2
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2311
	movhi HIGHW1(#_f4_iq_inv1_ad), r0, r5
	ld.w LOWW(#_f4_iq_inv1_ad)[r5], r5
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2315
	cmp 0x00000001, r10
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2311
	subf.s r5, r9, r5
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2308
	st.w r2, LOWW(#_f4_id_inv1_ctrlperr)[r6]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2309
	mulf.s r7, r2, r2
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2312
	movhi HIGHW1(#_f4_kp_inv1_iqctrl), r0, r7
	ld.w LOWW(#_f4_kp_inv1_iqctrl)[r7], r7
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2311
	movhi HIGHW1(#_f4_iq_inv1_ctrlperr), r0, r6
	st.w r5, LOWW(#_f4_iq_inv1_ctrlperr)[r6]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2312
	mulf.s r7, r5, r5
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2309
	st.w r2, LOWW(#_f4_vd_inv1_ctrlp)[r8]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2312
	movhi HIGHW1(#_f4_vq_inv1_ctrlp), r0, r8
	st.w r5, LOWW(#_f4_vq_inv1_ctrlp)[r8]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2315
	bnz9 .BB.LABEL.1_356
.BB.LABEL.1_355:	; if_then_bb3673
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2317
	movhi HIGHW1(#_f4_vd_inv1_rs), r0, r7
	movhi HIGHW1(#_f4_vd_inv1_emf), r0, r8
	ld.w LOWW(#_f4_vd_inv1_rs)[r7], r7
	movhi HIGHW1(#_f4_vd_inv1_ref), r0, r6
	ld.w LOWW(#_f4_vd_inv1_emf)[r8], r8
	movhi HIGHW1(#_f4_vd_inv1_ctrli), r0, r9
	ld.w LOWW(#_f4_vd_inv1_ref)[r6], r6
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2318
	movhi HIGHW1(#_f4_vq_inv1_rs), r0, r12
	ld.w LOWW(#_f4_vq_inv1_rs)[r12], r12
	movhi HIGHW1(#_f4_vq_inv1_ref), r0, r11
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2317
	addf.s r8, r7, r7
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2318
	ld.w LOWW(#_f4_vq_inv1_ref)[r11], r11
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2317
	subf.s r7, r6, r6
	subf.s r2, r6, r2
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2318
	movhi HIGHW1(#_f4_vq_inv1_ctrli), r0, r6
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2317
	st.w r2, LOWW(#_f4_vd_inv1_ctrli)[r9]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2318
	movhi HIGHW1(#_f4_vq_inv1_emf), r0, r2
	ld.w LOWW(#_f4_vq_inv1_emf)[r2], r2
	addf.s r2, r12, r2
	subf.s r2, r11, r2
	subf.s r5, r2, r2
	st.w r2, LOWW(#_f4_vq_inv1_ctrli)[r6]
.BB.LABEL.1_356:	; if_break_bb3689
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2323
	movhi HIGHW1(#_f4_v_gamma_inv1_ctrl_1pulse), r0, r2
	st.w r0, LOWW(#_f4_v_gamma_inv1_ctrl_1pulse)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2324
	movhi HIGHW1(#_f4_v_gamma_inv1_ctrlp_1pulse), r0, r2
	st.w r0, LOWW(#_f4_v_gamma_inv1_ctrlp_1pulse)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2325
	movhi HIGHW1(#_f4_v_gamma_inv1_ctrli_1pulse), r0, r2
	st.w r0, LOWW(#_f4_v_gamma_inv1_ctrli_1pulse)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2327
	movhi HIGHW1(#_f4_v_delta_inv1_ctrl_1pulse), r0, r2
	st.w r0, LOWW(#_f4_v_delta_inv1_ctrl_1pulse)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2328
	movhi HIGHW1(#_f4_v_delta_inv1_ctrlp_1pulse), r0, r2
	st.w r0, LOWW(#_f4_v_delta_inv1_ctrlp_1pulse)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2329
	movhi HIGHW1(#_f4_v_delta_inv1_ctrli_1pulse), r0, r2
	st.w r0, LOWW(#_f4_v_delta_inv1_ctrli_1pulse)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2331
	movhi HIGHW1(#_f4_vd_inv1_ref), r0, r5
	movhi HIGHW1(#_f4_cos_inv1_wtcd), r0, r2
	ld.w LOWW(#_f4_vd_inv1_ref)[r5], r6
	movhi HIGHW1(#_f4_sin_inv1_wtcd), r0, r7
	movhi HIGHW1(#_f4_vq_inv1_ref), r0, r8
	ld.w LOWW(#_f4_cos_inv1_wtcd)[r2], r2
	ld.w LOWW(#_f4_sin_inv1_wtcd)[r7], r7
	movhi HIGHW1(#_f4_v_gamma_inv1_ref), r0, r11
	ld.w LOWW(#_f4_vq_inv1_ref)[r8], r9
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2333
	movhi HIGHW1(#_f4_v_delta_inv1_ref), r0, r12
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2331
	mulf.s r6, r2, r6
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2333
	ld.w LOWW(#_f4_vd_inv1_ref)[r5], r5
	ld.w LOWW(#_f4_vq_inv1_ref)[r8], r8
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2331
	mulf.s r9, r7, r9
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2333
	mulf.s r5, r7, r5
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2336
	movhi HIGHW1(#_f4_fai_gamma_inv1_ad), r0, r7
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2333
	mulf.s r8, r2, r2
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2336
	ld.w LOWW(#_f4_fai_gamma_inv1_ad)[r7], r7
	movhi HIGHW1(#_f4_fai_gamma_inv1_ctrlperr), r0, r8
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2331
	addf.s r9, r6, r6
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2337
	movhi HIGHW1(#_f4_fai_delta_inv1_ref), r0, r9
	ld.w LOWW(#_f4_fai_delta_inv1_ref)[r9], r9
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2333
	subf.s r5, r2, r2
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2336
	movhi HIGHW1(#_f4_fai_gamma_inv1_ref), r0, r5
	ld.w LOWW(#_f4_fai_gamma_inv1_ref)[r5], r5
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2331
	st.w r6, LOWW(#_f4_v_gamma_inv1_ref)[r11]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2337
	movhi HIGHW1(#_f4_fai_delta_inv1_ad), r0, r11
	ld.w LOWW(#_f4_fai_delta_inv1_ad)[r11], r11
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2336
	subf.s r7, r5, r5
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2337
	movhi HIGHW1(#_f4_fai_delta_inv1_ctrlperr), r0, r7
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2333
	st.w r2, LOWW(#_f4_v_delta_inv1_ref)[r12]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2345
	movhi HIGHW1(#_f4_kp_inv1_faictrl_22), r0, r12
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2344
	movhi HIGHW1(#_f4_kp_inv1_faictrl_21), r0, r13
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2337
	subf.s r11, r9, r9
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2345
	ld.w LOWW(#_f4_kp_inv1_faictrl_22)[r12], r12
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2344
	ld.w LOWW(#_f4_kp_inv1_faictrl_21)[r13], r13
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2341
	movhi HIGHW1(#_f4_v_gamma_inv1_ctrlp), r0, r11
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2336
	st.w r5, LOWW(#_f4_fai_gamma_inv1_ctrlperr)[r8]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2339
	movhi HIGHW1(#_f4_kp_inv1_faictrl_11), r0, r8
	ld.w LOWW(#_f4_kp_inv1_faictrl_11)[r8], r8
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2349
	cmp 0x00000001, r10
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2337
	st.w r9, LOWW(#_f4_fai_delta_inv1_ctrlperr)[r7]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2340
	movhi HIGHW1(#_f4_kp_inv1_faictrl_12), r0, r7
	ld.w LOWW(#_f4_kp_inv1_faictrl_12)[r7], r7
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2339
	mulf.s r5, r8, r8
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2344
	mulf.s r13, r5, r5
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2340
	mulf.s r9, r7, r7
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2341
	addf.s r7, r8, r7
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2345
	mulf.s r9, r12, r8
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2346
	movhi HIGHW1(#_f4_v_delta_inv1_ctrlp), r0, r9
	subf.s r5, r8, r5
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2341
	st.w r7, LOWW(#_f4_v_gamma_inv1_ctrlp)[r11]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2346
	st.w r5, LOWW(#_f4_v_delta_inv1_ctrlp)[r9]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2349
	bnz9 .BB.LABEL.1_358
.BB.LABEL.1_357:	; if_then_bb3735
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2351
	movhi HIGHW1(#_f4_v_gamma_inv1_rs), r0, r8
	movhi HIGHW1(#_f4_v_gamma_inv1_emf), r0, r9
	ld.w LOWW(#_f4_v_gamma_inv1_rs)[r8], r8
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2352
	movhi HIGHW1(#_f4_v_delta_inv1_rs), r0, r11
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2351
	ld.w LOWW(#_f4_v_gamma_inv1_emf)[r9], r9
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2352
	movhi HIGHW1(#_f4_v_delta_inv1_emf), r0, r12
	ld.w LOWW(#_f4_v_delta_inv1_rs)[r11], r11
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2351
	movhi HIGHW1(#_f4_v_gamma_inv1_ctrli), r0, r10
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2352
	ld.w LOWW(#_f4_v_delta_inv1_emf)[r12], r12
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2351
	addf.s r9, r8, r8
	subf.s r8, r6, r6
	subf.s r7, r6, r6
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2352
	addf.s r12, r11, r7
	subf.s r7, r2, r2
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2351
	st.w r6, LOWW(#_f4_v_gamma_inv1_ctrli)[r10]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2352
	movhi HIGHW1(#_f4_v_delta_inv1_ctrli), r0, r6
	subf.s r5, r2, r2
	st.w r2, LOWW(#_f4_v_delta_inv1_ctrli)[r6]
.BB.LABEL.1_358:	; if_break_bb3753
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2360
	movhi HIGHW1(#_f4_vd_inv1_ref), r0, r2
	ld.w LOWW(#_f4_vd_inv1_ref)[r2], r5
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2361
	movhi HIGHW1(#_f4_vq_inv1_ref), r0, r7
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2360
	movhi HIGHW1(#_f4_vd_inv1_ref_1pulse), r0, r6
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2361
	ld.w LOWW(#_f4_vq_inv1_ref)[r7], r7
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2362
	movhi HIGHW1(#_f4_cos_inv1_wtcd), r0, r9
	ld.w LOWW(#_f4_cos_inv1_wtcd)[r9], r9
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2361
	movhi HIGHW1(#_f4_vq_inv1_ref_1pulse), r0, r8
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2360
	st.w r5, LOWW(#_f4_vd_inv1_ref_1pulse)[r6]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2362
	movhi HIGHW1(#_f4_sin_inv1_wtcd), r0, r6
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2361
	st.w r7, LOWW(#_f4_vq_inv1_ref_1pulse)[r8]
	mov 0x00000000, r12
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2362
	ld.w LOWW(#_f4_sin_inv1_wtcd)[r6], r6
	mulf.s r5, r9, r8
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2364
	mulf.s r7, r9, r9
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2368
	ld.w LOWW(#_f4_vd_inv1_ref)[r2], r2
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2362
	movhi HIGHW1(#_f4_v_gamma_inv1_ref_1pulse), r0, r10
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2364
	movhi HIGHW1(#_f4_v_delta_inv1_ref_1pulse), r0, r11
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2362
	mulf.s r7, r6, r7
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2364
	mulf.s r5, r6, r5
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2368
	cmpf.s 0x00000004, r12, r2
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2362
	addf.s r7, r8, r7
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2364
	subf.s r5, r9, r5
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2368
	trfsr 0
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2362
	st.w r7, LOWW(#_f4_v_gamma_inv1_ref_1pulse)[r10]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2364
	st.w r5, LOWW(#_f4_v_delta_inv1_ref_1pulse)[r11]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2368
	bz9 .BB.LABEL.1_361
.BB.LABEL.1_359:	; bb3774
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 0
	movhi HIGHW1(#_f4_vd_inv1_ref), r0, r2
	ld.w LOWW(#_f4_vd_inv1_ref)[r2], r2
	cmpf.s 0x00000004, r2, r12
	trfsr 0
	bz9 .BB.LABEL.1_361
.BB.LABEL.1_360:	; if_else_bb3790
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2375
	movhi HIGHW1(#_f4_vq_inv1_ref), r0, r2
	ld.w LOWW(#_f4_vq_inv1_ref)[r2], r2
	mov 0xBFC90FDB, r10
	cmpf.s 0x00000004, r12, r2
	trfsr 0
	bz17 .BB.LABEL.1_351
	br9 .BB.LABEL.1_363
.BB.LABEL.1_361:	; if_then_bb3786
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2370
	movhi HIGHW1(#_f4_vq_inv1_ref), r0, r2
	ld.w LOWW(#_f4_vq_inv1_ref)[r2], r6
	movhi HIGHW1(#_f4_vd_inv1_ref), r0, r2
	ld.w LOWW(#_f4_vd_inv1_ref)[r2], r7
.BB.LABEL.1_362:	; if_then_bb3786
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 0
	jarl _atan2f, r31
.BB.LABEL.1_363:	; if_break_bb3799
	movhi HIGHW1(#_f4_wt_inv1_vdq), r0, r2
	st.w r10, LOWW(#_f4_wt_inv1_vdq)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2386
	mulf.s r21, r10, r2
	movhi HIGHW1(#_s4_wt_inv1_vdq_2pi_2_31), r0, r5
	trncf.sw r2, r2
	st.w r2, LOWW(#_s4_wt_inv1_vdq_2pi_2_31)[r5]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2390
	movhi HIGHW1(#_f4_wt_inv1_dq), r0, r5
	ld.w LOWW(#_f4_wt_inv1_dq)[r5], r5
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2391
	cmpf.s 0x00000007, r5, r20
	trfsr 0
	bz9 .BB.LABEL.1_365
.BB.LABEL.1_364:	; if_then_bb3808
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 0
	mov 0xC0C90FDB, r20
	br9 .BB.LABEL.1_366
.BB.LABEL.1_365:	; if_else_bb3811
	mov 0x00000000, r6
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2392
	cmpf.s 0x00000004, r5, r6
	trfsr 0
	bnz9 .BB.LABEL.1_367
.BB.LABEL.1_366:	; if_then_bb3816
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 0
	addf.s r20, r5, r5
.BB.LABEL.1_367:	; if_break_bb3821
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2395
	mulf.s r21, r5, r5
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2396
	movhi HIGHW1(#_s4_wt_inv1_dq_2pi_2_31), r0, r6
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2407
	movhi HIGHW1(#_u1_flag_status_inv1_idq_ctrl_pwm), r0, r8
	ld.bu LOWW(#_u1_flag_status_inv1_idq_ctrl_pwm)[r8], r8
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2400
	movhi HIGHW1(#_s4_wt_inv1_1pulse_pwm_2pi_2_31), r0, r7
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2396
	trncf.sw r5, r5
	st.w r5, LOWW(#_s4_wt_inv1_dq_2pi_2_31)[r6]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2399
	movhi HIGHW1(#_s4_wt_inv1_delay_2pi_2_31), r0, r6
	ld.w LOWW(#_s4_wt_inv1_delay_2pi_2_31)[r6], r6
	add r2, r6
	mov 0x7FFFFFFF, r2
	add r5, r6
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2400
	and r2, r6
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2407
	cmp 0x00000001, r8
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2400
	st.w r6, LOWW(#_s4_wt_inv1_1pulse_pwm_2pi_2_31)[r7]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2407
	bnz9 .BB.LABEL.1_369
.BB.LABEL.1_368:	; if_then_bb3838
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2409
	movhi HIGHW1(#_u1_flag_status_inv1_idq_ctrl), r0, r2
	st.b r0, LOWW(#_u1_flag_status_inv1_idq_ctrl)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2411
	movhi HIGHW1(#_f4_id_inv1_ad_sum), r0, r2
	st.w r0, LOWW(#_f4_id_inv1_ad_sum)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2412
	movhi HIGHW1(#_f4_iq_inv1_ad_sum), r0, r2
	st.w r0, LOWW(#_f4_iq_inv1_ad_sum)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2413
	movhi HIGHW1(#_u4_cnt_idq_inv1_ad_ave), r0, r2
	st.w r0, LOWW(#_u4_cnt_idq_inv1_ad_ave)[r2]
.BB.LABEL.1_369:	; return
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2419
	dispose 0x00000010, 0x00000FFF, [r31]
_fb_pwm_inv1_idqctrl_init:
	.stack _fb_pwm_inv1_idqctrl_init = 0
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2441
	movhi HIGHW1(#_f4_pf_inv1), r0, r2
	movhi 0x00004100, r0, r5
	st.w r5, LOWW(#_f4_pf_inv1)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2442
	movhi HIGHW1(#_f4_dpf_inv1), r0, r2
	movhi 0x00003E00, r0, r5
	st.w r5, LOWW(#_f4_dpf_inv1)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2444
	movhi HIGHW1(#_f4_rs_inv1), r0, r2
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2450
	movhi HIGHW1(#_f4_i_ld_inv1_isat), r0, r6
	mov 0x3D73B646, r5
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2444
	st.w r5, LOWW(#_f4_rs_inv1)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2446
	movhi HIGHW1(#_f4_fm_inv1), r0, r2
	mov 0x3BCE57C3, r5
	st.w r5, LOWW(#_f4_fm_inv1)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2447
	movhi HIGHW1(#_f4_dfm_inv1), r0, r2
	mov 0x431ECDBE, r5
	st.w r5, LOWW(#_f4_dfm_inv1)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2449
	movhi HIGHW1(#_f4_ld_inv1_const), r0, r5
	mov 0x389C3CE2, r2
	st.w r2, LOWW(#_f4_ld_inv1_const)[r5]
	movhi 0x000044FA, r0, r5
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2450
	st.w r5, LOWW(#_f4_i_ld_inv1_isat)[r6]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2451
	movhi HIGHW1(#_f4_k1_ld_inv1_isat), r0, r7
	mov 0x3DCCCCCD, r6
	st.w r6, LOWW(#_f4_k1_ld_inv1_isat)[r7]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2452
	movhi HIGHW1(#_f4_k2_ld_inv1_isat), r0, r7
	st.w r6, LOWW(#_f4_k2_ld_inv1_isat)[r7]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2454
	movhi HIGHW1(#_f4_lq_inv1_const), r0, r7
	st.w r2, LOWW(#_f4_lq_inv1_const)[r7]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2455
	movhi HIGHW1(#_f4_i_lq_inv1_isat), r0, r7
	st.w r5, LOWW(#_f4_i_lq_inv1_isat)[r7]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2456
	movhi HIGHW1(#_f4_k1_lq_inv1_isat), r0, r5
	mov 0x3941FC8F, r7
	st.w r7, LOWW(#_f4_k1_lq_inv1_isat)[r5]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2457
	movhi HIGHW1(#_f4_k2_lq_inv1_isat), r0, r5
	mov 0x3CE6601C, r7
	st.w r7, LOWW(#_f4_k2_lq_inv1_isat)[r5]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2459
	movhi HIGHW1(#_f4_ld_inv1_isat), r0, r5
	st.w r2, LOWW(#_f4_ld_inv1_isat)[r5]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2460
	movhi HIGHW1(#_f4_lq_inv1_isat), r0, r5
	st.w r2, LOWW(#_f4_lq_inv1_isat)[r5]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2462
	movhi HIGHW1(#_u1_flag_ldq_inv1_mode), r0, r2
	mov 0x00000002, r5
	st.b r5, LOWW(#_u1_flag_ldq_inv1_mode)[r2]
	mov 0x3CA3D70A, r2
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2468
	movhi HIGHW1(#_f4_kp_inv1_vdqctrl), r0, r5
	st.w r2, LOWW(#_f4_kp_inv1_vdqctrl)[r5]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2469
	movhi HIGHW1(#_f4_ki_inv1_vdqctrl), r0, r5
	mov 0x3B83126F, r7
	st.w r7, LOWW(#_f4_ki_inv1_vdqctrl)[r5]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2471
	movhi HIGHW1(#_f4_k_inv1_vdq_vctrl), r0, r5
	mov 0x3F933333, r7
	st.w r7, LOWW(#_f4_k_inv1_vdq_vctrl)[r5]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2472
	movhi HIGHW1(#_f4_vdq_inv1_vctrl), r0, r5
	st.w r0, LOWW(#_f4_vdq_inv1_vctrl)[r5]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2474
	movhi HIGHW1(#_f4_vdqctrl_inv1_err), r0, r5
	st.w r0, LOWW(#_f4_vdqctrl_inv1_err)[r5]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2476
	movhi HIGHW1(#_f4_id_inv1_vdqctrlp), r0, r5
	st.w r0, LOWW(#_f4_id_inv1_vdqctrlp)[r5]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2477
	movhi HIGHW1(#_f4_id_inv1_vdqctrli), r0, r5
	st.w r0, LOWW(#_f4_id_inv1_vdqctrli)[r5]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2478
	movhi HIGHW1(#_f4_id_inv1_vdqctrl), r0, r5
	st.w r0, LOWW(#_f4_id_inv1_vdqctrl)[r5]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2480
	movhi HIGHW1(#_f4_iq_inv1_vdqctrlp), r0, r5
	st.w r0, LOWW(#_f4_iq_inv1_vdqctrlp)[r5]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2481
	movhi HIGHW1(#_f4_iq_inv1_vdqctrli), r0, r5
	st.w r0, LOWW(#_f4_iq_inv1_vdqctrli)[r5]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2482
	movhi HIGHW1(#_f4_iq_inv1_vdqctrl), r0, r5
	st.w r0, LOWW(#_f4_iq_inv1_vdqctrl)[r5]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2486
	movhi HIGHW1(#_f4_id_inv1_vdqctrl_max), r0, r5
	mov 0x4068C7E3, r7
	st.w r7, LOWW(#_f4_id_inv1_vdqctrl_max)[r5]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2493
	movhi HIGHW1(#_f4_iq_inv1_vdqctrl_max), r0, r5
	st.w r0, LOWW(#_f4_iq_inv1_vdqctrl_max)[r5]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2499
	movhi HIGHW1(#_f4_id_inv1_ad), r0, r5
	st.w r0, LOWW(#_f4_id_inv1_ad)[r5]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2500
	movhi HIGHW1(#_f4_iq_inv1_ad), r0, r5
	st.w r0, LOWW(#_f4_iq_inv1_ad)[r5]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2502
	movhi HIGHW1(#_f4_id_inv1_ad_ave), r0, r5
	st.w r0, LOWW(#_f4_id_inv1_ad_ave)[r5]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2503
	movhi HIGHW1(#_f4_iq_inv1_ad_ave), r0, r5
	st.w r0, LOWW(#_f4_iq_inv1_ad_ave)[r5]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2505
	movhi HIGHW1(#_f4_id_inv1_ad_sum), r0, r5
	st.w r0, LOWW(#_f4_id_inv1_ad_sum)[r5]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2506
	movhi HIGHW1(#_f4_iq_inv1_ad_sum), r0, r5
	st.w r0, LOWW(#_f4_iq_inv1_ad_sum)[r5]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2507
	movhi HIGHW1(#_u4_cnt_idq_inv1_ad_ave), r0, r5
	st.w r0, LOWW(#_u4_cnt_idq_inv1_ad_ave)[r5]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2509
	movhi HIGHW1(#_f4_id_inv1_ref), r0, r5
	st.w r0, LOWW(#_f4_id_inv1_ref)[r5]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2510
	movhi HIGHW1(#_f4_iq_inv1_ref), r0, r5
	st.w r0, LOWW(#_f4_iq_inv1_ref)[r5]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2511
	movhi HIGHW1(#_f4_idq_inv1_ref), r0, r5
	st.w r0, LOWW(#_f4_idq_inv1_ref)[r5]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2513
	movhi HIGHW1(#_f4_k_inv1_idq_cmp), r0, r5
	st.w r0, LOWW(#_f4_k_inv1_idq_cmp)[r5]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2514
	movhi HIGHW1(#_f4_wt_inv1_idq_cmp), r0, r5
	st.w r0, LOWW(#_f4_wt_inv1_idq_cmp)[r5]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2515
	movhi HIGHW1(#_f4_sin_inv1_wtidq_cmp), r0, r5
	st.w r0, LOWW(#_f4_sin_inv1_wtidq_cmp)[r5]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2516
	movhi HIGHW1(#_f4_cos_inv1_wtidq_cmp), r0, r5
	st.w r0, LOWW(#_f4_cos_inv1_wtidq_cmp)[r5]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2517
	movhi HIGHW1(#_f4_id_inv1_ad_cmp), r0, r5
	st.w r0, LOWW(#_f4_id_inv1_ad_cmp)[r5]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2518
	movhi HIGHW1(#_f4_iq_inv1_ad_cmp), r0, r5
	st.w r0, LOWW(#_f4_iq_inv1_ad_cmp)[r5]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2524
	movhi HIGHW1(#_f4_fai_d_inv1_ref), r0, r5
	st.w r0, LOWW(#_f4_fai_d_inv1_ref)[r5]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2525
	movhi HIGHW1(#_f4_fai_q_inv1_ref), r0, r5
	st.w r0, LOWW(#_f4_fai_q_inv1_ref)[r5]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2526
	movhi HIGHW1(#_f4_fai_d_inv1_ad), r0, r5
	st.w r0, LOWW(#_f4_fai_d_inv1_ad)[r5]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2527
	movhi HIGHW1(#_f4_fai_q_inv1_ad), r0, r5
	st.w r0, LOWW(#_f4_fai_q_inv1_ad)[r5]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2528
	movhi HIGHW1(#_f4_fai_d_inv1_ad_ave), r0, r5
	st.w r0, LOWW(#_f4_fai_d_inv1_ad_ave)[r5]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2529
	movhi HIGHW1(#_f4_fai_q_inv1_ad_ave), r0, r5
	st.w r0, LOWW(#_f4_fai_q_inv1_ad_ave)[r5]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2530
	movhi HIGHW1(#_f4_wt_inv1_faicd), r0, r5
	st.w r0, LOWW(#_f4_wt_inv1_faicd)[r5]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2531
	movhi HIGHW1(#_f4_sin_inv1_wtcd), r0, r5
	st.w r0, LOWW(#_f4_sin_inv1_wtcd)[r5]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2532
	movhi HIGHW1(#_f4_cos_inv1_wtcd), r0, r5
	st.w r0, LOWW(#_f4_cos_inv1_wtcd)[r5]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2533
	movhi HIGHW1(#_f4_fai_gamma_inv1_ref), r0, r5
	st.w r0, LOWW(#_f4_fai_gamma_inv1_ref)[r5]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2534
	movhi HIGHW1(#_f4_fai_delta_inv1_ref), r0, r5
	st.w r0, LOWW(#_f4_fai_delta_inv1_ref)[r5]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2535
	movhi HIGHW1(#_f4_fai_gamma_inv1_ad), r0, r5
	st.w r0, LOWW(#_f4_fai_gamma_inv1_ad)[r5]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2536
	movhi HIGHW1(#_f4_fai_delta_inv1_ad), r0, r5
	st.w r0, LOWW(#_f4_fai_delta_inv1_ad)[r5]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2537
	movhi HIGHW1(#_f4_fai_gamma_inv1_ad_ave), r0, r5
	st.w r0, LOWW(#_f4_fai_gamma_inv1_ad_ave)[r5]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2538
	movhi HIGHW1(#_f4_fai_delta_inv1_ad_ave), r0, r5
	st.w r0, LOWW(#_f4_fai_delta_inv1_ad_ave)[r5]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2544
	movhi HIGHW1(#_u1_flag_enable_inv1_kictrl), r0, r5
	mov 0x00000001, r7
	st.b r7, LOWW(#_u1_flag_enable_inv1_kictrl)[r5]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2547
	movhi HIGHW1(#_f4_kp_inv1_idq_cmp), r0, r5
	st.w r6, LOWW(#_f4_kp_inv1_idq_cmp)[r5]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2548
	movhi HIGHW1(#_f4_ki_inv1_idq_cmp), r0, r5
	st.w r6, LOWW(#_f4_ki_inv1_idq_cmp)[r5]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2550
	movhi HIGHW1(#_f4_vdq_inv1_ctrl_max), r0, r5
	movhi 0x00004396, r0, r8
	st.w r8, LOWW(#_f4_vdq_inv1_ctrl_max)[r5]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2552
	movhi HIGHW1(#_f4_kp_inv1_idq_ctrl_max), r0, r5
	st.w r6, LOWW(#_f4_kp_inv1_idq_ctrl_max)[r5]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2553
	movhi HIGHW1(#_f4_kp_inv1_idq_ctrl_min), r0, r5
	st.w r2, LOWW(#_f4_kp_inv1_idq_ctrl_min)[r5]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2555
	movhi HIGHW1(#_f4_lev_m_kp_inv1_idq_ctrl_max), r0, r2
	mov 0x3F59999A, r5
	st.w r5, LOWW(#_f4_lev_m_kp_inv1_idq_ctrl_max)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2556
	movhi HIGHW1(#_f4_lev_m_kp_inv1_idq_ctrl_min), r0, r2
	mov 0x3F7D70A4, r8
	st.w r8, LOWW(#_f4_lev_m_kp_inv1_idq_ctrl_min)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2561
	movhi HIGHW1(#_f4_a_kp_inv1_idq_cmp), r0, r2
	mov 0xBF124925, r9
	st.w r9, LOWW(#_f4_a_kp_inv1_idq_cmp)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2565
	movhi HIGHW1(#_f4_b_kp_inv1_idq_cmp), r0, r2
	mov 0x3F15F160, r9
	st.w r9, LOWW(#_f4_b_kp_inv1_idq_cmp)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2568
	movhi HIGHW1(#_f4_ki_inv1_idq_ctrl_max), r0, r2
	st.w r6, LOWW(#_f4_ki_inv1_idq_ctrl_max)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2569
	movhi HIGHW1(#_f4_ki_inv1_idq_ctrl_min), r0, r2
	st.w r6, LOWW(#_f4_ki_inv1_idq_ctrl_min)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2571
	movhi HIGHW1(#_f4_lev_m_ki_inv1_idq_ctrl_max), r0, r2
	movhi 0x00003F80, r0, r9
	st.w r9, LOWW(#_f4_lev_m_ki_inv1_idq_ctrl_max)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2572
	movhi HIGHW1(#_f4_lev_m_ki_inv1_idq_ctrl_min), r0, r2
	mov 0x00000004, r10
	mov 0x3F8CCCCD, r9
	st.w r9, LOWW(#_f4_lev_m_ki_inv1_idq_ctrl_min)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2577
	movhi HIGHW1(#_f4_a_ki_inv1_idq_cmp), r0, r2
	st.w r0, LOWW(#_f4_a_ki_inv1_idq_cmp)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2581
	movhi HIGHW1(#_f4_b_ki_inv1_idq_cmp), r0, r2
	st.w r6, LOWW(#_f4_b_ki_inv1_idq_cmp)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2584
	movhi HIGHW1(#_u1_cnt_idq_inv1_ctrli_delay_max), r0, r2
	st.b r10, LOWW(#_u1_cnt_idq_inv1_ctrli_delay_max)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2586
	movhi HIGHW1(#_f4_lev_m_inv1_idq_ctrl), r0, r2
	mov 0x3F19999A, r11
	st.w r11, LOWW(#_f4_lev_m_inv1_idq_ctrl)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2587
	movhi HIGHW1(#_f4_lev_m_inv1_idq_ctrl_hys), r0, r2
	st.w r6, LOWW(#_f4_lev_m_inv1_idq_ctrl_hys)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2588
	movhi HIGHW1(#_u1_flag_inv1_status_idqctrl_hys), r0, r2
	st.b r0, LOWW(#_u1_flag_inv1_status_idqctrl_hys)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2591
	movhi HIGHW1(#_f4_kp_inv1_idctrl), r0, r2
	st.w r0, LOWW(#_f4_kp_inv1_idctrl)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2592
	movhi HIGHW1(#_f4_ki_inv1_idctrl), r0, r2
	st.w r0, LOWW(#_f4_ki_inv1_idctrl)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2594
	movhi HIGHW1(#_f4_id_inv1_ctrliref), r0, r2
	st.w r0, LOWW(#_f4_id_inv1_ctrliref)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2596
	movhi HIGHW1(#_f4_id_inv1_ctrlperr), r0, r2
	st.w r0, LOWW(#_f4_id_inv1_ctrlperr)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2597
	movhi HIGHW1(#_f4_id_inv1_ctrlierr), r0, r2
	st.w r0, LOWW(#_f4_id_inv1_ctrlierr)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2598
	movhi HIGHW1(#_f4_vd_inv1_ctrl), r0, r2
	st.w r0, LOWW(#_f4_vd_inv1_ctrl)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2599
	movhi HIGHW1(#_f4_vd_inv1_ctrlp), r0, r2
	st.w r0, LOWW(#_f4_vd_inv1_ctrlp)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2600
	movhi HIGHW1(#_f4_vd_inv1_ctrli), r0, r2
	st.w r0, LOWW(#_f4_vd_inv1_ctrli)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2602
	movhi HIGHW1(#_f4_vq_inv1_ctrl_1pulse), r0, r2
	st.w r0, LOWW(#_f4_vq_inv1_ctrl_1pulse)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2603
	movhi HIGHW1(#_f4_vq_inv1_ctrlp_1pulse), r0, r2
	st.w r0, LOWW(#_f4_vq_inv1_ctrlp_1pulse)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2604
	movhi HIGHW1(#_f4_vq_inv1_ctrli_1pulse), r0, r2
	st.w r0, LOWW(#_f4_vq_inv1_ctrli_1pulse)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2607
	movhi HIGHW1(#_f4_kp_inv1_iqctrl), r0, r2
	st.w r0, LOWW(#_f4_kp_inv1_iqctrl)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2608
	movhi HIGHW1(#_f4_ki_inv1_iqctrl), r0, r2
	st.w r0, LOWW(#_f4_ki_inv1_iqctrl)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2610
	movhi HIGHW1(#_f4_iq_inv1_ctrliref), r0, r2
	st.w r0, LOWW(#_f4_iq_inv1_ctrliref)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2612
	movhi HIGHW1(#_f4_iq_inv1_ctrlperr), r0, r2
	st.w r0, LOWW(#_f4_iq_inv1_ctrlperr)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2613
	movhi HIGHW1(#_f4_iq_inv1_ctrlierr), r0, r2
	st.w r0, LOWW(#_f4_iq_inv1_ctrlierr)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2614
	movhi HIGHW1(#_f4_vq_inv1_ctrl), r0, r2
	st.w r0, LOWW(#_f4_vq_inv1_ctrl)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2615
	movhi HIGHW1(#_f4_vq_inv1_ctrlp), r0, r2
	st.w r0, LOWW(#_f4_vq_inv1_ctrlp)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2616
	movhi HIGHW1(#_f4_vq_inv1_ctrli), r0, r2
	st.w r0, LOWW(#_f4_vq_inv1_ctrli)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2618
	movhi HIGHW1(#_f4_vd_inv1_ctrl_1pulse), r0, r2
	st.w r0, LOWW(#_f4_vd_inv1_ctrl_1pulse)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2619
	movhi HIGHW1(#_f4_vd_inv1_ctrlp_1pulse), r0, r2
	st.w r0, LOWW(#_f4_vd_inv1_ctrlp_1pulse)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2620
	movhi HIGHW1(#_f4_vd_inv1_ctrli_1pulse), r0, r2
	st.w r0, LOWW(#_f4_vd_inv1_ctrli_1pulse)[r2]
	movhi HIGHW1(#_u1_cnt_idq_inv1_ctrli_delay), r0, r2
	st.b r0, LOWW(#_u1_cnt_idq_inv1_ctrli_delay)[r2]
	mov 0x00000000, r2
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2623
	mov #_f4_fai_delta_inv1_ctrliref_array, r11
	mov #_f4_fai_gamma_inv1_ctrliref_array, r12
	mov #_f4_iq_inv1_ctrliref_array, r13
	mov #_f4_id_inv1_ctrliref_array, r14
.BB.LABEL.2_1:	; bb.split.clone
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2626
	st.w r0, 0x00000000[r14]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2623
	add 0x00000004, r2
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2627
	st.w r0, 0x00000000[r13]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2628
	st.w r0, 0x00000000[r12]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2629
	st.w r0, 0x00000000[r11]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2626
	st.w r0, 0x00000004[r14]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2627
	st.w r0, 0x00000004[r13]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2628
	st.w r0, 0x00000004[r12]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2629
	st.w r0, 0x00000004[r11]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2626
	st.w r0, 0x00000008[r14]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2627
	st.w r0, 0x00000008[r13]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2628
	st.w r0, 0x00000008[r12]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2629
	st.w r0, 0x00000008[r11]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2626
	st.w r0, 0x0000000C[r14]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2623
	movea 0x00000010, r14, r14
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2627
	st.w r0, 0x0000000C[r13]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2623
	movea 0x00000010, r13, r13
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2628
	st.w r0, 0x0000000C[r12]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2623
	movea 0x00000010, r12, r12
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2629
	st.w r0, 0x0000000C[r11]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2623
	movea 0x00000010, r11, r11
	bz9 .BB.LABEL.2_1
.BB.LABEL.2_2:	; exit.ul101
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 0
	cmp 0x00000004, r2
	bz9 .BB.LABEL.2_5
.BB.LABEL.2_3:	; bb.split.preheader
	sub r2, r10
.BB.LABEL.2_4:	; bb.split
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2626
	st.w r0, 0x00000000[r14]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2623
	add 0x00000004, r14
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2627
	st.w r0, 0x00000000[r13]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2623
	add 0x00000004, r13
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2628
	st.w r0, 0x00000000[r12]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2623
	add 0x00000004, r12
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2629
	st.w r0, 0x00000000[r11]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2623
	add 0x00000004, r11
	loop r10, .BB.LABEL.2_4
.BB.LABEL.2_5:	; bb64
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2632
	movhi HIGHW1(#_u1_cnt_idq_inv1_ctrli_delay), r0, r2
	st.b r0, LOWW(#_u1_cnt_idq_inv1_ctrli_delay)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2634
	movhi HIGHW1(#_u1_flag_select_inv1_fai_ctrl), r0, r2
	st.b r7, LOWW(#_u1_flag_select_inv1_fai_ctrl)[r2]
	movhi 0x00003F80, r0, r2
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2635
	movhi HIGHW1(#_f4_alf_inv1_faictrl_1x), r0, r10
	st.w r2, LOWW(#_f4_alf_inv1_faictrl_1x)[r10]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2636
	movhi HIGHW1(#_f4_alf_inv1_faictrl_2x), r0, r10
	st.w r2, LOWW(#_f4_alf_inv1_faictrl_2x)[r10]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2637
	movhi HIGHW1(#_f4_w0_inv1_faictrl), r0, r10
	st.w r0, LOWW(#_f4_w0_inv1_faictrl)[r10]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2638
	movhi HIGHW1(#_f4_kp_inv1_fai_cmp), r0, r11
	mov 0x3C23D70A, r10
	st.w r10, LOWW(#_f4_kp_inv1_fai_cmp)[r11]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2639
	movhi HIGHW1(#_f4_ki_inv1_fai_cmp), r0, r11
	st.w r6, LOWW(#_f4_ki_inv1_fai_cmp)[r11]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2642
	movhi HIGHW1(#_f4_kp_inv1_fai_ctrl_max), r0, r11
	st.w r10, LOWW(#_f4_kp_inv1_fai_ctrl_max)[r11]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2643
	movhi HIGHW1(#_f4_kp_inv1_fai_ctrl_min), r0, r10
	mov 0x3A83126F, r11
	st.w r11, LOWW(#_f4_kp_inv1_fai_ctrl_min)[r10]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2645
	movhi HIGHW1(#_f4_lev_m_kp_inv1_fai_ctrl_max), r0, r10
	st.w r5, LOWW(#_f4_lev_m_kp_inv1_fai_ctrl_max)[r10]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2646
	movhi HIGHW1(#_f4_lev_m_kp_inv1_fai_ctrl_min), r0, r5
	st.w r8, LOWW(#_f4_lev_m_kp_inv1_fai_ctrl_min)[r5]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2651
	movhi HIGHW1(#_f4_a_kp_inv1_fai_cmp), r0, r5
	mov 0xBD83A83B, r8
	st.w r8, LOWW(#_f4_a_kp_inv1_fai_cmp)[r5]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2655
	movhi HIGHW1(#_f4_b_kp_inv1_fai_cmp), r0, r5
	mov 0x3D84637A, r8
	st.w r8, LOWW(#_f4_b_kp_inv1_fai_cmp)[r5]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2658
	movhi HIGHW1(#_f4_ki_inv1_fai_ctrl_max), r0, r5
	st.w r6, LOWW(#_f4_ki_inv1_fai_ctrl_max)[r5]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2659
	movhi HIGHW1(#_f4_ki_inv1_fai_ctrl_min), r0, r5
	st.w r6, LOWW(#_f4_ki_inv1_fai_ctrl_min)[r5]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2661
	movhi HIGHW1(#_f4_lev_m_ki_inv1_fai_ctrl_max), r0, r5
	st.w r2, LOWW(#_f4_lev_m_ki_inv1_fai_ctrl_max)[r5]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2662
	movhi HIGHW1(#_f4_lev_m_ki_inv1_fai_ctrl_min), r0, r5
	st.w r9, LOWW(#_f4_lev_m_ki_inv1_fai_ctrl_min)[r5]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2667
	movhi HIGHW1(#_f4_a_ki_inv1_fai_cmp), r0, r5
	st.w r0, LOWW(#_f4_a_ki_inv1_fai_cmp)[r5]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2671
	movhi HIGHW1(#_f4_b_ki_inv1_fai_cmp), r0, r5
	st.w r6, LOWW(#_f4_b_ki_inv1_fai_cmp)[r5]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2673
	movhi HIGHW1(#_f4_kp_inv1_faictrl_11), r0, r5
	st.w r0, LOWW(#_f4_kp_inv1_faictrl_11)[r5]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2674
	movhi HIGHW1(#_f4_ki_inv1_faictrl_11), r0, r5
	st.w r0, LOWW(#_f4_ki_inv1_faictrl_11)[r5]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2675
	movhi HIGHW1(#_f4_kp_inv1_faictrl_12), r0, r5
	st.w r0, LOWW(#_f4_kp_inv1_faictrl_12)[r5]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2676
	movhi HIGHW1(#_f4_ki_inv1_faictrl_12), r0, r5
	st.w r0, LOWW(#_f4_ki_inv1_faictrl_12)[r5]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2677
	movhi HIGHW1(#_f4_kp_inv1_faictrl_21), r0, r5
	st.w r0, LOWW(#_f4_kp_inv1_faictrl_21)[r5]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2678
	movhi HIGHW1(#_f4_ki_inv1_faictrl_21), r0, r5
	st.w r0, LOWW(#_f4_ki_inv1_faictrl_21)[r5]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2679
	movhi HIGHW1(#_f4_kp_inv1_faictrl_22), r0, r5
	st.w r0, LOWW(#_f4_kp_inv1_faictrl_22)[r5]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2680
	movhi HIGHW1(#_f4_ki_inv1_faictrl_22), r0, r5
	st.w r0, LOWW(#_f4_ki_inv1_faictrl_22)[r5]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2681
	movhi HIGHW1(#_f4_fai_gamma_inv1_ctrlperr), r0, r5
	st.w r0, LOWW(#_f4_fai_gamma_inv1_ctrlperr)[r5]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2682
	movhi HIGHW1(#_f4_fai_gamma_inv1_ctrlierr), r0, r5
	st.w r0, LOWW(#_f4_fai_gamma_inv1_ctrlierr)[r5]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2683
	movhi HIGHW1(#_f4_fai_gamma_inv1_ctrliref), r0, r5
	st.w r0, LOWW(#_f4_fai_gamma_inv1_ctrliref)[r5]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2684
	movhi HIGHW1(#_f4_v_gamma_inv1_ctrl), r0, r5
	st.w r0, LOWW(#_f4_v_gamma_inv1_ctrl)[r5]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2685
	movhi HIGHW1(#_f4_v_gamma_inv1_ctrlp), r0, r5
	st.w r0, LOWW(#_f4_v_gamma_inv1_ctrlp)[r5]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2686
	movhi HIGHW1(#_f4_v_gamma_inv1_ctrli), r0, r5
	st.w r0, LOWW(#_f4_v_gamma_inv1_ctrli)[r5]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2687
	movhi HIGHW1(#_f4_v_gamma_inv1_ctrl_1pulse), r0, r5
	st.w r0, LOWW(#_f4_v_gamma_inv1_ctrl_1pulse)[r5]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2688
	movhi HIGHW1(#_f4_v_gamma_inv1_ctrlp_1pulse), r0, r5
	st.w r0, LOWW(#_f4_v_gamma_inv1_ctrlp_1pulse)[r5]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2689
	movhi HIGHW1(#_f4_v_gamma_inv1_ctrli_1pulse), r0, r5
	st.w r0, LOWW(#_f4_v_gamma_inv1_ctrli_1pulse)[r5]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2690
	movhi HIGHW1(#_f4_fai_delta_inv1_ctrlperr), r0, r5
	st.w r0, LOWW(#_f4_fai_delta_inv1_ctrlperr)[r5]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2691
	movhi HIGHW1(#_f4_fai_delta_inv1_ctrlierr), r0, r5
	st.w r0, LOWW(#_f4_fai_delta_inv1_ctrlierr)[r5]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2692
	movhi HIGHW1(#_f4_fai_delta_inv1_ctrliref), r0, r5
	st.w r0, LOWW(#_f4_fai_delta_inv1_ctrliref)[r5]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2693
	movhi HIGHW1(#_f4_v_delta_inv1_ctrl), r0, r5
	st.w r0, LOWW(#_f4_v_delta_inv1_ctrl)[r5]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2694
	movhi HIGHW1(#_f4_v_delta_inv1_ctrlp), r0, r5
	st.w r0, LOWW(#_f4_v_delta_inv1_ctrlp)[r5]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2695
	movhi HIGHW1(#_f4_v_delta_inv1_ctrli), r0, r5
	st.w r0, LOWW(#_f4_v_delta_inv1_ctrli)[r5]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2696
	movhi HIGHW1(#_f4_v_delta_inv1_ctrl_1pulse), r0, r5
	st.w r0, LOWW(#_f4_v_delta_inv1_ctrl_1pulse)[r5]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2697
	movhi HIGHW1(#_f4_v_delta_inv1_ctrlp_1pulse), r0, r5
	st.w r0, LOWW(#_f4_v_delta_inv1_ctrlp_1pulse)[r5]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2698
	movhi HIGHW1(#_f4_v_delta_inv1_ctrli_1pulse), r0, r5
	st.w r0, LOWW(#_f4_v_delta_inv1_ctrli_1pulse)[r5]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2700
	movhi HIGHW1(#_u1_flag_inv1_status_idqctrl), r0, r5
	st.b r0, LOWW(#_u1_flag_inv1_status_idqctrl)[r5]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2706
	movhi HIGHW1(#_f4_vd_inv1_emf), r0, r5
	st.w r0, LOWW(#_f4_vd_inv1_emf)[r5]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2707
	movhi HIGHW1(#_f4_vq_inv1_emf), r0, r5
	st.w r0, LOWW(#_f4_vq_inv1_emf)[r5]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2708
	movhi HIGHW1(#_f4_vd_inv1_rs), r0, r5
	st.w r0, LOWW(#_f4_vd_inv1_rs)[r5]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2709
	movhi HIGHW1(#_f4_vq_inv1_rs), r0, r5
	st.w r0, LOWW(#_f4_vq_inv1_rs)[r5]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2711
	movhi HIGHW1(#_f4_v_gamma_inv1_emf), r0, r5
	st.w r0, LOWW(#_f4_v_gamma_inv1_emf)[r5]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2712
	movhi HIGHW1(#_f4_v_delta_inv1_emf), r0, r5
	st.w r0, LOWW(#_f4_v_delta_inv1_emf)[r5]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2713
	movhi HIGHW1(#_f4_v_gamma_inv1_rs), r0, r5
	st.w r0, LOWW(#_f4_v_gamma_inv1_rs)[r5]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2714
	movhi HIGHW1(#_f4_v_delta_inv1_rs), r0, r5
	st.w r0, LOWW(#_f4_v_delta_inv1_rs)[r5]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2716
	movhi HIGHW1(#_f4_vd_inv1_ref_tmp), r0, r5
	st.w r0, LOWW(#_f4_vd_inv1_ref_tmp)[r5]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2717
	movhi HIGHW1(#_f4_vq_inv1_ref_tmp), r0, r5
	st.w r0, LOWW(#_f4_vq_inv1_ref_tmp)[r5]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2723
	movhi HIGHW1(#_u1_flag_inv1_status_vdq_max), r0, r5
	st.b r0, LOWW(#_u1_flag_inv1_status_vdq_max)[r5]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2725
	movhi HIGHW1(#_f4_k_inv1_vdq_max), r0, r5
	mov 0x3FA66666, r6
	st.w r6, LOWW(#_f4_k_inv1_vdq_max)[r5]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2727
	movhi HIGHW1(#_f4_vdq_inv1_ref), r0, r5
	st.w r0, LOWW(#_f4_vdq_inv1_ref)[r5]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2728
	movhi HIGHW1(#_f4_vdq_inv1_max), r0, r5
	st.w r0, LOWW(#_f4_vdq_inv1_max)[r5]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2730
	movhi HIGHW1(#_f4_vd_inv1_ref), r0, r5
	st.w r0, LOWW(#_f4_vd_inv1_ref)[r5]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2731
	movhi HIGHW1(#_f4_vq_inv1_ref), r0, r5
	st.w r0, LOWW(#_f4_vq_inv1_ref)[r5]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2732
	movhi HIGHW1(#_f4_v_gamma_inv1_ref), r0, r5
	st.w r0, LOWW(#_f4_v_gamma_inv1_ref)[r5]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2733
	movhi HIGHW1(#_f4_v_delta_inv1_ref), r0, r5
	st.w r0, LOWW(#_f4_v_delta_inv1_ref)[r5]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2740
	movhi HIGHW1(#_f4_k_inv1_modu), r0, r5
	st.w r2, LOWW(#_f4_k_inv1_modu)[r5]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2741
	movhi HIGHW1(#_f4_k_inv1_modu_max), r0, r5
	mov 0x41DA126F, r6
	st.w r6, LOWW(#_f4_k_inv1_modu_max)[r5]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2743
	movhi HIGHW1(#_f4_dk_inv1_modu_kp), r0, r5
	st.w r2, LOWW(#_f4_dk_inv1_modu_kp)[r5]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2744
	movhi HIGHW1(#_f4_dk_inv1_modu_ki), r0, r5
	st.w r2, LOWW(#_f4_dk_inv1_modu_ki)[r5]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2745
	movhi HIGHW1(#_f4_dk_inv1_modu_kicmp), r0, r2
	movhi 0x00004120, r0, r5
	st.w r5, LOWW(#_f4_dk_inv1_modu_kicmp)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2747
	movhi HIGHW1(#_u1_flag_enable_inv1_dk_modu), r0, r2
	st.b r7, LOWW(#_u1_flag_enable_inv1_dk_modu)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2749
	movhi HIGHW1(#_u4_n_k_inv1_modu), r0, r2
	st.w r0, LOWW(#_u4_n_k_inv1_modu)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2751
	movhi HIGHW1(#_f4_m_inv1_lpf), r0, r2
	st.w r0, LOWW(#_f4_m_inv1_lpf)[r2]
	movhi 0x00004396, r0, r2
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2752
	movhi HIGHW1(#_f4_wclpf_inv1_m), r0, r5
	st.w r2, LOWW(#_f4_wclpf_inv1_m)[r5]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2758
	movhi HIGHW1(#_u1_flag_inv1_modevctrl), r0, r5
	st.b r0, LOWW(#_u1_flag_inv1_modevctrl)[r5]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2759
	movhi HIGHW1(#_u1_flag_inv1_modevctrl_tmp), r0, r5
	st.b r0, LOWW(#_u1_flag_inv1_modevctrl_tmp)[r5]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2761
	movhi HIGHW1(#_u2_cnt_inv1_vctrlmode), r0, r5
	st.h r0, LOWW(#_u2_cnt_inv1_vctrlmode)[r5]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2762
	movhi HIGHW1(#_u2_cnt_inv1_svpwmmode), r0, r5
	movea 0x00000064, r0, r6
	st.h r6, LOWW(#_u2_cnt_inv1_svpwmmode)[r5]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2763
	movhi HIGHW1(#_u2_cnt_inv1_1pulsemode), r0, r5
	movea 0x00000014, r0, r6
	st.h r6, LOWW(#_u2_cnt_inv1_1pulsemode)[r5]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2765
	movhi HIGHW1(#_u1_flag_enable_inv1_1pulse), r0, r5
	st.b r7, LOWW(#_u1_flag_enable_inv1_1pulse)[r5]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2767
	movhi HIGHW1(#_f4_lev_m_inv1_1pulse), r0, r5
	mov 0x3F8F5C29, r6
	st.w r6, LOWW(#_f4_lev_m_inv1_1pulse)[r5]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2768
	movhi HIGHW1(#_f4_lev_m_inv1_svpwm), r0, r5
	mov 0x3F8E147B, r6
	st.w r6, LOWW(#_f4_lev_m_inv1_svpwm)[r5]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2770
	movhi HIGHW1(#_u1_flag_inv1_modetiming), r0, r5
	st.b r0, LOWW(#_u1_flag_inv1_modetiming)[r5]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2771
	movhi HIGHW1(#_u1_flag_status_inv1_idq_ctrl_pwm), r0, r5
	st.b r0, LOWW(#_u1_flag_status_inv1_idq_ctrl_pwm)[r5]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2777
	movhi HIGHW1(#_f4_wt_inv1_delay), r0, r5
	st.w r0, LOWW(#_f4_wt_inv1_delay)[r5]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2778
	movhi HIGHW1(#_f4_wt_inv1_svctrl), r0, r5
	st.w r0, LOWW(#_f4_wt_inv1_svctrl)[r5]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2780
	movhi HIGHW1(#_f4_sin_inv1_wtsvctrl), r0, r5
	st.w r0, LOWW(#_f4_sin_inv1_wtsvctrl)[r5]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2781
	movhi HIGHW1(#_f4_cos_inv1_wtsvctrl), r0, r5
	st.w r0, LOWW(#_f4_cos_inv1_wtsvctrl)[r5]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2783
	movhi HIGHW1(#_s4_wt_inv1_dq_2pi_2_31), r0, r5
	st.w r0, LOWW(#_s4_wt_inv1_dq_2pi_2_31)[r5]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2784
	movhi HIGHW1(#_s4_wt_inv1_delay_2pi_2_31), r0, r5
	st.w r0, LOWW(#_s4_wt_inv1_delay_2pi_2_31)[r5]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2786
	movhi HIGHW1(#_f4_wt_inv1_vdq), r0, r5
	st.w r0, LOWW(#_f4_wt_inv1_vdq)[r5]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2787
	movhi HIGHW1(#_s4_wt_inv1_vdq_2pi_2_31), r0, r5
	st.w r0, LOWW(#_s4_wt_inv1_vdq_2pi_2_31)[r5]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2789
	movhi HIGHW1(#_s4_wt_inv1_1pulse_pwm_2pi_2_31), r0, r5
	st.w r0, LOWW(#_s4_wt_inv1_1pulse_pwm_2pi_2_31)[r5]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2791
	movhi HIGHW1(#_f4_vdq_inv1_max_1pulse), r0, r5
	st.w r0, LOWW(#_f4_vdq_inv1_max_1pulse)[r5]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2792
	movhi HIGHW1(#_f4_vd_inv1_ref_1pulse), r0, r5
	st.w r0, LOWW(#_f4_vd_inv1_ref_1pulse)[r5]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2793
	movhi HIGHW1(#_f4_vq_inv1_ref_1pulse), r0, r5
	st.w r0, LOWW(#_f4_vq_inv1_ref_1pulse)[r5]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2794
	movhi HIGHW1(#_f4_vdq_inv1_ref_1pulse), r0, r5
	st.w r0, LOWW(#_f4_vdq_inv1_ref_1pulse)[r5]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2795
	movhi HIGHW1(#_f4_v_gamma_inv1_ref_1pulse), r0, r5
	st.w r0, LOWW(#_f4_v_gamma_inv1_ref_1pulse)[r5]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2796
	movhi HIGHW1(#_f4_v_delta_inv1_ref_1pulse), r0, r5
	st.w r0, LOWW(#_f4_v_delta_inv1_ref_1pulse)[r5]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2802
	movhi HIGHW1(#_f4_wclpf_inv1_p123), r0, r5
	st.w r2, LOWW(#_f4_wclpf_inv1_p123)[r5]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2803
	movhi HIGHW1(#_f4_power_inv1_p123), r0, r2
	st.w r0, LOWW(#_f4_power_inv1_p123)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_idqctrl.c", 2804
	movhi HIGHW1(#_f4_power_inv1_p123_lpf), r0, r2
	st.w r0, LOWW(#_f4_power_inv1_p123_lpf)[r2]
	jmp [r31]
	.section .bss, bss
	.align 4
_f4_pf_inv1:
	.ds (4)
	.align 4
_f4_dpf_inv1:
	.ds (4)
	.align 4
_f4_rs_inv1:
	.ds (4)
	.align 4
_f4_fm_inv1:
	.ds (4)
	.align 4
_f4_dfm_inv1:
	.ds (4)
	.align 4
_f4_ld_inv1_const:
	.ds (4)
	.align 4
_f4_i_ld_inv1_isat:
	.ds (4)
	.align 4
_f4_k1_ld_inv1_isat:
	.ds (4)
	.align 4
_f4_k2_ld_inv1_isat:
	.ds (4)
	.align 4
_f4_lq_inv1_const:
	.ds (4)
	.align 4
_f4_i_lq_inv1_isat:
	.ds (4)
	.align 4
_f4_k1_lq_inv1_isat:
	.ds (4)
	.align 4
_f4_k2_lq_inv1_isat:
	.ds (4)
	.align 4
_f4_ld_inv1_isat:
	.ds (4)
	.align 4
_f4_lq_inv1_isat:
	.ds (4)
_u1_flag_ldq_inv1_mode:
	.ds (1)
	.align 4
_f4_kp_inv1_vdqctrl:
	.ds (4)
	.align 4
_f4_ki_inv1_vdqctrl:
	.ds (4)
	.align 4
_f4_k_inv1_vdq_vctrl:
	.ds (4)
	.align 4
_f4_vdq_inv1_vctrl:
	.ds (4)
	.align 4
_f4_vdqctrl_inv1_err:
	.ds (4)
	.align 4
_f4_id_inv1_vdqctrlp:
	.ds (4)
	.align 4
_f4_id_inv1_vdqctrli:
	.ds (4)
	.align 4
_f4_id_inv1_vdqctrl:
	.ds (4)
	.align 4
_f4_id_inv1_vdqctrl_max:
	.ds (4)
	.align 4
_f4_iq_inv1_vdqctrlp:
	.ds (4)
	.align 4
_f4_iq_inv1_vdqctrli:
	.ds (4)
	.align 4
_f4_iq_inv1_vdqctrl:
	.ds (4)
	.align 4
_f4_iq_inv1_vdqctrl_max:
	.ds (4)
_u1_flag_status_inv1_vdqctrl:
	.ds (1)
	.align 4
_f4_idq_inv1_ref:
	.ds (4)
	.align 4
_f4_id_inv1_ad_sum:
	.ds (4)
	.align 4
_f4_iq_inv1_ad_sum:
	.ds (4)
	.align 4
_f4_id_inv1_ad_ave:
	.ds (4)
	.align 4
_f4_iq_inv1_ad_ave:
	.ds (4)
	.align 4
_u4_cnt_idq_inv1_ad_ave:
	.ds (4)
	.align 4
_f4_k_inv1_idq_cmp:
	.ds (4)
	.align 4
_f4_wt_inv1_idq_cmp:
	.ds (4)
	.align 4
_f4_sin_inv1_wtidq_cmp:
	.ds (4)
	.align 4
_f4_cos_inv1_wtidq_cmp:
	.ds (4)
	.align 4
_f4_id_inv1_ad_cmp:
	.ds (4)
	.align 4
_f4_iq_inv1_ad_cmp:
	.ds (4)
	.align 4
_f4_fai_d_inv1_ref:
	.ds (4)
	.align 4
_f4_fai_q_inv1_ref:
	.ds (4)
	.align 4
_f4_fai_d_inv1_ad:
	.ds (4)
	.align 4
_f4_fai_q_inv1_ad:
	.ds (4)
	.align 4
_f4_fai_d_inv1_ad_ave:
	.ds (4)
	.align 4
_f4_fai_q_inv1_ad_ave:
	.ds (4)
	.align 4
_f4_wt_inv1_faicd:
	.ds (4)
	.align 4
_f4_sin_inv1_wtcd:
	.ds (4)
	.align 4
_f4_cos_inv1_wtcd:
	.ds (4)
	.align 4
_f4_fai_gamma_inv1_ref:
	.ds (4)
	.align 4
_f4_fai_delta_inv1_ref:
	.ds (4)
	.align 4
_f4_fai_gamma_inv1_ad:
	.ds (4)
	.align 4
_f4_fai_delta_inv1_ad:
	.ds (4)
	.align 4
_f4_fai_gamma_inv1_ad_ave:
	.ds (4)
	.align 4
_f4_fai_delta_inv1_ad_ave:
	.ds (4)
_u1_flag_enable_inv1_kictrl:
	.ds (1)
	.align 4
_f4_kp_inv1_idq_cmp:
	.ds (4)
	.align 4
_f4_ki_inv1_idq_cmp:
	.ds (4)
	.align 4
_f4_vdq_inv1_ctrl_max:
	.ds (4)
	.align 4
_f4_kp_inv1_idq_ctrl_max:
	.ds (4)
	.align 4
_f4_kp_inv1_idq_ctrl_min:
	.ds (4)
	.align 4
_f4_lev_m_kp_inv1_idq_ctrl_max:
	.ds (4)
	.align 4
_f4_lev_m_kp_inv1_idq_ctrl_min:
	.ds (4)
	.align 4
_f4_a_kp_inv1_idq_cmp:
	.ds (4)
	.align 4
_f4_b_kp_inv1_idq_cmp:
	.ds (4)
	.align 4
_f4_ki_inv1_idq_ctrl_max:
	.ds (4)
	.align 4
_f4_ki_inv1_idq_ctrl_min:
	.ds (4)
	.align 4
_f4_lev_m_ki_inv1_idq_ctrl_max:
	.ds (4)
	.align 4
_f4_lev_m_ki_inv1_idq_ctrl_min:
	.ds (4)
	.align 4
_f4_a_ki_inv1_idq_cmp:
	.ds (4)
	.align 4
_f4_b_ki_inv1_idq_cmp:
	.ds (4)
_u1_cnt_idq_inv1_ctrli_delay:
	.ds (1)
_u1_cnt_idq_inv1_ctrli_delay_max:
	.ds (1)
	.align 4
_f4_lev_m_inv1_idq_ctrl:
	.ds (4)
	.align 4
_f4_lev_m_inv1_idq_ctrl_hys:
	.ds (4)
_u1_flag_inv1_status_idqctrl_hys:
	.ds (1)
	.align 4
_f4_kp_inv1_idctrl:
	.ds (4)
	.align 4
_f4_ki_inv1_idctrl:
	.ds (4)
	.align 4
_f4_id_inv1_ctrlperr:
	.ds (4)
	.align 4
_f4_id_inv1_ctrlierr:
	.ds (4)
	.align 4
_f4_id_inv1_ctrliref:
	.ds (4)
	.align 4
_f4_id_inv1_ctrliref_array:
	.ds (20)
	.align 4
_f4_vd_inv1_ctrl:
	.ds (4)
	.align 4
_f4_vd_inv1_ctrlp:
	.ds (4)
	.align 4
_f4_vd_inv1_ctrli:
	.ds (4)
	.align 4
_f4_vq_inv1_ctrl_1pulse:
	.ds (4)
	.align 4
_f4_vq_inv1_ctrlp_1pulse:
	.ds (4)
	.align 4
_f4_vq_inv1_ctrli_1pulse:
	.ds (4)
	.align 4
_f4_kp_inv1_iqctrl:
	.ds (4)
	.align 4
_f4_ki_inv1_iqctrl:
	.ds (4)
	.align 4
_f4_iq_inv1_ctrlperr:
	.ds (4)
	.align 4
_f4_iq_inv1_ctrlierr:
	.ds (4)
	.align 4
_f4_iq_inv1_ctrliref:
	.ds (4)
	.align 4
_f4_iq_inv1_ctrliref_array:
	.ds (20)
	.align 4
_f4_vq_inv1_ctrl:
	.ds (4)
	.align 4
_f4_vq_inv1_ctrlp:
	.ds (4)
	.align 4
_f4_vq_inv1_ctrli:
	.ds (4)
	.align 4
_f4_vd_inv1_ctrl_1pulse:
	.ds (4)
	.align 4
_f4_vd_inv1_ctrlp_1pulse:
	.ds (4)
	.align 4
_f4_vd_inv1_ctrli_1pulse:
	.ds (4)
_u1_flag_select_inv1_fai_ctrl:
	.ds (1)
	.align 4
_f4_alf_inv1_faictrl_1x:
	.ds (4)
	.align 4
_f4_alf_inv1_faictrl_2x:
	.ds (4)
	.align 4
_f4_w0_inv1_faictrl:
	.ds (4)
	.align 4
_f4_kp_inv1_fai_cmp:
	.ds (4)
	.align 4
_f4_ki_inv1_fai_cmp:
	.ds (4)
	.align 4
_f4_kp_inv1_fai_ctrl_max:
	.ds (4)
	.align 4
_f4_kp_inv1_fai_ctrl_min:
	.ds (4)
	.align 4
_f4_lev_m_kp_inv1_fai_ctrl_max:
	.ds (4)
	.align 4
_f4_lev_m_kp_inv1_fai_ctrl_min:
	.ds (4)
	.align 4
_f4_a_kp_inv1_fai_cmp:
	.ds (4)
	.align 4
_f4_b_kp_inv1_fai_cmp:
	.ds (4)
	.align 4
_f4_ki_inv1_fai_ctrl_max:
	.ds (4)
	.align 4
_f4_ki_inv1_fai_ctrl_min:
	.ds (4)
	.align 4
_f4_lev_m_ki_inv1_fai_ctrl_max:
	.ds (4)
	.align 4
_f4_lev_m_ki_inv1_fai_ctrl_min:
	.ds (4)
	.align 4
_f4_a_ki_inv1_fai_cmp:
	.ds (4)
	.align 4
_f4_b_ki_inv1_fai_cmp:
	.ds (4)
	.align 4
_f4_kp_inv1_faictrl_11:
	.ds (4)
	.align 4
_f4_ki_inv1_faictrl_11:
	.ds (4)
	.align 4
_f4_kp_inv1_faictrl_12:
	.ds (4)
	.align 4
_f4_ki_inv1_faictrl_12:
	.ds (4)
	.align 4
_f4_kp_inv1_faictrl_21:
	.ds (4)
	.align 4
_f4_ki_inv1_faictrl_21:
	.ds (4)
	.align 4
_f4_kp_inv1_faictrl_22:
	.ds (4)
	.align 4
_f4_ki_inv1_faictrl_22:
	.ds (4)
	.align 4
_f4_fai_gamma_inv1_ctrlperr:
	.ds (4)
	.align 4
_f4_fai_gamma_inv1_ctrlierr:
	.ds (4)
	.align 4
_f4_fai_gamma_inv1_ctrliref:
	.ds (4)
	.align 4
_f4_fai_gamma_inv1_ctrliref_array:
	.ds (20)
	.align 4
_f4_v_gamma_inv1_ctrl:
	.ds (4)
	.align 4
_f4_v_gamma_inv1_ctrlp:
	.ds (4)
	.align 4
_f4_v_gamma_inv1_ctrli:
	.ds (4)
	.align 4
_f4_v_gamma_inv1_ctrl_1pulse:
	.ds (4)
	.align 4
_f4_v_gamma_inv1_ctrlp_1pulse:
	.ds (4)
	.align 4
_f4_v_gamma_inv1_ctrli_1pulse:
	.ds (4)
	.align 4
_f4_fai_delta_inv1_ctrlperr:
	.ds (4)
	.align 4
_f4_fai_delta_inv1_ctrlierr:
	.ds (4)
	.align 4
_f4_fai_delta_inv1_ctrliref:
	.ds (4)
	.align 4
_f4_fai_delta_inv1_ctrliref_array:
	.ds (20)
	.align 4
_f4_v_delta_inv1_ctrl:
	.ds (4)
	.align 4
_f4_v_delta_inv1_ctrlp:
	.ds (4)
	.align 4
_f4_v_delta_inv1_ctrli:
	.ds (4)
	.align 4
_f4_v_delta_inv1_ctrl_1pulse:
	.ds (4)
	.align 4
_f4_v_delta_inv1_ctrlp_1pulse:
	.ds (4)
	.align 4
_f4_v_delta_inv1_ctrli_1pulse:
	.ds (4)
_u1_flag_inv1_status_idqctrl:
	.ds (1)
	.align 4
_f4_vd_inv1_emf:
	.ds (4)
	.align 4
_f4_vq_inv1_emf:
	.ds (4)
	.align 4
_f4_vd_inv1_rs:
	.ds (4)
	.align 4
_f4_vq_inv1_rs:
	.ds (4)
	.align 4
_f4_v_gamma_inv1_emf:
	.ds (4)
	.align 4
_f4_v_delta_inv1_emf:
	.ds (4)
	.align 4
_f4_v_gamma_inv1_rs:
	.ds (4)
	.align 4
_f4_v_delta_inv1_rs:
	.ds (4)
	.align 4
_f4_vd_inv1_ref_tmp:
	.ds (4)
	.align 4
_f4_vq_inv1_ref_tmp:
	.ds (4)
	.align 4
_f4_v_gamma_inv1_ref_tmp:
	.ds (4)
	.align 4
_f4_v_delta_inv1_ref_tmp:
	.ds (4)
_u1_flag_inv1_status_vdq_max:
	.ds (1)
	.align 4
_f4_k_inv1_vdq_max:
	.ds (4)
	.align 4
_f4_vdq_inv1_max:
	.ds (4)
	.align 4
_f4_v_gamma_inv1_ref:
	.ds (4)
	.align 4
_f4_v_delta_inv1_ref:
	.ds (4)
	.align 4
_f4_m_inv1_ref:
	.ds (4)
	.align 4
_f4_k_inv1_modu:
	.ds (4)
	.align 4
_f4_k_inv1_modu_max:
	.ds (4)
_u1_flag_enable_inv1_dk_modu:
	.ds (1)
	.align 4
_f4_dk_inv1_modu_kp:
	.ds (4)
	.align 4
_f4_dk_inv1_modu_ki:
	.ds (4)
	.align 4
_f4_dk_inv1_modu_kicmp:
	.ds (4)
	.align 4
_u4_n_k_inv1_modu:
	.ds (4)
	.align 4
_f4_m_inv1_lpf:
	.ds (4)
	.align 4
_f4_wclpf_inv1_m:
	.ds (4)
_u1_flag_inv1_modevctrl_tmp:
	.ds (1)
	.align 2
_u2_cnt_inv1_vctrlmode:
	.ds (2)
	.align 2
_u2_cnt_inv1_1pulsemode:
	.ds (2)
	.align 2
_u2_cnt_inv1_svpwmmode:
	.ds (2)
_u1_flag_enable_inv1_1pulse:
	.ds (1)
	.align 4
_f4_lev_m_inv1_1pulse:
	.ds (4)
	.align 4
_f4_lev_m_inv1_svpwm:
	.ds (4)
_u1_flag_inv1_modetiming:
	.ds (1)
_u1_flag_status_inv1_idq_ctrl_pwm:
	.ds (1)
	.align 4
_f4_wt_inv1_delay:
	.ds (4)
	.align 4
_f4_wt_inv1_svctrl:
	.ds (4)
	.align 4
_f4_sin_inv1_wtsvctrl:
	.ds (4)
	.align 4
_f4_cos_inv1_wtsvctrl:
	.ds (4)
	.align 4
_s4_wt_inv1_dq_2pi_2_31:
	.ds (4)
	.align 4
_s4_wt_inv1_delay_2pi_2_31:
	.ds (4)
	.align 4
_f4_wt_inv1_vdq:
	.ds (4)
	.align 4
_s4_wt_inv1_vdq_2pi_2_31:
	.ds (4)
	.align 4
_s4_wt_inv1_1pulse_pwm_2pi_2_31:
	.ds (4)
	.align 4
_f4_vdq_inv1_max_1pulse:
	.ds (4)
	.align 4
_f4_vd_inv1_ref_1pulse:
	.ds (4)
	.align 4
_f4_vq_inv1_ref_1pulse:
	.ds (4)
	.align 4
_f4_vdq_inv1_ref_1pulse:
	.ds (4)
	.align 4
_f4_v_gamma_inv1_ref_1pulse:
	.ds (4)
	.align 4
_f4_v_delta_inv1_ref_1pulse:
	.ds (4)
	.align 4
_f4_wclpf_inv1_p123:
	.ds (4)
	.align 4
_f4_power_inv1_p123:
	.ds (4)
	.align 4
_f4_power_inv1_p123_lpf:
	.ds (4)
