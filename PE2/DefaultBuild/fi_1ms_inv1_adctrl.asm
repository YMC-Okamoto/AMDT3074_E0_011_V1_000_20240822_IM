#CC-RH Compiler RH850 Assembler Source
#@	CC-RH Version : V2.06.00  [28 Nov 2023]
#@	Command : Common\fi_pe2_error.c ..\Common\iolib\io_CPU.c ..\Common\iolib\io_ADC.c ..\Common\iolib\io_CSIH0.c ..\Common\iolib\io_CSIH1.c ..\Common\iolib\io_ENCA0.c ..\Common\iolib\io_ENCA1.c ..\Common\iolib\io_FCAN.c ..\Common\iolib\io_RDC20.c ..\Common\iolib\io_RDC21.c ..\Common\iolib\io_SCI0_40MHz.c ..\Common\iolib\io_SCI1_40MHz.c ..\Common\iolib\io_SCI2_40MHz.c ..\Common\iolib\io_TAUD0.c ..\Common\iolib\io_TAUD1.c ..\Common\iolib\io_TAUJ0.c ..\Common\iolib\io_TSG30.c ..\Common\iolib\io_TSG31.c ..\PE1\AWatcher\VECLIB_CMDMONI.c src\fpmsm_main.c ..\PE1\src\fi_AWatcher.c src\fi_1ms_int.c src\fi_1ms_inv1_adctrl.c src\fi_1ms_inv1_errctrl.c src\fi_20us_int.c src\fi_20us_inv1_1pulse.c src\fi_enc1_int.c src\fi_enc1_inv1_1pulse.c src\fi_pwm_int.c src\fi_pwm_inv1_1pulse.c src\fi_pwm_inv1_adctrl.c src\fi_pwm_inv1_encctrl.c src\fi_pwm_inv1_errctrl.c src\fi_pwm_inv1_idqctrl.c src\fi_pwm_inv1_invadj.c src\fi_pwm_inv1_svctrl.c src\fi_pwm_inv1_syncctrl.c src\fi_pwm_inv1_vctrlerr.c src\mapdata_ld_inv1_2d.c src\mapdata_ld_inv1_2d_map.c src\mapdata_lq_inv1_2d.c src\mapdata_lq_inv1_2d_map.c ..\PE1\src\fb_kpwm_tbl.c ..\PE1\src\fb_therm_calc.c ..\PE1\src\fb_therm_tbl_module.c ..\PE1\src\fb_vctrlerr_tbl.c src\fi_1ms_inv1_idqcom.c ..\PE1\src\fi_pwm_vctrlerrtbl.c src\fi_1ms_inv1_seqctrl.c ..\Common\iolib\io_PIO_amdt0530.c -Xobj_path=DefaultBuild -Xcpu=g3m -g -g_line -Ospeed -Oinline_size -I..\PE1\src -Isrc -I..\Common -D__CLK_HSB=80,__CLK_LSB=40,__CLKC_HSB=80,__CLK_CLSB=40 -use_recipf -Xasm_path=DefaultBuild -c
#@	compiled at Thu May 23 14:28:27 2024

	.file "src\fi_1ms_inv1_adctrl.c"

	$reg_mode 32
	.dbl_size 8

	.extern _f4_tmp_inv1_igbt_up
	.extern _f4_tmp_inv1_igbt_vp
	.extern _f4_tmp_inv1_igbt_wp
	.extern _f4_tmp_inv1_igbt_un
	.extern _f4_tmp_inv1_igbt_vn
	.extern _f4_tmp_inv1_igbt_wn
	.extern _f4_tmp_inv1_igbt_max
	.extern _f4_tmp_inv1_mot1
	.extern _f4_tmp_inv1_mot2
	.extern _f4_tmp_inv1_mot_max
	.extern _f4_tmp_inv1_int
	.extern _s2_ad_inv1_tmp_igbt_up
	.extern _s2_ad_inv1_tmp_igbt_un
	.extern _s2_ad_inv1_tmp_igbt_vp
	.extern _s2_ad_inv1_tmp_igbt_vn
	.extern _s2_ad_inv1_tmp_igbt_wp
	.extern _s2_ad_inv1_tmp_igbt_wn
	.extern _s2_ad_inv1_tmp_mot1
	.extern _s2_ad_inv1_tmp_mot2
	.public _th_IGBT, 36
	.public _th_103JT, 36
	.public _th_MOTOR1_INV1, 36
	.public _th_MOTOR2_INV1, 36
	.public _th_493HT, 36
	.public _th_AL03006_1753K_98_G1, 36
	.public _th_PSB_S3, 36
	.public _th_NCP18XH103, 36
	.public _th_NCU18WB473F6SRB_10k, 36
	.public _f4_tmp_inv1_igbtp_max, 4
	.public _f4_tmp_inv1_igbtn_max, 4
	.public _f4_wclpf_inv1_tmp, 4
	.public _fi_1ms_inv1_adctrl
	.extern _f4_thermister_calc_2_8
	.public _fb_1ms_inv1_adctrl_init

	.section .text, text
