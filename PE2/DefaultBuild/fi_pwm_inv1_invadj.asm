#CC-RH Compiler RH850 Assembler Source
#@	CC-RH Version : V2.06.00  [28 Nov 2023]
#@	Command : Common\fi_pe2_error.c ..\Common\iolib\io_CPU.c ..\Common\iolib\io_ADC.c ..\Common\iolib\io_CSIH0.c ..\Common\iolib\io_CSIH1.c ..\Common\iolib\io_ENCA0.c ..\Common\iolib\io_ENCA1.c ..\Common\iolib\io_FCAN.c ..\Common\iolib\io_RDC20.c ..\Common\iolib\io_RDC21.c ..\Common\iolib\io_SCI0_40MHz.c ..\Common\iolib\io_SCI1_40MHz.c ..\Common\iolib\io_SCI2_40MHz.c ..\Common\iolib\io_TAUD0.c ..\Common\iolib\io_TAUD1.c ..\Common\iolib\io_TAUJ0.c ..\Common\iolib\io_TSG30.c ..\Common\iolib\io_TSG31.c ..\PE1\AWatcher\VECLIB_CMDMONI.c src\fpmsm_main.c ..\PE1\src\fi_AWatcher.c src\fi_1ms_int.c src\fi_1ms_inv1_adctrl.c src\fi_1ms_inv1_errctrl.c src\fi_20us_int.c src\fi_20us_inv1_1pulse.c src\fi_enc1_int.c src\fi_enc1_inv1_1pulse.c src\fi_pwm_int.c src\fi_pwm_inv1_1pulse.c src\fi_pwm_inv1_adctrl.c src\fi_pwm_inv1_encctrl.c src\fi_pwm_inv1_errctrl.c src\fi_pwm_inv1_idqctrl.c src\fi_pwm_inv1_invadj.c src\fi_pwm_inv1_svctrl.c src\fi_pwm_inv1_syncctrl.c src\fi_pwm_inv1_vctrlerr.c src\mapdata_ld_inv1_2d.c src\mapdata_ld_inv1_2d_map.c src\mapdata_lq_inv1_2d.c src\mapdata_lq_inv1_2d_map.c ..\PE1\src\fb_kpwm_tbl.c ..\PE1\src\fb_therm_calc.c ..\PE1\src\fb_therm_tbl_module.c ..\PE1\src\fb_vctrlerr_tbl.c src\fi_1ms_inv1_idqcom.c ..\PE1\src\fi_pwm_vctrlerrtbl.c src\fi_1ms_inv1_seqctrl.c ..\Common\iolib\io_PIO_amdt0530.c -Xobj_path=DefaultBuild -Xcpu=g3m -g -g_line -Ospeed -Oinline_size -I..\PE1\src -Isrc -I..\Common -D__CLK_HSB=80,__CLK_LSB=40,__CLKC_HSB=80,__CLK_CLSB=40 -use_recipf -Xasm_path=DefaultBuild -c
#@	compiled at Thu May 23 14:28:27 2024

	.file "src\fi_pwm_inv1_invadj.c"

	$reg_mode 32
	.dbl_size 8

	.extern _u1_flag_inv0_adj
	.extern _f4_f_inv0_adj
	.extern _f4_wr_inv0_adj
	.extern _f4_wt_inv0_adj
	.extern _f4_id_inv0_dc_adj
	.extern _f4_id_inv0_ac_adj
	.extern _f4_iq_inv0_dc_adj
	.extern _f4_iq_inv0_ac_adj
	.extern _f4_vd_inv0_adj_ref
	.extern _f4_vq_inv0_adj_ref
	.extern _f4_wtdq_inv0_adj
	.extern _u1_flag_inv0_vctrlerr_adj
	.extern _f4_rs_inv0_adj
	.extern _u1_pwm_inv1_status
	.extern _f4_fs_inv1_ctrl
	.extern _f4_ts_inv1_ctrl
	.extern _f4_id_inv1_ad
	.extern _f4_iq_inv1_ad
	.extern _f4_id_inv1_ref
	.extern _f4_iq_inv1_ref
	.extern _f4_vd_inv1_ref
	.extern _f4_vq_inv1_ref
	.extern _f4_wt_inv1_dq_tmp
	.extern _f4_wr_inv1_pll_lpf
	.extern _f4_ld_inv1_const
	.extern _f4_lq_inv1_const
	.extern _f4_vd_inv1_ctrl
	.extern _f4_vq_inv1_ctrl
	.public _u1_flag_inv1_adj, 1
	.public _f4_f_inv1_adj, 4
	.public _f4_f_inv1_adj_tmp, 4
	.public _f4_df_inv1_adj, 4
	.public _f4_wr_inv1_adj, 4
	.public _f4_wt_inv1_adj, 4
	.public _f4_sin_inv1_wtadj, 4
	.public _f4_cos_inv1_wtadj, 4
	.public _f4_id_inv1_adj, 4
	.public _f4_iq_inv1_adj, 4
	.public _f4_id_inv1_dc_adj, 4
	.public _f4_id_inv1_ac_adj, 4
	.public _f4_iq_inv1_dc_adj, 4
	.public _f4_iq_inv1_ac_adj, 4
	.public _f4_id_inv1_dc_adj_tmp, 4
	.public _f4_id_inv1_ac_adj_tmp, 4
	.public _f4_iq_inv1_dc_adj_tmp, 4
	.public _f4_iq_inv1_ac_adj_tmp, 4
	.public _f4_didq_inv1_adj, 4
	.public _f4_vd_inv1_adj_ref, 4
	.public _f4_vq_inv1_adj_ref, 4
	.public _f4_wtdq_inv1_adj, 4
	.public _f4_vd_inv1_adj_ad, 4
	.public _f4_vq_inv1_adj_ad, 4
	.public _u1_flag_inv1_vctrlerr_adj, 1
	.public _f4_vctrlerr_inv1_adj, 4
	.public _f4_rs_inv1_adj, 4
	.public _f4_wt_inv1_offset_adj, 4
	.public _f4_wt_inv1_dq_offset_err_adj, 4
	.public _f4_sin_inv1_wtdq_offset_adj, 4
	.public _f4_cos_inv1_wtdq_offset_adj, 4
	.public _f4_vd_inv1_wtdq_offset_adj, 4
	.public _f4_vq_inv1_wtdq_offset_adj, 4
	.public _f4_time_inv1_enc_delay_us_adj, 4
	.public _f4_ki_inv1_wtdq_offset_adj, 4
	.public _f4_vd_inv1_plid, 4
	.public _f4_vq_inv1_plid, 4
	.public _f4_id_inv1_adj_lpf, 4
	.public _f4_iq_inv1_adj_lpf, 4
	.public _f4_vd_inv1_adj_ad_lpf, 4
	.public _f4_vq_inv1_adj_ad_lpf, 4
	.public _f4_wr_inv1_pll_lpf_adj_lpf, 4
	.public _f4_id_inv1_ad_adj_lpf, 4
	.public _f4_iq_inv1_ad_adj_lpf, 4
	.public _f4_wclpf_inv1_adj, 4
	.public _fi_pwm_inv1_invadj
	.extern _sinf
	.extern _cosf
	.public _fb_pwm_inv1_invadj_init

	.section .text, text
