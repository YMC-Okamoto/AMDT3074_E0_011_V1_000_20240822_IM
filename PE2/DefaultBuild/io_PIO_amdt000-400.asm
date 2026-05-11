#CC-RH Compiler RH850 Assembler Source
#@	CC-RH Version : V2.06.00  [28 Nov 2023]
#@	Command : Common\fi_pe2_error.c ..\Common\iolib\io_CPU.c ..\Common\iolib\io_ADC.c ..\Common\iolib\io_CSIH0.c ..\Common\iolib\io_CSIH1.c ..\Common\iolib\io_ENCA0.c ..\Common\iolib\io_ENCA1.c ..\Common\iolib\io_FCAN.c ..\Common\iolib\io_RDC20.c ..\Common\iolib\io_RDC21.c ..\Common\iolib\io_SCI0_40MHz.c ..\Common\iolib\io_SCI1_40MHz.c ..\Common\iolib\io_SCI2_40MHz.c ..\Common\iolib\io_TAUD0.c ..\Common\iolib\io_TAUD1.c ..\Common\iolib\io_TAUJ0.c ..\Common\iolib\io_TSG30.c ..\Common\iolib\io_TSG31.c ..\PE1\AWatcher\VECLIB_CMDMONI.c src\fpmsm_main.c ..\PE1\src\fi_AWatcher.c src\fi_1ms_int.c src\fi_1ms_inv1_adctrl.c src\fi_1ms_inv1_errctrl.c src\fi_20us_int.c src\fi_20us_inv1_1pulse.c src\fi_enc1_int.c src\fi_enc1_inv1_1pulse.c src\fi_pwm_int.c src\fi_pwm_inv1_1pulse.c src\fi_pwm_inv1_adctrl.c src\fi_pwm_inv1_encctrl.c src\fi_pwm_inv1_errctrl.c src\fi_pwm_inv1_idqctrl.c src\fi_pwm_inv1_invadj.c src\fi_pwm_inv1_svctrl.c src\fi_pwm_inv1_syncctrl.c src\fi_pwm_inv1_vctrlerr.c src\mapdata_ld_inv1_2d.c src\mapdata_ld_inv1_2d_map.c src\mapdata_lq_inv1_2d.c src\mapdata_lq_inv1_2d_map.c ..\PE1\src\fb_kpwm_tbl.c ..\PE1\src\fb_therm_calc.c ..\PE1\src\fb_therm_tbl_module.c ..\PE1\src\fb_vctrlerr_tbl.c src\fi_1ms_inv1_idqcom.c ..\PE1\src\fi_pwm_vctrlerrtbl.c ..\Common\iolib\io_PIO_amdt000-400.c src\fi_1ms_inv1_seqctrl.c -Xobj_path=DefaultBuild -Xcpu=g3m -g -g_line -Ospeed -Oinline_size -I..\PE1\src -Isrc -I..\Common -D__CLK_HSB=80,__CLK_LSB=40,__CLKC_HSB=80,__CLK_CLSB=40 -use_recipf -Xasm_path=DefaultBuild -c
#@	compiled at Fri May 10 17:11:02 2024

	.file "..\Common\iolib\io_PIO_amdt000-400.c"

	$reg_mode 32
	.dbl_size 8

	.public _pio_init
	.public _ex_intpx_init
	.public _intpx_status_read

	.section .text, text
