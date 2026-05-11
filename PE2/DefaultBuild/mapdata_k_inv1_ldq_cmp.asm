#CC-RH Compiler RH850 Assembler Source
#@	CC-RH Version : V1.07.00 [30 Nov 2017]
#@	Command : Common\fi_pe2_error.c ..\Common\commonPE2toPE1.c ..\Common\iolib\io_CPU.c ..\Common\iolib\io_ADC.c ..\Common\iolib\io_CSIH0.c ..\Common\iolib\io_CSIH1.c ..\Common\iolib\io_ENCA0.c ..\Common\iolib\io_ENCA1.c ..\Common\iolib\io_FCAN.c ..\Common\iolib\io_PIO_amdt0530.c ..\Common\iolib\io_RDC20.c ..\Common\iolib\io_RDC21.c ..\Common\iolib\io_SCI0_40MHz.c ..\Common\iolib\io_SCI1_40MHz.c ..\Common\iolib\io_SCI2_40MHz.c ..\Common\iolib\io_TAUD0.c ..\Common\iolib\io_TAUD1.c ..\Common\iolib\io_TAUJ0.c ..\Common\iolib\io_TSG30.c ..\Common\iolib\io_TSG31.c src\fb_can1_ctrl.c src\fb_kpwm_tbl.c src\fb_ldisat_inv1_tbl.c src\fb_lqisat_inv1_tbl.c src\fb_therm_calc.c src\fb_vctrlerr_tbl.c src\fi_1ms_inv1_adctrl.c src\fi_1ms_inv1_errctrl.c src\fi_1ms_inv1_idqcom.c src\fi_1ms_inv1_seqctrl.c src\fi_1ms_inv1_wrctrl.c src\fi_20us_inv1_1pulse.c src\fi_enc1_int.c src\fi_enc1_inv1_1pulse.c src\fi_pwm_inv1_1pulse.c src\fi_pwm_inv1_adctrl.c src\fi_pwm_inv1_encctrl.c src\fi_pwm_inv1_errctrl.c src\fi_pwm_inv1_idqctrl.c src\fi_pwm_inv1_invadj.c src\fi_pwm_inv1_svctrl.c src\fi_pwm_inv1_vctrlerr.c src\fi_pwm_vctrlerrtbl.c src\mapdata_k_inv1_ldq_cmp.c src\mapdata_k_inv1_ldq_cmp_map.c src\mapdata_trq.c src\mapdata_trq_limit.c src\mapdata_trq_map.c src\mapdata_trq_map_limit.c ..\PE1\src\fi_AWatcher.c ..\PE1\AWatcher\VECLIB_CMDMONI.c src\fpmsm_main.c src\fi_1ms_int.c src\fi_20us_int.c src\fi_pwm_int.c -Xobj_path=DefaultBuild -Xcommon=rh850 -Xcpu=g3m -g -g_line -Ospeed -Oinline_size -Isrc -I..\Common -D__CLK_HSB=80,__CLK_LSB=40,__CLKC_HSB=80,__CLK_CLSB=40 -Xasm_path=DefaultBuild -c
#@	compiled at Mon Aug 06 12:05:32 2018

	.file "src\mapdata_k_inv1_ldq_cmp.c"

	$reg_mode 32

	.extern _map_k_inv1_ldq_cmp
	.public _f4_x_nom_1d, 4
	.public _s4_x_id_1d, 4
	.public _s4_x_id_p1_1d, 4
	.public _f4_kw_x_1d, 4
	.public _f4_x_add1_1d, 4
	.public _f4_x_add1_int_1d, 4
	.public _f4_x_add2_1d, 4
	.public _f4_x_add2_int_1d, 4
	.public _f4_x_nom_temp_1d, 4
	.public _f4_kw_x_temp_1d, 4
	.public _f4_kw_x_add_1d, 4
	.public _C0_1d, 4
	.public _C1_1d, 4
	.public _c0_1d, 2
	.public _c1_1d, 2
	.public _u1_k_inv1_ldq_cmp_map_get
	.extern _floorf
	.extern _modff

	.section .text, text
