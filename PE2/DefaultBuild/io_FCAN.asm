#CC-RH Compiler RH850 Assembler Source
#@	CC-RH Version : V2.06.00  [28 Nov 2023]
#@	Command : Common\fi_pe2_error.c ..\Common\iolib\io_CPU.c ..\Common\iolib\io_ADC.c ..\Common\iolib\io_CSIH0.c ..\Common\iolib\io_CSIH1.c ..\Common\iolib\io_ENCA0.c ..\Common\iolib\io_ENCA1.c ..\Common\iolib\io_FCAN.c ..\Common\iolib\io_RDC20.c ..\Common\iolib\io_RDC21.c ..\Common\iolib\io_SCI0_40MHz.c ..\Common\iolib\io_SCI1_40MHz.c ..\Common\iolib\io_SCI2_40MHz.c ..\Common\iolib\io_TAUD0.c ..\Common\iolib\io_TAUD1.c ..\Common\iolib\io_TAUJ0.c ..\Common\iolib\io_TSG30.c ..\Common\iolib\io_TSG31.c ..\PE1\AWatcher\VECLIB_CMDMONI.c src\fpmsm_main.c ..\PE1\src\fi_AWatcher.c src\fi_1ms_int.c src\fi_20us_int.c src\fi_enc1_int.c src\fi_pwm_int.c ..\PE1\src\fb_kpwm_tbl.c ..\PE1\src\fb_therm_calc.c ..\PE1\src\fb_therm_tbl_module.c ..\PE1\src\fb_vctrlerr_tbl.c ..\PE1\src\fi_pwm_vctrlerrtbl.c ..\Common\iolib\io_PIO_amdt0530.c -Xobj_path=DefaultBuild -Xcpu=g3m -g -g_line -Ospeed -Oinline_size -I..\PE1\src -Isrc -I..\Common -D__CLK_HSB=80,__CLK_LSB=40,__CLKC_HSB=80,__CLK_CLSB=40 -use_recipf -Xasm_path=DefaultBuild -c
#@	compiled at Thu Aug 22 10:25:06 2024

	.file "..\Common\iolib\io_FCAN.c"

	$reg_mode 32
	.dbl_size 8

	.public _can0, 16
	.public _can1, 16
	.public _can2, 16
	.public _can3, 16
	.public _rx_mbox_no, 4
	.public _rx_mbox_id, 512
	.public _rx_mbox_dlc, 512
	.public _rx_mbox_length, 512
	.public _rx_mbox_extened, 512
	.public _rx_mbox_cnt, 16
	.public _tx_mbox_no, 4
	.public _tx_mbox_id, 512
	.public _tx_mbox_dlc, 512
	.public _tx_mbox_length, 512
	.public _tx_mbox_extened, 512
	.public _tx_mbox_cnt, 16
	.public _can_init
	.public _can_setup_rx_mbox
	.public _can_setup_tx_mbox
	.public _can_tx_data
	.public _can0_init
	.public _can1_init
	.public _can2_init
	.public _can3_init
	.public _can_rx_data
	.public _u4_rx_fifo_chk
	.public _can_module_busoffchk
	.public _can_module_chk
	.public _can_chint_init
	.public _can_gint_init

	.section .text, text
_can_init:
	.stack _can_init = 0
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 158
	movhi 0x0000FFD0, r0, r2
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 166
	tst1 0x00000003, 0x0000008C[r2]
	bz9 .BB.LABEL.1_2
.BB.LABEL.1_1:	; bb
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 168
	nop
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 166
	movhi 0x0000FFD0, r0, r2
	tst1 0x00000003, 0x0000008C[r2]
	bnz9 .BB.LABEL.1_1
.BB.LABEL.1_2:	; bb18
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 173
	cmp 0x00000000, r6
	bnz9 .BB.LABEL.1_5
.BB.LABEL.1_3:	; bb18.bb1450_crit_edge
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 0
	mov 0x00000002, r2
.BB.LABEL.1_4:	; bb1450
	mov r2, r10
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 691
	jmp [r31]
.BB.LABEL.1_5:	; bb23
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 0
	cmp 0x0000000F, r6
	bgt9 .BB.LABEL.1_3
.BB.LABEL.1_6:	; if_break_bb
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 180
	andi 0x00000001, r6, r5
	mov 0x00000000, r2
	bz9 .BB.LABEL.1_12
