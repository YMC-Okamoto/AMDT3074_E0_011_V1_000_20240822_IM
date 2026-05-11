;   Copyright(c) 2013, 2015 Renesas Electronics Corporation
;   RENESAS ELECTRONICS CONFIDENTIAL AND PROPRIETARY.
;   This program must be used solely for the purpose for which
;   it was furnished by Renesas Electronics Corporation. No part of this
;   program may be reproduced or disclosed to others, in any
;   form, without the prior written permission of Renesas Electronics
;   Corporation.

;   NOTE       : THIS IS A TYPICAL EXAMPLE.
;   DATE       : Fri, Jan 16, 2015
;-----------------------------------------------------------------------------
;	exception vector table
;-----------------------------------------------------------------------------
	.section "RESET", text
	.align	512
	jr32	__start ; RESET

	.align	16
	jr32	_Dummy ; SYSERR

	.align	16
	jr32	_Dummy ; HVTRAP

	.align	16
	jr32	_Dummy ; FETRAP

	.align	16
	jr32	_Dummy_EI ; TRAP0

	.align	16
	jr32	_Dummy_EI ; TRAP1

	.align	16
	jr32	_Dummy ; RIE

	.align	16
	jr32	_Dummy_EI ; FPP/FPI

	.align	16
	jr32	_Dummy ; UCPOP

	.align	16
	jr32	_Dummy ; MIP/MDP

	.align	16
	jr32	_Dummy ; PIE

	.align	16
	jr32	_Dummy ; Debug

	.align	16
	jr32	_Dummy ; MAE

	.align	16
	jr32	_Dummy ; (R.F.U)

	.align	16
	jr32	_Dummy ; FENMI

	.align	16
	jr32	_Dummy ; FEINT

	.align	16
	jr32	_Dummy_EI ; INTn(priority0)

	.align	16
	jr32	_Dummy_EI ; INTn(priority1)

	.align	16
	jr32	_Dummy_EI ; INTn(priority2)

	.align	16
	jr32	_Dummy_EI ; INTn(priority3)

	.align	16
	jr32	_Dummy_EI ; INTn(priority4)

	.align	16
	jr32	_Dummy_EI ; INTn(priority5)

	.align	16
	jr32	_Dummy_EI ; INTn(priority6)

	.align	16
	jr32	_Dummy_EI ; INTn(priority7)

	.align	16
	jr32	_Dummy_EI ; INTn(priority8)

	.align	16
	jr32	_Dummy_EI ; INTn(priority9)

	.align	16
	jr32	_Dummy_EI ; INTn(priority10)

	.align	16
	jr32	_Dummy_EI ; INTn(priority11)

	.align	16
	jr32	_Dummy_EI ; INTn(priority12)

	.align	16
	jr32	_Dummy_EI ; INTn(priority13)

	.align	16
	jr32	_Dummy_EI ; INTn(priority14)

	.align	16
	jr32	_Dummy_EI ; INTn(priority15)


	.section ".text", text
	.align	2
_Dummy:
	syncp
	push	r10
	stsr	0, r10, 2		; get HTCFG0
	shr		16, r10			; get PEID
	cmp	1, r10
	bne    _Dummy_pe2
	jarl32	_Dummy_func_pe1,lp
	pop		r10
	feret
	br	__exit		
_Dummy_pe2:
	cmp	2, r10
	bne    _Dummy_not_pe
	jarl32	_Dummy_func_pe2, lp	
	pop		r10
	feret
	br	__exit
_Dummy_not_pe:
	pop		r10
	br	__exit	

_Dummy_EI:
	syncp
	push	r10
	stsr	0, r10, 2		; get HTCFG0
	shr		16, r10			; get PEID
	cmp	1, r10
	bne    _Dummy_EI_pe2
	pop		r10
	jr32	_Dummy_EI_func_pe1
	eiret
	br	__exit		
_Dummy_EI_pe2:
	cmp	2, r10
	bne    _Dummy_EI_not_pe
	pop		r10
	jr32   _Dummy_EI_func_pe2
	eiret
	br	__exit
_Dummy_EI_not_pe:
	pop		r10
	br	__exit	
;-----------------------------------------------------------------------------
;	startup
;-----------------------------------------------------------------------------
;	.section	".text", text
;	.align	2
__start:
$if 1						; 汎用レジスタ初期化
	$nowarning
	mov	r0, r1
	$warning
	mov	r0, r2
	mov	r0, r3
	mov	r0, r4
	mov	r0, r5
	mov	r0, r6
	mov	r0, r7
	mov	r0, r8
	mov	r0, r9
	mov	r0, r10
	mov	r0, r11
	mov	r0, r12
	mov	r0, r13
	mov	r0, r14
	mov	r0, r15
	mov	r0, r16
	mov	r0, r17
	mov	r0, r18
	mov	r0, r19
	mov	r0, r20
	mov	r0, r21
	mov	r0, r22
	mov	r0, r23
	mov	r0, r24
	mov	r0, r25
	mov	r0, r26
	mov	r0, r27
	mov	r0, r28
	mov	r0, r29
	mov	r0, r30
	mov	r0, r31
$endif

