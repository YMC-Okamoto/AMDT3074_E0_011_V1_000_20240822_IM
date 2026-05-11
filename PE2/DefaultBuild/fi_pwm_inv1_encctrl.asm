#CC-RH Compiler RH850 Assembler Source
#@	CC-RH Version : V2.06.00  [28 Nov 2023]
#@	Command : Common\fi_pe2_error.c ..\Common\iolib\io_CPU.c ..\Common\iolib\io_ADC.c ..\Common\iolib\io_CSIH0.c ..\Common\iolib\io_CSIH1.c ..\Common\iolib\io_ENCA0.c ..\Common\iolib\io_ENCA1.c ..\Common\iolib\io_FCAN.c ..\Common\iolib\io_RDC20.c ..\Common\iolib\io_RDC21.c ..\Common\iolib\io_SCI0_40MHz.c ..\Common\iolib\io_SCI1_40MHz.c ..\Common\iolib\io_SCI2_40MHz.c ..\Common\iolib\io_TAUD0.c ..\Common\iolib\io_TAUD1.c ..\Common\iolib\io_TAUJ0.c ..\Common\iolib\io_TSG30.c ..\Common\iolib\io_TSG31.c ..\PE1\AWatcher\VECLIB_CMDMONI.c src\fpmsm_main.c ..\PE1\src\fi_AWatcher.c src\fi_1ms_int.c src\fi_1ms_inv1_adctrl.c src\fi_1ms_inv1_errctrl.c src\fi_20us_int.c src\fi_20us_inv1_1pulse.c src\fi_enc1_int.c src\fi_enc1_inv1_1pulse.c src\fi_pwm_int.c src\fi_pwm_inv1_1pulse.c src\fi_pwm_inv1_adctrl.c src\fi_pwm_inv1_encctrl.c src\fi_pwm_inv1_errctrl.c src\fi_pwm_inv1_idqctrl.c src\fi_pwm_inv1_invadj.c src\fi_pwm_inv1_svctrl.c src\fi_pwm_inv1_syncctrl.c src\fi_pwm_inv1_vctrlerr.c src\mapdata_ld_inv1_2d.c src\mapdata_ld_inv1_2d_map.c src\mapdata_lq_inv1_2d.c src\mapdata_lq_inv1_2d_map.c ..\PE1\src\fb_kpwm_tbl.c ..\PE1\src\fb_therm_calc.c ..\PE1\src\fb_therm_tbl_module.c ..\PE1\src\fb_vctrlerr_tbl.c src\fi_1ms_inv1_idqcom.c ..\PE1\src\fi_pwm_vctrlerrtbl.c src\fi_1ms_inv1_seqctrl.c ..\Common\iolib\io_PIO_amdt0530.c -Xobj_path=DefaultBuild -Xcpu=g3m -g -g_line -Ospeed -Oinline_size -I..\PE1\src -Isrc -I..\Common -D__CLK_HSB=80,__CLK_LSB=40,__CLKC_HSB=80,__CLK_CLSB=40 -use_recipf -Xasm_path=DefaultBuild -c
#@	compiled at Thu May 23 14:28:27 2024

	.file "src\fi_pwm_inv1_encctrl.c"

	$reg_mode 32
	.dbl_size 8

	.extern _f4_wt_inv0_dq_tmp
	.extern _f4_wt_inv0_dq_delay
	.extern _s4_wt_inv0_dq_delay_2pi_2_31
	.extern _u4_flag_dir_inv0_enc
	.extern _f4_wr_inv0_pll
	.extern _f4_wr_inv0_pll_lpf
	.extern _f4_wr_inv0_pll_lpf_abs
	.extern _f4_speed_inv0_lpf
	.extern _u1_flag_inv1_adj
	.extern _f4_wtdq_inv1_adj
	.public _u2_cnt_inv1_ecd_get, 2
	.public _f4_wt_inv1_dq, 4
	.public _f4_wt_inv1_dq_tmp, 4
	.public _f4_wt_inv1_dq_offset, 4
	.public _s4_wt_inv1_dq_offset_2pi_2_31, 4
	.public _f4_wt_inv1_dq_delay, 4
	.public _s4_wt_inv1_dq_delay_2pi_2_31, 4
	.public _f4_sin_inv1_wtdq, 4
	.public _f4_cos_inv1_wtdq, 4
	.public _u4_flag_dir_inv1_enc, 4
	.public _f4_wr_inv1_pll, 4
	.public _f4_wr_inv1_pll_lpf, 4
	.public _f4_wr_inv1_pll_lpf_abs, 4
	.public _f4_speed_inv1_lpf, 4
	.public _fi_pwm_inv1_encctrl
	.extern _u2_enca1_cnt_read
	.extern _sinf
	.extern _cosf
	.public _fb_pwm_inv1_encctrl_init

	.section .text, text
