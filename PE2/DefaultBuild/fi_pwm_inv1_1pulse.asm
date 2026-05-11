#CC-RH Compiler RH850 Assembler Source
#@	CC-RH Version : V2.06.00  [28 Nov 2023]
#@	Command : Common\fi_pe2_error.c ..\Common\iolib\io_CPU.c ..\Common\iolib\io_ADC.c ..\Common\iolib\io_CSIH0.c ..\Common\iolib\io_CSIH1.c ..\Common\iolib\io_ENCA0.c ..\Common\iolib\io_ENCA1.c ..\Common\iolib\io_FCAN.c ..\Common\iolib\io_RDC20.c ..\Common\iolib\io_RDC21.c ..\Common\iolib\io_SCI0_40MHz.c ..\Common\iolib\io_SCI1_40MHz.c ..\Common\iolib\io_SCI2_40MHz.c ..\Common\iolib\io_TAUD0.c ..\Common\iolib\io_TAUD1.c ..\Common\iolib\io_TAUJ0.c ..\Common\iolib\io_TSG30.c ..\Common\iolib\io_TSG31.c ..\PE1\AWatcher\VECLIB_CMDMONI.c src\fpmsm_main.c ..\PE1\src\fi_AWatcher.c src\fi_1ms_int.c src\fi_1ms_inv1_adctrl.c src\fi_1ms_inv1_errctrl.c src\fi_20us_int.c src\fi_20us_inv1_1pulse.c src\fi_enc1_int.c src\fi_enc1_inv1_1pulse.c src\fi_pwm_int.c src\fi_pwm_inv1_1pulse.c src\fi_pwm_inv1_adctrl.c src\fi_pwm_inv1_encctrl.c src\fi_pwm_inv1_errctrl.c src\fi_pwm_inv1_idqctrl.c src\fi_pwm_inv1_invadj.c src\fi_pwm_inv1_svctrl.c src\fi_pwm_inv1_syncctrl.c src\fi_pwm_inv1_vctrlerr.c src\mapdata_ld_inv1_2d.c src\mapdata_ld_inv1_2d_map.c src\mapdata_lq_inv1_2d.c src\mapdata_lq_inv1_2d_map.c ..\PE1\src\fb_kpwm_tbl.c ..\PE1\src\fb_therm_calc.c ..\PE1\src\fb_therm_tbl_module.c ..\PE1\src\fb_vctrlerr_tbl.c src\fi_1ms_inv1_idqcom.c ..\PE1\src\fi_pwm_vctrlerrtbl.c src\fi_1ms_inv1_seqctrl.c ..\Common\iolib\io_PIO_amdt0530.c -Xobj_path=DefaultBuild -Xcpu=g3m -g -g_line -Ospeed -Oinline_size -I..\PE1\src -Isrc -I..\Common -D__CLK_HSB=80,__CLK_LSB=40,__CLKC_HSB=80,__CLK_CLSB=40 -use_recipf -Xasm_path=DefaultBuild -c
#@	compiled at Thu May 23 14:28:27 2024

	.file "src\fi_pwm_inv1_1pulse.c"

	$reg_mode 32
	.dbl_size 8

	.extern _u4_fc_inv1_lsb_0
	.extern _s4_adtrig_inv1_delay_ns
	.extern _u1_flag_inv1_modetiming
	.extern _f4_m_inv1_max
	.extern _s4_wt_inv1_1pulse_pwm_2pi_2_31
	.public _u1_flag_1pulse_inv1_mode, 1
	.public _f4_mu_inv1_1pulse, 4
	.public _f4_mv_inv1_1pulse, 4
	.public _f4_mw_inv1_1pulse, 4
	.public _fi_pwm_inv1_1pulse
	.extern _dpinv1_set_addelay
	.extern _dpinv1_setuvwf_f_V3
	.extern _dpinv1_set_freq
	.public _fb_pwm_inv1_1pulse_init

	.section .text, text