_u1_k_inv1_ldq_cmp_map_get:
	.stack _u1_k_inv1_ldq_cmp_map_get = 24
	.line "C:/Users/itami_NPC_02/Documents/AMDT-NPC/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/AMDT0530_E0_001_V3_000_20180806_norelease/PE2/src/mapdata_k_inv1_ldq_cmp.c", 34
	movhi 0x0000447A, r0, r2
	.line "C:/Users/itami_NPC_02/Documents/AMDT-NPC/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/AMDT0530_E0_001_V3_000_20180806_norelease/PE2/src/mapdata_k_inv1_ldq_cmp.c", 50
	subf.s r2, r6, r5
	prepare 0x00000079, 0x00000004
	divf.s r2, r5, r2
	movhi HIGHW1(#_f4_x_nom_temp_1d), r0, r21
	movhi 0x000042C6, r0, r6
	mov r7, r20
	st.w r2, LOWW(#_f4_x_nom_temp_1d)[r21]
	.line "C:/Users/itami_NPC_02/Documents/AMDT-NPC/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/AMDT0530_E0_001_V3_000_20180806_norelease/PE2/src/mapdata_k_inv1_ldq_cmp.c", 51
	movhi HIGHW1(#_f4_x_add1_1d), r0, r2
	st.w r6, LOWW(#_f4_x_add1_1d)[r2]
	.line "C:/Users/itami_NPC_02/Documents/AMDT-NPC/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/AMDT0530_E0_001_V3_000_20180806_norelease/PE2/src/mapdata_k_inv1_ldq_cmp.c", 52
	jarl _floorf, r31
	movhi HIGHW1(#_f4_x_add1_int_1d), r0, r22
	movhi 0x00004348, r0, r6
	.line "C:/Users/itami_NPC_02/Documents/AMDT-NPC/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/AMDT0530_E0_001_V3_000_20180806_norelease/PE2/src/mapdata_k_inv1_ldq_cmp.c", 53
	movhi HIGHW1(#_f4_x_add2_1d), r0, r2
	.line "C:/Users/itami_NPC_02/Documents/AMDT-NPC/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/AMDT0530_E0_001_V3_000_20180806_norelease/PE2/src/mapdata_k_inv1_ldq_cmp.c", 52
	st.w r10, LOWW(#_f4_x_add1_int_1d)[r22]
	.line "C:/Users/itami_NPC_02/Documents/AMDT-NPC/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/AMDT0530_E0_001_V3_000_20180806_norelease/PE2/src/mapdata_k_inv1_ldq_cmp.c", 53
	st.w r6, LOWW(#_f4_x_add2_1d)[r2]
	.line "C:/Users/itami_NPC_02/Documents/AMDT-NPC/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/AMDT0530_E0_001_V3_000_20180806_norelease/PE2/src/mapdata_k_inv1_ldq_cmp.c", 54
	jarl _floorf, r31
	.line "C:/Users/itami_NPC_02/Documents/AMDT-NPC/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/AMDT0530_E0_001_V3_000_20180806_norelease/PE2/src/mapdata_k_inv1_ldq_cmp.c", 56
	ld.w LOWW(#_f4_x_nom_temp_1d)[r21], r6
	.line "C:/Users/itami_NPC_02/Documents/AMDT-NPC/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/AMDT0530_E0_001_V3_000_20180806_norelease/PE2/src/mapdata_k_inv1_ldq_cmp.c", 54
	movhi HIGHW1(#_f4_x_add2_int_1d), r0, r5
	.line "C:/Users/itami_NPC_02/Documents/AMDT-NPC/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/AMDT0530_E0_001_V3_000_20180806_norelease/PE2/src/mapdata_k_inv1_ldq_cmp.c", 56
	ld.w LOWW(#_f4_x_add1_int_1d)[r22], r2
	.line "C:/Users/itami_NPC_02/Documents/AMDT-NPC/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/AMDT0530_E0_001_V3_000_20180806_norelease/PE2/src/mapdata_k_inv1_ldq_cmp.c", 54
	st.w r10, LOWW(#_f4_x_add2_int_1d)[r5]
	.line "C:/Users/itami_NPC_02/Documents/AMDT-NPC/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/AMDT0530_E0_001_V3_000_20180806_norelease/PE2/src/mapdata_k_inv1_ldq_cmp.c", 56
	cmpf.s 0x00000005, r2, r6
	trfsr 0
	bnz9 .BB.LABEL.1_3
.BB.LABEL.1_1:	; if_else_bb
	.line "C:/Users/itami_NPC_02/Documents/AMDT-NPC/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/AMDT0530_E0_001_V3_000_20180806_norelease/PE2/src/mapdata_k_inv1_ldq_cmp.c", 0
	movhi 0x00003F80, r0, r5
	.line "C:/Users/itami_NPC_02/Documents/AMDT-NPC/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/AMDT0530_E0_001_V3_000_20180806_norelease/PE2/src/mapdata_k_inv1_ldq_cmp.c", 62
	addf.s r5, r2, r2
	cmpf.s 0x00000005, r6, r2
	trfsr 0
	bz17 .BB.LABEL.1_10
.BB.LABEL.1_2:	; if_then_bb28
	.line "C:/Users/itami_NPC_02/Documents/AMDT-NPC/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/AMDT0530_E0_001_V3_000_20180806_norelease/PE2/src/mapdata_k_inv1_ldq_cmp.c", 0
	movhi 0x00003F80, r0, r2
	.line "C:/Users/itami_NPC_02/Documents/AMDT-NPC/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/AMDT0530_E0_001_V3_000_20180806_norelease/PE2/src/mapdata_k_inv1_ldq_cmp.c", 64
	addf.s r2, r6, r6
	movhi HIGHW1(#_f4_x_nom_temp_1d), r0, r2
	.line "C:/Users/itami_NPC_02/Documents/AMDT-NPC/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/AMDT0530_E0_001_V3_000_20180806_norelease/PE2/src/mapdata_k_inv1_ldq_cmp.c", 66
	cmpf.s 0x00000005, r10, r6
	.line "C:/Users/itami_NPC_02/Documents/AMDT-NPC/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/AMDT0530_E0_001_V3_000_20180806_norelease/PE2/src/mapdata_k_inv1_ldq_cmp.c", 64
	st.w r6, LOWW(#_f4_x_nom_temp_1d)[r2]
	.line "C:/Users/itami_NPC_02/Documents/AMDT-NPC/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/AMDT0530_E0_001_V3_000_20180806_norelease/PE2/src/mapdata_k_inv1_ldq_cmp.c", 66
	trfsr 0
	bz9 .BB.LABEL.1_4
.BB.LABEL.1_3:	; if_then_bb36
	.line "C:/Users/itami_NPC_02/Documents/AMDT-NPC/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/AMDT0530_E0_001_V3_000_20180806_norelease/PE2/src/mapdata_k_inv1_ldq_cmp.c", 0
	movhi HIGHW1(#_f4_x_nom_1d), r0, r2
	st.w r6, LOWW(#_f4_x_nom_1d)[r2]
	mov r3, r7
	jarl _modff, r31
	ld.w 0x00000000[r3], r2
	movhi HIGHW1(#_f4_kw_x_1d), r0, r5
	st.w r10, LOWW(#_f4_kw_x_1d)[r5]
	movhi HIGHW1(#_s4_x_id_1d), r0, r5
	trncf.sw r2, r2
	st.w r2, LOWW(#_s4_x_id_1d)[r5]
	jr .BB.LABEL.1_14
.BB.LABEL.1_4:	; if_else_bb42
	movhi 0x00003F80, r0, r2
	.line "C:/Users/itami_NPC_02/Documents/AMDT-NPC/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/AMDT0530_E0_001_V3_000_20180806_norelease/PE2/src/mapdata_k_inv1_ldq_cmp.c", 72
	addf.s r2, r10, r2
	cmpf.s 0x00000005, r6, r2
	trfsr 0
	bz9 .BB.LABEL.1_6
.BB.LABEL.1_5:	; if_then_bb49
	.line "C:/Users/itami_NPC_02/Documents/AMDT-NPC/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/AMDT0530_E0_001_V3_000_20180806_norelease/PE2/src/mapdata_k_inv1_ldq_cmp.c", 0
	movhi 0x00003F80, r0, r2
	.line "C:/Users/itami_NPC_02/Documents/AMDT-NPC/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/AMDT0530_E0_001_V3_000_20180806_norelease/PE2/src/mapdata_k_inv1_ldq_cmp.c", 74
	addf.s r2, r6, r6
	br9 .BB.LABEL.1_3
.BB.LABEL.1_6:	; if_else_bb56
	.line "C:/Users/itami_NPC_02/Documents/AMDT-NPC/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/AMDT0530_E0_001_V3_000_20180806_norelease/PE2/src/mapdata_k_inv1_ldq_cmp.c", 80
	movhi HIGHW1(#_f4_x_add2_1d), r0, r2
	ld.w LOWW(#_f4_x_add2_1d)[r2], r2
	cmpf.s 0x00000007, r6, r2
	trfsr 0
	bz9 .BB.LABEL.1_9
.BB.LABEL.1_7:	; if_then_bb62
	.line "C:/Users/itami_NPC_02/Documents/AMDT-NPC/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/AMDT0530_E0_001_V3_000_20180806_norelease/PE2/src/mapdata_k_inv1_ldq_cmp.c", 0
	movhi 0x00003F80, r0, r21
	.line "C:/Users/itami_NPC_02/Documents/AMDT-NPC/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/AMDT0530_E0_001_V3_000_20180806_norelease/PE2/src/mapdata_k_inv1_ldq_cmp.c", 82
	addf.s r21, r6, r6
	movhi HIGHW1(#_f4_x_nom_1d), r0, r2
	mov r3, r22
	.line "C:/Users/itami_NPC_02/Documents/AMDT-NPC/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/AMDT0530_E0_001_V3_000_20180806_norelease/PE2/src/mapdata_k_inv1_ldq_cmp.c", 83
	mov r22, r7
	.line "C:/Users/itami_NPC_02/Documents/AMDT-NPC/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/AMDT0530_E0_001_V3_000_20180806_norelease/PE2/src/mapdata_k_inv1_ldq_cmp.c", 82
	st.w r6, LOWW(#_f4_x_nom_1d)[r2]
	.line "C:/Users/itami_NPC_02/Documents/AMDT-NPC/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/AMDT0530_E0_001_V3_000_20180806_norelease/PE2/src/mapdata_k_inv1_ldq_cmp.c", 83
	jarl _modff, r31
	.line "C:/Users/itami_NPC_02/Documents/AMDT-NPC/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/AMDT0530_E0_001_V3_000_20180806_norelease/PE2/src/mapdata_k_inv1_ldq_cmp.c", 85
	movhi HIGHW1(#_f4_x_add2_1d), r0, r6
	.line "C:/Users/itami_NPC_02/Documents/AMDT-NPC/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/AMDT0530_E0_001_V3_000_20180806_norelease/PE2/src/mapdata_k_inv1_ldq_cmp.c", 84
	ld.w 0x00000000[r3], r2
	.line "C:/Users/itami_NPC_02/Documents/AMDT-NPC/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/AMDT0530_E0_001_V3_000_20180806_norelease/PE2/src/mapdata_k_inv1_ldq_cmp.c", 85
	ld.w LOWW(#_f4_x_add2_1d)[r6], r6
	.line "C:/Users/itami_NPC_02/Documents/AMDT-NPC/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/AMDT0530_E0_001_V3_000_20180806_norelease/PE2/src/mapdata_k_inv1_ldq_cmp.c", 83
	movhi HIGHW1(#_f4_kw_x_temp_1d), r0, r23
	st.w r10, LOWW(#_f4_kw_x_temp_1d)[r23]
	.line "C:/Users/itami_NPC_02/Documents/AMDT-NPC/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/AMDT0530_E0_001_V3_000_20180806_norelease/PE2/src/mapdata_k_inv1_ldq_cmp.c", 84
	movhi HIGHW1(#_s4_x_id_1d), r0, r5
.BB.LABEL.1_8:	; if_then_bb62
	.line "C:/Users/itami_NPC_02/Documents/AMDT-NPC/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/AMDT0530_E0_001_V3_000_20180806_norelease/PE2/src/mapdata_k_inv1_ldq_cmp.c", 0
	trncf.sw r2, r2
	mov r22, r7
	st.w r2, LOWW(#_s4_x_id_1d)[r5]
	jarl _modff, r31
	ld.w LOWW(#_f4_kw_x_temp_1d)[r23], r2
	movhi HIGHW1(#_f4_kw_x_add_1d), r0, r5
	st.w r10, LOWW(#_f4_kw_x_add_1d)[r5]
	subf.s r10, r21, r5
	movhi HIGHW1(#_f4_kw_x_1d), r0, r6
	subf.s r10, r2, r2
	divf.s r5, r2, r10
	st.w r10, LOWW(#_f4_kw_x_1d)[r6]
	br9 .BB.LABEL.1_14
.BB.LABEL.1_9:	; if_else_bb77
	.line "C:/Users/itami_NPC_02/Documents/AMDT-NPC/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/AMDT0530_E0_001_V3_000_20180806_norelease/PE2/src/mapdata_k_inv1_ldq_cmp.c", 91
	movhi HIGHW1(#_f4_x_nom_1d), r0, r2
	mov r3, r21
	st.w r6, LOWW(#_f4_x_nom_1d)[r2]
	.line "C:/Users/itami_NPC_02/Documents/AMDT-NPC/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/AMDT0530_E0_001_V3_000_20180806_norelease/PE2/src/mapdata_k_inv1_ldq_cmp.c", 92
	mov r21, r7
	jarl _modff, r31
	.line "C:/Users/itami_NPC_02/Documents/AMDT-NPC/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/AMDT0530_E0_001_V3_000_20180806_norelease/PE2/src/mapdata_k_inv1_ldq_cmp.c", 94
	movhi HIGHW1(#_f4_x_add2_1d), r0, r6
	.line "C:/Users/itami_NPC_02/Documents/AMDT-NPC/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/AMDT0530_E0_001_V3_000_20180806_norelease/PE2/src/mapdata_k_inv1_ldq_cmp.c", 93
	ld.w 0x00000000[r3], r2
	.line "C:/Users/itami_NPC_02/Documents/AMDT-NPC/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/AMDT0530_E0_001_V3_000_20180806_norelease/PE2/src/mapdata_k_inv1_ldq_cmp.c", 94
	ld.w LOWW(#_f4_x_add2_1d)[r6], r6
	.line "C:/Users/itami_NPC_02/Documents/AMDT-NPC/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/AMDT0530_E0_001_V3_000_20180806_norelease/PE2/src/mapdata_k_inv1_ldq_cmp.c", 92
	movhi HIGHW1(#_f4_kw_x_temp_1d), r0, r22
	st.w r10, LOWW(#_f4_kw_x_temp_1d)[r22]
	.line "C:/Users/itami_NPC_02/Documents/AMDT-NPC/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/AMDT0530_E0_001_V3_000_20180806_norelease/PE2/src/mapdata_k_inv1_ldq_cmp.c", 93
	movhi HIGHW1(#_s4_x_id_1d), r0, r5
	br9 .BB.LABEL.1_13
.BB.LABEL.1_10:	; if_else_bb90
	.line "C:/Users/itami_NPC_02/Documents/AMDT-NPC/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/AMDT0530_E0_001_V3_000_20180806_norelease/PE2/src/mapdata_k_inv1_ldq_cmp.c", 102
	movhi HIGHW1(#_f4_x_add1_1d), r0, r2
	ld.w LOWW(#_f4_x_add1_1d)[r2], r2
	cmpf.s 0x00000007, r6, r2
	trfsr 0
	bz9 .BB.LABEL.1_12
.BB.LABEL.1_11:	; if_then_bb96
	.line "C:/Users/itami_NPC_02/Documents/AMDT-NPC/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/AMDT0530_E0_001_V3_000_20180806_norelease/PE2/src/mapdata_k_inv1_ldq_cmp.c", 0
	movhi 0x00003F80, r0, r21
	.line "C:/Users/itami_NPC_02/Documents/AMDT-NPC/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/AMDT0530_E0_001_V3_000_20180806_norelease/PE2/src/mapdata_k_inv1_ldq_cmp.c", 104
	addf.s r21, r6, r6
	movhi HIGHW1(#_f4_x_nom_1d), r0, r2
	mov r3, r22
	.line "C:/Users/itami_NPC_02/Documents/AMDT-NPC/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/AMDT0530_E0_001_V3_000_20180806_norelease/PE2/src/mapdata_k_inv1_ldq_cmp.c", 105
	mov r22, r7
	.line "C:/Users/itami_NPC_02/Documents/AMDT-NPC/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/AMDT0530_E0_001_V3_000_20180806_norelease/PE2/src/mapdata_k_inv1_ldq_cmp.c", 104
	st.w r6, LOWW(#_f4_x_nom_1d)[r2]
	.line "C:/Users/itami_NPC_02/Documents/AMDT-NPC/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/AMDT0530_E0_001_V3_000_20180806_norelease/PE2/src/mapdata_k_inv1_ldq_cmp.c", 105
	jarl _modff, r31
	.line "C:/Users/itami_NPC_02/Documents/AMDT-NPC/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/AMDT0530_E0_001_V3_000_20180806_norelease/PE2/src/mapdata_k_inv1_ldq_cmp.c", 107
	movhi HIGHW1(#_f4_x_add1_1d), r0, r6
	.line "C:/Users/itami_NPC_02/Documents/AMDT-NPC/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/AMDT0530_E0_001_V3_000_20180806_norelease/PE2/src/mapdata_k_inv1_ldq_cmp.c", 106
	ld.w 0x00000000[r3], r2
	.line "C:/Users/itami_NPC_02/Documents/AMDT-NPC/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/AMDT0530_E0_001_V3_000_20180806_norelease/PE2/src/mapdata_k_inv1_ldq_cmp.c", 107
	ld.w LOWW(#_f4_x_add1_1d)[r6], r6
	.line "C:/Users/itami_NPC_02/Documents/AMDT-NPC/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/AMDT0530_E0_001_V3_000_20180806_norelease/PE2/src/mapdata_k_inv1_ldq_cmp.c", 105
	movhi HIGHW1(#_f4_kw_x_temp_1d), r0, r23
	st.w r10, LOWW(#_f4_kw_x_temp_1d)[r23]
	.line "C:/Users/itami_NPC_02/Documents/AMDT-NPC/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/AMDT0530_E0_001_V3_000_20180806_norelease/PE2/src/mapdata_k_inv1_ldq_cmp.c", 106
	movhi HIGHW1(#_s4_x_id_1d), r0, r5
	br9 .BB.LABEL.1_8
.BB.LABEL.1_12:	; if_else_bb111
	.line "C:/Users/itami_NPC_02/Documents/AMDT-NPC/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/AMDT0530_E0_001_V3_000_20180806_norelease/PE2/src/mapdata_k_inv1_ldq_cmp.c", 113
	movhi HIGHW1(#_f4_x_nom_1d), r0, r2
	mov r3, r21
	st.w r6, LOWW(#_f4_x_nom_1d)[r2]
	.line "C:/Users/itami_NPC_02/Documents/AMDT-NPC/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/AMDT0530_E0_001_V3_000_20180806_norelease/PE2/src/mapdata_k_inv1_ldq_cmp.c", 114
	mov r21, r7
	jarl _modff, r31
	.line "C:/Users/itami_NPC_02/Documents/AMDT-NPC/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/AMDT0530_E0_001_V3_000_20180806_norelease/PE2/src/mapdata_k_inv1_ldq_cmp.c", 116
	movhi HIGHW1(#_f4_x_add1_1d), r0, r6
	.line "C:/Users/itami_NPC_02/Documents/AMDT-NPC/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/AMDT0530_E0_001_V3_000_20180806_norelease/PE2/src/mapdata_k_inv1_ldq_cmp.c", 115
	ld.w 0x00000000[r3], r2
	.line "C:/Users/itami_NPC_02/Documents/AMDT-NPC/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/AMDT0530_E0_001_V3_000_20180806_norelease/PE2/src/mapdata_k_inv1_ldq_cmp.c", 116
	ld.w LOWW(#_f4_x_add1_1d)[r6], r6
	.line "C:/Users/itami_NPC_02/Documents/AMDT-NPC/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/AMDT0530_E0_001_V3_000_20180806_norelease/PE2/src/mapdata_k_inv1_ldq_cmp.c", 114
	movhi HIGHW1(#_f4_kw_x_temp_1d), r0, r22
	st.w r10, LOWW(#_f4_kw_x_temp_1d)[r22]
	.line "C:/Users/itami_NPC_02/Documents/AMDT-NPC/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/AMDT0530_E0_001_V3_000_20180806_norelease/PE2/src/mapdata_k_inv1_ldq_cmp.c", 115
	movhi HIGHW1(#_s4_x_id_1d), r0, r5
.BB.LABEL.1_13:	; if_else_bb111
	.line "C:/Users/itami_NPC_02/Documents/AMDT-NPC/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/AMDT0530_E0_001_V3_000_20180806_norelease/PE2/src/mapdata_k_inv1_ldq_cmp.c", 0
	trncf.sw r2, r2
	mov r21, r7
	st.w r2, LOWW(#_s4_x_id_1d)[r5]
	jarl _modff, r31
	ld.w LOWW(#_f4_kw_x_temp_1d)[r22], r2
	movhi HIGHW1(#_f4_kw_x_add_1d), r0, r5
	st.w r10, LOWW(#_f4_kw_x_add_1d)[r5]
	movhi HIGHW1(#_f4_kw_x_1d), r0, r5
	divf.s r10, r2, r10
	st.w r10, LOWW(#_f4_kw_x_1d)[r5]
.BB.LABEL.1_14:	; if_break_bb124
	.line "C:/Users/itami_NPC_02/Documents/AMDT-NPC/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/AMDT0530_E0_001_V3_000_20180806_norelease/PE2/src/mapdata_k_inv1_ldq_cmp.c", 124
	movhi HIGHW1(#_s4_x_id_1d), r0, r2
	ld.w LOWW(#_s4_x_id_1d)[r2], r2
	mov 0x00000001, r5
	cmp 0x00000000, r2
	bn9 .BB.LABEL.1_16
.BB.LABEL.1_15:	; bb128
	.line "C:/Users/itami_NPC_02/Documents/AMDT-NPC/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/AMDT0530_E0_001_V3_000_20180806_norelease/PE2/src/mapdata_k_inv1_ldq_cmp.c", 0
	cmp 0x0000000C, r2
	setf 0x0000000F, r5
.BB.LABEL.1_16:	; bb138
	.line "C:/Users/itami_NPC_02/Documents/AMDT-NPC/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/AMDT0530_E0_001_V3_000_20180806_norelease/PE2/src/mapdata_k_inv1_ldq_cmp.c", 125
	cmp 0x00000000, r2
	cmov 0x00000004, 0x00000000, r2, r2
	cmov 0x00000004, r2, r10, r10
	bn9 .BB.LABEL.1_19
.BB.LABEL.1_17:	; if_else_bb154
	.line "C:/Users/itami_NPC_02/Documents/AMDT-NPC/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/AMDT0530_E0_001_V3_000_20180806_norelease/PE2/src/mapdata_k_inv1_ldq_cmp.c", 131
	cmp 0x0000000B, r2
	ble9 .BB.LABEL.1_20
.BB.LABEL.1_18:	; if_else_bb154.if_break_bb166.PartialDrain_crit_edge
	.line "C:/Users/itami_NPC_02/Documents/AMDT-NPC/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/AMDT0530_E0_001_V3_000_20180806_norelease/PE2/src/mapdata_k_inv1_ldq_cmp.c", 0
	movhi 0x00003F80, r0, r10
	mov 0x0000000C, r2
.BB.LABEL.1_19:	; if_break_bb166.PartialDrain
	movhi HIGHW1(#_s4_x_id_1d), r0, r5
	st.w r2, LOWW(#_s4_x_id_1d)[r5]
	movhi HIGHW1(#_f4_kw_x_1d), r0, r5
	st.w r10, LOWW(#_f4_kw_x_1d)[r5]
	mov 0x00000001, r5
.BB.LABEL.1_20:	; if_break_bb166
	mov 0x00000000, r6
	.line "C:/Users/itami_NPC_02/Documents/AMDT-NPC/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/AMDT0530_E0_001_V3_000_20180806_norelease/PE2/src/mapdata_k_inv1_ldq_cmp.c", 141
	cmpf.s 0x00000004, r10, r6
	trfsr 0
	bnz9 .BB.LABEL.1_22
.BB.LABEL.1_21:	; if_then_bb171
	.line "C:/Users/itami_NPC_02/Documents/AMDT-NPC/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/AMDT0530_E0_001_V3_000_20180806_norelease/PE2/src/mapdata_k_inv1_ldq_cmp.c", 143
	movhi HIGHW1(#_f4_kw_x_1d), r0, r7
	st.w r0, LOWW(#_f4_kw_x_1d)[r7]
	mov r6, r10
.BB.LABEL.1_22:	; if_break_bb173
	.line "C:/Users/itami_NPC_02/Documents/AMDT-NPC/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/AMDT0530_E0_001_V3_000_20180806_norelease/PE2/src/mapdata_k_inv1_ldq_cmp.c", 152
	addi 0x00000001, r2, r6
	.line "C:/Users/itami_NPC_02/Documents/AMDT-NPC/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/AMDT0530_E0_001_V3_000_20180806_norelease/PE2/src/mapdata_k_inv1_ldq_cmp.c", 153
	movhi HIGHW1(#_s4_x_id_p1_1d), r0, r7
	cmp 0x0000000D, r6
	.line "C:/Users/itami_NPC_02/Documents/AMDT-NPC/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/AMDT0530_E0_001_V3_000_20180806_norelease/PE2/src/mapdata_k_inv1_ldq_cmp.c", 163
	cvtf.sd r10, r8
	.line "C:/Users/itami_NPC_02/Documents/AMDT-NPC/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/AMDT0530_E0_001_V3_000_20180806_norelease/PE2/src/mapdata_k_inv1_ldq_cmp.c", 153
	cmov 0x0000000E, 0x0000000C, r6, r6
	.line "C:/Users/itami_NPC_02/Documents/AMDT-NPC/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/AMDT0530_E0_001_V3_000_20180806_norelease/PE2/src/mapdata_k_inv1_ldq_cmp.c", 161
	add r2, r2
	mov #_map_k_inv1_ldq_cmp, r11
	add r11, r2
	.line "C:/Users/itami_NPC_02/Documents/AMDT-NPC/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/AMDT0530_E0_001_V3_000_20180806_norelease/PE2/src/mapdata_k_inv1_ldq_cmp.c", 153
	st.w r6, LOWW(#_s4_x_id_p1_1d)[r7]
	.line "C:/Users/itami_NPC_02/Documents/AMDT-NPC/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/AMDT0530_E0_001_V3_000_20180806_norelease/PE2/src/mapdata_k_inv1_ldq_cmp.c", 161
	ld.h 0x00000000[r2], r2
	mov 0xD2F1A9FC, r14
	mov 0x3F50624D, r15
	cvtf.ws r2, r2
	.line "C:/Users/itami_NPC_02/Documents/AMDT-NPC/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/AMDT0530_E0_001_V3_000_20180806_norelease/PE2/src/mapdata_k_inv1_ldq_cmp.c", 162
	add r6, r6
	add r11, r6
	mov 0x00000000, r12
	ld.h 0x00000000[r6], r6
	movhi 0x00003FF0, r0, r13
	.line "C:/Users/itami_NPC_02/Documents/AMDT-NPC/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/AMDT0530_E0_001_V3_000_20180806_norelease/PE2/src/mapdata_k_inv1_ldq_cmp.c", 163
	subf.d r8, r12, r8
	.line "C:/Users/itami_NPC_02/Documents/AMDT-NPC/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/AMDT0530_E0_001_V3_000_20180806_norelease/PE2/src/mapdata_k_inv1_ldq_cmp.c", 161
	cvtf.sd r2, r16
	.line "C:/Users/itami_NPC_02/Documents/AMDT-NPC/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/AMDT0530_E0_001_V3_000_20180806_norelease/PE2/src/mapdata_k_inv1_ldq_cmp.c", 167
	movea 0x0000001A, r11, r11
	.line "C:/Users/itami_NPC_02/Documents/AMDT-NPC/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/AMDT0530_E0_001_V3_000_20180806_norelease/PE2/src/mapdata_k_inv1_ldq_cmp.c", 161
	mulf.d r14, r16, r16
	cvtf.ds r16, r2
	.line "C:/Users/itami_NPC_02/Documents/AMDT-NPC/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/AMDT0530_E0_001_V3_000_20180806_norelease/PE2/src/mapdata_k_inv1_ldq_cmp.c", 163
	cvtf.sd r2, r16
	.line "C:/Users/itami_NPC_02/Documents/AMDT-NPC/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/AMDT0530_E0_001_V3_000_20180806_norelease/PE2/src/mapdata_k_inv1_ldq_cmp.c", 162
	cvtf.ws r6, r2
	.line "C:/Users/itami_NPC_02/Documents/AMDT-NPC/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/AMDT0530_E0_001_V3_000_20180806_norelease/PE2/src/mapdata_k_inv1_ldq_cmp.c", 167
	movhi HIGHW1(#_s4_x_id_1d), r0, r6
	.line "C:/Users/itami_NPC_02/Documents/AMDT-NPC/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/AMDT0530_E0_001_V3_000_20180806_norelease/PE2/src/mapdata_k_inv1_ldq_cmp.c", 163
	mulf.d r16, r8, r8
	.line "C:/Users/itami_NPC_02/Documents/AMDT-NPC/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/AMDT0530_E0_001_V3_000_20180806_norelease/PE2/src/mapdata_k_inv1_ldq_cmp.c", 162
	cvtf.sd r2, r16
	mulf.d r14, r16, r16
	cvtf.ds r16, r2
	.line "C:/Users/itami_NPC_02/Documents/AMDT-NPC/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/AMDT0530_E0_001_V3_000_20180806_norelease/PE2/src/mapdata_k_inv1_ldq_cmp.c", 163
	mulf.s r2, r10, r2
	cvtf.sd r2, r16
	addf.d r16, r8, r8
	cvtf.ds r8, r2
	.line "C:/Users/itami_NPC_02/Documents/AMDT-NPC/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/AMDT0530_E0_001_V3_000_20180806_norelease/PE2/src/mapdata_k_inv1_ldq_cmp.c", 169
	movhi HIGHW1(#_f4_kw_x_1d), r0, r9
	.line "C:/Users/itami_NPC_02/Documents/AMDT-NPC/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/AMDT0530_E0_001_V3_000_20180806_norelease/PE2/src/mapdata_k_inv1_ldq_cmp.c", 168
	movhi HIGHW1(#_C1_1d), r0, r8
	.line "C:/Users/itami_NPC_02/Documents/AMDT-NPC/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/AMDT0530_E0_001_V3_000_20180806_norelease/PE2/src/mapdata_k_inv1_ldq_cmp.c", 163
	st.w r2, 0x00000000[r20]
	.line "C:/Users/itami_NPC_02/Documents/AMDT-NPC/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/AMDT0530_E0_001_V3_000_20180806_norelease/PE2/src/mapdata_k_inv1_ldq_cmp.c", 168
	ld.w LOWW(#_s4_x_id_p1_1d)[r7], r2
	.line "C:/Users/itami_NPC_02/Documents/AMDT-NPC/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/AMDT0530_E0_001_V3_000_20180806_norelease/PE2/src/mapdata_k_inv1_ldq_cmp.c", 167
	movhi HIGHW1(#_C0_1d), r0, r7
	ld.w LOWW(#_s4_x_id_1d)[r6], r6
	.line "C:/Users/itami_NPC_02/Documents/AMDT-NPC/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/AMDT0530_E0_001_V3_000_20180806_norelease/PE2/src/mapdata_k_inv1_ldq_cmp.c", 169
	ld.w LOWW(#_f4_kw_x_1d)[r9], r9
	.line "C:/Users/itami_NPC_02/Documents/AMDT-NPC/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/AMDT0530_E0_001_V3_000_20180806_norelease/PE2/src/mapdata_k_inv1_ldq_cmp.c", 168
	add r2, r2
	add r11, r2
	.line "C:/Users/itami_NPC_02/Documents/AMDT-NPC/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/AMDT0530_E0_001_V3_000_20180806_norelease/PE2/src/mapdata_k_inv1_ldq_cmp.c", 167
	add r6, r6
	.line "C:/Users/itami_NPC_02/Documents/AMDT-NPC/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/AMDT0530_E0_001_V3_000_20180806_norelease/PE2/src/mapdata_k_inv1_ldq_cmp.c", 168
	ld.h 0x00000000[r2], r2
	.line "C:/Users/itami_NPC_02/Documents/AMDT-NPC/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/AMDT0530_E0_001_V3_000_20180806_norelease/PE2/src/mapdata_k_inv1_ldq_cmp.c", 167
	add r11, r6
	ld.h 0x00000000[r6], r6
	.line "C:/Users/itami_NPC_02/Documents/AMDT-NPC/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/AMDT0530_E0_001_V3_000_20180806_norelease/PE2/src/mapdata_k_inv1_ldq_cmp.c", 168
	cvtf.ws r2, r2
	cvtf.sd r2, r10
	.line "C:/Users/itami_NPC_02/Documents/AMDT-NPC/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/AMDT0530_E0_001_V3_000_20180806_norelease/PE2/src/mapdata_k_inv1_ldq_cmp.c", 167
	cvtf.ws r6, r2
	.line "C:/Users/itami_NPC_02/Documents/AMDT-NPC/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/AMDT0530_E0_001_V3_000_20180806_norelease/PE2/src/mapdata_k_inv1_ldq_cmp.c", 168
	mulf.d r14, r10, r10
	.line "C:/Users/itami_NPC_02/Documents/AMDT-NPC/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/AMDT0530_E0_001_V3_000_20180806_norelease/PE2/src/mapdata_k_inv1_ldq_cmp.c", 167
	cvtf.sd r2, r16
	.line "C:/Users/itami_NPC_02/Documents/AMDT-NPC/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/AMDT0530_E0_001_V3_000_20180806_norelease/PE2/src/mapdata_k_inv1_ldq_cmp.c", 168
	cvtf.ds r10, r6
	.line "C:/Users/itami_NPC_02/Documents/AMDT-NPC/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/AMDT0530_E0_001_V3_000_20180806_norelease/PE2/src/mapdata_k_inv1_ldq_cmp.c", 167
	mulf.d r14, r16, r14
	.line "C:/Users/itami_NPC_02/Documents/AMDT-NPC/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/AMDT0530_E0_001_V3_000_20180806_norelease/PE2/src/mapdata_k_inv1_ldq_cmp.c", 169
	cvtf.sd r9, r10
	.line "C:/Users/itami_NPC_02/Documents/AMDT-NPC/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/AMDT0530_E0_001_V3_000_20180806_norelease/PE2/src/mapdata_k_inv1_ldq_cmp.c", 168
	st.w r6, LOWW(#_C1_1d)[r8]
	.line "C:/Users/itami_NPC_02/Documents/AMDT-NPC/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/AMDT0530_E0_001_V3_000_20180806_norelease/PE2/src/mapdata_k_inv1_ldq_cmp.c", 167
	cvtf.ds r14, r2
	.line "C:/Users/itami_NPC_02/Documents/AMDT-NPC/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/AMDT0530_E0_001_V3_000_20180806_norelease/PE2/src/mapdata_k_inv1_ldq_cmp.c", 169
	subf.d r10, r12, r10
	cvtf.sd r2, r12
	.line "C:/Users/itami_NPC_02/Documents/AMDT-NPC/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/AMDT0530_E0_001_V3_000_20180806_norelease/PE2/src/mapdata_k_inv1_ldq_cmp.c", 167
	st.w r2, LOWW(#_C0_1d)[r7]
	.line "C:/Users/itami_NPC_02/Documents/AMDT-NPC/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/AMDT0530_E0_001_V3_000_20180806_norelease/PE2/src/mapdata_k_inv1_ldq_cmp.c", 169
	mulf.s r6, r9, r2
	mulf.d r12, r10, r10
	cvtf.sd r2, r6
	addf.d r6, r10, r6
	.line "C:/Users/itami_NPC_02/Documents/AMDT-NPC/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/AMDT0530_E0_001_V3_000_20180806_norelease/PE2/src/mapdata_k_inv1_ldq_cmp.c", 181
	mov r5, r10
	.line "C:/Users/itami_NPC_02/Documents/AMDT-NPC/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/AMDT0530_E0_001_V3_000_20180806_norelease/PE2/src/mapdata_k_inv1_ldq_cmp.c", 169
	cvtf.ds r6, r2
	st.w r2, 0x00000000[r20]
	.line "C:/Users/itami_NPC_02/Documents/AMDT-NPC/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/AMDT0530_E0_001_V3_000_20180806_norelease/PE2/src/mapdata_k_inv1_ldq_cmp.c", 181
	dispose 0x00000004, 0x00000079, [r31]
	.section .bss, bss
	.align 4
_f4_x_nom_1d:
	.ds (4)
	.align 4
_s4_x_id_1d:
	.ds (4)
	.align 4
_s4_x_id_p1_1d:
	.ds (4)
	.align 4
_f4_kw_x_1d:
	.ds (4)
	.align 4
_f4_x_add1_1d:
	.ds (4)
	.align 4
_f4_x_add1_int_1d:
	.ds (4)
	.align 4
_f4_x_add2_1d:
	.ds (4)
	.align 4
_f4_x_add2_int_1d:
	.ds (4)
	.align 4
_f4_x_nom_temp_1d:
	.ds (4)
	.align 4
_f4_kw_x_temp_1d:
	.ds (4)
	.align 4
_f4_kw_x_add_1d:
	.ds (4)
	.align 4
_C0_1d:
	.ds (4)
	.align 4
_C1_1d:
	.ds (4)
	.align 2
_c0_1d:
	.ds (2)
	.align 2
_c1_1d:
	.ds (2)
