#CC-RH Compiler RH850 Assembler Source
#@	CC-RH Version : V1.03.00 [21 Aug 2015]
#@	Command : src\mapdata_k_inv0_ldq_cmp.c -Xobj_path=DefaultBuild -Xcommon=rh850 -Xcpu=g3m -c -g -Ospeed -Oinline_size -Isrc -I..\Common -D__CLK_HSB=80,__CLK_LSB=40,__CLKC_HSB=80,__CLK_CLSB=40 -Xasm_path=DefaultBuild
#@	compiled at Mon May 01 22:15:19 2017

	.file "src\mapdata_k_inv0_ldq_cmp.c"

	$reg_mode 32

	.extern _map_k_inv0_ldq_cmp
	.public _f4_x_nom_1d, 4
	.public _s4_x_id_1d, 4
	.public _s4_x_id_p1_1d, 4
	.public _f4_kw_x_1d, 4
	.public _f4_x_add1_1d, 4
	.public _f4_x_add1_int_1d, 4
	.public _f4_x_add2_1d, 4
	.public _f4_x_add2_int_1d, 4
	.public _f4_x_nom_temp_1d, 4
	.public _f4_kw_x_temp_1d, 4
	.public _f4_kw_x_add_1d, 4
	.public _C0_1d, 4
	.public _C1_1d, 4
	.public _c0_1d, 2
	.public _c1_1d, 2
	.public _u1_k_inv0_ldq_cmp_map_get
	.extern _floorf
	.extern _modff

	.section .text, text