_fi_pwm_inv1_encctrl:
	.stack _fi_pwm_inv1_encctrl = 4
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_encctrl.c", 76
	prepare 0x00000001, 0x00000000
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_encctrl.c", 90
	movhi HIGHW1(#_u4_flag_dir_inv0_enc), r0, r2
	ld.w LOWW(#_u4_flag_dir_inv0_enc)[r2], r2
	movhi HIGHW1(#_u4_flag_dir_inv1_enc), r0, r5
	st.w r2, LOWW(#_u4_flag_dir_inv1_enc)[r5]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_encctrl.c", 92
	andi 0x000000FF, r2, r6
	jarl _u2_enca1_cnt_read, r31
	movhi HIGHW1(#_u2_cnt_inv1_ecd_get), r0, r2
	st.h r10, LOWW(#_u2_cnt_inv1_ecd_get)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_encctrl.c", 93
	movhi HIGHW1(#_f4_wt_inv0_dq_tmp), r0, r2
	ld.w LOWW(#_f4_wt_inv0_dq_tmp)[r2], r2
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_encctrl.c", 99
	movhi HIGHW1(#_f4_wr_inv0_pll), r0, r6
	ld.w LOWW(#_f4_wr_inv0_pll)[r6], r6
	movhi HIGHW1(#_f4_wr_inv1_pll), r0, r7
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_encctrl.c", 100
	movhi HIGHW1(#_f4_wr_inv0_pll_lpf), r0, r8
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_encctrl.c", 93
	movhi HIGHW1(#_f4_wt_inv1_dq_tmp), r0, r5
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_encctrl.c", 100
	ld.w LOWW(#_f4_wr_inv0_pll_lpf)[r8], r8
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_encctrl.c", 99
	st.w r6, LOWW(#_f4_wr_inv1_pll)[r7]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_encctrl.c", 101
	movhi HIGHW1(#_f4_wr_inv0_pll_lpf_abs), r0, r6
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_encctrl.c", 93
	st.w r2, LOWW(#_f4_wt_inv1_dq_tmp)[r5]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_encctrl.c", 100
	movhi HIGHW1(#_f4_wr_inv1_pll_lpf), r0, r5
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_encctrl.c", 101
	ld.w LOWW(#_f4_wr_inv0_pll_lpf_abs)[r6], r6
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_encctrl.c", 102
	movhi HIGHW1(#_f4_speed_inv0_lpf), r0, r7
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_encctrl.c", 100
	st.w r8, LOWW(#_f4_wr_inv1_pll_lpf)[r5]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_encctrl.c", 101
	movhi HIGHW1(#_f4_wr_inv1_pll_lpf_abs), r0, r5
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_encctrl.c", 102
	ld.w LOWW(#_f4_speed_inv0_lpf)[r7], r7
	movhi HIGHW1(#_f4_speed_inv1_lpf), r0, r8
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_encctrl.c", 101
	st.w r6, LOWW(#_f4_wr_inv1_pll_lpf_abs)[r5]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_encctrl.c", 108
	movhi HIGHW1(#_f4_wt_inv0_dq_delay), r0, r5
	ld.w LOWW(#_f4_wt_inv0_dq_delay)[r5], r5
	movhi HIGHW1(#_f4_wt_inv1_dq_delay), r0, r6
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_encctrl.c", 102
	st.w r7, LOWW(#_f4_speed_inv1_lpf)[r8]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_encctrl.c", 109
	movhi HIGHW1(#_s4_wt_inv0_dq_delay_2pi_2_31), r0, r7
	ld.w LOWW(#_s4_wt_inv0_dq_delay_2pi_2_31)[r7], r7
	movhi HIGHW1(#_s4_wt_inv1_dq_delay_2pi_2_31), r0, r8
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_encctrl.c", 108
	st.w r5, LOWW(#_f4_wt_inv1_dq_delay)[r6]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_encctrl.c", 112
	movhi HIGHW1(#_u1_flag_inv1_adj), r0, r6
	ld.bu LOWW(#_u1_flag_inv1_adj)[r6], r6
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_encctrl.c", 109
	st.w r7, LOWW(#_s4_wt_inv1_dq_delay_2pi_2_31)[r8]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_encctrl.c", 112
	cmp 0x00000000, r6
	bz9 .BB.LABEL.1_3
.BB.LABEL.1_1:	; if_else_bb
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_encctrl.c", 120
	addi 0xFFFFFFF9, r6, r7
	andi 0x000000FF, r7, r7
	cmp 0x00000002, r7
	bl9 .BB.LABEL.1_3
.BB.LABEL.1_2:	; if_else_bb
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_encctrl.c", 0
	cmp 0x00000009, r6
	bnz9 .BB.LABEL.1_4
.BB.LABEL.1_3:	; if_else_bb54
	movhi HIGHW1(#_f4_wt_inv1_dq_offset), r0, r6
	ld.w LOWW(#_f4_wt_inv1_dq_offset)[r6], r6
	subf.s r6, r2, r2
	addf.s r5, r2, r6
	br9 .BB.LABEL.1_5
.BB.LABEL.1_4:	; if_then_bb52
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_encctrl.c", 122
	movhi HIGHW1(#_f4_wtdq_inv1_adj), r0, r2
	ld.w LOWW(#_f4_wtdq_inv1_adj)[r2], r6
.BB.LABEL.1_5:	; if_break_bb60
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_encctrl.c", 0
	movhi HIGHW1(#_f4_wt_inv1_dq), r0, r2
	st.w r6, LOWW(#_f4_wt_inv1_dq)[r2]
	mov 0x40490FDB, r2
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_encctrl.c", 132
	cmpf.s 0x00000007, r6, r2
	mov 0xC0C90FDB, r2
	trfsr 0
	bnz9 .BB.LABEL.1_8
.BB.LABEL.1_6:	; if_else_bb69
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_encctrl.c", 0
	mov 0xC0490FDB, r2
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_encctrl.c", 133
	cmpf.s 0x00000004, r6, r2
	trfsr 0
	bnz9 .BB.LABEL.1_9
.BB.LABEL.1_7:	; if_then_bb74
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_encctrl.c", 0
	mov 0x40C90FDB, r2
.BB.LABEL.1_8:	; if_then_bb74
	addf.s r2, r6, r6
	movhi HIGHW1(#_f4_wt_inv1_dq), r0, r2
	st.w r6, LOWW(#_f4_wt_inv1_dq)[r2]
.BB.LABEL.1_9:	; if_break_bb79
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_encctrl.c", 137
	jarl _sinf, r31
	movhi HIGHW1(#_f4_sin_inv1_wtdq), r0, r2
	st.w r10, LOWW(#_f4_sin_inv1_wtdq)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_encctrl.c", 138
	movhi HIGHW1(#_f4_wt_inv1_dq), r0, r2
	ld.w LOWW(#_f4_wt_inv1_dq)[r2], r6
	jarl _cosf, r31
	movhi HIGHW1(#_f4_cos_inv1_wtdq), r0, r2
	st.w r10, LOWW(#_f4_cos_inv1_wtdq)[r2]
	dispose 0x00000000, 0x00000001, [r31]
_fb_pwm_inv1_encctrl_init:
	.stack _fb_pwm_inv1_encctrl_init = 0
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_encctrl.c", 157
	movhi HIGHW1(#_f4_wt_inv1_dq), r0, r2
	st.w r0, LOWW(#_f4_wt_inv1_dq)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_encctrl.c", 158
	movhi HIGHW1(#_f4_wt_inv1_dq_tmp), r0, r2
	st.w r0, LOWW(#_f4_wt_inv1_dq_tmp)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_encctrl.c", 159
	movhi HIGHW1(#_f4_wt_inv1_dq_offset), r0, r2
	mov 0x400C6BF8, r5
	st.w r5, LOWW(#_f4_wt_inv1_dq_offset)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_encctrl.c", 160
	movhi HIGHW1(#_s4_wt_inv1_dq_offset_2pi_2_31), r0, r2
	mov 0x2CB2982B, r5
	st.w r5, LOWW(#_s4_wt_inv1_dq_offset_2pi_2_31)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_encctrl.c", 161
	movhi HIGHW1(#_f4_wt_inv1_dq_delay), r0, r2
	st.w r0, LOWW(#_f4_wt_inv1_dq_delay)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_encctrl.c", 162
	movhi HIGHW1(#_s4_wt_inv1_dq_delay_2pi_2_31), r0, r2
	st.w r0, LOWW(#_s4_wt_inv1_dq_delay_2pi_2_31)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_encctrl.c", 164
	movhi HIGHW1(#_f4_sin_inv1_wtdq), r0, r2
	st.w r0, LOWW(#_f4_sin_inv1_wtdq)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_encctrl.c", 165
	movhi HIGHW1(#_f4_cos_inv1_wtdq), r0, r2
	st.w r0, LOWW(#_f4_cos_inv1_wtdq)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_encctrl.c", 167
	movhi HIGHW1(#_u4_flag_dir_inv1_enc), r0, r2
	st.w r0, LOWW(#_u4_flag_dir_inv1_enc)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_encctrl.c", 173
	movhi HIGHW1(#_f4_wr_inv1_pll), r0, r2
	st.w r0, LOWW(#_f4_wr_inv1_pll)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_encctrl.c", 175
	movhi HIGHW1(#_f4_wr_inv1_pll_lpf), r0, r2
	st.w r0, LOWW(#_f4_wr_inv1_pll_lpf)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_encctrl.c", 177
	movhi HIGHW1(#_f4_speed_inv1_lpf), r0, r2
	st.w r0, LOWW(#_f4_speed_inv1_lpf)[r2]
	jmp [r31]
	.section .bss, bss
	.align 2
_u2_cnt_inv1_ecd_get:
	.ds (2)
	.align 4
_f4_wt_inv1_dq:
	.ds (4)
	.align 4
_f4_wt_inv1_dq_tmp:
	.ds (4)
	.align 4
_f4_wt_inv1_dq_offset:
	.ds (4)
	.align 4
_s4_wt_inv1_dq_offset_2pi_2_31:
	.ds (4)
	.align 4
_f4_wt_inv1_dq_delay:
	.ds (4)
	.align 4
_s4_wt_inv1_dq_delay_2pi_2_31:
	.ds (4)
	.align 4
_f4_sin_inv1_wtdq:
	.ds (4)
	.align 4
_f4_cos_inv1_wtdq:
	.ds (4)
	.align 4
_u4_flag_dir_inv1_enc:
	.ds (4)
	.align 4
_f4_wr_inv1_pll:
	.ds (4)
	.align 4
_f4_wr_inv1_pll_lpf:
	.ds (4)
	.align 4
_f4_wr_inv1_pll_lpf_abs:
	.ds (4)
	.align 4
_f4_speed_inv1_lpf:
	.ds (4)
