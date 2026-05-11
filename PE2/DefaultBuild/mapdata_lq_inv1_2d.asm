#CC-RH Compiler RH850 Assembler Source
#@	CC-RH Version : V2.06.00  [28 Nov 2023]
#@	Command : Common\fi_pe2_error.c ..\Common\iolib\io_CPU.c ..\Common\iolib\io_ADC.c ..\Common\iolib\io_CSIH0.c ..\Common\iolib\io_CSIH1.c ..\Common\iolib\io_ENCA0.c ..\Common\iolib\io_ENCA1.c ..\Common\iolib\io_FCAN.c ..\Common\iolib\io_RDC20.c ..\Common\iolib\io_RDC21.c ..\Common\iolib\io_SCI0_40MHz.c ..\Common\iolib\io_SCI1_40MHz.c ..\Common\iolib\io_SCI2_40MHz.c ..\Common\iolib\io_TAUD0.c ..\Common\iolib\io_TAUD1.c ..\Common\iolib\io_TAUJ0.c ..\Common\iolib\io_TSG30.c ..\Common\iolib\io_TSG31.c ..\PE1\AWatcher\VECLIB_CMDMONI.c src\fpmsm_main.c ..\PE1\src\fi_AWatcher.c src\fi_1ms_int.c src\fi_1ms_inv1_adctrl.c src\fi_1ms_inv1_errctrl.c src\fi_20us_int.c src\fi_20us_inv1_1pulse.c src\fi_enc1_int.c src\fi_enc1_inv1_1pulse.c src\fi_pwm_int.c src\fi_pwm_inv1_1pulse.c src\fi_pwm_inv1_adctrl.c src\fi_pwm_inv1_encctrl.c src\fi_pwm_inv1_errctrl.c src\fi_pwm_inv1_idqctrl.c src\fi_pwm_inv1_invadj.c src\fi_pwm_inv1_svctrl.c src\fi_pwm_inv1_syncctrl.c src\fi_pwm_inv1_vctrlerr.c src\mapdata_ld_inv1_2d.c src\mapdata_ld_inv1_2d_map.c src\mapdata_lq_inv1_2d.c src\mapdata_lq_inv1_2d_map.c ..\PE1\src\fb_kpwm_tbl.c ..\PE1\src\fb_therm_calc.c ..\PE1\src\fb_therm_tbl_module.c ..\PE1\src\fb_vctrlerr_tbl.c src\fi_1ms_inv1_idqcom.c ..\PE1\src\fi_pwm_vctrlerrtbl.c src\fi_1ms_inv1_seqctrl.c ..\Common\iolib\io_PIO_amdt0530.c -Xobj_path=DefaultBuild -Xcpu=g3m -g -g_line -Ospeed -Oinline_size -I..\PE1\src -Isrc -I..\Common -D__CLK_HSB=80,__CLK_LSB=40,__CLKC_HSB=80,__CLK_CLSB=40 -use_recipf -Xasm_path=DefaultBuild -c
#@	compiled at Thu May 23 14:28:27 2024

	.file "src\mapdata_lq_inv1_2d.c"

	$reg_mode 32
	.dbl_size 8

	.extern _map_lq_2d
	.public _f4_x_3_nom_2d, 4
	.public _f4_z_3_nom_2d, 4
	.public _s4_x_3_id_2d, 4
	.public _s4_z_3_id_2d, 4
	.public _s4_x_3_id_p1_2d, 4
	.public _s4_z_3_id_p1_2d, 4
	.public _f4_kw_x_3_2d, 4
	.public _f4_kw_z_3_2d, 4
	.public _C00_3_2d, 4
	.public _C01_3_2d, 4
	.public _C10_3_2d, 4
	.public _C11_3_2d, 4
	.public _u1_lq_map_2d_get
	.extern _modff

	.section .text, text