_u1_k_inv0_ldq_cmp_map_get:
	.stack _u1_k_inv0_ldq_cmp_map_get = 24
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/mapdata_k_inv0_ldq_cmp.c", 34
	prepare 0x00000079, 0x00000004
	mov r7, r20
	movhi 0x0000447A, r0, r2
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/mapdata_k_inv0_ldq_cmp.c", 50
	subf.s r2, r6, r5
	movhi HIGHW1(#_f4_x_nom_temp_1d), r0, r21
	movhi 0x000042C6, r0, r6
	divf.s r2, r5, r2
	st.w r2, LOWW(#_f4_x_nom_temp_1d)[r21]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/mapdata_k_inv0_ldq_cmp.c", 51
	movhi HIGHW1(#_f4_x_add1_1d), r0, r2
	st.w r6, LOWW(#_f4_x_add1_1d)[r2]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/mapdata_k_inv0_ldq_cmp.c", 52
	jarl _floorf, r31
	movhi HIGHW1(#_f4_x_add1_int_1d), r0, r22
	st.w r10, LOWW(#_f4_x_add1_int_1d)[r22]
	movhi 0x00004348, r0, r6
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/mapdata_k_inv0_ldq_cmp.c", 53
	movhi HIGHW1(#_f4_x_add2_1d), r0, r2
	st.w r6, LOWW(#_f4_x_add2_1d)[r2]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/mapdata_k_inv0_ldq_cmp.c", 54
	jarl _floorf, r31
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/mapdata_k_inv0_ldq_cmp.c", 56
	ld.w LOWW(#_f4_x_nom_temp_1d)[r21], r6
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/mapdata_k_inv0_ldq_cmp.c", 54
	movhi HIGHW1(#_f4_x_add2_int_1d), r0, r5
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/mapdata_k_inv0_ldq_cmp.c", 56
	ld.w LOWW(#_f4_x_add1_int_1d)[r22], r2
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/mapdata_k_inv0_ldq_cmp.c", 54
	st.w r10, LOWW(#_f4_x_add2_int_1d)[r5]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/mapdata_k_inv0_ldq_cmp.c", 56
	cmpf.s 0x00000005, r2, r6
	trfsr 0
	bnz9 .BB.LABEL.1_3
.BB.LABEL.1_1:	; if_else_bb
	movhi 0x00003F80, r0, r5
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/mapdata_k_inv0_ldq_cmp.c", 62
	addf.s r5, r2, r2
	cmpf.s 0x00000005, r6, r2
	trfsr 0
	bz17 .BB.LABEL.1_10
.BB.LABEL.1_2:	; if_then_bb29
	movhi 0x00003F80, r0, r2
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/mapdata_k_inv0_ldq_cmp.c", 64
	addf.s r2, r6, r6
	movhi HIGHW1(#_f4_x_nom_temp_1d), r0, r2
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/mapdata_k_inv0_ldq_cmp.c", 66
	cmpf.s 0x00000005, r10, r6
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/mapdata_k_inv0_ldq_cmp.c", 64
	st.w r6, LOWW(#_f4_x_nom_temp_1d)[r2]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/mapdata_k_inv0_ldq_cmp.c", 66
	trfsr 0
	bz9 .BB.LABEL.1_4
.BB.LABEL.1_3:	; if_then_bb37
	movhi HIGHW1(#_f4_x_nom_1d), r0, r2
	st.w r6, LOWW(#_f4_x_nom_1d)[r2]
	mov r3, r7
	jarl _modff, r31
	ld.w 0x00000000[r3], r2
	movhi HIGHW1(#_f4_kw_x_1d), r0, r5
	st.w r10, LOWW(#_f4_kw_x_1d)[r5]
	movhi HIGHW1(#_s4_x_id_1d), r0, r5
	trncf.sw r2, r2
	st.w r2, LOWW(#_s4_x_id_1d)[r5]
	jr .BB.LABEL.1_14
.BB.LABEL.1_4:	; if_else_bb43
	movhi 0x00003F80, r0, r2
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/mapdata_k_inv0_ldq_cmp.c", 72
	addf.s r2, r10, r2
	cmpf.s 0x00000005, r6, r2
	trfsr 0
	bz9 .BB.LABEL.1_6
.BB.LABEL.1_5:	; if_then_bb50
	movhi 0x00003F80, r0, r2
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/mapdata_k_inv0_ldq_cmp.c", 75
	addf.s r2, r6, r6
	br9 .BB.LABEL.1_3
.BB.LABEL.1_6:	; if_else_bb57
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/mapdata_k_inv0_ldq_cmp.c", 80
	movhi HIGHW1(#_f4_x_add2_1d), r0, r2
	ld.w LOWW(#_f4_x_add2_1d)[r2], r2
	cmpf.s 0x00000007, r6, r2
	trfsr 0
	bz9 .BB.LABEL.1_9
.BB.LABEL.1_7:	; if_then_bb63
	movhi 0x00003F80, r0, r21
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/mapdata_k_inv0_ldq_cmp.c", 83
	addf.s r21, r6, r6
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/mapdata_k_inv0_ldq_cmp.c", 82
	movhi HIGHW1(#_f4_x_nom_1d), r0, r2
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/mapdata_k_inv0_ldq_cmp.c", 85
	mov r3, r22
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/mapdata_k_inv0_ldq_cmp.c", 83
	mov r22, r7
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/mapdata_k_inv0_ldq_cmp.c", 82
	st.w r6, LOWW(#_f4_x_nom_1d)[r2]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/mapdata_k_inv0_ldq_cmp.c", 83
	jarl _modff, r31
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/mapdata_k_inv0_ldq_cmp.c", 84
	ld.w 0x00000000[r3], r2
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/mapdata_k_inv0_ldq_cmp.c", 83
	movhi HIGHW1(#_f4_kw_x_temp_1d), r0, r23
	st.w r10, LOWW(#_f4_kw_x_temp_1d)[r23]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/mapdata_k_inv0_ldq_cmp.c", 84
	movhi HIGHW1(#_s4_x_id_1d), r0, r5
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/mapdata_k_inv0_ldq_cmp.c", 85
	movhi HIGHW1(#_f4_x_add2_1d), r0, r6
	ld.w LOWW(#_f4_x_add2_1d)[r6], r6
.BB.LABEL.1_8:	; if_then_bb63
	trncf.sw r2, r2
	mov r22, r7
	st.w r2, LOWW(#_s4_x_id_1d)[r5]
	jarl _modff, r31
	ld.w LOWW(#_f4_kw_x_temp_1d)[r23], r2
	movhi HIGHW1(#_f4_kw_x_add_1d), r0, r5
	st.w r10, LOWW(#_f4_kw_x_add_1d)[r5]
	subf.s r10, r21, r5
	movhi HIGHW1(#_f4_kw_x_1d), r0, r6
	subf.s r10, r2, r2
	divf.s r5, r2, r10
	st.w r10, LOWW(#_f4_kw_x_1d)[r6]
	br9 .BB.LABEL.1_14
.BB.LABEL.1_9:	; if_else_bb78
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/mapdata_k_inv0_ldq_cmp.c", 91
	movhi HIGHW1(#_f4_x_nom_1d), r0, r2
	st.w r6, LOWW(#_f4_x_nom_1d)[r2]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/mapdata_k_inv0_ldq_cmp.c", 94
	mov r3, r21
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/mapdata_k_inv0_ldq_cmp.c", 92
	mov r21, r7
	jarl _modff, r31
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/mapdata_k_inv0_ldq_cmp.c", 93
	ld.w 0x00000000[r3], r2
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/mapdata_k_inv0_ldq_cmp.c", 92
	movhi HIGHW1(#_f4_kw_x_temp_1d), r0, r22
	st.w r10, LOWW(#_f4_kw_x_temp_1d)[r22]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/mapdata_k_inv0_ldq_cmp.c", 93
	movhi HIGHW1(#_s4_x_id_1d), r0, r5
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/mapdata_k_inv0_ldq_cmp.c", 94
	movhi HIGHW1(#_f4_x_add2_1d), r0, r6
	ld.w LOWW(#_f4_x_add2_1d)[r6], r6
	br9 .BB.LABEL.1_13
.BB.LABEL.1_10:	; if_else_bb91
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/mapdata_k_inv0_ldq_cmp.c", 102
	movhi HIGHW1(#_f4_x_add1_1d), r0, r2
	ld.w LOWW(#_f4_x_add1_1d)[r2], r2
	cmpf.s 0x00000007, r6, r2
	trfsr 0
	bz9 .BB.LABEL.1_12
.BB.LABEL.1_11:	; if_then_bb97
	movhi 0x00003F80, r0, r21
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/mapdata_k_inv0_ldq_cmp.c", 105
	addf.s r21, r6, r6
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/mapdata_k_inv0_ldq_cmp.c", 104
	movhi HIGHW1(#_f4_x_nom_1d), r0, r2
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/mapdata_k_inv0_ldq_cmp.c", 107
	mov r3, r22
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/mapdata_k_inv0_ldq_cmp.c", 105
	mov r22, r7
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/mapdata_k_inv0_ldq_cmp.c", 104
	st.w r6, LOWW(#_f4_x_nom_1d)[r2]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/mapdata_k_inv0_ldq_cmp.c", 105
	jarl _modff, r31
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/mapdata_k_inv0_ldq_cmp.c", 106
	ld.w 0x00000000[r3], r2
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/mapdata_k_inv0_ldq_cmp.c", 105
	movhi HIGHW1(#_f4_kw_x_temp_1d), r0, r23
	st.w r10, LOWW(#_f4_kw_x_temp_1d)[r23]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/mapdata_k_inv0_ldq_cmp.c", 106
	movhi HIGHW1(#_s4_x_id_1d), r0, r5
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/mapdata_k_inv0_ldq_cmp.c", 107
	movhi HIGHW1(#_f4_x_add1_1d), r0, r6
	ld.w LOWW(#_f4_x_add1_1d)[r6], r6
	br9 .BB.LABEL.1_8
.BB.LABEL.1_12:	; if_else_bb112
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/mapdata_k_inv0_ldq_cmp.c", 113
	movhi HIGHW1(#_f4_x_nom_1d), r0, r2
	st.w r6, LOWW(#_f4_x_nom_1d)[r2]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/mapdata_k_inv0_ldq_cmp.c", 116
	mov r3, r21
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/mapdata_k_inv0_ldq_cmp.c", 114
	mov r21, r7
	jarl _modff, r31
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/mapdata_k_inv0_ldq_cmp.c", 115
	ld.w 0x00000000[r3], r2
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/mapdata_k_inv0_ldq_cmp.c", 114
	movhi HIGHW1(#_f4_kw_x_temp_1d), r0, r22
	st.w r10, LOWW(#_f4_kw_x_temp_1d)[r22]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/mapdata_k_inv0_ldq_cmp.c", 115
	movhi HIGHW1(#_s4_x_id_1d), r0, r5
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/mapdata_k_inv0_ldq_cmp.c", 116
	movhi HIGHW1(#_f4_x_add1_1d), r0, r6
	ld.w LOWW(#_f4_x_add1_1d)[r6], r6
.BB.LABEL.1_13:	; if_else_bb112
	trncf.sw r2, r2
	mov r21, r7
	st.w r2, LOWW(#_s4_x_id_1d)[r5]
	jarl _modff, r31
	ld.w LOWW(#_f4_kw_x_temp_1d)[r22], r2
	movhi HIGHW1(#_f4_kw_x_add_1d), r0, r5
	st.w r10, LOWW(#_f4_kw_x_add_1d)[r5]
	movhi HIGHW1(#_f4_kw_x_1d), r0, r5
	divf.s r10, r2, r10
	st.w r10, LOWW(#_f4_kw_x_1d)[r5]
.BB.LABEL.1_14:	; if_break_bb125
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/mapdata_k_inv0_ldq_cmp.c", 124
	movhi HIGHW1(#_s4_x_id_1d), r0, r2
	ld.w LOWW(#_s4_x_id_1d)[r2], r2
	mov 0x00000001, r5
	cmp 0x00000000, r2
	bn9 .BB.LABEL.1_16
.BB.LABEL.1_15:	; bb129
	cmp 0x0000000C, r2
	setf 0x0000000F, r5
.BB.LABEL.1_16:	; bb139
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/mapdata_k_inv0_ldq_cmp.c", 125
	cmp 0x00000000, r2
	cmov 0x00000004, 0x00000000, r10, r10
	cmov 0x00000004, r10, r2, r2
	bn9 .BB.LABEL.1_19
.BB.LABEL.1_17:	; if_else_bb155
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/mapdata_k_inv0_ldq_cmp.c", 131
	cmp 0x0000000B, r2
	ble9 .BB.LABEL.1_20
.BB.LABEL.1_18:	; if_else_bb155.if_break_bb167.PartialDrain_crit_edge
	mov 0x0000000C, r2
	movhi 0x00003F80, r0, r10
.BB.LABEL.1_19:	; if_break_bb167.PartialDrain
	movhi HIGHW1(#_s4_x_id_1d), r0, r6
	st.w r2, LOWW(#_s4_x_id_1d)[r6]
	movhi HIGHW1(#_f4_kw_x_1d), r0, r6
	st.w r10, LOWW(#_f4_kw_x_1d)[r6]
	ori 0x00000001, r5, r5
.BB.LABEL.1_20:	; if_break_bb167
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/mapdata_k_inv0_ldq_cmp.c", 158
	cvtf.sd r10, r12
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/mapdata_k_inv0_ldq_cmp.c", 152
	mov r2, r6
	mul 0x0000001A, r6, r0
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/mapdata_k_inv0_ldq_cmp.c", 147
	addi 0x00000001, r2, r7
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/mapdata_k_inv0_ldq_cmp.c", 148
	cmp 0x0000000D, r7
	mov 0x00000000, r14
	cmov 0x0000000E, 0x0000000C, r7, r7
	movhi HIGHW1(#_s4_x_id_p1_1d), r0, r8
	st.w r7, LOWW(#_s4_x_id_p1_1d)[r8]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/mapdata_k_inv0_ldq_cmp.c", 152
	movhi HIGHW1(#_c0_1d), r0, r11
	mov #_map_k_inv0_ldq_cmp, r9
	add r9, r6
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/mapdata_k_inv0_ldq_cmp.c", 156
	add r2, r2
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/mapdata_k_inv0_ldq_cmp.c", 152
	st.h r6, LOWW(#_c0_1d)[r11]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/mapdata_k_inv0_ldq_cmp.c", 157
	mov r7, r6
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/mapdata_k_inv0_ldq_cmp.c", 153
	mul 0x0000001A, r7, r0
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/mapdata_k_inv0_ldq_cmp.c", 157
	add r6, r6
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/mapdata_k_inv0_ldq_cmp.c", 156
	add r9, r2
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/mapdata_k_inv0_ldq_cmp.c", 157
	add r9, r6
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/mapdata_k_inv0_ldq_cmp.c", 156
	ld.h 0x00000000[r2], r2
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/mapdata_k_inv0_ldq_cmp.c", 157
	ld.h 0x00000000[r6], r6
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/mapdata_k_inv0_ldq_cmp.c", 153
	movhi HIGHW1(#_c1_1d), r0, r11
	movhi 0x00003FF0, r0, r15
	add r9, r7
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/mapdata_k_inv0_ldq_cmp.c", 158
	subf.d r12, r14, r12
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/mapdata_k_inv0_ldq_cmp.c", 156
	cvtf.ws r2, r2
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/mapdata_k_inv0_ldq_cmp.c", 153
	st.h r7, LOWW(#_c1_1d)[r11]
	mov 0xD2F1A9FC, r16
	mov 0x3F50624D, r17
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/mapdata_k_inv0_ldq_cmp.c", 156
	cvtf.sd r2, r18
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/mapdata_k_inv0_ldq_cmp.c", 162
	movea 0x0000001A, r9, r7
	movhi HIGHW1(#_s4_x_id_1d), r0, r9
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/mapdata_k_inv0_ldq_cmp.c", 156
	mulf.d r16, r18, r18
	cvtf.ds r18, r2
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/mapdata_k_inv0_ldq_cmp.c", 158
	cvtf.sd r2, r18
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/mapdata_k_inv0_ldq_cmp.c", 157
	cvtf.ws r6, r2
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/mapdata_k_inv0_ldq_cmp.c", 158
	mulf.d r18, r12, r12
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/mapdata_k_inv0_ldq_cmp.c", 157
	cvtf.sd r2, r18
	mulf.d r16, r18, r18
	cvtf.ds r18, r2
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/mapdata_k_inv0_ldq_cmp.c", 158
	mulf.s r2, r10, r2
	cvtf.sd r2, r10
	addf.d r10, r12, r10
	cvtf.ds r10, r2
	st.w r2, 0x00000000[r20]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/mapdata_k_inv0_ldq_cmp.c", 162
	ld.w LOWW(#_s4_x_id_1d)[r9], r2
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/mapdata_k_inv0_ldq_cmp.c", 163
	movhi HIGHW1(#_C1_1d), r0, r9
	ld.w LOWW(#_s4_x_id_p1_1d)[r8], r6
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/mapdata_k_inv0_ldq_cmp.c", 162
	movhi HIGHW1(#_C0_1d), r0, r8
	add r2, r2
	add r7, r2
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/mapdata_k_inv0_ldq_cmp.c", 163
	add r6, r6
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/mapdata_k_inv0_ldq_cmp.c", 162
	ld.h 0x00000000[r2], r2
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/mapdata_k_inv0_ldq_cmp.c", 163
	add r6, r7
	ld.h 0x00000000[r7], r6
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/mapdata_k_inv0_ldq_cmp.c", 164
	movhi HIGHW1(#_f4_kw_x_1d), r0, r7
	ld.w LOWW(#_f4_kw_x_1d)[r7], r7
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/mapdata_k_inv0_ldq_cmp.c", 162
	cvtf.ws r2, r2
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/mapdata_k_inv0_ldq_cmp.c", 163
	cvtf.ws r6, r6
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/mapdata_k_inv0_ldq_cmp.c", 162
	cvtf.sd r2, r10
	mulf.d r16, r10, r10
	cvtf.ds r10, r2
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/mapdata_k_inv0_ldq_cmp.c", 163
	cvtf.sd r6, r10
	mulf.d r16, r10, r10
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/mapdata_k_inv0_ldq_cmp.c", 162
	st.w r2, LOWW(#_C0_1d)[r8]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/mapdata_k_inv0_ldq_cmp.c", 163
	cvtf.ds r10, r6
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/mapdata_k_inv0_ldq_cmp.c", 164
	cvtf.sd r2, r10
	mulf.s r6, r7, r2
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/mapdata_k_inv0_ldq_cmp.c", 163
	st.w r6, LOWW(#_C1_1d)[r9]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/mapdata_k_inv0_ldq_cmp.c", 164
	cvtf.sd r7, r8
	cvtf.sd r2, r6
	subf.d r8, r14, r8
	mulf.d r10, r8, r8
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/mapdata_k_inv0_ldq_cmp.c", 176
	andi 0x000000FF, r5, r10
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/mapdata_k_inv0_ldq_cmp.c", 164
	addf.d r6, r8, r6
	cvtf.ds r6, r2
	st.w r2, 0x00000000[r20]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/mapdata_k_inv0_ldq_cmp.c", 176
	dispose 0x00000004, 0x00000079, [r31]
	.section .bss, bss
	.align 4
_f4_x_nom_1d:
	.ds (4)
	.align 4
_s4_x_id_1d:
	.ds (4)
	.align 4
_s4_x_id_p1_1d:
	.ds (4)
	.align 4
_f4_kw_x_1d:
	.ds (4)
	.align 4
_f4_x_add1_1d:
	.ds (4)
	.align 4
_f4_x_add1_int_1d:
	.ds (4)
	.align 4
_f4_x_add2_1d:
	.ds (4)
	.align 4
_f4_x_add2_int_1d:
	.ds (4)
	.align 4
_f4_x_nom_temp_1d:
	.ds (4)
	.align 4
_f4_kw_x_temp_1d:
	.ds (4)
	.align 4
_f4_kw_x_add_1d:
	.ds (4)
	.align 4
_C0_1d:
	.ds (4)
	.align 4
_C1_1d:
	.ds (4)
	.align 2
_c0_1d:
	.ds (2)
	.align 2
_c1_1d:
	.ds (2)
