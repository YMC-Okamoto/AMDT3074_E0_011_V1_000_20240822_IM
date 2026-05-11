#CC-RH Compiler RH850 Assembler Source
#@	CC-RH Version : V2.02.00 [11 Nov 2019]
#@	Command : Common\fi_pe2_error.c ..\Common\commonPE2toPE1.c ..\Common\iolib\io_CPU.c ..\Common\iolib\io_ADC.c ..\Common\iolib\io_CSIH0.c ..\Common\iolib\io_CSIH1.c ..\Common\iolib\io_ENCA0.c ..\Common\iolib\io_ENCA1.c ..\Common\iolib\io_FCAN.c ..\Common\iolib\io_PIO_amdt0530.c ..\Common\iolib\io_RDC20.c ..\Common\iolib\io_RDC21.c ..\Common\iolib\io_SCI0_40MHz.c ..\Common\iolib\io_SCI1_40MHz.c ..\Common\iolib\io_SCI2_40MHz.c ..\Common\iolib\io_TAUD0.c ..\Common\iolib\io_TAUD1.c ..\Common\iolib\io_TAUJ0.c ..\Common\iolib\io_TSG30.c ..\Common\iolib\io_TSG31.c ..\PE1\AWatcher\VECLIB_CMDMONI.c src\fb_can1_ctrl.c src\fb_kpwm_tbl.c src\fb_therm_calc.c src\fb_vctrlerr_tbl.c src\fb_wt_inv1_enc_cmp_tbl.c src\fi_1ms_int.c src\fi_1ms_inv1_adctrl.c src\fi_1ms_inv1_almctrl.c src\fi_1ms_inv1_errctrl.c src\fi_1ms_inv1_fo_reset.c src\fi_1ms_inv1_idqcom.c src\fi_1ms_inv1_ifctrl.c src\fi_1ms_inv1_seqctrl.c src\fi_1ms_inv1_wrctrl.c src\fi_20us_int.c src\fi_20us_inv1_1pulse.c src\fi_enc1_int.c src\fi_enc1_inv1_1pulse.c src\fi_pwm_int.c src\fi_pwm_inv1_1pulse.c src\fi_pwm_inv1_adctrl.c src\fi_pwm_inv1_almctrl.c src\fi_pwm_inv1_encctrl.c src\fi_pwm_inv1_errctrl.c src\fi_pwm_inv1_idqctrl.c src\fi_pwm_inv1_invadj.c src\fi_pwm_inv1_svctrl.c src\fi_pwm_inv1_syncctrl.c src\fi_pwm_inv1_vctrlerr.c src\fi_pwm_vctrlerrtbl.c src\fi_zphase_int.c src\fpmsm_main.c src\mapdata_ld_inv1_2d.c src\mapdata_ld_inv1_2d_map.c src\mapdata_lq_inv1_2d.c src\mapdata_lq_inv1_2d_map.c src\mapdata_trq_inv1.c src\mapdata_trq_inv1_limit.c src\mapdata_trq_inv1_map.c src\mapdata_trq_inv1_map_limit.c src\mapdata_trq_inv1_map_power.c -Xobj_path=DefaultBuild -Xcpu=g3m -g -g_line -Ospeed -Oinline_size -Isrc -I..\Common -D__CLK_HSB=80,__CLK_LSB=40,__CLKC_HSB=80,__CLK_CLSB=40 -use_recipf -Xasm_path=DefaultBuild -c
#@	compiled at Wed May 20 19:59:27 2020

	.file "src\fi_1ms_inv1_fo_reset.c"

	$reg_mode 32

	.public _u4_cnt_inv1_gdreset, 4
	.public _u1_mode_inv1_gdreset, 4
	.public _fi_1ms_inv1_fo_reset
	.extern _Get_INVC2
	.extern _Set_SDWN2

	.section .text, text
