#CC-RH Compiler RH850 Assembler Source
#@	CC-RH Version : V2.06.00  [28 Nov 2023]
#@	Command : Common\fi_pe2_error.c ..\Common\iolib\io_CPU.c ..\Common\iolib\io_ADC.c ..\Common\iolib\io_CSIH0.c ..\Common\iolib\io_CSIH1.c ..\Common\iolib\io_ENCA0.c ..\Common\iolib\io_ENCA1.c ..\Common\iolib\io_FCAN.c ..\Common\iolib\io_RDC20.c ..\Common\iolib\io_RDC21.c ..\Common\iolib\io_SCI0_40MHz.c ..\Common\iolib\io_SCI1_40MHz.c ..\Common\iolib\io_SCI2_40MHz.c ..\Common\iolib\io_TAUD0.c ..\Common\iolib\io_TAUD1.c ..\Common\iolib\io_TAUJ0.c ..\Common\iolib\io_TSG30.c ..\Common\iolib\io_TSG31.c ..\PE1\AWatcher\VECLIB_CMDMONI.c src\fpmsm_main.c ..\PE1\src\fi_AWatcher.c src\fi_1ms_int.c src\fi_20us_int.c src\fi_enc1_int.c src\fi_pwm_int.c ..\PE1\src\fb_kpwm_tbl.c ..\PE1\src\fb_therm_calc.c ..\PE1\src\fb_therm_tbl_module.c ..\PE1\src\fb_vctrlerr_tbl.c ..\PE1\src\fi_pwm_vctrlerrtbl.c ..\Common\iolib\io_PIO_amdt0530.c -Xobj_path=DefaultBuild -Xcpu=g3m -g -g_line -Ospeed -Oinline_size -I..\PE1\src -Isrc -I..\Common -D__CLK_HSB=80,__CLK_LSB=40,__CLKC_HSB=80,__CLK_CLSB=40 -use_recipf -Xasm_path=DefaultBuild -c
#@	compiled at Thu Aug 22 10:25:06 2024

	.file "..\PE1\AWatcher\VECLIB_CMDMONI.c"

	$reg_mode 32
	.dbl_size 8

	.public _VECLIB_CMDMONI_INIT
	.extern _CMDMONI_WT_INIT
	.public _VECLIB_CMDMONI_MAIN
	.extern _CMDMONI_WT_CHECKCMD
	.extern _CMDMONI_WT_SENDCMD
	.public _VECLIB_CMDMONI_1MS
	.extern _CMDMONI_WT_1MS
	.public _VECLIB_CMDMONI_PWM
	.extern _CMDMONI_WT_TRACEWATCH
	.public _VECLIB_CMDMONI_INTR
	.extern _MD_WT_INTR
	.public _VECLIB_CMDMONI_INTRE
	.extern _MD_WT_INTRE

	.section .text, text
_VECLIB_CMDMONI_INIT:
	.stack _VECLIB_CMDMONI_INIT = 0
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/PE1/AWatcher/VECLIB_CMDMONI.c", 17
	jr _CMDMONI_WT_INIT
_VECLIB_CMDMONI_MAIN:
	.stack _VECLIB_CMDMONI_MAIN = 4
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/PE1/AWatcher/VECLIB_CMDMONI.c", 21
	prepare 0x00000001, 0x00000000
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/PE1/AWatcher/VECLIB_CMDMONI.c", 24
	jarl _CMDMONI_WT_CHECKCMD, r31
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/PE1/AWatcher/VECLIB_CMDMONI.c", 25
	dispose 0x00000000, 0x00000001
	jr _CMDMONI_WT_SENDCMD
_VECLIB_CMDMONI_1MS:
	.stack _VECLIB_CMDMONI_1MS = 0
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/PE1/AWatcher/VECLIB_CMDMONI.c", 32
	jr _CMDMONI_WT_1MS
_VECLIB_CMDMONI_PWM:
	.stack _VECLIB_CMDMONI_PWM = 0
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/PE1/AWatcher/VECLIB_CMDMONI.c", 39
	jr _CMDMONI_WT_TRACEWATCH
_VECLIB_CMDMONI_INTR:
	.stack _VECLIB_CMDMONI_INTR = 0
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/PE1/AWatcher/VECLIB_CMDMONI.c", 46
	jr _MD_WT_INTR
_VECLIB_CMDMONI_INTRE:
	.stack _VECLIB_CMDMONI_INTRE = 0
	.line "C:/Users/basa2/Documents/AMDT-NPC/AMDT3074_【伊丹】_テクニカルサポート様向け_SiCモジュール搭載水冷式汎用インバータ（AMDTINV_SH600A_SiC）/E_制御関係/IM/20240822_IM/PE1/AWatcher/VECLIB_CMDMONI.c", 53
	jr _MD_WT_INTRE
