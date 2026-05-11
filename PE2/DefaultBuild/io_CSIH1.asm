#CC-RH Compiler RH850 Assembler Source
#@	CC-RH Version : V2.06.00  [28 Nov 2023]
#@	Command : Common\fi_pe2_error.c ..\Common\iolib\io_CPU.c ..\Common\iolib\io_ADC.c ..\Common\iolib\io_CSIH0.c ..\Common\iolib\io_CSIH1.c ..\Common\iolib\io_ENCA0.c ..\Common\iolib\io_ENCA1.c ..\Common\iolib\io_FCAN.c ..\Common\iolib\io_RDC20.c ..\Common\iolib\io_RDC21.c ..\Common\iolib\io_SCI0_40MHz.c ..\Common\iolib\io_SCI1_40MHz.c ..\Common\iolib\io_SCI2_40MHz.c ..\Common\iolib\io_TAUD0.c ..\Common\iolib\io_TAUD1.c ..\Common\iolib\io_TAUJ0.c ..\Common\iolib\io_TSG30.c ..\Common\iolib\io_TSG31.c ..\PE1\AWatcher\VECLIB_CMDMONI.c src\fpmsm_main.c ..\PE1\src\fi_AWatcher.c src\fi_1ms_int.c src\fi_20us_int.c src\fi_enc1_int.c src\fi_pwm_int.c ..\PE1\src\fb_kpwm_tbl.c ..\PE1\src\fb_therm_calc.c ..\PE1\src\fb_therm_tbl_module.c ..\PE1\src\fb_vctrlerr_tbl.c ..\PE1\src\fi_pwm_vctrlerrtbl.c ..\Common\iolib\io_PIO_amdt0530.c -Xobj_path=DefaultBuild -Xcpu=g3m -g -g_line -Ospeed -Oinline_size -I..\PE1\src -Isrc -I..\Common -D__CLK_HSB=80,__CLK_LSB=40,__CLKC_HSB=80,__CLK_CLSB=40 -use_recipf -Xasm_path=DefaultBuild -c
#@	compiled at Thu Aug 22 10:25:06 2024

	.file "..\Common\iolib\io_CSIH1.c"

	$reg_mode 32
	.dbl_size 8

	.public _csih1_init
	.public _csih1_RA270000_init
	.public _u1_CSIH1_SO_1byte
	.public _u1_CSIH1_SO_2byte
	.public _u1_CSIH1_SI_1byte
	.public _u1_CSIH1_SI_2byte
	.public _csih1_tx_intlv_init
	.public _u1_TX1_RA270000
	.public _u1_RX1_RA270000
	.public _csih1_eeprom_init
	.public _u1_CSIH1_EPIF_TX_2byte
	.public _u1_CSIH1_EPIF_TX_1byte
	.public _u1_CSIH1_EPIF_RX_2byte
	.public _u1_CSIH1_EPIF_RX_1byte
	.public _eprom_cs

	.section .text, text
_csih1_init:
	.stack _csih1_init = 0
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_CSIH1.c", 60
	movhi 0x0000FFC1, r0, r2
	mov 0x00010010, r5
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_CSIH1.c", 63
	st.w r5, 0x00002100[r2]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_CSIH1.c", 64
	st.w r5, 0x00002104[r2]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_CSIH1.c", 65
	st.w r5, 0x00002108[r2]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_CSIH1.c", 66
	st.w r5, 0x0000210C[r2]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_CSIH1.c", 69
	movhi 0x0000FFD8, r0, r2
	st.b r0, 0x00002000[r2]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_CSIH1.c", 73
	ld.hu 0x00002014[r2], r5
	andi 0x00001FFF, r5, r5
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_CSIH1.c", 77
	cmp 0x00000001, r6
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_CSIH1.c", 73
	st.h r5, 0x00002014[r2]
	movhi 0x0000FFD8, r0, r2
	ld.h 0x00003068[r2], r2
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_CSIH1.c", 77
	bz9 .BB.LABEL.1_5
.BB.LABEL.1_1:	; entry
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_CSIH1.c", 0
	cmp 0x00000002, r6
	bz9 .BB.LABEL.1_6
.BB.LABEL.1_2:	; entry
	cmp 0x00000004, r6
	bz9 .BB.LABEL.1_7
.BB.LABEL.1_3:	; entry
	cmp 0x00000008, r6
	bz9 .BB.LABEL.1_8