_fi_1ms_inv1_fo_reset:
	.stack _fi_1ms_inv1_fo_reset = 8
	.line "C:/Users/itami_NPC_02/Documents/AMDT-NPC/AMDT_ITAMI_モータ制御開発/E_制御関係/20200520/PE2/src/fi_1ms_inv1_fo_reset.c", 50
	prepare 0x00000041, 0x00000000
	.line "C:/Users/itami_NPC_02/Documents/AMDT-NPC/AMDT_ITAMI_モータ制御開発/E_制御関係/20200520/PE2/src/fi_1ms_inv1_fo_reset.c", 54
	cmp 0x00000001, r6
	bnz9 .BB.LABEL.1_2
.BB.LABEL.1_1:	; if_then_bb
	.line "C:/Users/itami_NPC_02/Documents/AMDT-NPC/AMDT_ITAMI_モータ制御開発/E_制御関係/20200520/PE2/src/fi_1ms_inv1_fo_reset.c", 56
	movhi HIGHW1(#_u4_cnt_inv1_gdreset), r0, r2
	st.w r0, LOWW(#_u4_cnt_inv1_gdreset)[r2]
	.line "C:/Users/itami_NPC_02/Documents/AMDT-NPC/AMDT_ITAMI_モータ制御開発/E_制御関係/20200520/PE2/src/fi_1ms_inv1_fo_reset.c", 57
	movhi HIGHW1(#_u1_mode_inv1_gdreset), r0, r2
	st.w r0, LOWW(#_u1_mode_inv1_gdreset)[r2]
	mov 0x00000000, r10
	dispose 0x00000000, 0x00000041, [r31]
.BB.LABEL.1_2:	; if_else_bb
	.line "C:/Users/itami_NPC_02/Documents/AMDT-NPC/AMDT_ITAMI_モータ制御開発/E_制御関係/20200520/PE2/src/fi_1ms_inv1_fo_reset.c", 61
	movhi HIGHW1(#_u1_mode_inv1_gdreset), r0, r2
	ld.w LOWW(#_u1_mode_inv1_gdreset)[r2], r2
	cmp 0x00000003, r2
	bh9 .BB.LABEL.1_6
.BB.LABEL.1_3:	; if_else_bb
	.line "C:/Users/itami_NPC_02/Documents/AMDT-NPC/AMDT_ITAMI_モータ制御開発/E_制御関係/20200520/PE2/src/fi_1ms_inv1_fo_reset.c", 0
	shl 0x00000001, r2
	jmp #.SWITCH.LABEL.1_15[r2]
.SWITCH.LABEL.1_15:
	br9 .BB.LABEL.1_4
	br9 .BB.LABEL.1_7
	br9 .BB.LABEL.1_9
	br9 .BB.LABEL.1_14
.SWITCH.LABEL.1_15.END:
.BB.LABEL.1_4:	; switch_clause_bb
	.line "C:/Users/itami_NPC_02/Documents/AMDT-NPC/AMDT_ITAMI_モータ制御開発/E_制御関係/20200520/PE2/src/fi_1ms_inv1_fo_reset.c", 64
	movhi HIGHW1(#_u4_cnt_inv1_gdreset), r0, r2
	st.w r0, LOWW(#_u4_cnt_inv1_gdreset)[r2]
	.line "C:/Users/itami_NPC_02/Documents/AMDT-NPC/AMDT_ITAMI_モータ制御開発/E_制御関係/20200520/PE2/src/fi_1ms_inv1_fo_reset.c", 66
	jarl _Get_INVC2, r31
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.1_14
.BB.LABEL.1_5:	; if_then_bb11
	.line "C:/Users/itami_NPC_02/Documents/AMDT-NPC/AMDT_ITAMI_モータ制御開発/E_制御関係/20200520/PE2/src/fi_1ms_inv1_fo_reset.c", 0
	mov 0x00000000, r20
	.line "C:/Users/itami_NPC_02/Documents/AMDT-NPC/AMDT_ITAMI_モータ制御開発/E_制御関係/20200520/PE2/src/fi_1ms_inv1_fo_reset.c", 68
	mov r20, r6
	jarl _Set_SDWN2, r31
	.line "C:/Users/itami_NPC_02/Documents/AMDT-NPC/AMDT_ITAMI_モータ制御開発/E_制御関係/20200520/PE2/src/fi_1ms_inv1_fo_reset.c", 69
	movhi HIGHW1(#_u1_mode_inv1_gdreset), r0, r2
	mov 0x00000001, r5
	st.w r5, LOWW(#_u1_mode_inv1_gdreset)[r2]
	mov r20, r10
	dispose 0x00000000, 0x00000041, [r31]
.BB.LABEL.1_6:	; switch_clause_bb43
	.line "C:/Users/itami_NPC_02/Documents/AMDT-NPC/AMDT_ITAMI_モータ制御開発/E_制御関係/20200520/PE2/src/fi_1ms_inv1_fo_reset.c", 0
	movea 0x000000FF, r0, r10
	.line "C:/Users/itami_NPC_02/Documents/AMDT-NPC/AMDT_ITAMI_モータ制御開発/E_制御関係/20200520/PE2/src/fi_1ms_inv1_fo_reset.c", 107
	dispose 0x00000000, 0x00000041, [r31]
.BB.LABEL.1_7:	; switch_clause_bb14
	.line "C:/Users/itami_NPC_02/Documents/AMDT-NPC/AMDT_ITAMI_モータ制御開発/E_制御関係/20200520/PE2/src/fi_1ms_inv1_fo_reset.c", 75
	movhi HIGHW1(#_u4_cnt_inv1_gdreset), r0, r2
	ld.w LOWW(#_u4_cnt_inv1_gdreset)[r2], r5
	movea 0x000000C8, r0, r6
	add 0x00000001, r5
	st.w r5, LOWW(#_u4_cnt_inv1_gdreset)[r2]
	.line "C:/Users/itami_NPC_02/Documents/AMDT-NPC/AMDT_ITAMI_モータ制御開発/E_制御関係/20200520/PE2/src/fi_1ms_inv1_fo_reset.c", 77
	cmp r6, r5
	bl9 .BB.LABEL.1_14
.BB.LABEL.1_8:	; if_then_bb21
	.line "C:/Users/itami_NPC_02/Documents/AMDT-NPC/AMDT_ITAMI_モータ制御開発/E_制御関係/20200520/PE2/src/fi_1ms_inv1_fo_reset.c", 0
	mov 0x00000001, r6
	.line "C:/Users/itami_NPC_02/Documents/AMDT-NPC/AMDT_ITAMI_モータ制御開発/E_制御関係/20200520/PE2/src/fi_1ms_inv1_fo_reset.c", 79
	jarl _Set_SDWN2, r31
	.line "C:/Users/itami_NPC_02/Documents/AMDT-NPC/AMDT_ITAMI_モータ制御開発/E_制御関係/20200520/PE2/src/fi_1ms_inv1_fo_reset.c", 80
	movhi HIGHW1(#_u4_cnt_inv1_gdreset), r0, r2
	st.w r0, LOWW(#_u4_cnt_inv1_gdreset)[r2]
	.line "C:/Users/itami_NPC_02/Documents/AMDT-NPC/AMDT_ITAMI_モータ制御開発/E_制御関係/20200520/PE2/src/fi_1ms_inv1_fo_reset.c", 81
	movhi HIGHW1(#_u1_mode_inv1_gdreset), r0, r2
	mov 0x00000002, r5
	br9 .BB.LABEL.1_13
.BB.LABEL.1_9:	; switch_clause_bb25
	.line "C:/Users/itami_NPC_02/Documents/AMDT-NPC/AMDT_ITAMI_モータ制御開発/E_制御関係/20200520/PE2/src/fi_1ms_inv1_fo_reset.c", 87
	movhi HIGHW1(#_u4_cnt_inv1_gdreset), r0, r2
	ld.w LOWW(#_u4_cnt_inv1_gdreset)[r2], r5
	add 0x00000001, r5
	st.w r5, LOWW(#_u4_cnt_inv1_gdreset)[r2]
	.line "C:/Users/itami_NPC_02/Documents/AMDT-NPC/AMDT_ITAMI_モータ制御開発/E_制御関係/20200520/PE2/src/fi_1ms_inv1_fo_reset.c", 89
	jarl _Get_INVC2, r31
	movhi HIGHW1(#_u4_cnt_inv1_gdreset), r0, r2
	cmp 0x00000001, r10
	bnz9 .BB.LABEL.1_11
.BB.LABEL.1_10:	; if_then_bb32
	.line "C:/Users/itami_NPC_02/Documents/AMDT-NPC/AMDT_ITAMI_モータ制御開発/E_制御関係/20200520/PE2/src/fi_1ms_inv1_fo_reset.c", 91
	st.w r0, LOWW(#_u4_cnt_inv1_gdreset)[r2]
	.line "C:/Users/itami_NPC_02/Documents/AMDT-NPC/AMDT_ITAMI_モータ制御開発/E_制御関係/20200520/PE2/src/fi_1ms_inv1_fo_reset.c", 92
	movhi HIGHW1(#_u1_mode_inv1_gdreset), r0, r2
	st.w r0, LOWW(#_u1_mode_inv1_gdreset)[r2]
	mov 0x00000001, r10
	.line "C:/Users/itami_NPC_02/Documents/AMDT-NPC/AMDT_ITAMI_モータ制御開発/E_制御関係/20200520/PE2/src/fi_1ms_inv1_fo_reset.c", 93
	dispose 0x00000000, 0x00000041, [r31]
.BB.LABEL.1_11:	; if_else_bb33
	.line "C:/Users/itami_NPC_02/Documents/AMDT-NPC/AMDT_ITAMI_モータ制御開発/E_制御関係/20200520/PE2/src/fi_1ms_inv1_fo_reset.c", 95
	ld.w LOWW(#_u4_cnt_inv1_gdreset)[r2], r2
	movea 0x000000C8, r0, r5
	cmp r5, r2
	bl9 .BB.LABEL.1_14
.BB.LABEL.1_12:	; if_then_bb38
	.line "C:/Users/itami_NPC_02/Documents/AMDT-NPC/AMDT_ITAMI_モータ制御開発/E_制御関係/20200520/PE2/src/fi_1ms_inv1_fo_reset.c", 97
	movhi HIGHW1(#_u4_cnt_inv1_gdreset), r0, r2
	st.w r0, LOWW(#_u4_cnt_inv1_gdreset)[r2]
	.line "C:/Users/itami_NPC_02/Documents/AMDT-NPC/AMDT_ITAMI_モータ制御開発/E_制御関係/20200520/PE2/src/fi_1ms_inv1_fo_reset.c", 98
	movhi HIGHW1(#_u1_mode_inv1_gdreset), r0, r2
	movea 0x000000FF, r0, r5
.BB.LABEL.1_13:	; if_then_bb38
	.line "C:/Users/itami_NPC_02/Documents/AMDT-NPC/AMDT_ITAMI_モータ制御開発/E_制御関係/20200520/PE2/src/fi_1ms_inv1_fo_reset.c", 0
	st.w r5, LOWW(#_u1_mode_inv1_gdreset)[r2]
.BB.LABEL.1_14:	; if_break_bb44
	mov 0x00000000, r10
	.line "C:/Users/itami_NPC_02/Documents/AMDT-NPC/AMDT_ITAMI_モータ制御開発/E_制御関係/20200520/PE2/src/fi_1ms_inv1_fo_reset.c", 113
	dispose 0x00000000, 0x00000041, [r31]
	.section .bss, bss
	.align 4
_u4_cnt_inv1_gdreset:
	.ds (4)
	.align 4
_u1_mode_inv1_gdreset:
	.ds (4)
