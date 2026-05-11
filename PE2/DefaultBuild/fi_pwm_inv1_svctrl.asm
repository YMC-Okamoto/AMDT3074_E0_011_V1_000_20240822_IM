#CC-RH Compiler RH850 Assembler Source
#@	CC-RH Version : V2.06.00  [28 Nov 2023]
#@	Command : Common\fi_pe2_error.c ..\Common\iolib\io_CPU.c ..\Common\iolib\io_ADC.c ..\Common\iolib\io_CSIH0.c ..\Common\iolib\io_CSIH1.c ..\Common\iolib\io_ENCA0.c ..\Common\iolib\io_ENCA1.c ..\Common\iolib\io_FCAN.c ..\Common\iolib\io_RDC20.c ..\Common\iolib\io_RDC21.c ..\Common\iolib\io_SCI0_40MHz.c ..\Common\iolib\io_SCI1_40MHz.c ..\Common\iolib\io_SCI2_40MHz.c ..\Common\iolib\io_TAUD0.c ..\Common\iolib\io_TAUD1.c ..\Common\iolib\io_TAUJ0.c ..\Common\iolib\io_TSG30.c ..\Common\iolib\io_TSG31.c ..\PE1\AWatcher\VECLIB_CMDMONI.c src\fpmsm_main.c ..\PE1\src\fi_AWatcher.c src\fi_1ms_int.c src\fi_1ms_inv1_adctrl.c src\fi_1ms_inv1_errctrl.c src\fi_20us_int.c src\fi_20us_inv1_1pulse.c src\fi_enc1_int.c src\fi_enc1_inv1_1pulse.c src\fi_pwm_int.c src\fi_pwm_inv1_1pulse.c src\fi_pwm_inv1_adctrl.c src\fi_pwm_inv1_encctrl.c src\fi_pwm_inv1_errctrl.c src\fi_pwm_inv1_idqctrl.c src\fi_pwm_inv1_invadj.c src\fi_pwm_inv1_svctrl.c src\fi_pwm_inv1_syncctrl.c src\fi_pwm_inv1_vctrlerr.c src\mapdata_ld_inv1_2d.c src\mapdata_ld_inv1_2d_map.c src\mapdata_lq_inv1_2d.c src\mapdata_lq_inv1_2d_map.c ..\PE1\src\fb_kpwm_tbl.c ..\PE1\src\fb_therm_calc.c ..\PE1\src\fb_therm_tbl_module.c ..\PE1\src\fb_vctrlerr_tbl.c src\fi_1ms_inv1_idqcom.c ..\PE1\src\fi_pwm_vctrlerrtbl.c src\fi_1ms_inv1_seqctrl.c ..\Common\iolib\io_PIO_amdt0530.c -Xobj_path=DefaultBuild -Xcpu=g3m -g -g_line -Ospeed -Oinline_size -I..\PE1\src -Isrc -I..\Common -D__CLK_HSB=80,__CLK_LSB=40,__CLKC_HSB=80,__CLK_CLSB=40 -use_recipf -Xasm_path=DefaultBuild -c
#@	compiled at Thu May 23 14:28:27 2024

	.file "src\fi_pwm_inv1_svctrl.c"

	$reg_mode 32
	.dbl_size 8

	.extern _u4_fc_inv1_lsb_0
	.extern _f4_vd_inv1_ref
	.extern _f4_vq_inv1_ref
	.extern _s4_adtrig_inv1_delay_ns
	.extern _f4_dvdc_inv1_ad
	.extern _f4_vuctrl_inv1_err
	.extern _f4_vvctrl_inv1_err
	.extern _f4_vwctrl_inv1_err
	.extern _f4_k_inv1_modu
	.extern _f4_sin_inv1_wtsvctrl
	.extern _f4_cos_inv1_wtsvctrl
	.public _f4_va_inv1_ref, 4
	.public _f4_vb_inv1_ref, 4
	.public _f4_vu_inv1_svctrl, 4
	.public _f4_vv_inv1_svctrl, 4
	.public _f4_vw_inv1_svctrl, 4
	.public _f4_mu_inv1_svctrl, 4
	.public _f4_mv_inv1_svctrl, 4
	.public _f4_mw_inv1_svctrl, 4
	.public _f4_m_inv1_max, 4
	.public _fi_pwm_inv1_svctrl
	.extern _dpinv1_set_addelay
	.extern _dpinv1_setuvwf_f_V3
	.public _fb_pwm_inv1_svctrl_init

	.section .text, text
