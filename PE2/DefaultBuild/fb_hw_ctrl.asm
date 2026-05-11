#CC-RH Compiler RH850 Assembler Source
#@	CC-RH Version : V1.03.00 [21 Aug 2015]
#@	Command : src\fb_can0_ctrl.c src\fb_can1_ctrl.c src\fb_hw_ctrl.c src\fi_1ms_int.c src\fi_1ms_inv1_adctrl.c src\fi_1ms_inv1_errctrl.c src\fi_1ms_inv1_idqcom.c src\fi_1ms_inv1_seqctrl.c src\fi_1ms_inv1_wrctrl.c src\fi_20us_int.c src\fi_20us_inv1_1pulse.c src\fi_enc1_int.c src\fi_enc1_inv1_1pulse.c src\fi_pwm_int.c src\fi_pwm_inv1_1pulse.c src\fi_pwm_inv1_adctrl.c src\fi_pwm_inv1_encctrl.c src\fi_pwm_inv1_errctrl.c src\fi_pwm_inv1_idqctrl.c src\fi_pwm_inv1_invadj.c src\fi_pwm_inv1_svctrl.c src\fi_pwm_inv1_vctrlerr.c src\fi_pwm_vctrlerrtbl.c src\fpmsm_main.c src\mapdata_k_inv1_ldq_cmp.c src\mapdata_k_inv1_ldq_cmp_map.c src\mapdata_trq.c src\mapdata_trq_limit.c src\mapdata_trq_map.c src\mapdata_trq_map_limit.c -Xobj_path=DefaultBuild -Xcommon=rh850 -Xcpu=g3m -c -g -Ospeed -Oinline_size -Isrc -I..\Common -D__CLK_HSB=80,__CLK_LSB=40,__CLKC_HSB=80,__CLK_CLSB=40 -Xasm_path=DefaultBuild
#@	compiled at Wed May 24 14:08:10 2017

	.file "src\fb_hw_ctrl.c"

	$reg_mode 32

	.public _fb_hw_ctrl_init
	.extern _tsg30_init
	.extern _dpinv0_stop
	.extern _dpinv0_extgb_init
	.extern _tsg31_init
	.extern _dpinv1_stop
	.extern _dpinv1_extgb_init
	.extern _adcc0_init
	.extern _adcc1_init
	.extern _adcc0_sg4_trig_set
	.extern _adcc1_sg4_trig_set
	.extern _dpinv0_set_addelay
	.extern _dpinv1_set_addelay
	.extern _dpinv0_setuvwf_f_V3
	.extern _dpinv1_setuvwf_f_V3
	.extern _taud0_stop
	.extern _taud0prescale_0_2_8_0_init
	.extern _taud1_stop
	.extern _taud1prescale_0_2_8_0_init
	.extern _interval00_init
	.extern _interval01_init
	.extern _interval10_init
	.extern _stopwatch0_init
	.extern _stopwatch1_init
	.extern _rdc20_init
	.extern _enca0_init
	.extern _u2_rdc20_cnt_read
	.extern _enca0_cnt_set
	.extern _rdc21_init
	.extern _enca1_init
	.extern _u2_rdc21_cnt_read
	.extern _enca1_cnt_set
	.extern _enca1_start
	.extern _enca0_ccr1_set
	.extern _enca0_init_interrupt
	.extern _enca0_start
	.extern _csih0_init
	.extern _csih1_init
	.extern _fb_can0_driver_init
	.extern _fb_can1_driver_init
	.extern _can_init
	.extern _pbg_prot_clr
	.extern _interval00_start
	.extern _interval01_start
	.extern _tsg30_start

	.section .text, text