.BB.LABEL.1_4:	; switch_clause_bb21
	movea 0xFFFFF0A0, r0, r5
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_CSIH1.c", 97
	ori 0x000000A0, r2, r2
	br9 .BB.LABEL.1_9
.BB.LABEL.1_5:	; switch_clause_bb
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_CSIH1.c", 0
	movea 0xFFFFF028, r0, r5
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_CSIH1.c", 80
	ori 0x00000028, r2, r2
	br9 .BB.LABEL.1_9
.BB.LABEL.1_6:	; switch_clause_bb9
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_CSIH1.c", 0
	movea 0xFFFFF014, r0, r5
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_CSIH1.c", 84
	ori 0x00000014, r2, r2
	br9 .BB.LABEL.1_9
.BB.LABEL.1_7:	; switch_clause_bb13
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_CSIH1.c", 0
	movea 0xFFFFF00A, r0, r5
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_CSIH1.c", 89
	ori 0x0000000A, r2, r2
	br9 .BB.LABEL.1_9
.BB.LABEL.1_8:	; switch_clause_bb17
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_CSIH1.c", 0
	movea 0xFFFFF005, r0, r5
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_CSIH1.c", 93
	ori 0x00000005, r2, r2
.BB.LABEL.1_9:	; switch_clause_bb17
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_CSIH1.c", 0
	and r5, r2
	movhi 0x0000FFD8, r0, r5
	st.h r2, 0x00003068[r5]
	movea 0x00000010, r0, r2
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_CSIH1.c", 102
	st.w r2, 0x00002010[r5]
	movea 0x00000056, r0, r6
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_CSIH1.c", 117
	st.h r0, 0x00003040[r5]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_CSIH1.c", 123
	st.w r0, 0x00003000[r5]
	mov 0x08008000, r2
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_CSIH1.c", 131
	st.w r2, 0x00003044[r5]
	ori 0x00008000, r0, r2
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_CSIH1.c", 147
	st.w r2, 0x00003048[r5]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_CSIH1.c", 163
	movhi 0x0000FFC1, r0, r2
	st.w r6, 0x00002100[r2]
	movea 0x00000066, r0, r6
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_CSIH1.c", 165
	st.w r6, 0x00002104[r2]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_CSIH1.c", 166
	st.w r6, 0x00002108[r2]
	movea 0x00000046, r0, r6
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_CSIH1.c", 168
	st.w r6, 0x0000210C[r2]
	movea 0x00000100, r0, r2
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_CSIH1.c", 170
	st.h r2, 0x00002008[r5]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_CSIH1.c", 171
	set1 0x00000007, 0x00002000[r5]
	jmp [r31]
_csih1_RA270000_init:
	.stack _csih1_RA270000_init = 0
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_CSIH1.c", 209
	movhi 0x0000FFC1, r0, r2
	mov 0x00010010, r5
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_CSIH1.c", 212
	st.w r5, 0x00002100[r2]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_CSIH1.c", 213
	st.w r5, 0x00002104[r2]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_CSIH1.c", 214
	st.w r5, 0x00002108[r2]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_CSIH1.c", 215
	st.w r5, 0x0000210C[r2]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_CSIH1.c", 218
	movhi 0x0000FFD8, r0, r2
	st.b r0, 0x00002000[r2]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_CSIH1.c", 222
	ld.hu 0x00002014[r2], r5
	andi 0x00001FFF, r5, r5
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_CSIH1.c", 226
	addi 0xFFFFFF06, r6, r0
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_CSIH1.c", 222
	st.h r5, 0x00002014[r2]
	movhi 0x0000FFD8, r0, r2
	ld.h 0x00003068[r2], r2
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_CSIH1.c", 226
	bz9 .BB.LABEL.2_6
.BB.LABEL.2_1:	; entry
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_CSIH1.c", 0
	addi 0xFFFFFE0C, r6, r0
	bz9 .BB.LABEL.2_5
.BB.LABEL.2_2:	; entry
	addi 0xFFFFFC18, r6, r0
	bz9 .BB.LABEL.2_4
.BB.LABEL.2_3:	; switch_clause_bb17
	movea 0xFFFFF140, r0, r5
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_CSIH1.c", 243
	ori 0x00000140, r2, r2
	br9 .BB.LABEL.2_7
.BB.LABEL.2_4:	; switch_clause_bb
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_CSIH1.c", 0
	movea 0xFFFFF028, r0, r5
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_CSIH1.c", 229
	ori 0x00000028, r2, r2
	br9 .BB.LABEL.2_7
