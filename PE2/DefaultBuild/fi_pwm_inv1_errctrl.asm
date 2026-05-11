#CC-RH Compiler RH850 Assembler Source
#@	CC-RH Version : V2.06.00  [28 Nov 2023]
#@	Command : Common\fi_pe2_error.c ..\Common\iolib\io_CPU.c ..\Common\iolib\io_ADC.c ..\Common\iolib\io_CSIH0.c ..\Common\iolib\io_CSIH1.c ..\Common\iolib\io_ENCA0.c ..\Common\iolib\io_ENCA1.c ..\Common\iolib\io_FCAN.c ..\Common\iolib\io_RDC20.c ..\Common\iolib\io_RDC21.c ..\Common\iolib\io_SCI0_40MHz.c ..\Common\iolib\io_SCI1_40MHz.c ..\Common\iolib\io_SCI2_40MHz.c ..\Common\iolib\io_TAUD0.c ..\Common\iolib\io_TAUD1.c ..\Common\iolib\io_TAUJ0.c ..\Common\iolib\io_TSG30.c ..\Common\iolib\io_TSG31.c ..\PE1\AWatcher\VECLIB_CMDMONI.c src\fpmsm_main.c ..\PE1\src\fi_AWatcher.c src\fi_1ms_int.c src\fi_1ms_inv1_adctrl.c src\fi_1ms_inv1_errctrl.c src\fi_20us_int.c src\fi_20us_inv1_1pulse.c src\fi_enc1_int.c src\fi_enc1_inv1_1pulse.c src\fi_pwm_int.c src\fi_pwm_inv1_1pulse.c src\fi_pwm_inv1_adctrl.c src\fi_pwm_inv1_encctrl.c src\fi_pwm_inv1_errctrl.c src\fi_pwm_inv1_idqctrl.c src\fi_pwm_inv1_invadj.c src\fi_pwm_inv1_svctrl.c src\fi_pwm_inv1_syncctrl.c src\fi_pwm_inv1_vctrlerr.c src\mapdata_ld_inv1_2d.c src\mapdata_ld_inv1_2d_map.c src\mapdata_lq_inv1_2d.c src\mapdata_lq_inv1_2d_map.c ..\PE1\src\fb_kpwm_tbl.c ..\PE1\src\fb_therm_calc.c ..\PE1\src\fb_therm_tbl_module.c ..\PE1\src\fb_vctrlerr_tbl.c src\fi_1ms_inv1_idqcom.c ..\PE1\src\fi_pwm_vctrlerrtbl.c src\fi_1ms_inv1_seqctrl.c ..\Common\iolib\io_PIO_amdt0530.c -Xobj_path=DefaultBuild -Xcpu=g3m -g -g_line -Ospeed -Oinline_size -I..\PE1\src -Isrc -I..\Common -D__CLK_HSB=80,__CLK_LSB=40,__CLKC_HSB=80,__CLK_CLSB=40 -use_recipf -Xasm_path=DefaultBuild -c
#@	compiled at Thu May 23 14:28:27 2024

	.file "src\fi_pwm_inv1_errctrl.c"

	$reg_mode 32
	.dbl_size 8

	.extern _f4_vdc_inv1_ad
	.extern _u4_flag_inv1_error
	.extern _u4_flag_inv1_error1
	.extern _u4_flag_inv1_error2
	.extern _f4_iu_inv1_ad
	.extern _f4_iv_inv1_ad
	.extern _f4_iw_inv1_ad
	.public _f4_lev_oc_inv1_iac, 4
	.public _f4_lev_ov_inv1_vdc, 4
	.public _u2_cnt_oc_inv1_iac_pwm_max, 2
	.public _u2_cnt_ov_inv1_vdc_pwm_max, 2
	.public _u2_cnt_oc_inv1_iu_pwm, 2
	.public _u2_cnt_oc_inv1_iv_pwm, 2
	.public _u2_cnt_oc_inv1_iw_pwm, 2
	.public _u2_cnt_ov_inv1_vdc_pwm, 2
	.public _fi_pwm_inv1_errctrl
	.extern _dpinv1_extgb_status
	.extern _u2_read_rdc20_status
	.public _fb_pwm_inv1_errctrl_init

	.section .text, text
