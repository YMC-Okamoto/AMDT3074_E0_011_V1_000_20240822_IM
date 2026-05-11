#CC-RH Compiler RH850 Assembler Source
#@	CC-RH Version : V2.06.00  [28 Nov 2023]
#@	Command : Common\fi_pe2_error.c ..\Common\iolib\io_CPU.c ..\Common\iolib\io_ADC.c ..\Common\iolib\io_CSIH0.c ..\Common\iolib\io_CSIH1.c ..\Common\iolib\io_ENCA0.c ..\Common\iolib\io_ENCA1.c ..\Common\iolib\io_FCAN.c ..\Common\iolib\io_RDC20.c ..\Common\iolib\io_RDC21.c ..\Common\iolib\io_SCI0_40MHz.c ..\Common\iolib\io_SCI1_40MHz.c ..\Common\iolib\io_SCI2_40MHz.c ..\Common\iolib\io_TAUD0.c ..\Common\iolib\io_TAUD1.c ..\Common\iolib\io_TAUJ0.c ..\Common\iolib\io_TSG30.c ..\Common\iolib\io_TSG31.c ..\PE1\AWatcher\VECLIB_CMDMONI.c src\fpmsm_main.c ..\PE1\src\fi_AWatcher.c src\fi_1ms_int.c src\fi_1ms_inv1_adctrl.c src\fi_1ms_inv1_errctrl.c src\fi_20us_int.c src\fi_20us_inv1_1pulse.c src\fi_enc1_int.c src\fi_enc1_inv1_1pulse.c src\fi_pwm_int.c src\fi_pwm_inv1_1pulse.c src\fi_pwm_inv1_adctrl.c src\fi_pwm_inv1_encctrl.c src\fi_pwm_inv1_errctrl.c src\fi_pwm_inv1_idqctrl.c src\fi_pwm_inv1_invadj.c src\fi_pwm_inv1_svctrl.c src\fi_pwm_inv1_syncctrl.c src\fi_pwm_inv1_vctrlerr.c src\mapdata_ld_inv1_2d.c src\mapdata_ld_inv1_2d_map.c src\mapdata_lq_inv1_2d.c src\mapdata_lq_inv1_2d_map.c ..\PE1\src\fb_kpwm_tbl.c ..\PE1\src\fb_therm_calc.c ..\PE1\src\fb_therm_tbl_module.c ..\PE1\src\fb_vctrlerr_tbl.c src\fi_1ms_inv1_idqcom.c ..\PE1\src\fi_pwm_vctrlerrtbl.c src\fi_1ms_inv1_seqctrl.c ..\Common\iolib\io_PIO_amdt0530.c -Xobj_path=DefaultBuild -Xcpu=g3m -g -g_line -Ospeed -Oinline_size -I..\PE1\src -Isrc -I..\Common -D__CLK_HSB=80,__CLK_LSB=40,__CLKC_HSB=80,__CLK_CLSB=40 -use_recipf -Xasm_path=DefaultBuild -c
#@	compiled at Thu May 23 14:28:27 2024

	.file "src\fi_enc1_inv1_1pulse.c"

	$reg_mode 32
	.dbl_size 8

	.extern _u1_flag_inv1_modevctrl
	.extern _u1_flag_inv1_modetiming
	.extern _u1_flag_1pulse_inv1_mode
	.extern _u1_flag_1pulse_inv1_gate
	.extern _u1_flag_encint_inv1_clr
	.public _u1_flag_enable_inv1_hw_1pulse, 1
	.public _u1_cnt_1pulse_inv1_hw, 1
	.public _u1_cnt_1pulse_inv1_hw_max, 1
	.public _u1_flag_status_inv1_idq_ctrl, 1
	.public _fi_enc1_inv1_1pulse
	.extern _dpinv1_setuvw_1pulse
	.public _fb_enc1_inv1_1pulse_init

	.section .text, text