_fi_pwm_inv1_1pulse:
	.stack _fi_pwm_inv1_1pulse = 4
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_1pulse.c", 57
	prepare 0x00000001, 0x00000000
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_1pulse.c", 69
	movhi HIGHW1(#_u1_flag_1pulse_inv1_mode), r0, r2
	ld.bu LOWW(#_u1_flag_1pulse_inv1_mode)[r2], r2
	cmp 0x00000000, r2
	bnz17 .BB.LABEL.1_14
.BB.LABEL.1_1:	; if_then_bb
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_1pulse.c", 72
	movhi HIGHW1(#_u1_flag_inv1_modetiming), r0, r5
	mov 0x00000001, r6
	st.b r6, LOWW(#_u1_flag_inv1_modetiming)[r5]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_1pulse.c", 75
	movhi HIGHW1(#_s4_wt_inv1_1pulse_pwm_2pi_2_31), r0, r5
	ld.w LOWW(#_s4_wt_inv1_1pulse_pwm_2pi_2_31)[r5], r5
	movhi 0x00004000, r0, r7
	mov 0xCAAAAAAB, r6
	add r5, r6
	cmp r7, r6
	bl9 .BB.LABEL.1_8
.BB.LABEL.1_2:	; bb14
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_1pulse.c", 0
	mov 0xF5555555, r6
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_1pulse.c", 79
	add r6, r5
	mov 0x6AAAAAAA, r6
	cmp r6, r5
	movhi HIGHW1(#_f4_m_inv1_max), r0, r6
	ld.w LOWW(#_f4_m_inv1_max)[r6], r6
	bl9 .BB.LABEL.1_5
.BB.LABEL.1_3:	; if_then_bb35
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_1pulse.c", 82
	movhi HIGHW1(#_f4_mu_inv1_1pulse), r0, r5
	st.w r6, LOWW(#_f4_mu_inv1_1pulse)[r5]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_1pulse.c", 83
	negf.s r6, r6
	movhi HIGHW1(#_f4_mv_inv1_1pulse), r0, r5
	st.w r6, LOWW(#_f4_mv_inv1_1pulse)[r5]
.BB.LABEL.1_4:	; if_then_bb35
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_1pulse.c", 0
	movhi HIGHW1(#_f4_mw_inv1_1pulse), r0, r5
	st.w r6, LOWW(#_f4_mw_inv1_1pulse)[r5]
	br9 .BB.LABEL.1_14
.BB.LABEL.1_5:	; if_else_bb
	mov 0x15555554, r7
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_1pulse.c", 86
	cmp r7, r5
	bh9 .BB.LABEL.1_7
.BB.LABEL.1_6:	; bb51
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_1pulse.c", 89
	movhi HIGHW1(#_f4_mu_inv1_1pulse), r0, r5
	st.w r6, LOWW(#_f4_mu_inv1_1pulse)[r5]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_1pulse.c", 90
	movhi HIGHW1(#_f4_mv_inv1_1pulse), r0, r5
	st.w r6, LOWW(#_f4_mv_inv1_1pulse)[r5]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_1pulse.c", 91
	negf.s r6, r6
	br9 .BB.LABEL.1_4
.BB.LABEL.1_7:	; bb51.thread
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_1pulse.c", 95
	negf.s r6, r5
	movhi HIGHW1(#_f4_mu_inv1_1pulse), r0, r7
	st.w r5, LOWW(#_f4_mu_inv1_1pulse)[r7]
	br9 .BB.LABEL.1_13
.BB.LABEL.1_8:	; bb14.thread
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_1pulse.c", 0
	mov 0x15555555, r7
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_1pulse.c", 102
	cmp r7, r6
	bh9 .BB.LABEL.1_10
.BB.LABEL.1_9:	; if_then_bb84
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_1pulse.c", 105
	movhi HIGHW1(#_f4_m_inv1_max), r0, r5
	ld.w LOWW(#_f4_m_inv1_max)[r5], r5
	movhi HIGHW1(#_f4_mu_inv1_1pulse), r0, r6
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_1pulse.c", 106
	movhi HIGHW1(#_f4_mv_inv1_1pulse), r0, r7
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_1pulse.c", 107
	movhi HIGHW1(#_f4_mw_inv1_1pulse), r0, r8
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_1pulse.c", 105
	negf.s r5, r9
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_1pulse.c", 106
	st.w r5, LOWW(#_f4_mv_inv1_1pulse)[r7]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_1pulse.c", 107
	st.w r5, LOWW(#_f4_mw_inv1_1pulse)[r8]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_1pulse.c", 105
	st.w r9, LOWW(#_f4_mu_inv1_1pulse)[r6]
	br9 .BB.LABEL.1_14
.BB.LABEL.1_10:	; if_else_bb89
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_1pulse.c", 0
	mov 0xB5555555, r6
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_1pulse.c", 109
	add r6, r5
	mov 0x15555554, r6
	cmp r6, r5
	movhi HIGHW1(#_f4_m_inv1_max), r0, r5
	ld.w LOWW(#_f4_m_inv1_max)[r5], r5
	bh9 .BB.LABEL.1_12
.BB.LABEL.1_11:	; bb100
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_1pulse.c", 112
	negf.s r5, r6
	movhi HIGHW1(#_f4_mu_inv1_1pulse), r0, r7
	st.w r6, LOWW(#_f4_mu_inv1_1pulse)[r7]
	br9 .BB.LABEL.1_13
.BB.LABEL.1_12:	; bb100.thread
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_1pulse.c", 118
	movhi HIGHW1(#_f4_mu_inv1_1pulse), r0, r6
	st.w r5, LOWW(#_f4_mu_inv1_1pulse)[r6]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_1pulse.c", 119
	negf.s r5, r6
.BB.LABEL.1_13:	; bb100.thread
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_1pulse.c", 0
	movhi HIGHW1(#_f4_mv_inv1_1pulse), r0, r7
	st.w r6, LOWW(#_f4_mv_inv1_1pulse)[r7]
	movhi HIGHW1(#_f4_mw_inv1_1pulse), r0, r6
	st.w r5, LOWW(#_f4_mw_inv1_1pulse)[r6]
.BB.LABEL.1_14:	; if_break_bb120
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_1pulse.c", 131
	cmp 0x00000000, r2
	movhi HIGHW1(#_s4_adtrig_inv1_delay_ns), r0, r2
	ld.w LOWW(#_s4_adtrig_inv1_delay_ns)[r2], r6
	bnz9 .BB.LABEL.1_16
.BB.LABEL.1_15:	; if_then_bb126
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_1pulse.c", 134
	jarl _dpinv1_set_addelay, r31
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_1pulse.c", 135
	di
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_1pulse.c", 136
	movhi HIGHW1(#_f4_mw_inv1_1pulse), r0, r2
	ld.w LOWW(#_f4_mw_inv1_1pulse)[r2], r8
	movhi HIGHW1(#_f4_mv_inv1_1pulse), r0, r2
	ld.w LOWW(#_f4_mv_inv1_1pulse)[r2], r7
	movhi HIGHW1(#_f4_mu_inv1_1pulse), r0, r2
	ld.w LOWW(#_f4_mu_inv1_1pulse)[r2], r6
	movhi HIGHW1(#_u4_fc_inv1_lsb_0), r0, r2
	ld.w LOWW(#_u4_fc_inv1_lsb_0)[r2], r2
	cvtf.uws r2, r9
	jarl _dpinv1_setuvwf_f_V3, r31
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_1pulse.c", 137
	ei
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.1_16:	; if_else_bb133
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_1pulse.c", 142
	jarl _dpinv1_set_addelay, r31
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_1pulse.c", 144
	movhi HIGHW1(#_u4_fc_inv1_lsb_0), r0, r2
	ld.w LOWW(#_u4_fc_inv1_lsb_0)[r2], r2
	dispose 0x00000000, 0x00000001
	cvtf.uws r2, r6
	jr _dpinv1_set_freq
_fb_pwm_inv1_1pulse_init:
	.stack _fb_pwm_inv1_1pulse_init = 0
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_1pulse.c", 164
	movhi HIGHW1(#_u1_flag_1pulse_inv1_mode), r0, r2
	st.b r0, LOWW(#_u1_flag_1pulse_inv1_mode)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_1pulse.c", 166
	movhi HIGHW1(#_f4_mu_inv1_1pulse), r0, r2
	st.w r0, LOWW(#_f4_mu_inv1_1pulse)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_1pulse.c", 167
	movhi HIGHW1(#_f4_mv_inv1_1pulse), r0, r2
	st.w r0, LOWW(#_f4_mv_inv1_1pulse)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_1pulse.c", 168
	movhi HIGHW1(#_f4_mw_inv1_1pulse), r0, r2
	st.w r0, LOWW(#_f4_mw_inv1_1pulse)[r2]
	jmp [r31]
	.section .bss, bss
_u1_flag_1pulse_inv1_mode:
	.ds (1)
	.align 4
_f4_mu_inv1_1pulse:
	.ds (4)
	.align 4
_f4_mv_inv1_1pulse:
	.ds (4)
	.align 4
_f4_mw_inv1_1pulse:
	.ds (4)