.BB.LABEL.1_7:	; if_then_bb45
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 182
	movhi HIGHW1(#_can0+0x00000004), r0, r2
	ld.w LOWW(#_can0+0x00000004)[r2], r2
	mov 0x00000001, r7
	cmp 0x00000002, r2
	bnh9 .BB.LABEL.1_9
.BB.LABEL.1_8:	; bb50
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 0
	movhi HIGHW1(#_can0+0x00000004), r0, r2
	ld.w LOWW(#_can0+0x00000004)[r2], r2
	cmp 0x0000000F, r2
	setf 0x0000000B, r7
.BB.LABEL.1_9:	; bb61
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 183
	movhi HIGHW1(#_can0+0x00000008), r0, r2
	ld.w LOWW(#_can0+0x00000008)[r2], r2
	cmp 0x00000000, r2
	mov 0x00000001, r2
	bz9 .BB.LABEL.1_11
.BB.LABEL.1_10:	; bb70
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 0
	movhi HIGHW1(#_can0+0x00000008), r0, r2
	ld.w LOWW(#_can0+0x00000008)[r2], r2
	cmp 0x00000007, r2
	setf 0x0000000B, r2
.BB.LABEL.1_11:	; bb81
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 184
	movhi HIGHW1(#_can0+0x0000000C), r0, r8
	ld.b LOWW(#_can0+0x0000000C)[r8], r9
	ld.bu LOWW(#_can0+0x0000000C)[r8], r8
	or r7, r2
	cmp 0x00000003, r8
	setf 0x0000000F, r7
	or r7, r2
.BB.LABEL.1_12:	; if_break_bb109
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 187
	andi 0x00000002, r6, r7
	bz9 .BB.LABEL.1_18
.BB.LABEL.1_13:	; if_then_bb116
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 189
	movhi HIGHW1(#_can1+0x00000004), r0, r8
	ld.w LOWW(#_can1+0x00000004)[r8], r8
	cmp 0x00000002, r8
	mov 0x00000001, r8
	bnh9 .BB.LABEL.1_15
.BB.LABEL.1_14:	; bb121
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 0
	movhi HIGHW1(#_can1+0x00000004), r0, r8
	ld.w LOWW(#_can1+0x00000004)[r8], r8
	cmp 0x0000000F, r8
	setf 0x0000000B, r8
.BB.LABEL.1_15:	; bb132
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 190
	movhi HIGHW1(#_can1+0x00000008), r0, r9
	ld.w LOWW(#_can1+0x00000008)[r9], r9
	cmp 0x00000000, r9
	mov 0x00000001, r9
	bz9 .BB.LABEL.1_17
.BB.LABEL.1_16:	; bb141
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 0
	movhi HIGHW1(#_can1+0x00000008), r0, r9
	ld.w LOWW(#_can1+0x00000008)[r9], r9
	cmp 0x00000007, r9
	setf 0x0000000B, r9
.BB.LABEL.1_17:	; bb152
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 191
	movhi HIGHW1(#_can1+0x0000000C), r0, r10
	ld.b LOWW(#_can1+0x0000000C)[r10], r11
	ld.bu LOWW(#_can1+0x0000000C)[r10], r10
	or r2, r8
	or r9, r8
	cmp 0x00000003, r10
	setf 0x0000000F, r2
	or r2, r8
	mov r8, r2
.BB.LABEL.1_18:	; if_break_bb180
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 194
	andi 0x00000004, r6, r8
	bz9 .BB.LABEL.1_24
.BB.LABEL.1_19:	; if_then_bb187
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 196
	movhi HIGHW1(#_can2+0x00000004), r0, r9
	ld.w LOWW(#_can2+0x00000004)[r9], r9
	cmp 0x00000002, r9
	mov 0x00000001, r9
	bnh9 .BB.LABEL.1_21
.BB.LABEL.1_20:	; bb192
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 0
	movhi HIGHW1(#_can2+0x00000004), r0, r9
	ld.w LOWW(#_can2+0x00000004)[r9], r9
	cmp 0x0000000F, r9
	setf 0x0000000B, r9
.BB.LABEL.1_21:	; bb203
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 197
	movhi HIGHW1(#_can2+0x00000008), r0, r10
	ld.w LOWW(#_can2+0x00000008)[r10], r10
	cmp 0x00000000, r10
	mov 0x00000001, r10
	bz9 .BB.LABEL.1_23
.BB.LABEL.1_22:	; bb212
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 0
	movhi HIGHW1(#_can2+0x00000008), r0, r10
	ld.w LOWW(#_can2+0x00000008)[r10], r10
	cmp 0x00000007, r10
	setf 0x0000000B, r10
.BB.LABEL.1_23:	; bb223
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 198
	movhi HIGHW1(#_can2+0x0000000C), r0, r11
	ld.b LOWW(#_can2+0x0000000C)[r11], r12
	ld.bu LOWW(#_can2+0x0000000C)[r11], r11
	or r2, r9
	or r10, r9
	cmp 0x00000003, r11
	setf 0x0000000F, r2
	or r2, r9
	mov r9, r2
.BB.LABEL.1_24:	; if_break_bb251
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 201
	andi 0x00000008, r6, r6
	bz9 .BB.LABEL.1_30
.BB.LABEL.1_25:	; if_then_bb258
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 203
	movhi HIGHW1(#_can3+0x00000004), r0, r9
	ld.w LOWW(#_can3+0x00000004)[r9], r9
	cmp 0x00000002, r9
	mov 0x00000001, r9
	bnh9 .BB.LABEL.1_27
.BB.LABEL.1_26:	; bb263
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 0
	movhi HIGHW1(#_can3+0x00000004), r0, r9
	ld.w LOWW(#_can3+0x00000004)[r9], r9
	cmp 0x0000000F, r9
	setf 0x0000000B, r9
.BB.LABEL.1_27:	; bb274
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 204
	movhi HIGHW1(#_can3+0x00000008), r0, r10
	ld.w LOWW(#_can3+0x00000008)[r10], r10
	cmp 0x00000000, r10
	mov 0x00000001, r10
	bz9 .BB.LABEL.1_29
.BB.LABEL.1_28:	; bb283
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 0
	movhi HIGHW1(#_can3+0x00000008), r0, r10
	ld.w LOWW(#_can3+0x00000008)[r10], r10
	cmp 0x00000007, r10
	setf 0x0000000B, r10
.BB.LABEL.1_29:	; bb294
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 205
	movhi HIGHW1(#_can3+0x0000000C), r0, r11
	ld.b LOWW(#_can3+0x0000000C)[r11], r12
	ld.bu LOWW(#_can3+0x0000000C)[r11], r11
	or r2, r9
	or r10, r9
	cmp 0x00000003, r11
	setf 0x0000000F, r2
	or r2, r9
	mov r9, r2
.BB.LABEL.1_30:	; if_break_bb322
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 209
	cmp 0x00000000, r2
	bnz17 .BB.LABEL.1_4
.BB.LABEL.1_31:	; if_break_bb330
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 215
	movhi 0x0000FFD0, r0, r9
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 217
	movhi 0x0000FFD0, r0, r10
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 215
	clr1 0x00000002, 0x00000088[r9]
	mov 0x00000000, r9
.BB.LABEL.1_32:	; bb332
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 217
	tst1 0x00000002, 0x0000008C[r10]
	bz17 .BB.LABEL.1_178
.BB.LABEL.1_33:	; bb339
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 0
	tst1 0x00000000, 0x0000008C[r10]
	bnz17 .BB.LABEL.1_178
.BB.LABEL.1_34:	; bb359
	addi 0xFFFFE001, r9, r0
	bz9 .BB.LABEL.1_36
.BB.LABEL.1_35:	; bb368
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 219
	nop
	add 0x00000001, r9
	br9 .BB.LABEL.1_32
.BB.LABEL.1_36:	; bb359.bb368.thread_crit_edge
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 0
	movea 0x00001FFF, r0, r10
.BB.LABEL.1_37:	; bb359.bb368.thread_crit_edge
	sub r9, r10
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 221
	cmp 0x00000000, r10
	setf 0x00000002, r9
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 223
	shl 0x0000000A, r9
	or r2, r9
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 227
	cmp 0x00000000, r5
	bz9 .BB.LABEL.1_46
.BB.LABEL.1_38:	; if_then_bb388
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 229
	movhi 0x0000FFD0, r0, r2
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 231
	movhi 0x0000FFD0, r0, r10
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 229
	clr1 0x00000002, 0x00000004[r2]
	mov 0x00000000, r2
.BB.LABEL.1_39:	; bb390
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 231
	tst1 0x00000002, 0x00000008[r10]
	bz9 .BB.LABEL.1_52
.BB.LABEL.1_40:	; bb397
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 0
	tst1 0x00000000, 0x00000008[r10]
	bnz9 .BB.LABEL.1_52
.BB.LABEL.1_41:	; bb417
	addi 0xFFFFE001, r2, r0
	bz9 .BB.LABEL.1_43
.BB.LABEL.1_42:	; bb426
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 233
	nop
	add 0x00000001, r2
	br9 .BB.LABEL.1_39
.BB.LABEL.1_43:	; bb417.bb426.thread_crit_edge
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 0
	movea 0x00001FFF, r0, r10
.BB.LABEL.1_44:	; bb417.bb426.thread_crit_edge
	sub r2, r10
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 235
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.1_46
.BB.LABEL.1_45:	; if_then_bb436
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 237
	ori 0x00000400, r9, r9
.BB.LABEL.1_46:	; if_break_bb442
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 243
	cmp 0x00000000, r7
	bz9 .BB.LABEL.1_56
.BB.LABEL.1_47:	; if_then_bb449
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 245
	movhi 0x0000FFD0, r0, r2
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 247
	movhi 0x0000FFD0, r0, r10
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 245
	clr1 0x00000002, 0x00000014[r2]
	mov 0x00000000, r2
.BB.LABEL.1_48:	; bb451
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 247
	tst1 0x00000002, 0x00000018[r10]
	bz9 .BB.LABEL.1_62
.BB.LABEL.1_49:	; bb458
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 0
	tst1 0x00000000, 0x00000018[r10]
	bnz9 .BB.LABEL.1_62
.BB.LABEL.1_50:	; bb478
	addi 0xFFFFE001, r2, r0
	bz9 .BB.LABEL.1_53
.BB.LABEL.1_51:	; bb487
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 249
	nop
	add 0x00000001, r2
	br9 .BB.LABEL.1_48
.BB.LABEL.1_52:	; bb390.bb426.thread_crit_edge
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 0
	movea 0x00002000, r0, r10
	br9 .BB.LABEL.1_44
.BB.LABEL.1_53:	; bb478.bb487.thread_crit_edge
	movea 0x00001FFF, r0, r10
.BB.LABEL.1_54:	; bb478.bb487.thread_crit_edge
	sub r2, r10
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 251
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.1_56
.BB.LABEL.1_55:	; if_then_bb497
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 253
	ori 0x00000400, r9, r9
.BB.LABEL.1_56:	; if_break_bb503
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 259
	cmp 0x00000000, r8
	bz9 .BB.LABEL.1_66
.BB.LABEL.1_57:	; if_then_bb510
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 261
	movhi 0x0000FFD0, r0, r2
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 263
	movhi 0x0000FFD0, r0, r10
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 261
	clr1 0x00000002, 0x00000024[r2]
	mov 0x00000000, r2
.BB.LABEL.1_58:	; bb512
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 263
	tst1 0x00000002, 0x00000028[r10]
	bz9 .BB.LABEL.1_72
.BB.LABEL.1_59:	; bb519
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 0
	tst1 0x00000000, 0x00000028[r10]
	bnz9 .BB.LABEL.1_72
.BB.LABEL.1_60:	; bb539
	addi 0xFFFFE001, r2, r0
	bz9 .BB.LABEL.1_63
.BB.LABEL.1_61:	; bb548
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 265
	nop
	add 0x00000001, r2
	br9 .BB.LABEL.1_58
.BB.LABEL.1_62:	; bb451.bb487.thread_crit_edge
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 0
	movea 0x00002000, r0, r10
	br9 .BB.LABEL.1_54
.BB.LABEL.1_63:	; bb539.bb548.thread_crit_edge
	movea 0x00001FFF, r0, r10
.BB.LABEL.1_64:	; bb539.bb548.thread_crit_edge
	sub r2, r10
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 267
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.1_66
.BB.LABEL.1_65:	; if_then_bb558
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 269
	ori 0x00000400, r9, r9
.BB.LABEL.1_66:	; if_break_bb564
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 275
	cmp 0x00000000, r6
	bz9 .BB.LABEL.1_76
.BB.LABEL.1_67:	; if_then_bb571
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 277
	movhi 0x0000FFD0, r0, r2
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 279
	movhi 0x0000FFD0, r0, r10
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 277
	clr1 0x00000002, 0x00000034[r2]
	mov 0x00000000, r2
.BB.LABEL.1_68:	; bb573
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 279
	tst1 0x00000002, 0x00000038[r10]
	bz17 .BB.LABEL.1_92
.BB.LABEL.1_69:	; bb580
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 0
	tst1 0x00000000, 0x00000038[r10]
	bnz17 .BB.LABEL.1_92
.BB.LABEL.1_70:	; bb600
	addi 0xFFFFE001, r2, r0
	bz9 .BB.LABEL.1_73
.BB.LABEL.1_71:	; bb609
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 281
	nop
	add 0x00000001, r2
	br9 .BB.LABEL.1_68
.BB.LABEL.1_72:	; bb512.bb548.thread_crit_edge
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 0
	movea 0x00002000, r0, r10
	br9 .BB.LABEL.1_64
.BB.LABEL.1_73:	; bb600.bb609.thread_crit_edge
	movea 0x00001FFF, r0, r10
.BB.LABEL.1_74:	; bb600.bb609.thread_crit_edge
	sub r2, r10
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 283
	cmp 0x00000000, r10
	bnz9 .BB.LABEL.1_76
.BB.LABEL.1_75:	; if_then_bb619
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 285
	ori 0x00000400, r9, r9
.BB.LABEL.1_76:	; if_break_bb625
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 293
	movhi 0x0000FFD0, r0, r2
	ld.h 0x00000086[r2], r10
	mov 0x00000001, r10
	st.h r10, 0x00000086[r2]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 294
	ld.bu 0x00000085[r2], r11
	andi 0x0000001F, r11, r11
	st.b r11, 0x00000085[r2]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 295
	clr1 0x00000004, 0x00000085[r2]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 296
	ld.bu 0x00000085[r2], r11
	andi 0x000000F0, r11, r11
	st.b r11, 0x00000085[r2]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 297
	clr1 0x00000004, 0x00000084[r2]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 298
	clr1 0x00000003, 0x00000084[r2]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 299
	clr1 0x00000002, 0x00000084[r2]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 300
	clr1 0x00000001, 0x00000084[r2]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 301
	clr1 0x00000000, 0x00000084[r2]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 304
	cmp 0x00000000, r5
	bz9 .BB.LABEL.1_79
.BB.LABEL.1_77:	; if_then_bb641
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 307
	mov #_can0, r2
	ld.w 0x00000000[r2], r11
	movhi 0x0000FFD0, r0, r12
	ld.hu 0x00000000[r12], r13
	andi 0x000003FF, r11, r11
	andi 0x0000FC00, r13, r13
	or r11, r13
	st.h r13, 0x00000000[r12]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 308
	ld.w 0x00000004[r2], r11
	ld.bu 0x00000002[r12], r13
	andi 0x0000000F, r11, r11
	andi 0x000000F0, r13, r13
	or r11, r13
	st.b r13, 0x00000002[r12]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 309
	ld.w 0x00000008[r2], r11
	ld.bu 0x00000002[r12], r13
	shl 0x00000004, r11
	andi 0x00000070, r11, r11
	andi 0x0000008F, r13, r13
	or r13, r11
	st.b r11, 0x00000002[r12]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 310
	ld.bu 0x0000000C[r2], r2
	ld23.bu 0xFFD00003[r0], r11
	andi 0x00000003, r2, r2
	andi 0x000000FC, r11, r11
	or r2, r11
	st23.b r11, 0xFFD00003[r0]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 313
	ld.bu 0x00000006[r12], r2
	andi 0x0000009F, r2, r2
	st.b r2, 0x00000006[r12]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 314
	set1 0x00000007, 0x00000006[r12]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 318
	ld.w 0x0000000C[r12], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.1_79
.BB.LABEL.1_78:	; if_then_bb673
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 320
	ori 0x00001000, r9, r9
.BB.LABEL.1_79:	; if_break_bb679
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 326
	cmp 0x00000000, r7
	bz9 .BB.LABEL.1_82
.BB.LABEL.1_80:	; if_then_bb686
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 330
	mov #_can1, r2
	ld.w 0x00000000[r2], r11
	movhi 0x0000FFD0, r0, r12
	ld.hu 0x00000010[r12], r13
	andi 0x000003FF, r11, r11
	andi 0x0000FC00, r13, r13
	or r11, r13
	st.h r13, 0x00000010[r12]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 331
	ld.w 0x00000004[r2], r11
	ld.bu 0x00000012[r12], r13
	andi 0x0000000F, r11, r11
	andi 0x000000F0, r13, r13
	or r11, r13
	st.b r13, 0x00000012[r12]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 332
	ld.w 0x00000008[r2], r11
	ld.bu 0x00000012[r12], r13
	shl 0x00000004, r11
	andi 0x00000070, r11, r11
	andi 0x0000008F, r13, r13
	or r13, r11
	st.b r11, 0x00000012[r12]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 333
	ld.bu 0x0000000C[r2], r2
	ld.bu 0x00000013[r12], r11
	andi 0x00000003, r2, r2
	andi 0x000000FC, r11, r11
	or r2, r11
	st.b r11, 0x00000013[r12]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 336
	ld.bu 0x00000016[r12], r2
	andi 0x0000009F, r2, r2
	st.b r2, 0x00000016[r12]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 337
	set1 0x00000007, 0x00000016[r12]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 341
	ld.w 0x0000001C[r12], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.1_82
.BB.LABEL.1_81:	; if_then_bb718
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 343
	ori 0x00001000, r9, r9
.BB.LABEL.1_82:	; if_break_bb724
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 349
	cmp 0x00000000, r8
	bz9 .BB.LABEL.1_85
.BB.LABEL.1_83:	; if_then_bb731
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 353
	mov #_can2, r2
	ld.w 0x00000000[r2], r11
	movhi 0x0000FFD0, r0, r12
	ld.hu 0x00000020[r12], r13
	andi 0x000003FF, r11, r11
	andi 0x0000FC00, r13, r13
	or r11, r13
	st.h r13, 0x00000020[r12]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 354
	ld.w 0x00000004[r2], r11
	ld.bu 0x00000022[r12], r13
	andi 0x0000000F, r11, r11
	andi 0x000000F0, r13, r13
	or r11, r13
	st.b r13, 0x00000022[r12]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 355
	ld.w 0x00000008[r2], r11
	ld.bu 0x00000022[r12], r13
	shl 0x00000004, r11
	andi 0x00000070, r11, r11
	andi 0x0000008F, r13, r13
	or r13, r11
	st.b r11, 0x00000022[r12]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 356
	ld.bu 0x0000000C[r2], r2
	ld.bu 0x00000023[r12], r11
	andi 0x00000003, r2, r2
	andi 0x000000FC, r11, r11
	or r2, r11
	st.b r11, 0x00000023[r12]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 359
	ld.bu 0x00000026[r12], r2
	andi 0x0000009F, r2, r2
	st.b r2, 0x00000026[r12]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 360
	set1 0x00000007, 0x00000026[r12]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 364
	ld.w 0x0000002C[r12], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.1_85
.BB.LABEL.1_84:	; if_then_bb763
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 366
	ori 0x00001000, r9, r9
.BB.LABEL.1_85:	; if_break_bb769
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 372
	cmp 0x00000000, r6
	bz9 .BB.LABEL.1_88
.BB.LABEL.1_86:	; if_then_bb776
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 376
	mov #_can3, r2
	ld.w 0x00000000[r2], r11
	movhi 0x0000FFD0, r0, r12
	ld.hu 0x00000030[r12], r13
	andi 0x000003FF, r11, r11
	andi 0x0000FC00, r13, r13
	or r11, r13
	st.h r13, 0x00000030[r12]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 377
	ld.w 0x00000004[r2], r11
	ld.bu 0x00000032[r12], r13
	andi 0x0000000F, r11, r11
	andi 0x000000F0, r13, r13
	or r11, r13
	st.b r13, 0x00000032[r12]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 378
	ld.w 0x00000008[r2], r11
	ld.bu 0x00000032[r12], r13
	shl 0x00000004, r11
	andi 0x00000070, r11, r11
	andi 0x0000008F, r13, r13
	or r13, r11
	st.b r11, 0x00000032[r12]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 379
	ld.bu 0x0000000C[r2], r2
	ld.bu 0x00000033[r12], r11
	andi 0x00000003, r2, r2
	andi 0x000000FC, r11, r11
	or r2, r11
	st.b r11, 0x00000033[r12]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 382
	ld.bu 0x00000036[r12], r2
	andi 0x0000009F, r2, r2
	st.b r2, 0x00000036[r12]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 383
	set1 0x00000007, 0x00000036[r12]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 387
	ld.w 0x0000002C[r12], r2
	cmp 0x00000000, r2
	bz9 .BB.LABEL.1_88
.BB.LABEL.1_87:	; if_then_bb808
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 389
	ori 0x00001000, r9, r9
.BB.LABEL.1_88:	; if_break_bb814
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 397
	movhi 0x0000FFD0, r0, r2
	ld.w 0x00000090[r2], r11
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 404
	ld.b 0x0000009F[r2], r12
	movea 0x00000010, r0, r12
	st.b r12, 0x0000009F[r2]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 397
	cmp 0x00000000, r11
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 405
	ld.b 0x0000009E[r2], r13
	st.b r12, 0x0000009E[r2]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 406
	ld.b 0x0000009D[r2], r13
	st.b r12, 0x0000009D[r2]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 407
	ld.b 0x0000009C[r2], r13
	st.b r12, 0x0000009C[r2]
	movea 0x00001000, r0, r2
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 399
	cmov 0x00000002, 0x00000000, r2, r2
	cmp 0x00000000, r5
	bz9 .BB.LABEL.1_102
.BB.LABEL.1_89:	; if_then_bb841
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 411
	movhi 0x0000FFD0, r0, r11
	mov 0x00000000, r15
	set1 0x00000000, 0x00000099[r11]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 412
	ld.bu 0x00000098[r11], r12
	mov 0x00000005, r16
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 415
	mov #_rx_mbox_id, r13
	mov #_rx_mbox_extened, r14
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 412
	andi 0x000000E0, r12, r12
	movhi 0x00008000, r0, r17
	st.b r12, 0x00000098[r11]
	mov r15, r12
	mov 0xDFFFFFFF, r11
.BB.LABEL.1_90:	; bb845.split.clone
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 417
	ld.w 0x00000000[r14], r18
	cmp 0x00000000, r18
	bnz9 .BB.LABEL.1_93
.BB.LABEL.1_91:	; if_then_bb852.clone
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 419
	nop
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 420
	ld.w 0x00000000[r13], r18
	br9 .BB.LABEL.1_94
.BB.LABEL.1_92:	; bb573.bb609.thread_crit_edge
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 0
	movea 0x00002000, r0, r10
	jr .BB.LABEL.1_74
.BB.LABEL.1_93:	; if_else_bb880.clone
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 430
	nop
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 431
	ld.w 0x00000000[r13], r18
	or r17, r18
.BB.LABEL.1_94:	; if_else_bb880.clone
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 0
	st23.w r18, 0xFFD00500[r12]
	ori 0x00008000, r15, r19
	st23.w r11, 0xFFD00504[r12]
	st23.w r19, 0xFFD00508[r12]
	st23.w r10, 0xFFD0050C[r12]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 417
	ld.w 0x00000004[r14], r18
	cmp 0x00000000, r18
	bnz9 .BB.LABEL.1_96
.BB.LABEL.1_95:	; if_then_bb852.clone.ul
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 419
	nop
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 420
	ld.w 0x00000004[r13], r18
	br9 .BB.LABEL.1_97
.BB.LABEL.1_96:	; if_else_bb880.clone.ul
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 430
	nop
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 431
	ld.w 0x00000004[r13], r18
	or r17, r18
.BB.LABEL.1_97:	; if_else_bb880.clone.ul
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 0
	movea 0x00000100, r15, r19
	st23.w r18, 0xFFD00510[r12]
	ori 0x00008000, r19, r19
	st23.w r11, 0xFFD00514[r12]
	st23.w r19, 0xFFD00518[r12]
	st23.w r10, 0xFFD0051C[r12]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 417
	ld.w 0x00000008[r14], r18
	cmp 0x00000000, r18
	bnz9 .BB.LABEL.1_99
.BB.LABEL.1_98:	; if_then_bb852.clone.ul244
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 419
	nop
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 420
	ld.w 0x00000008[r13], r18
	br9 .BB.LABEL.1_100
.BB.LABEL.1_99:	; if_else_bb880.clone.ul262
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 430
	nop
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 431
	ld.w 0x00000008[r13], r18
	or r17, r18
.BB.LABEL.1_100:	; if_else_bb880.clone.ul262
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 0
	movea 0x00000200, r15, r19
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 415
	add 0x0000000C, r14
	st23.w r18, 0xFFD00520[r12]
	ori 0x00008000, r19, r19
	add 0x0000000C, r13
	st23.w r11, 0xFFD00524[r12]
	st23.w r19, 0xFFD00528[r12]
	st23.w r10, 0xFFD0052C[r12]
	movea 0x00000300, r15, r15
	movea 0x00000030, r12, r12
	loop r16, .BB.LABEL.1_90
.BB.LABEL.1_101:	; bb916
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 441
	movhi 0x0000FFD0, r0, r10
	clr1 0x00000000, 0x00000099[r10]
.BB.LABEL.1_102:	; if_break_bb918
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 0
	cmp 0x00000000, r7
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 445
	bz9 .BB.LABEL.1_110
.BB.LABEL.1_103:	; if_then_bb925
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 447
	movhi 0x0000FFD0, r0, r10
	mov 0x00000000, r14
	set1 0x00000000, 0x00000099[r10]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 448
	ld.b 0x00000098[r10], r11
	mov 0x00000002, r16
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 451
	mov #_rx_mbox_id, r12
	mov #_rx_mbox_extened, r13
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 448
	ori 0x00000001, r11, r11
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 451
	movea 0x00000080, r12, r12
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 448
	andi 0x000000E1, r11, r11
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 451
	movea 0x00000080, r13, r13
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 448
	st.b r11, 0x00000098[r10]
	mov 0x00000005, r10
	movhi 0x00008000, r0, r11
	mov r14, r17
	mov 0xDFFFFFFF, r15
.BB.LABEL.1_104:	; bb929.split.clone
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 453
	ld.w 0x00000000[r13], r18
	ld.w 0x00000000[r12], r19
	cmp 0x00000000, r18
	bnz17 .BB.LABEL.1_138
.BB.LABEL.1_105:	; if_then_bb936.clone
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 0
	st23.w r19, 0xFFD00500[r17]
	st23.w r15, 0xFFD00504[r17]
	ori 0x00008000, r14, r18
	st23.w r18, 0xFFD00508[r17]
	st23.w r16, 0xFFD0050C[r17]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 453
	ld.w 0x00000004[r13], r18
	ld.w 0x00000004[r12], r19
	cmp 0x00000000, r18
	bz9 .BB.LABEL.1_107
.BB.LABEL.1_106:	; if_else_bb964.clone.ul
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 465
	or r11, r19
.BB.LABEL.1_107:	; if_then_bb936.clone.ul
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 0
	st23.w r19, 0xFFD00510[r17]
	movea 0x00000100, r14, r18
	st23.w r15, 0xFFD00514[r17]
	ori 0x00008000, r18, r18
	st23.w r18, 0xFFD00518[r17]
	st23.w r16, 0xFFD0051C[r17]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 453
	ld.w 0x00000008[r13], r18
	ld.w 0x00000008[r12], r19
	cmp 0x00000000, r18
	bnz17 .BB.LABEL.1_139
.BB.LABEL.1_108:	; if_then_bb936.clone.ul288
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 0
	st23.w r19, 0xFFD00520[r17]
	movea 0x00000200, r14, r18
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 451
	add 0x0000000C, r13
	st23.w r15, 0xFFD00524[r17]
	ori 0x00008000, r18, r18
	add 0x0000000C, r12
	st23.w r18, 0xFFD00528[r17]
	st23.w r16, 0xFFD0052C[r17]
	movea 0x00000300, r14, r14
	movea 0x00000030, r17, r17
	loop r10, .BB.LABEL.1_104
.BB.LABEL.1_109:	; bb1000
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 475
	movhi 0x0000FFD0, r0, r10
	clr1 0x00000000, 0x00000099[r10]
.BB.LABEL.1_110:	; if_break_bb1002
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 0
	cmp 0x00000000, r8
	bz9 .BB.LABEL.1_118
.BB.LABEL.1_111:	; if_then_bb1009
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 481
	movhi 0x0000FFD0, r0, r10
	mov 0x00000000, r14
	set1 0x00000000, 0x00000099[r10]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 482
	ld.b 0x00000098[r10], r11
	mov 0x00000004, r16
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 485
	mov #_rx_mbox_id, r12
	mov #_rx_mbox_extened, r13
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 482
	ori 0x00000002, r11, r11
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 485
	movea 0x00000100, r12, r12
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 482
	andi 0x000000E2, r11, r11
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 485
	movea 0x00000080, r13, r13
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 482
	st.b r11, 0x00000098[r10]
	mov 0x00000005, r10
	movhi 0x00008000, r0, r11
	mov r14, r17
	mov 0xDFFFFFFF, r15
.BB.LABEL.1_112:	; bb1013.split.clone
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 487
	ld.w 0x00000000[r13], r18
	ld.w 0x00000000[r12], r19
	cmp 0x00000000, r18
	bnz17 .BB.LABEL.1_140
.BB.LABEL.1_113:	; if_then_bb1020.clone
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 0
	st23.w r19, 0xFFD00500[r17]
	st23.w r15, 0xFFD00504[r17]
	ori 0x00008000, r14, r18
	st23.w r18, 0xFFD00508[r17]
	st23.w r16, 0xFFD0050C[r17]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 487
	ld.w 0x00000004[r13], r18
	ld.w 0x00000004[r12], r19
	cmp 0x00000000, r18
	bz9 .BB.LABEL.1_115
.BB.LABEL.1_114:	; if_else_bb1048.clone.ul
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 499
	or r11, r19
.BB.LABEL.1_115:	; if_then_bb1020.clone.ul
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 0
	st23.w r19, 0xFFD00510[r17]
	movea 0x00000100, r14, r18
	st23.w r15, 0xFFD00514[r17]
	ori 0x00008000, r18, r18
	st23.w r18, 0xFFD00518[r17]
	st23.w r16, 0xFFD0051C[r17]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 487
	ld.w 0x00000008[r13], r18
	ld.w 0x00000008[r12], r19
	cmp 0x00000000, r18
	bnz17 .BB.LABEL.1_141
.BB.LABEL.1_116:	; if_then_bb1020.clone.ul332
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 0
	st23.w r19, 0xFFD00520[r17]
	movea 0x00000200, r14, r18
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 485
	add 0x0000000C, r13
	st23.w r15, 0xFFD00524[r17]
	ori 0x00008000, r18, r18
	add 0x0000000C, r12
	st23.w r18, 0xFFD00528[r17]
	st23.w r16, 0xFFD0052C[r17]
	movea 0x00000300, r14, r14
	movea 0x00000030, r17, r17
	loop r10, .BB.LABEL.1_112
.BB.LABEL.1_117:	; bb1084
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 509
	movhi 0x0000FFD0, r0, r10
	clr1 0x00000000, 0x00000099[r10]
.BB.LABEL.1_118:	; if_break_bb1086
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 0
	cmp 0x00000000, r6
	bz9 .BB.LABEL.1_126
.BB.LABEL.1_119:	; if_then_bb1093
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 515
	movhi 0x0000FFD0, r0, r10
	mov 0x00000000, r14
	set1 0x00000000, 0x00000099[r10]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 516
	ld.b 0x00000098[r10], r11
	mov 0x00000008, r16
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 519
	mov #_rx_mbox_id, r12
	mov #_rx_mbox_extened, r13
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 516
	ori 0x00000003, r11, r11
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 519
	movea 0x00000180, r12, r12
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 516
	andi 0x000000E3, r11, r11
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 519
	movea 0x00000080, r13, r13
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 516
	st.b r11, 0x00000098[r10]
	mov 0x00000005, r10
	movhi 0x00008000, r0, r11
	mov r14, r17
	mov 0xDFFFFFFF, r15
.BB.LABEL.1_120:	; bb1097.split.clone
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 521
	ld.w 0x00000000[r13], r18
	ld.w 0x00000000[r12], r19
	cmp 0x00000000, r18
	bnz17 .BB.LABEL.1_142
.BB.LABEL.1_121:	; if_then_bb1104.clone
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 0
	st23.w r19, 0xFFD00500[r17]
	st23.w r15, 0xFFD00504[r17]
	ori 0x00008000, r14, r18
	st23.w r18, 0xFFD00508[r17]
	st23.w r16, 0xFFD0050C[r17]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 521
	ld.w 0x00000004[r13], r18
	ld.w 0x00000004[r12], r19
	cmp 0x00000000, r18
	bz9 .BB.LABEL.1_123
.BB.LABEL.1_122:	; if_else_bb1132.clone.ul
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 533
	or r11, r19
.BB.LABEL.1_123:	; if_then_bb1104.clone.ul
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 0
	st23.w r19, 0xFFD00510[r17]
	movea 0x00000100, r14, r18
	st23.w r15, 0xFFD00514[r17]
	ori 0x00008000, r18, r18
	st23.w r18, 0xFFD00518[r17]
	st23.w r16, 0xFFD0051C[r17]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 521
	ld.w 0x00000008[r13], r18
	ld.w 0x00000008[r12], r19
	cmp 0x00000000, r18
	bnz9 .BB.LABEL.1_143
.BB.LABEL.1_124:	; if_then_bb1104.clone.ul376
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 0
	st23.w r19, 0xFFD00520[r17]
	movea 0x00000200, r14, r18
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 519
	add 0x0000000C, r13
	st23.w r15, 0xFFD00524[r17]
	ori 0x00008000, r18, r18
	add 0x0000000C, r12
	st23.w r18, 0xFFD00528[r17]
	st23.w r16, 0xFFD0052C[r17]
	movea 0x00000300, r14, r14
	movea 0x00000030, r17, r17
	loop r10, .BB.LABEL.1_120
.BB.LABEL.1_125:	; bb1168
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 543
	movhi 0x0000FFD0, r0, r10
	clr1 0x00000000, 0x00000099[r10]
.BB.LABEL.1_126:	; if_break_bb1170
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 549
	movhi 0x0000FFD0, r0, r10
	ld.b 0x000000A4[r10], r11
	movea 0x00000010, r0, r11
	cmp 0x00000000, r5
	st.b r11, 0x000000A4[r10]
	bz9 .BB.LABEL.1_128
.BB.LABEL.1_127:	; if_then_bb1180
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 565
	movhi 0x0000FFD0, r0, r10
	movea 0x00001503, r0, r11
	st.w r11, 0x000000B8[r10]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 566
	nop
.BB.LABEL.1_128:	; if_break_bb1182
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 0
	cmp 0x00000000, r7
	bz9 .BB.LABEL.1_130
.BB.LABEL.1_129:	; if_then_bb1189
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 572
	movhi 0x0000FFD0, r0, r10
	movea 0x00001503, r0, r11
	st.w r11, 0x000000BC[r10]
.BB.LABEL.1_130:	; if_break_bb1191
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 0
	cmp 0x00000000, r8
	bz9 .BB.LABEL.1_132
.BB.LABEL.1_131:	; if_then_bb1198
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 578
	movhi 0x0000FFD0, r0, r10
	movea 0x00001503, r0, r11
	st.w r11, 0x000000C0[r10]
.BB.LABEL.1_132:	; if_break_bb1200
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 0
	cmp 0x00000000, r6
	bz9 .BB.LABEL.1_134
.BB.LABEL.1_133:	; if_then_bb1207
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 585
	movhi 0x0000FFD0, r0, r10
	movea 0x00001503, r0, r11
	st.w r11, 0x000000C4[r10]
.BB.LABEL.1_134:	; if_break_bb1209
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 593
	movhi 0x0000FFD0, r0, r10
	ld.bu 0x00000088[r10], r11
	mov 0x00000000, r12
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 595
	movhi 0x0000FFD0, r0, r13
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 593
	andi 0x000000FC, r11, r11
	st.b r11, 0x00000088[r10]
.BB.LABEL.1_135:	; bb1214
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 595
	tst1 0x00000000, 0x0000008C[r13]
	bz9 .BB.LABEL.1_144
.BB.LABEL.1_136:	; bb1221
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 0
	addi 0xFFFFE001, r12, r0
	bz9 .BB.LABEL.1_145
.BB.LABEL.1_137:	; bb1230
	nop
	add 0x00000001, r12
	br9 .BB.LABEL.1_135
.BB.LABEL.1_138:	; if_else_bb964.clone
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 465
	or r11, r19
	jr .BB.LABEL.1_105
.BB.LABEL.1_139:	; if_else_bb964.clone.ul301
	or r11, r19
	jr .BB.LABEL.1_108
.BB.LABEL.1_140:	; if_else_bb1048.clone
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 499
	or r11, r19
	jr .BB.LABEL.1_113
.BB.LABEL.1_141:	; if_else_bb1048.clone.ul345
	or r11, r19
	jr .BB.LABEL.1_116
.BB.LABEL.1_142:	; if_else_bb1132.clone
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 533
	or r11, r19
	jr .BB.LABEL.1_121
.BB.LABEL.1_143:	; if_else_bb1132.clone.ul389
	or r11, r19
	br9 .BB.LABEL.1_124
.BB.LABEL.1_144:	; bb1214.bb1230.thread_crit_edge
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 0
	movea 0xFFFFE000, r12, r12
	mov 0x00000000, r10
	br9 .BB.LABEL.1_146
.BB.LABEL.1_145:	; bb1221.bb1230.thread_crit_edge
	movea 0x00001FFF, r0, r10
.BB.LABEL.1_146:	; bb1230.thread
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 596
	cmp r12, r10
	setf 0x00000002, r10
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 598
	or r9, r2
	shl 0x0000000A, r10
	or r10, r2
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 602
	cmp 0x00000000, r5
	bz9 .BB.LABEL.1_154
.BB.LABEL.1_147:	; if_then_bb1250
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 604
	movhi 0x0000FFD0, r0, r5
	ld.bu 0x00000004[r5], r9
	mov 0x00000000, r10
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 606
	movhi 0x0000FFD0, r0, r11
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 604
	andi 0x000000FC, r9, r9
	st.b r9, 0x00000004[r5]
.BB.LABEL.1_148:	; bb1255
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 606
	tst1 0x00000007, 0x00000008[r11]
	bnz9 .BB.LABEL.1_151
.BB.LABEL.1_149:	; bb1267
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 0
	addi 0xFFFFE001, r10, r0
	bz9 .BB.LABEL.1_152
.BB.LABEL.1_150:	; bb1276
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 608
	nop
	add 0x00000001, r10
	br9 .BB.LABEL.1_148
.BB.LABEL.1_151:	; bb1255.bb1276.thread_crit_edge
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 0
	movea 0xFFFFE000, r10, r10
	mov 0x00000000, r5
	br9 .BB.LABEL.1_153
.BB.LABEL.1_152:	; bb1267.bb1276.thread_crit_edge
	movea 0x00001FFF, r0, r5
.BB.LABEL.1_153:	; bb1276.thread
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 616
	movhi 0x0000FFD0, r0, r9
	ld.w 0x000000B8[r9], r11
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 619
	movhi 0x0000FFC1, r0, r12
	movea 0x00000054, r0, r13
	movea 0x00000044, r0, r14
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 616
	ori 0x00000001, r11, r11
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 610
	cmp r10, r5
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 616
	st.w r11, 0x000000B8[r9]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 610
	setf 0x00000002, r5
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 619
	st.w r13, 0x00002114[r12]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 612
	shl 0x0000000A, r5
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 620
	st.w r14, 0x00002118[r12]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 612
	or r5, r2
.BB.LABEL.1_154:	; if_break_bb1294
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 624
	cmp 0x00000000, r7
	bz9 .BB.LABEL.1_162
.BB.LABEL.1_155:	; if_then_bb1301
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 626
	movhi 0x0000FFD0, r0, r5
	ld.bu 0x00000014[r5], r7
	mov 0x00000000, r9
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 628
	movhi 0x0000FFD0, r0, r10
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 626
	andi 0x000000FC, r7, r7
	st.b r7, 0x00000014[r5]
.BB.LABEL.1_156:	; bb1306
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 628
	tst1 0x00000007, 0x00000018[r10]
	bnz9 .BB.LABEL.1_159
.BB.LABEL.1_157:	; bb1318
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 0
	addi 0xFFFFE001, r9, r0
	bz9 .BB.LABEL.1_160
.BB.LABEL.1_158:	; bb1327
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 630
	nop
	add 0x00000001, r9
	br9 .BB.LABEL.1_156
.BB.LABEL.1_159:	; bb1306.bb1327.thread_crit_edge
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 0
	movea 0xFFFFE000, r9, r9
	mov 0x00000000, r5
	br9 .BB.LABEL.1_161
.BB.LABEL.1_160:	; bb1318.bb1327.thread_crit_edge
	movea 0x00001FFF, r0, r5
.BB.LABEL.1_161:	; bb1327.thread
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 637
	movhi 0x0000FFD0, r0, r7
	ld.w 0x000000BC[r7], r10
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 640
	movhi 0x0000FFC1, r0, r11
	movea 0x00000054, r0, r12
	movea 0x00000044, r0, r13
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 637
	ori 0x00000001, r10, r10
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 632
	cmp r9, r5
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 637
	st.w r10, 0x000000BC[r7]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 632
	setf 0x00000002, r5
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 640
	st.w r12, 0x00002138[r11]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 634
	shl 0x0000000A, r5
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 641
	st.w r13, 0x0000213C[r11]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 634
	or r5, r2
.BB.LABEL.1_162:	; if_break_bb1345
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 645
	cmp 0x00000000, r8
	bz9 .BB.LABEL.1_170
.BB.LABEL.1_163:	; if_then_bb1352
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 647
	movhi 0x0000FFD0, r0, r5
	ld.bu 0x00000024[r5], r7
	mov 0x00000000, r8
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 649
	movhi 0x0000FFD0, r0, r9
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 647
	andi 0x000000FC, r7, r7
	st.b r7, 0x00000024[r5]
.BB.LABEL.1_164:	; bb1357
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 649
	tst1 0x00000007, 0x00000028[r9]
	bnz9 .BB.LABEL.1_167
.BB.LABEL.1_165:	; bb1369
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 0
	addi 0xFFFFE001, r8, r0
	bz9 .BB.LABEL.1_168
.BB.LABEL.1_166:	; bb1378
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 651
	nop
	add 0x00000001, r8
	br9 .BB.LABEL.1_164
.BB.LABEL.1_167:	; bb1357.bb1378.thread_crit_edge
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 0
	movea 0xFFFFE000, r8, r8
	mov 0x00000000, r5
	br9 .BB.LABEL.1_169
.BB.LABEL.1_168:	; bb1369.bb1378.thread_crit_edge
	movea 0x00001FFF, r0, r5
.BB.LABEL.1_169:	; bb1378.thread
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 658
	movhi 0x0000FFD0, r0, r7
	ld.w 0x000000C0[r7], r9
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 661
	movhi 0x0000FFC1, r0, r10
	movea 0x00000054, r0, r11
	movea 0x00000044, r0, r12
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 658
	ori 0x00000001, r9, r9
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 653
	cmp r8, r5
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 658
	st.w r9, 0x000000C0[r7]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 653
	setf 0x00000002, r5
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 661
	st.w r11, 0x0000200C[r10]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 655
	shl 0x0000000A, r5
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 662
	st.w r12, 0x00002010[r10]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 655
	or r5, r2
.BB.LABEL.1_170:	; if_break_bb1396
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 667
	cmp 0x00000000, r6
	bz17 .BB.LABEL.1_4
.BB.LABEL.1_171:	; if_then_bb1403
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 669
	movhi 0x0000FFD0, r0, r5
	ld.bu 0x00000034[r5], r6
	mov 0x00000000, r7
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 671
	movhi 0x0000FFD0, r0, r8
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 669
	andi 0x000000FC, r6, r6
	st.b r6, 0x00000034[r5]
.BB.LABEL.1_172:	; bb1408
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 671
	tst1 0x00000007, 0x00000038[r8]
	bnz9 .BB.LABEL.1_175
.BB.LABEL.1_173:	; bb1420
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 0
	addi 0xFFFFE001, r7, r0
	bz9 .BB.LABEL.1_176
.BB.LABEL.1_174:	; bb1429
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 673
	nop
	add 0x00000001, r7
	br9 .BB.LABEL.1_172
.BB.LABEL.1_175:	; bb1408.bb1429.thread_crit_edge
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 0
	movea 0xFFFFE000, r7, r7
	mov 0x00000000, r5
	br9 .BB.LABEL.1_177
.BB.LABEL.1_176:	; bb1420.bb1429.thread_crit_edge
	movea 0x00001FFF, r0, r5
.BB.LABEL.1_177:	; bb1429.thread
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 680
	movhi 0x0000FFD0, r0, r6
	ld.w 0x000000C4[r6], r8
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 683
	movhi 0x0000FFC1, r0, r9
	movea 0x00000054, r0, r10
	movea 0x00000044, r0, r11
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 680
	ori 0x00000001, r8, r8
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 675
	cmp r7, r5
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 680
	st.w r8, 0x000000C4[r6]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 683
	st.w r10, 0x0000210C[r9]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 675
	setf 0x00000002, r10
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 677
	shl 0x0000000A, r10
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 684
	st.w r11, 0x00002110[r9]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 677
	or r2, r10
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 684
	jmp [r31]
.BB.LABEL.1_178:	; bb332.bb368.thread_crit_edge
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 0
	movea 0x00002000, r0, r10
	jr .BB.LABEL.1_37
_can_setup_rx_mbox:
	.stack _can_setup_rx_mbox = 0
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 705
	cmp 0x00000004, r6
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 711
	bh9 .BB.LABEL.2_2
.BB.LABEL.2_1:	; if_break_bb
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 718
	ld.bu 0x00000000[r7], r2
	mov r6, r8
	ld.w 0x00000004[r7], r5
	shl 0x00000007, r8
	mov #_rx_mbox_id, r9
	shl 0x00000002, r2
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 719
	mov #_rx_mbox_dlc, r10
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 718
	add r2, r8
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 722
	shl 0x00000002, r6
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 718
	add r8, r9
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 719
	add r8, r10
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 718
	st.w r5, 0x00000000[r9]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 719
	ld.bu 0x00000002[r7], r2
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 720
	mov #_rx_mbox_length, r11
	add r8, r11
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 721
	mov #_rx_mbox_extened, r5
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 719
	st.w r2, 0x00000000[r10]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 721
	add r5, r8
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 720
	ld.bu 0x00000003[r7], r2
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 722
	mov #_rx_mbox_cnt, r5
	add r6, r5
	movhi 0x00002000, r0, r6
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 720
	st.w r2, 0x00000000[r11]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 721
	ld.bu 0x00000001[r7], r2
	st.w r2, 0x00000000[r8]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 722
	ld.w 0x00000000[r5], r2
	add 0x00000001, r2
	st.w r2, 0x00000000[r5]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 724
	cmp 0x0000000F, r2
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 732
	ld.b 0x00000000[r7], r5
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 724
	setf 0x0000000B, r2
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 732
	ld.bu 0x00000000[r7], r5
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 733
	ld.w 0x00000004[r7], r8
	ld.w 0x00000004[r7], r8
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 734
	ld.b 0x00000002[r7], r9
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 732
	cmp 0x0000000F, r5
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 734
	ld.bu 0x00000002[r7], r9
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 735
	ld.b 0x00000001[r7], r10
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 732
	setf 0x0000000F, r10
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 735
	ld.bu 0x00000001[r7], r7
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 732
	or r2, r10
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 733
	cmp r6, r8
	setf 0x00000009, r2
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 735
	or r2, r10
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 734
	cmp 0x00000008, r9
	setf 0x0000000F, r2
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 735
	or r2, r10
	cmp 0x00000001, r7
	setf 0x0000000F, r2
	or r2, r10
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 737
	jmp [r31]
.BB.LABEL.2_2:	; bb163
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 0
	mov 0x00000002, r10
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 738
	jmp [r31]
_can_setup_tx_mbox:
	.stack _can_setup_tx_mbox = 0
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 752
	cmp 0x00000004, r6
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 758
	bh9 .BB.LABEL.3_2
.BB.LABEL.3_1:	; if_break_bb
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 765
	ld.bu 0x00000000[r7], r2
	mov r6, r8
	ld.w 0x00000004[r7], r5
	shl 0x00000007, r8
	mov #_tx_mbox_id, r9
	shl 0x00000002, r2
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 766
	mov #_tx_mbox_dlc, r10
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 765
	add r2, r8
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 769
	shl 0x00000002, r6
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 765
	add r8, r9
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 766
	add r8, r10
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 765
	st.w r5, 0x00000000[r9]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 766
	ld.bu 0x00000002[r7], r2
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 767
	mov #_tx_mbox_length, r11
	add r8, r11
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 768
	mov #_tx_mbox_extened, r5
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 766
	st.w r2, 0x00000000[r10]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 768
	add r5, r8
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 767
	ld.bu 0x00000003[r7], r2
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 769
	mov #_tx_mbox_cnt, r5
	add r6, r5
	movhi 0x00002000, r0, r6
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 767
	st.w r2, 0x00000000[r11]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 768
	ld.bu 0x00000001[r7], r2
	st.w r2, 0x00000000[r8]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 769
	ld.w 0x00000000[r5], r2
	add 0x00000001, r2
	st.w r2, 0x00000000[r5]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 775
	ld.b 0x00000000[r7], r2
	ld.bu 0x00000000[r7], r2
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 776
	ld.w 0x00000004[r7], r5
	ld.w 0x00000004[r7], r5
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 777
	ld.b 0x00000002[r7], r8
	ld.bu 0x00000002[r7], r8
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 778
	ld.b 0x00000001[r7], r9
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 776
	cmp r6, r5
	setf 0x00000009, r10
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 775
	cmp 0x0000000F, r2
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 778
	ld.bu 0x00000001[r7], r7
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 775
	setf 0x0000000F, r2
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 776
	or r2, r10
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 777
	cmp 0x00000008, r8
	setf 0x0000000F, r2
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 778
	or r2, r10
	cmp 0x00000001, r7
	setf 0x0000000F, r2
	or r2, r10
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 780
	jmp [r31]
.BB.LABEL.3_2:	; bb154
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 0
	mov 0x00000002, r10
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 781
	jmp [r31]
_can_tx_data:
	.stack _can_tx_data = 0
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 795
	ld.b 0x00000000[r7], r2
	movhi 0x00002000, r0, r10
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 803
	ld.bu 0x00000000[r7], r2
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 804
	ld.w 0x00000004[r7], r5
	ld.w 0x00000004[r7], r5
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 805
	ld.b 0x00000002[r7], r8
	ld.bu 0x00000002[r7], r8
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 806
	ld.b 0x00000001[r7], r9
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 804
	cmp r10, r5
	setf 0x00000009, r10
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 803
	cmp 0x0000000F, r2
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 806
	ld.bu 0x00000001[r7], r9
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 803
	setf 0x0000000F, r2
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 804
	or r2, r10
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 805
	cmp 0x00000008, r8
	setf 0x0000000F, r2
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 806
	or r2, r10
	cmp 0x00000001, r9
	setf 0x0000000F, r2
	or r2, r10
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 809
	cmp 0x00000005, r6
	cmov 0x00000009, 0x00000002, r10, r10
	bnc9 .BB.LABEL.4_6
.BB.LABEL.4_1:	; if_break_bb
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 816
	ld.bu 0x00000000[r7], r2
	mov r6, r5
	shl 0x00000004, r5
	add r5, r2
	ld23.bu 0xFFD002D0[r2], r2
	cmp 0x00000001, r2
	bnz9 .BB.LABEL.4_3
.BB.LABEL.4_2:	; if_break_bb.bb261_crit_edge
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 0
	movea 0x00000010, r0, r10
	br9 .BB.LABEL.4_6
.BB.LABEL.4_3:	; if_else_bb129
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 823
	ld.bu 0x00000000[r7], r2
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 828
	shl 0x00000008, r6
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 823
	ld.bu 0x00000000[r7], r8
	add r5, r2
	add r5, r8
	ld23.bu 0xFFD002D0[r8], r8
	andi 0x000000F9, r8, r8
	st23.b r8, 0xFFD002D0[r2]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 828
	ld.bu 0x00000000[r7], r2
	ld.w 0x00000008[r7], r8
	shl 0x00000004, r2
	add r6, r2
	st23.w r8, 0xFFD01008[r2]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 829
	ld.bu 0x00000000[r7], r2
	ld.w 0x0000000C[r7], r8
	shl 0x00000004, r2
	add r6, r2
	st23.w r8, 0xFFD0100C[r2]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 832
	ld.bu 0x00000001[r7], r2
	cmp 0x00000000, r2
	ld.bu 0x00000000[r7], r2
	ld.w 0x00000004[r7], r8
	bz9 .BB.LABEL.4_5
.BB.LABEL.4_4:	; if_else_bb215
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 0
	movhi 0x00008000, r0, r9
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 838
	or r9, r8
.BB.LABEL.4_5:	; if_else_bb215
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 0
	shl 0x00000004, r2
	mov 0x00000001, r9
	add r6, r2
	st23.w r8, 0xFFD01000[r2]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 842
	ld.bu 0x00000000[r7], r2
	ld.b 0x00000002[r7], r8
	shl 0x00000004, r2
	shl 0x0000001C, r8
	add r6, r2
	st23.w r8, 0xFFD01004[r2]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 846
	ld.bu 0x00000000[r7], r2
	add r5, r2
	st23.b r9, 0xFFD00250[r2]
.BB.LABEL.4_6:	; bb261
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 849
	jmp [r31]
_can0_init:
	.stack _can0_init = 0
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 871
	movea 0x00000010, r0, r2
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 878
	st23.w r2, 0xFFC12114[r0]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 879
	st23.w r2, 0xFFC12118[r0]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 882
	set1 0x00000007, 0xFFFFB178[r0]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 883
	set1 0x00000007, 0xFFFFB17A[r0]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 884
	set1 0x00000007, 0xFFFFB17C[r0]
	movhi HIGHW1(#_can0), r0, r2
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 886
	addi 0xFFFFFF06, r6, r0
	bz9 .BB.LABEL.5_4
.BB.LABEL.5_1:	; entry
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 0
	addi 0xFFFFFE0C, r6, r0
	bz9 .BB.LABEL.5_3
.BB.LABEL.5_2:	; entry
	addi 0xFFFFFC18, r6, r0
	mov 0x00000001, r10
	mov 0x00000004, r5
	bz9 .BB.LABEL.5_5
	br9 .BB.LABEL.5_6
.BB.LABEL.5_3:	; switch_clause_bb6
	mov 0x00000009, r5
	br9 .BB.LABEL.5_5
.BB.LABEL.5_4:	; switch_clause_bb7
	movea 0x00000013, r0, r5
.BB.LABEL.5_5:	; switch_clause_bb7
	st.w r5, LOWW(#_can0)[r2]
	mov 0x00000000, r10
.BB.LABEL.5_6:	; switch_break_bb
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 901
	mov #_can0, r2
	st.w r7, 0x00000004[r2]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 902
	st.w r8, 0x00000008[r2]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 903
	st.b r9, 0x0000000C[r2]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 907
	jmp [r31]
_can1_init:
	.stack _can1_init = 0
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 928
	movea 0x00000010, r0, r2
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 935
	st23.w r2, 0xFFC12138[r0]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 936
	st23.w r2, 0xFFC1213C[r0]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 940
	set1 0x00000007, 0xFFFFB17E[r0]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 941
	set1 0x00000007, 0xFFFFB180[r0]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 942
	set1 0x00000007, 0xFFFFB182[r0]
	movhi HIGHW1(#_can1), r0, r2
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 946
	addi 0xFFFFFF06, r6, r0
	bz9 .BB.LABEL.6_4
.BB.LABEL.6_1:	; entry
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 0
	addi 0xFFFFFE0C, r6, r0
	bz9 .BB.LABEL.6_3
.BB.LABEL.6_2:	; entry
	addi 0xFFFFFC18, r6, r0
	mov 0x00000001, r10
	mov 0x00000004, r5
	bz9 .BB.LABEL.6_5
	br9 .BB.LABEL.6_6
.BB.LABEL.6_3:	; switch_clause_bb6
	mov 0x00000009, r5
	br9 .BB.LABEL.6_5
.BB.LABEL.6_4:	; switch_clause_bb7
	movea 0x00000013, r0, r5
.BB.LABEL.6_5:	; switch_clause_bb7
	st.w r5, LOWW(#_can1)[r2]
	mov 0x00000000, r10
.BB.LABEL.6_6:	; switch_break_bb
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 961
	mov #_can1, r2
	st.w r7, 0x00000004[r2]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 962
	st.w r8, 0x00000008[r2]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 963
	st.b r9, 0x0000000C[r2]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 967
	jmp [r31]
_can2_init:
	.stack _can2_init = 0
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 989
	movea 0x00000010, r0, r2
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 996
	st23.w r2, 0xFFC1200C[r0]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 997
	st23.w r2, 0xFFC12010[r0]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 1001
	set1 0x00000007, 0xFFFFB184[r0]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 1002
	set1 0x00000007, 0xFFFFB186[r0]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 1003
	set1 0x00000007, 0xFFFFB188[r0]
	movhi HIGHW1(#_can2), r0, r2
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 1007
	addi 0xFFFFFF06, r6, r0
	bz9 .BB.LABEL.7_4
.BB.LABEL.7_1:	; entry
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 0
	addi 0xFFFFFE0C, r6, r0
	bz9 .BB.LABEL.7_3
.BB.LABEL.7_2:	; entry
	addi 0xFFFFFC18, r6, r0
	mov 0x00000001, r10
	mov 0x00000004, r5
	bz9 .BB.LABEL.7_5
	br9 .BB.LABEL.7_6
.BB.LABEL.7_3:	; switch_clause_bb6
	mov 0x00000009, r5
	br9 .BB.LABEL.7_5
.BB.LABEL.7_4:	; switch_clause_bb7
	movea 0x00000013, r0, r5
.BB.LABEL.7_5:	; switch_clause_bb7
	st.w r5, LOWW(#_can2)[r2]
	mov 0x00000000, r10
.BB.LABEL.7_6:	; switch_break_bb
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 1022
	mov #_can2, r2
	st.w r7, 0x00000004[r2]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 1023
	st.w r8, 0x00000008[r2]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 1024
	st.b r9, 0x0000000C[r2]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 1027
	jmp [r31]
_can3_init:
	.stack _can3_init = 0
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 1050
	movea 0x00000010, r0, r2
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 1057
	st23.w r2, 0xFFC1210C[r0]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 1058
	st23.w r2, 0xFFC12110[r0]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 1062
	set1 0x00000007, 0xFFFFB18A[r0]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 1063
	set1 0x00000007, 0xFFFFB18C[r0]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 1064
	set1 0x00000007, 0xFFFFB18E[r0]
	movhi HIGHW1(#_can3), r0, r2
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 1068
	addi 0xFFFFFF06, r6, r0
	bz9 .BB.LABEL.8_4
.BB.LABEL.8_1:	; entry
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 0
	addi 0xFFFFFE0C, r6, r0
	bz9 .BB.LABEL.8_3
.BB.LABEL.8_2:	; entry
	addi 0xFFFFFC18, r6, r0
	mov 0x00000001, r10
	mov 0x00000004, r5
	bz9 .BB.LABEL.8_5
	br9 .BB.LABEL.8_6
.BB.LABEL.8_3:	; switch_clause_bb6
	mov 0x00000009, r5
	br9 .BB.LABEL.8_5
.BB.LABEL.8_4:	; switch_clause_bb7
	movea 0x00000013, r0, r5
.BB.LABEL.8_5:	; switch_clause_bb7
	st.w r5, LOWW(#_can3)[r2]
	mov 0x00000000, r10
.BB.LABEL.8_6:	; switch_break_bb
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 1083
	mov #_can3, r2
	st.w r7, 0x00000004[r2]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 1084
	st.w r8, 0x00000008[r2]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 1085
	st.b r9, 0x0000000C[r2]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 1089
	jmp [r31]
_can_rx_data:
	.stack _can_rx_data = 0
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 1103
	cmp 0x00000005, r6
	mov 0x00000002, r10
	bnc9 .BB.LABEL.9_3
.BB.LABEL.9_1:	; if_break_bb
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 1121
	mov r6, r2
	shl 0x00000002, r2
	ld23.w 0xFFD000D8[r2], r5
	movea 0x00000020, r0, r10
	andi 0x00000001, r5, r0
	bnz9 .BB.LABEL.9_3
.BB.LABEL.9_2:	; if_break_bb23
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 1129
	shl 0x00000004, r6
	movea 0x000000FF, r0, r9
	ld23.w 0xFFD00E00[r6], r5
	mov 0x1FFFFFFF, r8
	mov 0x00000000, r10
	and r8, r5
	st.w r5, 0x00000004[r7]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 1132
	ld23.w 0xFFD00E04[r6], r5
	shr 0x0000001C, r5
	st.b r5, 0x00000002[r7]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 1136
	ld23.w 0xFFD00E08[r6], r5
	st.w r5, 0x00000008[r7]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 1137
	ld23.w 0xFFD00E0C[r6], r5
	st.w r5, 0x0000000C[r7]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 1140
	st23.w r9, 0xFFD000F8[r2]
.BB.LABEL.9_3:	; bb74
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 1144
	jmp [r31]
_u4_rx_fifo_chk:
	.stack _u4_rx_fifo_chk = 0
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 1154
	shl 0x00000002, r6
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 1156
	ld23.w 0xFFD000D8[r6], r2
	andi 0x00000001, r2, r2
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 1162
	xori 0x00000001, r2, r10
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 1164
	jmp [r31]
_can_module_busoffchk:
	.stack _can_module_busoffchk = 0
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 1176
	shl 0x00000004, r6
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 1181
	ori 0x00000008, r6, r2
	ld23.w 0xFFD00000[r2], r2
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 1182
	andi 0x00000008, r2, r5
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 1184
	cmov 0x0000000A, 0x00000002, r5, r10
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 1188
	andi 0x00000010, r2, r2
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 1190
	cmov 0x0000000A, 0x00000004, r2, r2
	or r2, r10
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 1195
	jmp [r31]
_can_module_chk:
	.stack _can_module_chk = 0
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 1206
	shl 0x00000004, r6
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 1211
	ori 0x0000000C, r6, r2
	ld23.w 0xFFD00000[r2], r10
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 1214
	jmp [r31]
_can_chint_init:
	.stack _can_chint_init = 0
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 1226
	cmp 0x00000005, r6
	mov 0x00000002, r10
	bnc17 .BB.LABEL.13_28
.BB.LABEL.13_1:	; if_break_bb
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 1242
	cmp 0x00000003, r6
	bh17 .BB.LABEL.13_27
.BB.LABEL.13_2:	; if_break_bb
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 0
	shl 0x00000002, r6
	jmp #.SWITCH.LABEL.13_29[r6]
.SWITCH.LABEL.13_29:
	jr .BB.LABEL.13_3
	jr .BB.LABEL.13_9
	jr .BB.LABEL.13_15
	jr .BB.LABEL.13_21
.SWITCH.LABEL.13_29.END:
.BB.LABEL.13_3:	; switch_clause_bb
	ld.w 0xFFFFBAF0[r0], r2
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 1246
	cmp 0x00000002, r8
	bnz9 .BB.LABEL.13_5
.BB.LABEL.13_4:	; if_then_bb14
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 0
	movhi 0x00000001, r0, r5
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 1248
	or r5, r2
	mov 0xFFFDFFFF, r6
	and r6, r2
	mov 0xFFFFFFFA, r8
	st.w r2, 0xFFFFBAF0[r0]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 1249
	ld.w 0xFFFFBAF0[r0], r2
	ori 0x00000002, r2, r2
	and r8, r2
	st.w r2, 0xFFFFBAF0[r0]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 1250
	ld.w 0xFFFFBAF4[r0], r2
	or r5, r2
	and r6, r2
	st.w r2, 0xFFFFBAF4[r0]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 1251
	ld.w 0xFFFFBAF4[r0], r2
	ori 0x00000002, r2, r2
	and r8, r2
	st.w r2, 0xFFFFBAF4[r0]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 1252
	ld.w 0xFFFFBAF8[r0], r2
	or r5, r2
	and r6, r2
	st.w r2, 0xFFFFBAF8[r0]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 1253
	ld.w 0xFFFFBAF8[r0], r2
	ori 0x00000002, r2, r2
	and r8, r2
	br9 .BB.LABEL.13_6
.BB.LABEL.13_5:	; if_else_bb33
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 0
	mov 0xFFFCFFFF, r5
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 1257
	and r5, r2
	mov 0xFFFFFFF9, r6
	st.w r2, 0xFFFFBAF0[r0]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 1258
	ld.w 0xFFFFBAF0[r0], r2
	ori 0x00000001, r2, r2
	and r6, r2
	st.w r2, 0xFFFFBAF0[r0]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 1259
	ld.w 0xFFFFBAF4[r0], r2
	and r5, r2
	st.w r2, 0xFFFFBAF4[r0]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 1260
	ld.w 0xFFFFBAF4[r0], r2
	ori 0x00000001, r2, r2
	and r6, r2
	st.w r2, 0xFFFFBAF4[r0]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 1261
	ld.w 0xFFFFBAF8[r0], r2
	and r5, r2
	st.w r2, 0xFFFFBAF8[r0]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 1262
	ld.w 0xFFFFBAF8[r0], r2
	ori 0x00000001, r2, r2
	and r6, r2
.BB.LABEL.13_6:	; if_break_bb52
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 0
	st.w r2, 0xFFFFBAF8[r0]
	mov 0x00000000, r10
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 1264
	cmp 0x0000000F, r7
	bgt9 .BB.LABEL.13_8
.BB.LABEL.13_7:	; if_then_bb58
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 1266
	clr1 0x00000004, 0xFFFFB179[r0]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 1267
	ld.bu 0xFFFFB178[r0], r2
	andi 0x0000000F, r7, r5
	andi 0x000000F0, r2, r2
	or r5, r2
	st.b r2, 0xFFFFB178[r0]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 1268
	set1 0x00000006, 0xFFFFB178[r0]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 1270
	clr1 0x00000007, 0xFFFFB178[r0]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 1272
	clr1 0x00000004, 0xFFFFB17B[r0]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 1273
	ld.bu 0xFFFFB17A[r0], r2
	andi 0x000000F0, r2, r2
	or r5, r2
	st.b r2, 0xFFFFB17A[r0]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 1274
	set1 0x00000006, 0xFFFFB17A[r0]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 1276
	clr1 0x00000007, 0xFFFFB17A[r0]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 1278
	clr1 0x00000004, 0xFFFFB17D[r0]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 1279
	ld.bu 0xFFFFB17C[r0], r2
	andi 0x000000F0, r2, r2
	or r5, r2
	st.b r2, 0xFFFFB17C[r0]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 1280
	set1 0x00000006, 0xFFFFB17C[r0]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 1282
	clr1 0x00000007, 0xFFFFB17C[r0]
	jmp [r31]
.BB.LABEL.13_8:	; if_else_bb74
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 1287
	set1 0x00000007, 0xFFFFB178[r0]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 1288
	set1 0x00000007, 0xFFFFB17A[r0]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 1289
	set1 0x00000007, 0xFFFFB17C[r0]
	jmp [r31]
.BB.LABEL.13_9:	; switch_clause_bb76
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 0
	ld.w 0xFFFFBAFC[r0], r2
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 1295
	cmp 0x00000002, r8
	bnz9 .BB.LABEL.13_11
.BB.LABEL.13_10:	; if_then_bb82
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 0
	movhi 0x00000001, r0, r5
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 1297
	or r5, r2
	mov 0xFFFDFFFF, r6
	and r6, r2
	mov 0xFFFFFFFA, r8
	st.w r2, 0xFFFFBAFC[r0]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 1298
	ld.w 0xFFFFBAFC[r0], r2
	ori 0x00000002, r2, r2
	and r8, r2
	st.w r2, 0xFFFFBAFC[r0]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 1299
	ld.w 0xFFFFBB00[r0], r2
	or r5, r2
	and r6, r2
	st.w r2, 0xFFFFBB00[r0]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 1300
	ld.w 0xFFFFBB00[r0], r2
	ori 0x00000002, r2, r2
	and r8, r2
	st.w r2, 0xFFFFBB00[r0]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 1301
	ld.w 0xFFFFBB04[r0], r2
	or r5, r2
	and r6, r2
	st.w r2, 0xFFFFBB04[r0]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 1302
	ld.w 0xFFFFBB04[r0], r2
	ori 0x00000002, r2, r2
	and r8, r2
	br9 .BB.LABEL.13_12
.BB.LABEL.13_11:	; if_else_bb101
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 0
	mov 0xFFFCFFFF, r5
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 1306
	and r5, r2
	mov 0xFFFFFFF9, r6
	st.w r2, 0xFFFFBAFC[r0]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 1307
	ld.w 0xFFFFBAFC[r0], r2
	ori 0x00000001, r2, r2
	and r6, r2
	st.w r2, 0xFFFFBAFC[r0]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 1308
	ld.w 0xFFFFBB00[r0], r2
	and r5, r2
	st.w r2, 0xFFFFBB00[r0]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 1309
	ld.w 0xFFFFBB00[r0], r2
	ori 0x00000001, r2, r2
	and r6, r2
	st.w r2, 0xFFFFBB00[r0]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 1310
	ld.w 0xFFFFBB04[r0], r2
	and r5, r2
	st.w r2, 0xFFFFBB04[r0]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 1311
	ld.w 0xFFFFBB04[r0], r2
	ori 0x00000001, r2, r2
	and r6, r2
.BB.LABEL.13_12:	; if_break_bb120
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 0
	st.w r2, 0xFFFFBB04[r0]
	mov 0x00000000, r10
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 1313
	cmp 0x0000000F, r7
	bgt9 .BB.LABEL.13_14
.BB.LABEL.13_13:	; if_then_bb126
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 1315
	clr1 0x00000004, 0xFFFFB17F[r0]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 1316
	ld.bu 0xFFFFB17E[r0], r2
	andi 0x0000000F, r7, r5
	andi 0x000000F0, r2, r2
	or r5, r2
	st.b r2, 0xFFFFB17E[r0]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 1317
	set1 0x00000006, 0xFFFFB17E[r0]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 1319
	clr1 0x00000007, 0xFFFFB17E[r0]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 1321
	clr1 0x00000004, 0xFFFFB181[r0]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 1322
	ld.bu 0xFFFFB180[r0], r2
	andi 0x000000F0, r2, r2
	or r5, r2
	st.b r2, 0xFFFFB180[r0]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 1323
	set1 0x00000006, 0xFFFFB180[r0]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 1325
	clr1 0x00000007, 0xFFFFB180[r0]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 1327
	clr1 0x00000004, 0xFFFFB183[r0]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 1328
	ld.bu 0xFFFFB182[r0], r2
	andi 0x000000F0, r2, r2
	or r5, r2
	st.b r2, 0xFFFFB182[r0]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 1329
	set1 0x00000006, 0xFFFFB182[r0]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 1331
	clr1 0x00000007, 0xFFFFB182[r0]
	jmp [r31]
.BB.LABEL.13_14:	; if_else_bb142
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 1336
	set1 0x00000007, 0xFFFFB17E[r0]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 1337
	set1 0x00000007, 0xFFFFB180[r0]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 1338
	set1 0x00000007, 0xFFFFB182[r0]
	jmp [r31]
.BB.LABEL.13_15:	; switch_clause_bb144
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 0
	ld.w 0xFFFFBB08[r0], r2
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 1345
	cmp 0x00000002, r8
	bnz9 .BB.LABEL.13_17
.BB.LABEL.13_16:	; if_then_bb150
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 0
	movhi 0x00000001, r0, r5
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 1347
	or r5, r2
	mov 0xFFFDFFFF, r6
	and r6, r2
	mov 0xFFFFFFFA, r8
	st.w r2, 0xFFFFBB08[r0]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 1348
	ld.w 0xFFFFBB08[r0], r2
	ori 0x00000002, r2, r2
	and r8, r2
	st.w r2, 0xFFFFBB08[r0]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 1349
	ld.w 0xFFFFBB0C[r0], r2
	or r5, r2
	and r6, r2
	st.w r2, 0xFFFFBB0C[r0]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 1350
	ld.w 0xFFFFBB0C[r0], r2
	ori 0x00000002, r2, r2
	and r8, r2
	st.w r2, 0xFFFFBB0C[r0]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 1351
	ld.w 0xFFFFBB10[r0], r2
	or r5, r2
	and r6, r2
	st.w r2, 0xFFFFBB10[r0]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 1352
	ld.w 0xFFFFBB10[r0], r2
	ori 0x00000002, r2, r2
	and r8, r2
	br9 .BB.LABEL.13_18
.BB.LABEL.13_17:	; if_else_bb169
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 0
	mov 0xFFFCFFFF, r5
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 1356
	and r5, r2
	mov 0xFFFFFFF9, r6
	st.w r2, 0xFFFFBB08[r0]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 1357
	ld.w 0xFFFFBB08[r0], r2
	ori 0x00000001, r2, r2
	and r6, r2
	st.w r2, 0xFFFFBB08[r0]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 1358
	ld.w 0xFFFFBB0C[r0], r2
	and r5, r2
	st.w r2, 0xFFFFBB0C[r0]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 1359
	ld.w 0xFFFFBB0C[r0], r2
	ori 0x00000001, r2, r2
	and r6, r2
	st.w r2, 0xFFFFBB0C[r0]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 1360
	ld.w 0xFFFFBB10[r0], r2
	and r5, r2
	st.w r2, 0xFFFFBB10[r0]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 1361
	ld.w 0xFFFFBB10[r0], r2
	ori 0x00000001, r2, r2
	and r6, r2
.BB.LABEL.13_18:	; if_break_bb188
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 0
	st.w r2, 0xFFFFBB10[r0]
	mov 0x00000000, r10
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 1363
	cmp 0x0000000F, r7
	bgt9 .BB.LABEL.13_20
.BB.LABEL.13_19:	; if_then_bb194
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 1365
	clr1 0x00000004, 0xFFFFB185[r0]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 1366
	ld.bu 0xFFFFB184[r0], r2
	andi 0x0000000F, r7, r5
	andi 0x000000F0, r2, r2
	or r5, r2
	st.b r2, 0xFFFFB184[r0]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 1367
	set1 0x00000006, 0xFFFFB184[r0]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 1369
	clr1 0x00000007, 0xFFFFB184[r0]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 1371
	clr1 0x00000004, 0xFFFFB187[r0]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 1372
	ld.bu 0xFFFFB186[r0], r2
	andi 0x000000F0, r2, r2
	or r5, r2
	st.b r2, 0xFFFFB186[r0]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 1373
	set1 0x00000006, 0xFFFFB186[r0]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 1375
	clr1 0x00000007, 0xFFFFB186[r0]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 1377
	clr1 0x00000004, 0xFFFFB189[r0]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 1378
	ld.bu 0xFFFFB188[r0], r2
	andi 0x000000F0, r2, r2
	or r5, r2
	st.b r2, 0xFFFFB188[r0]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 1379
	set1 0x00000006, 0xFFFFB188[r0]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 1381
	clr1 0x00000007, 0xFFFFB188[r0]
	jmp [r31]
.BB.LABEL.13_20:	; if_else_bb210
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 1386
	set1 0x00000007, 0xFFFFB184[r0]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 1387
	set1 0x00000007, 0xFFFFB186[r0]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 1388
	set1 0x00000007, 0xFFFFB188[r0]
	jmp [r31]
.BB.LABEL.13_21:	; switch_clause_bb212
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 0
	ld.w 0xFFFFBB14[r0], r2
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 1394
	cmp 0x00000002, r8
	bnz9 .BB.LABEL.13_23
.BB.LABEL.13_22:	; if_then_bb218
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 0
	movhi 0x00000001, r0, r5
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 1396
	or r5, r2
	mov 0xFFFDFFFF, r6
	and r6, r2
	mov 0xFFFFFFFA, r8
	st.w r2, 0xFFFFBB14[r0]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 1397
	ld.w 0xFFFFBB14[r0], r2
	ori 0x00000002, r2, r2
	and r8, r2
	st.w r2, 0xFFFFBB14[r0]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 1398
	ld.w 0xFFFFBB18[r0], r2
	or r5, r2
	and r6, r2
	st.w r2, 0xFFFFBB18[r0]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 1399
	ld.w 0xFFFFBB18[r0], r2
	ori 0x00000002, r2, r2
	and r8, r2
	st.w r2, 0xFFFFBB18[r0]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 1400
	ld.w 0xFFFFBB1C[r0], r2
	or r5, r2
	and r6, r2
	st.w r2, 0xFFFFBB1C[r0]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 1401
	ld.w 0xFFFFBB1C[r0], r2
	ori 0x00000002, r2, r2
	and r8, r2
	br9 .BB.LABEL.13_24
.BB.LABEL.13_23:	; if_else_bb237
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 0
	mov 0xFFFCFFFF, r5
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 1405
	and r5, r2
	mov 0xFFFFFFF9, r6
	st.w r2, 0xFFFFBB14[r0]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 1406
	ld.w 0xFFFFBB14[r0], r2
	ori 0x00000001, r2, r2
	and r6, r2
	st.w r2, 0xFFFFBB14[r0]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 1407
	ld.w 0xFFFFBB18[r0], r2
	and r5, r2
	st.w r2, 0xFFFFBB18[r0]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 1408
	ld.w 0xFFFFBB18[r0], r2
	ori 0x00000001, r2, r2
	and r6, r2
	st.w r2, 0xFFFFBB18[r0]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 1409
	ld.w 0xFFFFBB1C[r0], r2
	and r5, r2
	st.w r2, 0xFFFFBB1C[r0]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 1410
	ld.w 0xFFFFBB1C[r0], r2
	ori 0x00000001, r2, r2
	and r6, r2
.BB.LABEL.13_24:	; if_break_bb256
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 0
	st.w r2, 0xFFFFBB1C[r0]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 1412
	cmp 0x0000000F, r7
	bgt9 .BB.LABEL.13_26
.BB.LABEL.13_25:	; if_then_bb262
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 1414
	clr1 0x00000004, 0xFFFFB18B[r0]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 1415
	ld.bu 0xFFFFB18A[r0], r2
	andi 0x0000000F, r7, r5
	mov 0x00000000, r10
	andi 0x000000F0, r2, r2
	or r5, r2
	st.b r2, 0xFFFFB18A[r0]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 1416
	set1 0x00000006, 0xFFFFB18A[r0]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 1418
	clr1 0x00000007, 0xFFFFB18A[r0]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 1420
	clr1 0x00000004, 0xFFFFB18D[r0]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 1421
	ld.bu 0xFFFFB18C[r0], r2
	andi 0x000000F0, r2, r2
	or r5, r2
	st.b r2, 0xFFFFB18C[r0]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 1422
	set1 0x00000006, 0xFFFFB18C[r0]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 1424
	clr1 0x00000007, 0xFFFFB18C[r0]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 1426
	clr1 0x00000004, 0xFFFFB18F[r0]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 1427
	ld.bu 0xFFFFB18E[r0], r2
	andi 0x000000F0, r2, r2
	or r5, r2
	st.b r2, 0xFFFFB18E[r0]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 1428
	set1 0x00000006, 0xFFFFB18E[r0]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 1430
	clr1 0x00000007, 0xFFFFB18E[r0]
	jmp [r31]
.BB.LABEL.13_26:	; if_else_bb278
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 1435
	set1 0x00000007, 0xFFFFB18A[r0]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 1436
	set1 0x00000007, 0xFFFFB18C[r0]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 1437
	set1 0x00000007, 0xFFFFB18E[r0]
.BB.LABEL.13_27:	; if_break_bb.bb282_crit_edge
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 0
	mov 0x00000000, r10
.BB.LABEL.13_28:	; bb282
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 1443
	jmp [r31]
_can_gint_init:
	.stack _can_gint_init = 0
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 1453
	ld.w 0xFFFFBAE8[r0], r2
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 1455
	cmp 0x00000002, r7
	bnz9 .BB.LABEL.14_2
.BB.LABEL.14_1:	; if_then_bb
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 0
	movhi 0x00000001, r0, r5
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 1458
	or r5, r2
	mov 0xFFFDFFFF, r7
	and r7, r2
	mov 0xFFFFFFFA, r8
	st.w r2, 0xFFFFBAE8[r0]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 1459
	ld.w 0xFFFFBAE8[r0], r2
	ori 0x00000002, r2, r2
	and r8, r2
	st.w r2, 0xFFFFBAE8[r0]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 1461
	ld.w 0xFFFFBAEC[r0], r2
	or r5, r2
	and r7, r2
	st.w r2, 0xFFFFBAEC[r0]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 1462
	ld.w 0xFFFFBAEC[r0], r2
	ori 0x00000002, r2, r2
	and r8, r2
	br9 .BB.LABEL.14_3
.BB.LABEL.14_2:	; if_else_bb
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 0
	mov 0xFFFCFFFF, r5
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 1467
	and r5, r2
	mov 0xFFFFFFF9, r7
	st.w r2, 0xFFFFBAE8[r0]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 1468
	ld.w 0xFFFFBAE8[r0], r2
	ori 0x00000001, r2, r2
	and r7, r2
	st.w r2, 0xFFFFBAE8[r0]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 1470
	ld.w 0xFFFFBAEC[r0], r2
	and r5, r2
	st.w r2, 0xFFFFBAEC[r0]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 1471
	ld.w 0xFFFFBAEC[r0], r2
	ori 0x00000001, r2, r2
	and r7, r2
.BB.LABEL.14_3:	; if_break_bb
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 0
	st.w r2, 0xFFFFBAEC[r0]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 1473
	cmp 0x0000000F, r6
	bgt9 .BB.LABEL.14_5
.BB.LABEL.14_4:	; if_then_bb35
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 1475
	clr1 0x00000004, 0xFFFFB175[r0]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 1476
	ld.bu 0xFFFFB174[r0], r2
	andi 0x0000000F, r6, r5
	andi 0x000000F0, r2, r2
	or r5, r2
	st.b r2, 0xFFFFB174[r0]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 1477
	set1 0x00000006, 0xFFFFB174[r0]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 1479
	clr1 0x00000007, 0xFFFFB174[r0]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 1481
	clr1 0x00000004, 0xFFFFB177[r0]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 1482
	ld.bu 0xFFFFB176[r0], r2
	andi 0x000000F0, r2, r2
	or r5, r2
	st.b r2, 0xFFFFB176[r0]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 1483
	set1 0x00000006, 0xFFFFB176[r0]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 1485
	clr1 0x00000007, 0xFFFFB176[r0]
	jmp [r31]
.BB.LABEL.14_5:	; if_else_bb46
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 1490
	set1 0x00000007, 0xFFFFB174[r0]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_FCAN.c", 1491
	set1 0x00000007, 0xFFFFB176[r0]
	jmp [r31]
	.section .bss, bss
	.align 4
_can0:
	.ds (16)
	.align 4
_can1:
	.ds (16)
	.align 4
_can2:
	.ds (16)
	.align 4
_can3:
	.ds (16)
	.align 4
_rx_mbox_no:
	.ds (4)
	.align 4
_rx_mbox_id:
	.ds (512)
	.align 4
_rx_mbox_dlc:
	.ds (512)
	.align 4
_rx_mbox_length:
	.ds (512)
	.align 4
_rx_mbox_extened:
	.ds (512)
	.align 4
_rx_mbox_cnt:
	.ds (16)
	.align 4
_tx_mbox_no:
	.ds (4)
	.align 4
_tx_mbox_id:
	.ds (512)
	.align 4
_tx_mbox_dlc:
	.ds (512)
	.align 4
_tx_mbox_length:
	.ds (512)
	.align 4
_tx_mbox_extened:
	.ds (512)
	.align 4
_tx_mbox_cnt:
	.ds (16)