_fb_hw_ctrl_init:
	.stack _fb_hw_ctrl_init = 44
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0530_トヨタテクニカルディベロプメント様向け汎用コントローラ製作/E_ソフト/C1Hコントローラ基板/20170522/PE2/src/fb_hw_ctrl.c", 57
	prepare 0x00000679, 0x00000010
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0530_トヨタテクニカルディベロプメント様向け汎用コントローラ製作/E_ソフト/C1Hコントローラ基板/20170522/PE2/src/fb_hw_ctrl.c", 153
	mov 0x00000001, r20
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0530_トヨタテクニカルディベロプメント様向け汎用コントローラ製作/E_ソフト/C1Hコントローラ基板/20170522/PE2/src/fb_hw_ctrl.c", 63
	st.w r20, 0x0000000C[r3]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0530_トヨタテクニカルディベロプメント様向け汎用コントローラ製作/E_ソフト/C1Hコントローラ基板/20170522/PE2/src/fb_hw_ctrl.c", 103
	mov 0x00000003, r21
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0530_トヨタテクニカルディベロプメント様向け汎用コントローラ製作/E_ソフト/C1Hコントローラ基板/20170522/PE2/src/fb_hw_ctrl.c", 63
	st.w r21, 0x00000004[r3]
	st.w r21, 0x00000000[r3]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0530_トヨタテクニカルディベロプメント様向け汎用コントローラ製作/E_ソフト/C1Hコントローラ基板/20170522/PE2/src/fb_hw_ctrl.c", 153
	mov 0x00000000, r22
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0530_トヨタテクニカルディベロプメント様向け汎用コントローラ製作/E_ソフト/C1Hコントローラ基板/20170522/PE2/src/fb_hw_ctrl.c", 63
	st.w r0, 0x00000008[r3]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0530_トヨタテクニカルディベロプメント様向け汎用コントローラ製作/E_ソフト/C1Hコントローラ基板/20170522/PE2/src/fb_hw_ctrl.c", 83
	movea 0x00000FA0, r0, r23
	movea 0x00001770, r0, r24
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0530_トヨタテクニカルディベロプメント様向け汎用コントローラ製作/E_ソフト/C1Hコントローラ基板/20170522/PE2/src/fb_hw_ctrl.c", 63
	mov r24, r6
	mov r23, r7
	mov r23, r8
	mov r22, r9
	jarl _tsg30_init, r31
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0530_トヨタテクニカルディベロプメント様向け汎用コントローラ製作/E_ソフト/C1Hコントローラ基板/20170522/PE2/src/fb_hw_ctrl.c", 74
	jarl _dpinv0_stop, r31
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0530_トヨタテクニカルディベロプメント様向け汎用コントローラ製作/E_ソフト/C1Hコントローラ基板/20170522/PE2/src/fb_hw_ctrl.c", 76
	mov r20, r6
	jarl _dpinv0_extgb_init, r31
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0530_トヨタテクニカルディベロプメント様向け汎用コントローラ製作/E_ソフト/C1Hコントローラ基板/20170522/PE2/src/fb_hw_ctrl.c", 142
	mov 0x00000002, r25
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0530_トヨタテクニカルディベロプメント様向け汎用コントローラ製作/E_ソフト/C1Hコントローラ基板/20170522/PE2/src/fb_hw_ctrl.c", 83
	st.w r25, 0x0000000C[r3]
	st.w r21, 0x00000004[r3]
	mov r24, r6
	st.w r21, 0x00000000[r3]
	mov r23, r7
	st.w r0, 0x00000008[r3]
	mov r23, r8
	mov r22, r9
	jarl _tsg31_init, r31
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0530_トヨタテクニカルディベロプメント様向け汎用コントローラ製作/E_ソフト/C1Hコントローラ基板/20170522/PE2/src/fb_hw_ctrl.c", 95
	jarl _dpinv1_stop, r31
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0530_トヨタテクニカルディベロプメント様向け汎用コントローラ製作/E_ソフト/C1Hコントローラ基板/20170522/PE2/src/fb_hw_ctrl.c", 96
	mov r20, r6
	jarl _dpinv1_extgb_init, r31
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0530_トヨタテクニカルディベロプメント様向け汎用コントローラ製作/E_ソフト/C1Hコントローラ基板/20170522/PE2/src/fb_hw_ctrl.c", 103
	mov r21, r6
	jarl _adcc0_init, r31
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0530_トヨタテクニカルディベロプメント様向け汎用コントローラ製作/E_ソフト/C1Hコントローラ基板/20170522/PE2/src/fb_hw_ctrl.c", 106
	jarl _adcc1_init, r31
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0530_トヨタテクニカルディベロプメント様向け汎用コントローラ製作/E_ソフト/C1Hコントローラ基板/20170522/PE2/src/fb_hw_ctrl.c", 108
	mov r22, r6
	jarl _adcc0_sg4_trig_set, r31
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0530_トヨタテクニカルディベロプメント様向け汎用コントローラ製作/E_ソフト/C1Hコントローラ基板/20170522/PE2/src/fb_hw_ctrl.c", 109
	mov r20, r6
	jarl _adcc1_sg4_trig_set, r31
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0530_トヨタテクニカルディベロプメント様向け汎用コントローラ製作/E_ソフト/C1Hコントローラ基板/20170522/PE2/src/fb_hw_ctrl.c", 111
	mov r22, r6
	jarl _dpinv0_set_addelay, r31
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0530_トヨタテクニカルディベロプメント様向け汎用コントローラ製作/E_ソフト/C1Hコントローラ基板/20170522/PE2/src/fb_hw_ctrl.c", 112
	mov r22, r6
	jarl _dpinv1_set_addelay, r31
	mov 0x45BB8000, r21
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0530_トヨタテクニカルディベロプメント様向け汎用コントローラ製作/E_ソフト/C1Hコントローラ基板/20170522/PE2/src/fb_hw_ctrl.c", 119
	mov r22, r6
	mov r22, r7
	mov r22, r8
	mov r21, r9
	jarl _dpinv0_setuvwf_f_V3, r31
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0530_トヨタテクニカルディベロプメント様向け汎用コントローラ製作/E_ソフト/C1Hコントローラ基板/20170522/PE2/src/fb_hw_ctrl.c", 124
	mov r22, r6
	mov r22, r7
	mov r22, r8
	mov r21, r9
	jarl _dpinv1_setuvwf_f_V3, r31
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0530_トヨタテクニカルディベロプメント様向け汎用コントローラ製作/E_ソフト/C1Hコントローラ基板/20170522/PE2/src/fb_hw_ctrl.c", 135
	jarl _taud0_stop, r31
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0530_トヨタテクニカルディベロプメント様向け汎用コントローラ製作/E_ソフト/C1Hコントローラ基板/20170522/PE2/src/fb_hw_ctrl.c", 136
	jarl _taud0prescale_0_2_8_0_init, r31
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0530_トヨタテクニカルディベロプメント様向け汎用コントローラ製作/E_ソフト/C1Hコントローラ基板/20170522/PE2/src/fb_hw_ctrl.c", 137
	jarl _taud1_stop, r31
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0530_トヨタテクニカルディベロプメント様向け汎用コントローラ製作/E_ソフト/C1Hコントローラ基板/20170522/PE2/src/fb_hw_ctrl.c", 138
	jarl _taud1prescale_0_2_8_0_init, r31
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0530_トヨタテクニカルディベロプメント様向け汎用コントローラ製作/E_ソフト/C1Hコントローラ基板/20170522/PE2/src/fb_hw_ctrl.c", 142
	mov 0x00000007, r21
	movea 0x000003E8, r0, r23
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0530_トヨタテクニカルディベロプメント様向け汎用コントローラ製作/E_ソフト/C1Hコントローラ基板/20170522/PE2/src/fb_hw_ctrl.c", 140
	mov r23, r6
	mov r21, r7
	mov r20, r8
	jarl _interval00_init, r31
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0530_トヨタテクニカルディベロプメント様向け汎用コントローラ製作/E_ソフト/C1Hコントローラ基板/20170522/PE2/src/fb_hw_ctrl.c", 141
	movea 0x00000014, r0, r6
	mov r25, r7
	mov r20, r8
	jarl _interval01_init, r31
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0530_トヨタテクニカルディベロプメント様向け汎用コントローラ製作/E_ソフト/C1Hコントローラ基板/20170522/PE2/src/fb_hw_ctrl.c", 142
	mov r23, r6
	mov r21, r7
	mov r25, r8
	jarl _interval10_init, r31
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0530_トヨタテクニカルディベロプメント様向け汎用コントローラ製作/E_ソフト/C1Hコントローラ基板/20170522/PE2/src/fb_hw_ctrl.c", 144
	jarl _stopwatch0_init, r31
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0530_トヨタテクニカルディベロプメント様向け汎用コントローラ製作/E_ソフト/C1Hコントローラ基板/20170522/PE2/src/fb_hw_ctrl.c", 145
	jarl _stopwatch1_init, r31
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0530_トヨタテクニカルディベロプメント様向け汎用コントローラ製作/E_ソフト/C1Hコントローラ基板/20170522/PE2/src/fb_hw_ctrl.c", 153
	mov r22, r6
	mov r20, r7
	mov r22, r8
	mov r20, r9
	jarl _rdc20_init, r31
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0530_トヨタテクニカルディベロプメント様向け汎用コントローラ製作/E_ソフト/C1Hコントローラ基板/20170522/PE2/src/fb_hw_ctrl.c", 156
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.1_2
.BB.LABEL.1_1:	; if_else_bb
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0530_トヨタテクニカルディベロプメント様向け汎用コントローラ製作/E_ソフト/C1Hコントローラ基板/20170522/PE2/src/fb_hw_ctrl.c", 159
	mov 0x00000001, r7
	movea 0x000003FF, r0, r6
	jarl _enca0_init, r31
