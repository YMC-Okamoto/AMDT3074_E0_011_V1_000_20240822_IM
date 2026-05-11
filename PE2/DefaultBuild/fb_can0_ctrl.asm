#CC-RH Compiler RH850 Assembler Source
#@	CC-RH Version : V1.05.00 [07 Dec 2016]
#@	Command : Common\fi_pe2_error.c ..\Common\commonPE2toPE1.c ..\Common\iolib\io_CPU.c ..\Common\iolib\io_ADC.c ..\Common\iolib\io_CSIH0.c ..\Common\iolib\io_CSIH1.c ..\Common\iolib\io_ENCA0.c ..\Common\iolib\io_ENCA1.c ..\Common\iolib\io_FCAN.c ..\Common\iolib\io_PIO_amdt0530.c ..\Common\iolib\io_RDC20.c ..\Common\iolib\io_RDC21.c ..\Common\iolib\io_SCI0_40MHz.c ..\Common\iolib\io_SCI1_40MHz.c ..\Common\iolib\io_SCI2_40MHz.c ..\Common\iolib\io_TAUD0.c ..\Common\iolib\io_TAUD1.c ..\Common\iolib\io_TAUJ0.c ..\Common\iolib\io_TSG30.c ..\Common\iolib\io_TSG31.c src\fb_can0_ctrl.c src\fb_can1_ctrl.c src\fb_kpwm_tbl.c src\fb_ldisat_inv1_tbl.c src\fb_lqisat_inv1_tbl.c src\fb_therm_calc.c src\fb_vctrlerr_tbl.c src\fi_1ms_int.c src\fi_1ms_inv1_adctrl.c src\fi_1ms_inv1_errctrl.c src\fi_1ms_inv1_idqcom.c src\fi_1ms_inv1_seqctrl.c src\fi_1ms_inv1_wrctrl.c src\fi_20us_int.c src\fi_20us_inv1_1pulse.c src\fi_enc1_int.c src\fi_enc1_inv1_1pulse.c src\fi_pwm_int.c src\fi_pwm_inv1_1pulse.c src\fi_pwm_inv1_adctrl.c src\fi_pwm_inv1_encctrl.c src\fi_pwm_inv1_errctrl.c src\fi_pwm_inv1_idqctrl.c src\fi_pwm_inv1_invadj.c src\fi_pwm_inv1_svctrl.c src\fi_pwm_inv1_vctrlerr.c src\fi_pwm_vctrlerrtbl.c src\mapdata_k_inv1_ldq_cmp.c src\mapdata_k_inv1_ldq_cmp_map.c src\mapdata_trq.c src\mapdata_trq_limit.c src\mapdata_trq_map.c src\mapdata_trq_map_limit.c ..\PE1\src\fi_AWatcher.c ..\PE1\AWatcher\VECLIB_CMDMONI.c src\fpmsm_main.c -Xobj_path=DefaultBuild -Xcommon=rh850 -Xcpu=g3m -c -g -g_line -Ospeed -Oinline_size -Isrc -I..\Common -D__CLK_HSB=80,__CLK_LSB=40,__CLKC_HSB=80,__CLK_CLSB=40 -Xasm_path=DefaultBuild
#@	compiled at Tue May 30 22:36:02 2017

	.file "src\fb_can0_ctrl.c"

	$reg_mode 32

	.public _u1_flag_rx0_flag, 1
	.public _RX_DATA_0x010, 8
	.public _RX_DATA_0x011, 8
	.public _TX_DATA_0x020, 8
	.public _CAN_MBOX_TX_ID0x020, 16
	.public _TX_DATA_0x021, 8
	.public _CAN_MBOX_TX_ID0x021, 16
	.public _TX_DATA_0x022, 8
	.public _CAN_MBOX_TX_ID0x022, 16
	.public _TX_DATA_0x023, 8
	.public _CAN_MBOX_TX_ID0x023, 16
	.public _TX_DATA_0x024, 8
	.public _CAN_MBOX_TX_ID0x024, 16
	.public _TX_DATA_0x025, 8
	.public _CAN_MBOX_TX_ID0x025, 16
	.public _TX_DATA_0x026, 8
	.public _CAN_MBOX_TX_ID0x026, 16
	.public _u1_flag_can0_initerr, 1
	.public _u1_com_flag_state_ctrl, 1
	.public _u1_com_flag_1pulse_mode, 1
	.public _s2_com_tq_ref, 2
	.public _s2_com_irms_ref, 2
	.public _s2_com_theta_ref, 2
	.public _s2_com_speed_ref, 2
	.public _u2_com_dtq_ref, 2
	.public _u2_com_dirms_ref, 2
	.public _u2_com_dspeed_ref, 2
	.public _f4_com_tq_ref, 4
	.public _f4_com_irms_ref, 4
	.public _f4_com_theta_ref, 4
	.public _f4_com_speed_ref, 4
	.public _f4_com_dtq_ref, 4
	.public _f4_com_dirms_ref, 4
	.public _f4_com_dspeed_ref, 4
	.public _u1_flag_state_start, 1
	.public _u1_com_flag_state_ctrl_tmp, 1
	.public _u1_com_flag_actual_state_ctrl, 1
	.public _u1_com_flag_drive_mode, 1
	.public _s2_com_tq_ref_tmp, 2
	.public _u2_com_irms_ad, 2
	.public _s2_com_speed_ad, 2
	.public _s2_com_id_ref, 2
	.public _s2_com_iq_ref, 2
	.public _u2_com_irms_ref, 2
	.public _s2_com_id_ad, 2
	.public _s2_com_iq_ad, 2
	.public _s2_com_idc_ad, 2
	.public _s2_com_theta_ad, 2
	.public _s2_com_vd_ref, 2
	.public _s2_com_vq_ref, 2
	.public _u2_com_vdc_ad, 2
	.public _u2_com_vrms_ref, 2
	.public _s2_com_tq_limit_p, 2
	.public _s2_com_tq_limit_n, 2
	.public _u1_com_tmp_mot1, 1
	.public _u1_com_tmp_mot2, 1
	.public _u1_com_tmp_int, 1
	.public _u1_com_tmp_igbt1, 1
	.public _u1_com_tmp_igbt2, 1
	.public _u1_com_tmp_igbt3, 1
	.public _u1_com_tmp_igbt4, 1
	.public _u1_com_tmp_igbt5, 1
	.public _u1_com_tmp_igbt6, 1
	.public _u4_com_flag_error, 4
	.public _f4_com_tq_ref_tmp, 4
	.public _f4_com_irms_ad, 4
	.public _f4_com_speed_ad, 4
	.public _f4_com_id_ref, 4
	.public _f4_com_iq_ref, 4
	.public _f4_com_id_ad, 4
	.public _f4_com_iq_ad, 4
	.public _f4_com_idc_ad, 4
	.public _f4_com_theta_ad, 4
	.public _f4_com_vd_ref, 4
	.public _f4_com_vq_ref, 4
	.public _f4_com_vdc_ad, 4
	.public _f4_com_vrms_ref, 4
	.public _f4_com_tq_limit_p, 4
	.public _f4_com_tq_limit_n, 4
	.public _f4_com_tmp_mot1, 4
	.public _f4_com_tmp_mot2, 4
	.public _f4_com_tmp_int, 4
	.public _f4_com_tmp_igbt1, 4
	.public _f4_com_tmp_igbt2, 4
	.public _f4_com_tmp_igbt3, 4
	.public _f4_com_tmp_igbt4, 4
	.public _f4_com_tmp_igbt5, 4
	.public _f4_com_tmp_igbt6, 4
	.public _u2_cnt_10ms_tx0, 2
	.public _u2_cnt_100ms_tx0, 2
	.public _u4_status_can0_tmp, 4
	.public _u4_status_can0, 4
	.public _u1_flag_com_startchk, 1
	.public _u2_cnt_1ms_comchk, 2
	.public _u2_cnt_can0_norx_max, 2
	.public _u4_chk, 4
	.public _u4_chk_id, 4
	.public _fb_can0_ctrl
	.public _fb_can0_rx_data
	.extern _can_tx_data
	.extern _can_rx_data
	.extern _u4_rx_fifo_chk
	.public _fb_can0_ctrl_init
	.public _fb_can0_driver_init
	.extern _can_setup_rx_mbox
	.extern _can_setup_tx_mbox
	.extern _can0_init

	.section .text, text
_fb_can0_ctrl:
	.stack _fb_can0_ctrl = 60
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 210
	prepare 0x000007FF, 0x00000010
	mov 0x00000000, r20
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 731
	mov r20, r6
	jarl _u4_rx_fifo_chk, r31
	cmp 0x00000001, r10
	bnz9 .BB.LABEL.1_10
