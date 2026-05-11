#CC-RH Compiler RH850 Assembler Source
#@	CC-RH Version : V2.01.00 [28 Nov 2018]
#@	Command : Common\fi_pe2_error.c ..\Common\commonPE2toPE1.c ..\Common\iolib\io_CPU.c ..\Common\iolib\io_ADC.c ..\Common\iolib\io_CSIH0.c ..\Common\iolib\io_CSIH1.c ..\Common\iolib\io_ENCA0.c ..\Common\iolib\io_ENCA1.c ..\Common\iolib\io_FCAN.c ..\Common\iolib\io_PIO_amdt0530.c ..\Common\iolib\io_RDC20.c ..\Common\iolib\io_RDC21.c ..\Common\iolib\io_SCI0_40MHz.c ..\Common\iolib\io_SCI1_40MHz.c ..\Common\iolib\io_SCI2_40MHz.c ..\Common\iolib\io_TAUD0.c ..\Common\iolib\io_TAUD1.c ..\Common\iolib\io_TAUJ0.c ..\Common\iolib\io_TSG30.c ..\Common\iolib\io_TSG31.c ..\PE1\AWatcher\VECLIB_CMDMONI.c src\fb_can1_ctrl.c src\fb_kpwm_tbl.c src\fb_therm_calc.c src\fb_vctrlerr_tbl.c src\fb_wt_inv1_enc_cmp_tbl.c src\fi_1ms_int.c src\fi_1ms_inv1_adctrl.c src\fi_1ms_inv1_almctrl.c src\fi_1ms_inv1_errctrl.c src\fi_1ms_inv1_idqcom.c src\fi_1ms_inv1_ifctrl.c src\fi_1ms_inv1_seqctrl.c src\fi_1ms_inv1_wrctrl.c src\fi_20us_int.c src\fi_20us_inv1_1pulse.c src\fi_enc1_int.c src\fi_enc1_inv1_1pulse.c src\fi_pwm_int.c src\fi_pwm_inv1_1pulse.c src\fi_pwm_inv1_adctrl.c src\fi_pwm_inv1_almctrl.c src\fi_pwm_inv1_encctrl.c src\fi_pwm_inv1_errctrl.c src\fi_pwm_inv1_idqctrl.c src\fi_pwm_inv1_invadj.c src\fi_pwm_inv1_svctrl.c src\fi_pwm_inv1_syncctrl.c src\fi_pwm_inv1_vctrlerr.c src\fi_pwm_vctrlerrtbl.c src\fi_zphase_int.c src\fpmsm_main.c src\mapdata_ld_inv1_2d.c src\mapdata_ld_inv1_2d_map.c src\mapdata_lq_inv1_2d.c src\mapdata_lq_inv1_2d_map.c src\mapdata_trq_inv1.c src\mapdata_trq_inv1_limit.c src\mapdata_trq_inv1_map.c src\mapdata_trq_inv1_map_limit.c src\mapdata_trq_inv1_map_power.c ..\PE1\src\fi_AWatcher.c -Xobj_path=DefaultBuild -Xcpu=g3m -g -g_line -Ospeed -Oinline_size -Isrc -I..\Common -D__CLK_HSB=80,__CLK_LSB=40,__CLKC_HSB=80,__CLK_CLSB=40 -use_recipf -Xasm_path=DefaultBuild -c -Xexec_time=C:\Users\fukum\AppData\Local\Temp\CSPlusBuildTool_66854fc4b1eb435c970c72aee2086311ckwmrbu1.rvm
#@	compiled at Fri Aug 21 11:47:38 2020

	.file "src\fb_can1_ctrl.c"

	$reg_mode 32

	.public _u1_flag_rx1_flag, 1
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
	.public _u1_flag_can1_initerr, 1
	.public _u1_flag_can1_debug, 1
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
	.public _f4_com_irms_ref_rx, 4
	.public _f4_com_theta_ref_rx, 4
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
	.public _f4_com_irms_ref, 4
	.public _f4_com_theta_ref, 4
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
	.public _u2_cnt_10ms_tx1, 2
	.public _u2_cnt_100ms_tx1, 2
	.public _u4_status_can1_tmp, 4
	.public _u4_status_can1, 4
	.public _u1_flag_com_startchk, 1
	.public _u2_cnt_1ms_comchk, 2
	.public _u2_cnt_can1_norx_max, 2
	.public _u4_chk, 4
	.public _u4_chk_id, 4
	.public _fb_can1_ctrl
	.extern _can_tx_data
	.public _fb_can1_rx_data
	.extern _can_rx_data
	.extern _u4_rx_fifo_chk
	.public _fb_can1_ctrl_init
	.public _fb_can1_tx_init

	.section .text, text
_fb_can1_ctrl:
	.stack _fb_can1_ctrl = 20
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fb_can1_ctrl.c", 214
	prepare 0x00000079, 0x00000000
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fb_can1_ctrl.c", 634
	mov #_CAN_MBOX_TX_ID0x026, r2
	mov #_CAN_MBOX_TX_ID0x025, r5
	mov #_CAN_MBOX_TX_ID0x024, r6
	mov #_CAN_MBOX_TX_ID0x023, r7
	mov #_CAN_MBOX_TX_ID0x022, r8
	mov #_CAN_MBOX_TX_ID0x021, r9
	mov #_CAN_MBOX_TX_ID0x020, r10
	add 0x00000008, r2
	add 0x00000008, r5
	add 0x00000008, r6
	add 0x00000008, r7
	add 0x00000008, r8
	add 0x00000008, r9
	add 0x00000008, r10
	mov 0x00000002, r18
	mov #_TX_DATA_0x026, r11
	mov #_TX_DATA_0x025, r12
	mov #_TX_DATA_0x024, r13
	mov #_TX_DATA_0x023, r14
	mov #_TX_DATA_0x022, r15
	mov #_TX_DATA_0x021, r16
	mov #_TX_DATA_0x020, r17