.BB.LABEL.1_2:	; if_break_bb
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0530_トヨタテクニカルディベロプメント様向け汎用コントローラ製作/E_ソフト/C1Hコントローラ基板/20170522/PE2/src/fb_hw_ctrl.c", 162
	jarl _u2_rdc20_cnt_read, r31
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0530_トヨタテクニカルディベロプメント様向け汎用コントローラ製作/E_ソフト/C1Hコントローラ基板/20170522/PE2/src/fb_hw_ctrl.c", 163
	andi 0x000003FF, r10, r6
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0530_トヨタテクニカルディベロプメント様向け汎用コントローラ製作/E_ソフト/C1Hコントローラ基板/20170522/PE2/src/fb_hw_ctrl.c", 168
	mov 0x00000000, r20
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0530_トヨタテクニカルディベロプメント様向け汎用コントローラ製作/E_ソフト/C1Hコントローラ基板/20170522/PE2/src/fb_hw_ctrl.c", 163
	mov r20, r7
	jarl _enca0_cnt_set, r31
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0530_トヨタテクニカルディベロプメント様向け汎用コントローラ製作/E_ソフト/C1Hコントローラ基板/20170522/PE2/src/fb_hw_ctrl.c", 168
	mov 0x00000001, r7
	mov r20, r6
	mov r20, r8
	mov r7, r9
	jarl _rdc21_init, r31
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0530_トヨタテクニカルディベロプメント様向け汎用コントローラ製作/E_ソフト/C1Hコントローラ基板/20170522/PE2/src/fb_hw_ctrl.c", 171
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.1_4
.BB.LABEL.1_3:	; if_else_bb22
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0530_トヨタテクニカルディベロプメント様向け汎用コントローラ製作/E_ソフト/C1Hコントローラ基板/20170522/PE2/src/fb_hw_ctrl.c", 174
	mov 0x00000001, r7
	movea 0x00000FFF, r0, r6
	jarl _enca1_init, r31