.BB.LABEL.1_1:	; bb.nph18
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 0
	mov 0x00000000, r20
	movea 0x00000008, r3, r21
	mov 0x00000000, r22
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 735
	movhi HIGHW1(#_u4_chk), r0, r23
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 738
	movhi HIGHW1(#_u4_chk_id), r0, r24
.BB.LABEL.1_2:	; bb.i
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 0
	mov r3, r7
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 733
	mov r22, r6
	jarl _can_rx_data, r31
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 735
	ld.w LOWW(#_u4_chk)[r23], r2
	add 0x00000001, r2
	st.w r2, LOWW(#_u4_chk)[r23]
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 737
	ld.w 0x00000004[r3], r2
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 738
	st.w r2, LOWW(#_u4_chk_id)[r24]
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 739
	addi 0xFFFFFFF0, r2, r0
	bz9 .BB.LABEL.1_6
.BB.LABEL.1_3:	; bb.i
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 0
	addi 0xFFFFFFEF, r2, r0
	mov 0x00000002, r5
	mov #_RX_DATA_0x011, r2
	mov r21, r6
	bnz9 .BB.LABEL.1_9
.BB.LABEL.1_4:	; bb32.i.split.clone
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 752
	ld.b 0x00000000[r6], r7
	st.b r7, 0x00000000[r2]
	ld.b 0x00000001[r6], r7
	st.b r7, 0x00000001[r2]
	ld.b 0x00000002[r6], r7
	st.b r7, 0x00000002[r2]
	ld.b 0x00000003[r6], r7
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 750
	add 0x00000004, r6
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 752
	st.b r7, 0x00000003[r2]
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 750
	add 0x00000004, r2
	loop r5, .BB.LABEL.1_4
.BB.LABEL.1_5:	; bb49.i
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 754
	ori 0x00000002, r20, r20
	br9 .BB.LABEL.1_9
.BB.LABEL.1_6:	; bb.i.bb12.i.split.clone_crit_edge
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 0
	mov #_RX_DATA_0x010, r2
	mov 0x00000002, r5
	mov r21, r6
.BB.LABEL.1_7:	; bb12.i.split.clone
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 744
	ld.b 0x00000000[r6], r7
	st.b r7, 0x00000000[r2]
	ld.b 0x00000001[r6], r7
	st.b r7, 0x00000001[r2]
	ld.b 0x00000002[r6], r7
	st.b r7, 0x00000002[r2]
	ld.b 0x00000003[r6], r7
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 742
	add 0x00000004, r6
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 744
	st.b r7, 0x00000003[r2]
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 742
	add 0x00000004, r2
	loop r5, .BB.LABEL.1_7
.BB.LABEL.1_8:	; bb28.i
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 746
	ori 0x00000001, r20, r20
.BB.LABEL.1_9:	; bb54.i
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 731
	mov r22, r6
	jarl _u4_rx_fifo_chk, r31
	cmp 0x00000001, r10
	bz9 .BB.LABEL.1_2
.BB.LABEL.1_10:	; fb_can0_rx_data.exit
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 765
	movhi HIGHW1(#_u1_flag_rx0_flag), r0, r2
	st.b r20, LOWW(#_u1_flag_rx0_flag)[r2]
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 228
	andi 0x000000FF, r20, r0
	bz17 .BB.LABEL.1_24
.BB.LABEL.1_11:	; if_then_bb
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 230
	mov #_RX_DATA_0x010, r2
	ld.b 0x00000000[r2], r5
	movhi HIGHW1(#_u1_com_flag_state_ctrl), r0, r9
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 231
	ld.b 0x00000001[r2], r6
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 235
	movhi HIGHW1(#_s2_com_speed_ref), r0, r11
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 232
	ld.hu 0x00000002[r2], r7
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 236
	movhi HIGHW1(#_u2_com_dtq_ref), r0, r12
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 233
	ld.h 0x00000004[r2], r8
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 241
	ld.h 0x00000006[r2], r2
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 230
	st.b r5, LOWW(#_u1_com_flag_state_ctrl)[r9]
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 231
	movhi HIGHW1(#_u1_com_flag_1pulse_mode), r0, r5
	st.b r6, LOWW(#_u1_com_flag_1pulse_mode)[r5]
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 232
	movhi HIGHW1(#_s2_com_tq_ref), r0, r5
	st.h r7, LOWW(#_s2_com_tq_ref)[r5]
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 233
	movhi HIGHW1(#_s2_com_irms_ref), r0, r5
	st.h r8, LOWW(#_s2_com_irms_ref)[r5]
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 241
	addi 0xFFFF8000, r7, r0
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 235
	mov #_RX_DATA_0x011, r5
	ld.h 0x00000000[r5], r6
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 236
	ld.h 0x00000002[r5], r9
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 237
	ld.h 0x00000004[r5], r10
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 238
	ld.h 0x00000006[r5], r5
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 235
	st.h r6, LOWW(#_s2_com_speed_ref)[r11]
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 237
	movhi HIGHW1(#_u2_com_dirms_ref), r0, r11
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 236
	st.h r9, LOWW(#_u2_com_dtq_ref)[r12]
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 237
	st.h r10, LOWW(#_u2_com_dirms_ref)[r11]
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 238
	movhi HIGHW1(#_u2_com_dspeed_ref), r0, r11
	st.h r5, LOWW(#_u2_com_dspeed_ref)[r11]
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 241
	bnz9 .BB.LABEL.1_13
.BB.LABEL.1_12:	; if_then_bb.bb42_crit_edge
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 0
	movea 0xFFFF8001, r0, r7
	br9 .BB.LABEL.1_14
.BB.LABEL.1_13:	; bb35
	sxh r7
.BB.LABEL.1_14:	; bb42
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 242
	cvtf.ws r7, r7
	mov 0x00000000, r12
	mov 0x3DCCCCCD, r11
	movhi HIGHW1(#_f4_com_tq_ref), r0, r13
	mulf.s r11, r7, r7
	addf.s r12, r7, r7
	st.w r7, LOWW(#_f4_com_tq_ref)[r13]
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 243
	andi 0x0000FFFF, r8, r7
	addi 0xFFFF8000, r7, r0
	bnz9 .BB.LABEL.1_16
.BB.LABEL.1_15:	; bb42.bb69_crit_edge
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 0
	movea 0xFFFF8001, r0, r8
	br9 .BB.LABEL.1_17
.BB.LABEL.1_16:	; bb61
	sxh r8
.BB.LABEL.1_17:	; bb69
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 244
	cvtf.ws r8, r7
	movhi HIGHW1(#_f4_com_irms_ref), r0, r8
	mulf.s r11, r7, r7
	addf.s r12, r7, r7
	st.w r7, LOWW(#_f4_com_irms_ref)[r8]
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 245
	andi 0x0000FFFF, r2, r7
	addi 0xFFFF8000, r7, r0
	bnz9 .BB.LABEL.1_19
.BB.LABEL.1_18:	; bb69.bb96_crit_edge
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 0
	movea 0xFFFF8001, r0, r2
	br9 .BB.LABEL.1_20
.BB.LABEL.1_19:	; bb88
	sxh r2
.BB.LABEL.1_20:	; bb96
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 246
	cvtf.ws r2, r2
	mov 0x3C23D70A, r7
	mulf.s r7, r2, r2
	movhi HIGHW1(#_f4_com_theta_ref), r0, r7
	addf.s r12, r2, r2
	st.w r2, LOWW(#_f4_com_theta_ref)[r7]
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 247
	andi 0x0000FFFF, r6, r2
	addi 0xFFFF8000, r2, r0
	bnz9 .BB.LABEL.1_22
.BB.LABEL.1_21:	; bb96.bb123_crit_edge
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 0
	movea 0xFFFF8001, r0, r6
	br9 .BB.LABEL.1_23
.BB.LABEL.1_22:	; bb115
	sxh r6
.BB.LABEL.1_23:	; bb123
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 248
	cvtf.ws r6, r2
	movhi HIGHW1(#_f4_com_speed_ref), r0, r6
	addf.s r12, r2, r2
	st.w r2, LOWW(#_f4_com_speed_ref)[r6]
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 250
	andi 0x0000FFFF, r9, r2
	cvtf.uws r2, r2
	movhi HIGHW1(#_f4_com_dtq_ref), r0, r6
	mulf.s r11, r2, r2
	addf.s r12, r2, r2
	st.w r2, LOWW(#_f4_com_dtq_ref)[r6]
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 252
	andi 0x0000FFFF, r10, r2
	cvtf.uws r2, r2
	movhi HIGHW1(#_f4_com_dirms_ref), r0, r6
	mulf.s r11, r2, r2
	addf.s r12, r2, r2
	st.w r2, LOWW(#_f4_com_dirms_ref)[r6]
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 254
	andi 0x0000FFFF, r5, r2
	cvtf.uws r2, r2
	movhi HIGHW1(#_f4_com_dspeed_ref), r0, r5
	addf.s r12, r2, r2
	st.w r2, LOWW(#_f4_com_dspeed_ref)[r5]
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 256
	movhi HIGHW1(#_u1_flag_com_startchk), r0, r2
	mov 0x00000001, r5
	st.b r5, LOWW(#_u1_flag_com_startchk)[r2]
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 257
	movhi HIGHW1(#_u2_cnt_1ms_comchk), r0, r2
	st.h r0, LOWW(#_u2_cnt_1ms_comchk)[r2]
.BB.LABEL.1_24:	; if_break_bb
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 506
	movhi HIGHW1(#_f4_com_tq_ref_tmp), r0, r2
	ld.w LOWW(#_f4_com_tq_ref_tmp)[r2], r2
	mov 0x00000000, r5
	mov 0x3DCCCCCD, r6
	addf.s r5, r2, r2
	mov 0x454CCB33, r7
	mulf.s r6, r2, r2
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 507
	cmpf.s 0x00000007, r2, r7
	trfsr 0
	bnz9 .BB.LABEL.1_26
.BB.LABEL.1_25:	; bb219
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 0
	mov 0xC54CCB33, r7
	cmpf.s 0x00000004, r2, r7
	cmovf.s 0, r7, r2, r7
.BB.LABEL.1_26:	; bb231
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 508
	trncf.sw r7, r2
	movhi HIGHW1(#_s2_com_tq_ref_tmp), r0, r7
	st.h r2, LOWW(#_s2_com_tq_ref_tmp)[r7]
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 509
	movhi HIGHW1(#_f4_com_irms_ad), r0, r2
	ld.w LOWW(#_f4_com_irms_ad)[r2], r2
	mov 0x45CCCC00, r7
	addf.s r5, r2, r2
	mulf.s r6, r2, r2
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 510
	cmpf.s 0x00000007, r2, r7
	trfsr 0
	bnz9 .BB.LABEL.1_28
.BB.LABEL.1_27:	; bb243
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 0
	cmpf.s 0x00000004, r2, r5
	cmovf.s 0, r5, r2, r7
.BB.LABEL.1_28:	; bb255
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 511
	trncf.suw r7, r2
	movhi HIGHW1(#_u2_com_irms_ad), r0, r7
	st.h r2, LOWW(#_u2_com_irms_ad)[r7]
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 512
	movhi HIGHW1(#_f4_com_speed_ad), r0, r2
	ld.w LOWW(#_f4_com_speed_ad)[r2], r2
	mov 0x46FFFE00, r7
	addf.s r5, r2, r2
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 513
	cmpf.s 0x00000007, r2, r7
	trfsr 0
	bnz9 .BB.LABEL.1_30
.BB.LABEL.1_29:	; bb267
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 0
	mov 0xC6FFFE00, r7
	cmpf.s 0x00000004, r2, r7
	cmovf.s 0, r7, r2, r7
.BB.LABEL.1_30:	; bb279
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 514
	trncf.sw r7, r2
	movhi HIGHW1(#_s2_com_speed_ad), r0, r7
	st.h r2, LOWW(#_s2_com_speed_ad)[r7]
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 515
	movhi HIGHW1(#_f4_com_id_ref), r0, r2
	ld.w LOWW(#_f4_com_id_ref)[r2], r2
	mov 0x454CCB33, r7
	addf.s r5, r2, r2
	mulf.s r6, r2, r2
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 516
	cmpf.s 0x00000007, r2, r7
	trfsr 0
	bnz9 .BB.LABEL.1_32
.BB.LABEL.1_31:	; bb291
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 0
	mov 0xC54CCB33, r7
	cmpf.s 0x00000004, r2, r7
	cmovf.s 0, r7, r2, r7
.BB.LABEL.1_32:	; bb303
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 517
	trncf.sw r7, r2
	movhi HIGHW1(#_s2_com_id_ref), r0, r7
	mov 0x454CCB33, r8
	st.h r2, LOWW(#_s2_com_id_ref)[r7]
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 518
	movhi HIGHW1(#_f4_com_iq_ref), r0, r7
	ld.w LOWW(#_f4_com_iq_ref)[r7], r7
	addf.s r5, r7, r7
	mulf.s r6, r7, r7
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 519
	cmpf.s 0x00000007, r7, r8
	trfsr 0
	bnz9 .BB.LABEL.1_34
.BB.LABEL.1_33:	; bb315
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 0
	mov 0xC54CCB33, r8
	cmpf.s 0x00000004, r7, r8
	cmovf.s 0, r8, r7, r8
.BB.LABEL.1_34:	; bb327
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 520
	trncf.sw r8, r7
	movhi HIGHW1(#_s2_com_iq_ref), r0, r8
	mov 0x45CCCC00, r9
	st.h r7, LOWW(#_s2_com_iq_ref)[r8]
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 521
	movhi HIGHW1(#_f4_com_irms_ref), r0, r8
	ld.w LOWW(#_f4_com_irms_ref)[r8], r8
	addf.s r5, r8, r8
	mulf.s r6, r8, r8
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 522
	cmpf.s 0x00000007, r8, r9
	trfsr 0
	bnz9 .BB.LABEL.1_36
.BB.LABEL.1_35:	; bb339
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 0
	cmpf.s 0x00000004, r8, r5
	cmovf.s 0, r5, r8, r9
.BB.LABEL.1_36:	; bb351
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 523
	trncf.suw r9, r8
	movhi HIGHW1(#_u2_com_irms_ref), r0, r9
	mov 0x3C23D70A, r10
	mov 0x43A3D5C3, r11
	st.h r8, LOWW(#_u2_com_irms_ref)[r9]
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 524
	movhi HIGHW1(#_f4_com_theta_ref), r0, r9
	ld.w LOWW(#_f4_com_theta_ref)[r9], r9
	addf.s r5, r9, r9
	mulf.s r10, r9, r9
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 525
	cmpf.s 0x00000007, r9, r11
	trfsr 0
	bnz9 .BB.LABEL.1_38
.BB.LABEL.1_37:	; bb363
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 0
	mov 0xC3A3D5C3, r11
	cmpf.s 0x00000004, r9, r11
	cmovf.s 0, r11, r9, r11
.BB.LABEL.1_38:	; bb375
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 526
	trncf.sw r11, r9
	movhi HIGHW1(#_s2_com_theta_ref), r0, r11
	mov 0x454CCB33, r12
	st.h r9, LOWW(#_s2_com_theta_ref)[r11]
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 527
	movhi HIGHW1(#_f4_com_id_ad), r0, r11
	ld.w LOWW(#_f4_com_id_ad)[r11], r11
	addf.s r5, r11, r11
	mulf.s r6, r11, r11
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 528
	cmpf.s 0x00000007, r11, r12
	trfsr 0
	bnz9 .BB.LABEL.1_40
.BB.LABEL.1_39:	; bb387
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 0
	mov 0xC54CCB33, r12
	cmpf.s 0x00000004, r11, r12
	cmovf.s 0, r12, r11, r12
.BB.LABEL.1_40:	; bb399
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 529
	trncf.sw r12, r11
	movhi HIGHW1(#_s2_com_id_ad), r0, r12
	mov 0x454CCB33, r13
	st.h r11, LOWW(#_s2_com_id_ad)[r12]
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 530
	movhi HIGHW1(#_f4_com_iq_ad), r0, r12
	ld.w LOWW(#_f4_com_iq_ad)[r12], r12
	addf.s r5, r12, r12
	mulf.s r6, r12, r12
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 531
	cmpf.s 0x00000007, r12, r13
	trfsr 0
	bnz9 .BB.LABEL.1_42
.BB.LABEL.1_41:	; bb411
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 0
	mov 0xC54CCB33, r13
	cmpf.s 0x00000004, r12, r13
	cmovf.s 0, r13, r12, r13
.BB.LABEL.1_42:	; bb423
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 532
	trncf.sw r13, r12
	movhi HIGHW1(#_s2_com_iq_ad), r0, r13
	mov 0x454CCB33, r14
	st.h r12, LOWW(#_s2_com_iq_ad)[r13]
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 533
	movhi HIGHW1(#_f4_com_idc_ad), r0, r13
	ld.w LOWW(#_f4_com_idc_ad)[r13], r13
	addf.s r5, r13, r13
	mulf.s r6, r13, r13
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 534
	cmpf.s 0x00000007, r13, r14
	trfsr 0
	bnz9 .BB.LABEL.1_44
.BB.LABEL.1_43:	; bb435
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 0
	mov 0xC54CCB33, r14
	cmpf.s 0x00000004, r13, r14
	cmovf.s 0, r14, r13, r14
.BB.LABEL.1_44:	; bb447
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 535
	trncf.sw r14, r13
	movhi HIGHW1(#_s2_com_idc_ad), r0, r14
	mov 0x43A3D5C3, r15
	st.h r13, LOWW(#_s2_com_idc_ad)[r14]
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 536
	movhi HIGHW1(#_f4_com_theta_ad), r0, r14
	ld.w LOWW(#_f4_com_theta_ad)[r14], r14
	addf.s r5, r14, r14
	mulf.s r10, r14, r10
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 537
	cmpf.s 0x00000007, r10, r15
	trfsr 0
	bnz9 .BB.LABEL.1_46
.BB.LABEL.1_45:	; bb459
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 0
	mov 0xC3A3D5C3, r15
	cmpf.s 0x00000004, r10, r15
	cmovf.s 0, r15, r10, r15
.BB.LABEL.1_46:	; bb471
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 538
	trncf.sw r15, r10
	movhi HIGHW1(#_s2_com_theta_ad), r0, r14
	mov 0x454CCB33, r15
	st.h r10, LOWW(#_s2_com_theta_ad)[r14]
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 539
	movhi HIGHW1(#_f4_com_vd_ref), r0, r14
	ld.w LOWW(#_f4_com_vd_ref)[r14], r14
	addf.s r5, r14, r14
	mulf.s r6, r14, r14
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 540
	cmpf.s 0x00000007, r14, r15
	trfsr 0
	bnz9 .BB.LABEL.1_48
.BB.LABEL.1_47:	; bb483
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 0
	mov 0xC54CCB33, r15
	cmpf.s 0x00000004, r14, r15
	cmovf.s 0, r15, r14, r15
.BB.LABEL.1_48:	; bb495
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 541
	trncf.sw r15, r14
	movhi HIGHW1(#_s2_com_vd_ref), r0, r15
	mov 0x454CCB33, r16
	st.h r14, LOWW(#_s2_com_vd_ref)[r15]
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 542
	movhi HIGHW1(#_f4_com_vq_ref), r0, r15
	ld.w LOWW(#_f4_com_vq_ref)[r15], r15
	addf.s r5, r15, r15
	mulf.s r6, r15, r15
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 543
	cmpf.s 0x00000007, r15, r16
	trfsr 0
	bnz9 .BB.LABEL.1_50
.BB.LABEL.1_49:	; bb507
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 0
	mov 0xC54CCB33, r16
	cmpf.s 0x00000004, r15, r16
	cmovf.s 0, r16, r15, r16
.BB.LABEL.1_50:	; bb519
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 544
	trncf.sw r16, r15
	movhi HIGHW1(#_s2_com_vq_ref), r0, r16
	mov 0x45CCCC00, r17
	st.h r15, LOWW(#_s2_com_vq_ref)[r16]
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 545
	movhi HIGHW1(#_f4_com_vdc_ad), r0, r16
	ld.w LOWW(#_f4_com_vdc_ad)[r16], r16
	addf.s r5, r16, r16
	mulf.s r6, r16, r16
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 546
	cmpf.s 0x00000007, r16, r17
	trfsr 0
	bnz9 .BB.LABEL.1_52
.BB.LABEL.1_51:	; bb531
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 0
	cmpf.s 0x00000004, r16, r5
	cmovf.s 0, r5, r16, r17
.BB.LABEL.1_52:	; bb543
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 547
	trncf.suw r17, r16
	movhi HIGHW1(#_u2_com_vdc_ad), r0, r17
	mov 0x45CCCC00, r18
	st.h r16, LOWW(#_u2_com_vdc_ad)[r17]
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 548
	movhi HIGHW1(#_f4_com_vrms_ref), r0, r17
	ld.w LOWW(#_f4_com_vrms_ref)[r17], r17
	addf.s r5, r17, r17
	mulf.s r6, r17, r17
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 549
	cmpf.s 0x00000007, r17, r18
	trfsr 0
	bnz9 .BB.LABEL.1_54
.BB.LABEL.1_53:	; bb555
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 0
	cmpf.s 0x00000004, r17, r5
	cmovf.s 0, r5, r17, r18
.BB.LABEL.1_54:	; bb567
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 550
	trncf.suw r18, r17
	movhi HIGHW1(#_u2_com_vrms_ref), r0, r18
	mov 0x454CCB33, r19
	st.h r17, LOWW(#_u2_com_vrms_ref)[r18]
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 551
	movhi HIGHW1(#_f4_com_tq_limit_p), r0, r18
	ld.w LOWW(#_f4_com_tq_limit_p)[r18], r18
	addf.s r5, r18, r18
	mulf.s r6, r18, r18
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 552
	cmpf.s 0x00000007, r18, r19
	trfsr 0
	bnz9 .BB.LABEL.1_56
.BB.LABEL.1_55:	; bb579
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 0
	mov 0xC54CCB33, r19
	cmpf.s 0x00000004, r18, r19
	cmovf.s 0, r19, r18, r19
.BB.LABEL.1_56:	; bb591
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 553
	trncf.sw r19, r18
	movhi HIGHW1(#_s2_com_tq_limit_p), r0, r19
	mov 0x454CCB33, r20
	st.h r18, LOWW(#_s2_com_tq_limit_p)[r19]
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 554
	movhi HIGHW1(#_f4_com_tq_limit_n), r0, r19
	ld.w LOWW(#_f4_com_tq_limit_n)[r19], r19
	addf.s r5, r19, r19
	mulf.s r6, r19, r6
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 555
	cmpf.s 0x00000007, r6, r20
	trfsr 0
	bnz9 .BB.LABEL.1_58
.BB.LABEL.1_57:	; bb603
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 0
	mov 0xC54CCB33, r20
	cmpf.s 0x00000004, r6, r20
	cmovf.s 0, r20, r6, r20
.BB.LABEL.1_58:	; bb615
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 556
	trncf.sw r20, r6
	movhi HIGHW1(#_s2_com_tq_limit_n), r0, r19
	movhi 0x0000C220, r0, r20
	movhi 0x0000437F, r0, r21
	st.h r6, LOWW(#_s2_com_tq_limit_n)[r19]
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 557
	movhi HIGHW1(#_f4_com_tmp_mot1), r0, r19
	ld.w LOWW(#_f4_com_tmp_mot1)[r19], r19
	addf.s r20, r19, r19
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 558
	cmpf.s 0x00000007, r19, r21
	trfsr 0
	bz9 .BB.LABEL.1_60
.BB.LABEL.1_59:	; bb615.bb639_crit_edge
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 0
	movhi 0x0000437F, r0, r19
	br9 .BB.LABEL.1_61
.BB.LABEL.1_60:	; bb627
	cmpf.s 0x00000004, r19, r5
	cmovf.s 0, r5, r19, r19
.BB.LABEL.1_61:	; bb639
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 559
	trncf.suw r19, r19
	movhi HIGHW1(#_u1_com_tmp_mot1), r0, r20
	movhi 0x0000C220, r0, r21
	movhi 0x0000437F, r0, r22
	st.b r19, LOWW(#_u1_com_tmp_mot1)[r20]
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 560
	movhi HIGHW1(#_f4_com_tmp_mot2), r0, r20
	ld.w LOWW(#_f4_com_tmp_mot2)[r20], r20
	addf.s r21, r20, r20
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 561
	cmpf.s 0x00000007, r20, r22
	trfsr 0
	bz9 .BB.LABEL.1_63
.BB.LABEL.1_62:	; bb639.bb663_crit_edge
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 0
	movhi 0x0000437F, r0, r20
	br9 .BB.LABEL.1_64
.BB.LABEL.1_63:	; bb651
	cmpf.s 0x00000004, r20, r5
	cmovf.s 0, r5, r20, r20
.BB.LABEL.1_64:	; bb663
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 562
	trncf.suw r20, r20
	movhi HIGHW1(#_u1_com_tmp_mot2), r0, r21
	movhi 0x0000C220, r0, r22
	movhi 0x0000437F, r0, r23
	st.b r20, LOWW(#_u1_com_tmp_mot2)[r21]
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 563
	movhi HIGHW1(#_f4_com_tmp_int), r0, r21
	ld.w LOWW(#_f4_com_tmp_int)[r21], r21
	addf.s r22, r21, r21
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 564
	cmpf.s 0x00000007, r21, r23
	trfsr 0
	bz9 .BB.LABEL.1_66
.BB.LABEL.1_65:	; bb663.bb687_crit_edge
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 0
	movhi 0x0000437F, r0, r21
	br9 .BB.LABEL.1_67
.BB.LABEL.1_66:	; bb675
	cmpf.s 0x00000004, r21, r5
	cmovf.s 0, r5, r21, r21
.BB.LABEL.1_67:	; bb687
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 565
	trncf.suw r21, r21
	movhi HIGHW1(#_u1_com_tmp_int), r0, r22
	movhi 0x0000C220, r0, r23
	movhi 0x0000437F, r0, r24
	st.b r21, LOWW(#_u1_com_tmp_int)[r22]
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 567
	movhi HIGHW1(#_f4_com_tmp_igbt1), r0, r22
	ld.w LOWW(#_f4_com_tmp_igbt1)[r22], r22
	addf.s r23, r22, r22
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 568
	cmpf.s 0x00000007, r22, r24
	trfsr 0
	bz9 .BB.LABEL.1_69
.BB.LABEL.1_68:	; bb687.bb711_crit_edge
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 0
	movhi 0x0000437F, r0, r22
	br9 .BB.LABEL.1_70
.BB.LABEL.1_69:	; bb699
	cmpf.s 0x00000004, r22, r5
	cmovf.s 0, r5, r22, r22
.BB.LABEL.1_70:	; bb711
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 569
	trncf.suw r22, r22
	movhi HIGHW1(#_u1_com_tmp_igbt1), r0, r23
	movhi 0x0000C220, r0, r24
	movhi 0x0000437F, r0, r25
	st.b r22, LOWW(#_u1_com_tmp_igbt1)[r23]
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 570
	movhi HIGHW1(#_f4_com_tmp_igbt2), r0, r23
	ld.w LOWW(#_f4_com_tmp_igbt2)[r23], r23
	addf.s r24, r23, r23
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 571
	cmpf.s 0x00000007, r23, r25
	trfsr 0
	bz9 .BB.LABEL.1_72
.BB.LABEL.1_71:	; bb711.bb735_crit_edge
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 0
	movhi 0x0000437F, r0, r23
	br9 .BB.LABEL.1_73
.BB.LABEL.1_72:	; bb723
	cmpf.s 0x00000004, r23, r5
	cmovf.s 0, r5, r23, r23
.BB.LABEL.1_73:	; bb735
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 572
	trncf.suw r23, r23
	movhi HIGHW1(#_u1_com_tmp_igbt2), r0, r24
	movhi 0x0000C220, r0, r25
	movhi 0x0000437F, r0, r26
	st.b r23, LOWW(#_u1_com_tmp_igbt2)[r24]
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 573
	movhi HIGHW1(#_f4_com_tmp_igbt3), r0, r24
	ld.w LOWW(#_f4_com_tmp_igbt3)[r24], r24
	addf.s r25, r24, r24
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 574
	cmpf.s 0x00000007, r24, r26
	trfsr 0
	bz9 .BB.LABEL.1_75
.BB.LABEL.1_74:	; bb735.bb759_crit_edge
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 0
	movhi 0x0000437F, r0, r24
	br9 .BB.LABEL.1_76
.BB.LABEL.1_75:	; bb747
	cmpf.s 0x00000004, r24, r5
	cmovf.s 0, r5, r24, r24
.BB.LABEL.1_76:	; bb759
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 575
	trncf.suw r24, r24
	movhi HIGHW1(#_u1_com_tmp_igbt3), r0, r25
	movhi 0x0000C220, r0, r26
	movhi 0x0000437F, r0, r27
	st.b r24, LOWW(#_u1_com_tmp_igbt3)[r25]
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 576
	movhi HIGHW1(#_f4_com_tmp_igbt4), r0, r25
	ld.w LOWW(#_f4_com_tmp_igbt4)[r25], r25
	addf.s r26, r25, r25
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 577
	cmpf.s 0x00000007, r25, r27
	trfsr 0
	bz9 .BB.LABEL.1_78
.BB.LABEL.1_77:	; bb759.bb783_crit_edge
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 0
	movhi 0x0000437F, r0, r25
	br9 .BB.LABEL.1_79
.BB.LABEL.1_78:	; bb771
	cmpf.s 0x00000004, r25, r5
	cmovf.s 0, r5, r25, r25
.BB.LABEL.1_79:	; bb783
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 578
	trncf.suw r25, r25
	movhi HIGHW1(#_u1_com_tmp_igbt4), r0, r26
	movhi 0x0000C220, r0, r27
	movhi 0x0000437F, r0, r28
	st.b r25, LOWW(#_u1_com_tmp_igbt4)[r26]
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 579
	movhi HIGHW1(#_f4_com_tmp_igbt5), r0, r26
	ld.w LOWW(#_f4_com_tmp_igbt5)[r26], r26
	addf.s r27, r26, r26
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 580
	cmpf.s 0x00000007, r26, r28
	trfsr 0
	bz9 .BB.LABEL.1_81
.BB.LABEL.1_80:	; bb783.bb807_crit_edge
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 0
	movhi 0x0000437F, r0, r26
	br9 .BB.LABEL.1_82
.BB.LABEL.1_81:	; bb795
	cmpf.s 0x00000004, r26, r5
	cmovf.s 0, r5, r26, r26
.BB.LABEL.1_82:	; bb807
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 581
	trncf.suw r26, r26
	movhi HIGHW1(#_u1_com_tmp_igbt5), r0, r27
	movhi 0x0000C220, r0, r28
	movhi 0x0000437F, r0, r29
	st.b r26, LOWW(#_u1_com_tmp_igbt5)[r27]
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 582
	movhi HIGHW1(#_f4_com_tmp_igbt6), r0, r27
	ld.w LOWW(#_f4_com_tmp_igbt6)[r27], r27
	addf.s r28, r27, r27
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 583
	cmpf.s 0x00000007, r27, r29
	trfsr 0
	bz9 .BB.LABEL.1_84
.BB.LABEL.1_83:	; bb807.bb831_crit_edge
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 0
	movhi 0x0000437F, r0, r5
	br9 .BB.LABEL.1_85
.BB.LABEL.1_84:	; bb819
	cmpf.s 0x00000004, r27, r5
	cmovf.s 0, r5, r27, r5
.BB.LABEL.1_85:	; bb831
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 584
	trncf.suw r5, r5
	movhi HIGHW1(#_u1_com_tmp_igbt6), r0, r27
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 590
	mov #_TX_DATA_0x020, r28
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 584
	st.b r5, LOWW(#_u1_com_tmp_igbt6)[r27]
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 590
	movhi HIGHW1(#_u1_com_flag_actual_state_ctrl), r0, r27
	ld.b LOWW(#_u1_com_flag_actual_state_ctrl)[r27], r27
	st.b r27, 0x00000000[r28]
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 591
	movhi HIGHW1(#_u1_com_flag_drive_mode), r0, r27
	ld.b LOWW(#_u1_com_flag_drive_mode)[r27], r27
	st.b r27, 0x00000001[r28]
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 592
	movhi HIGHW1(#_s2_com_tq_ref_tmp), r0, r27
	ld.h LOWW(#_s2_com_tq_ref_tmp)[r27], r27
	st.h r27, 0x00000002[r28]
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 593
	movhi HIGHW1(#_u2_com_irms_ad), r0, r27
	ld.h LOWW(#_u2_com_irms_ad)[r27], r27
	st.h r27, 0x00000004[r28]
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 594
	movhi HIGHW1(#_s2_com_speed_ad), r0, r27
	ld.h LOWW(#_s2_com_speed_ad)[r27], r27
	st.h r27, 0x00000006[r28]
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 595
	mov #_TX_DATA_0x021, r27
	st.h r2, 0x00000000[r27]
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 596
	st.h r7, 0x00000002[r27]
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 597
	st.h r8, 0x00000004[r27]
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 598
	st.h r9, 0x00000006[r27]
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 599
	mov #_TX_DATA_0x022, r2
	st.h r11, 0x00000000[r2]
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 600
	st.h r12, 0x00000002[r2]
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 601
	st.h r13, 0x00000004[r2]
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 602
	st.h r10, 0x00000006[r2]
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 603
	mov #_TX_DATA_0x023, r7
	st.h r14, 0x00000000[r7]
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 604
	st.h r15, 0x00000002[r7]
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 605
	st.h r16, 0x00000004[r7]
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 606
	st.h r17, 0x00000006[r7]
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 607
	mov #_TX_DATA_0x024, r8
	st.h r18, 0x00000000[r8]
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 608
	st.h r6, 0x00000002[r8]
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 609
	st.b r19, 0x00000004[r8]
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 610
	st.b r20, 0x00000005[r8]
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 611
	st.b r21, 0x00000006[r8]
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 613
	mov #_TX_DATA_0x025, r6
	st.b r22, 0x00000000[r6]
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 614
	st.b r23, 0x00000001[r6]
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 615
	st.b r24, 0x00000002[r6]
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 616
	st.b r25, 0x00000003[r6]
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 617
	st.b r26, 0x00000004[r6]
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 618
	st.b r5, 0x00000005[r6]
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 620
	movhi HIGHW1(#_u4_com_flag_error), r0, r5
	ld.w LOWW(#_u4_com_flag_error)[r5], r5
	mov #_TX_DATA_0x026, r9
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 628
	mov #_CAN_MBOX_TX_ID0x026, r10
	add 0x00000008, r10
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 620
	st.w r5, 0x00000000[r9]
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 628
	mov #_CAN_MBOX_TX_ID0x025, r11
	add 0x00000008, r11
	mov 0x00000002, r16
	mov #_CAN_MBOX_TX_ID0x024, r5
	add 0x00000008, r5
	mov #_CAN_MBOX_TX_ID0x023, r12
	add 0x00000008, r12
	mov #_CAN_MBOX_TX_ID0x022, r13
	add 0x00000008, r13
	mov #_CAN_MBOX_TX_ID0x021, r14
	add 0x00000008, r14
	mov #_CAN_MBOX_TX_ID0x020, r15
	add 0x00000008, r15
.BB.LABEL.1_86:	; bb865.split.clone
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 630
	ld.b 0x00000000[r28], r17
	st.b r17, 0x00000000[r15]
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 631
	ld.b 0x00000000[r27], r17
	st.b r17, 0x00000000[r14]
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 632
	ld.b 0x00000000[r2], r17
	st.b r17, 0x00000000[r13]
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 633
	ld.b 0x00000000[r7], r17
	st.b r17, 0x00000000[r12]
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 634
	ld.b 0x00000000[r8], r17
	st.b r17, 0x00000000[r5]
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 635
	ld.b 0x00000000[r6], r17
	st.b r17, 0x00000000[r11]
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 636
	ld.b 0x00000000[r9], r17
	st.b r17, 0x00000000[r10]
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 630
	ld.b 0x00000001[r28], r17
	st.b r17, 0x00000001[r15]
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 631
	ld.b 0x00000001[r27], r17
	st.b r17, 0x00000001[r14]
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 632
	ld.b 0x00000001[r2], r17
	st.b r17, 0x00000001[r13]
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 633
	ld.b 0x00000001[r7], r17
	st.b r17, 0x00000001[r12]
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 634
	ld.b 0x00000001[r8], r17
	st.b r17, 0x00000001[r5]
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 635
	ld.b 0x00000001[r6], r17
	st.b r17, 0x00000001[r11]
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 636
	ld.b 0x00000001[r9], r17
	st.b r17, 0x00000001[r10]
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 630
	ld.b 0x00000002[r28], r17
	st.b r17, 0x00000002[r15]
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 631
	ld.b 0x00000002[r27], r17
	st.b r17, 0x00000002[r14]
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 632
	ld.b 0x00000002[r2], r17
	st.b r17, 0x00000002[r13]
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 633
	ld.b 0x00000002[r7], r17
	st.b r17, 0x00000002[r12]
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 634
	ld.b 0x00000002[r8], r17
	st.b r17, 0x00000002[r5]
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 635
	ld.b 0x00000002[r6], r17
	st.b r17, 0x00000002[r11]
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 636
	ld.b 0x00000002[r9], r17
	st.b r17, 0x00000002[r10]
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 630
	ld.b 0x00000003[r28], r17
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 628
	add 0x00000004, r28
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 630
	st.b r17, 0x00000003[r15]
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 628
	add 0x00000004, r15
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 631
	ld.b 0x00000003[r27], r17
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 628
	add 0x00000004, r27
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 631
	st.b r17, 0x00000003[r14]
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 628
	add 0x00000004, r14
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 632
	ld.b 0x00000003[r2], r17
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 628
	add 0x00000004, r2
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 632
	st.b r17, 0x00000003[r13]
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 628
	add 0x00000004, r13
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 633
	ld.b 0x00000003[r7], r17
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 628
	add 0x00000004, r7
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 633
	st.b r17, 0x00000003[r12]
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 628
	add 0x00000004, r12
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 634
	ld.b 0x00000003[r8], r17
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 628
	add 0x00000004, r8
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 634
	st.b r17, 0x00000003[r5]
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 628
	add 0x00000004, r5
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 635
	ld.b 0x00000003[r6], r17
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 628
	add 0x00000004, r6
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 635
	st.b r17, 0x00000003[r11]
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 628
	add 0x00000004, r11
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 636
	ld.b 0x00000003[r9], r17
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 628
	add 0x00000004, r9
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 636
	st.b r17, 0x00000003[r10]
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 628
	add 0x00000004, r10
	loop r16, .BB.LABEL.1_86
.BB.LABEL.1_87:	; bb923
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 643
	movhi HIGHW1(#_u2_cnt_100ms_tx0), r0, r2
	ld.h LOWW(#_u2_cnt_100ms_tx0)[r2], r5
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 644
	movhi HIGHW1(#_u2_cnt_10ms_tx0), r0, r6
	ld.h LOWW(#_u2_cnt_10ms_tx0)[r6], r7
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 643
	add 0x00000001, r5
	st.h r5, LOWW(#_u2_cnt_100ms_tx0)[r2]
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 644
	add 0x00000001, r7
	st.h r7, LOWW(#_u2_cnt_10ms_tx0)[r6]
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 645
	andi 0x0000FFFF, r7, r2
	cmp 0x0000000A, r2
	blt9 .BB.LABEL.1_89
.BB.LABEL.1_88:	; if_then_bb933
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 0
	mov 0x00000000, r20
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 647
	mov r20, r6
	mov #_CAN_MBOX_TX_ID0x020, r7
	jarl _can_tx_data, r31
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 648
	mov #_CAN_MBOX_TX_ID0x021, r7
	mov r20, r6
	jarl _can_tx_data, r31
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 649
	mov #_CAN_MBOX_TX_ID0x022, r7
	mov r20, r6
	jarl _can_tx_data, r31
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 650
	mov #_CAN_MBOX_TX_ID0x023, r7
	mov r20, r6
	jarl _can_tx_data, r31
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 651
	mov #_CAN_MBOX_TX_ID0x024, r7
	mov r20, r6
	jarl _can_tx_data, r31
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 652
	mov #_CAN_MBOX_TX_ID0x025, r7
	mov r20, r6
	jarl _can_tx_data, r31
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 653
	mov #_CAN_MBOX_TX_ID0x026, r7
	mov r20, r6
	jarl _can_tx_data, r31
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 655
	movhi HIGHW1(#_u2_cnt_10ms_tx0), r0, r2
	st.h r0, LOWW(#_u2_cnt_10ms_tx0)[r2]
.BB.LABEL.1_89:	; if_break_bb942
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 659
	movhi HIGHW1(#_u2_cnt_100ms_tx0), r0, r2
	ld.hu LOWW(#_u2_cnt_100ms_tx0)[r2], r2
	addi 0xFFFFFF9C, r2, r0
	blt9 .BB.LABEL.1_91
.BB.LABEL.1_90:	; if_then_bb948
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 663
	movhi HIGHW1(#_u2_cnt_100ms_tx0), r0, r2
	st.h r0, LOWW(#_u2_cnt_100ms_tx0)[r2]
.BB.LABEL.1_91:	; if_break_bb950
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 682
	movhi HIGHW1(#_u1_flag_com_startchk), r0, r2
	ld.bu LOWW(#_u1_flag_com_startchk)[r2], r2
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.1_93
.BB.LABEL.1_92:	; if_then_bb956
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 684
	movhi HIGHW1(#_u2_cnt_1ms_comchk), r0, r2
	ld.h LOWW(#_u2_cnt_1ms_comchk)[r2], r5
	add 0x00000001, r5
	st.h r5, LOWW(#_u2_cnt_1ms_comchk)[r2]
.BB.LABEL.1_93:	; if_break_bb960
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 688
	movhi HIGHW1(#_u2_cnt_can0_norx_max), r0, r2
	ld.hu LOWW(#_u2_cnt_can0_norx_max)[r2], r2
	movhi HIGHW1(#_u2_cnt_1ms_comchk), r0, r5
	ld.hu LOWW(#_u2_cnt_1ms_comchk)[r5], r5
	cmp r5, r2
	bnh9 .BB.LABEL.1_95
.BB.LABEL.1_94:	; if_else_bb975
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 696
	movhi HIGHW1(#_u4_status_can0), r0, r2
	clr1 0x00000001, LOWW(#_u4_status_can0)[r2]
	dispose 0x00000010, 0x000007FF, [r31]
.BB.LABEL.1_95:	; if_then_bb968
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 690
	movhi HIGHW1(#_u1_flag_com_startchk), r0, r5
	st.b r0, LOWW(#_u1_flag_com_startchk)[r5]
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 691
	add 0x00000001, r2
	movhi HIGHW1(#_u2_cnt_1ms_comchk), r0, r5
	st.h r2, LOWW(#_u2_cnt_1ms_comchk)[r5]
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 692
	movhi HIGHW1(#_u4_status_can0), r0, r2
	set1 0x00000001, LOWW(#_u4_status_can0)[r2]
	dispose 0x00000010, 0x000007FF, [r31]
_fb_can0_rx_data:
	.stack _fb_can0_rx_data = 40
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 716
	prepare 0x00000479, 0x00000010
	mov 0x00000000, r20
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 731
	mov r20, r6
	jarl _u4_rx_fifo_chk, r31
	cmp 0x00000001, r10
	bnz9 .BB.LABEL.2_10
.BB.LABEL.2_1:	; bb.nph
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 0
	mov 0x00000000, r20
	movea 0x00000008, r3, r21
	mov 0x00000000, r22
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 735
	movhi HIGHW1(#_u4_chk), r0, r23
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 738
	movhi HIGHW1(#_u4_chk_id), r0, r24
.BB.LABEL.2_2:	; bb
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 0
	mov r3, r7
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 733
	mov r22, r6
	jarl _can_rx_data, r31
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 735
	ld.w LOWW(#_u4_chk)[r23], r2
	add 0x00000001, r2
	st.w r2, LOWW(#_u4_chk)[r23]
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 737
	ld.w 0x00000004[r3], r2
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 738
	st.w r2, LOWW(#_u4_chk_id)[r24]
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 739
	addi 0xFFFFFFF0, r2, r0
	bz9 .BB.LABEL.2_6
.BB.LABEL.2_3:	; bb
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 0
	addi 0xFFFFFFEF, r2, r0
	mov 0x00000002, r5
	mov #_RX_DATA_0x011, r2
	mov r21, r6
	bnz9 .BB.LABEL.2_9
.BB.LABEL.2_4:	; bb32.split.clone
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 752
	ld.b 0x00000000[r6], r7
	st.b r7, 0x00000000[r2]
	ld.b 0x00000001[r6], r7
	st.b r7, 0x00000001[r2]
	ld.b 0x00000002[r6], r7
	st.b r7, 0x00000002[r2]
	ld.b 0x00000003[r6], r7
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 750
	add 0x00000004, r6
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 752
	st.b r7, 0x00000003[r2]
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 750
	add 0x00000004, r2
	loop r5, .BB.LABEL.2_4
.BB.LABEL.2_5:	; bb49
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 754
	ori 0x00000002, r20, r20
	br9 .BB.LABEL.2_9
.BB.LABEL.2_6:	; bb.bb12.split.clone_crit_edge
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 0
	mov #_RX_DATA_0x010, r2
	mov 0x00000002, r5
	mov r21, r6
.BB.LABEL.2_7:	; bb12.split.clone
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 744
	ld.b 0x00000000[r6], r7
	st.b r7, 0x00000000[r2]
	ld.b 0x00000001[r6], r7
	st.b r7, 0x00000001[r2]
	ld.b 0x00000002[r6], r7
	st.b r7, 0x00000002[r2]
	ld.b 0x00000003[r6], r7
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 742
	add 0x00000004, r6
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 744
	st.b r7, 0x00000003[r2]
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 742
	add 0x00000004, r2
	loop r5, .BB.LABEL.2_7
.BB.LABEL.2_8:	; bb28
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 746
	ori 0x00000001, r20, r20
.BB.LABEL.2_9:	; bb54
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 731
	mov r22, r6
	jarl _u4_rx_fifo_chk, r31
	cmp 0x00000001, r10
	bz9 .BB.LABEL.2_2
.BB.LABEL.2_10:	; bb59
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 0
	mov r20, r10
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 765
	dispose 0x00000010, 0x00000479, [r31]
_fb_can0_ctrl_init:
	.stack _fb_can0_ctrl_init = 0
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 782
	movhi HIGHW1(#_u1_flag_rx0_flag), r0, r2
	st.b r0, LOWW(#_u1_flag_rx0_flag)[r2]
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 796
	movhi HIGHW1(#_u1_com_flag_state_ctrl), r0, r2
	mov 0x00000005, r5
	st.b r5, LOWW(#_u1_com_flag_state_ctrl)[r2]
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 797
	movhi HIGHW1(#_u1_com_flag_1pulse_mode), r0, r2
	st.b r0, LOWW(#_u1_com_flag_1pulse_mode)[r2]
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 798
	movhi HIGHW1(#_s2_com_tq_ref), r0, r2
	st.h r0, LOWW(#_s2_com_tq_ref)[r2]
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 799
	movhi HIGHW1(#_s2_com_irms_ref), r0, r2
	st.h r0, LOWW(#_s2_com_irms_ref)[r2]
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 801
	movhi HIGHW1(#_s2_com_speed_ref), r0, r2
	st.h r0, LOWW(#_s2_com_speed_ref)[r2]
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 802
	movhi HIGHW1(#_u2_com_dtq_ref), r0, r2
	st.h r0, LOWW(#_u2_com_dtq_ref)[r2]
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 803
	movhi HIGHW1(#_u2_com_dirms_ref), r0, r2
	st.h r0, LOWW(#_u2_com_dirms_ref)[r2]
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 804
	movhi HIGHW1(#_u2_com_dspeed_ref), r0, r2
	st.h r0, LOWW(#_u2_com_dspeed_ref)[r2]
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 808
	movhi HIGHW1(#_f4_com_tq_ref), r0, r2
	st.w r0, LOWW(#_f4_com_tq_ref)[r2]
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 811
	movhi HIGHW1(#_f4_com_speed_ref), r0, r2
	st.w r0, LOWW(#_f4_com_speed_ref)[r2]
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 812
	movhi HIGHW1(#_f4_com_dtq_ref), r0, r2
	st.w r0, LOWW(#_f4_com_dtq_ref)[r2]
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 813
	movhi HIGHW1(#_f4_com_dirms_ref), r0, r2
	st.w r0, LOWW(#_f4_com_dirms_ref)[r2]
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 814
	movhi HIGHW1(#_f4_com_dspeed_ref), r0, r2
	st.w r0, LOWW(#_f4_com_dspeed_ref)[r2]
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 818
	movhi HIGHW1(#_u1_flag_state_start), r0, r2
	st.b r0, LOWW(#_u1_flag_state_start)[r2]
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 819
	movhi HIGHW1(#_u1_com_flag_state_ctrl_tmp), r0, r2
	st.b r0, LOWW(#_u1_com_flag_state_ctrl_tmp)[r2]
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 823
	movhi HIGHW1(#_u1_com_flag_actual_state_ctrl), r0, r2
	st.b r0, LOWW(#_u1_com_flag_actual_state_ctrl)[r2]
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 824
	movhi HIGHW1(#_u1_com_flag_drive_mode), r0, r2
	st.b r0, LOWW(#_u1_com_flag_drive_mode)[r2]
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 825
	movhi HIGHW1(#_s2_com_tq_ref_tmp), r0, r2
	st.h r0, LOWW(#_s2_com_tq_ref_tmp)[r2]
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 826
	movhi HIGHW1(#_u2_com_irms_ad), r0, r2
	st.h r0, LOWW(#_u2_com_irms_ad)[r2]
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 827
	movhi HIGHW1(#_s2_com_speed_ad), r0, r2
	st.h r0, LOWW(#_s2_com_speed_ad)[r2]
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 828
	movhi HIGHW1(#_s2_com_id_ref), r0, r2
	st.h r0, LOWW(#_s2_com_id_ref)[r2]
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 829
	movhi HIGHW1(#_s2_com_iq_ref), r0, r2
	st.h r0, LOWW(#_s2_com_iq_ref)[r2]
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 830
	movhi HIGHW1(#_u2_com_irms_ref), r0, r2
	st.h r0, LOWW(#_u2_com_irms_ref)[r2]
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 831
	movhi HIGHW1(#_s2_com_theta_ref), r0, r2
	st.h r0, LOWW(#_s2_com_theta_ref)[r2]
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 832
	movhi HIGHW1(#_s2_com_id_ad), r0, r2
	st.h r0, LOWW(#_s2_com_id_ad)[r2]
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 833
	movhi HIGHW1(#_s2_com_iq_ad), r0, r2
	st.h r0, LOWW(#_s2_com_iq_ad)[r2]
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 834
	movhi HIGHW1(#_s2_com_idc_ad), r0, r2
	st.h r0, LOWW(#_s2_com_idc_ad)[r2]
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 835
	movhi HIGHW1(#_s2_com_theta_ad), r0, r2
	st.h r0, LOWW(#_s2_com_theta_ad)[r2]
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 836
	movhi HIGHW1(#_s2_com_vd_ref), r0, r2
	st.h r0, LOWW(#_s2_com_vd_ref)[r2]
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 837
	movhi HIGHW1(#_s2_com_vq_ref), r0, r2
	st.h r0, LOWW(#_s2_com_vq_ref)[r2]
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 838
	movhi HIGHW1(#_u2_com_vdc_ad), r0, r2
	st.h r0, LOWW(#_u2_com_vdc_ad)[r2]
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 839
	movhi HIGHW1(#_u2_com_vrms_ref), r0, r2
	st.h r0, LOWW(#_u2_com_vrms_ref)[r2]
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 840
	movhi HIGHW1(#_s2_com_tq_limit_p), r0, r2
	st.h r0, LOWW(#_s2_com_tq_limit_p)[r2]
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 841
	movhi HIGHW1(#_s2_com_tq_limit_n), r0, r2
	st.h r0, LOWW(#_s2_com_tq_limit_n)[r2]
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 842
	movhi HIGHW1(#_u1_com_tmp_mot1), r0, r2
	st.b r0, LOWW(#_u1_com_tmp_mot1)[r2]
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 843
	movhi HIGHW1(#_u1_com_tmp_mot2), r0, r2
	st.b r0, LOWW(#_u1_com_tmp_mot2)[r2]
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 844
	movhi HIGHW1(#_u1_com_tmp_int), r0, r2
	st.b r0, LOWW(#_u1_com_tmp_int)[r2]
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 846
	movhi HIGHW1(#_u1_com_tmp_igbt1), r0, r2
	st.b r0, LOWW(#_u1_com_tmp_igbt1)[r2]
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 847
	movhi HIGHW1(#_u1_com_tmp_igbt2), r0, r2
	st.b r0, LOWW(#_u1_com_tmp_igbt2)[r2]
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 848
	movhi HIGHW1(#_u1_com_tmp_igbt3), r0, r2
	st.b r0, LOWW(#_u1_com_tmp_igbt3)[r2]
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 849
	movhi HIGHW1(#_u1_com_tmp_igbt4), r0, r2
	st.b r0, LOWW(#_u1_com_tmp_igbt4)[r2]
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 850
	movhi HIGHW1(#_u1_com_tmp_igbt5), r0, r2
	st.b r0, LOWW(#_u1_com_tmp_igbt5)[r2]
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 851
	movhi HIGHW1(#_u1_com_tmp_igbt6), r0, r2
	st.b r0, LOWW(#_u1_com_tmp_igbt6)[r2]
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 853
	movhi HIGHW1(#_u4_com_flag_error), r0, r2
	st.w r0, LOWW(#_u4_com_flag_error)[r2]
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 857
	movhi HIGHW1(#_f4_com_tq_ref_tmp), r0, r2
	st.w r0, LOWW(#_f4_com_tq_ref_tmp)[r2]
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 858
	movhi HIGHW1(#_f4_com_irms_ad), r0, r2
	st.w r0, LOWW(#_f4_com_irms_ad)[r2]
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 859
	movhi HIGHW1(#_f4_com_speed_ad), r0, r2
	st.w r0, LOWW(#_f4_com_speed_ad)[r2]
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 860
	movhi HIGHW1(#_f4_com_id_ref), r0, r2
	st.w r0, LOWW(#_f4_com_id_ref)[r2]
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 861
	movhi HIGHW1(#_f4_com_iq_ref), r0, r2
	st.w r0, LOWW(#_f4_com_iq_ref)[r2]
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 862
	movhi HIGHW1(#_f4_com_irms_ref), r0, r2
	st.w r0, LOWW(#_f4_com_irms_ref)[r2]
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 863
	movhi HIGHW1(#_f4_com_theta_ref), r0, r2
	st.w r0, LOWW(#_f4_com_theta_ref)[r2]
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 864
	movhi HIGHW1(#_f4_com_id_ad), r0, r2
	st.w r0, LOWW(#_f4_com_id_ad)[r2]
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 865
	movhi HIGHW1(#_f4_com_iq_ad), r0, r2
	st.w r0, LOWW(#_f4_com_iq_ad)[r2]
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 866
	movhi HIGHW1(#_f4_com_idc_ad), r0, r2
	st.w r0, LOWW(#_f4_com_idc_ad)[r2]
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 867
	movhi HIGHW1(#_f4_com_theta_ad), r0, r2
	st.w r0, LOWW(#_f4_com_theta_ad)[r2]
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 868
	movhi HIGHW1(#_f4_com_vd_ref), r0, r2
	st.w r0, LOWW(#_f4_com_vd_ref)[r2]
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 869
	movhi HIGHW1(#_f4_com_vq_ref), r0, r2
	st.w r0, LOWW(#_f4_com_vq_ref)[r2]
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 870
	movhi HIGHW1(#_f4_com_vdc_ad), r0, r2
	st.w r0, LOWW(#_f4_com_vdc_ad)[r2]
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 871
	movhi HIGHW1(#_f4_com_vrms_ref), r0, r2
	st.w r0, LOWW(#_f4_com_vrms_ref)[r2]
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 872
	movhi HIGHW1(#_f4_com_tq_limit_p), r0, r2
	st.w r0, LOWW(#_f4_com_tq_limit_p)[r2]
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 873
	movhi HIGHW1(#_f4_com_tq_limit_n), r0, r2
	st.w r0, LOWW(#_f4_com_tq_limit_n)[r2]
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 874
	movhi HIGHW1(#_f4_com_tmp_mot1), r0, r2
	st.w r0, LOWW(#_f4_com_tmp_mot1)[r2]
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 875
	movhi HIGHW1(#_f4_com_tmp_mot2), r0, r2
	st.w r0, LOWW(#_f4_com_tmp_mot2)[r2]
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 876
	movhi HIGHW1(#_f4_com_tmp_int), r0, r2
	st.w r0, LOWW(#_f4_com_tmp_int)[r2]
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 878
	movhi HIGHW1(#_f4_com_tmp_igbt1), r0, r2
	st.w r0, LOWW(#_f4_com_tmp_igbt1)[r2]
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 879
	movhi HIGHW1(#_f4_com_tmp_igbt2), r0, r2
	st.w r0, LOWW(#_f4_com_tmp_igbt2)[r2]
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 880
	movhi HIGHW1(#_f4_com_tmp_igbt3), r0, r2
	st.w r0, LOWW(#_f4_com_tmp_igbt3)[r2]
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 881
	movhi HIGHW1(#_f4_com_tmp_igbt4), r0, r2
	st.w r0, LOWW(#_f4_com_tmp_igbt4)[r2]
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 882
	movhi HIGHW1(#_f4_com_tmp_igbt5), r0, r2
	st.w r0, LOWW(#_f4_com_tmp_igbt5)[r2]
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 883
	movhi HIGHW1(#_f4_com_tmp_igbt6), r0, r2
	st.w r0, LOWW(#_f4_com_tmp_igbt6)[r2]
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 890
	movhi HIGHW1(#_u2_cnt_10ms_tx0), r0, r2
	st.h r0, LOWW(#_u2_cnt_10ms_tx0)[r2]
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 891
	movhi HIGHW1(#_u2_cnt_100ms_tx0), r0, r2
	st.h r0, LOWW(#_u2_cnt_100ms_tx0)[r2]
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 897
	movhi HIGHW1(#_u4_status_can0_tmp), r0, r2
	st.w r0, LOWW(#_u4_status_can0_tmp)[r2]
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 898
	movhi HIGHW1(#_u4_status_can0), r0, r2
	st.w r0, LOWW(#_u4_status_can0)[r2]
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 900
	movhi HIGHW1(#_u1_flag_com_startchk), r0, r2
	st.b r0, LOWW(#_u1_flag_com_startchk)[r2]
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 901
	movhi HIGHW1(#_u2_cnt_1ms_comchk), r0, r2
	st.h r0, LOWW(#_u2_cnt_1ms_comchk)[r2]
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 902
	movhi HIGHW1(#_u2_cnt_can0_norx_max), r0, r2
	movea 0x00000032, r0, r5
	st.h r5, LOWW(#_u2_cnt_can0_norx_max)[r2]
	jmp [r31]
_fb_can0_driver_init:
	.stack _fb_can0_driver_init = 44
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 917
	prepare 0x00000679, 0x00000010
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 928
	movhi HIGHW1(#_u1_flag_can0_initerr), r0, r20
	st.b r0, LOWW(#_u1_flag_can0_initerr)[r20]
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 937
	st.b r0, 0x00000000[r3]
	mov 0x00000008, r21
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 938
	st.b r21, 0x00000002[r3]
	movea 0x00000010, r0, r22
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 939
	st.w r22, 0x00000004[r3]
	mov 0x00000000, r23
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 940
	st.b r0, 0x00000001[r3]
	mov r3, r24
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 942
	mov r23, r6
	mov r24, r7
	jarl _can_setup_rx_mbox, r31
	ld.b LOWW(#_u1_flag_can0_initerr)[r20], r2
	mov 0x00000001, r25
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 944
	st.b r25, 0x00000000[r3]
	movea 0x00000011, r0, r5
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 945
	st.b r21, 0x00000002[r3]
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 949
	mov r23, r6
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 946
	st.w r5, 0x00000004[r3]
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 942
	or r10, r2
	st.b r2, LOWW(#_u1_flag_can0_initerr)[r20]
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 949
	mov r24, r7
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 947
	st.b r0, 0x00000001[r3]
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 949
	jarl _can_setup_rx_mbox, r31
	ld.b LOWW(#_u1_flag_can0_initerr)[r20], r2
	mov 0x0000000A, r5
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 956
	mov #_CAN_MBOX_TX_ID0x020, r7
	st.b r5, 0x00000000[r7]
	movea 0x00000020, r0, r5
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 957
	st.b r21, 0x00000002[r7]
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 949
	or r10, r2
	st.b r2, LOWW(#_u1_flag_can0_initerr)[r20]
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 960
	mov r23, r6
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 958
	st.w r5, 0x00000004[r7]
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 959
	st.b r0, 0x00000001[r7]
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 960
	jarl _can_setup_tx_mbox, r31
	ld.b LOWW(#_u1_flag_can0_initerr)[r20], r2
	mov 0x0000000B, r5
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 962
	mov #_CAN_MBOX_TX_ID0x021, r7
	st.b r5, 0x00000000[r7]
	movea 0x00000021, r0, r5
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 963
	st.b r21, 0x00000002[r7]
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 960
	or r10, r2
	st.b r2, LOWW(#_u1_flag_can0_initerr)[r20]
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 966
	mov r23, r6
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 964
	st.w r5, 0x00000004[r7]
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 965
	st.b r0, 0x00000001[r7]
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 966
	jarl _can_setup_tx_mbox, r31
	ld.b LOWW(#_u1_flag_can0_initerr)[r20], r2
	mov 0x0000000C, r5
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 968
	mov #_CAN_MBOX_TX_ID0x022, r7
	st.b r5, 0x00000000[r7]
	movea 0x00000022, r0, r5
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 969
	st.b r21, 0x00000002[r7]
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 966
	or r10, r2
	st.b r2, LOWW(#_u1_flag_can0_initerr)[r20]
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 972
	mov r23, r6
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 970
	st.w r5, 0x00000004[r7]
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 971
	st.b r0, 0x00000001[r7]
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 972
	jarl _can_setup_tx_mbox, r31
	ld.b LOWW(#_u1_flag_can0_initerr)[r20], r2
	mov 0x0000000D, r5
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 974
	mov #_CAN_MBOX_TX_ID0x023, r7
	st.b r5, 0x00000000[r7]
	movea 0x00000023, r0, r5
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 975
	st.b r21, 0x00000002[r7]
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 972
	or r10, r2
	st.b r2, LOWW(#_u1_flag_can0_initerr)[r20]
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 978
	mov r23, r6
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 976
	st.w r5, 0x00000004[r7]
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 977
	st.b r0, 0x00000001[r7]
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 978
	jarl _can_setup_tx_mbox, r31
	ld.b LOWW(#_u1_flag_can0_initerr)[r20], r2
	mov 0x0000000E, r5
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 980
	mov #_CAN_MBOX_TX_ID0x024, r7
	st.b r5, 0x00000000[r7]
	movea 0x00000024, r0, r5
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 981
	st.b r21, 0x00000002[r7]
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 978
	or r10, r2
	st.b r2, LOWW(#_u1_flag_can0_initerr)[r20]
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 984
	mov r23, r6
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 982
	st.w r5, 0x00000004[r7]
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 983
	st.b r0, 0x00000001[r7]
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 984
	jarl _can_setup_tx_mbox, r31
	ld.b LOWW(#_u1_flag_can0_initerr)[r20], r2
	mov 0x0000000F, r5
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 986
	mov #_CAN_MBOX_TX_ID0x025, r7
	st.b r5, 0x00000000[r7]
	movea 0x00000025, r0, r5
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 987
	st.b r21, 0x00000002[r7]
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 984
	or r10, r2
	st.b r2, LOWW(#_u1_flag_can0_initerr)[r20]
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 990
	mov r23, r6
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 988
	st.w r5, 0x00000004[r7]
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 989
	st.b r0, 0x00000001[r7]
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 990
	jarl _can_setup_tx_mbox, r31
	ld.b LOWW(#_u1_flag_can0_initerr)[r20], r2
	movea 0x00000026, r0, r5
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 992
	mov #_CAN_MBOX_TX_ID0x026, r7
	st.b r22, 0x00000000[r7]
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 996
	mov r23, r6
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 993
	st.b r21, 0x00000002[r7]
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 990
	or r10, r2
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 994
	st.w r5, 0x00000004[r7]
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 990
	st.b r2, LOWW(#_u1_flag_can0_initerr)[r20]
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 995
	st.b r0, 0x00000001[r7]
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 996
	jarl _can_setup_tx_mbox, r31
	ld.b LOWW(#_u1_flag_can0_initerr)[r20], r2
	mov 0x00000004, r7
	movea 0x000001F4, r0, r6
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 1013
	mov r25, r8
	mov r25, r9
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 996
	or r10, r2
	st.b r2, LOWW(#_u1_flag_can0_initerr)[r20]
	.line "C:/Users/sasaas/Documents/AMDT/AMDT0530_住友商事マシネックス（トヨタテクニカルディベロップメント）様向け汎用コントローラ/E_制御関係/20170530/PE2/src/fb_can0_ctrl.c", 1013
	jarl _can0_init, r31
	dispose 0x00000010, 0x00000679, [r31]
	.section .bss, bss
_u1_flag_rx0_flag:
	.ds (1)
	.align 4
_RX_DATA_0x010:
	.ds (8)
	.align 4
_RX_DATA_0x011:
	.ds (8)
	.align 4
_TX_DATA_0x020:
	.ds (8)
	.align 4
_CAN_MBOX_TX_ID0x020:
	.ds (16)
	.align 4
_TX_DATA_0x021:
	.ds (8)
	.align 4
_CAN_MBOX_TX_ID0x021:
	.ds (16)
	.align 4
_TX_DATA_0x022:
	.ds (8)
	.align 4
_CAN_MBOX_TX_ID0x022:
	.ds (16)
	.align 4
_TX_DATA_0x023:
	.ds (8)
	.align 4
_CAN_MBOX_TX_ID0x023:
	.ds (16)
	.align 4
_TX_DATA_0x024:
	.ds (8)
	.align 4
_CAN_MBOX_TX_ID0x024:
	.ds (16)
	.align 4
_TX_DATA_0x025:
	.ds (8)
	.align 4
_CAN_MBOX_TX_ID0x025:
	.ds (16)
	.align 4
_TX_DATA_0x026:
	.ds (8)
	.align 4
_CAN_MBOX_TX_ID0x026:
	.ds (16)
_u1_flag_can0_initerr:
	.ds (1)
_u1_com_flag_state_ctrl:
	.ds (1)
_u1_com_flag_1pulse_mode:
	.ds (1)
	.align 2
_s2_com_tq_ref:
	.ds (2)
	.align 2
_s2_com_irms_ref:
	.ds (2)
	.align 2
_s2_com_theta_ref:
	.ds (2)
	.align 2
_s2_com_speed_ref:
	.ds (2)
	.align 2
_u2_com_dtq_ref:
	.ds (2)
	.align 2
_u2_com_dirms_ref:
	.ds (2)
	.align 2
_u2_com_dspeed_ref:
	.ds (2)
	.align 4
_f4_com_tq_ref:
	.ds (4)
	.align 4
_f4_com_irms_ref:
	.ds (4)
	.align 4
_f4_com_theta_ref:
	.ds (4)
	.align 4
_f4_com_speed_ref:
	.ds (4)
	.align 4
_f4_com_dtq_ref:
	.ds (4)
	.align 4
_f4_com_dirms_ref:
	.ds (4)
	.align 4
_f4_com_dspeed_ref:
	.ds (4)
_u1_flag_state_start:
	.ds (1)
_u1_com_flag_state_ctrl_tmp:
	.ds (1)
_u1_com_flag_actual_state_ctrl:
	.ds (1)
_u1_com_flag_drive_mode:
	.ds (1)
	.align 2
_s2_com_tq_ref_tmp:
	.ds (2)
	.align 2
_u2_com_irms_ad:
	.ds (2)
	.align 2
_s2_com_speed_ad:
	.ds (2)
	.align 2
_s2_com_id_ref:
	.ds (2)
	.align 2
_s2_com_iq_ref:
	.ds (2)
	.align 2
_u2_com_irms_ref:
	.ds (2)
	.align 2
_s2_com_id_ad:
	.ds (2)
	.align 2
_s2_com_iq_ad:
	.ds (2)
	.align 2
_s2_com_idc_ad:
	.ds (2)
	.align 2
_s2_com_theta_ad:
	.ds (2)
	.align 2
_s2_com_vd_ref:
	.ds (2)
	.align 2
_s2_com_vq_ref:
	.ds (2)
	.align 2
_u2_com_vdc_ad:
	.ds (2)
	.align 2
_u2_com_vrms_ref:
	.ds (2)
	.align 2
_s2_com_tq_limit_p:
	.ds (2)
	.align 2
_s2_com_tq_limit_n:
	.ds (2)
_u1_com_tmp_mot1:
	.ds (1)
_u1_com_tmp_mot2:
	.ds (1)
_u1_com_tmp_int:
	.ds (1)
_u1_com_tmp_igbt1:
	.ds (1)
_u1_com_tmp_igbt2:
	.ds (1)
_u1_com_tmp_igbt3:
	.ds (1)
_u1_com_tmp_igbt4:
	.ds (1)
_u1_com_tmp_igbt5:
	.ds (1)
_u1_com_tmp_igbt6:
	.ds (1)
	.align 4
_u4_com_flag_error:
	.ds (4)
	.align 4
_f4_com_tq_ref_tmp:
	.ds (4)
	.align 4
_f4_com_irms_ad:
	.ds (4)
	.align 4
_f4_com_speed_ad:
	.ds (4)
	.align 4
_f4_com_id_ref:
	.ds (4)
	.align 4
_f4_com_iq_ref:
	.ds (4)
	.align 4
_f4_com_id_ad:
	.ds (4)
	.align 4
_f4_com_iq_ad:
	.ds (4)
	.align 4
_f4_com_idc_ad:
	.ds (4)
	.align 4
_f4_com_theta_ad:
	.ds (4)
	.align 4
_f4_com_vd_ref:
	.ds (4)
	.align 4
_f4_com_vq_ref:
	.ds (4)
	.align 4
_f4_com_vdc_ad:
	.ds (4)
	.align 4
_f4_com_vrms_ref:
	.ds (4)
	.align 4
_f4_com_tq_limit_p:
	.ds (4)
	.align 4
_f4_com_tq_limit_n:
	.ds (4)
	.align 4
_f4_com_tmp_mot1:
	.ds (4)
	.align 4
_f4_com_tmp_mot2:
	.ds (4)
	.align 4
_f4_com_tmp_int:
	.ds (4)
	.align 4
_f4_com_tmp_igbt1:
	.ds (4)
	.align 4
_f4_com_tmp_igbt2:
	.ds (4)
	.align 4
_f4_com_tmp_igbt3:
	.ds (4)
	.align 4
_f4_com_tmp_igbt4:
	.ds (4)
	.align 4
_f4_com_tmp_igbt5:
	.ds (4)
	.align 4
_f4_com_tmp_igbt6:
	.ds (4)
	.align 2
_u2_cnt_10ms_tx0:
	.ds (2)
	.align 2
_u2_cnt_100ms_tx0:
	.ds (2)
	.align 4
_u4_status_can0_tmp:
	.ds (4)
	.align 4
_u4_status_can0:
	.ds (4)
_u1_flag_com_startchk:
	.ds (1)
	.align 2
_u2_cnt_1ms_comchk:
	.ds (2)
	.align 2
_u2_cnt_can0_norx_max:
	.ds (2)
	.align 4
_u4_chk:
	.ds (4)
	.align 4
_u4_chk_id:
	.ds (4)