$if 1						;  基本システムレジスタ初期化
	ldsr	r0,  0, 0		; SR0,0  EIPC	/EIレベル例外時退避レジスタ
	ldsr	r0,  2, 0		; SR2,0  FEPC	/FEレベル例外時退避レジスタ
	ldsr	r0, 16, 0		; SR16,0 CTPC   /CALLT時退避レジスタ
	ldsr	r0, 20, 0		; SR20,0 CTBP	/CALLT時ベースポインタ
	ldsr	r0, 28, 0		; SR28,0 EIWR	/EIレベル作業レジスタ
	ldsr	r0, 29, 0		; SR29,0 FEWR	/FEレベル作業レジスタ
	stsr	2, r10, 1		; r10 <- RBASE
	ldsr	r10,  3, 1		; SR3,1  EBASE  /例外ハンドラベクタアドレス	
	ldsr	r0, 11, 1		; SR11,1 SCCFG　/SYSCALLの動作設定
	syncp
	ldsr	r0, 12, 1		; SR12,1 SCBP	/SYSCALLベースアドレス
	ldsr	r0,  6, 2		; SR6,2  MEA	/メモリエラーアドレス
	ldsr	r0,  8, 2		; SR8,2  MEI	/メモリエラー情報
$endif


$if 1						; jump to entry point of each PE
	stsr	0, r10, 2		; get HTCFG0
	shr	16, r10				; get PEID

	cmp	1, r10
	bz	.L.entry_PE1
	cmp	2, r10
	bz	.L.entry_PE2
	cmp	3, r10
	bz	.L.entry_PE3
	cmp	4, r10
	bz	.L.entry_PE4
	cmp	5, r10
	bz	.L.entry_PE5
	cmp	6, r10
	bz	.L.entry_PE6
	cmp	7, r10
	bz	.L.entry_PE7
__exit:
	br	__exit

.L.entry_PE1:
	jarl	_hdwinit_PE1, lp	; initialize hardware
	jr32	__cstart_pm1

.L.entry_PE2:
	jarl	_hdwinit_PE2, lp	; initialize hardware
	jr32	__cstart_pm2

.L.entry_PE3:
	br	__exit
.L.entry_PE4:
	br	__exit
.L.entry_PE5:
	br	__exit
.L.entry_PE6:
	br	__exit
.L.entry_PE7:
	br	__exit
$endif


;-----------------------------------------------------------------------------
;	RAM address
;-----------------------------------------------------------------------------
	GLOBAL_RAM_ADDR 	.set	0xfeef0000
	GLOBAL_RAM_END		.set	0xfef0bfff

	LOCAL_RAM_PE1_ADDR	.set	0xfebf0000
	LOCAL_RAM_PE1_END	.set	0xfebfffff

	LOCAL_RAM_PE2_ADDR	.set	0xfe9f0000
	LOCAL_RAM_PE2_END	.set	0xfe9fffff
	
;-----------------------------------------------------------------------------
;	MEV address
;-----------------------------------------------------------------------------
	MEV0_ADDR			.set	0xfffeec00	; G0MEV0
	MEV1_ADDR			.set	0xfffeec04	; G0MEV1
	MEV2_ADDR			.set	0xfffeec08	; G0MEV2
	
;-----------------------------------------------------------------------------
;	hdwinit_PE1
; Specify RAM addresses suitable to your system if needed.
;-----------------------------------------------------------------------------
	.section	".text", text
	.align	2
_hdwinit_PE1:
	mov	lp, r14			; save return address

	mov	MEV0_ADDR, r6				
	set1	0, [r6]					;   ビット0に1を書き込み

	; clear Global RAM
	mov	GLOBAL_RAM_ADDR, r6
	mov	GLOBAL_RAM_END, r7
	jarl	_zeroclr4, lp

	mov	MEV0_ADDR, r6				
	set1	1, [r6]					;   ビット1に1を書き込み

	; clear Local RAM PE1
	mov	LOCAL_RAM_PE1_ADDR, r6
	mov	LOCAL_RAM_PE1_END, r7
	jarl	_zeroclr4, lp

	mov	r14, lp
	jmp	[lp]
;-----------------------------------------------------------------------------
;	hdwinit_PE2
; Specify RAM addresses suitable to your system if needed.
;-----------------------------------------------------------------------------
	.section	".text", text
	.align	2
_hdwinit_PE2:
	mov	lp, r14			; save return address


;  PE1 GRAM初期化待ち
	mov	MEV0_ADDR, r6			; 
_wait_GRAM_PE2:
	snooze						;   32Clock停止
	tst1	0, [r6]				; MEV0_ADDRのbit0の値を確認。
	bz	  _wait_GRAM_PE2
;
	nop                         ; PE1 GRAM初期化開始
;	
_wait_GRAM_PE2.1:
	snooze						;  32Clock停止
	tst1	1, [r6]				;  MEV0_ADDRのbit1の値を確認。
	bz	  _wait_GRAM_PE2.1
;
	nop                         ; PE1 GRAM初期化終了
	st.w r0,[r6]				; MEV0_ADDRをクリア
;

	; clear Local RAM PE2
	mov	LOCAL_RAM_PE2_ADDR, r6
	mov	LOCAL_RAM_PE2_END, r7
	jarl	_zeroclr4, lp

	mov	r14, lp
	jmp	[lp]

;-----------------------------------------------------------------------------
;	zeroclr4
;-----------------------------------------------------------------------------
	.align	2
_zeroclr4:
	br	.L.zeroclr4.2
.L.zeroclr4.1:
	st.w	r0, [r6]
	add	4, r6
.L.zeroclr4.2:
	cmp	r6, r7
	bh	.L.zeroclr4.1
	jmp	[lp]
;-------------------- end of start up module -------------------;
