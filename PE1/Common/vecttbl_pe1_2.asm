
	.extern _Dummy_EI_PE12
	.extern _fi_pwm_int
	; .extern _fi_20us_int
	.extern _fi_1ms_int
	; .extern _fi_enc0_int
	.extern _fi_awc_re
	.extern _fi_awc_rx
	; .extern _fi_zphase_int;

;テーブル参照方式　PE1/2用(INTC2)
	.section "EIINTTBL_PE1_2", const
	.align	4	
; CodeFlash/DataFlash
	.dw	#_Dummy_EI_PE12 ; Reserved	32
	.dw	#_Dummy_EI_PE12 ; FlashSEQ	33
	.dw	#_Dummy_EI_PE12 ; Reserved	34
	.dw	#_Dummy_EI_PE12 ; Reserved	35
	.dw	#_Dummy_EI_PE12 ; Reserved	36
	.dw	#_Dummy_EI_PE12 ; Reserved	37
; DMAC
	.dw	#_Dummy_EI_PE12 ; DMAC CH0	38
	.dw	#_Dummy_EI_PE12 ; DMAC CH1	39
	.dw	#_Dummy_EI_PE12 ; DMAC CH2	40
	.dw	#_Dummy_EI_PE12 ; DMAC CH3	41
	.dw	#_Dummy_EI_PE12 ; DMAC CH4	42
	.dw	#_Dummy_EI_PE12 ; DMAC CH5	43
	.dw	#_Dummy_EI_PE12 ; DMAC CH6	44
	.dw	#_Dummy_EI_PE12 ; DMAC CH7	45
	.dw	#_Dummy_EI_PE12 ; DMAC CH8	46
	.dw	#_Dummy_EI_PE12 ; DMAC CH9	47
	.dw	#_Dummy_EI_PE12 ; DMAC CH10	48
	.dw	#_Dummy_EI_PE12 ; DMAC CH11	49
	.dw	#_Dummy_EI_PE12 ; DMAC CH12	50
	.dw	#_Dummy_EI_PE12 ; DMAC CH13	51
	.dw	#_Dummy_EI_PE12 ; DMAC CH14	52
	.dw	#_Dummy_EI_PE12 ; DMAC CH15	53
; WDTA
	.dw	#_Dummy_EI_PE12 ; WDTA0TIT 	54
	.dw	#_Dummy_EI_PE12 ; WDTA1TIT	55
; EMU20
	.dw	#_Dummy_EI_PE12 ; EMU20 INT0	56
	.dw	#_Dummy_EI_PE12 ; EMU20 INT1	57
	.dw	#_Dummy_EI_PE12 ; EMU20 INT2	58
	.dw	#_Dummy_EI_PE12 ; EMU20 INT3	59
	.dw	#_Dummy_EI_PE12 ; EMU20 INT4	60
; EMU21
	.dw	#_Dummy_EI_PE12 ; EMU21 INT0	61
	.dw	#_Dummy_EI_PE12 ; EMU21 INT1	62
	.dw	#_Dummy_EI_PE12 ; EMU21 INT2	63
	.dw	#_Dummy_EI_PE12 ; EMU21 INT3	64
	.dw	#_Dummy_EI_PE12 ; EMU21 INT4	65
; RDC0
	; .dw	#_fi_zphase_int ; RDC20 Z	66
	.dw	#_Dummy_EI_PE12 ; RDC20 Z	66
	.dw	#_Dummy_EI_PE12 ; RDC20 ERR	67
	.dw	#_Dummy_EI_PE12 ; RDC20 CMP0	68
	.dw	#_Dummy_EI_PE12 ; RDC20 CMP1	69
	.dw	#_Dummy_EI_PE12 ; RDC20 CMP2	70
	.dw	#_Dummy_EI_PE12 ; RDC20 ET	71
