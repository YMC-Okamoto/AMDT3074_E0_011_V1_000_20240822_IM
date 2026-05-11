#CC-RH Compiler RH850 Assembler Source
#@	CC-RH Version : V2.01.00 [28 Nov 2018]
#@	Command : Common\fi_pe2_error.c ..\Common\commonPE2toPE1.c ..\Common\iolib\io_CPU.c ..\Common\iolib\io_ADC.c ..\Common\iolib\io_CSIH0.c ..\Common\iolib\io_CSIH1.c ..\Common\iolib\io_ENCA0.c ..\Common\iolib\io_ENCA1.c ..\Common\iolib\io_FCAN.c ..\Common\iolib\io_PIO_amdt0530.c ..\Common\iolib\io_RDC20.c ..\Common\iolib\io_RDC21.c ..\Common\iolib\io_SCI0_40MHz.c ..\Common\iolib\io_SCI1_40MHz.c ..\Common\iolib\io_SCI2_40MHz.c ..\Common\iolib\io_TAUD0.c ..\Common\iolib\io_TAUD1.c ..\Common\iolib\io_TAUJ0.c ..\Common\iolib\io_TSG30.c ..\Common\iolib\io_TSG31.c ..\PE1\AWatcher\VECLIB_CMDMONI.c src\fb_can1_ctrl.c src\fb_kpwm_tbl.c src\fb_therm_calc.c src\fb_vctrlerr_tbl.c src\fb_wt_inv1_enc_cmp_tbl.c src\fi_1ms_int.c src\fi_1ms_inv1_adctrl.c src\fi_1ms_inv1_almctrl.c src\fi_1ms_inv1_errctrl.c src\fi_1ms_inv1_idqcom.c src\fi_1ms_inv1_ifctrl.c src\fi_1ms_inv1_seqctrl.c src\fi_1ms_inv1_wrctrl.c src\fi_20us_int.c src\fi_20us_inv1_1pulse.c src\fi_enc1_int.c src\fi_enc1_inv1_1pulse.c src\fi_pwm_int.c src\fi_pwm_inv1_1pulse.c src\fi_pwm_inv1_adctrl.c src\fi_pwm_inv1_almctrl.c src\fi_pwm_inv1_encctrl.c src\fi_pwm_inv1_errctrl.c src\fi_pwm_inv1_idqctrl.c src\fi_pwm_inv1_invadj.c src\fi_pwm_inv1_svctrl.c src\fi_pwm_inv1_syncctrl.c src\fi_pwm_inv1_vctrlerr.c src\fi_pwm_vctrlerrtbl.c src\fi_zphase_int.c src\fpmsm_main.c src\mapdata_ld_inv1_2d.c src\mapdata_ld_inv1_2d_map.c src\mapdata_lq_inv1_2d.c src\mapdata_lq_inv1_2d_map.c src\mapdata_trq_inv1.c src\mapdata_trq_inv1_limit.c src\mapdata_trq_inv1_map.c src\mapdata_trq_inv1_map_limit.c src\mapdata_trq_inv1_map_power.c ..\PE1\src\fi_AWatcher.c -Xobj_path=DefaultBuild -Xcpu=g3m -g -g_line -Ospeed -Oinline_size -Isrc -I..\Common -D__CLK_HSB=80,__CLK_LSB=40,__CLKC_HSB=80,__CLK_CLSB=40 -use_recipf -Xasm_path=DefaultBuild -c -Xexec_time=C:\Users\fukum\AppData\Local\Temp\CSPlusBuildTool_66854fc4b1eb435c970c72aee2086311ckwmrbu1.rvm
#@	compiled at Fri Aug 21 11:47:38 2020

	.file "src\fi_zphase_int.c"

	$reg_mode 32

	.extern _f4_wt_inv1_enc_ctrl
	.extern _f4_wt_inv1_enc_adj
	.extern _u4_wt_inv1_enc_cmp_adj
	.extern _u4_wt_inv1_enc_cmp_adj_max
	.public _u1_cnt_zphase, 1
	.public _fi_zphase_int

	.section .text, text
_fi_zphase_int:
	.stack _fi_zphase_int = 52
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fi_zphase_int.c", 55
	movea 0xFFFFFFCC, r3, r3
	st23.dw r6, 0x00000024[r3]
	stsr 0x00000000, r6, 0x00000000
	stsr 0x00000001, r7, 0x00000000
	st23.dw r6, 0x00000000[r3]
	st.w r1, 0x00000018[r3]
	st.w r2, 0x0000001C[r3]
	st.w r5, 0x00000020[r3]
	st23.dw r8, 0x0000002C[r3]
	stsr 0x00000010, r8, 0x00000000
	stsr 0x00000011, r9, 0x00000000
	st23.dw r8, 0x00000008[r3]
	stsr 0x00000007, r8, 0x00000000
	stsr 0x00000006, r9, 0x00000000
	st23.dw r8, 0x00000010[r3]
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fi_zphase_int.c", 60
	movhi HIGHW1(#_u1_cnt_zphase), r0, r2
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fi_zphase_int.c", 62
	movhi HIGHW1(#_u4_wt_inv1_enc_cmp_adj), r0, r6
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fi_zphase_int.c", 60
	ld.b LOWW(#_u1_cnt_zphase)[r2], r5
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fi_zphase_int.c", 62
	movhi HIGHW1(#_u4_wt_inv1_enc_cmp_adj_max), r0, r8
	ld.w LOWW(#_u4_wt_inv1_enc_cmp_adj)[r6], r7
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fi_zphase_int.c", 63
	st.w r0, LOWW(#_u4_wt_inv1_enc_cmp_adj)[r6]
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fi_zphase_int.c", 64
	movhi HIGHW1(#_f4_wt_inv1_enc_ctrl), r0, r6
	ld.w LOWW(#_f4_wt_inv1_enc_ctrl)[r6], r6
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fi_zphase_int.c", 60
	add 0x00000001, r5
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fi_zphase_int.c", 62
	st.w r7, LOWW(#_u4_wt_inv1_enc_cmp_adj_max)[r8]
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fi_zphase_int.c", 60
	st.b r5, LOWW(#_u1_cnt_zphase)[r2]
	.line "C:/Users/fukum/OneDrive/Documents/プロジェクト/AMDT1686_IJTT様向けモータ駆動用インバータ/E_ソフト/20200821/PE2/src/fi_zphase_int.c", 64
	movhi HIGHW1(#_f4_wt_inv1_enc_adj), r0, r2
	ld23.dw 0x00000010[r3], r8
	st.w r6, LOWW(#_f4_wt_inv1_enc_adj)[r2]
	ldsr r9, 6
	ldsr r8, 0x00000007, 0x00000000
	ld23.dw 0x00000008[r3], r8
	ldsr r9, 0x00000011, 0x00000000
	ldsr r8, 0x00000010, 0x00000000
	ld23.dw 0x0000002C[r3], r8
	ld.w 0x00000020[r3], r5
	ld.w 0x0000001C[r3], r2
	ld.w 0x00000018[r3], r1
	ld23.dw 0x00000000[r3], r6
	ldsr r7, 0x00000001, 0x00000000
	ldsr r6, 0x00000000, 0x00000000
	ld23.dw 0x00000024[r3], r6
	movea 0x00000034, r3, r3
	eiret
	.section .bss, bss
_u1_cnt_zphase:
	.ds (1)