.BB.LABEL.1_1:	; bb.split.clone
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fb_can1_ctrl.c", 636
	ld.b 0x00000000[r17], r19
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fb_can1_ctrl.c", 637
	ld.b 0x00000000[r16], r20
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fb_can1_ctrl.c", 638
	ld.b 0x00000000[r15], r21
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fb_can1_ctrl.c", 639
	ld.b 0x00000000[r14], r22
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fb_can1_ctrl.c", 636
	st.b r19, 0x00000000[r10]
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fb_can1_ctrl.c", 640
	ld.b 0x00000000[r13], r23
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fb_can1_ctrl.c", 637
	st.b r20, 0x00000000[r9]
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fb_can1_ctrl.c", 641
	ld.b 0x00000000[r12], r19
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fb_can1_ctrl.c", 638
	st.b r21, 0x00000000[r8]
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fb_can1_ctrl.c", 642
	ld.b 0x00000000[r11], r20
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fb_can1_ctrl.c", 639
	st.b r22, 0x00000000[r7]
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fb_can1_ctrl.c", 636
	ld.b 0x00000001[r17], r21
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fb_can1_ctrl.c", 640
	st.b r23, 0x00000000[r6]
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fb_can1_ctrl.c", 637
	ld.b 0x00000001[r16], r22
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fb_can1_ctrl.c", 641
	st.b r19, 0x00000000[r5]
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fb_can1_ctrl.c", 638
	ld.b 0x00000001[r15], r23
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fb_can1_ctrl.c", 642
	st.b r20, 0x00000000[r2]
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fb_can1_ctrl.c", 639
	ld.b 0x00000001[r14], r19
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fb_can1_ctrl.c", 636
	st.b r21, 0x00000001[r10]
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fb_can1_ctrl.c", 640
	ld.b 0x00000001[r13], r20
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fb_can1_ctrl.c", 637
	st.b r22, 0x00000001[r9]
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fb_can1_ctrl.c", 641
	ld.b 0x00000001[r12], r21
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fb_can1_ctrl.c", 638
	st.b r23, 0x00000001[r8]
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fb_can1_ctrl.c", 642
	ld.b 0x00000001[r11], r22
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fb_can1_ctrl.c", 639
	st.b r19, 0x00000001[r7]
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fb_can1_ctrl.c", 636
	ld.b 0x00000002[r17], r23
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fb_can1_ctrl.c", 640
	st.b r20, 0x00000001[r6]
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fb_can1_ctrl.c", 637
	ld.b 0x00000002[r16], r19
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fb_can1_ctrl.c", 641
	st.b r21, 0x00000001[r5]
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fb_can1_ctrl.c", 638
	ld.b 0x00000002[r15], r20
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fb_can1_ctrl.c", 642
	st.b r22, 0x00000001[r2]
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fb_can1_ctrl.c", 639
	ld.b 0x00000002[r14], r21
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fb_can1_ctrl.c", 636
	st.b r23, 0x00000002[r10]
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fb_can1_ctrl.c", 640
	ld.b 0x00000002[r13], r22
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fb_can1_ctrl.c", 637
	st.b r19, 0x00000002[r9]
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fb_can1_ctrl.c", 641
	ld.b 0x00000002[r12], r23
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fb_can1_ctrl.c", 638
	st.b r20, 0x00000002[r8]
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fb_can1_ctrl.c", 642
	ld.b 0x00000002[r11], r19
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fb_can1_ctrl.c", 639
	st.b r21, 0x00000002[r7]
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fb_can1_ctrl.c", 636
	ld.b 0x00000003[r17], r20
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fb_can1_ctrl.c", 640
	st.b r22, 0x00000002[r6]
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fb_can1_ctrl.c", 637
	ld.b 0x00000003[r16], r21
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fb_can1_ctrl.c", 634
	add 0x00000004, r17
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fb_can1_ctrl.c", 641
	st.b r23, 0x00000002[r5]
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fb_can1_ctrl.c", 634
	add 0x00000004, r16
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fb_can1_ctrl.c", 638
	ld.b 0x00000003[r15], r22
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fb_can1_ctrl.c", 634
	add 0x00000004, r15
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fb_can1_ctrl.c", 642
	st.b r19, 0x00000002[r2]
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fb_can1_ctrl.c", 639
	ld.b 0x00000003[r14], r23
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fb_can1_ctrl.c", 634
	add 0x00000004, r14
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fb_can1_ctrl.c", 636
	st.b r20, 0x00000003[r10]
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fb_can1_ctrl.c", 634
	add 0x00000004, r10
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fb_can1_ctrl.c", 640
	ld.b 0x00000003[r13], r19
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fb_can1_ctrl.c", 634
	add 0x00000004, r13
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fb_can1_ctrl.c", 637
	st.b r21, 0x00000003[r9]
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fb_can1_ctrl.c", 634
	add 0x00000004, r9
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fb_can1_ctrl.c", 641
	ld.b 0x00000003[r12], r20
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fb_can1_ctrl.c", 634
	add 0x00000004, r12
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fb_can1_ctrl.c", 638
	st.b r22, 0x00000003[r8]
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fb_can1_ctrl.c", 634
	add 0x00000004, r8
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fb_can1_ctrl.c", 642
	ld.b 0x00000003[r11], r21
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fb_can1_ctrl.c", 634
	add 0x00000004, r11
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fb_can1_ctrl.c", 639
	st.b r23, 0x00000003[r7]
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fb_can1_ctrl.c", 634
	add 0x00000004, r7
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fb_can1_ctrl.c", 640
	st.b r19, 0x00000003[r6]
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fb_can1_ctrl.c", 634
	add 0x00000004, r6
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fb_can1_ctrl.c", 641
	st.b r20, 0x00000003[r5]
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fb_can1_ctrl.c", 634
	add 0x00000004, r5
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fb_can1_ctrl.c", 642
	st.b r21, 0x00000003[r2]
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fb_can1_ctrl.c", 634
	add 0x00000004, r2
	loop r18, .BB.LABEL.1_1