; RDC1
	.dw	#_Dummy_EI_PE12 ; RDC21 Z	72
	.dw	#_Dummy_EI_PE12 ; RDC21 ERR	73
	.dw	#_Dummy_EI_PE12 ; RDC21 CMP0	74
	.dw	#_Dummy_EI_PE12 ; RDC21 CMP1	75
	.dw	#_Dummy_EI_PE12 ; RDC21 CMP2	76
	.dw	#_Dummy_EI_PE12 ; RDC21 ET	77
; TAUJ0
	.dw	#_Dummy_EI_PE12 ; INTTAUJ0I0 78
	.dw	#_Dummy_EI_PE12 ; INTTAUJ0I1	79
	.dw	#_Dummy_EI_PE12 ; INTTAUJ0I2	80
	.dw	#_Dummy_EI_PE12 ; INTTAUJ0I3	81
; TAUD0
	.dw	#_fi_1ms_int	; INTTAUD0I0	82
	; .dw	#_fi_20us_int   ; INTTAUD0I1	83
	.dw	#_Dummy_EI_PE12   ; INTTAUD0I1	83
	.dw	#_Dummy_EI_PE12 ; INTTAUD0I2	84
	.dw	#_Dummy_EI_PE12 ; INTTAUD0I3	85
	.dw	#_Dummy_EI_PE12 ; INTTAUD0I4	86
	.dw	#_Dummy_EI_PE12 ; INTTAUD0I5	87
	.dw	#_Dummy_EI_PE12 ; INTTAUD0I6	88
	.dw	#_Dummy_EI_PE12 ; INTTAUD0I7	89
	.dw	#_Dummy_EI_PE12 ; INTTAUD0I8	90
	.dw	#_Dummy_EI_PE12 ; INTTAUD0I9	91
	.dw	#_Dummy_EI_PE12 ; INTTAUD0I10	92 
	.dw	#_Dummy_EI_PE12 ; INTTAUD0I11	93
	.dw	#_Dummy_EI_PE12 ; INTTAUD0I12	94
	.dw	#_Dummy_EI_PE12 ; INTTAUD0I13	95
	.dw	#_Dummy_EI_PE12 ; INTTAUD0I14	96
	.dw	#_Dummy_EI_PE12 ; INTTAUD0I15	97
; TAUD1
	.dw	#_Dummy_EI_PE12 ; INTTAUD1I0	98
	.dw	#_Dummy_EI_PE12 ; INTTAUD1I1	99
	.dw	#_Dummy_EI_PE12 ; INTTAUD1I2	100
	.dw	#_Dummy_EI_PE12 ; INTTAUD1I3	101
	.dw	#_Dummy_EI_PE12 ; INTTAUD1I4	102
	.dw	#_Dummy_EI_PE12 ; INTTAUD1I5	103
	.dw	#_Dummy_EI_PE12 ; INTTAUD1I6	104
	.dw	#_Dummy_EI_PE12 ; INTTAUD1I7	105
	.dw	#_Dummy_EI_PE12 ; INTTAUD1I8	106
	.dw	#_Dummy_EI_PE12 ; INTTAUD1I9	107
	.dw	#_Dummy_EI_PE12 ; INTTAUD1I10	108
	.dw	#_Dummy_EI_PE12 ; INTTAUD1I11	109
	.dw	#_Dummy_EI_PE12 ; INTTAUD1I12	110
	.dw	#_Dummy_EI_PE12 ; INTTAUD1I13	111
	.dw	#_Dummy_EI_PE12 ; INTTAUD1I14	112
	.dw	#_Dummy_EI_PE12 ; INTTAUD1I15	113
	.dw	#_Dummy_EI_PE12 ; Reserved	114
	.dw	#_Dummy_EI_PE12 ; Reserved	115
; PIC1A(ENCAx)
	.dw	#_Dummy_EI_PE12 ; ENCA0 CMP0	116
	.dw	#_Dummy_EI_PE12 ; ENCA1 CMP0	117
