#CC-RH Compiler RH850 Assembler Source
#@	CC-RH Version : V2.06.00  [28 Nov 2023]
#@	Command : Common\fi_pe2_error.c ..\Common\iolib\io_CPU.c ..\Common\iolib\io_ADC.c ..\Common\iolib\io_CSIH0.c ..\Common\iolib\io_CSIH1.c ..\Common\iolib\io_ENCA0.c ..\Common\iolib\io_ENCA1.c ..\Common\iolib\io_FCAN.c ..\Common\iolib\io_RDC20.c ..\Common\iolib\io_RDC21.c ..\Common\iolib\io_SCI0_40MHz.c ..\Common\iolib\io_SCI1_40MHz.c ..\Common\iolib\io_SCI2_40MHz.c ..\Common\iolib\io_TAUD0.c ..\Common\iolib\io_TAUD1.c ..\Common\iolib\io_TAUJ0.c ..\Common\iolib\io_TSG30.c ..\Common\iolib\io_TSG31.c ..\PE1\AWatcher\VECLIB_CMDMONI.c src\fpmsm_main.c ..\PE1\src\fi_AWatcher.c src\fi_1ms_int.c src\fi_1ms_inv1_adctrl.c src\fi_1ms_inv1_errctrl.c src\fi_20us_int.c src\fi_20us_inv1_1pulse.c src\fi_enc1_int.c src\fi_enc1_inv1_1pulse.c src\fi_pwm_int.c src\fi_pwm_inv1_1pulse.c src\fi_pwm_inv1_adctrl.c src\fi_pwm_inv1_encctrl.c src\fi_pwm_inv1_errctrl.c src\fi_pwm_inv1_idqctrl.c src\fi_pwm_inv1_invadj.c src\fi_pwm_inv1_svctrl.c src\fi_pwm_inv1_syncctrl.c src\fi_pwm_inv1_vctrlerr.c src\mapdata_ld_inv1_2d.c src\mapdata_ld_inv1_2d_map.c src\mapdata_lq_inv1_2d.c src\mapdata_lq_inv1_2d_map.c ..\PE1\src\fb_kpwm_tbl.c ..\PE1\src\fb_therm_calc.c ..\PE1\src\fb_therm_tbl_module.c ..\PE1\src\fb_vctrlerr_tbl.c src\fi_1ms_inv1_idqcom.c ..\PE1\src\fi_pwm_vctrlerrtbl.c src\fi_1ms_inv1_seqctrl.c ..\Common\iolib\io_PIO_amdt0530.c -Xobj_path=DefaultBuild -Xcpu=g3m -g -g_line -Ospeed -Oinline_size -I..\PE1\src -Isrc -I..\Common -D__CLK_HSB=80,__CLK_LSB=40,__CLKC_HSB=80,__CLK_CLSB=40 -use_recipf -Xasm_path=DefaultBuild -c
#@	compiled at Thu May 23 14:28:27 2024

	.file "src\fi_1ms_inv1_idqcom.c"

	$reg_mode 32
	.dbl_size 8

	.extern _f4_id_inv1_ref
	.extern _f4_iq_inv1_ref
	.extern _f4_id_inv1_ad_adj_lpf
	.extern _f4_iq_inv1_ad_adj_lpf
	.public _f4_irms_inv1_ref_ctrl, 4
	.public _f4_theta_inv1_ref_ctrl, 4
	.public _f4_irms_inv1_ad_lpf, 4
	.public _f4_theta_inv1_ad_lpf, 4
	.public _fi_1ms_inv1_idqcom
	.extern _sqrtf
	.extern _atanf
	.public _fb_1ms_inv1_idqcom_init

	.section .text, text