.BB.LABEL.2_5:	; switch_clause_bb9
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_CSIH1.c", 0
	movea 0xFFFFF050, r0, r5
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_CSIH1.c", 233
	ori 0x00000050, r2, r2
	br9 .BB.LABEL.2_7
.BB.LABEL.2_6:	; switch_clause_bb13
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_CSIH1.c", 0
	movea 0xFFFFF0A0, r0, r5
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_CSIH1.c", 238
	ori 0x000000A0, r2, r2
.BB.LABEL.2_7:	; switch_clause_bb13
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_CSIH1.c", 0
	and r5, r2
	movhi 0x0000FFD8, r0, r5
	st.h r2, 0x00003068[r5]
	movea 0x00000010, r0, r2
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_CSIH1.c", 248
	st.w r2, 0x00002010[r5]
	movea 0x00000056, r0, r6
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_CSIH1.c", 263
	st.h r0, 0x00003040[r5]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_CSIH1.c", 269
	st.w r0, 0x00003000[r5]
	mov 0x2F008000, r2
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_CSIH1.c", 277
	st.w r2, 0x00003044[r5]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_CSIH1.c", 293
	movhi 0x0000FFC1, r0, r2
	st.w r6, 0x00002100[r2]
	movea 0x00000066, r0, r6
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_CSIH1.c", 295
	st.w r6, 0x00002104[r2]
	movea 0x00000046, r0, r6
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_CSIH1.c", 296
	st.w r6, 0x00002108[r2]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_CSIH1.c", 298
	st.w r6, 0x0000210C[r2]
	movea 0x00000100, r0, r2
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_CSIH1.c", 300
	st.h r2, 0x00002008[r5]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_CSIH1.c", 301
	set1 0x00000007, 0x00002000[r5]
	jmp [r31]
_u1_CSIH1_SO_1byte:
	.stack _u1_CSIH1_SO_1byte = 0
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_CSIH1.c", 327
	ld23.w 0xFFD82004[r0], r2
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_CSIH1.c", 331
	andi 0x00000080, r2, r0
	bnz9 .BB.LABEL.3_2
.BB.LABEL.3_1:	; if_then_bb
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_CSIH1.c", 0
	movhi 0x0000000E, r0, r2
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_CSIH1.c", 333
	or r2, r6
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_CSIH1.c", 334
	st23.w r6, 0xFFD83008[r0]
	mov 0x00000001, r10
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_CSIH1.c", 335
	jmp [r31]
.BB.LABEL.3_2:	; bb13
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_CSIH1.c", 0
	mov 0x00000000, r10
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_CSIH1.c", 341
	jmp [r31]
_u1_CSIH1_SO_2byte:
	.stack _u1_CSIH1_SO_2byte = 0
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_CSIH1.c", 343
	ld23.w 0xFFD82004[r0], r2
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_CSIH1.c", 347
	andi 0x00000080, r2, r0
	bnz9 .BB.LABEL.4_2
.BB.LABEL.4_1:	; if_then_bb
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_CSIH1.c", 0
	movhi 0x0000000D, r0, r2
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_CSIH1.c", 349
	or r2, r6
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_CSIH1.c", 350
	st23.w r6, 0xFFD83008[r0]
	mov 0x00000001, r10
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_CSIH1.c", 351
	jmp [r31]
.BB.LABEL.4_2:	; bb13
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_CSIH1.c", 0
	mov 0x00000000, r10
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_CSIH1.c", 357
	jmp [r31]
_u1_CSIH1_SI_1byte:
	.stack _u1_CSIH1_SI_1byte = 0
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_CSIH1.c", 372
	ld23.w 0xFFD82004[r0], r2
	movhi 0x0000FF00, r0, r5
	movhi 0x00000100, r0, r7
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_CSIH1.c", 375
	and r5, r2
	cmp r7, r2
	bnz9 .BB.LABEL.5_2
.BB.LABEL.5_1:	; if_then_bb
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_CSIH1.c", 377
	ld23.w 0xFFD83010[r0], r2
	mov 0x00000001, r10
	st.b r2, 0x00000000[r6]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_CSIH1.c", 378
	jmp [r31]
.BB.LABEL.5_2:	; bb11
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_CSIH1.c", 0
	mov 0x00000000, r10
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_CSIH1.c", 384
	jmp [r31]