_fi_pwm_inv1_invadj:
	.stack _fi_pwm_inv1_invadj = 8
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_invadj.c", 124
	prepare 0x00000041, 0x00000000
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_invadj.c", 136
	movhi HIGHW1(#_u1_flag_inv0_adj), r0, r2
	ld.bu LOWW(#_u1_flag_inv0_adj)[r2], r2
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_invadj.c", 137
	movhi HIGHW1(#_f4_f_inv0_adj), r0, r6
	ld.w LOWW(#_f4_f_inv0_adj)[r6], r6
	movhi HIGHW1(#_f4_f_inv1_adj), r0, r7
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_invadj.c", 138
	movhi HIGHW1(#_f4_wr_inv0_adj), r0, r8
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_invadj.c", 136
	movhi HIGHW1(#_u1_flag_inv1_adj), r0, r5
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_invadj.c", 138
	ld.w LOWW(#_f4_wr_inv0_adj)[r8], r8
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_invadj.c", 137
	st.w r6, LOWW(#_f4_f_inv1_adj)[r7]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_invadj.c", 139
	movhi HIGHW1(#_f4_wt_inv0_adj), r0, r6
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_invadj.c", 136
	st.b r2, LOWW(#_u1_flag_inv1_adj)[r5]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_invadj.c", 138
	movhi HIGHW1(#_f4_wr_inv1_adj), r0, r5
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_invadj.c", 139
	ld.w LOWW(#_f4_wt_inv0_adj)[r6], r6
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_invadj.c", 140
	movhi HIGHW1(#_f4_id_inv0_dc_adj), r0, r7
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_invadj.c", 138
	st.w r8, LOWW(#_f4_wr_inv1_adj)[r5]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_invadj.c", 139
	movhi HIGHW1(#_f4_wt_inv1_adj), r0, r5
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_invadj.c", 140
	ld.w LOWW(#_f4_id_inv0_dc_adj)[r7], r7
	movhi HIGHW1(#_f4_id_inv1_dc_adj), r0, r8
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_invadj.c", 139
	st.w r6, LOWW(#_f4_wt_inv1_adj)[r5]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_invadj.c", 141
	movhi HIGHW1(#_f4_id_inv0_ac_adj), r0, r5
	ld.w LOWW(#_f4_id_inv0_ac_adj)[r5], r5
	movhi HIGHW1(#_f4_id_inv1_ac_adj), r0, r9
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_invadj.c", 140
	st.w r7, LOWW(#_f4_id_inv1_dc_adj)[r8]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_invadj.c", 142
	movhi HIGHW1(#_f4_iq_inv0_dc_adj), r0, r8
	ld.w LOWW(#_f4_iq_inv0_dc_adj)[r8], r8
	movhi HIGHW1(#_f4_iq_inv1_dc_adj), r0, r10
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_invadj.c", 141
	st.w r5, LOWW(#_f4_id_inv1_ac_adj)[r9]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_invadj.c", 143
	movhi HIGHW1(#_f4_iq_inv0_ac_adj), r0, r9
	ld.w LOWW(#_f4_iq_inv0_ac_adj)[r9], r9
	movhi HIGHW1(#_f4_iq_inv1_ac_adj), r0, r11
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_invadj.c", 142
	st.w r8, LOWW(#_f4_iq_inv1_dc_adj)[r10]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_invadj.c", 144
	movhi HIGHW1(#_f4_vd_inv0_adj_ref), r0, r10
	ld.w LOWW(#_f4_vd_inv0_adj_ref)[r10], r10
	movhi HIGHW1(#_f4_vd_inv1_adj_ref), r0, r12
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_invadj.c", 143
	st.w r9, LOWW(#_f4_iq_inv1_ac_adj)[r11]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_invadj.c", 145
	movhi HIGHW1(#_f4_vq_inv0_adj_ref), r0, r11
	ld.w LOWW(#_f4_vq_inv0_adj_ref)[r11], r11
	movhi HIGHW1(#_f4_vq_inv1_adj_ref), r0, r13
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_invadj.c", 144
	st.w r10, LOWW(#_f4_vd_inv1_adj_ref)[r12]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_invadj.c", 146
	movhi HIGHW1(#_f4_wtdq_inv0_adj), r0, r10
	ld.w LOWW(#_f4_wtdq_inv0_adj)[r10], r10
	movhi HIGHW1(#_f4_wtdq_inv1_adj), r0, r12
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_invadj.c", 145
	st.w r11, LOWW(#_f4_vq_inv1_adj_ref)[r13]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_invadj.c", 147
	movhi HIGHW1(#_u1_flag_inv0_vctrlerr_adj), r0, r11
	ld.b LOWW(#_u1_flag_inv0_vctrlerr_adj)[r11], r11
	movhi HIGHW1(#_u1_flag_inv1_vctrlerr_adj), r0, r13
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_invadj.c", 146
	st.w r10, LOWW(#_f4_wtdq_inv1_adj)[r12]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_invadj.c", 148
	movhi HIGHW1(#_f4_rs_inv0_adj), r0, r10
	ld.w LOWW(#_f4_rs_inv0_adj)[r10], r10
	movhi HIGHW1(#_f4_rs_inv1_adj), r0, r12
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_invadj.c", 147
	st.b r11, LOWW(#_u1_flag_inv1_vctrlerr_adj)[r13]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_invadj.c", 150
	cmp 0x00000000, r2
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_invadj.c", 148
	st.w r10, LOWW(#_f4_rs_inv1_adj)[r12]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_invadj.c", 150
	bnz9 .BB.LABEL.1_4
.BB.LABEL.1_1:	; if_else_bb414
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_invadj.c", 552
	movhi HIGHW1(#_u1_pwm_inv1_status), r0, r5
	ld.bu LOWW(#_u1_pwm_inv1_status)[r5], r5
	cmp 0x00000000, r5
	bnz9 .BB.LABEL.1_3
.BB.LABEL.1_2:	; if_else_bb441
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_invadj.c", 564
	movhi HIGHW1(#_f4_id_inv1_ad_adj_lpf), r0, r5
	st.w r0, LOWW(#_f4_id_inv1_ad_adj_lpf)[r5]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_invadj.c", 565
	movhi HIGHW1(#_f4_iq_inv1_ad_adj_lpf), r0, r5
	st.w r0, LOWW(#_f4_iq_inv1_ad_adj_lpf)[r5]
	dispose 0x00000000, 0x00000041, [r31]
.BB.LABEL.1_3:	; if_then_bb420
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_invadj.c", 555
	movhi HIGHW1(#_f4_id_inv1_ad), r0, r5
	movhi HIGHW1(#_f4_id_inv1_ad_adj_lpf), r0, r6
	ld.w LOWW(#_f4_id_inv1_ad)[r5], r5
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_invadj.c", 556
	movhi HIGHW1(#_f4_wclpf_inv1_adj), r0, r8
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_invadj.c", 555
	ld.w LOWW(#_f4_id_inv1_ad_adj_lpf)[r6], r7
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_invadj.c", 556
	movhi HIGHW1(#_f4_ts_inv1_ctrl), r0, r9
	ld.w LOWW(#_f4_wclpf_inv1_adj)[r8], r8
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_invadj.c", 559
	movhi HIGHW1(#_f4_iq_inv1_ad), r0, r10
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_invadj.c", 556
	ld.w LOWW(#_f4_ts_inv1_ctrl)[r9], r2
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_invadj.c", 559
	ld.w LOWW(#_f4_iq_inv1_ad)[r10], r10
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_invadj.c", 555
	subf.s r7, r5, r5
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_invadj.c", 560
	ld.w LOWW(#_f4_ts_inv1_ctrl)[r9], r9
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_invadj.c", 556
	mulf.s r5, r8, r5
	mulf.s r2, r5, r5
	addf.s r5, r7, r5
	st.w r5, LOWW(#_f4_id_inv1_ad_adj_lpf)[r6]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_invadj.c", 559
	movhi HIGHW1(#_f4_iq_inv1_ad_adj_lpf), r0, r5
	ld.w LOWW(#_f4_iq_inv1_ad_adj_lpf)[r5], r6
	subf.s r6, r10, r7
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_invadj.c", 560
	mulf.s r7, r8, r7
	mulf.s r9, r7, r7
	addf.s r7, r6, r6
	st.w r6, LOWW(#_f4_iq_inv1_ad_adj_lpf)[r5]
	dispose 0x00000000, 0x00000041, [r31]
.BB.LABEL.1_4:	; if_then_bb
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_invadj.c", 155
	movhi HIGHW1(#_u1_pwm_inv1_status), r0, r2
	ld.bu LOWW(#_u1_pwm_inv1_status)[r2], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.1_6
.BB.LABEL.1_5:	; if_else_bb184
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_invadj.c", 277
	movhi HIGHW1(#_f4_f_inv1_adj_tmp), r0, r5
	st.w r0, LOWW(#_f4_f_inv1_adj_tmp)[r5]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_invadj.c", 278
	movhi HIGHW1(#_f4_id_inv1_dc_adj_tmp), r0, r5
	st.w r0, LOWW(#_f4_id_inv1_dc_adj_tmp)[r5]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_invadj.c", 279
	movhi HIGHW1(#_f4_id_inv1_ac_adj_tmp), r0, r5
	st.w r0, LOWW(#_f4_id_inv1_ac_adj_tmp)[r5]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_invadj.c", 280
	movhi HIGHW1(#_f4_iq_inv1_dc_adj_tmp), r0, r5
	st.w r0, LOWW(#_f4_iq_inv1_dc_adj_tmp)[r5]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_invadj.c", 281
	movhi HIGHW1(#_f4_iq_inv1_ac_adj_tmp), r0, r5
	st.w r0, LOWW(#_f4_iq_inv1_ac_adj_tmp)[r5]
	jr .BB.LABEL.1_27
.BB.LABEL.1_6:	; if_then_bb25
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_invadj.c", 193
	movhi HIGHW1(#_f4_id_inv1_dc_adj_tmp), r0, r2
	ld.w LOWW(#_f4_id_inv1_dc_adj_tmp)[r2], r2
	cmpf.s 0x00000007, r7, r2
	trfsr 0
	bz9 .BB.LABEL.1_8
.BB.LABEL.1_7:	; if_then_bb31
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_invadj.c", 195
	movhi HIGHW1(#_f4_didq_inv1_adj), r0, r10
	ld.w LOWW(#_f4_didq_inv1_adj)[r10], r10
	movhi HIGHW1(#_f4_id_inv1_dc_adj_tmp), r0, r11
	addf.s r10, r2, r2
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_invadj.c", 196
	cmpf.s 0x00000004, r7, r2
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_invadj.c", 195
	st.w r2, LOWW(#_f4_id_inv1_dc_adj_tmp)[r11]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_invadj.c", 196
	trfsr 0
	bz9 .BB.LABEL.1_10
	br9 .BB.LABEL.1_11
.BB.LABEL.1_8:	; if_else_bb42
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_invadj.c", 202
	cmpf.s 0x00000007, r2, r7
	trfsr 0
	bz9 .BB.LABEL.1_11
.BB.LABEL.1_9:	; if_then_bb48
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_invadj.c", 204
	movhi HIGHW1(#_f4_didq_inv1_adj), r0, r10
	ld.w LOWW(#_f4_didq_inv1_adj)[r10], r10
	movhi HIGHW1(#_f4_id_inv1_dc_adj_tmp), r0, r11
	subf.s r10, r2, r2
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_invadj.c", 205
	cmpf.s 0x00000007, r7, r2
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_invadj.c", 204
	st.w r2, LOWW(#_f4_id_inv1_dc_adj_tmp)[r11]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_invadj.c", 205
	trfsr 0
	bz9 .BB.LABEL.1_11
.BB.LABEL.1_10:	; if_break_bb63.PartialDrain
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_invadj.c", 0
	movhi HIGHW1(#_f4_id_inv1_dc_adj_tmp), r0, r2
	st.w r7, LOWW(#_f4_id_inv1_dc_adj_tmp)[r2]
.BB.LABEL.1_11:	; if_break_bb63
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_invadj.c", 213
	movhi HIGHW1(#_f4_id_inv1_ac_adj_tmp), r0, r2
	ld.w LOWW(#_f4_id_inv1_ac_adj_tmp)[r2], r2
	cmpf.s 0x00000007, r5, r2
	trfsr 0
	bz9 .BB.LABEL.1_13
.BB.LABEL.1_12:	; if_then_bb69
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_invadj.c", 215
	movhi HIGHW1(#_f4_didq_inv1_adj), r0, r7
	ld.w LOWW(#_f4_didq_inv1_adj)[r7], r7
	movhi HIGHW1(#_f4_id_inv1_ac_adj_tmp), r0, r10
	addf.s r7, r2, r2
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_invadj.c", 216
	cmpf.s 0x00000004, r5, r2
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_invadj.c", 215
	st.w r2, LOWW(#_f4_id_inv1_ac_adj_tmp)[r10]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_invadj.c", 216
	trfsr 0
	bz9 .BB.LABEL.1_15
	br9 .BB.LABEL.1_16
.BB.LABEL.1_13:	; if_else_bb82
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_invadj.c", 222
	cmpf.s 0x00000007, r2, r5
	trfsr 0
	bz9 .BB.LABEL.1_16
.BB.LABEL.1_14:	; if_then_bb88
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_invadj.c", 224
	movhi HIGHW1(#_f4_didq_inv1_adj), r0, r7
	ld.w LOWW(#_f4_didq_inv1_adj)[r7], r7
	movhi HIGHW1(#_f4_id_inv1_ac_adj_tmp), r0, r10
	subf.s r7, r2, r2
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_invadj.c", 225
	cmpf.s 0x00000007, r5, r2
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_invadj.c", 224
	st.w r2, LOWW(#_f4_id_inv1_ac_adj_tmp)[r10]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_invadj.c", 225
	trfsr 0
	bz9 .BB.LABEL.1_16
.BB.LABEL.1_15:	; if_break_bb103.PartialDrain
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_invadj.c", 0
	movhi HIGHW1(#_f4_id_inv1_ac_adj_tmp), r0, r2
	st.w r5, LOWW(#_f4_id_inv1_ac_adj_tmp)[r2]
.BB.LABEL.1_16:	; if_break_bb103
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_invadj.c", 233
	movhi HIGHW1(#_f4_iq_inv1_dc_adj_tmp), r0, r2
	ld.w LOWW(#_f4_iq_inv1_dc_adj_tmp)[r2], r2
	cmpf.s 0x00000007, r8, r2
	trfsr 0
	bz9 .BB.LABEL.1_18
.BB.LABEL.1_17:	; if_then_bb109
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_invadj.c", 235
	movhi HIGHW1(#_f4_didq_inv1_adj), r0, r5
	ld.w LOWW(#_f4_didq_inv1_adj)[r5], r5
	movhi HIGHW1(#_f4_iq_inv1_dc_adj_tmp), r0, r7
	addf.s r5, r2, r2
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_invadj.c", 236
	cmpf.s 0x00000004, r8, r2
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_invadj.c", 235
	st.w r2, LOWW(#_f4_iq_inv1_dc_adj_tmp)[r7]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_invadj.c", 236
	trfsr 0
	bz9 .BB.LABEL.1_20
	br9 .BB.LABEL.1_21
.BB.LABEL.1_18:	; if_else_bb122
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_invadj.c", 242
	cmpf.s 0x00000007, r2, r8
	trfsr 0
	bz9 .BB.LABEL.1_21
.BB.LABEL.1_19:	; if_then_bb128
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_invadj.c", 244
	movhi HIGHW1(#_f4_didq_inv1_adj), r0, r5
	ld.w LOWW(#_f4_didq_inv1_adj)[r5], r5
	movhi HIGHW1(#_f4_iq_inv1_dc_adj_tmp), r0, r7
	subf.s r5, r2, r2
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_invadj.c", 245
	cmpf.s 0x00000007, r8, r2
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_invadj.c", 244
	st.w r2, LOWW(#_f4_iq_inv1_dc_adj_tmp)[r7]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_invadj.c", 245
	trfsr 0
	bz9 .BB.LABEL.1_21
.BB.LABEL.1_20:	; if_break_bb143.PartialDrain
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_invadj.c", 0
	movhi HIGHW1(#_f4_iq_inv1_dc_adj_tmp), r0, r2
	st.w r8, LOWW(#_f4_iq_inv1_dc_adj_tmp)[r2]
.BB.LABEL.1_21:	; if_break_bb143
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_invadj.c", 253
	movhi HIGHW1(#_f4_iq_inv1_ac_adj_tmp), r0, r2
	ld.w LOWW(#_f4_iq_inv1_ac_adj_tmp)[r2], r2
	cmpf.s 0x00000007, r9, r2
	trfsr 0
	bz9 .BB.LABEL.1_23
.BB.LABEL.1_22:	; if_then_bb149
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_invadj.c", 255
	movhi HIGHW1(#_f4_didq_inv1_adj), r0, r5
	ld.w LOWW(#_f4_didq_inv1_adj)[r5], r5
	addf.s r5, r2, r2
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_invadj.c", 256
	cmpf.s 0x00000007, r2, r9
	br9 .BB.LABEL.1_25
.BB.LABEL.1_23:	; if_else_bb162
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_invadj.c", 262
	cmpf.s 0x00000007, r2, r9
	trfsr 0
	bz9 .BB.LABEL.1_27
.BB.LABEL.1_24:	; if_then_bb168
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_invadj.c", 264
	movhi HIGHW1(#_f4_didq_inv1_adj), r0, r5
	ld.w LOWW(#_f4_didq_inv1_adj)[r5], r5
	subf.s r5, r2, r2
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_invadj.c", 265
	cmpf.s 0x00000007, r9, r2
.BB.LABEL.1_25:	; if_then_bb168
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_invadj.c", 0
	movhi HIGHW1(#_f4_iq_inv1_ac_adj_tmp), r0, r7
	st.w r2, LOWW(#_f4_iq_inv1_ac_adj_tmp)[r7]
	trfsr 0
	bz9 .BB.LABEL.1_27
.BB.LABEL.1_26:	; if_then_bb177
	movhi HIGHW1(#_f4_iq_inv1_ac_adj_tmp), r0, r2
	st.w r9, LOWW(#_f4_iq_inv1_ac_adj_tmp)[r2]
.BB.LABEL.1_27:	; if_break_bb185
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_invadj.c", 285
	jarl _sinf, r31
	movhi HIGHW1(#_f4_sin_inv1_wtadj), r0, r2
	st.w r10, LOWW(#_f4_sin_inv1_wtadj)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_invadj.c", 286
	movhi HIGHW1(#_f4_wt_inv1_adj), r0, r2
	ld.w LOWW(#_f4_wt_inv1_adj)[r2], r6
	jarl _cosf, r31
	movhi HIGHW1(#_f4_cos_inv1_wtadj), r0, r2
	st.w r10, LOWW(#_f4_cos_inv1_wtadj)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_invadj.c", 292
	movhi HIGHW1(#_u1_flag_inv1_adj), r0, r2
	ld.bu LOWW(#_u1_flag_inv1_adj)[r2], r2
	add 0xFFFFFFFF, r2
	cmp 0x00000008, r2
	bh17 .BB.LABEL.1_46
.BB.LABEL.1_28:	; if_break_bb185
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_invadj.c", 0
	shl 0x00000002, r2
	jmp #.SWITCH.LABEL.1_49[r2]
.SWITCH.LABEL.1_49:
	jr .BB.LABEL.1_29
	jr .BB.LABEL.1_30
	jr .BB.LABEL.1_31
	jr .BB.LABEL.1_32
	jr .BB.LABEL.1_33
	jr .BB.LABEL.1_34
	jr .BB.LABEL.1_35
	jr .BB.LABEL.1_36
	jr .BB.LABEL.1_37
.SWITCH.LABEL.1_49.END:
.BB.LABEL.1_29:	; switch_clause_bb
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_invadj.c", 300
	movhi HIGHW1(#_f4_id_inv1_ac_adj), r0, r2
	movhi HIGHW1(#_f4_sin_inv1_wtadj), r0, r5
	ld.w LOWW(#_f4_id_inv1_ac_adj)[r2], r2
	movhi HIGHW1(#_f4_id_inv1_dc_adj), r0, r6
	ld.w LOWW(#_f4_sin_inv1_wtadj)[r5], r5
	movhi HIGHW1(#_f4_id_inv1_adj), r0, r7
	ld.w LOWW(#_f4_id_inv1_dc_adj)[r6], r6
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_invadj.c", 302
	movhi HIGHW1(#_f4_iq_inv1_adj), r0, r8
	st.w r0, LOWW(#_f4_iq_inv1_adj)[r8]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_invadj.c", 300
	mulf.s r5, r2, r2
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_invadj.c", 308
	movhi HIGHW1(#_f4_vd_inv1_ctrl), r0, r5
	ld.w LOWW(#_f4_vd_inv1_ctrl)[r5], r5
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_invadj.c", 300
	addf.s r2, r6, r2
	st.w r2, LOWW(#_f4_id_inv1_adj)[r7]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_invadj.c", 308
	movhi HIGHW1(#_f4_vctrlerr_inv1_adj), r0, r2
	st.w r5, LOWW(#_f4_vctrlerr_inv1_adj)[r2]
	jr .BB.LABEL.1_46
.BB.LABEL.1_30:	; switch_clause_bb198
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_invadj.c", 320
	movhi HIGHW1(#_f4_id_inv1_ac_adj), r0, r2
	movhi HIGHW1(#_f4_sin_inv1_wtadj), r0, r5
	ld.w LOWW(#_f4_id_inv1_ac_adj)[r2], r2
	movhi HIGHW1(#_f4_id_inv1_dc_adj), r0, r6
	ld.w LOWW(#_f4_sin_inv1_wtadj)[r5], r5
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_invadj.c", 322
	movhi HIGHW1(#_f4_iq_inv1_adj), r0, r8
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_invadj.c", 320
	ld.w LOWW(#_f4_id_inv1_dc_adj)[r6], r6
	movhi HIGHW1(#_f4_id_inv1_adj), r0, r7
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_invadj.c", 322
	st.w r0, LOWW(#_f4_iq_inv1_adj)[r8]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_invadj.c", 327
	movhi HIGHW1(#_f4_vd_inv1_ref), r0, r8
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_invadj.c", 320
	mulf.s r5, r2, r5
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_invadj.c", 327
	ld.w LOWW(#_f4_vd_inv1_ref)[r8], r8
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_invadj.c", 320
	addf.s r5, r6, r5
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_invadj.c", 328
	movhi HIGHW1(#_f4_vq_inv1_ref), r0, r6
	ld.w LOWW(#_f4_vq_inv1_ref)[r6], r6
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_invadj.c", 320
	st.w r5, LOWW(#_f4_id_inv1_adj)[r7]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_invadj.c", 327
	movhi HIGHW1(#_f4_vd_inv1_adj_ad), r0, r5
	st.w r8, LOWW(#_f4_vd_inv1_adj_ad)[r5]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_invadj.c", 328
	movhi HIGHW1(#_f4_vq_inv1_adj_ad), r0, r5
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_invadj.c", 331
	movhi HIGHW1(#_f4_wr_inv1_adj), r0, r7
	movhi HIGHW1(#_f4_ld_inv1_const), r0, r8
	ld.w LOWW(#_f4_wr_inv1_adj)[r7], r7
	ld.w LOWW(#_f4_ld_inv1_const)[r8], r8
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_invadj.c", 328
	st.w r6, LOWW(#_f4_vq_inv1_adj_ad)[r5]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_invadj.c", 333
	movhi HIGHW1(#_f4_vq_inv1_plid), r0, r6
	st.w r0, LOWW(#_f4_vq_inv1_plid)[r6]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_invadj.c", 331
	movhi HIGHW1(#_f4_vd_inv1_plid), r0, r5
	mulf.s r8, r7, r6
	mulf.s r2, r6, r2
	mulf.s r10, r2, r2
	st.w r2, LOWW(#_f4_vd_inv1_plid)[r5]
	jr .BB.LABEL.1_46
.BB.LABEL.1_31:	; switch_clause_bb213
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_invadj.c", 345
	movhi HIGHW1(#_f4_iq_inv1_ac_adj), r0, r6
	movhi HIGHW1(#_f4_sin_inv1_wtadj), r0, r7
	ld.w LOWW(#_f4_iq_inv1_ac_adj)[r6], r6
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_invadj.c", 344
	movhi HIGHW1(#_f4_id_inv1_dc_adj), r0, r2
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_invadj.c", 345
	ld.w LOWW(#_f4_sin_inv1_wtadj)[r7], r7
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_invadj.c", 344
	movhi HIGHW1(#_f4_id_inv1_adj), r0, r5
	ld.w LOWW(#_f4_id_inv1_dc_adj)[r2], r2
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_invadj.c", 351
	movhi HIGHW1(#_f4_vd_inv1_adj_ad), r0, r8
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_invadj.c", 345
	mulf.s r7, r6, r7
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_invadj.c", 344
	st.w r2, LOWW(#_f4_id_inv1_adj)[r5]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_invadj.c", 345
	movhi HIGHW1(#_f4_iq_inv1_adj), r0, r2
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_invadj.c", 351
	movhi HIGHW1(#_f4_vd_inv1_ref), r0, r5
	ld.w LOWW(#_f4_vd_inv1_ref)[r5], r5
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_invadj.c", 345
	st.w r7, LOWW(#_f4_iq_inv1_adj)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_invadj.c", 352
	movhi HIGHW1(#_f4_vq_inv1_ref), r0, r2
	ld.w LOWW(#_f4_vq_inv1_ref)[r2], r2
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_invadj.c", 355
	movhi HIGHW1(#_f4_vd_inv1_plid), r0, r7
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_invadj.c", 351
	st.w r5, LOWW(#_f4_vd_inv1_adj_ad)[r8]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_invadj.c", 352
	movhi HIGHW1(#_f4_vq_inv1_adj_ad), r0, r5
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_invadj.c", 355
	st.w r0, LOWW(#_f4_vd_inv1_plid)[r7]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_invadj.c", 357
	movhi HIGHW1(#_f4_wr_inv1_adj), r0, r7
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_invadj.c", 352
	st.w r2, LOWW(#_f4_vq_inv1_adj_ad)[r5]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_invadj.c", 357
	movhi HIGHW1(#_f4_lq_inv1_const), r0, r2
	ld.w LOWW(#_f4_wr_inv1_adj)[r7], r7
	movhi HIGHW1(#_f4_vq_inv1_plid), r0, r5
	ld.w LOWW(#_f4_lq_inv1_const)[r2], r2
	mulf.s r2, r7, r2
	mulf.s r6, r2, r2
	mulf.s r10, r2, r2
	st.w r2, LOWW(#_f4_vq_inv1_plid)[r5]
	jr .BB.LABEL.1_46
.BB.LABEL.1_32:	; switch_clause_bb227
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_invadj.c", 369
	movhi HIGHW1(#_f4_id_inv1_dc_adj_tmp), r0, r2
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_invadj.c", 370
	movhi HIGHW1(#_f4_iq_inv1_dc_adj_tmp), r0, r6
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_invadj.c", 369
	ld.w LOWW(#_f4_id_inv1_dc_adj_tmp)[r2], r2
	movhi HIGHW1(#_f4_id_inv1_adj), r0, r5
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_invadj.c", 370
	ld.w LOWW(#_f4_iq_inv1_dc_adj_tmp)[r6], r6
	movhi HIGHW1(#_f4_iq_inv1_adj), r0, r7
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_invadj.c", 369
	st.w r2, LOWW(#_f4_id_inv1_adj)[r5]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_invadj.c", 370
	st.w r6, LOWW(#_f4_iq_inv1_adj)[r7]
	jr .BB.LABEL.1_46
.BB.LABEL.1_33:	; switch_clause_bb230
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_invadj.c", 382
	movhi HIGHW1(#_f4_id_inv1_dc_adj), r0, r2
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_invadj.c", 384
	movhi HIGHW1(#_f4_iq_inv1_adj), r0, r6
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_invadj.c", 382
	ld.w LOWW(#_f4_id_inv1_dc_adj)[r2], r2
	movhi HIGHW1(#_f4_id_inv1_adj), r0, r5
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_invadj.c", 384
	st.w r0, LOWW(#_f4_iq_inv1_adj)[r6]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_invadj.c", 389
	movhi HIGHW1(#_f4_wt_inv1_dq_tmp), r0, r6
	ld.w LOWW(#_f4_wt_inv1_dq_tmp)[r6], r6
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_invadj.c", 382
	st.w r2, LOWW(#_f4_id_inv1_adj)[r5]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_invadj.c", 389
	movhi HIGHW1(#_f4_wt_inv1_offset_adj), r0, r2
	st.w r6, LOWW(#_f4_wt_inv1_offset_adj)[r2]
	jr .BB.LABEL.1_46
.BB.LABEL.1_34:	; switch_clause_bb233
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_invadj.c", 400
	movhi HIGHW1(#_f4_id_inv1_adj), r0, r2
	st.w r0, LOWW(#_f4_id_inv1_adj)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_invadj.c", 401
	movhi HIGHW1(#_f4_iq_inv1_adj), r0, r2
	st.w r0, LOWW(#_f4_iq_inv1_adj)[r2]
	jr .BB.LABEL.1_46
.BB.LABEL.1_35:	; switch_clause_bb234
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_invadj.c", 413
	movhi HIGHW1(#_f4_id_inv1_ac_adj_tmp), r0, r2
	movhi HIGHW1(#_f4_sin_inv1_wtadj), r0, r5
	ld.w LOWW(#_f4_id_inv1_ac_adj_tmp)[r2], r2
	movhi HIGHW1(#_f4_id_inv1_dc_adj_tmp), r0, r6
	ld.w LOWW(#_f4_sin_inv1_wtadj)[r5], r5
	movhi HIGHW1(#_f4_id_inv1_adj), r0, r7
	ld.w LOWW(#_f4_id_inv1_dc_adj_tmp)[r6], r6
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_invadj.c", 415
	movhi HIGHW1(#_f4_iq_inv1_dc_adj_tmp), r0, r8
	ld.w LOWW(#_f4_iq_inv1_dc_adj_tmp)[r8], r8
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_invadj.c", 413
	mulf.s r5, r2, r2
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_invadj.c", 415
	movhi HIGHW1(#_f4_iq_inv1_adj), r0, r5
	st.w r8, LOWW(#_f4_iq_inv1_adj)[r5]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_invadj.c", 420
	movhi HIGHW1(#_f4_vd_inv1_adj_ad), r0, r5
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_invadj.c", 413
	addf.s r2, r6, r2
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_invadj.c", 421
	movhi HIGHW1(#_f4_vq_inv1_ctrl), r0, r6
	ld.w LOWW(#_f4_vq_inv1_ctrl)[r6], r6
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_invadj.c", 413
	st.w r2, LOWW(#_f4_id_inv1_adj)[r7]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_invadj.c", 420
	movhi HIGHW1(#_f4_vd_inv1_ctrl), r0, r2
	ld.w LOWW(#_f4_vd_inv1_ctrl)[r2], r2
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_invadj.c", 421
	movhi HIGHW1(#_f4_vq_inv1_adj_ad), r0, r7
	st.w r6, LOWW(#_f4_vq_inv1_adj_ad)[r7]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_invadj.c", 420
	st.w r2, LOWW(#_f4_vd_inv1_adj_ad)[r5]
	jr .BB.LABEL.1_46
.BB.LABEL.1_36:	; switch_clause_bb243
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_invadj.c", 432
	movhi HIGHW1(#_f4_id_inv1_dc_adj_tmp), r0, r2
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_invadj.c", 434
	movhi HIGHW1(#_f4_iq_inv1_ac_adj_tmp), r0, r6
	movhi HIGHW1(#_f4_sin_inv1_wtadj), r0, r7
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_invadj.c", 432
	ld.w LOWW(#_f4_id_inv1_dc_adj_tmp)[r2], r2
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_invadj.c", 434
	ld.w LOWW(#_f4_iq_inv1_ac_adj_tmp)[r6], r6
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_invadj.c", 432
	movhi HIGHW1(#_f4_id_inv1_adj), r0, r5
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_invadj.c", 434
	ld.w LOWW(#_f4_sin_inv1_wtadj)[r7], r7
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_invadj.c", 440
	movhi HIGHW1(#_f4_vd_inv1_ctrl), r0, r8
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_invadj.c", 432
	st.w r2, LOWW(#_f4_id_inv1_adj)[r5]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_invadj.c", 434
	movhi HIGHW1(#_f4_iq_inv1_dc_adj_tmp), r0, r2
	ld.w LOWW(#_f4_iq_inv1_dc_adj_tmp)[r2], r2
	movhi HIGHW1(#_f4_iq_inv1_adj), r0, r5
	mulf.s r7, r6, r6
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_invadj.c", 440
	ld.w LOWW(#_f4_vd_inv1_ctrl)[r8], r8
	movhi HIGHW1(#_f4_vd_inv1_adj_ad), r0, r7
	st.w r8, LOWW(#_f4_vd_inv1_adj_ad)[r7]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_invadj.c", 434
	addf.s r6, r2, r2
	st.w r2, LOWW(#_f4_iq_inv1_adj)[r5]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_invadj.c", 441
	movhi HIGHW1(#_f4_vq_inv1_ctrl), r0, r2
	ld.w LOWW(#_f4_vq_inv1_ctrl)[r2], r2
	movhi HIGHW1(#_f4_vq_inv1_adj_ad), r0, r5
	st.w r2, LOWW(#_f4_vq_inv1_adj_ad)[r5]
	jr .BB.LABEL.1_46
.BB.LABEL.1_37:	; switch_clause_bb252
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_invadj.c", 452
	movhi HIGHW1(#_f4_id_inv1_adj), r0, r2
	st.w r0, LOWW(#_f4_id_inv1_adj)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_invadj.c", 453
	movhi HIGHW1(#_f4_iq_inv1_adj), r0, r2
	st.w r0, LOWW(#_f4_iq_inv1_adj)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_invadj.c", 458
	movhi HIGHW1(#_f4_vd_inv1_ref), r0, r2
	ld.w LOWW(#_f4_vd_inv1_ref)[r2], r2
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_invadj.c", 459
	movhi HIGHW1(#_f4_vq_inv1_ref), r0, r6
	ld.w LOWW(#_f4_vq_inv1_ref)[r6], r7
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_invadj.c", 462
	movhi HIGHW1(#_f4_wt_inv1_dq_offset_err_adj), r0, r20
	ld.w LOWW(#_f4_wt_inv1_dq_offset_err_adj)[r20], r6
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_invadj.c", 458
	movhi HIGHW1(#_f4_vd_inv1_adj_ad), r0, r5
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_invadj.c", 459
	movhi HIGHW1(#_f4_vq_inv1_adj_ad), r0, r8
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_invadj.c", 458
	st.w r2, LOWW(#_f4_vd_inv1_adj_ad)[r5]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_invadj.c", 459
	st.w r7, LOWW(#_f4_vq_inv1_adj_ad)[r8]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_invadj.c", 462
	jarl _sinf, r31
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_invadj.c", 463
	ld.w LOWW(#_f4_wt_inv1_dq_offset_err_adj)[r20], r6
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_invadj.c", 462
	movhi HIGHW1(#_f4_sin_inv1_wtdq_offset_adj), r0, r20
	st.w r10, LOWW(#_f4_sin_inv1_wtdq_offset_adj)[r20]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_invadj.c", 463
	jarl _cosf, r31
	movhi HIGHW1(#_f4_cos_inv1_wtdq_offset_adj), r0, r5
	st.w r10, LOWW(#_f4_cos_inv1_wtdq_offset_adj)[r5]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_invadj.c", 465
	movhi HIGHW1(#_f4_vq_inv1_adj_ad_lpf), r0, r5
	ld.w LOWW(#_f4_sin_inv1_wtdq_offset_adj)[r20], r2
	ld.w LOWW(#_f4_vq_inv1_adj_ad_lpf)[r5], r5
	movhi HIGHW1(#_f4_vd_inv1_adj_ad_lpf), r0, r6
	ld.w LOWW(#_f4_vd_inv1_adj_ad_lpf)[r6], r6
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_invadj.c", 468
	movhi HIGHW1(#_u1_pwm_inv1_status), r0, r9
	ld.bu LOWW(#_u1_pwm_inv1_status)[r9], r9
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_invadj.c", 465
	movhi HIGHW1(#_f4_vd_inv1_wtdq_offset_adj), r0, r7
	mulf.s r2, r5, r11
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_invadj.c", 466
	movhi HIGHW1(#_f4_vq_inv1_wtdq_offset_adj), r0, r8
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_invadj.c", 465
	mulf.s r10, r6, r12
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_invadj.c", 466
	mulf.s r6, r2, r2
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_invadj.c", 468
	cmp 0x00000000, r9
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_invadj.c", 466
	mulf.s r10, r5, r5
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_invadj.c", 465
	addf.s r11, r12, r11
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_invadj.c", 466
	subf.s r2, r5, r2
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_invadj.c", 465
	st.w r11, LOWW(#_f4_vd_inv1_wtdq_offset_adj)[r7]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_invadj.c", 466
	st.w r2, LOWW(#_f4_vq_inv1_wtdq_offset_adj)[r8]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_invadj.c", 468
	bz9 .BB.LABEL.1_46
.BB.LABEL.1_38:	; if_then_bb279
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_invadj.c", 470
	movhi HIGHW1(#_f4_ki_inv1_wtdq_offset_adj), r0, r6
	ld.w LOWW(#_f4_ki_inv1_wtdq_offset_adj)[r6], r6
	movhi HIGHW1(#_f4_wr_inv1_pll_lpf_adj_lpf), r0, r2
	ld.w LOWW(#_f4_wr_inv1_pll_lpf_adj_lpf)[r2], r2
	movhi HIGHW1(#_f4_ts_inv1_ctrl), r0, r8
	ld.w LOWW(#_f4_ts_inv1_ctrl)[r8], r8
	mulf.s r6, r11, r6
	mov 0x00000000, r5
	cmpf.s 0x00000007, r5, r2
	movhi HIGHW1(#_f4_wt_inv1_dq_offset_err_adj), r0, r7
	ld.w LOWW(#_f4_wt_inv1_dq_offset_err_adj)[r7], r7
	mulf.s r8, r6, r6
	trfsr 0
	bz9 .BB.LABEL.1_40
.BB.LABEL.1_39:	; if_then_bb284
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_invadj.c", 472
	addf.s r6, r7, r6
	br9 .BB.LABEL.1_41
.BB.LABEL.1_40:	; if_else_bb292
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_invadj.c", 476
	subf.s r6, r7, r6
.BB.LABEL.1_41:	; if_break_bb300
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_invadj.c", 0
	cmpf.s 0x00000004, r2, r5
	movhi HIGHW1(#_f4_wt_inv1_dq_offset_err_adj), r0, r7
	st.w r6, LOWW(#_f4_wt_inv1_dq_offset_err_adj)[r7]
	mov r2, r7
	trfsr 0
	bnz9 .BB.LABEL.1_43
.BB.LABEL.1_42:	; if_then_bb306
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_invadj.c", 482
	negf.s r2, r7
.BB.LABEL.1_43:	; if_break_bb310
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_invadj.c", 0
	movhi 0x00004120, r0, r8
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_invadj.c", 485
	cmpf.s 0x00000004, r8, r7
	trfsr 0
	bnz9 .BB.LABEL.1_45
.BB.LABEL.1_44:	; if_then_bb315
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_invadj.c", 487
	divf.s r2, r6, r5
	movhi 0x0000447A, r0, r2
	mulf.s r2, r5, r5
	mulf.s r2, r5, r5
.BB.LABEL.1_45:	; if_break_bb322
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_invadj.c", 493
	movhi HIGHW1(#_f4_time_inv1_enc_delay_us_adj), r0, r2
	ld.w LOWW(#_f4_time_inv1_enc_delay_us_adj)[r2], r6
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_invadj.c", 494
	movhi HIGHW1(#_f4_wclpf_inv1_adj), r0, r7
	ld.w LOWW(#_f4_wclpf_inv1_adj)[r7], r7
	movhi HIGHW1(#_f4_ts_inv1_ctrl), r0, r8
	ld.w LOWW(#_f4_ts_inv1_ctrl)[r8], r8
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_invadj.c", 493
	subf.s r6, r5, r5
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_invadj.c", 494
	mulf.s r5, r7, r5
	mulf.s r8, r5, r5
	addf.s r5, r6, r5
	st.w r5, LOWW(#_f4_time_inv1_enc_delay_us_adj)[r2]
.BB.LABEL.1_46:	; switch_break_bb
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_invadj.c", 506
	movhi HIGHW1(#_u1_pwm_inv1_status), r0, r2
	ld.bu LOWW(#_u1_pwm_inv1_status)[r2], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.1_48
.BB.LABEL.1_47:	; if_else_bb412
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_invadj.c", 541
	movhi HIGHW1(#_f4_id_inv1_adj_lpf), r0, r2
	st.w r0, LOWW(#_f4_id_inv1_adj_lpf)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_invadj.c", 542
	movhi HIGHW1(#_f4_iq_inv1_adj_lpf), r0, r2
	st.w r0, LOWW(#_f4_iq_inv1_adj_lpf)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_invadj.c", 543
	movhi HIGHW1(#_f4_vd_inv1_adj_ad_lpf), r0, r2
	st.w r0, LOWW(#_f4_vd_inv1_adj_ad_lpf)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_invadj.c", 544
	movhi HIGHW1(#_f4_vq_inv1_adj_ad_lpf), r0, r2
	st.w r0, LOWW(#_f4_vq_inv1_adj_ad_lpf)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_invadj.c", 545
	movhi HIGHW1(#_f4_wr_inv1_pll_lpf_adj_lpf), r0, r2
	st.w r0, LOWW(#_f4_wr_inv1_pll_lpf_adj_lpf)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_invadj.c", 546
	movhi HIGHW1(#_f4_id_inv1_ad_adj_lpf), r0, r2
	st.w r0, LOWW(#_f4_id_inv1_ad_adj_lpf)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_invadj.c", 547
	movhi HIGHW1(#_f4_iq_inv1_ad_adj_lpf), r0, r2
	st.w r0, LOWW(#_f4_iq_inv1_ad_adj_lpf)[r2]
	dispose 0x00000000, 0x00000041, [r31]
.BB.LABEL.1_48:	; if_then_bb341
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_invadj.c", 511
	movhi HIGHW1(#_f4_id_inv1_ref), r0, r2
	movhi HIGHW1(#_f4_id_inv1_adj_lpf), r0, r5
	ld.w LOWW(#_f4_id_inv1_ref)[r2], r2
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_invadj.c", 512
	movhi HIGHW1(#_f4_wclpf_inv1_adj), r0, r7
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_invadj.c", 511
	ld.w LOWW(#_f4_id_inv1_adj_lpf)[r5], r6
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_invadj.c", 512
	movhi HIGHW1(#_f4_ts_inv1_ctrl), r0, r8
	ld.w LOWW(#_f4_wclpf_inv1_adj)[r7], r7
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_invadj.c", 515
	movhi HIGHW1(#_f4_iq_inv1_ref), r0, r10
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_invadj.c", 512
	ld.w LOWW(#_f4_ts_inv1_ctrl)[r8], r9
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_invadj.c", 519
	movhi HIGHW1(#_f4_vd_inv1_adj_ad), r0, r13
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_invadj.c", 511
	subf.s r6, r2, r2
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_invadj.c", 515
	ld.w LOWW(#_f4_iq_inv1_ref)[r10], r10
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_invadj.c", 516
	ld.w LOWW(#_f4_ts_inv1_ctrl)[r8], r11
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_invadj.c", 523
	movhi HIGHW1(#_f4_vq_inv1_adj_ad_lpf), r0, r14
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_invadj.c", 519
	ld.w LOWW(#_f4_vd_inv1_adj_ad)[r13], r13
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_invadj.c", 523
	ld.w LOWW(#_f4_vq_inv1_adj_ad_lpf)[r14], r15
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_invadj.c", 512
	mulf.s r2, r7, r2
	mulf.s r9, r2, r2
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_invadj.c", 520
	ld.w LOWW(#_f4_ts_inv1_ctrl)[r8], r9
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_invadj.c", 524
	ld.w LOWW(#_f4_ts_inv1_ctrl)[r8], r16
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_invadj.c", 512
	addf.s r2, r6, r2
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_invadj.c", 519
	movhi HIGHW1(#_f4_vd_inv1_adj_ad_lpf), r0, r6
	ld.w LOWW(#_f4_vd_inv1_adj_ad_lpf)[r6], r12
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_invadj.c", 512
	st.w r2, LOWW(#_f4_id_inv1_adj_lpf)[r5]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_invadj.c", 515
	movhi HIGHW1(#_f4_iq_inv1_adj_lpf), r0, r2
	ld.w LOWW(#_f4_iq_inv1_adj_lpf)[r2], r5
	subf.s r5, r10, r10
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_invadj.c", 516
	mulf.s r10, r7, r10
	mulf.s r11, r10, r10
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_invadj.c", 531
	movhi HIGHW1(#_f4_id_inv1_ad), r0, r11
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_invadj.c", 516
	addf.s r10, r5, r5
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_invadj.c", 527
	movhi HIGHW1(#_f4_wr_inv1_pll_lpf), r0, r10
	ld.w LOWW(#_f4_wr_inv1_pll_lpf)[r10], r10
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_invadj.c", 516
	st.w r5, LOWW(#_f4_iq_inv1_adj_lpf)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_invadj.c", 519
	subf.s r12, r13, r2
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_invadj.c", 528
	ld.w LOWW(#_f4_ts_inv1_ctrl)[r8], r5
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_invadj.c", 531
	ld.w LOWW(#_f4_id_inv1_ad)[r11], r11
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_invadj.c", 520
	mulf.s r2, r7, r2
	mulf.s r9, r2, r2
	addf.s r2, r12, r2
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_invadj.c", 532
	ld.w LOWW(#_f4_ts_inv1_ctrl)[r8], r12
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_invadj.c", 520
	st.w r2, LOWW(#_f4_vd_inv1_adj_ad_lpf)[r6]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_invadj.c", 523
	movhi HIGHW1(#_f4_vq_inv1_adj_ad), r0, r2
	ld.w LOWW(#_f4_vq_inv1_adj_ad)[r2], r2
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_invadj.c", 527
	movhi HIGHW1(#_f4_wr_inv1_pll_lpf_adj_lpf), r0, r6
	ld.w LOWW(#_f4_wr_inv1_pll_lpf_adj_lpf)[r6], r9
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_invadj.c", 523
	subf.s r15, r2, r2
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_invadj.c", 524
	mulf.s r2, r7, r2
	mulf.s r16, r2, r2
	addf.s r2, r15, r2
	st.w r2, LOWW(#_f4_vq_inv1_adj_ad_lpf)[r14]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_invadj.c", 527
	subf.s r9, r10, r2
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_invadj.c", 528
	mulf.s r2, r7, r2
	mulf.s r5, r2, r2
	addf.s r2, r9, r2
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_invadj.c", 535
	movhi HIGHW1(#_f4_iq_inv1_ad_adj_lpf), r0, r9
	ld.w LOWW(#_f4_iq_inv1_ad_adj_lpf)[r9], r10
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_invadj.c", 528
	st.w r2, LOWW(#_f4_wr_inv1_pll_lpf_adj_lpf)[r6]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_invadj.c", 531
	movhi HIGHW1(#_f4_id_inv1_ad_adj_lpf), r0, r2
	ld.w LOWW(#_f4_id_inv1_ad_adj_lpf)[r2], r5
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_invadj.c", 535
	movhi HIGHW1(#_f4_iq_inv1_ad), r0, r6
	ld.w LOWW(#_f4_iq_inv1_ad)[r6], r6
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_invadj.c", 536
	ld.w LOWW(#_f4_ts_inv1_ctrl)[r8], r8
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_invadj.c", 531
	subf.s r5, r11, r11
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_invadj.c", 532
	mulf.s r11, r7, r11
	mulf.s r12, r11, r11
	addf.s r11, r5, r5
	st.w r5, LOWW(#_f4_id_inv1_ad_adj_lpf)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_invadj.c", 535
	subf.s r10, r6, r2
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_invadj.c", 536
	mulf.s r2, r7, r2
	mulf.s r8, r2, r2
	addf.s r2, r10, r2
	st.w r2, LOWW(#_f4_iq_inv1_ad_adj_lpf)[r9]
	dispose 0x00000000, 0x00000041, [r31]
_fb_pwm_inv1_invadj_init:
	.stack _fb_pwm_inv1_invadj_init = 0
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_invadj.c", 586
	movhi HIGHW1(#_u1_flag_inv1_adj), r0, r2
	st.b r0, LOWW(#_u1_flag_inv1_adj)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_invadj.c", 589
	movhi HIGHW1(#_f4_f_inv1_adj), r0, r2
	st.w r0, LOWW(#_f4_f_inv1_adj)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_invadj.c", 590
	movhi HIGHW1(#_f4_f_inv1_adj_tmp), r0, r2
	st.w r0, LOWW(#_f4_f_inv1_adj_tmp)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_invadj.c", 591
	movhi HIGHW1(#_f4_fs_inv1_ctrl), r0, r2
	ld.w LOWW(#_f4_fs_inv1_ctrl)[r2], r5
	mov 0x00000000, r6
	movhi 0x00004049, r0, r7
	movhi HIGHW1(#_f4_df_inv1_adj), r0, r8
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_invadj.c", 593
	movhi HIGHW1(#_f4_wr_inv1_adj), r0, r9
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_invadj.c", 591
	cvtf.sd r5, r10
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_invadj.c", 610
	ld.w LOWW(#_f4_fs_inv1_ctrl)[r2], r2
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_invadj.c", 593
	st.w r0, LOWW(#_f4_wr_inv1_adj)[r9]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_invadj.c", 594
	movhi HIGHW1(#_f4_wt_inv1_adj), r0, r9
	st.w r0, LOWW(#_f4_wt_inv1_adj)[r9]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_invadj.c", 591
	divf.d r10, r6, r6
	cvtf.ds r6, r5
	st.w r5, LOWW(#_f4_df_inv1_adj)[r8]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_invadj.c", 596
	movhi HIGHW1(#_f4_sin_inv1_wtadj), r0, r5
	st.w r0, LOWW(#_f4_sin_inv1_wtadj)[r5]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_invadj.c", 597
	movhi HIGHW1(#_f4_cos_inv1_wtadj), r0, r5
	st.w r0, LOWW(#_f4_cos_inv1_wtadj)[r5]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_invadj.c", 600
	movhi HIGHW1(#_f4_id_inv1_adj), r0, r5
	st.w r0, LOWW(#_f4_id_inv1_adj)[r5]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_invadj.c", 601
	movhi HIGHW1(#_f4_iq_inv1_adj), r0, r5
	st.w r0, LOWW(#_f4_iq_inv1_adj)[r5]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_invadj.c", 602
	movhi HIGHW1(#_f4_id_inv1_dc_adj), r0, r5
	st.w r0, LOWW(#_f4_id_inv1_dc_adj)[r5]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_invadj.c", 603
	movhi HIGHW1(#_f4_id_inv1_ac_adj), r0, r5
	st.w r0, LOWW(#_f4_id_inv1_ac_adj)[r5]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_invadj.c", 604
	movhi HIGHW1(#_f4_iq_inv1_dc_adj), r0, r5
	st.w r0, LOWW(#_f4_iq_inv1_dc_adj)[r5]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_invadj.c", 605
	movhi HIGHW1(#_f4_iq_inv1_ac_adj), r0, r5
	st.w r0, LOWW(#_f4_iq_inv1_ac_adj)[r5]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_invadj.c", 606
	movhi HIGHW1(#_f4_id_inv1_dc_adj_tmp), r0, r5
	st.w r0, LOWW(#_f4_id_inv1_dc_adj_tmp)[r5]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_invadj.c", 607
	movhi HIGHW1(#_f4_id_inv1_ac_adj_tmp), r0, r5
	st.w r0, LOWW(#_f4_id_inv1_ac_adj_tmp)[r5]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_invadj.c", 608
	movhi HIGHW1(#_f4_iq_inv1_dc_adj_tmp), r0, r5
	st.w r0, LOWW(#_f4_iq_inv1_dc_adj_tmp)[r5]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_invadj.c", 609
	movhi HIGHW1(#_f4_iq_inv1_ac_adj_tmp), r0, r5
	st.w r0, LOWW(#_f4_iq_inv1_ac_adj_tmp)[r5]
	mov 0x40A645A2, r5
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_invadj.c", 610
	divf.s r2, r5, r2
	movhi HIGHW1(#_f4_didq_inv1_adj), r0, r5
	st.w r2, LOWW(#_f4_didq_inv1_adj)[r5]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_invadj.c", 611
	movhi HIGHW1(#_f4_vd_inv1_adj_ref), r0, r2
	st.w r0, LOWW(#_f4_vd_inv1_adj_ref)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_invadj.c", 612
	movhi HIGHW1(#_f4_vq_inv1_adj_ref), r0, r2
	st.w r0, LOWW(#_f4_vq_inv1_adj_ref)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_invadj.c", 614
	movhi HIGHW1(#_f4_wtdq_inv1_adj), r0, r2
	st.w r0, LOWW(#_f4_wtdq_inv1_adj)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_invadj.c", 617
	movhi HIGHW1(#_f4_vd_inv1_adj_ad), r0, r2
	st.w r0, LOWW(#_f4_vd_inv1_adj_ad)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_invadj.c", 618
	movhi HIGHW1(#_f4_vq_inv1_adj_ad), r0, r2
	st.w r0, LOWW(#_f4_vq_inv1_adj_ad)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_invadj.c", 620
	movhi HIGHW1(#_u1_flag_inv1_vctrlerr_adj), r0, r2
	st.b r0, LOWW(#_u1_flag_inv1_vctrlerr_adj)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_invadj.c", 622
	movhi HIGHW1(#_f4_vctrlerr_inv1_adj), r0, r2
	st.w r0, LOWW(#_f4_vctrlerr_inv1_adj)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_invadj.c", 623
	movhi HIGHW1(#_f4_rs_inv1_adj), r0, r2
	mov 0x3D73B646, r5
	st.w r5, LOWW(#_f4_rs_inv1_adj)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_invadj.c", 625
	movhi HIGHW1(#_f4_wt_inv1_offset_adj), r0, r2
	st.w r0, LOWW(#_f4_wt_inv1_offset_adj)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_invadj.c", 627
	movhi HIGHW1(#_f4_wt_inv1_dq_offset_err_adj), r0, r2
	st.w r0, LOWW(#_f4_wt_inv1_dq_offset_err_adj)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_invadj.c", 628
	movhi HIGHW1(#_f4_sin_inv1_wtdq_offset_adj), r0, r2
	st.w r0, LOWW(#_f4_sin_inv1_wtdq_offset_adj)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_invadj.c", 629
	movhi HIGHW1(#_f4_cos_inv1_wtdq_offset_adj), r0, r2
	st.w r0, LOWW(#_f4_cos_inv1_wtdq_offset_adj)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_invadj.c", 630
	movhi HIGHW1(#_f4_vd_inv1_wtdq_offset_adj), r0, r2
	st.w r0, LOWW(#_f4_vd_inv1_wtdq_offset_adj)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_invadj.c", 631
	movhi HIGHW1(#_f4_vq_inv1_wtdq_offset_adj), r0, r2
	st.w r0, LOWW(#_f4_vq_inv1_wtdq_offset_adj)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_invadj.c", 632
	movhi HIGHW1(#_f4_time_inv1_enc_delay_us_adj), r0, r2
	st.w r0, LOWW(#_f4_time_inv1_enc_delay_us_adj)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_invadj.c", 633
	movhi HIGHW1(#_f4_ki_inv1_wtdq_offset_adj), r0, r2
	mov 0x3C23D70A, r5
	st.w r5, LOWW(#_f4_ki_inv1_wtdq_offset_adj)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_invadj.c", 639
	movhi HIGHW1(#_f4_vd_inv1_plid), r0, r2
	st.w r0, LOWW(#_f4_vd_inv1_plid)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_invadj.c", 640
	movhi HIGHW1(#_f4_vq_inv1_plid), r0, r2
	st.w r0, LOWW(#_f4_vq_inv1_plid)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_invadj.c", 642
	movhi HIGHW1(#_f4_wclpf_inv1_adj), r0, r2
	movhi 0x00004248, r0, r5
	st.w r5, LOWW(#_f4_wclpf_inv1_adj)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_invadj.c", 644
	movhi HIGHW1(#_f4_id_inv1_adj_lpf), r0, r2
	st.w r0, LOWW(#_f4_id_inv1_adj_lpf)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_invadj.c", 645
	movhi HIGHW1(#_f4_iq_inv1_adj_lpf), r0, r2
	st.w r0, LOWW(#_f4_iq_inv1_adj_lpf)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_invadj.c", 646
	movhi HIGHW1(#_f4_vd_inv1_adj_ad_lpf), r0, r2
	st.w r0, LOWW(#_f4_vd_inv1_adj_ad_lpf)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_invadj.c", 647
	movhi HIGHW1(#_f4_vq_inv1_adj_ad_lpf), r0, r2
	st.w r0, LOWW(#_f4_vq_inv1_adj_ad_lpf)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_invadj.c", 648
	movhi HIGHW1(#_f4_wr_inv1_pll_lpf_adj_lpf), r0, r2
	st.w r0, LOWW(#_f4_wr_inv1_pll_lpf_adj_lpf)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_invadj.c", 649
	movhi HIGHW1(#_f4_id_inv1_ad_adj_lpf), r0, r2
	st.w r0, LOWW(#_f4_id_inv1_ad_adj_lpf)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_invadj.c", 650
	movhi HIGHW1(#_f4_iq_inv1_ad_adj_lpf), r0, r2
	st.w r0, LOWW(#_f4_iq_inv1_ad_adj_lpf)[r2]
	jmp [r31]
	.section .bss, bss
_u1_flag_inv1_adj:
	.ds (1)
	.align 4
_f4_f_inv1_adj:
	.ds (4)
	.align 4
_f4_f_inv1_adj_tmp:
	.ds (4)
	.align 4
_f4_df_inv1_adj:
	.ds (4)
	.align 4
_f4_wr_inv1_adj:
	.ds (4)
	.align 4
_f4_wt_inv1_adj:
	.ds (4)
	.align 4
_f4_sin_inv1_wtadj:
	.ds (4)
	.align 4
_f4_cos_inv1_wtadj:
	.ds (4)
	.align 4
_f4_id_inv1_adj:
	.ds (4)
	.align 4
_f4_iq_inv1_adj:
	.ds (4)
	.align 4
_f4_id_inv1_dc_adj:
	.ds (4)
	.align 4
_f4_id_inv1_ac_adj:
	.ds (4)
	.align 4
_f4_iq_inv1_dc_adj:
	.ds (4)
	.align 4
_f4_iq_inv1_ac_adj:
	.ds (4)
	.align 4
_f4_id_inv1_dc_adj_tmp:
	.ds (4)
	.align 4
_f4_id_inv1_ac_adj_tmp:
	.ds (4)
	.align 4
_f4_iq_inv1_dc_adj_tmp:
	.ds (4)
	.align 4
_f4_iq_inv1_ac_adj_tmp:
	.ds (4)
	.align 4
_f4_didq_inv1_adj:
	.ds (4)
	.align 4
_f4_vd_inv1_adj_ref:
	.ds (4)
	.align 4
_f4_vq_inv1_adj_ref:
	.ds (4)
	.align 4
_f4_wtdq_inv1_adj:
	.ds (4)
	.align 4
_f4_vd_inv1_adj_ad:
	.ds (4)
	.align 4
_f4_vq_inv1_adj_ad:
	.ds (4)
_u1_flag_inv1_vctrlerr_adj:
	.ds (1)
	.align 4
_f4_vctrlerr_inv1_adj:
	.ds (4)
	.align 4
_f4_rs_inv1_adj:
	.ds (4)
	.align 4
_f4_wt_inv1_offset_adj:
	.ds (4)
	.align 4
_f4_wt_inv1_dq_offset_err_adj:
	.ds (4)
	.align 4
_f4_sin_inv1_wtdq_offset_adj:
	.ds (4)
	.align 4
_f4_cos_inv1_wtdq_offset_adj:
	.ds (4)
	.align 4
_f4_vd_inv1_wtdq_offset_adj:
	.ds (4)
	.align 4
_f4_vq_inv1_wtdq_offset_adj:
	.ds (4)
	.align 4
_f4_time_inv1_enc_delay_us_adj:
	.ds (4)
	.align 4
_f4_ki_inv1_wtdq_offset_adj:
	.ds (4)
	.align 4
_f4_vd_inv1_plid:
	.ds (4)
	.align 4
_f4_vq_inv1_plid:
	.ds (4)
	.align 4
_f4_id_inv1_adj_lpf:
	.ds (4)
	.align 4
_f4_iq_inv1_adj_lpf:
	.ds (4)
	.align 4
_f4_vd_inv1_adj_ad_lpf:
	.ds (4)
	.align 4
_f4_vq_inv1_adj_ad_lpf:
	.ds (4)
	.align 4
_f4_wr_inv1_pll_lpf_adj_lpf:
	.ds (4)
	.align 4
_f4_id_inv1_ad_adj_lpf:
	.ds (4)
	.align 4
_f4_iq_inv1_ad_adj_lpf:
	.ds (4)
	.align 4
_f4_wclpf_inv1_adj:
	.ds (4)
