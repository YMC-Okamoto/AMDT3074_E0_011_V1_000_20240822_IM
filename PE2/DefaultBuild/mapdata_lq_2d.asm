#CC-RH Compiler RH850 Assembler Source
#@	CC-RH Version : V2.00.00 [24 May 2018]
#@	Command : src\fb_can1_ctrl.c src\fi_1ms_inv1_adctrl.c src\fi_1ms_inv1_errctrl.c src\fi_1ms_inv1_idqcom.c src\fi_1ms_inv1_seqctrl.c src\fi_1ms_inv1_wrctrl.c src\fi_20us_inv1_1pulse.c src\fi_enc1_int.c src\fi_enc1_inv1_1pulse.c src\fi_pwm_inv1_1pulse.c src\fi_pwm_inv1_adctrl.c src\fi_pwm_inv1_encctrl.c src\fi_pwm_inv1_errctrl.c src\fi_pwm_inv1_idqctrl.c src\fi_pwm_inv1_invadj.c src\fi_pwm_inv1_svctrl.c src\fi_pwm_inv1_vctrlerr.c src\fi_pwm_vctrlerrtbl.c src\mapdata_trq.c src\mapdata_trq_limit.c src\mapdata_trq_map.c src\mapdata_trq_map_limit.c src\fpmsm_main.c src\fi_1ms_int.c src\fi_20us_int.c src\fi_pwm_int.c src\mapdata_ld_2d.c src\mapdata_ld_2d_map.c src\mapdata_lq_2d.c src\mapdata_lq_2d_map.c src\fi_1ms_inv1_ifctrl.c -Xobj_path=DefaultBuild -Xcpu=g3m -g -g_line -Ospeed -Oinline_size -Isrc -I..\Common -D__CLK_HSB=80,__CLK_LSB=40,__CLKC_HSB=80,__CLK_CLSB=40 -use_recipf -Xasm_path=DefaultBuild -c
#@	compiled at Mon Oct 15 15:20:30 2018

	.file "src\mapdata_lq_2d.c"

	$reg_mode 32

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
	.stack _u1_lq_map_2d_get = 32
	.line "C:/Users/itami_NPC_02/Documents/AMDT-NPC/AMDT0971_住友商事マシネックス（日本精工）様向け_車載用インバータデモ機/E_制御関係/20181015/PE2/src/mapdata_lq_2d.c", 28
	movhi 0x00008000, r0, r2
	.line "C:/Users/itami_NPC_02/Documents/AMDT-NPC/AMDT0971_住友商事マシネックス（日本精工）様向け_車載用インバータデモ機/E_制御関係/20181015/PE2/src/mapdata_lq_2d.c", 43
	addf.s r2, r6, r2
	movhi 0x00004080, r0, r5
	prepare 0x00000679, 0x00000004
	divf.s r5, r2, r6
	mov r7, r20
	movhi HIGHW1(#_f4_x_3_nom_2d), r0, r2
	mov r8, r21
	mov r3, r7
	st.w r6, LOWW(#_f4_x_3_nom_2d)[r2]
	.line "C:/Users/itami_NPC_02/Documents/AMDT-NPC/AMDT0971_住友商事マシネックス（日本精工）様向け_車載用インバータデモ機/E_制御関係/20181015/PE2/src/mapdata_lq_2d.c", 44
	jarl _modff, r31
	.line "C:/Users/itami_NPC_02/Documents/AMDT-NPC/AMDT0971_住友商事マシネックス（日本精工）様向け_車載用インバータデモ機/E_制御関係/20181015/PE2/src/mapdata_lq_2d.c", 45
	ld.w 0x00000000[r3], r2
	.line "C:/Users/itami_NPC_02/Documents/AMDT-NPC/AMDT0971_住友商事マシネックス（日本精工）様向け_車載用インバータデモ機/E_制御関係/20181015/PE2/src/mapdata_lq_2d.c", 44
	movhi HIGHW1(#_f4_kw_x_3_2d), r0, r5
	st.w r10, LOWW(#_f4_kw_x_3_2d)[r5]
	.line "C:/Users/itami_NPC_02/Documents/AMDT-NPC/AMDT0971_住友商事マシネックス（日本精工）様向け_車載用インバータデモ機/E_制御関係/20181015/PE2/src/mapdata_lq_2d.c", 45
	movhi HIGHW1(#_s4_x_3_id_2d), r0, r5
	mov 0x00000001, r22
	trncf.sw r2, r2
	st.w r2, LOWW(#_s4_x_3_id_2d)[r5]
	.line "C:/Users/itami_NPC_02/Documents/AMDT-NPC/AMDT0971_住友商事マシネックス（日本精工）様向け_車載用インバータデモ機/E_制御関係/20181015/PE2/src/mapdata_lq_2d.c", 48
	cmp 0x00000000, r2
	bn9 .BB.LABEL.1_2
.BB.LABEL.1_1:	; bb16
	.line "C:/Users/itami_NPC_02/Documents/AMDT-NPC/AMDT0971_住友商事マシネックス（日本精工）様向け_車載用インバータデモ機/E_制御関係/20181015/PE2/src/mapdata_lq_2d.c", 0
	addi 0xFFFFFF00, r2, r0
	setf 0x0000000F, r22
.BB.LABEL.1_2:	; bb25
	.line "C:/Users/itami_NPC_02/Documents/AMDT-NPC/AMDT0971_住友商事マシネックス（日本精工）様向け_車載用インバータデモ機/E_制御関係/20181015/PE2/src/mapdata_lq_2d.c", 49
	cmp 0x00000000, r2
	cmov 0x00000004, 0x00000000, r2, r2
	cmov 0x00000004, r2, r22, r22
	bn9 .BB.LABEL.1_5
.BB.LABEL.1_3:	; if_else_bb
	.line "C:/Users/itami_NPC_02/Documents/AMDT-NPC/AMDT0971_住友商事マシネックス（日本精工）様向け_車載用インバータデモ機/E_制御関係/20181015/PE2/src/mapdata_lq_2d.c", 55
	addi 0xFFFFFF00, r2, r0
	ble9 .BB.LABEL.1_6
.BB.LABEL.1_4:	; if_else_bb.if_break_bb50.PartialDrain_crit_edge
	.line "C:/Users/itami_NPC_02/Documents/AMDT-NPC/AMDT0971_住友商事マシネックス（日本精工）様向け_車載用インバータデモ機/E_制御関係/20181015/PE2/src/mapdata_lq_2d.c", 0
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
	.line "C:/Users/itami_NPC_02/Documents/AMDT-NPC/AMDT0971_住友商事マシネックス（日本精工）様向け_車載用インバータデモ機/E_制御関係/20181015/PE2/src/mapdata_lq_2d.c", 66
	addf.s r2, r20, r2
	movhi 0x00004248, r0, r5
	mov r3, r7
	divf.s r5, r2, r6
	movhi HIGHW1(#_f4_z_3_nom_2d), r0, r2
	st.w r6, LOWW(#_f4_z_3_nom_2d)[r2]
	.line "C:/Users/itami_NPC_02/Documents/AMDT-NPC/AMDT0971_住友商事マシネックス（日本精工）様向け_車載用インバータデモ機/E_制御関係/20181015/PE2/src/mapdata_lq_2d.c", 67
	jarl _modff, r31
	.line "C:/Users/itami_NPC_02/Documents/AMDT-NPC/AMDT0971_住友商事マシネックス（日本精工）様向け_車載用インバータデモ機/E_制御関係/20181015/PE2/src/mapdata_lq_2d.c", 68
	ld.w 0x00000000[r3], r2
	.line "C:/Users/itami_NPC_02/Documents/AMDT-NPC/AMDT0971_住友商事マシネックス（日本精工）様向け_車載用インバータデモ機/E_制御関係/20181015/PE2/src/mapdata_lq_2d.c", 67
	movhi HIGHW1(#_f4_kw_z_3_2d), r0, r5
	st.w r10, LOWW(#_f4_kw_z_3_2d)[r5]
	.line "C:/Users/itami_NPC_02/Documents/AMDT-NPC/AMDT0971_住友商事マシネックス（日本精工）様向け_車載用インバータデモ機/E_制御関係/20181015/PE2/src/mapdata_lq_2d.c", 68
	movhi HIGHW1(#_s4_z_3_id_2d), r0, r5
	trncf.sw r2, r2
	st.w r2, LOWW(#_s4_z_3_id_2d)[r5]
	.line "C:/Users/itami_NPC_02/Documents/AMDT-NPC/AMDT0971_住友商事マシネックス（日本精工）様向け_車載用インバータデモ機/E_制御関係/20181015/PE2/src/mapdata_lq_2d.c", 70
	cmp 0x00000000, r2
	mov 0x00000001, r5
	bn9 .BB.LABEL.1_8
.BB.LABEL.1_7:	; bb62
	.line "C:/Users/itami_NPC_02/Documents/AMDT-NPC/AMDT0971_住友商事マシネックス（日本精工）様向け_車載用インバータデモ機/E_制御関係/20181015/PE2/src/mapdata_lq_2d.c", 0
	cmp 0x00000003, r2
	setf 0x0000000F, r5
.BB.LABEL.1_8:	; bb73
	or r22, r5
	.line "C:/Users/itami_NPC_02/Documents/AMDT-NPC/AMDT0971_住友商事マシネックス（日本精工）様向け_車載用インバータデモ機/E_制御関係/20181015/PE2/src/mapdata_lq_2d.c", 71
	cmp 0x00000000, r2
	cmov 0x00000004, 0x00000000, r2, r2
	cmov 0x00000004, r2, r10, r10
	bn9 .BB.LABEL.1_11
.BB.LABEL.1_9:	; if_else_bb89
	.line "C:/Users/itami_NPC_02/Documents/AMDT-NPC/AMDT0971_住友商事マシネックス（日本精工）様向け_車載用インバータデモ機/E_制御関係/20181015/PE2/src/mapdata_lq_2d.c", 77
	cmp 0x00000003, r2
	ble9 .BB.LABEL.1_12
.BB.LABEL.1_10:	; if_else_bb89.if_break_bb101.PartialDrain_crit_edge
	.line "C:/Users/itami_NPC_02/Documents/AMDT-NPC/AMDT0971_住友商事マシネックス（日本精工）様向け_車載用インバータデモ機/E_制御関係/20181015/PE2/src/mapdata_lq_2d.c", 0
	movhi 0x00003F80, r0, r10
	mov 0x00000003, r2
.BB.LABEL.1_11:	; if_break_bb101.PartialDrain
	movhi HIGHW1(#_s4_z_3_id_2d), r0, r6
	st.w r2, LOWW(#_s4_z_3_id_2d)[r6]
	movhi HIGHW1(#_f4_kw_z_3_2d), r0, r6
	st.w r10, LOWW(#_f4_kw_z_3_2d)[r6]
	ori 0x00000004, r5, r5
.BB.LABEL.1_12:	; if_break_bb101
	.line "C:/Users/itami_NPC_02/Documents/AMDT-NPC/AMDT0971_住友商事マシネックス（日本精工）様向け_車載用インバータデモ機/E_制御関係/20181015/PE2/src/mapdata_lq_2d.c", 87
	movhi HIGHW1(#_f4_kw_x_3_2d), r0, r6
	ld.w LOWW(#_f4_kw_x_3_2d)[r6], r6
	mov 0x00000000, r7
	cmpf.s 0x00000004, r6, r7
	trfsr 0
	bnz9 .BB.LABEL.1_14
.BB.LABEL.1_13:	; if_then_bb106
	.line "C:/Users/itami_NPC_02/Documents/AMDT-NPC/AMDT0971_住友商事マシネックス（日本精工）様向け_車載用インバータデモ機/E_制御関係/20181015/PE2/src/mapdata_lq_2d.c", 89
	movhi HIGHW1(#_f4_kw_x_3_2d), r0, r6
	st.w r0, LOWW(#_f4_kw_x_3_2d)[r6]
	mov 0x00000000, r6
.BB.LABEL.1_14:	; if_break_bb108
	.line "C:/Users/itami_NPC_02/Documents/AMDT-NPC/AMDT0971_住友商事マシネックス（日本精工）様向け_車載用インバータデモ機/E_制御関係/20181015/PE2/src/mapdata_lq_2d.c", 93
	cmpf.s 0x00000004, r10, r7
	trfsr 0
	bnz9 .BB.LABEL.1_16
.BB.LABEL.1_15:	; if_then_bb113
	.line "C:/Users/itami_NPC_02/Documents/AMDT-NPC/AMDT0971_住友商事マシネックス（日本精工）様向け_車載用インバータデモ機/E_制御関係/20181015/PE2/src/mapdata_lq_2d.c", 95
	movhi HIGHW1(#_f4_kw_z_3_2d), r0, r8
	st.w r0, LOWW(#_f4_kw_z_3_2d)[r8]
	mov r7, r10
.BB.LABEL.1_16:	; if_break_bb115
	.line "C:/Users/itami_NPC_02/Documents/AMDT-NPC/AMDT0971_住友商事マシネックス（日本精工）様向け_車載用インバータデモ機/E_制御関係/20181015/PE2/src/mapdata_lq_2d.c", 103
	movhi HIGHW1(#_s4_x_3_id_2d), r0, r7
	ld.w LOWW(#_s4_x_3_id_2d)[r7], r7
	movea 0x00000100, r0, r8
	.line "C:/Users/itami_NPC_02/Documents/AMDT-NPC/AMDT0971_住友商事マシネックス（日本精工）様向け_車載用インバータデモ機/E_制御関係/20181015/PE2/src/mapdata_lq_2d.c", 104
	movhi HIGHW1(#_s4_x_3_id_p1_2d), r0, r9
	.line "C:/Users/itami_NPC_02/Documents/AMDT-NPC/AMDT0971_住友商事マシネックス（日本精工）様向け_車載用インバータデモ機/E_制御関係/20181015/PE2/src/mapdata_lq_2d.c", 106
	movhi HIGHW1(#_s4_z_3_id_p1_2d), r0, r11
	.line "C:/Users/itami_NPC_02/Documents/AMDT-NPC/AMDT0971_住友商事マシネックス（日本精工）様向け_車載用インバータデモ機/E_制御関係/20181015/PE2/src/mapdata_lq_2d.c", 113
	movhi HIGHW1(#_C00_3_2d), r0, r13
	.line "C:/Users/itami_NPC_02/Documents/AMDT-NPC/AMDT0971_住友商事マシネックス（日本精工）様向け_車載用インバータデモ機/E_制御関係/20181015/PE2/src/mapdata_lq_2d.c", 103
	addi 0x00000001, r7, r14
	.line "C:/Users/itami_NPC_02/Documents/AMDT-NPC/AMDT0971_住友商事マシネックス（日本精工）様向け_車載用インバータデモ機/E_制御関係/20181015/PE2/src/mapdata_lq_2d.c", 113
	mov #_map_lq_2d, r12
	.line "C:/Users/itami_NPC_02/Documents/AMDT-NPC/AMDT0971_住友商事マシネックス（日本精工）様向け_車載用インバータデモ機/E_制御関係/20181015/PE2/src/mapdata_lq_2d.c", 104
	addi 0xFFFFFEFF, r14, r0
	cmov 0x00000006, r14, r8, r8
	st.w r8, LOWW(#_s4_x_3_id_p1_2d)[r9]
	.line "C:/Users/itami_NPC_02/Documents/AMDT-NPC/AMDT0971_住友商事マシネックス（日本精工）様向け_車載用インバータデモ機/E_制御関係/20181015/PE2/src/mapdata_lq_2d.c", 105
	addi 0x00000001, r2, r9
	.line "C:/Users/itami_NPC_02/Documents/AMDT-NPC/AMDT0971_住友商事マシネックス（日本精工）様向け_車載用インバータデモ機/E_制御関係/20181015/PE2/src/mapdata_lq_2d.c", 106
	cmp 0x00000004, r9
	cmov 0x0000000E, 0x00000003, r9, r9
	.line "C:/Users/itami_NPC_02/Documents/AMDT-NPC/AMDT0971_住友商事マシネックス（日本精工）様向け_車載用インバータデモ機/E_制御関係/20181015/PE2/src/mapdata_lq_2d.c", 113
	shl 0x00000004, r7
	.line "C:/Users/itami_NPC_02/Documents/AMDT-NPC/AMDT0971_住友商事マシネックス（日本精工）様向け_車載用インバータデモ機/E_制御関係/20181015/PE2/src/mapdata_lq_2d.c", 106
	st.w r9, LOWW(#_s4_z_3_id_p1_2d)[r11]
	.line "C:/Users/itami_NPC_02/Documents/AMDT-NPC/AMDT0971_住友商事マシネックス（日本精工）様向け_車載用インバータデモ機/E_制御関係/20181015/PE2/src/mapdata_lq_2d.c", 113
	add r12, r7
	shl 0x00000002, r2
	mov r7, r11
	.line "C:/Users/itami_NPC_02/Documents/AMDT-NPC/AMDT0971_住友商事マシネックス（日本精工）様向け_車載用インバータデモ機/E_制御関係/20181015/PE2/src/mapdata_lq_2d.c", 114
	shl 0x00000004, r8
	.line "C:/Users/itami_NPC_02/Documents/AMDT-NPC/AMDT0971_住友商事マシネックス（日本精工）様向け_車載用インバータデモ機/E_制御関係/20181015/PE2/src/mapdata_lq_2d.c", 113
	add r2, r11
	.line "C:/Users/itami_NPC_02/Documents/AMDT-NPC/AMDT0971_住友商事マシネックス（日本精工）様向け_車載用インバータデモ機/E_制御関係/20181015/PE2/src/mapdata_lq_2d.c", 114
	add r8, r12
	add r12, r2
	.line "C:/Users/itami_NPC_02/Documents/AMDT-NPC/AMDT0971_住友商事マシネックス（日本精工）様向け_車載用インバータデモ機/E_制御関係/20181015/PE2/src/mapdata_lq_2d.c", 115
	shl 0x00000002, r9
	add r9, r7
	.line "C:/Users/itami_NPC_02/Documents/AMDT-NPC/AMDT0971_住友商事マシネックス（日本精工）様向け_車載用インバータデモ機/E_制御関係/20181015/PE2/src/mapdata_lq_2d.c", 116
	add r9, r12
	.line "C:/Users/itami_NPC_02/Documents/AMDT-NPC/AMDT0971_住友商事マシネックス（日本精工）様向け_車載用インバータデモ機/E_制御関係/20181015/PE2/src/mapdata_lq_2d.c", 113
	ld.w 0x00000000[r11], r11
	.line "C:/Users/itami_NPC_02/Documents/AMDT-NPC/AMDT0971_住友商事マシネックス（日本精工）様向け_車載用インバータデモ機/E_制御関係/20181015/PE2/src/mapdata_lq_2d.c", 117
	cvtf.sd r6, r14
	.line "C:/Users/itami_NPC_02/Documents/AMDT-NPC/AMDT0971_住友商事マシネックス（日本精工）様向け_車載用インバータデモ機/E_制御関係/20181015/PE2/src/mapdata_lq_2d.c", 116
	ld.w 0x00000000[r12], r9
	movhi HIGHW1(#_C11_3_2d), r0, r12
	mov 0x00000000, r16
	movhi 0x00003FF0, r0, r17
	.line "C:/Users/itami_NPC_02/Documents/AMDT-NPC/AMDT0971_住友商事マシネックス（日本精工）様向け_車載用インバータデモ機/E_制御関係/20181015/PE2/src/mapdata_lq_2d.c", 113
	st.w r11, LOWW(#_C00_3_2d)[r13]
	.line "C:/Users/itami_NPC_02/Documents/AMDT-NPC/AMDT0971_住友商事マシネックス（日本精工）様向け_車載用インバータデモ機/E_制御関係/20181015/PE2/src/mapdata_lq_2d.c", 117
	cvtf.sd r11, r24
	.line "C:/Users/itami_NPC_02/Documents/AMDT-NPC/AMDT0971_住友商事マシネックス（日本精工）様向け_車載用インバータデモ機/E_制御関係/20181015/PE2/src/mapdata_lq_2d.c", 116
	st.w r9, LOWW(#_C11_3_2d)[r12]
	.line "C:/Users/itami_NPC_02/Documents/AMDT-NPC/AMDT0971_住友商事マシネックス（日本精工）様向け_車載用インバータデモ機/E_制御関係/20181015/PE2/src/mapdata_lq_2d.c", 117
	cvtf.sd r10, r12
	subf.d r14, r16, r18
	.line "C:/Users/itami_NPC_02/Documents/AMDT-NPC/AMDT0971_住友商事マシネックス（日本精工）様向け_車載用インバータデモ機/E_制御関係/20181015/PE2/src/mapdata_lq_2d.c", 114
	ld.w 0x00000000[r2], r2
	movhi HIGHW1(#_C10_3_2d), r0, r8
	.line "C:/Users/itami_NPC_02/Documents/AMDT-NPC/AMDT0971_住友商事マシネックス（日本精工）様向け_車載用インバータデモ機/E_制御関係/20181015/PE2/src/mapdata_lq_2d.c", 115
	ld.w 0x00000000[r7], r7
	.line "C:/Users/itami_NPC_02/Documents/AMDT-NPC/AMDT0971_住友商事マシネックス（日本精工）様向け_車載用インバータデモ機/E_制御関係/20181015/PE2/src/mapdata_lq_2d.c", 117
	subf.d r12, r16, r16
	mulf.d r12, r18, r12
	.line "C:/Users/itami_NPC_02/Documents/AMDT-NPC/AMDT0971_住友商事マシネックス（日本精工）様向け_車載用インバータデモ機/E_制御関係/20181015/PE2/src/mapdata_lq_2d.c", 114
	st.w r2, LOWW(#_C10_3_2d)[r8]
	.line "C:/Users/itami_NPC_02/Documents/AMDT-NPC/AMDT0971_住友商事マシネックス（日本精工）様向け_車載用インバータデモ機/E_制御関係/20181015/PE2/src/mapdata_lq_2d.c", 115
	movhi HIGHW1(#_C01_3_2d), r0, r8
	.line "C:/Users/itami_NPC_02/Documents/AMDT-NPC/AMDT0971_住友商事マシネックス（日本精工）様向け_車載用インバータデモ機/E_制御関係/20181015/PE2/src/mapdata_lq_2d.c", 117
	mulf.d r16, r18, r22
	mulf.d r16, r14, r14
	cvtf.sd r7, r16
	.line "C:/Users/itami_NPC_02/Documents/AMDT-NPC/AMDT0971_住友商事マシネックス（日本精工）様向け_車載用インバータデモ機/E_制御関係/20181015/PE2/src/mapdata_lq_2d.c", 115
	st.w r7, LOWW(#_C01_3_2d)[r8]
	.line "C:/Users/itami_NPC_02/Documents/AMDT-NPC/AMDT0971_住友商事マシネックス（日本精工）様向け_車載用インバータデモ機/E_制御関係/20181015/PE2/src/mapdata_lq_2d.c", 117
	mulf.d r24, r22, r22
	cvtf.sd r2, r24
	mulf.s r10, r6, r2
	mulf.d r16, r12, r12
	mulf.d r24, r14, r14
	mulf.s r9, r2, r2
	.line "C:/Users/itami_NPC_02/Documents/AMDT-NPC/AMDT0971_住友商事マシネックス（日本精工）様向け_車載用インバータデモ機/E_制御関係/20181015/PE2/src/mapdata_lq_2d.c", 128
	andi 0x000000FF, r5, r10
	.line "C:/Users/itami_NPC_02/Documents/AMDT-NPC/AMDT0971_住友商事マシネックス（日本精工）様向け_車載用インバータデモ機/E_制御関係/20181015/PE2/src/mapdata_lq_2d.c", 117
	addf.d r14, r22, r14
	cvtf.sd r2, r6
	addf.d r12, r14, r12
	addf.d r6, r12, r6
	cvtf.ds r6, r2
	st.w r2, 0x00000000[r21]
	.line "C:/Users/itami_NPC_02/Documents/AMDT-NPC/AMDT0971_住友商事マシネックス（日本精工）様向け_車載用インバータデモ機/E_制御関係/20181015/PE2/src/mapdata_lq_2d.c", 128
	dispose 0x00000004, 0x00000679, [r31]
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