_u1_CSIH1_SI_2byte:
	.stack _u1_CSIH1_SI_2byte = 0
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_CSIH1.c", 386
	ld23.w 0xFFD82004[r0], r2
	movhi 0x0000FF00, r0, r5
	movhi 0x00000100, r0, r7
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_CSIH1.c", 389
	and r5, r2
	cmp r7, r2
	bnz9 .BB.LABEL.6_2
.BB.LABEL.6_1:	; if_then_bb
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_CSIH1.c", 391
	ld23.w 0xFFD83010[r0], r2
	mov 0x00000001, r10
	st.h r2, 0x00000000[r6]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_CSIH1.c", 392
	jmp [r31]
.BB.LABEL.6_2:	; bb11
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_CSIH1.c", 0
	mov 0x00000000, r10
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_CSIH1.c", 398
	jmp [r31]
_csih1_tx_intlv_init:
	.stack _csih1_tx_intlv_init = 0
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_CSIH1.c", 411
	ld.w 0xFFFFBB6C[r0], r2
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_CSIH1.c", 414
	cmp 0x00000002, r7
	bnz9 .BB.LABEL.7_2
.BB.LABEL.7_1:	; if_then_bb
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_CSIH1.c", 0
	movhi 0x00000001, r0, r5
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_CSIH1.c", 416
	or r5, r2
	mov 0xFFFDFFFF, r7
	and r7, r2
	mov 0xFFFFFFFA, r8
	st.w r2, 0xFFFFBB6C[r0]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_CSIH1.c", 417
	ld.w 0xFFFFBB6C[r0], r2
	ori 0x00000002, r2, r2
	and r8, r2
	br9 .BB.LABEL.7_3
.BB.LABEL.7_2:	; if_else_bb
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_CSIH1.c", 0
	mov 0xFFFCFFFF, r5
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_CSIH1.c", 421
	and r5, r2
	mov 0xFFFFFFF9, r7
	st.w r2, 0xFFFFBB6C[r0]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_CSIH1.c", 422
	ld.w 0xFFFFBB6C[r0], r2
	ori 0x00000001, r2, r2
	and r7, r2
.BB.LABEL.7_3:	; if_break_bb
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_CSIH1.c", 0
	st.w r2, 0xFFFFBB6C[r0]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_CSIH1.c", 424
	cmp 0x0000000F, r6
	bgt9 .BB.LABEL.7_5
.BB.LABEL.7_4:	; if_then_bb23
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_CSIH1.c", 426
	clr1 0x00000004, 0xFFFFB1B7[r0]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_CSIH1.c", 427
	ld.bu 0xFFFFB1B6[r0], r2
	andi 0x0000000F, r6, r5
	andi 0x000000F0, r2, r2
	or r5, r2
	st.b r2, 0xFFFFB1B6[r0]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_CSIH1.c", 428
	set1 0x00000006, 0xFFFFB1B6[r0]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_CSIH1.c", 430
	clr1 0x00000007, 0xFFFFB1B6[r0]
	jmp [r31]
.BB.LABEL.7_5:	; if_else_bb29
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_CSIH1.c", 434
	set1 0x00000007, 0xFFFFB1B6[r0]
	jmp [r31]
_u1_TX1_RA270000:
	.stack _u1_TX1_RA270000 = 0
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_CSIH1.c", 454
	ld23.w 0xFFD82004[r0], r2
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_CSIH1.c", 458
	andi 0x00000080, r2, r0
	bnz9 .BB.LABEL.8_2
.BB.LABEL.8_1:	; if_then_bb
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_CSIH1.c", 460
	shl 0x0000000E, r6
	movhi 0x0000000E, r0, r2
	or r2, r6
	shl 0x00000008, r7
	mov 0x000E4000, r2
	and r2, r6
	or r8, r7
	andi 0x00001FFF, r7, r2
	mov 0x00000001, r10
	or r6, r2
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_CSIH1.c", 461
	st23.w r2, 0xFFD83008[r0]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_CSIH1.c", 462
	jmp [r31]
.BB.LABEL.8_2:	; bb30
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_CSIH1.c", 0
	mov 0x00000000, r10
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_CSIH1.c", 468
	jmp [r31]
_u1_RX1_RA270000:
	.stack _u1_RX1_RA270000 = 0
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_CSIH1.c", 482
	ld23.w 0xFFD82004[r0], r2
	movhi 0x0000FF00, r0, r5
	movhi 0x00000100, r0, r7
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_CSIH1.c", 485
	and r5, r2
	cmp r7, r2
	bnz9 .BB.LABEL.9_2