.BB.LABEL.1_4:	; if_break_bb23
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0530_トヨタテクニカルディベロプメント様向け汎用コントローラ製作/E_ソフト/C1Hコントローラ基板/20170522/PE2/src/fb_hw_ctrl.c", 177
	jarl _u2_rdc21_cnt_read, r31
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0530_トヨタテクニカルディベロプメント様向け汎用コントローラ製作/E_ソフト/C1Hコントローラ基板/20170522/PE2/src/fb_hw_ctrl.c", 222
	mov 0x00000000, r20
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0530_トヨタテクニカルディベロプメント様向け汎用コントローラ製作/E_ソフト/C1Hコントローラ基板/20170522/PE2/src/fb_hw_ctrl.c", 178
	mov r10, r6
	mov r20, r7
	jarl _enca1_cnt_set, r31
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0530_トヨタテクニカルディベロプメント様向け汎用コントローラ製作/E_ソフト/C1Hコントローラ基板/20170522/PE2/src/fb_hw_ctrl.c", 179
	jarl _enca1_start, r31
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0530_トヨタテクニカルディベロプメント様向け汎用コントローラ製作/E_ソフト/C1Hコントローラ基板/20170522/PE2/src/fb_hw_ctrl.c", 183
	movea 0x00002000, r0, r6
	mov r20, r7
	jarl _enca0_ccr1_set, r31
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0530_トヨタテクニカルディベロプメント様向け汎用コントローラ製作/E_ソフト/C1Hコントローラ基板/20170522/PE2/src/fb_hw_ctrl.c", 223
	mov 0x00000001, r21
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0530_トヨタテクニカルディベロプメント様向け汎用コントローラ製作/E_ソフト/C1Hコントローラ基板/20170522/PE2/src/fb_hw_ctrl.c", 184
	mov r21, r6
	mov r21, r7
	jarl _enca0_init_interrupt, r31
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0530_トヨタテクニカルディベロプメント様向け汎用コントローラ製作/E_ソフト/C1Hコントローラ基板/20170522/PE2/src/fb_hw_ctrl.c", 185
	jarl _enca0_start, r31
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0530_トヨタテクニカルディベロプメント様向け汎用コントローラ製作/E_ソフト/C1Hコントローラ基板/20170522/PE2/src/fb_hw_ctrl.c", 192
	jarl _csih0_init, r31
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0530_トヨタテクニカルディベロプメント様向け汎用コントローラ製作/E_ソフト/C1Hコントローラ基板/20170522/PE2/src/fb_hw_ctrl.c", 198
	jarl _csih1_init, r31
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0530_トヨタテクニカルディベロプメント様向け汎用コントローラ製作/E_ソフト/C1Hコントローラ基板/20170522/PE2/src/fb_hw_ctrl.c", 204
	jarl _fb_can0_driver_init, r31
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0530_トヨタテクニカルディベロプメント様向け汎用コントローラ製作/E_ソフト/C1Hコントローラ基板/20170522/PE2/src/fb_hw_ctrl.c", 205
	jarl _fb_can1_driver_init, r31
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0530_トヨタテクニカルディベロプメント様向け汎用コントローラ製作/E_ソフト/C1Hコントローラ基板/20170522/PE2/src/fb_hw_ctrl.c", 220
	mov 0x00000003, r22
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0530_トヨタテクニカルディベロプメント様向け汎用コントローラ製作/E_ソフト/C1Hコントローラ基板/20170522/PE2/src/fb_hw_ctrl.c", 207
	mov r22, r6
	jarl _can_init, r31
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0530_トヨタテクニカルディベロプメント様向け汎用コントローラ製作/E_ソフト/C1Hコントローラ基板/20170522/PE2/src/fb_hw_ctrl.c", 218
	mov r22, r6
	mov r20, r7
	jarl _pbg_prot_clr, r31
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0530_トヨタテクニカルディベロプメント様向け汎用コントローラ製作/E_ソフト/C1Hコントローラ基板/20170522/PE2/src/fb_hw_ctrl.c", 219
	mov r22, r6
	mov r21, r7
	jarl _pbg_prot_clr, r31
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0530_トヨタテクニカルディベロプメント様向け汎用コントローラ製作/E_ソフト/C1Hコントローラ基板/20170522/PE2/src/fb_hw_ctrl.c", 224
	mov 0x00000005, r23
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0530_トヨタテクニカルディベロプメント様向け汎用コントローラ製作/E_ソフト/C1Hコントローラ基板/20170522/PE2/src/fb_hw_ctrl.c", 220
	mov r22, r6
	mov r23, r7
	jarl _pbg_prot_clr, r31
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0530_トヨタテクニカルディベロプメント様向け汎用コントローラ製作/E_ソフト/C1Hコントローラ基板/20170522/PE2/src/fb_hw_ctrl.c", 225
	mov 0x00000004, r22
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0530_トヨタテクニカルディベロプメント様向け汎用コントローラ製作/E_ソフト/C1Hコントローラ基板/20170522/PE2/src/fb_hw_ctrl.c", 222
	mov r22, r6
	mov r20, r7
	jarl _pbg_prot_clr, r31
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0530_トヨタテクニカルディベロプメント様向け汎用コントローラ製作/E_ソフト/C1Hコントローラ基板/20170522/PE2/src/fb_hw_ctrl.c", 223
	mov r22, r6
	mov r21, r7
	jarl _pbg_prot_clr, r31
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0530_トヨタテクニカルディベロプメント様向け汎用コントローラ製作/E_ソフト/C1Hコントローラ基板/20170522/PE2/src/fb_hw_ctrl.c", 224
	mov r22, r6
	mov r23, r7
	jarl _pbg_prot_clr, r31
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0530_トヨタテクニカルディベロプメント様向け汎用コントローラ製作/E_ソフト/C1Hコントローラ基板/20170522/PE2/src/fb_hw_ctrl.c", 225
	mov 0x00000007, r7
	mov r22, r6
	jarl _pbg_prot_clr, r31
	movhi 0x0000FFFF, r0, r2
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0530_トヨタテクニカルディベロプメント様向け汎用コントローラ製作/E_ソフト/C1Hコントローラ基板/20170522/PE2/src/fb_hw_ctrl.c", 228
	set1 0x00000001, 0xFFFFEC80[r2]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0530_トヨタテクニカルディベロプメント様向け汎用コントローラ製作/E_ソフト/C1Hコントローラ基板/20170522/PE2/src/fb_hw_ctrl.c", 231
	movhi 0x0000FFFF, r0, r2
.BB.LABEL.1_5:	; bb32
	tst1 0x00000004, 0xFFFFEA01[r2]
	bz9 .BB.LABEL.1_5
.BB.LABEL.1_6:	; bb40
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0530_トヨタテクニカルディベロプメント様向け汎用コントローラ製作/E_ソフト/C1Hコントローラ基板/20170522/PE2/src/fb_hw_ctrl.c", 234
	movhi 0x0000FFFF, r0, r2
	clr1 0x00000004, 0xFFFFEA01[r2]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0530_トヨタテクニカルディベロプメント様向け汎用コントローラ製作/E_ソフト/C1Hコントローラ基板/20170522/PE2/src/fb_hw_ctrl.c", 240
	jarl _interval00_start, r31
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0530_トヨタテクニカルディベロプメント様向け汎用コントローラ製作/E_ソフト/C1Hコントローラ基板/20170522/PE2/src/fb_hw_ctrl.c", 241
	jarl _interval01_start, r31
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0530_トヨタテクニカルディベロプメント様向け汎用コントローラ製作/E_ソフト/C1Hコントローラ基板/20170522/PE2/src/fb_hw_ctrl.c", 248
	dispose 0x00000010, 0x00000679
	jr _tsg30_start