; ENCA0
	.dw	#_Dummy_EI_PE12 ; ENCA0 OV	118
	; .dw	# _fi_enc0_int ; ENCA0 CMP1	119
	.dw	# _Dummy_EI_PE12 ; ENCA0 CMP1	119
	.dw	#_Dummy_EI_PE12 ; ENCA0 UD	120
	.dw	#_Dummy_EI_PE12 ; ENCA0 CLR	121
; ENCA1
	.dw	#_Dummy_EI_PE12 ; ENCA1 OV	122
	.dw	#_Dummy_EI_PE12 ; ENCA1 CMP1	123
	.dw	#_Dummy_EI_PE12 ; ENCA1 UD	124
	.dw	#_Dummy_EI_PE12 ; ENCA1 CLR	125
; TAPA
	.dw	#_Dummy_EI_PE12 ; TAPA0 000	126
	.dw	#_Dummy_EI_PE12 ; TAPA0 111	127
	.dw	#_Dummy_EI_PE12 ; TAPA1 000	128
	.dw	#_Dummy_EI_PE12 ; TAPA1 111	129
; TPBA0
	.dw	#_Dummy_EI_PE12 ; TPBA0 T Match	130
	.dw	#_Dummy_EI_PE12 ; TPBA0 D Match	131
	.dw	#_Dummy_EI_PE12 ; TPBA0 P Match	132
; TPBA1
	.dw	#_Dummy_EI_PE12 ; TPBA1 T Match	133
	.dw	#_Dummy_EI_PE12 ; TPBA1 D Match	134
	.dw	#_Dummy_EI_PE12 ; TPBA1 P Match	135
; TSG30
	.dw	#_Dummy_EI_PE12 ; TSG30CMP1E	136
	.dw	#_Dummy_EI_PE12 ; TSG30CMP2E	137
	.dw	#_Dummy_EI_PE12 ; TSG30CMP3E	138
	.dw	#_Dummy_EI_PE12 ; TSG30CMP4E	139
	.dw	#_Dummy_EI_PE12 ; TSG30CMP5E	140
	.dw	#_Dummy_EI_PE12 ; TSG30CMP6E	141
	.dw	#_Dummy_EI_PE12 ; TSG30CMP7E	142
	.dw	#_Dummy_EI_PE12 ; TSG30CMP8E	143
	.dw	#_Dummy_EI_PE12 ; TSG30CMP9E	144
	.dw	#_Dummy_EI_PE12 ; TSG30CMP10E	145
	.dw	#_Dummy_EI_PE12 ; TSG30CMP11E	146
	.dw	#_Dummy_EI_PE12 ; TSG30CMP12E	147
	.dw	#_Dummy_EI_PE12 ; TSG30 ERR	148
	.dw	#_Dummy_EI_PE12 ; TSG30 WAR	149
; TSG31
	.dw	#_Dummy_EI_PE12 ; TSG31CMP1E	150
	.dw	#_Dummy_EI_PE12 ; TSG31CMP2E	151
	.dw	#_Dummy_EI_PE12 ; TSG31CMP3E	152
	.dw	#_Dummy_EI_PE12 ; TSG31CMP4E	153
	.dw	#_Dummy_EI_PE12 ; TSG31CMP5E	154
	.dw	#_Dummy_EI_PE12 ; TSG31CMP6E	155
	.dw	#_Dummy_EI_PE12 ; TSG31CMP7E	156
	.dw	#_Dummy_EI_PE12 ; TSG31CMP8E	157
	.dw	#_Dummy_EI_PE12 ; TSG31CMP9E	158
	.dw	#_Dummy_EI_PE12 ; TSG31CMP10E	159
	.dw	#_Dummy_EI_PE12 ; TSG31CMP11E	160
	.dw	#_Dummy_EI_PE12 ; TSG31CMP12E	161
	.dw	#_Dummy_EI_PE12 ; TSG31 ERR	162
	.dw	#_Dummy_EI_PE12 ; TSG31 WAR	163