_pio_init:
	.stack _pio_init = 0
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/20240510/Common/iolib/io_PIO_amdt000-400.c", 56
	movhi 0x0000FFC1, r0, r2
	st.w r0, 0x00002000[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/20240510/Common/iolib/io_PIO_amdt000-400.c", 58
	st.w r0, 0x00002004[r2]
	mov 0x00010010, r5
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/20240510/Common/iolib/io_PIO_amdt000-400.c", 60
	st.w r5, 0x00002008[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/20240510/Common/iolib/io_PIO_amdt000-400.c", 62
	st.w r5, 0x0000200C[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/20240510/Common/iolib/io_PIO_amdt000-400.c", 64
	st.w r5, 0x00002010[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/20240510/Common/iolib/io_PIO_amdt000-400.c", 66
	st.w r0, 0x00002014[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/20240510/Common/iolib/io_PIO_amdt000-400.c", 68
	st.w r5, 0x00002018[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/20240510/Common/iolib/io_PIO_amdt000-400.c", 70
	st.w r5, 0x0000201C[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/20240510/Common/iolib/io_PIO_amdt000-400.c", 72
	st.w r5, 0x00002020[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/20240510/Common/iolib/io_PIO_amdt000-400.c", 74
	st.w r5, 0x00002024[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/20240510/Common/iolib/io_PIO_amdt000-400.c", 76
	st.w r5, 0x00002028[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/20240510/Common/iolib/io_PIO_amdt000-400.c", 78
	st.w r5, 0x0000202C[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/20240510/Common/iolib/io_PIO_amdt000-400.c", 80
	st.w r5, 0x00002030[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/20240510/Common/iolib/io_PIO_amdt000-400.c", 82
	st.w r5, 0x00002034[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/20240510/Common/iolib/io_PIO_amdt000-400.c", 84
	st.w r5, 0x00002038[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/20240510/Common/iolib/io_PIO_amdt000-400.c", 86
	st.w r5, 0x0000203C[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/20240510/Common/iolib/io_PIO_amdt000-400.c", 90
	st.w r5, 0x00002040[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/20240510/Common/iolib/io_PIO_amdt000-400.c", 92
	st.w r5, 0x00002044[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/20240510/Common/iolib/io_PIO_amdt000-400.c", 94
	st.w r5, 0x00002048[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/20240510/Common/iolib/io_PIO_amdt000-400.c", 96
	st.w r5, 0x0000204C[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/20240510/Common/iolib/io_PIO_amdt000-400.c", 98
	st.w r5, 0x00002050[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/20240510/Common/iolib/io_PIO_amdt000-400.c", 100
	st.w r5, 0x00002054[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/20240510/Common/iolib/io_PIO_amdt000-400.c", 102
	st.w r5, 0x00002058[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/20240510/Common/iolib/io_PIO_amdt000-400.c", 104
	st.w r5, 0x0000205C[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/20240510/Common/iolib/io_PIO_amdt000-400.c", 106
	st.w r5, 0x00002060[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/20240510/Common/iolib/io_PIO_amdt000-400.c", 108
	st.w r5, 0x00002064[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/20240510/Common/iolib/io_PIO_amdt000-400.c", 110
	st.w r5, 0x00002068[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/20240510/Common/iolib/io_PIO_amdt000-400.c", 112
	st.w r5, 0x0000206C[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/20240510/Common/iolib/io_PIO_amdt000-400.c", 114
	st.w r5, 0x00002070[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/20240510/Common/iolib/io_PIO_amdt000-400.c", 116
	st.w r5, 0x00002074[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/20240510/Common/iolib/io_PIO_amdt000-400.c", 118
	st.w r5, 0x00002078[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/20240510/Common/iolib/io_PIO_amdt000-400.c", 120
	st.w r5, 0x0000207C[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/20240510/Common/iolib/io_PIO_amdt000-400.c", 124
	st.w r5, 0x00002080[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/20240510/Common/iolib/io_PIO_amdt000-400.c", 126
	st.w r5, 0x00002084[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/20240510/Common/iolib/io_PIO_amdt000-400.c", 128
	st.w r5, 0x00002088[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/20240510/Common/iolib/io_PIO_amdt000-400.c", 130
	st.w r5, 0x0000208C[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/20240510/Common/iolib/io_PIO_amdt000-400.c", 132
	st.w r5, 0x00002090[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/20240510/Common/iolib/io_PIO_amdt000-400.c", 134
	st.w r5, 0x00002094[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/20240510/Common/iolib/io_PIO_amdt000-400.c", 136
	st.w r5, 0x00002098[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/20240510/Common/iolib/io_PIO_amdt000-400.c", 138
	st.w r5, 0x0000209C[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/20240510/Common/iolib/io_PIO_amdt000-400.c", 142
	st.w r5, 0x000020C0[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/20240510/Common/iolib/io_PIO_amdt000-400.c", 144
	st.w r5, 0x000020C4[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/20240510/Common/iolib/io_PIO_amdt000-400.c", 146
	st.w r5, 0x000020C8[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/20240510/Common/iolib/io_PIO_amdt000-400.c", 148
	st.w r5, 0x000020CC[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/20240510/Common/iolib/io_PIO_amdt000-400.c", 150
	st.w r5, 0x000020D0[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/20240510/Common/iolib/io_PIO_amdt000-400.c", 152
	st.w r5, 0x000020D4[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/20240510/Common/iolib/io_PIO_amdt000-400.c", 154
	st.w r5, 0x000020D8[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/20240510/Common/iolib/io_PIO_amdt000-400.c", 156
	st.w r5, 0x000020DC[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/20240510/Common/iolib/io_PIO_amdt000-400.c", 160
	st.w r5, 0x00002100[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/20240510/Common/iolib/io_PIO_amdt000-400.c", 162
	st.w r5, 0x00002104[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/20240510/Common/iolib/io_PIO_amdt000-400.c", 164
	st.w r5, 0x00002108[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/20240510/Common/iolib/io_PIO_amdt000-400.c", 166
	st.w r5, 0x0000210C[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/20240510/Common/iolib/io_PIO_amdt000-400.c", 168
	st.w r5, 0x00002110[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/20240510/Common/iolib/io_PIO_amdt000-400.c", 170
	st.w r5, 0x00002114[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/20240510/Common/iolib/io_PIO_amdt000-400.c", 172
	st.w r5, 0x00002118[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/20240510/Common/iolib/io_PIO_amdt000-400.c", 174
	st.w r5, 0x0000211C[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/20240510/Common/iolib/io_PIO_amdt000-400.c", 176
	st.w r5, 0x00002120[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/20240510/Common/iolib/io_PIO_amdt000-400.c", 178
	st.w r5, 0x00002124[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/20240510/Common/iolib/io_PIO_amdt000-400.c", 180
	st.w r5, 0x00002128[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/20240510/Common/iolib/io_PIO_amdt000-400.c", 182
	st.w r5, 0x0000212C[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/20240510/Common/iolib/io_PIO_amdt000-400.c", 184
	st.w r5, 0x00002130[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/20240510/Common/iolib/io_PIO_amdt000-400.c", 186
	st.w r5, 0x00002134[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/20240510/Common/iolib/io_PIO_amdt000-400.c", 188
	st.w r5, 0x00002138[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/20240510/Common/iolib/io_PIO_amdt000-400.c", 190
	st.w r5, 0x0000213C[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/20240510/Common/iolib/io_PIO_amdt000-400.c", 194
	st.w r5, 0x00002140[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/20240510/Common/iolib/io_PIO_amdt000-400.c", 196
	st.w r5, 0x00002144[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/20240510/Common/iolib/io_PIO_amdt000-400.c", 198
	st.w r5, 0x00002148[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/20240510/Common/iolib/io_PIO_amdt000-400.c", 200
	st.w r5, 0x0000214C[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/20240510/Common/iolib/io_PIO_amdt000-400.c", 202
	st.w r0, 0x00002150[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/20240510/Common/iolib/io_PIO_amdt000-400.c", 207
	st.w r5, 0x00002158[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/20240510/Common/iolib/io_PIO_amdt000-400.c", 209
	st.w r5, 0x0000215C[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/20240510/Common/iolib/io_PIO_amdt000-400.c", 211
	st.w r5, 0x00002160[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/20240510/Common/iolib/io_PIO_amdt000-400.c", 213
	st.w r5, 0x00002164[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/20240510/Common/iolib/io_PIO_amdt000-400.c", 217
	st.w r0, 0x00002180[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/20240510/Common/iolib/io_PIO_amdt000-400.c", 219
	st.w r0, 0x00002184[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/20240510/Common/iolib/io_PIO_amdt000-400.c", 221
	st.w r0, 0x00002188[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/20240510/Common/iolib/io_PIO_amdt000-400.c", 223
	st.w r5, 0x0000218C[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/20240510/Common/iolib/io_PIO_amdt000-400.c", 225
	st.w r0, 0x00002190[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/20240510/Common/iolib/io_PIO_amdt000-400.c", 227
	st.w r0, 0x00002194[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/20240510/Common/iolib/io_PIO_amdt000-400.c", 229
	st.w r0, 0x00002198[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/20240510/Common/iolib/io_PIO_amdt000-400.c", 231
	st.w r5, 0x0000219C[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/20240510/Common/iolib/io_PIO_amdt000-400.c", 235
	st.w r5, 0x000021C0[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/20240510/Common/iolib/io_PIO_amdt000-400.c", 237
	st.w r5, 0x000021C4[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/20240510/Common/iolib/io_PIO_amdt000-400.c", 239
	st.w r5, 0x000021C8[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/20240510/Common/iolib/io_PIO_amdt000-400.c", 241
	st.w r5, 0x000021CC[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/20240510/Common/iolib/io_PIO_amdt000-400.c", 243
	st.w r5, 0x000021D0[r2]
	jmp [r31]
_ex_intpx_init:
	.stack _ex_intpx_init = 0
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/20240510/Common/iolib/io_PIO_amdt000-400.c", 286
	cmp 0x00000007, r6
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/20240510/Common/iolib/io_PIO_amdt000-400.c", 288
	bh9 .BB.LABEL.2_6
.BB.LABEL.2_1:	; entry
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/20240510/Common/iolib/io_PIO_amdt000-400.c", 0
	movhi 0x0000FFFF, r0, r2
	shl 0x00000002, r6
	jmp #.SWITCH.LABEL.2_43[r6]
.SWITCH.LABEL.2_43:
	jr .BB.LABEL.2_2
	jr .BB.LABEL.2_8
	jr .BB.LABEL.2_13
	jr .BB.LABEL.2_18
	jr .BB.LABEL.2_23
	jr .BB.LABEL.2_28
	jr .BB.LABEL.2_33
	jr .BB.LABEL.2_38
.SWITCH.LABEL.2_43.END:
.BB.LABEL.2_2:	; switch_clause_bb
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/20240510/Common/iolib/io_PIO_amdt000-400.c", 292
	set1 0x00000007, 0xFFFFEA12[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/20240510/Common/iolib/io_PIO_amdt000-400.c", 294
	cmp 0x00000003, r7
	bgt9 .BB.LABEL.2_4
.BB.LABEL.2_3:	; if_then_bb
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/20240510/Common/iolib/io_PIO_amdt000-400.c", 296
	movhi 0x0000FFC3, r0, r2
	ld.bu 0x00000000[r2], r5
	andi 0x00000007, r7, r6
	andi 0x000000F8, r5, r5
	or r6, r5
	st.b r5, 0x00000000[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/20240510/Common/iolib/io_PIO_amdt000-400.c", 297
	ld.bu 0x00000000[r2], r5
	andi 0x0000009F, r5, r5
	st.b r5, 0x00000000[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/20240510/Common/iolib/io_PIO_amdt000-400.c", 298
	set1 0x00000007, 0x00000000[r2]
.BB.LABEL.2_4:	; if_break_bb
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/20240510/Common/iolib/io_PIO_amdt000-400.c", 302
	movhi 0x0000FFC1, r0, r2
	movea 0x00000056, r0, r5
	st.w r5, 0x00002080[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/20240510/Common/iolib/io_PIO_amdt000-400.c", 304
	movhi 0x0000FFC0, r0, r2
	ld.bu 0x00000010[r2], r5
	andi 0x00000003, r8, r6
	andi 0x000000FC, r5, r5
	or r6, r5
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/20240510/Common/iolib/io_PIO_amdt000-400.c", 305
	cmp 0x0000000F, r9
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/20240510/Common/iolib/io_PIO_amdt000-400.c", 304
	st.b r5, 0x00000010[r2]
	movhi 0x0000FFFF, r0, r2
	bgt9 .BB.LABEL.2_7
.BB.LABEL.2_5:	; if_then_bb28
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/20240510/Common/iolib/io_PIO_amdt000-400.c", 307
	clr1 0x00000004, 0xFFFFEA13[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/20240510/Common/iolib/io_PIO_amdt000-400.c", 308
	ld.bu 0xFFFFEA12[r2], r5
	andi 0x0000000F, r9, r6
	andi 0x000000F0, r5, r5
	or r6, r5
	st.b r5, 0xFFFFEA12[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/20240510/Common/iolib/io_PIO_amdt000-400.c", 309
	set1 0x00000006, 0xFFFFEA12[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/20240510/Common/iolib/io_PIO_amdt000-400.c", 311
	clr1 0x00000007, 0xFFFFEA12[r2]
.BB.LABEL.2_6:	; return
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/20240510/Common/iolib/io_PIO_amdt000-400.c", 551
	jmp [r31]
.BB.LABEL.2_7:	; if_else_bb34
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/20240510/Common/iolib/io_PIO_amdt000-400.c", 315
	ld.b 0xFFFFEA12[r2], r5
	ori 0x0000000F, r5, r5
	st.b r5, 0xFFFFEA12[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/20240510/Common/iolib/io_PIO_amdt000-400.c", 316
	set1 0x00000007, 0xFFFFEA12[r2]
	jmp [r31]
.BB.LABEL.2_8:	; switch_clause_bb39
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/20240510/Common/iolib/io_PIO_amdt000-400.c", 322
	set1 0x00000007, 0xFFFFEA14[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/20240510/Common/iolib/io_PIO_amdt000-400.c", 324
	cmp 0x00000003, r7
	bgt9 .BB.LABEL.2_10
.BB.LABEL.2_9:	; if_then_bb45
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/20240510/Common/iolib/io_PIO_amdt000-400.c", 326
	movhi 0x0000FFC3, r0, r2
	ld.bu 0x00000004[r2], r5
	andi 0x00000007, r7, r6
	andi 0x000000F8, r5, r5
	or r6, r5
	st.b r5, 0x00000004[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/20240510/Common/iolib/io_PIO_amdt000-400.c", 327
	ld.bu 0x00000004[r2], r5
	andi 0x0000009F, r5, r5
	st.b r5, 0x00000004[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/20240510/Common/iolib/io_PIO_amdt000-400.c", 328
	set1 0x00000007, 0x00000004[r2]
.BB.LABEL.2_10:	; if_break_bb55
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/20240510/Common/iolib/io_PIO_amdt000-400.c", 332
	movhi 0x0000FFC1, r0, r2
	movea 0x00000056, r0, r5
	st.w r5, 0x00002084[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/20240510/Common/iolib/io_PIO_amdt000-400.c", 334
	movhi 0x0000FFC0, r0, r5
	ld.bu 0x00000010[r5], r6
	shl 0x00000002, r8
	andi 0x0000000C, r8, r2
	andi 0x000000F3, r6, r6
	or r2, r6
	movhi 0x0000FFFF, r0, r2
	st.b r6, 0x00000010[r5]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/20240510/Common/iolib/io_PIO_amdt000-400.c", 335
	cmp 0x0000000F, r9
	bgt9 .BB.LABEL.2_12
.BB.LABEL.2_11:	; if_then_bb67
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/20240510/Common/iolib/io_PIO_amdt000-400.c", 337
	clr1 0x00000004, 0xFFFFEA15[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/20240510/Common/iolib/io_PIO_amdt000-400.c", 338
	ld.bu 0xFFFFEA14[r2], r5
	andi 0x0000000F, r9, r6
	andi 0x000000F0, r5, r5
	or r6, r5
	st.b r5, 0xFFFFEA14[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/20240510/Common/iolib/io_PIO_amdt000-400.c", 339
	set1 0x00000006, 0xFFFFEA14[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/20240510/Common/iolib/io_PIO_amdt000-400.c", 341
	clr1 0x00000007, 0xFFFFEA14[r2]
	jmp [r31]
.BB.LABEL.2_12:	; if_else_bb73
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/20240510/Common/iolib/io_PIO_amdt000-400.c", 345
	ld.b 0xFFFFEA14[r2], r5
	ori 0x0000000F, r5, r5
	st.b r5, 0xFFFFEA14[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/20240510/Common/iolib/io_PIO_amdt000-400.c", 346
	set1 0x00000007, 0xFFFFEA14[r2]
	jmp [r31]
.BB.LABEL.2_13:	; switch_clause_bb78
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/20240510/Common/iolib/io_PIO_amdt000-400.c", 352
	set1 0x00000007, 0xFFFFEA16[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/20240510/Common/iolib/io_PIO_amdt000-400.c", 354
	cmp 0x00000003, r7
	bgt9 .BB.LABEL.2_15
.BB.LABEL.2_14:	; if_then_bb84
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/20240510/Common/iolib/io_PIO_amdt000-400.c", 356
	movhi 0x0000FFC3, r0, r2
	ld.bu 0x00000008[r2], r5
	andi 0x00000007, r7, r6
	andi 0x000000F8, r5, r5
	or r6, r5
	st.b r5, 0x00000008[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/20240510/Common/iolib/io_PIO_amdt000-400.c", 357
	ld.bu 0x00000008[r2], r5
	andi 0x0000009F, r5, r5
	st.b r5, 0x00000008[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/20240510/Common/iolib/io_PIO_amdt000-400.c", 358
	set1 0x00000007, 0x00000008[r2]
.BB.LABEL.2_15:	; if_break_bb94
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/20240510/Common/iolib/io_PIO_amdt000-400.c", 363
	movhi 0x0000FFC1, r0, r2
	movea 0x00000056, r0, r5
	st.w r5, 0x00002088[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/20240510/Common/iolib/io_PIO_amdt000-400.c", 368
	movhi 0x0000FFC0, r0, r5
	ld.bu 0x00000010[r5], r6
	shl 0x00000004, r8
	andi 0x00000030, r8, r2
	andi 0x000000CF, r6, r6
	or r2, r6
	movhi 0x0000FFFF, r0, r2
	st.b r6, 0x00000010[r5]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/20240510/Common/iolib/io_PIO_amdt000-400.c", 369
	cmp 0x0000000F, r9
	bgt9 .BB.LABEL.2_17
.BB.LABEL.2_16:	; if_then_bb106
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/20240510/Common/iolib/io_PIO_amdt000-400.c", 371
	clr1 0x00000004, 0xFFFFEA17[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/20240510/Common/iolib/io_PIO_amdt000-400.c", 372
	ld.bu 0xFFFFEA16[r2], r5
	andi 0x0000000F, r9, r6
	andi 0x000000F0, r5, r5
	or r6, r5
	st.b r5, 0xFFFFEA16[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/20240510/Common/iolib/io_PIO_amdt000-400.c", 373
	set1 0x00000006, 0xFFFFEA16[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/20240510/Common/iolib/io_PIO_amdt000-400.c", 375
	clr1 0x00000007, 0xFFFFEA16[r2]
	jmp [r31]
.BB.LABEL.2_17:	; if_else_bb112
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/20240510/Common/iolib/io_PIO_amdt000-400.c", 379
	ld.b 0xFFFFEA16[r2], r5
	ori 0x0000000F, r5, r5
	st.b r5, 0xFFFFEA16[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/20240510/Common/iolib/io_PIO_amdt000-400.c", 380
	set1 0x00000007, 0xFFFFEA16[r2]
	jmp [r31]
.BB.LABEL.2_18:	; switch_clause_bb117
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/20240510/Common/iolib/io_PIO_amdt000-400.c", 386
	set1 0x00000007, 0xFFFFEA18[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/20240510/Common/iolib/io_PIO_amdt000-400.c", 388
	cmp 0x00000003, r7
	bgt9 .BB.LABEL.2_20
.BB.LABEL.2_19:	; if_then_bb123
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/20240510/Common/iolib/io_PIO_amdt000-400.c", 390
	movhi 0x0000FFC3, r0, r2
	ld.bu 0x0000000C[r2], r5
	andi 0x00000007, r7, r6
	andi 0x000000F8, r5, r5
	or r6, r5
	st.b r5, 0x0000000C[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/20240510/Common/iolib/io_PIO_amdt000-400.c", 391
	ld.bu 0x0000000C[r2], r5
	andi 0x0000009F, r5, r5
	st.b r5, 0x0000000C[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/20240510/Common/iolib/io_PIO_amdt000-400.c", 392
	set1 0x00000007, 0x0000000C[r2]
.BB.LABEL.2_20:	; if_break_bb133
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/20240510/Common/iolib/io_PIO_amdt000-400.c", 397
	movhi 0x0000FFC1, r0, r2
	movea 0x00000056, r0, r5
	st.w r5, 0x0000208C[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/20240510/Common/iolib/io_PIO_amdt000-400.c", 402
	movhi 0x0000FFC0, r0, r2
	ld.bu 0x00000010[r2], r5
	shl 0x00000006, r8
	andi 0x0000003F, r5, r5
	or r8, r5
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/20240510/Common/iolib/io_PIO_amdt000-400.c", 403
	cmp 0x0000000F, r9
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/20240510/Common/iolib/io_PIO_amdt000-400.c", 402
	st.b r5, 0x00000010[r2]
	movhi 0x0000FFFF, r0, r2
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/20240510/Common/iolib/io_PIO_amdt000-400.c", 403
	bgt9 .BB.LABEL.2_22
.BB.LABEL.2_21:	; if_then_bb145
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/20240510/Common/iolib/io_PIO_amdt000-400.c", 405
	clr1 0x00000004, 0xFFFFEA19[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/20240510/Common/iolib/io_PIO_amdt000-400.c", 406
	ld.bu 0xFFFFEA18[r2], r5
	andi 0x0000000F, r9, r6
	andi 0x000000F0, r5, r5
	or r6, r5
	st.b r5, 0xFFFFEA18[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/20240510/Common/iolib/io_PIO_amdt000-400.c", 407
	set1 0x00000006, 0xFFFFEA18[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/20240510/Common/iolib/io_PIO_amdt000-400.c", 409
	clr1 0x00000007, 0xFFFFEA18[r2]
	jmp [r31]
.BB.LABEL.2_22:	; if_else_bb151
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/20240510/Common/iolib/io_PIO_amdt000-400.c", 413
	ld.b 0xFFFFEA18[r2], r5
	ori 0x0000000F, r5, r5
	st.b r5, 0xFFFFEA18[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/20240510/Common/iolib/io_PIO_amdt000-400.c", 414
	set1 0x00000007, 0xFFFFEA18[r2]
	jmp [r31]
.BB.LABEL.2_23:	; switch_clause_bb156
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/20240510/Common/iolib/io_PIO_amdt000-400.c", 420
	set1 0x00000007, 0xFFFFEA1A[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/20240510/Common/iolib/io_PIO_amdt000-400.c", 422
	cmp 0x00000003, r7
	bgt9 .BB.LABEL.2_25
.BB.LABEL.2_24:	; if_then_bb162
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/20240510/Common/iolib/io_PIO_amdt000-400.c", 424
	movhi 0x0000FFC3, r0, r2
	ld.bu 0x00000010[r2], r5
	andi 0x00000007, r7, r6
	andi 0x000000F8, r5, r5
	or r6, r5
	st.b r5, 0x00000010[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/20240510/Common/iolib/io_PIO_amdt000-400.c", 425
	ld.bu 0x00000010[r2], r5
	andi 0x0000009F, r5, r5
	st.b r5, 0x00000010[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/20240510/Common/iolib/io_PIO_amdt000-400.c", 426
	set1 0x00000007, 0x00000010[r2]
.BB.LABEL.2_25:	; if_break_bb172
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/20240510/Common/iolib/io_PIO_amdt000-400.c", 430
	movhi 0x0000FFC1, r0, r2
	movea 0x00000056, r0, r5
	st.w r5, 0x00002090[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/20240510/Common/iolib/io_PIO_amdt000-400.c", 432
	movhi 0x0000FFC0, r0, r2
	ld.bu 0x00000011[r2], r5
	andi 0x00000003, r8, r6
	andi 0x000000FC, r5, r5
	or r6, r5
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/20240510/Common/iolib/io_PIO_amdt000-400.c", 433
	cmp 0x0000000F, r9
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/20240510/Common/iolib/io_PIO_amdt000-400.c", 432
	st.b r5, 0x00000011[r2]
	movhi 0x0000FFFF, r0, r2
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/20240510/Common/iolib/io_PIO_amdt000-400.c", 433
	bgt9 .BB.LABEL.2_27
.BB.LABEL.2_26:	; if_then_bb183
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/20240510/Common/iolib/io_PIO_amdt000-400.c", 435
	clr1 0x00000004, 0xFFFFEA1B[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/20240510/Common/iolib/io_PIO_amdt000-400.c", 436
	ld.bu 0xFFFFEA1A[r2], r5
	andi 0x0000000F, r9, r6
	andi 0x000000F0, r5, r5
	or r6, r5
	st.b r5, 0xFFFFEA1A[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/20240510/Common/iolib/io_PIO_amdt000-400.c", 437
	set1 0x00000006, 0xFFFFEA1A[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/20240510/Common/iolib/io_PIO_amdt000-400.c", 439
	clr1 0x00000007, 0xFFFFEA1A[r2]
	jmp [r31]
.BB.LABEL.2_27:	; if_else_bb189
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/20240510/Common/iolib/io_PIO_amdt000-400.c", 443
	ld.b 0xFFFFEA1A[r2], r5
	ori 0x0000000F, r5, r5
	st.b r5, 0xFFFFEA1A[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/20240510/Common/iolib/io_PIO_amdt000-400.c", 444
	set1 0x00000007, 0xFFFFEA1A[r2]
	jmp [r31]
.BB.LABEL.2_28:	; switch_clause_bb194
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/20240510/Common/iolib/io_PIO_amdt000-400.c", 450
	set1 0x00000007, 0xFFFFEA1C[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/20240510/Common/iolib/io_PIO_amdt000-400.c", 452
	cmp 0x00000003, r7
	bgt9 .BB.LABEL.2_30
.BB.LABEL.2_29:	; if_then_bb200
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/20240510/Common/iolib/io_PIO_amdt000-400.c", 454
	movhi 0x0000FFC3, r0, r2
	ld.bu 0x00000014[r2], r5
	andi 0x00000007, r7, r6
	andi 0x000000F8, r5, r5
	or r6, r5
	st.b r5, 0x00000014[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/20240510/Common/iolib/io_PIO_amdt000-400.c", 455
	ld.bu 0x00000014[r2], r5
	andi 0x0000009F, r5, r5
	st.b r5, 0x00000014[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/20240510/Common/iolib/io_PIO_amdt000-400.c", 456
	set1 0x00000007, 0x00000014[r2]
.BB.LABEL.2_30:	; if_break_bb210
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/20240510/Common/iolib/io_PIO_amdt000-400.c", 461
	movhi 0x0000FFC1, r0, r2
	movea 0x00000056, r0, r5
	st.w r5, 0x00002094[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/20240510/Common/iolib/io_PIO_amdt000-400.c", 466
	movhi 0x0000FFC0, r0, r5
	ld.bu 0x00000011[r5], r6
	shl 0x00000002, r8
	andi 0x0000000C, r8, r2
	andi 0x000000F3, r6, r6
	or r2, r6
	movhi 0x0000FFFF, r0, r2
	st.b r6, 0x00000011[r5]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/20240510/Common/iolib/io_PIO_amdt000-400.c", 467
	cmp 0x0000000F, r9
	bgt9 .BB.LABEL.2_32
.BB.LABEL.2_31:	; if_then_bb222
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/20240510/Common/iolib/io_PIO_amdt000-400.c", 469
	clr1 0x00000004, 0xFFFFEA1D[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/20240510/Common/iolib/io_PIO_amdt000-400.c", 470
	ld.bu 0xFFFFEA1C[r2], r5
	andi 0x0000000F, r9, r6
	andi 0x000000F0, r5, r5
	or r6, r5
	st.b r5, 0xFFFFEA1C[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/20240510/Common/iolib/io_PIO_amdt000-400.c", 471
	set1 0x00000006, 0xFFFFEA1C[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/20240510/Common/iolib/io_PIO_amdt000-400.c", 473
	clr1 0x00000007, 0xFFFFEA1C[r2]
	jmp [r31]
.BB.LABEL.2_32:	; if_else_bb228
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/20240510/Common/iolib/io_PIO_amdt000-400.c", 477
	ld.b 0xFFFFEA1C[r2], r5
	ori 0x0000000F, r5, r5
	st.b r5, 0xFFFFEA1C[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/20240510/Common/iolib/io_PIO_amdt000-400.c", 478
	set1 0x00000007, 0xFFFFEA1C[r2]
	jmp [r31]
.BB.LABEL.2_33:	; switch_clause_bb233
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/20240510/Common/iolib/io_PIO_amdt000-400.c", 484
	set1 0x00000007, 0xFFFFEA1E[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/20240510/Common/iolib/io_PIO_amdt000-400.c", 486
	cmp 0x00000003, r7
	bgt9 .BB.LABEL.2_35
.BB.LABEL.2_34:	; if_then_bb239
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/20240510/Common/iolib/io_PIO_amdt000-400.c", 488
	movhi 0x0000FFC3, r0, r2
	ld.bu 0x00000018[r2], r5
	andi 0x00000007, r7, r6
	andi 0x000000F8, r5, r5
	or r6, r5
	st.b r5, 0x00000018[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/20240510/Common/iolib/io_PIO_amdt000-400.c", 489
	ld.bu 0x00000018[r2], r5
	andi 0x0000009F, r5, r5
	st.b r5, 0x00000018[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/20240510/Common/iolib/io_PIO_amdt000-400.c", 490
	set1 0x00000007, 0x00000018[r2]
.BB.LABEL.2_35:	; if_break_bb249
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/20240510/Common/iolib/io_PIO_amdt000-400.c", 495
	movhi 0x0000FFC1, r0, r2
	movea 0x00000056, r0, r5
	st.w r5, 0x00002098[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/20240510/Common/iolib/io_PIO_amdt000-400.c", 501
	movhi 0x0000FFC0, r0, r5
	ld.bu 0x00000011[r5], r6
	shl 0x00000004, r8
	andi 0x00000030, r8, r2
	andi 0x000000CF, r6, r6
	or r2, r6
	movhi 0x0000FFFF, r0, r2
	st.b r6, 0x00000011[r5]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/20240510/Common/iolib/io_PIO_amdt000-400.c", 502
	cmp 0x0000000F, r9
	bgt9 .BB.LABEL.2_37
.BB.LABEL.2_36:	; if_then_bb261
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/20240510/Common/iolib/io_PIO_amdt000-400.c", 504
	clr1 0x00000004, 0xFFFFEA1F[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/20240510/Common/iolib/io_PIO_amdt000-400.c", 505
	ld.bu 0xFFFFEA1E[r2], r5
	andi 0x0000000F, r9, r6
	andi 0x000000F0, r5, r5
	or r6, r5
	st.b r5, 0xFFFFEA1E[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/20240510/Common/iolib/io_PIO_amdt000-400.c", 506
	set1 0x00000006, 0xFFFFEA1E[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/20240510/Common/iolib/io_PIO_amdt000-400.c", 508
	clr1 0x00000007, 0xFFFFEA1E[r2]
	jmp [r31]
.BB.LABEL.2_37:	; if_else_bb267
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/20240510/Common/iolib/io_PIO_amdt000-400.c", 512
	ld.b 0xFFFFEA1E[r2], r5
	ori 0x0000000F, r5, r5
	st.b r5, 0xFFFFEA1E[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/20240510/Common/iolib/io_PIO_amdt000-400.c", 513
	set1 0x00000007, 0xFFFFEA1E[r2]
	jmp [r31]
.BB.LABEL.2_38:	; switch_clause_bb272
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/20240510/Common/iolib/io_PIO_amdt000-400.c", 519
	set1 0x00000007, 0xFFFFEA20[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/20240510/Common/iolib/io_PIO_amdt000-400.c", 521
	cmp 0x00000003, r7
	bgt9 .BB.LABEL.2_40
.BB.LABEL.2_39:	; if_then_bb278
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/20240510/Common/iolib/io_PIO_amdt000-400.c", 523
	movhi 0x0000FFC3, r0, r2
	ld.bu 0x0000001C[r2], r5
	andi 0x00000007, r7, r6
	andi 0x000000F8, r5, r5
	or r6, r5
	st.b r5, 0x0000001C[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/20240510/Common/iolib/io_PIO_amdt000-400.c", 524
	ld.bu 0x0000001C[r2], r5
	andi 0x0000009F, r5, r5
	st.b r5, 0x0000001C[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/20240510/Common/iolib/io_PIO_amdt000-400.c", 525
	set1 0x00000007, 0x0000001C[r2]
.BB.LABEL.2_40:	; if_break_bb288
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/20240510/Common/iolib/io_PIO_amdt000-400.c", 529
	movhi 0x0000FFC1, r0, r2
	movea 0x00000056, r0, r5
	st.w r5, 0x0000209C[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/20240510/Common/iolib/io_PIO_amdt000-400.c", 531
	movhi 0x0000FFC0, r0, r2
	ld.bu 0x00000011[r2], r5
	shl 0x00000006, r8
	andi 0x0000003F, r5, r5
	or r8, r5
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/20240510/Common/iolib/io_PIO_amdt000-400.c", 532
	cmp 0x0000000F, r9
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/20240510/Common/iolib/io_PIO_amdt000-400.c", 531
	st.b r5, 0x00000011[r2]
	movhi 0x0000FFFF, r0, r2
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/20240510/Common/iolib/io_PIO_amdt000-400.c", 532
	bgt9 .BB.LABEL.2_42
.BB.LABEL.2_41:	; if_then_bb300
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/20240510/Common/iolib/io_PIO_amdt000-400.c", 534
	clr1 0x00000004, 0xFFFFEA21[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/20240510/Common/iolib/io_PIO_amdt000-400.c", 535
	ld.bu 0xFFFFEA20[r2], r5
	andi 0x0000000F, r9, r6
	andi 0x000000F0, r5, r5
	or r6, r5
	st.b r5, 0xFFFFEA20[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/20240510/Common/iolib/io_PIO_amdt000-400.c", 536
	set1 0x00000006, 0xFFFFEA20[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/20240510/Common/iolib/io_PIO_amdt000-400.c", 538
	clr1 0x00000007, 0xFFFFEA20[r2]
	jmp [r31]
.BB.LABEL.2_42:	; if_else_bb306
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/20240510/Common/iolib/io_PIO_amdt000-400.c", 542
	ld.b 0xFFFFEA20[r2], r5
	ori 0x0000000F, r5, r5
	st.b r5, 0xFFFFEA20[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/20240510/Common/iolib/io_PIO_amdt000-400.c", 543
	set1 0x00000007, 0xFFFFEA20[r2]
	jmp [r31]
_intpx_status_read:
	.stack _intpx_status_read = 0
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/20240510/Common/iolib/io_PIO_amdt000-400.c", 560
	movhi 0x0000FFC0, r0, r2
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/20240510/Common/iolib/io_PIO_amdt000-400.c", 564
	cmp 0x00000007, r6
	bh9 .BB.LABEL.3_3
.BB.LABEL.3_1:	; entry
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/20240510/Common/iolib/io_PIO_amdt000-400.c", 0
	shl 0x00000001, r6
	jmp #.SWITCH.LABEL.3_11[r6]
.SWITCH.LABEL.3_11:
	br9 .BB.LABEL.3_2
	br9 .BB.LABEL.3_4
	br9 .BB.LABEL.3_5
	br9 .BB.LABEL.3_6
	br9 .BB.LABEL.3_7
	br9 .BB.LABEL.3_8
	br9 .BB.LABEL.3_9
	br9 .BB.LABEL.3_10
.SWITCH.LABEL.3_11.END:
.BB.LABEL.3_2:	; switch_clause_bb
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/20240510/Common/iolib/io_PIO_amdt000-400.c", 567
	ld.bu 0x00000014[r2], r5
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/20240510/Common/iolib/io_PIO_amdt000-400.c", 568
	set1 0x00000000, 0x00000018[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/20240510/Common/iolib/io_PIO_amdt000-400.c", 567
	andi 0x00000001, r5, r10
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/20240510/Common/iolib/io_PIO_amdt000-400.c", 568
	jmp [r31]
.BB.LABEL.3_3:	; switch_clause_bb34
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/20240510/Common/iolib/io_PIO_amdt000-400.c", 601
	ld.bu 0x00000014[r2], r10
	mov 0xFFFFFFFF, r5
	st.b r5, 0x00000018[r2]
	jmp [r31]
.BB.LABEL.3_4:	; switch_clause_bb7
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/20240510/Common/iolib/io_PIO_amdt000-400.c", 571
	ld.b 0x00000014[r2], r5
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/20240510/Common/iolib/io_PIO_amdt000-400.c", 572
	set1 0x00000001, 0x00000018[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/20240510/Common/iolib/io_PIO_amdt000-400.c", 571
	shr 0x00000001, r5
	andi 0x00000001, r5, r10
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/20240510/Common/iolib/io_PIO_amdt000-400.c", 572
	jmp [r31]
.BB.LABEL.3_5:	; switch_clause_bb11
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/20240510/Common/iolib/io_PIO_amdt000-400.c", 575
	ld.b 0x00000014[r2], r5
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/20240510/Common/iolib/io_PIO_amdt000-400.c", 576
	set1 0x00000002, 0x00000018[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/20240510/Common/iolib/io_PIO_amdt000-400.c", 575
	shr 0x00000002, r5
	andi 0x00000001, r5, r10
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/20240510/Common/iolib/io_PIO_amdt000-400.c", 576
	jmp [r31]
.BB.LABEL.3_6:	; switch_clause_bb15
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/20240510/Common/iolib/io_PIO_amdt000-400.c", 579
	ld.b 0x00000014[r2], r5
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/20240510/Common/iolib/io_PIO_amdt000-400.c", 580
	set1 0x00000003, 0x00000018[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/20240510/Common/iolib/io_PIO_amdt000-400.c", 579
	shr 0x00000003, r5
	andi 0x00000001, r5, r10
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/20240510/Common/iolib/io_PIO_amdt000-400.c", 580
	jmp [r31]
.BB.LABEL.3_7:	; switch_clause_bb19
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/20240510/Common/iolib/io_PIO_amdt000-400.c", 583
	ld.b 0x00000014[r2], r5
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/20240510/Common/iolib/io_PIO_amdt000-400.c", 584
	set1 0x00000004, 0x00000018[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/20240510/Common/iolib/io_PIO_amdt000-400.c", 583
	shr 0x00000004, r5
	andi 0x00000001, r5, r10
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/20240510/Common/iolib/io_PIO_amdt000-400.c", 584
	jmp [r31]
.BB.LABEL.3_8:	; switch_clause_bb23
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/20240510/Common/iolib/io_PIO_amdt000-400.c", 587
	ld.b 0x00000014[r2], r5
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/20240510/Common/iolib/io_PIO_amdt000-400.c", 588
	set1 0x00000005, 0x00000018[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/20240510/Common/iolib/io_PIO_amdt000-400.c", 587
	shr 0x00000005, r5
	andi 0x00000001, r5, r10
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/20240510/Common/iolib/io_PIO_amdt000-400.c", 588
	jmp [r31]
.BB.LABEL.3_9:	; switch_clause_bb27
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/20240510/Common/iolib/io_PIO_amdt000-400.c", 591
	ld.b 0x00000014[r2], r5
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/20240510/Common/iolib/io_PIO_amdt000-400.c", 592
	set1 0x00000006, 0x00000018[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/20240510/Common/iolib/io_PIO_amdt000-400.c", 591
	shr 0x00000006, r5
	andi 0x00000001, r5, r10
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/20240510/Common/iolib/io_PIO_amdt000-400.c", 592
	jmp [r31]
.BB.LABEL.3_10:	; switch_clause_bb31
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/20240510/Common/iolib/io_PIO_amdt000-400.c", 595
	ld.bu 0x00000014[r2], r5
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/20240510/Common/iolib/io_PIO_amdt000-400.c", 596
	set1 0x00000007, 0x00000018[r2]
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/20240510/Common/iolib/io_PIO_amdt000-400.c", 595
	andi 0x000000FF, r5, r10
	shr 0x00000007, r10
	.line "C:/Users/ITAMI_NPC05/Documents/AMDT_NPC/AMDT3090_住友商事マシネックス（本田技術研究所）様向け_48V600A水冷ダブルインバータ開発/E_制御関係/20240510/Common/iolib/io_PIO_amdt000-400.c", 596
	jmp [r31]