.BB.LABEL.1_2:	; bb66
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fb_can1_ctrl.c", 649
	movhi HIGHW1(#_u2_cnt_100ms_tx1), r0, r2
	ld.h LOWW(#_u2_cnt_100ms_tx1)[r2], r5
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fb_can1_ctrl.c", 650
	movhi HIGHW1(#_u2_cnt_10ms_tx1), r0, r6
	ld.h LOWW(#_u2_cnt_10ms_tx1)[r6], r7
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fb_can1_ctrl.c", 649
	add 0x00000001, r5
	st.h r5, LOWW(#_u2_cnt_100ms_tx1)[r2]
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fb_can1_ctrl.c", 650
	add 0x00000001, r7
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fb_can1_ctrl.c", 651
	andi 0x0000FFFF, r7, r2
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fb_can1_ctrl.c", 650
	st.h r7, LOWW(#_u2_cnt_10ms_tx1)[r6]
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fb_can1_ctrl.c", 651
	cmp 0x0000000A, r2
	blt9 .BB.LABEL.1_4
.BB.LABEL.1_3:	; if_then_bb
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fb_can1_ctrl.c", 0
	mov 0x00000001, r20
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fb_can1_ctrl.c", 653
	mov r20, r6
	mov #_CAN_MBOX_TX_ID0x020, r7
	jarl _can_tx_data, r31
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fb_can1_ctrl.c", 654
	mov #_CAN_MBOX_TX_ID0x021, r7
	mov r20, r6
	jarl _can_tx_data, r31
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fb_can1_ctrl.c", 655
	mov #_CAN_MBOX_TX_ID0x022, r7
	mov r20, r6
	jarl _can_tx_data, r31
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fb_can1_ctrl.c", 656
	mov #_CAN_MBOX_TX_ID0x023, r7
	mov r20, r6
	jarl _can_tx_data, r31
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fb_can1_ctrl.c", 657
	mov #_CAN_MBOX_TX_ID0x024, r7
	mov r20, r6
	jarl _can_tx_data, r31
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fb_can1_ctrl.c", 658
	mov #_CAN_MBOX_TX_ID0x025, r7
	mov r20, r6
	jarl _can_tx_data, r31
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fb_can1_ctrl.c", 659
	mov #_CAN_MBOX_TX_ID0x026, r7
	mov r20, r6
	jarl _can_tx_data, r31
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fb_can1_ctrl.c", 661
	movhi HIGHW1(#_u2_cnt_10ms_tx1), r0, r2
	st.h r0, LOWW(#_u2_cnt_10ms_tx1)[r2]
.BB.LABEL.1_4:	; if_break_bb
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fb_can1_ctrl.c", 665
	movhi HIGHW1(#_u2_cnt_100ms_tx1), r0, r2
	ld.hu LOWW(#_u2_cnt_100ms_tx1)[r2], r2
	addi 0xFFFFFF9C, r2, r0
	blt9 .BB.LABEL.1_6
.BB.LABEL.1_5:	; if_then_bb88
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fb_can1_ctrl.c", 667
	movhi HIGHW1(#_u2_cnt_100ms_tx1), r0, r2
	st.h r0, LOWW(#_u2_cnt_100ms_tx1)[r2]
.BB.LABEL.1_6:	; if_break_bb90
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fb_can1_ctrl.c", 686
	movhi HIGHW1(#_u1_flag_com_startchk), r0, r2
	ld.bu LOWW(#_u1_flag_com_startchk)[r2], r2
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.1_8
.BB.LABEL.1_7:	; if_then_bb96
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fb_can1_ctrl.c", 688
	movhi HIGHW1(#_u2_cnt_1ms_comchk), r0, r2
	ld.h LOWW(#_u2_cnt_1ms_comchk)[r2], r5
	add 0x00000001, r5
	st.h r5, LOWW(#_u2_cnt_1ms_comchk)[r2]
.BB.LABEL.1_8:	; if_break_bb100
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fb_can1_ctrl.c", 692
	movhi HIGHW1(#_u2_cnt_can1_norx_max), r0, r2
	movhi HIGHW1(#_u2_cnt_1ms_comchk), r0, r5
	ld.hu LOWW(#_u2_cnt_can1_norx_max)[r2], r2
	ld.hu LOWW(#_u2_cnt_1ms_comchk)[r5], r5
	cmp r5, r2
	bnh9 .BB.LABEL.1_10
.BB.LABEL.1_9:	; if_else_bb115
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fb_can1_ctrl.c", 700
	movhi HIGHW1(#_u4_status_can1), r0, r2
	clr1 0x00000001, LOWW(#_u4_status_can1)[r2]
	dispose 0x00000000, 0x00000079, [r31]
.BB.LABEL.1_10:	; if_then_bb108
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fb_can1_ctrl.c", 694
	movhi HIGHW1(#_u1_flag_com_startchk), r0, r5
	st.b r0, LOWW(#_u1_flag_com_startchk)[r5]
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fb_can1_ctrl.c", 695
	add 0x00000001, r2
	movhi HIGHW1(#_u2_cnt_1ms_comchk), r0, r5
	st.h r2, LOWW(#_u2_cnt_1ms_comchk)[r5]
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fb_can1_ctrl.c", 696
	movhi HIGHW1(#_u4_status_can1), r0, r2
	set1 0x00000001, LOWW(#_u4_status_can1)[r2]
	dispose 0x00000000, 0x00000079, [r31]
_fb_can1_rx_data:
	.stack _fb_can1_rx_data = 40
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fb_can1_ctrl.c", 720
	prepare 0x00000479, 0x00000010
	mov 0x00000001, r6
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fb_can1_ctrl.c", 735
	jarl _u4_rx_fifo_chk, r31
	cmp 0x00000001, r10
	mov 0x00000000, r20
	bnz9 .BB.LABEL.2_10
.BB.LABEL.2_1:	; bb.nph
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fb_can1_ctrl.c", 0
	mov 0x00000000, r20
	movea 0x00000008, r3, r21
	mov 0x00000001, r22
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fb_can1_ctrl.c", 739
	movhi HIGHW1(#_u4_chk), r0, r23
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fb_can1_ctrl.c", 742
	movhi HIGHW1(#_u4_chk_id), r0, r24
.BB.LABEL.2_2:	; bb
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fb_can1_ctrl.c", 0
	mov r3, r7
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fb_can1_ctrl.c", 737
	mov r22, r6
	jarl _can_rx_data, r31
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fb_can1_ctrl.c", 739
	ld.w LOWW(#_u4_chk)[r23], r2
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fb_can1_ctrl.c", 741
	ld.w 0x00000004[r3], r5
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fb_can1_ctrl.c", 739
	add 0x00000001, r2
	st.w r2, LOWW(#_u4_chk)[r23]
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fb_can1_ctrl.c", 743
	addi 0xFFFFFFF0, r5, r0
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fb_can1_ctrl.c", 742
	st.w r5, LOWW(#_u4_chk_id)[r24]
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fb_can1_ctrl.c", 743
	bz9 .BB.LABEL.2_6
.BB.LABEL.2_3:	; bb
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fb_can1_ctrl.c", 0
	addi 0xFFFFFFEF, r5, r0
	mov 0x00000002, r5
	mov #_RX_DATA_0x011, r2
	mov r21, r6
	bnz9 .BB.LABEL.2_9
.BB.LABEL.2_4:	; bb31.split.clone
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fb_can1_ctrl.c", 756
	ld.b 0x00000000[r6], r7
	ld.b 0x00000001[r6], r8
	ld.b 0x00000002[r6], r9
	ld.b 0x00000003[r6], r10
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fb_can1_ctrl.c", 754
	add 0x00000004, r6
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fb_can1_ctrl.c", 756
	st.b r7, 0x00000000[r2]
	st.b r8, 0x00000001[r2]
	st.b r9, 0x00000002[r2]
	st.b r10, 0x00000003[r2]
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fb_can1_ctrl.c", 754
	add 0x00000004, r2
	loop r5, .BB.LABEL.2_4
.BB.LABEL.2_5:	; bb48
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fb_can1_ctrl.c", 758
	ori 0x00000002, r20, r20
	br9 .BB.LABEL.2_9
.BB.LABEL.2_6:	; bb.bb11.split.clone_crit_edge
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fb_can1_ctrl.c", 0
	mov #_RX_DATA_0x010, r2
	mov 0x00000002, r5
	mov r21, r6
.BB.LABEL.2_7:	; bb11.split.clone
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fb_can1_ctrl.c", 748
	ld.b 0x00000000[r6], r7
	ld.b 0x00000001[r6], r8
	ld.b 0x00000002[r6], r9
	ld.b 0x00000003[r6], r10
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fb_can1_ctrl.c", 746
	add 0x00000004, r6
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fb_can1_ctrl.c", 748
	st.b r7, 0x00000000[r2]
	st.b r8, 0x00000001[r2]
	st.b r9, 0x00000002[r2]
	st.b r10, 0x00000003[r2]
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fb_can1_ctrl.c", 746
	add 0x00000004, r2
	loop r5, .BB.LABEL.2_7
.BB.LABEL.2_8:	; bb27
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fb_can1_ctrl.c", 750
	ori 0x00000001, r20, r20
.BB.LABEL.2_9:	; bb52
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fb_can1_ctrl.c", 735
	mov r22, r6
	jarl _u4_rx_fifo_chk, r31
	cmp 0x00000001, r10
	bz9 .BB.LABEL.2_2
.BB.LABEL.2_10:	; bb57
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fb_can1_ctrl.c", 0
	mov r20, r10
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fb_can1_ctrl.c", 769
	dispose 0x00000010, 0x00000479, [r31]
_fb_can1_ctrl_init:
	.stack _fb_can1_ctrl_init = 0
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fb_can1_ctrl.c", 786
	movhi HIGHW1(#_u1_flag_rx1_flag), r0, r2
	st.b r0, LOWW(#_u1_flag_rx1_flag)[r2]
	mov 0x00000001, r2
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fb_can1_ctrl.c", 799
	movhi HIGHW1(#_u1_flag_can1_debug), r0, r5
	st.b r2, LOWW(#_u1_flag_can1_debug)[r5]
	mov 0x00000005, r5
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fb_can1_ctrl.c", 802
	movhi HIGHW1(#_u1_com_flag_state_ctrl), r0, r6
	st.b r5, LOWW(#_u1_com_flag_state_ctrl)[r6]
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fb_can1_ctrl.c", 803
	movhi HIGHW1(#_u1_com_flag_1pulse_mode), r0, r6
	st.b r0, LOWW(#_u1_com_flag_1pulse_mode)[r6]
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fb_can1_ctrl.c", 804
	movhi HIGHW1(#_s2_com_tq_ref), r0, r6
	st.h r0, LOWW(#_s2_com_tq_ref)[r6]
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fb_can1_ctrl.c", 805
	movhi HIGHW1(#_s2_com_irms_ref), r0, r6
	st.h r0, LOWW(#_s2_com_irms_ref)[r6]
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fb_can1_ctrl.c", 807
	movhi HIGHW1(#_s2_com_speed_ref), r0, r6
	st.h r0, LOWW(#_s2_com_speed_ref)[r6]
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fb_can1_ctrl.c", 808
	movhi HIGHW1(#_u2_com_dtq_ref), r0, r6
	st.h r0, LOWW(#_u2_com_dtq_ref)[r6]
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fb_can1_ctrl.c", 809
	movhi HIGHW1(#_u2_com_dirms_ref), r0, r6
	st.h r0, LOWW(#_u2_com_dirms_ref)[r6]
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fb_can1_ctrl.c", 810
	movhi HIGHW1(#_u2_com_dspeed_ref), r0, r6
	st.h r0, LOWW(#_u2_com_dspeed_ref)[r6]
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fb_can1_ctrl.c", 814
	movhi HIGHW1(#_f4_com_tq_ref), r0, r6
	st.w r0, LOWW(#_f4_com_tq_ref)[r6]
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fb_can1_ctrl.c", 815
	movhi HIGHW1(#_f4_com_irms_ref_rx), r0, r6
	st.w r0, LOWW(#_f4_com_irms_ref_rx)[r6]
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fb_can1_ctrl.c", 816
	movhi HIGHW1(#_f4_com_theta_ref_rx), r0, r6
	st.w r0, LOWW(#_f4_com_theta_ref_rx)[r6]
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fb_can1_ctrl.c", 817
	movhi HIGHW1(#_f4_com_speed_ref), r0, r6
	st.w r0, LOWW(#_f4_com_speed_ref)[r6]
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fb_can1_ctrl.c", 818
	movhi HIGHW1(#_f4_com_dtq_ref), r0, r6
	st.w r0, LOWW(#_f4_com_dtq_ref)[r6]
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fb_can1_ctrl.c", 819
	movhi HIGHW1(#_f4_com_dirms_ref), r0, r6
	st.w r0, LOWW(#_f4_com_dirms_ref)[r6]
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fb_can1_ctrl.c", 820
	movhi HIGHW1(#_f4_com_dspeed_ref), r0, r6
	st.w r0, LOWW(#_f4_com_dspeed_ref)[r6]
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fb_can1_ctrl.c", 824
	movhi HIGHW1(#_u1_flag_state_start), r0, r6
	st.b r0, LOWW(#_u1_flag_state_start)[r6]
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fb_can1_ctrl.c", 825
	movhi HIGHW1(#_u1_com_flag_state_ctrl_tmp), r0, r6
	st.b r0, LOWW(#_u1_com_flag_state_ctrl_tmp)[r6]
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fb_can1_ctrl.c", 829
	movhi HIGHW1(#_u1_com_flag_actual_state_ctrl), r0, r6
	st.b r0, LOWW(#_u1_com_flag_actual_state_ctrl)[r6]
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fb_can1_ctrl.c", 830
	movhi HIGHW1(#_u1_com_flag_drive_mode), r0, r6
	st.b r0, LOWW(#_u1_com_flag_drive_mode)[r6]
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fb_can1_ctrl.c", 831
	movhi HIGHW1(#_s2_com_tq_ref_tmp), r0, r6
	st.h r0, LOWW(#_s2_com_tq_ref_tmp)[r6]
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fb_can1_ctrl.c", 832
	movhi HIGHW1(#_u2_com_irms_ad), r0, r6
	st.h r0, LOWW(#_u2_com_irms_ad)[r6]
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fb_can1_ctrl.c", 833
	movhi HIGHW1(#_s2_com_speed_ad), r0, r6
	st.h r0, LOWW(#_s2_com_speed_ad)[r6]
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fb_can1_ctrl.c", 834
	movhi HIGHW1(#_s2_com_id_ref), r0, r6
	st.h r0, LOWW(#_s2_com_id_ref)[r6]
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fb_can1_ctrl.c", 835
	movhi HIGHW1(#_s2_com_iq_ref), r0, r6
	st.h r0, LOWW(#_s2_com_iq_ref)[r6]
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fb_can1_ctrl.c", 836
	movhi HIGHW1(#_u2_com_irms_ref), r0, r6
	st.h r0, LOWW(#_u2_com_irms_ref)[r6]
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fb_can1_ctrl.c", 837
	movhi HIGHW1(#_s2_com_theta_ref), r0, r6
	st.h r0, LOWW(#_s2_com_theta_ref)[r6]
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fb_can1_ctrl.c", 838
	movhi HIGHW1(#_s2_com_id_ad), r0, r6
	st.h r0, LOWW(#_s2_com_id_ad)[r6]
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fb_can1_ctrl.c", 839
	movhi HIGHW1(#_s2_com_iq_ad), r0, r6
	st.h r0, LOWW(#_s2_com_iq_ad)[r6]
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fb_can1_ctrl.c", 840
	movhi HIGHW1(#_s2_com_idc_ad), r0, r6
	st.h r0, LOWW(#_s2_com_idc_ad)[r6]
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fb_can1_ctrl.c", 841
	movhi HIGHW1(#_s2_com_theta_ad), r0, r6
	st.h r0, LOWW(#_s2_com_theta_ad)[r6]
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fb_can1_ctrl.c", 842
	movhi HIGHW1(#_s2_com_vd_ref), r0, r6
	st.h r0, LOWW(#_s2_com_vd_ref)[r6]
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fb_can1_ctrl.c", 843
	movhi HIGHW1(#_s2_com_vq_ref), r0, r6
	st.h r0, LOWW(#_s2_com_vq_ref)[r6]
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fb_can1_ctrl.c", 844
	movhi HIGHW1(#_u2_com_vdc_ad), r0, r6
	st.h r0, LOWW(#_u2_com_vdc_ad)[r6]
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fb_can1_ctrl.c", 845
	movhi HIGHW1(#_u2_com_vrms_ref), r0, r6
	st.h r0, LOWW(#_u2_com_vrms_ref)[r6]
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fb_can1_ctrl.c", 846
	movhi HIGHW1(#_s2_com_tq_limit_p), r0, r6
	st.h r0, LOWW(#_s2_com_tq_limit_p)[r6]
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fb_can1_ctrl.c", 847
	movhi HIGHW1(#_s2_com_tq_limit_n), r0, r6
	st.h r0, LOWW(#_s2_com_tq_limit_n)[r6]
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fb_can1_ctrl.c", 848
	movhi HIGHW1(#_u1_com_tmp_mot1), r0, r6
	st.b r0, LOWW(#_u1_com_tmp_mot1)[r6]
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fb_can1_ctrl.c", 849
	movhi HIGHW1(#_u1_com_tmp_mot2), r0, r6
	st.b r0, LOWW(#_u1_com_tmp_mot2)[r6]
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fb_can1_ctrl.c", 850
	movhi HIGHW1(#_u1_com_tmp_int), r0, r6
	st.b r0, LOWW(#_u1_com_tmp_int)[r6]
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fb_can1_ctrl.c", 852
	movhi HIGHW1(#_u1_com_tmp_igbt1), r0, r6
	st.b r0, LOWW(#_u1_com_tmp_igbt1)[r6]
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fb_can1_ctrl.c", 853
	movhi HIGHW1(#_u1_com_tmp_igbt2), r0, r6
	st.b r0, LOWW(#_u1_com_tmp_igbt2)[r6]
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fb_can1_ctrl.c", 854
	movhi HIGHW1(#_u1_com_tmp_igbt3), r0, r6
	st.b r0, LOWW(#_u1_com_tmp_igbt3)[r6]
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fb_can1_ctrl.c", 855
	movhi HIGHW1(#_u1_com_tmp_igbt4), r0, r6
	st.b r0, LOWW(#_u1_com_tmp_igbt4)[r6]
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fb_can1_ctrl.c", 856
	movhi HIGHW1(#_u1_com_tmp_igbt5), r0, r6
	st.b r0, LOWW(#_u1_com_tmp_igbt5)[r6]
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fb_can1_ctrl.c", 857
	movhi HIGHW1(#_u1_com_tmp_igbt6), r0, r6
	st.b r0, LOWW(#_u1_com_tmp_igbt6)[r6]
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fb_can1_ctrl.c", 859
	movhi HIGHW1(#_u4_com_flag_error), r0, r6
	st.w r0, LOWW(#_u4_com_flag_error)[r6]
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fb_can1_ctrl.c", 863
	movhi HIGHW1(#_f4_com_tq_ref_tmp), r0, r6
	st.w r0, LOWW(#_f4_com_tq_ref_tmp)[r6]
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fb_can1_ctrl.c", 864
	movhi HIGHW1(#_f4_com_irms_ad), r0, r6
	st.w r0, LOWW(#_f4_com_irms_ad)[r6]
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fb_can1_ctrl.c", 865
	movhi HIGHW1(#_f4_com_speed_ad), r0, r6
	st.w r0, LOWW(#_f4_com_speed_ad)[r6]
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fb_can1_ctrl.c", 866
	movhi HIGHW1(#_f4_com_id_ref), r0, r6
	st.w r0, LOWW(#_f4_com_id_ref)[r6]
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fb_can1_ctrl.c", 867
	movhi HIGHW1(#_f4_com_iq_ref), r0, r6
	st.w r0, LOWW(#_f4_com_iq_ref)[r6]
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fb_can1_ctrl.c", 868
	movhi HIGHW1(#_f4_com_irms_ref), r0, r6
	st.w r0, LOWW(#_f4_com_irms_ref)[r6]
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fb_can1_ctrl.c", 869
	movhi HIGHW1(#_f4_com_theta_ref), r0, r6
	st.w r0, LOWW(#_f4_com_theta_ref)[r6]
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fb_can1_ctrl.c", 870
	movhi HIGHW1(#_f4_com_id_ad), r0, r6
	st.w r0, LOWW(#_f4_com_id_ad)[r6]
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fb_can1_ctrl.c", 871
	movhi HIGHW1(#_f4_com_iq_ad), r0, r6
	st.w r0, LOWW(#_f4_com_iq_ad)[r6]
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fb_can1_ctrl.c", 872
	movhi HIGHW1(#_f4_com_idc_ad), r0, r6
	st.w r0, LOWW(#_f4_com_idc_ad)[r6]
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fb_can1_ctrl.c", 873
	movhi HIGHW1(#_f4_com_theta_ad), r0, r6
	st.w r0, LOWW(#_f4_com_theta_ad)[r6]
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fb_can1_ctrl.c", 874
	movhi HIGHW1(#_f4_com_vd_ref), r0, r6
	st.w r0, LOWW(#_f4_com_vd_ref)[r6]
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fb_can1_ctrl.c", 875
	movhi HIGHW1(#_f4_com_vq_ref), r0, r6
	st.w r0, LOWW(#_f4_com_vq_ref)[r6]
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fb_can1_ctrl.c", 876
	movhi HIGHW1(#_f4_com_vdc_ad), r0, r6
	st.w r0, LOWW(#_f4_com_vdc_ad)[r6]
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fb_can1_ctrl.c", 877
	movhi HIGHW1(#_f4_com_vrms_ref), r0, r6
	st.w r0, LOWW(#_f4_com_vrms_ref)[r6]
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fb_can1_ctrl.c", 878
	movhi HIGHW1(#_f4_com_tq_limit_p), r0, r6
	st.w r0, LOWW(#_f4_com_tq_limit_p)[r6]
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fb_can1_ctrl.c", 879
	movhi HIGHW1(#_f4_com_tq_limit_n), r0, r6
	st.w r0, LOWW(#_f4_com_tq_limit_n)[r6]
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fb_can1_ctrl.c", 880
	movhi HIGHW1(#_f4_com_tmp_mot1), r0, r6
	st.w r0, LOWW(#_f4_com_tmp_mot1)[r6]
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fb_can1_ctrl.c", 881
	movhi HIGHW1(#_f4_com_tmp_mot2), r0, r6
	st.w r0, LOWW(#_f4_com_tmp_mot2)[r6]
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fb_can1_ctrl.c", 882
	movhi HIGHW1(#_f4_com_tmp_int), r0, r6
	st.w r0, LOWW(#_f4_com_tmp_int)[r6]
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fb_can1_ctrl.c", 884
	movhi HIGHW1(#_f4_com_tmp_igbt1), r0, r6
	st.w r0, LOWW(#_f4_com_tmp_igbt1)[r6]
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fb_can1_ctrl.c", 885
	movhi HIGHW1(#_f4_com_tmp_igbt2), r0, r6
	st.w r0, LOWW(#_f4_com_tmp_igbt2)[r6]
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fb_can1_ctrl.c", 886
	movhi HIGHW1(#_f4_com_tmp_igbt3), r0, r6
	st.w r0, LOWW(#_f4_com_tmp_igbt3)[r6]
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fb_can1_ctrl.c", 887
	movhi HIGHW1(#_f4_com_tmp_igbt4), r0, r6
	st.w r0, LOWW(#_f4_com_tmp_igbt4)[r6]
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fb_can1_ctrl.c", 888
	movhi HIGHW1(#_f4_com_tmp_igbt5), r0, r6
	st.w r0, LOWW(#_f4_com_tmp_igbt5)[r6]
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fb_can1_ctrl.c", 889
	movhi HIGHW1(#_f4_com_tmp_igbt6), r0, r6
	st.w r0, LOWW(#_f4_com_tmp_igbt6)[r6]
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fb_can1_ctrl.c", 896
	movhi HIGHW1(#_u2_cnt_10ms_tx1), r0, r6
	st.h r0, LOWW(#_u2_cnt_10ms_tx1)[r6]
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fb_can1_ctrl.c", 897
	movhi HIGHW1(#_u2_cnt_100ms_tx1), r0, r6
	st.h r0, LOWW(#_u2_cnt_100ms_tx1)[r6]
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fb_can1_ctrl.c", 903
	movhi HIGHW1(#_u4_status_can1_tmp), r0, r6
	st.w r0, LOWW(#_u4_status_can1_tmp)[r6]
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fb_can1_ctrl.c", 904
	movhi HIGHW1(#_u4_status_can1), r0, r6
	st.w r0, LOWW(#_u4_status_can1)[r6]
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fb_can1_ctrl.c", 906
	movhi HIGHW1(#_u1_flag_com_startchk), r0, r6
	st.b r0, LOWW(#_u1_flag_com_startchk)[r6]
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fb_can1_ctrl.c", 907
	movhi HIGHW1(#_u2_cnt_1ms_comchk), r0, r6
	st.h r0, LOWW(#_u2_cnt_1ms_comchk)[r6]
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fb_can1_ctrl.c", 908
	movhi HIGHW1(#_u2_cnt_can1_norx_max), r0, r6
	movea 0x0000012C, r0, r7
	st.h r7, LOWW(#_u2_cnt_can1_norx_max)[r6]
	mov 0x00000008, r7
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fb_can1_ctrl.c", 940
	mov #_CAN_MBOX_TX_ID0x020, r6
	st.b r0, 0x00000000[r6]
	movea 0x00000020, r0, r8
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fb_can1_ctrl.c", 941
	st.b r7, 0x00000002[r6]
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fb_can1_ctrl.c", 942
	st.w r8, 0x00000004[r6]
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fb_can1_ctrl.c", 943
	st.b r0, 0x00000001[r6]
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fb_can1_ctrl.c", 945
	mov #_CAN_MBOX_TX_ID0x021, r6
	st.b r2, 0x00000000[r6]
	movea 0x00000021, r0, r2
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fb_can1_ctrl.c", 946
	st.b r7, 0x00000002[r6]
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fb_can1_ctrl.c", 947
	st.w r2, 0x00000004[r6]
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fb_can1_ctrl.c", 948
	st.b r0, 0x00000001[r6]
	mov 0x00000002, r6
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fb_can1_ctrl.c", 950
	mov #_CAN_MBOX_TX_ID0x022, r2
	st.b r6, 0x00000000[r2]
	movea 0x00000022, r0, r6
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fb_can1_ctrl.c", 951
	st.b r7, 0x00000002[r2]
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fb_can1_ctrl.c", 952
	st.w r6, 0x00000004[r2]
	mov 0x00000003, r6
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fb_can1_ctrl.c", 953
	st.b r0, 0x00000001[r2]
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fb_can1_ctrl.c", 955
	mov #_CAN_MBOX_TX_ID0x023, r2
	st.b r6, 0x00000000[r2]
	movea 0x00000023, r0, r6
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fb_can1_ctrl.c", 956
	st.b r7, 0x00000002[r2]
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fb_can1_ctrl.c", 957
	st.w r6, 0x00000004[r2]
	mov 0x00000004, r6
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fb_can1_ctrl.c", 958
	st.b r0, 0x00000001[r2]
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fb_can1_ctrl.c", 960
	mov #_CAN_MBOX_TX_ID0x024, r2
	st.b r6, 0x00000000[r2]
	movea 0x00000024, r0, r6
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fb_can1_ctrl.c", 961
	st.b r7, 0x00000002[r2]
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fb_can1_ctrl.c", 962
	st.w r6, 0x00000004[r2]
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fb_can1_ctrl.c", 963
	st.b r0, 0x00000001[r2]
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fb_can1_ctrl.c", 965
	mov #_CAN_MBOX_TX_ID0x025, r2
	st.b r5, 0x00000000[r2]
	movea 0x00000025, r0, r5
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fb_can1_ctrl.c", 966
	st.b r7, 0x00000002[r2]
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fb_can1_ctrl.c", 967
	st.w r5, 0x00000004[r2]
	mov 0x00000006, r5
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fb_can1_ctrl.c", 968
	st.b r0, 0x00000001[r2]
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fb_can1_ctrl.c", 970
	mov #_CAN_MBOX_TX_ID0x026, r2
	st.b r5, 0x00000000[r2]
	movea 0x00000026, r0, r5
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fb_can1_ctrl.c", 971
	st.b r7, 0x00000002[r2]
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fb_can1_ctrl.c", 972
	st.w r5, 0x00000004[r2]
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fb_can1_ctrl.c", 973
	st.b r0, 0x00000001[r2]
	jmp [r31]
_fb_can1_tx_init:
	.stack _fb_can1_tx_init = 0
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fb_can1_ctrl.c", 940
	mov #_CAN_MBOX_TX_ID0x020, r2
	st.b r0, 0x00000000[r2]
	mov 0x00000008, r5
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fb_can1_ctrl.c", 941
	st.b r5, 0x00000002[r2]
	movea 0x00000020, r0, r6
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fb_can1_ctrl.c", 942
	st.w r6, 0x00000004[r2]
	mov 0x00000001, r6
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fb_can1_ctrl.c", 943
	st.b r0, 0x00000001[r2]
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fb_can1_ctrl.c", 945
	mov #_CAN_MBOX_TX_ID0x021, r2
	st.b r6, 0x00000000[r2]
	movea 0x00000021, r0, r6
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fb_can1_ctrl.c", 946
	st.b r5, 0x00000002[r2]
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fb_can1_ctrl.c", 947
	st.w r6, 0x00000004[r2]
	mov 0x00000002, r6
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fb_can1_ctrl.c", 948
	st.b r0, 0x00000001[r2]
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fb_can1_ctrl.c", 950
	mov #_CAN_MBOX_TX_ID0x022, r2
	st.b r6, 0x00000000[r2]
	movea 0x00000022, r0, r6
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fb_can1_ctrl.c", 951
	st.b r5, 0x00000002[r2]
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fb_can1_ctrl.c", 952
	st.w r6, 0x00000004[r2]
	mov 0x00000003, r6
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fb_can1_ctrl.c", 953
	st.b r0, 0x00000001[r2]
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fb_can1_ctrl.c", 955
	mov #_CAN_MBOX_TX_ID0x023, r2
	st.b r6, 0x00000000[r2]
	movea 0x00000023, r0, r6
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fb_can1_ctrl.c", 956
	st.b r5, 0x00000002[r2]
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fb_can1_ctrl.c", 957
	st.w r6, 0x00000004[r2]
	mov 0x00000004, r6
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fb_can1_ctrl.c", 958
	st.b r0, 0x00000001[r2]
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fb_can1_ctrl.c", 960
	mov #_CAN_MBOX_TX_ID0x024, r2
	st.b r6, 0x00000000[r2]
	movea 0x00000024, r0, r6
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fb_can1_ctrl.c", 961
	st.b r5, 0x00000002[r2]
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fb_can1_ctrl.c", 962
	st.w r6, 0x00000004[r2]
	mov 0x00000005, r6
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fb_can1_ctrl.c", 963
	st.b r0, 0x00000001[r2]
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fb_can1_ctrl.c", 965
	mov #_CAN_MBOX_TX_ID0x025, r2
	st.b r6, 0x00000000[r2]
	movea 0x00000025, r0, r6
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fb_can1_ctrl.c", 966
	st.b r5, 0x00000002[r2]
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fb_can1_ctrl.c", 967
	st.w r6, 0x00000004[r2]
	mov 0x00000006, r6
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fb_can1_ctrl.c", 968
	st.b r0, 0x00000001[r2]
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fb_can1_ctrl.c", 970
	mov #_CAN_MBOX_TX_ID0x026, r2
	st.b r6, 0x00000000[r2]
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fb_can1_ctrl.c", 971
	st.b r5, 0x00000002[r2]
	movea 0x00000026, r0, r5
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fb_can1_ctrl.c", 972
	st.w r5, 0x00000004[r2]
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fb_can1_ctrl.c", 973
	st.b r0, 0x00000001[r2]
	jmp [r31]
	.section .bss, bss
_u1_flag_rx1_flag:
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
_u1_flag_can1_initerr:
	.ds (1)
_u1_flag_can1_debug:
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
_f4_com_irms_ref_rx:
	.ds (4)
	.align 4
_f4_com_theta_ref_rx:
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
_f4_com_irms_ref:
	.ds (4)
	.align 4
_f4_com_theta_ref:
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
_u2_cnt_10ms_tx1:
	.ds (2)
	.align 2
_u2_cnt_100ms_tx1:
	.ds (2)
	.align 4
_u4_status_can1_tmp:
	.ds (4)
	.align 4
_u4_status_can1:
	.ds (4)
_u1_flag_com_startchk:
	.ds (1)
	.align 2
_u2_cnt_1ms_comchk:
	.ds (2)
	.align 2
_u2_cnt_can1_norx_max:
	.ds (2)
	.align 4
_u4_chk:
	.ds (4)
	.align 4
_u4_chk_id:
	.ds (4)