.BB.LABEL.9_1:	; if_then_bb
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_CSIH1.c", 487
	ld23.w 0xFFD83010[r0], r2
	mov 0x00000001, r10
	st.b r2, 0x00000000[r6]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_CSIH1.c", 488
	jmp [r31]
.BB.LABEL.9_2:	; bb11
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_CSIH1.c", 0
	mov 0x00000000, r10
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_CSIH1.c", 494
	jmp [r31]
_csih1_eeprom_init:
	.stack _csih1_eeprom_init = 0
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_CSIH1.c", 518
	movhi 0x0000FFC1, r0, r2
	mov 0x00010010, r5
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_CSIH1.c", 521
	st.w r5, 0x00002100[r2]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_CSIH1.c", 522
	st.w r5, 0x00002104[r2]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_CSIH1.c", 523
	st.w r5, 0x00002108[r2]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_CSIH1.c", 527
	movhi 0x0000FFD8, r0, r2
	st.b r0, 0x00002000[r2]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_CSIH1.c", 531
	ld.hu 0x00002014[r2], r5
	andi 0x00001FFF, r5, r5
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_CSIH1.c", 535
	cmp 0x00000001, r6
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_CSIH1.c", 531
	st.h r5, 0x00002014[r2]
	movhi 0x0000FFD8, r0, r2
	ld.h 0x00003068[r2], r2
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_CSIH1.c", 535
	bz9 .BB.LABEL.10_5
.BB.LABEL.10_1:	; entry
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_CSIH1.c", 0
	cmp 0x00000002, r6
	bz9 .BB.LABEL.10_6
.BB.LABEL.10_2:	; entry
	cmp 0x00000004, r6
	bz9 .BB.LABEL.10_7
.BB.LABEL.10_3:	; entry
	cmp 0x00000008, r6
	bz9 .BB.LABEL.10_8
.BB.LABEL.10_4:	; switch_clause_bb21
	movea 0xFFFFF0A0, r0, r5
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_CSIH1.c", 555
	ori 0x000000A0, r2, r2
	br9 .BB.LABEL.10_9
.BB.LABEL.10_5:	; switch_clause_bb
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_CSIH1.c", 0
	movea 0xFFFFF028, r0, r5
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_CSIH1.c", 538
	ori 0x00000028, r2, r2
	br9 .BB.LABEL.10_9
.BB.LABEL.10_6:	; switch_clause_bb9
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_CSIH1.c", 0
	movea 0xFFFFF014, r0, r5
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_CSIH1.c", 542
	ori 0x00000014, r2, r2
	br9 .BB.LABEL.10_9
.BB.LABEL.10_7:	; switch_clause_bb13
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_CSIH1.c", 0
	movea 0xFFFFF00A, r0, r5
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_CSIH1.c", 547
	ori 0x0000000A, r2, r2
	br9 .BB.LABEL.10_9
.BB.LABEL.10_8:	; switch_clause_bb17
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_CSIH1.c", 0
	movea 0xFFFFF005, r0, r5
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_CSIH1.c", 551
	ori 0x00000005, r2, r2
.BB.LABEL.10_9:	; switch_clause_bb17
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_CSIH1.c", 0
	and r5, r2
	movhi 0x0000FFD8, r0, r5
	st.h r2, 0x00003068[r5]
	movea 0x00000010, r0, r2
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_CSIH1.c", 560
	st.w r2, 0x00002010[r5]
	movea 0x00000056, r0, r6
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_CSIH1.c", 575
	st.h r0, 0x00003040[r5]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_CSIH1.c", 581
	st.w r0, 0x00003000[r5]
	mov 0x0E038000, r2
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_CSIH1.c", 589
	st.w r2, 0x00003044[r5]
	mov 0x00038000, r2
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_CSIH1.c", 605
	st.w r2, 0x00003048[r5]
	mov 0x08038000, r2
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_CSIH1.c", 620
	st.w r2, 0x0000304C[r5]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_CSIH1.c", 636
	movhi 0x0000FFC1, r0, r2
	st.w r6, 0x00002100[r2]
	movea 0x00000066, r0, r6
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_CSIH1.c", 638
	st.w r6, 0x00002104[r2]
	movea 0x00000046, r0, r6
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_CSIH1.c", 639
	st.w r6, 0x00002108[r2]
	movea 0x00001000, r0, r6
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_CSIH1.c", 641
	st.w r6, 0x0000210C[r2]
	movea 0x00000100, r0, r2
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_CSIH1.c", 643
	st.h r2, 0x00002008[r5]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_CSIH1.c", 644
	set1 0x00000007, 0x00002000[r5]
	jmp [r31]
