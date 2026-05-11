
	.extern _Dummy_EI_PE2

;テーブル参照方式　PE2用
	.section "EIINTTBL_PE2", const
	.align	4
;	CPU
	.dw	#_Dummy_EI_PE2 ; IPIR_CH0	0   
	.dw	#_Dummy_EI_PE2 ; IPIR_CH1	1
	.dw	#_Dummy_EI_PE2 ; IPIR_CH2	2
	.dw	#_Dummy_EI_PE2 ; IPIR_CH3	3
	.dw	#_Dummy_EI_PE2 ; Reserved	4
	.dw	#_Dummy_EI_PE2 ; Reserved	5
	.dw	#_Dummy_EI_PE2 ; Reserved	6
	.dw	#_Dummy_EI_PE2 ; Reserved	7
; エラーコントロールモジュール
	.dw	#_Dummy_EI_PE2 ; ECM		8
; 外部割り込み
	.dw	#_Dummy_EI_PE2 ; IRQ0		9
	.dw	#_Dummy_EI_PE2 ; IRQ1		10
	.dw	#_Dummy_EI_PE2 ; IRQ2		11
	.dw	#_Dummy_EI_PE2 ; IRQ3		12
	.dw	#_Dummy_EI_PE2 ; IRQ4		13
	.dw	#_Dummy_EI_PE2 ; IRQ5		14
	.dw	#_Dummy_EI_PE2 ; IRQ6		15
	.dw	#_Dummy_EI_PE2 ; IRQ71		16
; ソフトエラー割り込み
	.dw	#_Dummy_EI_PE2 ; SINT0		17
	.dw	#_Dummy_EI_PE2 ; SINT1		18
	.dw	#_Dummy_EI_PE2 ; SINT2		19
	.dw	#_Dummy_EI_PE2 ; SINT3		20
	.dw	#_Dummy_EI_PE2 ; Reserved	21
	.dw	#_Dummy_EI_PE2 ; Reserved	22
	.dw	#_Dummy_EI_PE2 ; Reserved	23
	.dw	#_Dummy_EI_PE2 ; Reserved	24
; OSTM
	.dw	#_Dummy_EI_PE2 ; OSTM0		25
	.dw	#_Dummy_EI_PE2 ; OSTM1		26
	.dw	#_Dummy_EI_PE2 ; OSTM2		27
	.dw	#_Dummy_EI_PE2 ; Reserved	28
	.dw	#_Dummy_EI_PE2 ; Reserved	29
	.dw	#_Dummy_EI_PE2 ; Reserved	30
	.dw	#_Dummy_EI_PE2 ; Reserved	31