_fi_pwm_inv1_errctrl:
	.stack _fi_pwm_inv1_errctrl = 4
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_errctrl.c", 67
	prepare 0x00000001, 0x00000000
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_errctrl.c", 73
	movhi HIGHW1(#_f4_iu_inv1_ad), r0, r2
	movhi HIGHW1(#_f4_lev_oc_inv1_iac), r0, r5
	ld.w LOWW(#_f4_iu_inv1_ad)[r2], r2
	ld.w LOWW(#_f4_lev_oc_inv1_iac)[r5], r5
	cmpf.s 0x00000004, r5, r2
	trfsr 0
	bz9 .BB.LABEL.1_2
.BB.LABEL.1_1:	; bb
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_errctrl.c", 0
	negf.s r5, r6
	cmpf.s 0x00000007, r6, r2
	trfsr 0
	bz9 .BB.LABEL.1_4
.BB.LABEL.1_2:	; if_then_bb
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_errctrl.c", 76
	movhi HIGHW1(#_u2_cnt_oc_inv1_iu_pwm), r0, r2
	ld.h LOWW(#_u2_cnt_oc_inv1_iu_pwm)[r2], r6
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_errctrl.c", 77
	movhi HIGHW1(#_u2_cnt_oc_inv1_iac_pwm_max), r0, r7
	ld.hu LOWW(#_u2_cnt_oc_inv1_iac_pwm_max)[r7], r7
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_errctrl.c", 76
	add 0x00000001, r6
	st.h r6, LOWW(#_u2_cnt_oc_inv1_iu_pwm)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_errctrl.c", 77
	andi 0x0000FFFF, r6, r2
	cmp r7, r2
	bl9 .BB.LABEL.1_5
.BB.LABEL.1_3:	; if_then_bb24
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_errctrl.c", 79
	movhi HIGHW1(#_u4_flag_inv1_error1), r0, r2
	ld.w LOWW(#_u4_flag_inv1_error1)[r2], r6
	ori 0x00000004, r6, r6
	st.w r6, LOWW(#_u4_flag_inv1_error1)[r2]
.BB.LABEL.1_4:	; if_break_bb28.PartialDrain
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_errctrl.c", 0
	movhi HIGHW1(#_u2_cnt_oc_inv1_iu_pwm), r0, r2
	st.h r0, LOWW(#_u2_cnt_oc_inv1_iu_pwm)[r2]
.BB.LABEL.1_5:	; if_break_bb28
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_errctrl.c", 94
	movhi HIGHW1(#_f4_iv_inv1_ad), r0, r2
	ld.w LOWW(#_f4_iv_inv1_ad)[r2], r2
	cmpf.s 0x00000004, r5, r2
	trfsr 0
	bz9 .BB.LABEL.1_7
.BB.LABEL.1_6:	; bb33
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_errctrl.c", 0
	negf.s r5, r6
	cmpf.s 0x00000007, r6, r2
	trfsr 0
	bz9 .BB.LABEL.1_9
.BB.LABEL.1_7:	; if_then_bb47
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_errctrl.c", 97
	movhi HIGHW1(#_u2_cnt_oc_inv1_iv_pwm), r0, r2
	ld.h LOWW(#_u2_cnt_oc_inv1_iv_pwm)[r2], r6
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_errctrl.c", 98
	movhi HIGHW1(#_u2_cnt_oc_inv1_iac_pwm_max), r0, r7
	ld.hu LOWW(#_u2_cnt_oc_inv1_iac_pwm_max)[r7], r7
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_errctrl.c", 97
	add 0x00000001, r6
	st.h r6, LOWW(#_u2_cnt_oc_inv1_iv_pwm)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_errctrl.c", 98
	andi 0x0000FFFF, r6, r2
	cmp r7, r2
	bl9 .BB.LABEL.1_10
.BB.LABEL.1_8:	; if_then_bb57
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_errctrl.c", 100
	movhi HIGHW1(#_u4_flag_inv1_error1), r0, r2
	ld.w LOWW(#_u4_flag_inv1_error1)[r2], r6
	ori 0x00000008, r6, r6
	st.w r6, LOWW(#_u4_flag_inv1_error1)[r2]
.BB.LABEL.1_9:	; if_break_bb63.PartialDrain
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_errctrl.c", 0
	movhi HIGHW1(#_u2_cnt_oc_inv1_iv_pwm), r0, r2
	st.h r0, LOWW(#_u2_cnt_oc_inv1_iv_pwm)[r2]
.BB.LABEL.1_10:	; if_break_bb63
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_errctrl.c", 115
	movhi HIGHW1(#_f4_iw_inv1_ad), r0, r2
	ld.w LOWW(#_f4_iw_inv1_ad)[r2], r2
	cmpf.s 0x00000004, r5, r2
	trfsr 0
	bz9 .BB.LABEL.1_12
.BB.LABEL.1_11:	; bb68
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_errctrl.c", 0
	negf.s r5, r5
	cmpf.s 0x00000007, r5, r2
	trfsr 0
	bz9 .BB.LABEL.1_14
.BB.LABEL.1_12:	; if_then_bb82
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_errctrl.c", 118
	movhi HIGHW1(#_u2_cnt_oc_inv1_iw_pwm), r0, r2
	ld.h LOWW(#_u2_cnt_oc_inv1_iw_pwm)[r2], r5
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_errctrl.c", 119
	movhi HIGHW1(#_u2_cnt_oc_inv1_iac_pwm_max), r0, r6
	ld.hu LOWW(#_u2_cnt_oc_inv1_iac_pwm_max)[r6], r6
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_errctrl.c", 118
	add 0x00000001, r5
	st.h r5, LOWW(#_u2_cnt_oc_inv1_iw_pwm)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_errctrl.c", 119
	andi 0x0000FFFF, r5, r2
	cmp r6, r2
	bl9 .BB.LABEL.1_15
.BB.LABEL.1_13:	; if_then_bb92
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_errctrl.c", 121
	movhi HIGHW1(#_u4_flag_inv1_error1), r0, r2
	ld.w LOWW(#_u4_flag_inv1_error1)[r2], r5
	ori 0x00000010, r5, r5
	st.w r5, LOWW(#_u4_flag_inv1_error1)[r2]
.BB.LABEL.1_14:	; if_break_bb98.PartialDrain
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_errctrl.c", 0
	movhi HIGHW1(#_u2_cnt_oc_inv1_iw_pwm), r0, r2
	st.h r0, LOWW(#_u2_cnt_oc_inv1_iw_pwm)[r2]
.BB.LABEL.1_15:	; if_break_bb98
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_errctrl.c", 138
	jarl _dpinv1_extgb_status, r31
	cmp 0x00000000, r10
	bz9 .BB.LABEL.1_17
.BB.LABEL.1_16:	; if_then_bb104
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_errctrl.c", 140
	movhi HIGHW1(#_u4_flag_inv1_error1), r0, r2
	ld.w LOWW(#_u4_flag_inv1_error1)[r2], r5
	ori 0x00000020, r5, r5
	st.w r5, LOWW(#_u4_flag_inv1_error1)[r2]
.BB.LABEL.1_17:	; if_break_bb108
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_errctrl.c", 148
	movhi HIGHW1(#_f4_vdc_inv1_ad), r0, r2
	movhi HIGHW1(#_f4_lev_ov_inv1_vdc), r0, r5
	ld.w LOWW(#_f4_vdc_inv1_ad)[r2], r2
	ld.w LOWW(#_f4_lev_ov_inv1_vdc)[r5], r5
	cmpf.s 0x00000007, r2, r5
	trfsr 0
	bz9 .BB.LABEL.1_20
.BB.LABEL.1_18:	; if_then_bb114
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_errctrl.c", 150
	movhi HIGHW1(#_u2_cnt_ov_inv1_vdc_pwm), r0, r2
	ld.h LOWW(#_u2_cnt_ov_inv1_vdc_pwm)[r2], r5
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_errctrl.c", 151
	movhi HIGHW1(#_u2_cnt_ov_inv1_vdc_pwm_max), r0, r6
	ld.hu LOWW(#_u2_cnt_ov_inv1_vdc_pwm_max)[r6], r6
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_errctrl.c", 150
	add 0x00000001, r5
	st.h r5, LOWW(#_u2_cnt_ov_inv1_vdc_pwm)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_errctrl.c", 151
	andi 0x0000FFFF, r5, r2
	cmp r6, r2
	bl9 .BB.LABEL.1_21
.BB.LABEL.1_19:	; if_then_bb124
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_errctrl.c", 153
	movhi HIGHW1(#_u4_flag_inv1_error1), r0, r2
	ld.w LOWW(#_u4_flag_inv1_error1)[r2], r5
	ori 0x00000001, r5, r5
	st.w r5, LOWW(#_u4_flag_inv1_error1)[r2]
.BB.LABEL.1_20:	; if_break_bb130.PartialDrain
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_errctrl.c", 0
	movhi HIGHW1(#_u2_cnt_ov_inv1_vdc_pwm), r0, r2
	st.h r0, LOWW(#_u2_cnt_ov_inv1_vdc_pwm)[r2]
.BB.LABEL.1_21:	; if_break_bb130
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_errctrl.c", 169
	jarl _u2_read_rdc20_status, r31
	cmp 0x00000000, r10
	bz9 .BB.LABEL.1_23
.BB.LABEL.1_22:	; if_then_bb136
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_errctrl.c", 171
	movhi HIGHW1(#_u4_flag_inv1_error1), r0, r2
	ld.w LOWW(#_u4_flag_inv1_error1)[r2], r5
	ori 0x00000200, r5, r5
	st.w r5, LOWW(#_u4_flag_inv1_error1)[r2]
.BB.LABEL.1_23:	; if_break_bb140
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_errctrl.c", 181
	movhi HIGHW1(#_u4_flag_inv1_error1), r0, r2
	ld.w LOWW(#_u4_flag_inv1_error1)[r2], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.1_25
.BB.LABEL.1_24:	; if_then_bb145
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_errctrl.c", 183
	movhi HIGHW1(#_u4_flag_inv1_error), r0, r2
	ld.w LOWW(#_u4_flag_inv1_error)[r2], r5
	ori 0x00000001, r5, r5
	st.w r5, LOWW(#_u4_flag_inv1_error)[r2]
.BB.LABEL.1_25:	; if_break_bb149
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_errctrl.c", 187
	movhi HIGHW1(#_u4_flag_inv1_error2), r0, r2
	ld.w LOWW(#_u4_flag_inv1_error2)[r2], r2
	cmp 0x00000000, r2
	bnz9 .BB.LABEL.1_27
.BB.LABEL.1_26:	; return
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_errctrl.c", 193
	dispose 0x00000000, 0x00000001, [r31]
.BB.LABEL.1_27:	; if_then_bb154
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_errctrl.c", 189
	movhi HIGHW1(#_u4_flag_inv1_error), r0, r2
	ld.w LOWW(#_u4_flag_inv1_error)[r2], r5
	ori 0x00000002, r5, r5
	st.w r5, LOWW(#_u4_flag_inv1_error)[r2]
	dispose 0x00000000, 0x00000001, [r31]
_fb_pwm_inv1_errctrl_init:
	.stack _fb_pwm_inv1_errctrl_init = 0
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_errctrl.c", 210
	movhi HIGHW1(#_u4_flag_inv1_error), r0, r2
	st.w r0, LOWW(#_u4_flag_inv1_error)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_errctrl.c", 211
	movhi HIGHW1(#_u4_flag_inv1_error1), r0, r2
	st.w r0, LOWW(#_u4_flag_inv1_error1)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_errctrl.c", 212
	movhi HIGHW1(#_u4_flag_inv1_error2), r0, r2
	st.w r0, LOWW(#_u4_flag_inv1_error2)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_errctrl.c", 218
	movhi HIGHW1(#_f4_lev_oc_inv1_iac), r0, r2
	movhi 0x00004461, r0, r5
	st.w r5, LOWW(#_f4_lev_oc_inv1_iac)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_errctrl.c", 219
	movhi HIGHW1(#_f4_lev_ov_inv1_vdc), r0, r2
	movhi 0x00004270, r0, r5
	st.w r5, LOWW(#_f4_lev_ov_inv1_vdc)[r2]
	mov 0x00000001, r2
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_errctrl.c", 222
	movhi HIGHW1(#_u2_cnt_oc_inv1_iac_pwm_max), r0, r5
	st.h r2, LOWW(#_u2_cnt_oc_inv1_iac_pwm_max)[r5]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_errctrl.c", 223
	movhi HIGHW1(#_u2_cnt_ov_inv1_vdc_pwm_max), r0, r5
	st.h r2, LOWW(#_u2_cnt_ov_inv1_vdc_pwm_max)[r5]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_errctrl.c", 225
	movhi HIGHW1(#_u2_cnt_oc_inv1_iu_pwm), r0, r2
	st.h r0, LOWW(#_u2_cnt_oc_inv1_iu_pwm)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_errctrl.c", 226
	movhi HIGHW1(#_u2_cnt_oc_inv1_iv_pwm), r0, r2
	st.h r0, LOWW(#_u2_cnt_oc_inv1_iv_pwm)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_errctrl.c", 227
	movhi HIGHW1(#_u2_cnt_oc_inv1_iw_pwm), r0, r2
	st.h r0, LOWW(#_u2_cnt_oc_inv1_iw_pwm)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_pwm_inv1_errctrl.c", 228
	movhi HIGHW1(#_u2_cnt_ov_inv1_vdc_pwm), r0, r2
	st.h r0, LOWW(#_u2_cnt_ov_inv1_vdc_pwm)[r2]
	jmp [r31]
	.section .bss, bss
	.align 4
_f4_lev_oc_inv1_iac:
	.ds (4)
	.align 4
_f4_lev_ov_inv1_vdc:
	.ds (4)
	.align 2
_u2_cnt_oc_inv1_iac_pwm_max:
	.ds (2)
	.align 2
_u2_cnt_ov_inv1_vdc_pwm_max:
	.ds (2)
	.align 2
_u2_cnt_oc_inv1_iu_pwm:
	.ds (2)
	.align 2
_u2_cnt_oc_inv1_iv_pwm:
	.ds (2)
	.align 2
_u2_cnt_oc_inv1_iw_pwm:
	.ds (2)
	.align 2
_u2_cnt_ov_inv1_vdc_pwm:
	.ds (2)