_fi_1ms_inv1_idqcom:
	.stack _fi_1ms_inv1_idqcom = 16
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_idqcom.c", 54
	prepare 0x00000071, 0x00000000
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_idqcom.c", 66
	movhi HIGHW1(#_f4_id_inv1_ref), r0, r2
	ld.w LOWW(#_f4_id_inv1_ref)[r2], r5
	ld.w LOWW(#_f4_id_inv1_ref)[r2], r2
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_idqcom.c", 67
	movhi HIGHW1(#_f4_iq_inv1_ref), r0, r20
	ld.w LOWW(#_f4_iq_inv1_ref)[r20], r6
	ld.w LOWW(#_f4_iq_inv1_ref)[r20], r7
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_idqcom.c", 66
	mulf.s r2, r5, r2
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_idqcom.c", 67
	mulf.s r7, r6, r5
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_idqcom.c", 68
	addf.s r5, r2, r6
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_idqcom.c", 69
	jarl _sqrtf, r31
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_idqcom.c", 71
	ld.w LOWW(#_f4_iq_inv1_ref)[r20], r2
	mov 0x00000000, r21
	mov 0x3F13CD3F, r20
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_idqcom.c", 69
	mulf.s r20, r10, r5
	movhi HIGHW1(#_f4_irms_inv1_ref_ctrl), r0, r6
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_idqcom.c", 71
	cmpf.s 0x00000007, r21, r2
	trfsr 0
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_idqcom.c", 69
	st.w r5, LOWW(#_f4_irms_inv1_ref_ctrl)[r6]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_idqcom.c", 71
	bz9 .BB.LABEL.1_2
.BB.LABEL.1_1:	; if_then_bb
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_idqcom.c", 73
	negf.s r5, r2
	movhi HIGHW1(#_f4_irms_inv1_ref_ctrl), r0, r5
	st.w r2, LOWW(#_f4_irms_inv1_ref_ctrl)[r5]
.BB.LABEL.1_2:	; if_break_bb
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_idqcom.c", 77
	movhi HIGHW1(#_f4_iq_inv1_ref), r0, r2
	ld.w LOWW(#_f4_iq_inv1_ref)[r2], r2
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_idqcom.c", 78
	cmpf.s 0x00000004, r2, r21
	trfsr 0
	bnz9 .BB.LABEL.1_4
.BB.LABEL.1_3:	; if_then_bb27
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_idqcom.c", 80
	negf.s r2, r2
.BB.LABEL.1_4:	; if_break_bb31
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_idqcom.c", 84
	cmpf.s 0x00000003, r2, r21
	trfsr 0
	bz9 .BB.LABEL.1_6
.BB.LABEL.1_5:	; if_then_bb45
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_idqcom.c", 86
	movhi HIGHW1(#_f4_id_inv1_ref), r0, r5
	ld.w LOWW(#_f4_id_inv1_ref)[r5], r5
	negf.s r5, r5
	divf.s r2, r5, r6
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_idqcom.c", 87
	jarl _atanf, r31
	mov 0x42652EE1, r2
	mulf.s r2, r10, r2
	movhi HIGHW1(#_f4_theta_inv1_ref_ctrl), r0, r5
	st.w r2, LOWW(#_f4_theta_inv1_ref_ctrl)[r5]
	br9 .BB.LABEL.1_9
.BB.LABEL.1_6:	; if_else_bb53
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_idqcom.c", 92
	movhi HIGHW1(#_f4_id_inv1_ref), r0, r2
	ld.w LOWW(#_f4_id_inv1_ref)[r2], r2
	movhi 0x0000447A, r0, r5
	mulf.s r5, r2, r2
	trncf.sw r2, r2
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_idqcom.c", 93
	cmp 0x00000000, r2
	movhi HIGHW1(#_f4_theta_inv1_ref_ctrl), r0, r2
	bnz9 .BB.LABEL.1_8
.BB.LABEL.1_7:	; if_then_bb61
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_idqcom.c", 95
	st.w r0, LOWW(#_f4_theta_inv1_ref_ctrl)[r2]
	br9 .BB.LABEL.1_9
.BB.LABEL.1_8:	; if_else_bb62
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_idqcom.c", 0
	movhi 0x000042B4, r0, r5
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_idqcom.c", 99
	st.w r5, LOWW(#_f4_theta_inv1_ref_ctrl)[r2]
.BB.LABEL.1_9:	; if_break_bb64
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_idqcom.c", 106
	movhi HIGHW1(#_f4_iq_inv1_ad_adj_lpf), r0, r22
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_idqcom.c", 105
	movhi HIGHW1(#_f4_id_inv1_ad_adj_lpf), r0, r5
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_idqcom.c", 106
	ld.w LOWW(#_f4_iq_inv1_ad_adj_lpf)[r22], r2
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_idqcom.c", 105
	ld.w LOWW(#_f4_id_inv1_ad_adj_lpf)[r5], r5
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_idqcom.c", 106
	mulf.s r2, r2, r2
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_idqcom.c", 105
	mulf.s r5, r5, r5
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_idqcom.c", 107
	addf.s r2, r5, r6
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_idqcom.c", 108
	jarl _sqrtf, r31
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_idqcom.c", 110
	ld.w LOWW(#_f4_iq_inv1_ad_adj_lpf)[r22], r2
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_idqcom.c", 108
	mulf.s r20, r10, r5
	movhi HIGHW1(#_f4_irms_inv1_ad_lpf), r0, r6
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_idqcom.c", 110
	cmpf.s 0x00000004, r2, r21
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_idqcom.c", 108
	st.w r5, LOWW(#_f4_irms_inv1_ad_lpf)[r6]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_idqcom.c", 110
	trfsr 0
	bnz9 .BB.LABEL.1_11
.BB.LABEL.1_10:	; if_then_bb81
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_idqcom.c", 112
	negf.s r5, r5
	movhi HIGHW1(#_f4_irms_inv1_ad_lpf), r0, r6
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_idqcom.c", 119
	negf.s r2, r2
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_idqcom.c", 112
	st.w r5, LOWW(#_f4_irms_inv1_ad_lpf)[r6]
.BB.LABEL.1_11:	; if_break_bb95
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_idqcom.c", 123
	cmpf.s 0x00000003, r2, r21
	trfsr 0
	bz9 .BB.LABEL.1_13
.BB.LABEL.1_12:	; if_then_bb111
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_idqcom.c", 125
	movhi HIGHW1(#_f4_id_inv1_ad_adj_lpf), r0, r21
	ld.w LOWW(#_f4_id_inv1_ad_adj_lpf)[r21], r21
	negf.s r21, r21
	divf.s r2, r21, r21
.BB.LABEL.1_13:	; if_break_bb117
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_idqcom.c", 0
	mov r21, r6
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_idqcom.c", 131
	jarl _atanf, r31
	mov 0x42652EE1, r2
	mulf.s r2, r10, r2
	movhi HIGHW1(#_f4_theta_inv1_ad_lpf), r0, r5
	st.w r2, LOWW(#_f4_theta_inv1_ad_lpf)[r5]
	dispose 0x00000000, 0x00000071, [r31]
_fb_1ms_inv1_idqcom_init:
	.stack _fb_1ms_inv1_idqcom_init = 0
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_idqcom.c", 150
	movhi HIGHW1(#_f4_irms_inv1_ref_ctrl), r0, r2
	st.w r0, LOWW(#_f4_irms_inv1_ref_ctrl)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_idqcom.c", 151
	movhi HIGHW1(#_f4_theta_inv1_ref_ctrl), r0, r2
	st.w r0, LOWW(#_f4_theta_inv1_ref_ctrl)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_idqcom.c", 153
	movhi HIGHW1(#_f4_irms_inv1_ad_lpf), r0, r2
	st.w r0, LOWW(#_f4_irms_inv1_ad_lpf)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_idqcom.c", 154
	movhi HIGHW1(#_f4_theta_inv1_ad_lpf), r0, r2
	st.w r0, LOWW(#_f4_theta_inv1_ad_lpf)[r2]
	jmp [r31]
	.section .bss, bss
	.align 4
_f4_irms_inv1_ref_ctrl:
	.ds (4)
	.align 4
_f4_theta_inv1_ref_ctrl:
	.ds (4)
	.align 4
_f4_irms_inv1_ad_lpf:
	.ds (4)
	.align 4
_f4_theta_inv1_ad_lpf:
	.ds (4)
