#CC-RH Compiler RH850 Assembler Source
#@	CC-RH Version : V2.06.00  [28 Nov 2023]
#@	Command : Common\fi_pe2_error.c ..\Common\iolib\io_CPU.c ..\Common\iolib\io_ADC.c ..\Common\iolib\io_CSIH0.c ..\Common\iolib\io_CSIH1.c ..\Common\iolib\io_ENCA0.c ..\Common\iolib\io_ENCA1.c ..\Common\iolib\io_FCAN.c ..\Common\iolib\io_RDC20.c ..\Common\iolib\io_RDC21.c ..\Common\iolib\io_SCI0_40MHz.c ..\Common\iolib\io_SCI1_40MHz.c ..\Common\iolib\io_SCI2_40MHz.c ..\Common\iolib\io_TAUD0.c ..\Common\iolib\io_TAUD1.c ..\Common\iolib\io_TAUJ0.c ..\Common\iolib\io_TSG30.c ..\Common\iolib\io_TSG31.c ..\PE1\AWatcher\VECLIB_CMDMONI.c src\fpmsm_main.c ..\PE1\src\fi_AWatcher.c src\fi_1ms_int.c src\fi_1ms_inv1_adctrl.c src\fi_1ms_inv1_errctrl.c src\fi_20us_int.c src\fi_20us_inv1_1pulse.c src\fi_enc1_int.c src\fi_enc1_inv1_1pulse.c src\fi_pwm_int.c src\fi_pwm_inv1_1pulse.c src\fi_pwm_inv1_adctrl.c src\fi_pwm_inv1_encctrl.c src\fi_pwm_inv1_errctrl.c src\fi_pwm_inv1_idqctrl.c src\fi_pwm_inv1_invadj.c src\fi_pwm_inv1_svctrl.c src\fi_pwm_inv1_syncctrl.c src\fi_pwm_inv1_vctrlerr.c src\mapdata_ld_inv1_2d.c src\mapdata_ld_inv1_2d_map.c src\mapdata_lq_inv1_2d.c src\mapdata_lq_inv1_2d_map.c ..\PE1\src\fb_kpwm_tbl.c ..\PE1\src\fb_therm_calc.c ..\PE1\src\fb_therm_tbl_module.c ..\PE1\src\fb_vctrlerr_tbl.c src\fi_1ms_inv1_idqcom.c ..\PE1\src\fi_pwm_vctrlerrtbl.c src\fi_1ms_inv1_seqctrl.c ..\Common\iolib\io_PIO_amdt0530.c -Xobj_path=DefaultBuild -Xcpu=g3m -g -g_line -Ospeed -Oinline_size -I..\PE1\src -Isrc -I..\Common -D__CLK_HSB=80,__CLK_LSB=40,__CLKC_HSB=80,__CLK_CLSB=40 -use_recipf -Xasm_path=DefaultBuild -c
#@	compiled at Thu May 23 14:28:27 2024

	.file "src\fi_20us_inv1_1pulse.c"

	$reg_mode 32
	.dbl_size 8

	.extern _s4_wt_inv1_dq_offset_2pi_2_31
	.extern _u4_flag_dir_inv1_enc
	.extern _f4_wr_inv1_pll_lpf
	.extern _s4_wt_inv1_vdq_2pi_2_31
	.public _u1_flag_1pulse_inv1_gate, 1
	.public _u1_flag_1pulse_inv1_gate_tmp, 1
	.public _s4_wt_dq_inv1_20us_2pi_2_31, 4
	.public _s4_wt_inv1_encint_2pi_2_31, 4
	.public _s4_wt_inv1_encint_tmp_2pi_2_31, 4
	.public _s4_wt_inv1_1pulse_20us_2pi_2_31, 4
	.public _u4_cnt_encint_inv1_set, 4
	.public _u1_flag_encint_inv1_clr, 1
	.public _s2_cnt_inv1_ecd_pf, 2
	.public _fi_20us_inv1_1pulse
	.extern _u2_enca1_cnt_read
	.extern _enca1_ccr1_set
	.public _fb_20us_inv1_1pulse_init

	.section .text, text
