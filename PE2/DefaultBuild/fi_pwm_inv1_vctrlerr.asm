#CC-RH Compiler RH850 Assembler Source
#@	CC-RH Version : V2.06.00  [28 Nov 2023]
#@	Command : Common\fi_pe2_error.c ..\Common\iolib\io_CPU.c ..\Common\iolib\io_ADC.c ..\Common\iolib\io_CSIH0.c ..\Common\iolib\io_CSIH1.c ..\Common\iolib\io_ENCA0.c ..\Common\iolib\io_ENCA1.c ..\Common\iolib\io_FCAN.c ..\Common\iolib\io_RDC20.c ..\Common\iolib\io_RDC21.c ..\Common\iolib\io_SCI0_40MHz.c ..\Common\iolib\io_SCI1_40MHz.c ..\Common\iolib\io_SCI2_40MHz.c ..\Common\iolib\io_TAUD0.c ..\Common\iolib\io_TAUD1.c ..\Common\iolib\io_TAUJ0.c ..\Common\iolib\io_TSG30.c ..\Common\iolib\io_TSG31.c ..\PE1\AWatcher\VECLIB_CMDMONI.c src\fpmsm_main.c ..\PE1\src\fi_AWatcher.c src\fi_1ms_int.c src\fi_1ms_inv1_adctrl.c src\fi_1ms_inv1_errctrl.c src\fi_20us_int.c src\fi_20us_inv1_1pulse.c src\fi_enc1_int.c src\fi_enc1_inv1_1pulse.c src\fi_pwm_int.c src\fi_pwm_inv1_1pulse.c src\fi_pwm_inv1_adctrl.c src\fi_pwm_inv1_encctrl.c src\fi_pwm_inv1_errctrl.c src\fi_pwm_inv1_idqctrl.c src\fi_pwm_inv1_invadj.c src\fi_pwm_inv1_svctrl.c src\fi_pwm_inv1_syncctrl.c src\fi_pwm_inv1_vctrlerr.c src\mapdata_ld_inv1_2d.c src\mapdata_ld_inv1_2d_map.c src\mapdata_lq_inv1_2d.c src\mapdata_lq_inv1_2d_map.c ..\PE1\src\fb_kpwm_tbl.c ..\PE1\src\fb_therm_calc.c ..\PE1\src\fb_therm_tbl_module.c ..\PE1\src\fb_vctrlerr_tbl.c src\fi_1ms_inv1_idqcom.c ..\PE1\src\fi_pwm_vctrlerrtbl.c src\fi_1ms_inv1_seqctrl.c ..\Common\iolib\io_PIO_amdt0530.c -Xobj_path=DefaultBuild -Xcpu=g3m -g -g_line -Ospeed -Oinline_size -I..\PE1\src -Isrc -I..\Common -D__CLK_HSB=80,__CLK_LSB=40,__CLKC_HSB=80,__CLK_CLSB=40 -use_recipf -Xasm_path=DefaultBuild -c
#@	compiled at Thu May 23 14:28:27 2024

	.file "src\fi_pwm_inv1_vctrlerr.c"

	$reg_mode 32
	.dbl_size 8

	.extern _u4_fc_inv1_lsb_0
	.extern _f4_vdc_inv1_ad
	.extern _f4_id_inv1_ref
	.extern _f4_iq_inv1_ref
	.extern _f4_sin_inv1_wtsvctrl
	.extern _f4_cos_inv1_wtsvctrl
	.extern _u1_flag_inv1_adj
	.extern _u1_flag_inv1_vctrlerr_adj
	.public _f4_v_vctrlerr_inv1_max, 4
	.public _f4_i_vctrlerr_inv1_max, 4
	.public _f4_dfc_inv1_vctrl, 4
	.public _f4_k_dfc_inv1_vctrl, 4
	.public _f4_dvdc_inv1_vctrl, 4
	.public _f4_k_dvdc_inv1_vctrl, 4
	.public _f4_vuctrl_inv1_err, 4
	.public _f4_vvctrl_inv1_err, 4
	.public _f4_vwctrl_inv1_err, 4
	.public _fi_pwm_inv1_vctrlerr
	.extern _fi_pwm_vctrlerrtbl
	.public _fb_pwm_inv1_vctrlerr_init

	.section .text, text