_fi_enc1_inv1_1pulse:
	.stack _fi_enc1_inv1_1pulse = 4
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_enc1_inv1_1pulse.c", 58
	prepare 0x00000001, 0x00000000
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_enc1_inv1_1pulse.c", 64
	movhi HIGHW1(#_u1_flag_encint_inv1_clr), r0, r2
	st.b r0, LOWW(#_u1_flag_encint_inv1_clr)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_enc1_inv1_1pulse.c", 70
	movhi HIGHW1(#_u1_cnt_1pulse_inv1_hw), r0, r2
	movhi HIGHW1(#_u1_cnt_1pulse_inv1_hw_max), r0, r5
	ld.bu LOWW(#_u1_cnt_1pulse_inv1_hw)[r2], r2
	ld.bu LOWW(#_u1_cnt_1pulse_inv1_hw_max)[r5], r5
	cmp r5, r2
	bnc9 .BB.LABEL.1_3
.BB.LABEL.1_1:	; if_then_bb
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_enc1_inv1_1pulse.c", 72
	movhi HIGHW1(#_u1_flag_inv1_modevctrl), r0, r5
	ld.bu LOWW(#_u1_flag_inv1_modevctrl)[r5], r5
	cmp 0x00000001, r5
	bnz9 .BB.LABEL.1_7
.BB.LABEL.1_2:	; if_then_bb11
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_enc1_inv1_1pulse.c", 74
	add 0x00000001, r2
	movhi HIGHW1(#_u1_cnt_1pulse_inv1_hw), r0, r5
	st.b r2, LOWW(#_u1_cnt_1pulse_inv1_hw)[r5]
	br9 .BB.LABEL.1_7
.BB.LABEL.1_3:	; if_else_bb14
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_enc1_inv1_1pulse.c", 80
	movhi HIGHW1(#_u1_flag_enable_inv1_hw_1pulse), r0, r2
	ld.bu LOWW(#_u1_flag_enable_inv1_hw_1pulse)[r2], r2
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.1_6
.BB.LABEL.1_4:	; if_then_bb20
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_enc1_inv1_1pulse.c", 82
	movhi HIGHW1(#_u1_flag_1pulse_inv1_mode), r0, r2
	mov 0x00000001, r5
	st.b r5, LOWW(#_u1_flag_1pulse_inv1_mode)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_enc1_inv1_1pulse.c", 84
	movhi HIGHW1(#_u1_flag_inv1_modevctrl), r0, r2
	ld.bu LOWW(#_u1_flag_inv1_modevctrl)[r2], r2
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.1_7
.BB.LABEL.1_5:	; if_then_bb27
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_enc1_inv1_1pulse.c", 86
	di
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_enc1_inv1_1pulse.c", 87
	movhi HIGHW1(#_u1_flag_1pulse_inv1_gate), r0, r2
	ld.bu LOWW(#_u1_flag_1pulse_inv1_gate)[r2], r6
	jarl _dpinv1_setuvw_1pulse, r31
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_enc1_inv1_1pulse.c", 88
	ei
	br9 .BB.LABEL.1_7
.BB.LABEL.1_6:	; if_else_bb31
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_enc1_inv1_1pulse.c", 95
	movhi HIGHW1(#_u1_cnt_1pulse_inv1_hw), r0, r2
	st.b r0, LOWW(#_u1_cnt_1pulse_inv1_hw)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_enc1_inv1_1pulse.c", 96
	movhi HIGHW1(#_u1_flag_1pulse_inv1_mode), r0, r2
	st.b r0, LOWW(#_u1_flag_1pulse_inv1_mode)[r2]
.BB.LABEL.1_7:	; if_break_bb33
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_enc1_inv1_1pulse.c", 0
	mov 0x00000001, r2
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_enc1_inv1_1pulse.c", 100
	movhi HIGHW1(#_u1_flag_status_inv1_idq_ctrl), r0, r5
	st.b r2, LOWW(#_u1_flag_status_inv1_idq_ctrl)[r5]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_enc1_inv1_1pulse.c", 106
	movhi HIGHW1(#_u1_flag_inv1_modetiming), r0, r5
	st.b r2, LOWW(#_u1_flag_inv1_modetiming)[r5]
	dispose 0x00000000, 0x00000001, [r31]
_fb_enc1_inv1_1pulse_init:
	.stack _fb_enc1_inv1_1pulse_init = 0
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_enc1_inv1_1pulse.c", 121
	mov 0x00000001, r2
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_enc1_inv1_1pulse.c", 127
	movhi HIGHW1(#_u1_flag_enable_inv1_hw_1pulse), r0, r5
	st.b r2, LOWW(#_u1_flag_enable_inv1_hw_1pulse)[r5]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_enc1_inv1_1pulse.c", 129
	movhi HIGHW1(#_u1_cnt_1pulse_inv1_hw), r0, r5
	st.b r0, LOWW(#_u1_cnt_1pulse_inv1_hw)[r5]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_enc1_inv1_1pulse.c", 130
	movhi HIGHW1(#_u1_cnt_1pulse_inv1_hw_max), r0, r5
	st.b r2, LOWW(#_u1_cnt_1pulse_inv1_hw_max)[r5]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_enc1_inv1_1pulse.c", 132
	movhi HIGHW1(#_u1_flag_status_inv1_idq_ctrl), r0, r2
	st.b r0, LOWW(#_u1_flag_status_inv1_idq_ctrl)[r2]
	jmp [r31]
	.section .bss, bss
_u1_flag_enable_inv1_hw_1pulse:
	.ds (1)
_u1_cnt_1pulse_inv1_hw:
	.ds (1)
_u1_cnt_1pulse_inv1_hw_max:
	.ds (1)
_u1_flag_status_inv1_idq_ctrl:
	.ds (1)