_fi_20us_inv1_1pulse:
	.stack _fi_20us_inv1_1pulse = 4
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_20us_inv1_1pulse.c", 60
	prepare 0x00000001, 0x00000000
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_20us_inv1_1pulse.c", 75
	movhi HIGHW1(#_u1_flag_encint_inv1_clr), r0, r2
	ld.bu LOWW(#_u1_flag_encint_inv1_clr)[r2], r2
	cmp 0x00000000, r2
	bnz17 .BB.LABEL.1_31
.BB.LABEL.1_1:	; if_then_bb
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_20us_inv1_1pulse.c", 79
	movhi HIGHW1(#_u4_flag_dir_inv1_enc), r0, r2
	ld.bu LOWW(#_u4_flag_dir_inv1_enc)[r2], r6
	jarl _u2_enca1_cnt_read, r31
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_20us_inv1_1pulse.c", 113
	movhi HIGHW1(#_s4_wt_inv1_dq_offset_2pi_2_31), r0, r2
	ld.w LOWW(#_s4_wt_inv1_dq_offset_2pi_2_31)[r2], r2
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_20us_inv1_1pulse.c", 85
	shl 0x00000015, r10
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_20us_inv1_1pulse.c", 117
	movhi HIGHW1(#_s4_wt_inv1_vdq_2pi_2_31), r0, r7
	ld.w LOWW(#_s4_wt_inv1_vdq_2pi_2_31)[r7], r7
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_20us_inv1_1pulse.c", 114
	movhi HIGHW1(#_s4_wt_dq_inv1_20us_2pi_2_31), r0, r6
	sub r2, r10
	mov 0x7FFFFFFF, r5
	mov r10, r8
	and r5, r8
	st.w r8, LOWW(#_s4_wt_dq_inv1_20us_2pi_2_31)[r6]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_20us_inv1_1pulse.c", 118
	add r7, r10
	movhi HIGHW1(#_s4_wt_inv1_1pulse_20us_2pi_2_31), r0, r6
	and r5, r10
	st.w r10, LOWW(#_s4_wt_inv1_1pulse_20us_2pi_2_31)[r6]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_20us_inv1_1pulse.c", 121
	movhi 0x0000D000, r10, r6
	mov 0x4AAAAAAA, r8
	cmp r8, r6
	bl9 .BB.LABEL.1_16
.BB.LABEL.1_2:	; bb34
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_20us_inv1_1pulse.c", 0
	mov 0xFAAAAAAA, r8
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_20us_inv1_1pulse.c", 125
	add r10, r8
	mov 0x75555554, r6
	cmp r6, r8
	bl9 .BB.LABEL.1_7
.BB.LABEL.1_3:	; if_then_bb55
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_20us_inv1_1pulse.c", 128
	movhi HIGHW1(#_u1_flag_encint_inv1_clr), r0, r8
	mov 0x00000001, r9
	st.b r9, LOWW(#_u1_flag_encint_inv1_clr)[r8]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_20us_inv1_1pulse.c", 130
	movhi HIGHW1(#_f4_wr_inv1_pll_lpf), r0, r8
	ld.w LOWW(#_f4_wr_inv1_pll_lpf)[r8], r8
	mov 0x00000000, r9
	cmpf.s 0x00000007, r8, r9
	trfsr 0
	bz9 .BB.LABEL.1_5
.BB.LABEL.1_4:	; if_then_bb60
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_20us_inv1_1pulse.c", 132
	movhi HIGHW1(#_u1_flag_1pulse_inv1_gate), r0, r6
	mov 0x00000006, r8
	st.b r8, LOWW(#_u1_flag_1pulse_inv1_gate)[r6]
	mov 0x0AAAAAAA, r6
	jr .BB.LABEL.1_28
.BB.LABEL.1_5:	; if_else_bb
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_20us_inv1_1pulse.c", 0
	mov 0x00000005, r9
.BB.LABEL.1_6:	; if_else_bb
	movhi HIGHW1(#_u1_flag_1pulse_inv1_gate), r0, r8
	st.b r9, LOWW(#_u1_flag_1pulse_inv1_gate)[r8]
	jr .BB.LABEL.1_28
.BB.LABEL.1_7:	; if_else_bb73
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_20us_inv1_1pulse.c", 145
	movhi 0x0000F000, r10, r8
	mov 0x0AAAAAAA, r6
	cmp r6, r8
	bh9 .BB.LABEL.1_11
.BB.LABEL.1_8:	; if_then_bb89
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_20us_inv1_1pulse.c", 150
	movhi HIGHW1(#_u1_flag_encint_inv1_clr), r0, r8
	mov 0x00000001, r9
	st.b r9, LOWW(#_u1_flag_encint_inv1_clr)[r8]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_20us_inv1_1pulse.c", 152
	movhi HIGHW1(#_f4_wr_inv1_pll_lpf), r0, r8
	ld.w LOWW(#_f4_wr_inv1_pll_lpf)[r8], r8
	mov 0x00000000, r9
	cmpf.s 0x00000007, r8, r9
	trfsr 0
	bz9 .BB.LABEL.1_10
.BB.LABEL.1_9:	; if_then_bb94
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_20us_inv1_1pulse.c", 154
	movhi HIGHW1(#_u1_flag_1pulse_inv1_gate), r0, r6
	mov 0x00000002, r8
	st.b r8, LOWW(#_u1_flag_1pulse_inv1_gate)[r6]
	mov 0x1FFFFFFF, r6
	jr .BB.LABEL.1_28
.BB.LABEL.1_10:	; if_else_bb101
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_20us_inv1_1pulse.c", 0
	mov 0x00000004, r9
	br9 .BB.LABEL.1_6
.BB.LABEL.1_11:	; if_else_bb109
	mov 0xDAAAAAAA, r8
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_20us_inv1_1pulse.c", 167
	add r8, r10
	mov 0x0AAAAAA9, r8
	cmp r8, r10
	bh17 .BB.LABEL.1_30
.BB.LABEL.1_12:	; if_then_bb125
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_20us_inv1_1pulse.c", 172
	movhi HIGHW1(#_u1_flag_encint_inv1_clr), r0, r8
	mov 0x00000001, r6
	st.b r6, LOWW(#_u1_flag_encint_inv1_clr)[r8]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_20us_inv1_1pulse.c", 174
	movhi HIGHW1(#_f4_wr_inv1_pll_lpf), r0, r8
	ld.w LOWW(#_f4_wr_inv1_pll_lpf)[r8], r8
	mov 0x00000000, r6
	cmpf.s 0x00000007, r8, r6
	movhi HIGHW1(#_u1_flag_1pulse_inv1_gate), r0, r8
	trfsr 0
	bz9 .BB.LABEL.1_15
.BB.LABEL.1_13:	; if_then_bb130
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_20us_inv1_1pulse.c", 0
	mov 0x00000003, r6
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_20us_inv1_1pulse.c", 176
	st.b r6, LOWW(#_u1_flag_1pulse_inv1_gate)[r8]
.BB.LABEL.1_14:	; if_then_bb130
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_20us_inv1_1pulse.c", 0
	mov 0x35555554, r8
	add r8, r2
	br9 .BB.LABEL.1_29
.BB.LABEL.1_15:	; if_else_bb137
	mov 0x00000006, r6
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_20us_inv1_1pulse.c", 183
	st.b r6, LOWW(#_u1_flag_1pulse_inv1_gate)[r8]
	mov 0x1FFFFFFF, r8
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_20us_inv1_1pulse.c", 185
	add r8, r2
	br9 .BB.LABEL.1_29
.BB.LABEL.1_16:	; bb34.thread
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_20us_inv1_1pulse.c", 0
	mov 0xC5555555, r6
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_20us_inv1_1pulse.c", 193
	add r10, r6
	mov 0x0AAAAAA9, r9
	cmp r9, r6
	bh9 .BB.LABEL.1_20
.BB.LABEL.1_17:	; if_then_bb165
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_20us_inv1_1pulse.c", 198
	movhi HIGHW1(#_u1_flag_encint_inv1_clr), r0, r9
	mov 0x00000001, r6
	st.b r6, LOWW(#_u1_flag_encint_inv1_clr)[r9]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_20us_inv1_1pulse.c", 199
	movhi HIGHW1(#_f4_wr_inv1_pll_lpf), r0, r9
	ld.w LOWW(#_f4_wr_inv1_pll_lpf)[r9], r9
	mov 0x00000000, r10
	cmpf.s 0x00000007, r9, r10
	trfsr 0
	bz9 .BB.LABEL.1_19
.BB.LABEL.1_18:	; if_then_bb170
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_20us_inv1_1pulse.c", 201
	movhi HIGHW1(#_u1_flag_1pulse_inv1_gate), r0, r9
	st.b r6, LOWW(#_u1_flag_1pulse_inv1_gate)[r9]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_20us_inv1_1pulse.c", 203
	add r8, r2
	br9 .BB.LABEL.1_29
.BB.LABEL.1_19:	; if_else_bb177
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_20us_inv1_1pulse.c", 208
	movhi HIGHW1(#_u1_flag_1pulse_inv1_gate), r0, r8
	mov 0x00000002, r9
	st.b r9, LOWW(#_u1_flag_1pulse_inv1_gate)[r8]
	br9 .BB.LABEL.1_14
.BB.LABEL.1_20:	; if_else_bb185
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_20us_inv1_1pulse.c", 214
	movhi 0x0000B000, r10, r6
	cmp r9, r6
	bh9 .BB.LABEL.1_24
.BB.LABEL.1_21:	; if_then_bb201
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_20us_inv1_1pulse.c", 219
	movhi HIGHW1(#_u1_flag_encint_inv1_clr), r0, r6
	mov 0x00000001, r9
	st.b r9, LOWW(#_u1_flag_encint_inv1_clr)[r6]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_20us_inv1_1pulse.c", 220
	movhi HIGHW1(#_f4_wr_inv1_pll_lpf), r0, r6
	ld.w LOWW(#_f4_wr_inv1_pll_lpf)[r6], r6
	mov 0x00000000, r9
	cmpf.s 0x00000007, r6, r9
	trfsr 0
	bz9 .BB.LABEL.1_23
.BB.LABEL.1_22:	; if_then_bb206
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_20us_inv1_1pulse.c", 222
	movhi HIGHW1(#_u1_flag_1pulse_inv1_gate), r0, r8
	mov 0x00000005, r6
	st.b r6, LOWW(#_u1_flag_1pulse_inv1_gate)[r8]
	mov 0x5FFFFFFF, r8
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_20us_inv1_1pulse.c", 224
	add r8, r2
	br9 .BB.LABEL.1_29
.BB.LABEL.1_23:	; if_else_bb213
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_20us_inv1_1pulse.c", 229
	movhi HIGHW1(#_u1_flag_1pulse_inv1_gate), r0, r6
	mov 0x00000003, r9
	st.b r9, LOWW(#_u1_flag_1pulse_inv1_gate)[r6]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_20us_inv1_1pulse.c", 231
	add r8, r2
	br9 .BB.LABEL.1_29
.BB.LABEL.1_24:	; if_else_bb221
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_20us_inv1_1pulse.c", 0
	mov 0x9AAAAAAB, r6
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_20us_inv1_1pulse.c", 235
	add r6, r10
	mov 0x0AAAAAAA, r6
	cmp r6, r10
	bh9 .BB.LABEL.1_30
.BB.LABEL.1_25:	; if_then_bb237
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_20us_inv1_1pulse.c", 240
	movhi HIGHW1(#_u1_flag_encint_inv1_clr), r0, r6
	mov 0x00000001, r8
	st.b r8, LOWW(#_u1_flag_encint_inv1_clr)[r6]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_20us_inv1_1pulse.c", 242
	movhi HIGHW1(#_f4_wr_inv1_pll_lpf), r0, r6
	ld.w LOWW(#_f4_wr_inv1_pll_lpf)[r6], r6
	mov 0x00000000, r9
	cmpf.s 0x00000007, r6, r9
	trfsr 0
	bz9 .BB.LABEL.1_27
.BB.LABEL.1_26:	; if_then_bb242
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_20us_inv1_1pulse.c", 244
	movhi HIGHW1(#_u1_flag_1pulse_inv1_gate), r0, r8
	mov 0x00000004, r6
	st.b r6, LOWW(#_u1_flag_1pulse_inv1_gate)[r8]
	mov 0x75555554, r8
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_20us_inv1_1pulse.c", 246
	add r8, r2
	br9 .BB.LABEL.1_29
.BB.LABEL.1_27:	; if_else_bb249
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_20us_inv1_1pulse.c", 251
	movhi HIGHW1(#_u1_flag_1pulse_inv1_gate), r0, r6
	st.b r8, LOWW(#_u1_flag_1pulse_inv1_gate)[r6]
	mov 0x5FFFFFFF, r6
.BB.LABEL.1_28:	; if_else_bb249
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_20us_inv1_1pulse.c", 0
	add r6, r2
.BB.LABEL.1_29:	; if_break_bb261.PartialDrain
	sub r7, r2
	and r5, r2
	movhi HIGHW1(#_s4_wt_inv1_encint_2pi_2_31), r0, r5
	st.w r2, LOWW(#_s4_wt_inv1_encint_2pi_2_31)[r5]
.BB.LABEL.1_30:	; if_break_bb261
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_20us_inv1_1pulse.c", 265
	movhi HIGHW1(#_s4_wt_inv1_encint_2pi_2_31), r0, r2
	ld.w LOWW(#_s4_wt_inv1_encint_2pi_2_31)[r2], r2
	movea 0x000003FE, r0, r5
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_20us_inv1_1pulse.c", 266
	movhi HIGHW1(#_u4_cnt_encint_inv1_set), r0, r6
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_20us_inv1_1pulse.c", 303
	movhi HIGHW1(#_u4_flag_dir_inv1_enc), r0, r7
	ld.bu LOWW(#_u4_flag_dir_inv1_enc)[r7], r7
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_20us_inv1_1pulse.c", 265
	sar 0x00000015, r2
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_20us_inv1_1pulse.c", 266
	addi 0xFFFFFC01, r2, r0
	cmov 0x00000002, r5, r2, r2
	st.w r2, LOWW(#_u4_cnt_encint_inv1_set)[r6]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_20us_inv1_1pulse.c", 303
	andi 0x0000FFFF, r2, r6
	dispose 0x00000000, 0x00000001
	jr _enca1_ccr1_set
.BB.LABEL.1_31:	; return
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_20us_inv1_1pulse.c", 308
	dispose 0x00000000, 0x00000001, [r31]
_fb_20us_inv1_1pulse_init:
	.stack _fb_20us_inv1_1pulse_init = 0
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_20us_inv1_1pulse.c", 326
	movhi HIGHW1(#_u1_flag_1pulse_inv1_gate), r0, r2
	st.b r0, LOWW(#_u1_flag_1pulse_inv1_gate)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_20us_inv1_1pulse.c", 327
	movhi HIGHW1(#_u1_flag_1pulse_inv1_gate_tmp), r0, r2
	st.b r0, LOWW(#_u1_flag_1pulse_inv1_gate_tmp)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_20us_inv1_1pulse.c", 329
	movhi HIGHW1(#_s4_wt_dq_inv1_20us_2pi_2_31), r0, r2
	st.w r0, LOWW(#_s4_wt_dq_inv1_20us_2pi_2_31)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_20us_inv1_1pulse.c", 330
	movhi HIGHW1(#_s4_wt_inv1_encint_2pi_2_31), r0, r2
	st.w r0, LOWW(#_s4_wt_inv1_encint_2pi_2_31)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_20us_inv1_1pulse.c", 331
	movhi HIGHW1(#_s4_wt_inv1_encint_tmp_2pi_2_31), r0, r2
	st.w r0, LOWW(#_s4_wt_inv1_encint_tmp_2pi_2_31)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_20us_inv1_1pulse.c", 332
	movhi HIGHW1(#_s4_wt_inv1_1pulse_20us_2pi_2_31), r0, r2
	st.w r0, LOWW(#_s4_wt_inv1_1pulse_20us_2pi_2_31)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_20us_inv1_1pulse.c", 334
	movhi HIGHW1(#_u4_cnt_encint_inv1_set), r0, r2
	st.w r0, LOWW(#_u4_cnt_encint_inv1_set)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_20us_inv1_1pulse.c", 336
	movhi HIGHW1(#_u1_flag_encint_inv1_clr), r0, r2
	st.b r0, LOWW(#_u1_flag_encint_inv1_clr)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_20us_inv1_1pulse.c", 338
	movhi HIGHW1(#_s2_cnt_inv1_ecd_pf), r0, r2
	st.h r0, LOWW(#_s2_cnt_inv1_ecd_pf)[r2]
	jmp [r31]
	.section .bss, bss
_u1_flag_1pulse_inv1_gate:
	.ds (1)
_u1_flag_1pulse_inv1_gate_tmp:
	.ds (1)
	.align 4
_s4_wt_dq_inv1_20us_2pi_2_31:
	.ds (4)
	.align 4
_s4_wt_inv1_encint_2pi_2_31:
	.ds (4)
	.align 4
_s4_wt_inv1_encint_tmp_2pi_2_31:
	.ds (4)
	.align 4
_s4_wt_inv1_1pulse_20us_2pi_2_31:
	.ds (4)
	.align 4
_u4_cnt_encint_inv1_set:
	.ds (4)
_u1_flag_encint_inv1_clr:
	.ds (1)
	.align 2
_s2_cnt_inv1_ecd_pf:
	.ds (2)