; TSG30
	.dw	#_Dummy_EI_PE12 ; TSG30CMP0E	164
	.dw	#_fi_pwm_int 	; TSG30 000	165; 山割り込み
	.dw	#_fi_pwm_int 	; TSG30 111	166; 谷割り込み
; TSG31	
	.dw	#_Dummy_EI_PE12 ; TSG31CMP0E	167
	.dw	#_Dummy_EI_PE12 ; TSG31 000	168; 山割り込み
	.dw	#_Dummy_EI_PE12 ; TSG31 111	169; 谷割り込み
; ICU-S
	.dw	#_Dummy_EI_PE12 ; INT_WR_RDY	170
	.dw	#_Dummy_EI_PE12 ; INT_RD_RDY	171
; ADCC0
	.dw	#_Dummy_EI_PE12 ; ADI00		172
	.dw	#_Dummy_EI_PE12 ; ADI01		173
	.dw	#_Dummy_EI_PE12 ; ADI02		174
	.dw	#_Dummy_EI_PE12 ; ADI03		175
	.dw	#_Dummy_EI_PE12 ; ADI04		176
; ADCC1
	.dw	#_Dummy_EI_PE12 ; ADI10		177
	.dw	#_Dummy_EI_PE12 ; ADI11		178
	.dw	#_Dummy_EI_PE12 ; ADI12		179
	.dw	#_Dummy_EI_PE12 ; ADI13		180
	.dw	#_Dummy_EI_PE12 ; ADI14		181
	.dw	#_Dummy_EI_PE12 ; Reserved	182
	.dw	#_Dummy_EI_PE12 ; Reserved	183
; ADCC0
	.dw	#_Dummy_EI_PE12 ; ADE0		184
; ADCC1
	.dw	#_Dummy_EI_PE12 ; ADE1		185
; RS-CAN
	.dw	#_Dummy_EI_PE12 ; RSCAN RCV FIFO	186
	.dw	#_Dummy_EI_PE12 ; RSCAN GLOBAL INT	187
; RS-CAN CH0
	.dw	#_Dummy_EI_PE12 ; RSCAN0 TX/RX FIFO 	188
	.dw	#_Dummy_EI_PE12 ; RSCAN0 ERR	189
	.dw	#_Dummy_EI_PE12 ; RSCAN0 TX	190
; RS-CAN CH1
	.dw	#_Dummy_EI_PE12 ; RSCAN1 TX/RX FIFO	191
	.dw	#_Dummy_EI_PE12 ; RSCAN1 ERR	192
	.dw	#_Dummy_EI_PE12 ; RSCAN1 TX	193
; RS-CAN CH2
	.dw	#_Dummy_EI_PE12 ; RSCAN2 TX/RX FIFO	194
	.dw	#_Dummy_EI_PE12 ; RSCAN2 ERR	195
	.dw	#_Dummy_EI_PE12 ; RSCAN2 TX	196
; RS-CAN CH3
	.dw	#_Dummy_EI_PE12 ; RSCAN3 TX/RX FIFO	197
	.dw	#_Dummy_EI_PE12 ; RSCAN3 ERR	198
	.dw	#_Dummy_EI_PE12 ; RSCAN3 TX	199
; RLIN0
	.dw	#_Dummy_EI_PE12 ; RLIN20 INT	200
; RLIN1
	.dw	#_Dummy_EI_PE12 ; RLIN21 INT	201
; RLIN2
	.dw	#_Dummy_EI_PE12 ; RLIN22 INT	202
; SCI0
	.dw	#_fi_awc_re 	; SCI0 ERI	203
	.dw	#_fi_awc_rx 	; SCI0 RXI	204
	.dw	#_Dummy_EI_PE12 ; SCI0 TXI	205
	.dw	#_Dummy_EI_PE12 ; SCI0 TEI	206