_fi_1ms_inv1_adctrl:
	.stack _fi_1ms_inv1_adctrl = 52
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_adctrl.c", 83
	prepare 0x00000679, 0x00000018
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_adctrl.c", 94
	movhi HIGHW1(#_s2_ad_inv1_tmp_igbt_up), r0, r2
	ld.hu LOWW(#_s2_ad_inv1_tmp_igbt_up)[r2], r6
	mov #_th_NCU18WB473F6SRB_10k, r20
	ld.w 0x0000000C[r20], r2
	ld.w 0x00000010[r20], r5
	ld.w 0x00000014[r20], r10
	ld.w 0x00000018[r20], r11
	ld.w 0x0000001C[r20], r12
	ld.w 0x00000020[r20], r13
	ld23.dw 0x00000004[r20], r8
	ld.w 0x00000000[r20], r7
	st.w r2, 0x00000000[r3]
	st.w r5, 0x00000004[r3]
	st.w r10, 0x00000008[r3]
	st.w r11, 0x0000000C[r3]
	st.w r12, 0x00000010[r3]
	st.w r13, 0x00000014[r3]
	jarl _f4_thermister_calc_2_8, r31
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_adctrl.c", 95
	mov #_f4_tmp_inv1_igbt_up, r21
	ld.w 0x00000000[r21], r7
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_adctrl.c", 96
	movhi HIGHW1(#_f4_wclpf_inv1_tmp), r0, r22
	ld.w LOWW(#_f4_wclpf_inv1_tmp)[r22], r9
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_adctrl.c", 98
	movhi HIGHW1(#_s2_ad_inv1_tmp_igbt_vp), r0, r6
	mov 0x3A83126F, r23
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_adctrl.c", 95
	subf.s r7, r10, r7
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_adctrl.c", 96
	ld.w 0x00000000[r21], r8
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_adctrl.c", 98
	ld.w 0x0000000C[r20], r2
	ld.w 0x00000010[r20], r5
	ld.w 0x00000014[r20], r11
	ld.w 0x00000018[r20], r12
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_adctrl.c", 96
	mulf.s r7, r9, r7
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_adctrl.c", 98
	ld.w 0x0000001C[r20], r13
	ld.w 0x00000020[r20], r14
	ld.hu LOWW(#_s2_ad_inv1_tmp_igbt_vp)[r6], r6
	st.w r2, 0x00000000[r3]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_adctrl.c", 96
	mulf.s r23, r7, r7
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_adctrl.c", 98
	st.w r5, 0x00000004[r3]
	st.w r11, 0x00000008[r3]
	st.w r12, 0x0000000C[r3]
	st.w r13, 0x00000010[r3]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_adctrl.c", 96
	addf.s r7, r8, r7
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_adctrl.c", 98
	ld23.dw 0x00000004[r20], r8
	st.w r14, 0x00000014[r3]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_adctrl.c", 96
	st.w r7, 0x00000000[r21]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_adctrl.c", 98
	ld.w 0x00000000[r20], r7
	jarl _f4_thermister_calc_2_8, r31
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_adctrl.c", 99
	mov #_f4_tmp_inv1_igbt_vp, r24
	ld.w 0x00000000[r24], r7
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_adctrl.c", 102
	movhi HIGHW1(#_s2_ad_inv1_tmp_igbt_wp), r0, r6
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_adctrl.c", 100
	ld.w LOWW(#_f4_wclpf_inv1_tmp)[r22], r2
	ld.w 0x00000000[r24], r8
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_adctrl.c", 102
	ld.w 0x0000000C[r20], r5
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_adctrl.c", 99
	subf.s r7, r10, r7
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_adctrl.c", 102
	ld.w 0x00000010[r20], r11
	ld.w 0x00000014[r20], r12
	ld.w 0x00000018[r20], r13
	ld.w 0x0000001C[r20], r14
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_adctrl.c", 100
	mulf.s r7, r2, r2
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_adctrl.c", 102
	ld.w 0x00000020[r20], r15
	ld.hu LOWW(#_s2_ad_inv1_tmp_igbt_wp)[r6], r6
	ld.w 0x00000000[r20], r7
	st.w r5, 0x00000000[r3]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_adctrl.c", 100
	mulf.s r23, r2, r2
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_adctrl.c", 102
	st.w r11, 0x00000004[r3]
	st.w r12, 0x00000008[r3]
	st.w r13, 0x0000000C[r3]
	st.w r14, 0x00000010[r3]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_adctrl.c", 100
	addf.s r2, r8, r2
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_adctrl.c", 102
	ld23.dw 0x00000004[r20], r8
	st.w r15, 0x00000014[r3]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_adctrl.c", 100
	st.w r2, 0x00000000[r24]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_adctrl.c", 102
	jarl _f4_thermister_calc_2_8, r31
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_adctrl.c", 103
	movhi HIGHW1(#_f4_tmp_inv1_igbt_wp), r0, r25
	ld.w LOWW(#_f4_tmp_inv1_igbt_wp)[r25], r7
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_adctrl.c", 104
	ld.w LOWW(#_f4_wclpf_inv1_tmp)[r22], r2
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_adctrl.c", 106
	movhi HIGHW1(#_s2_ad_inv1_tmp_igbt_un), r0, r6
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_adctrl.c", 104
	ld.w LOWW(#_f4_tmp_inv1_igbt_wp)[r25], r8
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_adctrl.c", 106
	ld.w 0x0000000C[r20], r5
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_adctrl.c", 103
	subf.s r7, r10, r7
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_adctrl.c", 106
	ld.w 0x00000010[r20], r11
	ld.w 0x00000014[r20], r12
	ld.w 0x00000018[r20], r13
	ld.w 0x0000001C[r20], r14
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_adctrl.c", 104
	mulf.s r7, r2, r2
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_adctrl.c", 106
	ld.w 0x00000020[r20], r15
	ld.hu LOWW(#_s2_ad_inv1_tmp_igbt_un)[r6], r6
	ld.w 0x00000000[r20], r7
	st.w r5, 0x00000000[r3]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_adctrl.c", 104
	mulf.s r23, r2, r2
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_adctrl.c", 106
	st.w r11, 0x00000004[r3]
	st.w r12, 0x00000008[r3]
	st.w r13, 0x0000000C[r3]
	st.w r14, 0x00000010[r3]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_adctrl.c", 104
	addf.s r2, r8, r2
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_adctrl.c", 106
	ld23.dw 0x00000004[r20], r8
	st.w r15, 0x00000014[r3]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_adctrl.c", 104
	st.w r2, LOWW(#_f4_tmp_inv1_igbt_wp)[r25]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_adctrl.c", 106
	jarl _f4_thermister_calc_2_8, r31
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_adctrl.c", 107
	movhi HIGHW1(#_f4_tmp_inv1_igbt_un), r0, r7
	ld.w LOWW(#_f4_tmp_inv1_igbt_un)[r7], r8
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_adctrl.c", 108
	ld.w LOWW(#_f4_wclpf_inv1_tmp)[r22], r2
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_adctrl.c", 110
	movhi HIGHW1(#_s2_ad_inv1_tmp_igbt_vn), r0, r6
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_adctrl.c", 108
	ld.w LOWW(#_f4_tmp_inv1_igbt_un)[r7], r9
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_adctrl.c", 110
	ld.w 0x0000000C[r20], r5
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_adctrl.c", 107
	subf.s r8, r10, r8
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_adctrl.c", 110
	ld.w 0x00000010[r20], r11
	ld.w 0x00000014[r20], r12
	ld.w 0x00000018[r20], r13
	ld.w 0x0000001C[r20], r14
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_adctrl.c", 108
	mulf.s r8, r2, r2
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_adctrl.c", 110
	ld.w 0x00000020[r20], r15
	ld.hu LOWW(#_s2_ad_inv1_tmp_igbt_vn)[r6], r6
	st.w r5, 0x00000000[r3]
	st.w r11, 0x00000004[r3]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_adctrl.c", 108
	mulf.s r23, r2, r2
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_adctrl.c", 110
	st.w r12, 0x00000008[r3]
	st.w r13, 0x0000000C[r3]
	st.w r14, 0x00000010[r3]
	st.w r15, 0x00000014[r3]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_adctrl.c", 108
	addf.s r2, r9, r2
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_adctrl.c", 110
	ld23.dw 0x00000004[r20], r8
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_adctrl.c", 108
	st.w r2, LOWW(#_f4_tmp_inv1_igbt_un)[r7]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_adctrl.c", 110
	ld.w 0x00000000[r20], r7
	jarl _f4_thermister_calc_2_8, r31
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_adctrl.c", 111
	movhi HIGHW1(#_f4_tmp_inv1_igbt_vn), r0, r7
	ld.w LOWW(#_f4_tmp_inv1_igbt_vn)[r7], r8
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_adctrl.c", 112
	ld.w LOWW(#_f4_wclpf_inv1_tmp)[r22], r2
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_adctrl.c", 114
	movhi HIGHW1(#_s2_ad_inv1_tmp_igbt_wn), r0, r6
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_adctrl.c", 112
	ld.w LOWW(#_f4_tmp_inv1_igbt_vn)[r7], r9
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_adctrl.c", 114
	ld.w 0x0000000C[r20], r5
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_adctrl.c", 111
	subf.s r8, r10, r8
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_adctrl.c", 114
	ld.w 0x00000010[r20], r11
	ld.w 0x00000014[r20], r12
	ld.w 0x00000018[r20], r13
	ld.w 0x0000001C[r20], r14
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_adctrl.c", 112
	mulf.s r8, r2, r2
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_adctrl.c", 114
	ld.w 0x00000020[r20], r15
	ld.hu LOWW(#_s2_ad_inv1_tmp_igbt_wn)[r6], r6
	st.w r5, 0x00000000[r3]
	st.w r11, 0x00000004[r3]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_adctrl.c", 112
	mulf.s r23, r2, r2
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_adctrl.c", 114
	st.w r12, 0x00000008[r3]
	st.w r13, 0x0000000C[r3]
	st.w r14, 0x00000010[r3]
	st.w r15, 0x00000014[r3]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_adctrl.c", 112
	addf.s r2, r9, r2
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_adctrl.c", 114
	ld23.dw 0x00000004[r20], r8
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_adctrl.c", 112
	st.w r2, LOWW(#_f4_tmp_inv1_igbt_vn)[r7]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_adctrl.c", 114
	ld.w 0x00000000[r20], r7
	jarl _f4_thermister_calc_2_8, r31
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_adctrl.c", 115
	movhi HIGHW1(#_f4_tmp_inv1_igbt_wn), r0, r5
	ld.w LOWW(#_f4_tmp_inv1_igbt_wn)[r5], r6
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_adctrl.c", 116
	ld.w LOWW(#_f4_wclpf_inv1_tmp)[r22], r2
	ld.w LOWW(#_f4_tmp_inv1_igbt_wn)[r5], r7
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_adctrl.c", 115
	subf.s r6, r10, r6
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_adctrl.c", 116
	mulf.s r6, r2, r2
	mulf.s r23, r2, r2
	addf.s r2, r7, r2
	st.w r2, LOWW(#_f4_tmp_inv1_igbt_wn)[r5]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_adctrl.c", 127
	ld.w 0x00000000[r21], r2
	ld.w 0x00000000[r24], r5
	cmpf.s 0x00000004, r5, r2
	cmovf.s 0, r21, r24, r2
	ld.w 0x00000000[r2], r2
	ld.w LOWW(#_f4_tmp_inv1_igbt_wp)[r25], r5
	cmpf.s 0x00000004, r5, r2
	trfsr 0
	bz9 .BB.LABEL.1_2
.BB.LABEL.1_1:	; entry.bb95_crit_edge
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_adctrl.c", 0
	mov #_f4_tmp_inv1_igbt_wp, r21
	br9 .BB.LABEL.1_3
.BB.LABEL.1_2:	; bb79
	ld.w 0x00000000[r21], r2
	ld.w 0x00000000[r24], r5
	cmpf.s 0x00000004, r5, r2
	cmovf.s 0, r21, r24, r21
.BB.LABEL.1_3:	; bb95
	ld.w 0x00000000[r21], r2
	movhi HIGHW1(#_f4_tmp_inv1_igbtp_max), r0, r5
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_adctrl.c", 128
	mov #_f4_tmp_inv1_igbt_un, r6
	ld.w 0x00000000[r6], r7
	mov #_f4_tmp_inv1_igbt_vn, r8
	ld.w 0x00000000[r8], r9
	st.w r2, LOWW(#_f4_tmp_inv1_igbtp_max)[r5]
	movhi HIGHW1(#_f4_tmp_inv1_igbt_wn), r0, r5
	cmpf.s 0x00000004, r9, r7
	cmovf.s 0, r6, r8, r7
	ld.w 0x00000000[r7], r7
	ld.w LOWW(#_f4_tmp_inv1_igbt_wn)[r5], r5
	cmpf.s 0x00000004, r5, r7
	trfsr 0
	bz9 .BB.LABEL.1_5
.BB.LABEL.1_4:	; bb95.bb129_crit_edge
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_adctrl.c", 0
	mov #_f4_tmp_inv1_igbt_wn, r6
	br9 .BB.LABEL.1_6
.BB.LABEL.1_5:	; bb113
	ld.w 0x00000000[r6], r5
	ld.w 0x00000000[r8], r7
	cmpf.s 0x00000004, r7, r5
	cmovf.s 0, r6, r8, r6
.BB.LABEL.1_6:	; bb129
	ld.w 0x00000000[r6], r5
	movhi HIGHW1(#_f4_tmp_inv1_igbtn_max), r0, r7
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_adctrl.c", 130
	movhi HIGHW1(#_f4_tmp_inv1_igbt_max), r0, r8
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_adctrl.c", 136
	movhi HIGHW1(#_s2_ad_inv1_tmp_mot1), r0, r6
	mov #_th_MOTOR1_INV1, r10
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_adctrl.c", 130
	cmpf.s 0x00000004, r5, r2
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_adctrl.c", 136
	ld.w 0x0000000C[r10], r11
	ld.w 0x00000010[r10], r12
	ld.w 0x00000014[r10], r13
	ld.w 0x00000018[r10], r14
	ld.w 0x0000001C[r10], r15
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_adctrl.c", 130
	cmovf.s 0, r2, r5, r2
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_adctrl.c", 136
	ld.w 0x00000020[r10], r16
	st.w r5, LOWW(#_f4_tmp_inv1_igbtn_max)[r7]
	ld.hu LOWW(#_s2_ad_inv1_tmp_mot1)[r6], r6
	ld.w 0x00000000[r10], r7
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_adctrl.c", 130
	st.w r2, LOWW(#_f4_tmp_inv1_igbt_max)[r8]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_adctrl.c", 136
	ld23.dw 0x00000004[r10], r8
	st.w r11, 0x00000000[r3]
	st.w r12, 0x00000004[r3]
	st.w r13, 0x00000008[r3]
	st.w r14, 0x0000000C[r3]
	st.w r15, 0x00000010[r3]
	st.w r16, 0x00000014[r3]
	jarl _f4_thermister_calc_2_8, r31
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_adctrl.c", 137
	mov #_f4_tmp_inv1_mot1, r20
	ld.w 0x00000000[r20], r2
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_adctrl.c", 138
	movhi HIGHW1(#_f4_wclpf_inv1_tmp), r0, r21
	ld.w LOWW(#_f4_wclpf_inv1_tmp)[r21], r7
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_adctrl.c", 140
	movhi HIGHW1(#_s2_ad_inv1_tmp_mot2), r0, r6
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_adctrl.c", 138
	ld.w 0x00000000[r20], r5
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_adctrl.c", 140
	ld.hu LOWW(#_s2_ad_inv1_tmp_mot2)[r6], r6
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_adctrl.c", 137
	subf.s r2, r10, r2
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_adctrl.c", 140
	mov #_th_MOTOR2_INV1, r10
	ld.w 0x0000000C[r10], r11
	ld.w 0x00000010[r10], r12
	ld.w 0x00000014[r10], r13
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_adctrl.c", 138
	mulf.s r2, r7, r2
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_adctrl.c", 140
	ld.w 0x00000018[r10], r14
	ld.w 0x0000001C[r10], r15
	ld.w 0x00000020[r10], r16
	ld23.dw 0x00000004[r10], r8
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_adctrl.c", 138
	mulf.s r23, r2, r2
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_adctrl.c", 140
	ld.w 0x00000000[r10], r7
	st.w r11, 0x00000000[r3]
	st.w r12, 0x00000004[r3]
	st.w r13, 0x00000008[r3]
	st.w r14, 0x0000000C[r3]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_adctrl.c", 138
	addf.s r2, r5, r2
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_adctrl.c", 140
	st.w r15, 0x00000010[r3]
	st.w r16, 0x00000014[r3]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_adctrl.c", 138
	st.w r2, 0x00000000[r20]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_adctrl.c", 140
	jarl _f4_thermister_calc_2_8, r31
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_adctrl.c", 141
	mov #_f4_tmp_inv1_mot2, r5
	ld.w 0x00000000[r5], r6
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_adctrl.c", 144
	movhi HIGHW1(#_f4_tmp_inv1_mot_max), r0, r8
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_adctrl.c", 142
	ld.w LOWW(#_f4_wclpf_inv1_tmp)[r21], r2
	ld.w 0x00000000[r5], r7
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_adctrl.c", 141
	subf.s r6, r10, r6
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_adctrl.c", 142
	mulf.s r6, r2, r2
	mulf.s r23, r2, r2
	addf.s r2, r7, r2
	st.w r2, 0x00000000[r5]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_adctrl.c", 144
	ld.w 0x00000000[r20], r2
	ld.w 0x00000000[r5], r6
	cmpf.s 0x00000004, r6, r2
	cmovf.s 0, r20, r5, r2
	ld.w 0x00000000[r2], r2
	st.w r2, LOWW(#_f4_tmp_inv1_mot_max)[r8]
	dispose 0x00000018, 0x00000679, [r31]
_fb_1ms_inv1_adctrl_init:
	.stack _fb_1ms_inv1_adctrl_init = 0
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_adctrl.c", 172
	movhi HIGHW1(#_f4_tmp_inv1_igbt_up), r0, r2
	st.w r0, LOWW(#_f4_tmp_inv1_igbt_up)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_adctrl.c", 173
	movhi HIGHW1(#_f4_tmp_inv1_igbt_vp), r0, r2
	st.w r0, LOWW(#_f4_tmp_inv1_igbt_vp)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_adctrl.c", 174
	movhi HIGHW1(#_f4_tmp_inv1_igbt_wp), r0, r2
	st.w r0, LOWW(#_f4_tmp_inv1_igbt_wp)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_adctrl.c", 175
	movhi HIGHW1(#_f4_tmp_inv1_igbt_un), r0, r2
	st.w r0, LOWW(#_f4_tmp_inv1_igbt_un)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_adctrl.c", 176
	movhi HIGHW1(#_f4_tmp_inv1_igbt_vn), r0, r2
	st.w r0, LOWW(#_f4_tmp_inv1_igbt_vn)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_adctrl.c", 177
	movhi HIGHW1(#_f4_tmp_inv1_igbt_wn), r0, r2
	st.w r0, LOWW(#_f4_tmp_inv1_igbt_wn)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_adctrl.c", 179
	movhi HIGHW1(#_f4_tmp_inv1_igbtp_max), r0, r2
	st.w r0, LOWW(#_f4_tmp_inv1_igbtp_max)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_adctrl.c", 180
	movhi HIGHW1(#_f4_tmp_inv1_igbtn_max), r0, r2
	st.w r0, LOWW(#_f4_tmp_inv1_igbtn_max)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_adctrl.c", 182
	movhi HIGHW1(#_f4_tmp_inv1_igbt_max), r0, r2
	st.w r0, LOWW(#_f4_tmp_inv1_igbt_max)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_adctrl.c", 184
	movhi HIGHW1(#_f4_tmp_inv1_mot1), r0, r2
	st.w r0, LOWW(#_f4_tmp_inv1_mot1)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_adctrl.c", 185
	movhi HIGHW1(#_f4_tmp_inv1_mot2), r0, r2
	st.w r0, LOWW(#_f4_tmp_inv1_mot2)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_adctrl.c", 186
	movhi HIGHW1(#_f4_tmp_inv1_mot_max), r0, r2
	st.w r0, LOWW(#_f4_tmp_inv1_mot_max)[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_adctrl.c", 188
	movhi HIGHW1(#_f4_tmp_inv1_int), r0, r2
	st.w r0, LOWW(#_f4_tmp_inv1_int)[r2]
	movhi 0x000040A0, r0, r2
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_adctrl.c", 190
	movhi HIGHW1(#_f4_wclpf_inv1_tmp), r0, r5
	st.w r2, LOWW(#_f4_wclpf_inv1_tmp)[r5]
	movhi 0x0000447A, r0, r7
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_adctrl.c", 192
	mov #_th_MOTOR1_INV1, r5
	mov 0x4553B000, r6
	movhi 0x000042C8, r0, r8
	movhi 0x000044FA, r0, r10
	mov 0x3A83126F, r9
	movhi 0x00004580, r0, r11
	st.w r6, 0x00000000[r5]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_adctrl.c", 193
	st.w r7, 0x00000004[r5]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_adctrl.c", 194
	st.w r8, 0x00000008[r5]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_adctrl.c", 195
	st.w r9, 0x0000000C[r5]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_adctrl.c", 196
	st.w r10, 0x00000010[r5]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_adctrl.c", 197
	st.w r0, 0x00000014[r5]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_adctrl.c", 198
	st.w r2, 0x00000018[r5]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_adctrl.c", 199
	st.w r11, 0x0000001C[r5]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_adctrl.c", 200
	st.w r0, 0x00000020[r5]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_adctrl.c", 202
	mov #_th_MOTOR2_INV1, r5
	st.w r6, 0x00000000[r5]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_adctrl.c", 203
	st.w r7, 0x00000004[r5]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_adctrl.c", 204
	st.w r8, 0x00000008[r5]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_adctrl.c", 205
	st.w r9, 0x0000000C[r5]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_adctrl.c", 206
	st.w r10, 0x00000010[r5]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_adctrl.c", 207
	st.w r0, 0x00000014[r5]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_adctrl.c", 208
	st.w r2, 0x00000018[r5]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_adctrl.c", 209
	st.w r11, 0x0000001C[r5]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_adctrl.c", 210
	st.w r0, 0x00000020[r5]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_adctrl.c", 212
	mov #_th_493HT, r5
	mov 0x45782000, r6
	st.w r6, 0x00000000[r5]
	mov 0x454E4000, r6
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_adctrl.c", 213
	st.w r6, 0x00000004[r5]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_adctrl.c", 214
	st.w r8, 0x00000008[r5]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_adctrl.c", 215
	st.w r9, 0x0000000C[r5]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_adctrl.c", 216
	st.w r10, 0x00000010[r5]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_adctrl.c", 217
	st.w r0, 0x00000014[r5]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_adctrl.c", 218
	st.w r2, 0x00000018[r5]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_adctrl.c", 219
	st.w r11, 0x0000001C[r5]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_adctrl.c", 220
	st.w r0, 0x00000020[r5]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_adctrl.c", 222
	mov #_th_IGBT, r5
	mov 0x45569000, r6
	st.w r6, 0x00000000[r5]
	mov 0x459C4000, r6
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_adctrl.c", 223
	st.w r6, 0x00000004[r5]
	movhi 0x000041C8, r0, r6
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_adctrl.c", 224
	st.w r6, 0x00000008[r5]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_adctrl.c", 225
	st.w r9, 0x0000000C[r5]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_adctrl.c", 226
	st.w r10, 0x00000010[r5]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_adctrl.c", 227
	st.w r0, 0x00000014[r5]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_adctrl.c", 228
	st.w r2, 0x00000018[r5]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_adctrl.c", 229
	st.w r11, 0x0000001C[r5]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_adctrl.c", 230
	st.w r0, 0x00000020[r5]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_adctrl.c", 232
	mov #_th_103JT, r5
	mov 0x4556B000, r8
	st.w r8, 0x00000000[r5]
	mov 0x461C4000, r8
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_adctrl.c", 233
	st.w r8, 0x00000004[r5]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_adctrl.c", 234
	st.w r6, 0x00000008[r5]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_adctrl.c", 235
	st.w r9, 0x0000000C[r5]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_adctrl.c", 236
	st.w r10, 0x00000010[r5]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_adctrl.c", 237
	st.w r0, 0x00000014[r5]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_adctrl.c", 238
	st.w r2, 0x00000018[r5]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_adctrl.c", 239
	st.w r11, 0x0000001C[r5]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_adctrl.c", 240
	st.w r0, 0x00000020[r5]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_adctrl.c", 242
	mov #_th_AL03006_1753K_98_G1, r5
	mov 0x45786000, r12
	st.w r12, 0x00000000[r5]
	mov 0x46EA6000, r12
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_adctrl.c", 243
	st.w r12, 0x00000004[r5]
	movhi 0x0000450C, r0, r12
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_adctrl.c", 244
	st.w r6, 0x00000008[r5]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_adctrl.c", 245
	st.w r9, 0x0000000C[r5]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_adctrl.c", 246
	st.w r10, 0x00000010[r5]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_adctrl.c", 247
	st.w r0, 0x00000014[r5]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_adctrl.c", 248
	st.w r2, 0x00000018[r5]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_adctrl.c", 249
	st.w r11, 0x0000001C[r5]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_adctrl.c", 250
	st.w r0, 0x00000020[r5]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_adctrl.c", 252
	mov #_th_PSB_S3, r5
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_adctrl.c", 253
	st.w r7, 0x00000004[r5]
	movhi 0x00004348, r0, r7
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_adctrl.c", 252
	st.w r12, 0x00000000[r5]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_adctrl.c", 254
	st.w r7, 0x00000008[r5]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_adctrl.c", 255
	st.w r9, 0x0000000C[r5]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_adctrl.c", 256
	st.w r10, 0x00000010[r5]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_adctrl.c", 257
	st.w r0, 0x00000014[r5]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_adctrl.c", 258
	st.w r2, 0x00000018[r5]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_adctrl.c", 259
	st.w r11, 0x0000001C[r5]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_adctrl.c", 260
	st.w r0, 0x00000020[r5]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_adctrl.c", 262
	mov #_th_NCP18XH103, r5
	mov 0x45534000, r7
	st.w r7, 0x00000000[r5]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_adctrl.c", 263
	st.w r8, 0x00000004[r5]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_adctrl.c", 264
	st.w r6, 0x00000008[r5]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_adctrl.c", 265
	st.w r9, 0x0000000C[r5]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_adctrl.c", 266
	st.w r10, 0x00000010[r5]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_adctrl.c", 267
	st.w r0, 0x00000014[r5]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_adctrl.c", 268
	st.w r2, 0x00000018[r5]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_adctrl.c", 269
	st.w r11, 0x0000001C[r5]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_adctrl.c", 270
	st.w r0, 0x00000020[r5]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_adctrl.c", 272
	mov #_th_NCU18WB473F6SRB_10k, r5
	mov 0x457D2000, r7
	st.w r7, 0x00000000[r5]
	mov 0x47379800, r7
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_adctrl.c", 273
	st.w r7, 0x00000004[r5]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_adctrl.c", 274
	st.w r6, 0x00000008[r5]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_adctrl.c", 275
	st.w r9, 0x0000000C[r5]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_adctrl.c", 276
	st.w r8, 0x00000010[r5]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_adctrl.c", 277
	st.w r0, 0x00000014[r5]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_adctrl.c", 278
	st.w r2, 0x00000018[r5]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_adctrl.c", 279
	st.w r11, 0x0000001C[r5]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/AMDT3090_E0_001_V1_000_20240523/PE2/src/fi_1ms_inv1_adctrl.c", 280
	st.w r0, 0x00000020[r5]
	jmp [r31]
	.section .bss, bss
	.align 4
_th_IGBT:
	.ds (36)
	.align 4
_th_103JT:
	.ds (36)
	.align 4
_th_MOTOR1_INV1:
	.ds (36)
	.align 4
_th_MOTOR2_INV1:
	.ds (36)
	.align 4
_th_493HT:
	.ds (36)
	.align 4
_th_AL03006_1753K_98_G1:
	.ds (36)
	.align 4
_th_PSB_S3:
	.ds (36)
	.align 4
_th_NCP18XH103:
	.ds (36)
	.align 4
_th_NCU18WB473F6SRB_10k:
	.ds (36)
	.align 4
_f4_tmp_inv1_igbtp_max:
	.ds (4)
	.align 4
_f4_tmp_inv1_igbtn_max:
	.ds (4)
	.align 4
_f4_wclpf_inv1_tmp:
	.ds (4)