_u1_lq_map_2d_get:
	.stack _u1_lq_map_2d_get = 24
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/mapdata_lq_inv1_2d.c", 24
	movhi 0x00008000, r0, r2
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/mapdata_lq_inv1_2d.c", 39
	addf.s r2, r6, r2
	movhi 0x00003E80, r0, r5
	prepare 0x00000079, 0x00000004
	mulf.s r5, r2, r6
	mov r7, r20
	movhi HIGHW1(#_f4_x_3_nom_2d), r0, r2
	mov r8, r21
	mov r3, r7
	st.w r6, LOWW(#_f4_x_3_nom_2d)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/mapdata_lq_inv1_2d.c", 40
	jarl _modff, r31
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/mapdata_lq_inv1_2d.c", 41
	ld.w 0x00000000[r3], r2
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/mapdata_lq_inv1_2d.c", 40
	movhi HIGHW1(#_f4_kw_x_3_2d), r0, r5
	st.w r10, LOWW(#_f4_kw_x_3_2d)[r5]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/mapdata_lq_inv1_2d.c", 41
	movhi HIGHW1(#_s4_x_3_id_2d), r0, r5
	mov 0x00000001, r22
	trncf.sw r2, r2
	st.w r2, LOWW(#_s4_x_3_id_2d)[r5]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/mapdata_lq_inv1_2d.c", 44
	cmp 0x00000000, r2
	bn9 .BB.LABEL.1_2
.BB.LABEL.1_1:	; bb16
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/mapdata_lq_inv1_2d.c", 0
	addi 0xFFFFFF00, r2, r0
	setf 0x0000000F, r22
.BB.LABEL.1_2:	; bb25
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/mapdata_lq_inv1_2d.c", 45
	cmp 0x00000000, r2
	cmov 0x00000004, 0x00000000, r2, r2
	cmov 0x00000004, r2, r22, r22
	bn9 .BB.LABEL.1_5
.BB.LABEL.1_3:	; if_else_bb
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/mapdata_lq_inv1_2d.c", 51
	addi 0xFFFFFF00, r2, r0
	ble9 .BB.LABEL.1_6
.BB.LABEL.1_4:	; if_else_bb.if_break_bb50.PartialDrain_crit_edge
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/mapdata_lq_inv1_2d.c", 0
	movhi 0x00003F80, r0, r22
	movea 0x00000100, r0, r2
.BB.LABEL.1_5:	; if_break_bb50.PartialDrain
	movhi HIGHW1(#_s4_x_3_id_2d), r0, r5
	st.w r2, LOWW(#_s4_x_3_id_2d)[r5]
	movhi HIGHW1(#_f4_kw_x_3_2d), r0, r2
	st.w r22, LOWW(#_f4_kw_x_3_2d)[r2]
	mov 0x00000001, r22
.BB.LABEL.1_6:	; if_break_bb50
	movhi 0x00008000, r0, r2
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/mapdata_lq_inv1_2d.c", 62
	addf.s r2, r20, r2
	movhi 0x000042F0, r0, r5
	mov r3, r7
	divf.s r5, r2, r6
	movhi HIGHW1(#_f4_z_3_nom_2d), r0, r2
	st.w r6, LOWW(#_f4_z_3_nom_2d)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/mapdata_lq_inv1_2d.c", 63
	jarl _modff, r31
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/mapdata_lq_inv1_2d.c", 64
	ld.w 0x00000000[r3], r2
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/mapdata_lq_inv1_2d.c", 63
	movhi HIGHW1(#_f4_kw_z_3_2d), r0, r5
	st.w r10, LOWW(#_f4_kw_z_3_2d)[r5]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/mapdata_lq_inv1_2d.c", 64
	movhi HIGHW1(#_s4_z_3_id_2d), r0, r5
	trncf.sw r2, r2
	st.w r2, LOWW(#_s4_z_3_id_2d)[r5]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/mapdata_lq_inv1_2d.c", 66
	cmp 0x00000000, r2
	mov 0x00000001, r5
	bn9 .BB.LABEL.1_8
.BB.LABEL.1_7:	; bb62
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/mapdata_lq_inv1_2d.c", 0
	cmp 0x00000000, r2
	setf 0x0000000F, r5
.BB.LABEL.1_8:	; bb73
	or r22, r5
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/mapdata_lq_inv1_2d.c", 67
	cmp 0x00000000, r2
	cmov 0x00000004, 0x00000000, r10, r10
	bn9 .BB.LABEL.1_11
.BB.LABEL.1_9:	; if_else_bb89
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/mapdata_lq_inv1_2d.c", 73
	cmp 0x00000000, r2
	ble9 .BB.LABEL.1_12
.BB.LABEL.1_10:	; if_else_bb89.if_break_bb101.PartialDrain_crit_edge
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/mapdata_lq_inv1_2d.c", 0
	movhi 0x00003F80, r0, r10
.BB.LABEL.1_11:	; if_break_bb101.PartialDrain
	movhi HIGHW1(#_s4_z_3_id_2d), r0, r2
	st.w r0, LOWW(#_s4_z_3_id_2d)[r2]
	movhi HIGHW1(#_f4_kw_z_3_2d), r0, r2
	st.w r10, LOWW(#_f4_kw_z_3_2d)[r2]
	ori 0x00000004, r5, r5
	mov 0x00000000, r2
.BB.LABEL.1_12:	; if_break_bb101
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/mapdata_lq_inv1_2d.c", 83
	movhi HIGHW1(#_f4_kw_x_3_2d), r0, r6
	ld.w LOWW(#_f4_kw_x_3_2d)[r6], r6
	mov 0x00000000, r7
	cmpf.s 0x00000004, r6, r7
	trfsr 0
	bnz9 .BB.LABEL.1_14
.BB.LABEL.1_13:	; if_then_bb106
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/mapdata_lq_inv1_2d.c", 85
	movhi HIGHW1(#_f4_kw_x_3_2d), r0, r6
	st.w r0, LOWW(#_f4_kw_x_3_2d)[r6]
	mov 0x00000000, r6
.BB.LABEL.1_14:	; if_break_bb108
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/mapdata_lq_inv1_2d.c", 89
	cmpf.s 0x00000004, r10, r7
	trfsr 0
	bnz9 .BB.LABEL.1_16
.BB.LABEL.1_15:	; if_then_bb113
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/mapdata_lq_inv1_2d.c", 91
	movhi HIGHW1(#_f4_kw_z_3_2d), r0, r8
	st.w r0, LOWW(#_f4_kw_z_3_2d)[r8]
	mov r7, r10
.BB.LABEL.1_16:	; if_break_bb115
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/mapdata_lq_inv1_2d.c", 99
	movhi HIGHW1(#_s4_x_3_id_2d), r0, r7
	ld.w LOWW(#_s4_x_3_id_2d)[r7], r7
	movea 0x00000100, r0, r8
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/mapdata_lq_inv1_2d.c", 100
	movhi HIGHW1(#_s4_x_3_id_p1_2d), r0, r9
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/mapdata_lq_inv1_2d.c", 102
	movhi HIGHW1(#_s4_z_3_id_p1_2d), r0, r11
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/mapdata_lq_inv1_2d.c", 109
	movhi HIGHW1(#_C00_3_2d), r0, r13
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/mapdata_lq_inv1_2d.c", 99
	addi 0x00000001, r7, r14
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/mapdata_lq_inv1_2d.c", 109
	mov #_map_lq_2d, r12
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/mapdata_lq_inv1_2d.c", 100
	addi 0xFFFFFEFF, r14, r0
	cmov 0x00000006, r14, r8, r8
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/mapdata_lq_inv1_2d.c", 109
	shl 0x00000002, r7
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/mapdata_lq_inv1_2d.c", 100
	st.w r8, LOWW(#_s4_x_3_id_p1_2d)[r9]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/mapdata_lq_inv1_2d.c", 101
	addi 0x00000001, r2, r9
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/mapdata_lq_inv1_2d.c", 109
	add r12, r7
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/mapdata_lq_inv1_2d.c", 101
	mov r9, r14
	sar 0x0000001F, r14
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/mapdata_lq_inv1_2d.c", 102
	and r9, r14
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/mapdata_lq_inv1_2d.c", 109
	shl 0x00000002, r2
	mov r7, r9
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/mapdata_lq_inv1_2d.c", 110
	shl 0x00000002, r8
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/mapdata_lq_inv1_2d.c", 102
	st.w r14, LOWW(#_s4_z_3_id_p1_2d)[r11]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/mapdata_lq_inv1_2d.c", 109
	add r2, r9
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/mapdata_lq_inv1_2d.c", 110
	add r8, r12
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/mapdata_lq_inv1_2d.c", 111
	shl 0x00000002, r14
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/mapdata_lq_inv1_2d.c", 110
	add r12, r2
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/mapdata_lq_inv1_2d.c", 112
	add r14, r12
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/mapdata_lq_inv1_2d.c", 109
	ld.w 0x00000000[r9], r9
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/mapdata_lq_inv1_2d.c", 111
	add r14, r7
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/mapdata_lq_inv1_2d.c", 112
	ld.w 0x00000000[r12], r11
	movhi HIGHW1(#_C11_3_2d), r0, r12
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/mapdata_lq_inv1_2d.c", 113
	cvtf.sd r6, r14
	mov 0x00000000, r16
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/mapdata_lq_inv1_2d.c", 109
	st.w r9, LOWW(#_C00_3_2d)[r13]
	movhi 0x00003FF0, r0, r17
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/mapdata_lq_inv1_2d.c", 112
	st.w r11, LOWW(#_C11_3_2d)[r12]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/mapdata_lq_inv1_2d.c", 113
	cvtf.sd r10, r12
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/mapdata_lq_inv1_2d.c", 110
	ld.w 0x00000000[r2], r2
	movhi HIGHW1(#_C10_3_2d), r0, r8
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/mapdata_lq_inv1_2d.c", 113
	subf.d r14, r16, r18
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/mapdata_lq_inv1_2d.c", 111
	ld.w 0x00000000[r7], r7
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/mapdata_lq_inv1_2d.c", 113
	subf.d r12, r16, r16
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/mapdata_lq_inv1_2d.c", 110
	st.w r2, LOWW(#_C10_3_2d)[r8]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/mapdata_lq_inv1_2d.c", 111
	movhi HIGHW1(#_C01_3_2d), r0, r8
	st.w r7, LOWW(#_C01_3_2d)[r8]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/mapdata_lq_inv1_2d.c", 113
	cvtf.sd r9, r8
	mulf.d r12, r18, r12
	mulf.d r16, r18, r22
	mulf.d r16, r14, r14
	mulf.d r8, r22, r8
	cvtf.sd r2, r22
	mulf.s r10, r6, r2
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/mapdata_lq_inv1_2d.c", 124
	andi 0x000000FF, r5, r10
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/mapdata_lq_inv1_2d.c", 113
	mulf.d r22, r14, r14
	mulf.s r11, r2, r2
	addf.d r14, r8, r8
	cvtf.sd r7, r14
	cvtf.sd r2, r6
	mulf.d r14, r12, r12
	addf.d r12, r8, r8
	addf.d r6, r8, r6
	cvtf.ds r6, r2
	st.w r2, 0x00000000[r21]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/mapdata_lq_inv1_2d.c", 124
	dispose 0x00000004, 0x00000079, [r31]
	.section .bss, bss
	.align 4
_f4_x_3_nom_2d:
	.ds (4)
	.align 4
_f4_z_3_nom_2d:
	.ds (4)
	.align 4
_s4_x_3_id_2d:
	.ds (4)
	.align 4
_s4_z_3_id_2d:
	.ds (4)
	.align 4
_s4_x_3_id_p1_2d:
	.ds (4)
	.align 4
_s4_z_3_id_p1_2d:
	.ds (4)
	.align 4
_f4_kw_x_3_2d:
	.ds (4)
	.align 4
_f4_kw_z_3_2d:
	.ds (4)
	.align 4
_C00_3_2d:
	.ds (4)
	.align 4
_C01_3_2d:
	.ds (4)
	.align 4
_C10_3_2d:
	.ds (4)
	.align 4
_C11_3_2d:
	.ds (4)