; SCI1
	.dw	#_fi_awc_re		; SCI1 ERI	207
	.dw	#_fi_awc_rx 	; SCI1 RXI	208
	.dw	#_Dummy_EI_PE12 ; SCI1 TXI	209
	.dw	#_Dummy_EI_PE12 ; SCI1 TEI	210
; SCI2
	.dw	#_Dummy_EI_PE12 ; SCI2 ERI	211
	.dw	#_Dummy_EI_PE12 ; SCI2 RXI	212
	.dw	#_Dummy_EI_PE12 ; SCI2 TXI	213
	.dw	#_Dummy_EI_PE12 ; SCI2 TEI	214
; CSIH0
	.dw	#_Dummy_EI_PE12 ; CSIH0 TX	215
	.dw	#_Dummy_EI_PE12 ; CSIH0 RX	216
	.dw	#_Dummy_EI_PE12 ; CSIH0 ERR	217
	.dw	#_Dummy_EI_PE12 ; CSIH0 JOBE	218
; CSIH1
	.dw	#_Dummy_EI_PE12 ; CSIH1 TX	219
	.dw	#_Dummy_EI_PE12 ; CSIH1 RX	220
	.dw	#_Dummy_EI_PE12 ; CSIH1 ERR	221
	.dw	#_Dummy_EI_PE12 ; CSIH1 JOBE	222
; DTS
	.dw	#_Dummy_EI_PE12 ; DTS 0-31   TE	223
	.dw	#_Dummy_EI_PE12 ; DTS 32-63  TE	224
	.dw	#_Dummy_EI_PE12 ; DTS 64-95 T E	225
	.dw	#_Dummy_EI_PE12 ; DTS 96-127 TE	226
	.dw	#_Dummy_EI_PE12 ; DTS 0-31   TN MATCH	227
	.dw	#_Dummy_EI_PE12 ; DTS 32-63  TN MATCH	228
	.dw	#_Dummy_EI_PE12 ; DTS 64-95  TN MATCH	229
	.dw	#_Dummy_EI_PE12 ; DTS 96-127 TN MATCH	230
	.dw	#_Dummy_EI_PE12 ; Reserved	231
	.dw	#_Dummy_EI_PE12 ; Reserved	232
	.dw	#_Dummy_EI_PE12 ; Reserved	233
	.dw	#_Dummy_EI_PE12 ; Reserved	234
	.dw	#_Dummy_EI_PE12 ; Reserved	235
	.dw	#_Dummy_EI_PE12 ; Reserved	236
	.dw	#_Dummy_EI_PE12 ; Reserved	237
	.dw	#_Dummy_EI_PE12 ; Reserved	238
	.dw	#_Dummy_EI_PE12 ; Reserved	239
	.dw	#_Dummy_EI_PE12 ; Reserved	240
	.dw	#_Dummy_EI_PE12 ; Reserved	241
	.dw	#_Dummy_EI_PE12 ; Reserved	242
	.dw	#_Dummy_EI_PE12 ; Reserved	243
	.dw	#_Dummy_EI_PE12 ; Reserved	244
	.dw	#_Dummy_EI_PE12 ; Reserved	245
	.dw	#_Dummy_EI_PE12 ; Reserved	246
	.dw	#_Dummy_EI_PE12 ; Reserved	247
	.dw	#_Dummy_EI_PE12 ; Reserved	248
	.dw	#_Dummy_EI_PE12 ; Reserved	249
	.dw	#_Dummy_EI_PE12 ; Reserved	250
	.dw	#_Dummy_EI_PE12 ; Reserved	251
	.dw	#_Dummy_EI_PE12 ; Reserved	252
	.dw	#_Dummy_EI_PE12 ; Reserved	253
	.dw	#_Dummy_EI_PE12 ; Reserved	254
	.dw	#_Dummy_EI_PE12 ; Reserved	255