_fi_pwm_inv1_vctrlerr:
	.stack _fi_pwm_inv1_vctrlerr = 56
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_vctrlerr.c", 60
	prepare 0x00000FFF, 0x00000008
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_vctrlerr.c", 84
	movhi HIGHW1(#_f4_cos_inv1_wtsvctrl), r0, r2
	ld.w LOWW(#_f4_cos_inv1_wtsvctrl)[r2], r20
	movhi HIGHW1(#_f4_sin_inv1_wtsvctrl), r0, r6
	movhi HIGHW1(#_f4_id_inv1_ref), r0, r2
	ld.w LOWW(#_f4_sin_inv1_wtsvctrl)[r6], r21
	movhi HIGHW1(#_f4_iq_inv1_ref), r0, r6
	ld.w LOWW(#_f4_id_inv1_ref)[r2], r5
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_vctrlerr.c", 99
	movhi HIGHW1(#_f4_vdc_inv1_ad), r0, r7
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_vctrlerr.c", 84
	ld.w LOWW(#_f4_iq_inv1_ref)[r6], r9
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_vctrlerr.c", 99
	movhi HIGHW1(#_f4_dvdc_inv1_vctrl), r0, r8
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_vctrlerr.c", 86
	ld.w LOWW(#_f4_id_inv1_ref)[r2], r2
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_vctrlerr.c", 99
	movhi HIGHW1(#_f4_k_dvdc_inv1_vctrl), r0, r23
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_vctrlerr.c", 86
	ld.w LOWW(#_f4_iq_inv1_ref)[r6], r22
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_vctrlerr.c", 96
	movhi HIGHW1(#_u4_fc_inv1_lsb_0), r0, r6
	ld.w LOWW(#_u4_fc_inv1_lsb_0)[r6], r6
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_vctrlerr.c", 103
	movhi HIGHW1(#_f4_i_vctrlerr_inv1_max), r0, r24
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_vctrlerr.c", 86
	st.w r2, 0x00000000[r3]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_vctrlerr.c", 96
	movhi HIGHW1(#_f4_dfc_inv1_vctrl), r0, r2
	ld.w LOWW(#_f4_dfc_inv1_vctrl)[r2], r2
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_vctrlerr.c", 103
	movhi HIGHW1(#_f4_v_vctrlerr_inv1_max), r0, r25
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_vctrlerr.c", 96
	cvtf.uws r6, r6
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_vctrlerr.c", 99
	ld.w LOWW(#_f4_vdc_inv1_ad)[r7], r7
	ld.w LOWW(#_f4_dvdc_inv1_vctrl)[r8], r10
	movea 0x00000004, r3, r27
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_vctrlerr.c", 103
	ld.w LOWW(#_f4_i_vctrlerr_inv1_max)[r24], r8
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_vctrlerr.c", 96
	mulf.s r6, r2, r2
	movhi HIGHW1(#_f4_k_dfc_inv1_vctrl), r0, r6
	st.w r2, LOWW(#_f4_k_dfc_inv1_vctrl)[r6]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_vctrlerr.c", 99
	mulf.s r10, r7, r2
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_vctrlerr.c", 103
	ld.w LOWW(#_f4_v_vctrlerr_inv1_max)[r25], r7
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_vctrlerr.c", 99
	st.w r2, LOWW(#_f4_k_dvdc_inv1_vctrl)[r23]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_vctrlerr.c", 84
	mulf.s r5, r20, r2
	mulf.s r9, r21, r5
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_vctrlerr.c", 103
	mov r27, r9
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_vctrlerr.c", 84
	subf.s r5, r2, r26
	mov 0x3F5105EC, r2
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_vctrlerr.c", 89
	mulf.s r2, r26, r6
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_vctrlerr.c", 103
	jarl _fi_pwm_vctrlerrtbl, r31
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_vctrlerr.c", 96
	movhi HIGHW1(#_f4_k_dfc_inv1_vctrl), r0, r2
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_vctrlerr.c", 106
	ld.w LOWW(#_f4_k_dfc_inv1_vctrl)[r2], r28
	mov 0xBED105EB, r2
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_vctrlerr.c", 91
	mulf.s r2, r26, r26
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_vctrlerr.c", 86
	ld.w 0x00000000[r3], r2
	mulf.s r22, r20, r5
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_vctrlerr.c", 110
	ld.w LOWW(#_f4_i_vctrlerr_inv1_max)[r24], r8
	ld.w LOWW(#_f4_v_vctrlerr_inv1_max)[r25], r7
	mov r27, r9
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_vctrlerr.c", 86
	mulf.s r2, r21, r2
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_vctrlerr.c", 104
	ld.w LOWW(#_f4_k_dvdc_inv1_vctrl)[r23], r29
	ld.w 0x00000004[r3], r30
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_vctrlerr.c", 86
	addf.s r5, r2, r2
	mov 0x3F3504F3, r5
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_vctrlerr.c", 91
	mulf.s r5, r2, r20
	addf.s r20, r26, r6
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_vctrlerr.c", 110
	jarl _fi_pwm_vctrlerrtbl, r31
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_vctrlerr.c", 93
	subf.s r20, r26, r6
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_vctrlerr.c", 117
	ld.w LOWW(#_f4_i_vctrlerr_inv1_max)[r24], r8
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_vctrlerr.c", 96
	movhi HIGHW1(#_f4_k_dfc_inv1_vctrl), r0, r2
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_vctrlerr.c", 117
	ld.w LOWW(#_f4_v_vctrlerr_inv1_max)[r25], r7
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_vctrlerr.c", 113
	ld.w LOWW(#_f4_k_dfc_inv1_vctrl)[r2], r21
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_vctrlerr.c", 117
	mov r27, r9
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_vctrlerr.c", 111
	ld.w LOWW(#_f4_k_dvdc_inv1_vctrl)[r23], r22
	ld.w 0x00000004[r3], r24
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_vctrlerr.c", 117
	jarl _fi_pwm_vctrlerrtbl, r31
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_vctrlerr.c", 104
	mulf.s r29, r30, r7
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_vctrlerr.c", 118
	ld.w LOWW(#_f4_k_dvdc_inv1_vctrl)[r23], r2
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_vctrlerr.c", 111
	mulf.s r22, r24, r8
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_vctrlerr.c", 118
	ld.w 0x00000004[r3], r5
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_vctrlerr.c", 96
	movhi HIGHW1(#_f4_k_dfc_inv1_vctrl), r0, r6
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_vctrlerr.c", 120
	ld.w LOWW(#_f4_k_dfc_inv1_vctrl)[r6], r6
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_vctrlerr.c", 106
	mulf.s r28, r7, r7
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_vctrlerr.c", 113
	mulf.s r21, r8, r8
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_vctrlerr.c", 118
	mulf.s r2, r5, r2
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_vctrlerr.c", 124
	addf.s r8, r7, r9
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_vctrlerr.c", 120
	mulf.s r6, r2, r2
	mov 0x3EAAAAAB, r6
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_vctrlerr.c", 124
	addf.s r2, r9, r5
	mulf.s r6, r5, r5
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_vctrlerr.c", 127
	subf.s r5, r2, r2
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_vctrlerr.c", 126
	subf.s r5, r8, r6
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_vctrlerr.c", 124
	st.w r5, 0x00000004[r3]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_vctrlerr.c", 125
	subf.s r5, r7, r5
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_vctrlerr.c", 131
	movhi HIGHW1(#_u1_flag_inv1_adj), r0, r7
	ld.bu LOWW(#_u1_flag_inv1_adj)[r7], r7
	cmp 0x00000001, r7
	bz9 .BB.LABEL.1_2
.BB.LABEL.1_1:	; entry
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_vctrlerr.c", 0
	cmp 0x00000006, r7
	bnz9 .BB.LABEL.1_4
.BB.LABEL.1_2:	; if_else_bb
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_vctrlerr.c", 139
	movhi HIGHW1(#_u1_flag_inv1_vctrlerr_adj), r0, r7
	ld.bu LOWW(#_u1_flag_inv1_vctrlerr_adj)[r7], r7
	cmp 0x00000001, r7
	bz9 .BB.LABEL.1_4
.BB.LABEL.1_3:	; if_else_bb111
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_vctrlerr.c", 147
	movhi HIGHW1(#_f4_vuctrl_inv1_err), r0, r2
	st.w r0, LOWW(#_f4_vuctrl_inv1_err)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_vctrlerr.c", 148
	movhi HIGHW1(#_f4_vvctrl_inv1_err), r0, r2
	st.w r0, LOWW(#_f4_vvctrl_inv1_err)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_vctrlerr.c", 149
	movhi HIGHW1(#_f4_vwctrl_inv1_err), r0, r2
	st.w r0, LOWW(#_f4_vwctrl_inv1_err)[r2]
	dispose 0x00000008, 0x00000FFF, [r31]
.BB.LABEL.1_4:	; if_then_bb
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_vctrlerr.c", 0
	movhi HIGHW1(#_f4_vuctrl_inv1_err), r0, r7
	st.w r5, LOWW(#_f4_vuctrl_inv1_err)[r7]
	movhi HIGHW1(#_f4_vvctrl_inv1_err), r0, r5
	st.w r6, LOWW(#_f4_vvctrl_inv1_err)[r5]
	movhi HIGHW1(#_f4_vwctrl_inv1_err), r0, r5
	st.w r2, LOWW(#_f4_vwctrl_inv1_err)[r5]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_vctrlerr.c", 155
	dispose 0x00000008, 0x00000FFF, [r31]
_fb_pwm_inv1_vctrlerr_init:
	.stack _fb_pwm_inv1_vctrlerr_init = 0
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_vctrlerr.c", 172
	movhi HIGHW1(#_f4_v_vctrlerr_inv1_max), r0, r2
	mov 0x3E4985F0, r5
	st.w r5, LOWW(#_f4_v_vctrlerr_inv1_max)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_vctrlerr.c", 173
	movhi HIGHW1(#_f4_i_vctrlerr_inv1_max), r0, r2
	movhi 0x000041F8, r0, r5
	st.w r5, LOWW(#_f4_i_vctrlerr_inv1_max)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_vctrlerr.c", 175
	movhi HIGHW1(#_f4_dfc_inv1_vctrl), r0, r2
	mov 0x38D1B717, r5
	st.w r5, LOWW(#_f4_dfc_inv1_vctrl)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_vctrlerr.c", 176
	movhi HIGHW1(#_f4_k_dfc_inv1_vctrl), r0, r2
	st.w r0, LOWW(#_f4_k_dfc_inv1_vctrl)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_vctrlerr.c", 178
	movhi HIGHW1(#_f4_dvdc_inv1_vctrl), r0, r2
	mov 0x3CA9656D, r5
	st.w r5, LOWW(#_f4_dvdc_inv1_vctrl)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_vctrlerr.c", 179
	movhi HIGHW1(#_f4_k_dvdc_inv1_vctrl), r0, r2
	st.w r0, LOWW(#_f4_k_dvdc_inv1_vctrl)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_vctrlerr.c", 181
	movhi HIGHW1(#_f4_vuctrl_inv1_err), r0, r2
	st.w r0, LOWW(#_f4_vuctrl_inv1_err)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_vctrlerr.c", 182
	movhi HIGHW1(#_f4_vvctrl_inv1_err), r0, r2
	st.w r0, LOWW(#_f4_vvctrl_inv1_err)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_vctrlerr.c", 183
	movhi HIGHW1(#_f4_vwctrl_inv1_err), r0, r2
	st.w r0, LOWW(#_f4_vwctrl_inv1_err)[r2]
	jmp [r31]
	.section .bss, bss
	.align 4
_f4_v_vctrlerr_inv1_max:
	.ds (4)
	.align 4
_f4_i_vctrlerr_inv1_max:
	.ds (4)
	.align 4
_f4_dfc_inv1_vctrl:
	.ds (4)
	.align 4
_f4_k_dfc_inv1_vctrl:
	.ds (4)
	.align 4
_f4_dvdc_inv1_vctrl:
	.ds (4)
	.align 4
_f4_k_dvdc_inv1_vctrl:
	.ds (4)
	.align 4
_f4_vuctrl_inv1_err:
	.ds (4)
	.align 4
_f4_vvctrl_inv1_err:
	.ds (4)
	.align 4
_f4_vwctrl_inv1_err:
	.ds (4)