_u1_CSIH1_EPIF_TX_2byte:
	.stack _u1_CSIH1_EPIF_TX_2byte = 0
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_CSIH1.c", 669
	ld23.w 0xFFD82004[r0], r2
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_CSIH1.c", 673
	andi 0x00000080, r2, r0
	bnz9 .BB.LABEL.11_2
.BB.LABEL.11_1:	; if_then_bb
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_CSIH1.c", 0
	movhi 0x0000000D, r0, r2
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_CSIH1.c", 675
	or r2, r6
	mov 0x000DFFFF, r2
	and r2, r6
	mov 0x00000001, r10
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_CSIH1.c", 676
	st23.w r6, 0xFFD83008[r0]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_CSIH1.c", 677
	jmp [r31]
.BB.LABEL.11_2:	; bb14
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_CSIH1.c", 0
	mov 0x00000000, r10
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_CSIH1.c", 683
	jmp [r31]
_u1_CSIH1_EPIF_TX_1byte:
	.stack _u1_CSIH1_EPIF_TX_1byte = 0
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_CSIH1.c", 685
	ld23.w 0xFFD82004[r0], r2
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_CSIH1.c", 689
	andi 0x00000080, r2, r0
	bnz9 .BB.LABEL.12_2
.BB.LABEL.12_1:	; if_then_bb
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_CSIH1.c", 0
	movhi 0x0000000B, r0, r2
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_CSIH1.c", 691
	or r2, r6
	mov 0x000B00FF, r2
	and r2, r6
	mov 0x00000001, r10
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_CSIH1.c", 692
	st23.w r6, 0xFFD83008[r0]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_CSIH1.c", 693
	jmp [r31]
.BB.LABEL.12_2:	; bb14
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_CSIH1.c", 0
	mov 0x00000000, r10
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_CSIH1.c", 699
	jmp [r31]
_u1_CSIH1_EPIF_RX_2byte:
	.stack _u1_CSIH1_EPIF_RX_2byte = 0
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_CSIH1.c", 713
	ld23.w 0xFFD82004[r0], r2
	movhi 0x0000FF00, r0, r5
	movhi 0x00000100, r0, r7
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_CSIH1.c", 716
	and r5, r2
	cmp r7, r2
	bnz9 .BB.LABEL.13_2
.BB.LABEL.13_1:	; if_then_bb
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_CSIH1.c", 718
	ld23.w 0xFFD83010[r0], r2
	mov 0x00000001, r10
	st.h r2, 0x00000000[r6]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_CSIH1.c", 719
	jmp [r31]
.BB.LABEL.13_2:	; bb11
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_CSIH1.c", 0
	mov 0x00000000, r10
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_CSIH1.c", 725
	jmp [r31]
_u1_CSIH1_EPIF_RX_1byte:
	.stack _u1_CSIH1_EPIF_RX_1byte = 0
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_CSIH1.c", 728
	ld23.w 0xFFD82004[r0], r2
	movhi 0x0000FF00, r0, r5
	movhi 0x00000100, r0, r7
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_CSIH1.c", 731
	and r5, r2
	cmp r7, r2
	bnz9 .BB.LABEL.14_2
.BB.LABEL.14_1:	; if_then_bb
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_CSIH1.c", 733
	ld23.w 0xFFD83010[r0], r2
	mov 0x00000001, r10
	st.b r2, 0x00000000[r6]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_CSIH1.c", 734
	jmp [r31]
.BB.LABEL.14_2:	; bb11
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_CSIH1.c", 0
	mov 0x00000000, r10
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_CSIH1.c", 740
	jmp [r31]
_eprom_cs:
	.stack _eprom_cs = 0
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_CSIH1.c", 752
	nop
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_CSIH1.c", 754
	nop
	nop
	nop
	nop
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_CSIH1.c", 755
	nop
	nop
	nop
	nop
	nop
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_CSIH1.c", 757
	shl 0x00000003, r6
	movhi 0x00000008, r0, r2
	or r2, r6
	mov 0x00080008, r2
	and r2, r6
	xori 0x00000008, r6, r2
	st23.w r2, 0xFFC10104[r0]
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_CSIH1.c", 759
	nop
	nop
	nop
	nop
	nop
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/Common/iolib/io_CSIH1.c", 760
	nop
	nop
	nop
	nop
	nop
	jmp [r31]