_fi_pwm_inv1_svctrl:
	.stack _fi_pwm_inv1_svctrl = 8
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_svctrl.c", 67
	prepare 0x00000041, 0x00000000
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_svctrl.c", 84
	movhi HIGHW1(#_f4_vd_inv1_ref), r0, r5
	movhi HIGHW1(#_f4_cos_inv1_wtsvctrl), r0, r2
	ld.w LOWW(#_f4_vd_inv1_ref)[r5], r6
	movhi HIGHW1(#_f4_sin_inv1_wtsvctrl), r0, r7
	movhi HIGHW1(#_f4_vq_inv1_ref), r0, r8
	ld.w LOWW(#_f4_cos_inv1_wtsvctrl)[r2], r2
	ld.w LOWW(#_f4_sin_inv1_wtsvctrl)[r7], r7
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_svctrl.c", 88
	movhi HIGHW1(#_f4_va_inv1_ref), r0, r10
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_svctrl.c", 84
	ld.w LOWW(#_f4_vq_inv1_ref)[r8], r9
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_svctrl.c", 89
	movhi HIGHW1(#_f4_vb_inv1_ref), r0, r11
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_svctrl.c", 86
	ld.w LOWW(#_f4_vd_inv1_ref)[r5], r5
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_svctrl.c", 84
	mulf.s r6, r2, r6
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_svctrl.c", 86
	ld.w LOWW(#_f4_vq_inv1_ref)[r8], r8
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_svctrl.c", 84
	mulf.s r9, r7, r9
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_svctrl.c", 86
	mulf.s r5, r7, r5
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_svctrl.c", 92
	movhi HIGHW1(#_f4_vuctrl_inv1_err), r0, r7
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_svctrl.c", 86
	mulf.s r8, r2, r2
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_svctrl.c", 92
	ld.w LOWW(#_f4_vuctrl_inv1_err)[r7], r7
	movhi HIGHW1(#_f4_vu_inv1_svctrl), r0, r8
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_svctrl.c", 84
	subf.s r9, r6, r6
	mov 0xBED105EB, r9
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_svctrl.c", 86
	addf.s r2, r5, r2
	mov 0x3F5105EC, r5
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_svctrl.c", 92
	mulf.s r5, r6, r5
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_svctrl.c", 88
	st.w r6, LOWW(#_f4_va_inv1_ref)[r10]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_svctrl.c", 94
	mulf.s r9, r6, r6
	mov 0x3F3504F3, r9
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_svctrl.c", 89
	st.w r2, LOWW(#_f4_vb_inv1_ref)[r11]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_svctrl.c", 94
	mulf.s r9, r2, r2
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_svctrl.c", 92
	addf.s r7, r5, r5
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_svctrl.c", 96
	movhi HIGHW1(#_f4_vw_inv1_svctrl), r0, r10
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_svctrl.c", 94
	movhi HIGHW1(#_f4_vv_inv1_svctrl), r0, r9
	addf.s r2, r6, r7
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_svctrl.c", 96
	subf.s r2, r6, r2
	movhi HIGHW1(#_f4_vwctrl_inv1_err), r0, r6
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_svctrl.c", 92
	st.w r5, LOWW(#_f4_vu_inv1_svctrl)[r8]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_svctrl.c", 94
	movhi HIGHW1(#_f4_vvctrl_inv1_err), r0, r8
	ld.w LOWW(#_f4_vvctrl_inv1_err)[r8], r8
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_svctrl.c", 96
	ld.w LOWW(#_f4_vwctrl_inv1_err)[r6], r6
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_svctrl.c", 94
	addf.s r8, r7, r7
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_svctrl.c", 114
	movhi HIGHW1(#_f4_dvdc_inv1_ad), r0, r8
	ld.w LOWW(#_f4_dvdc_inv1_ad)[r8], r8
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_svctrl.c", 96
	addf.s r6, r2, r2
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_svctrl.c", 116
	mulf.s r8, r7, r6
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_svctrl.c", 114
	mulf.s r8, r5, r5
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_svctrl.c", 94
	st.w r7, LOWW(#_f4_vv_inv1_svctrl)[r9]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_svctrl.c", 96
	st.w r2, LOWW(#_f4_vw_inv1_svctrl)[r10]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_svctrl.c", 118
	mulf.s r8, r2, r2
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_svctrl.c", 116
	addf.s r6, r6, r6
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_svctrl.c", 114
	addf.s r5, r5, r5
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_svctrl.c", 118
	addf.s r2, r2, r2
	cmpf.s 0x00000004, r6, r5
	cmovf.s 0, r5, r6, r7
	cmovf.s 0, r6, r5, r8
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_svctrl.c", 132
	cmpf.s 0x00000007, r2, r7
	trfsr 0
	cmov 0x0000000A, r2, r7, r7
	bnz9 .BB.LABEL.1_3
.BB.LABEL.1_1:	; if_else_bb70
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_svctrl.c", 136
	cmpf.s 0x00000004, r2, r8
	trfsr 0
	bnz9 .BB.LABEL.1_3
.BB.LABEL.1_2:	; if_then_bb76
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_svctrl.c", 0
	mov r2, r8
.BB.LABEL.1_3:	; if_break_bb80
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_svctrl.c", 142
	addf.s r8, r7, r7
	movhi 0x00003F00, r0, r8
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_svctrl.c", 145
	movhi HIGHW1(#_f4_m_inv1_max), r0, r9
	ld.w LOWW(#_f4_m_inv1_max)[r9], r9
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_svctrl.c", 142
	mulf.s r8, r7, r7
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_svctrl.c", 144
	movhi HIGHW1(#_f4_k_inv1_modu), r0, r8
	ld.w LOWW(#_f4_k_inv1_modu)[r8], r8
	subf.s r7, r5, r5
	mulf.s r8, r5, r5
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_svctrl.c", 145
	cmpf.s 0x00000007, r5, r9
	trfsr 0
	cmov 0x0000000A, r9, r5, r5
	bnz9 .BB.LABEL.1_6
.BB.LABEL.1_4:	; bb95
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_svctrl.c", 0
	negf.s r9, r10
	cmpf.s 0x00000004, r5, r10
	trfsr 0
	bnz9 .BB.LABEL.1_6
.BB.LABEL.1_5:	; bb101
	mov r10, r5
.BB.LABEL.1_6:	; bb110
	movhi HIGHW1(#_f4_mu_inv1_svctrl), r0, r10
	st.w r5, LOWW(#_f4_mu_inv1_svctrl)[r10]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_svctrl.c", 147
	subf.s r7, r6, r5
	mulf.s r8, r5, r5
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_svctrl.c", 148
	cmpf.s 0x00000007, r5, r9
	trfsr 0
	cmov 0x0000000A, r9, r5, r5
	bnz9 .BB.LABEL.1_9
.BB.LABEL.1_7:	; bb124
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_svctrl.c", 0
	negf.s r9, r6
	cmpf.s 0x00000004, r5, r6
	trfsr 0
	bnz9 .BB.LABEL.1_9
.BB.LABEL.1_8:	; bb130
	mov r6, r5
.BB.LABEL.1_9:	; bb140
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_svctrl.c", 150
	subf.s r7, r2, r2
	movhi HIGHW1(#_f4_mv_inv1_svctrl), r0, r6
	st.w r5, LOWW(#_f4_mv_inv1_svctrl)[r6]
	mulf.s r8, r2, r2
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_svctrl.c", 151
	cmpf.s 0x00000007, r2, r9
	trfsr 0
	bnz9 .BB.LABEL.1_11
.BB.LABEL.1_10:	; bb154
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_svctrl.c", 0
	negf.s r9, r9
	cmpf.s 0x00000004, r2, r9
	trfsr 0
	cmov 0x0000000A, r2, r9, r9
.BB.LABEL.1_11:	; bb170
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_svctrl.c", 159
	movhi HIGHW1(#_s4_adtrig_inv1_delay_ns), r0, r2
	ld.w LOWW(#_s4_adtrig_inv1_delay_ns)[r2], r6
	movhi HIGHW1(#_f4_mw_inv1_svctrl), r0, r20
	st.w r9, LOWW(#_f4_mw_inv1_svctrl)[r20]
	jarl _dpinv1_set_addelay, r31
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_svctrl.c", 160
	di
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_svctrl.c", 161
	movhi HIGHW1(#_f4_mv_inv1_svctrl), r0, r2
	ld.w LOWW(#_f4_mv_inv1_svctrl)[r2], r7
	movhi HIGHW1(#_f4_mu_inv1_svctrl), r0, r2
	ld.w LOWW(#_f4_mu_inv1_svctrl)[r2], r6
	movhi HIGHW1(#_u4_fc_inv1_lsb_0), r0, r2
	ld.w LOWW(#_u4_fc_inv1_lsb_0)[r2], r2
	ld.w LOWW(#_f4_mw_inv1_svctrl)[r20], r8
	cvtf.uws r2, r9
	jarl _dpinv1_setuvwf_f_V3, r31
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_svctrl.c", 163
	ei
	dispose 0x00000000, 0x00000041, [r31]
_fb_pwm_inv1_svctrl_init:
	.stack _fb_pwm_inv1_svctrl_init = 0
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_svctrl.c", 183
	movhi HIGHW1(#_f4_vu_inv1_svctrl), r0, r2
	st.w r0, LOWW(#_f4_vu_inv1_svctrl)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_svctrl.c", 184
	movhi HIGHW1(#_f4_vv_inv1_svctrl), r0, r2
	st.w r0, LOWW(#_f4_vv_inv1_svctrl)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_svctrl.c", 185
	movhi HIGHW1(#_f4_vw_inv1_svctrl), r0, r2
	st.w r0, LOWW(#_f4_vw_inv1_svctrl)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_svctrl.c", 191
	movhi HIGHW1(#_f4_mu_inv1_svctrl), r0, r2
	st.w r0, LOWW(#_f4_mu_inv1_svctrl)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_svctrl.c", 192
	movhi HIGHW1(#_f4_mv_inv1_svctrl), r0, r2
	st.w r0, LOWW(#_f4_mv_inv1_svctrl)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_svctrl.c", 193
	movhi HIGHW1(#_f4_mw_inv1_svctrl), r0, r2
	st.w r0, LOWW(#_f4_mw_inv1_svctrl)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_svctrl.c", 195
	movhi HIGHW1(#_f4_m_inv1_max), r0, r2
	mov 0x3F8CCCCD, r5
	st.w r5, LOWW(#_f4_m_inv1_max)[r2]
	jmp [r31]
	.section .bss, bss
	.align 4
_f4_va_inv1_ref:
	.ds (4)
	.align 4
_f4_vb_inv1_ref:
	.ds (4)
	.align 4
_f4_vu_inv1_svctrl:
	.ds (4)
	.align 4
_f4_vv_inv1_svctrl:
	.ds (4)
	.align 4
_f4_vw_inv1_svctrl:
	.ds (4)
	.align 4
_f4_mu_inv1_svctrl:
	.ds (4)
	.align 4
_f4_mv_inv1_svctrl:
	.ds (4)
	.align 4
_f4_mw_inv1_svctrl:
	.ds (4)
	.align 4
_f4_m_inv1_max:
	.ds (4)
