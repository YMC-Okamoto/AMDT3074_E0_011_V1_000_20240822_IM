#CC-RH Compiler RH850 Assembler Source
#@	CC-RH Version : V1.03.00 [21 Aug 2015]
#@	Command : src\fi_1ms_libchk.c -Xobj_path=DefaultBuild -Xcommon=rh850 -Xcpu=g3m -c -g -Ospeed -Oinline_size -Isrc -I..\Common -D__CLK_HSB=80,__CLK_LSB=40,__CLKC_HSB=80,__CLK_CLSB=40 -Xasm_path=DefaultBuild
#@	compiled at Mon May 01 22:20:08 2017

	.file "src\fi_1ms_libchk.c"

	$reg_mode 32

	.public _u1_GB_CLR, 1
	.public _u1_TH_PN, 1
	.public _u1_SDWN1, 1
	.public _u1_SDWN2, 1
	.public _u1_RLY1, 1
	.public _u1_RLY2, 1
	.public _u1_RLY3, 1
	.public _u1_RLY4, 1
	.public _u1_RLY5, 1
	.public _u1_RLY6, 1
	.public _u1_RLY7, 1
	.public _u1_RLY8, 1
	.public _u1_DO0, 1
	.public _u1_DO1, 1
	.public _u1_DO2, 1
	.public _u1_DO3, 1
	.public _u1_DO4, 1
	.public _u1_DO5, 1
	.public _u1_DO6, 1
	.public _u1_UDO0, 1
	.public _u1_UDO1, 1
	.public _u1_UDO2, 1
	.public _u1_UDO3, 1
	.public _u1_INVC1, 1
	.public _u1_INVC2, 1
	.public _u1_GB_LATCH, 1
	.public _u1_EMG_IN, 1
	.public _u1_GB, 1
	.public _u1_UDI0, 1
	.public _u1_UDI1, 1
	.public _u1_UDI2, 1
	.public _u1_UDI3, 1
	.public _u1_DI0, 1
	.public _u1_DI1, 1
	.public _u1_DI2, 1
	.public _u1_DI3, 1
	.public _u1_DI4, 1
	.public _u1_DI5, 1
	.public _u1_DI6, 1
	.public _u1_DI7, 1
	.public _s2_ad000, 2
	.public _s2_ad001, 2
	.public _s2_ad002, 2
	.public _s2_ad003, 2
	.public _s2_ad010, 2
	.public _s2_ad011, 2
	.public _s2_ad012, 2
	.public _s2_ad013, 2
	.public _s2_ad020, 2
	.public _s2_ad021, 2
	.public _s2_ad022, 2
	.public _s2_ad023, 2
	.public _s2_ad030, 2
	.public _s2_ad031, 2
	.public _s2_ad032, 2
	.public _s2_ad033, 2
	.public _s2_ad100, 2
	.public _s2_ad101, 2
	.public _s2_ad102, 2
	.public _s2_ad110, 2
	.public _s2_ad111, 2
	.public _s2_ad112, 2
	.public _s2_ad120, 2
	.public _s2_ad121, 2
	.public _s2_ad122, 2
	.public _s2_ad130, 2
	.public _s2_ad131, 2
	.public _s2_ad132, 2
	.public _s2_ad140, 2
	.public _s2_ad141, 2
	.public _s2_ad142, 2
	.public _s2_ad150, 2
	.public _s2_ad151, 2
	.public _s2_ad152, 2
	.public _s2_ad160, 2
	.public _s2_ad161, 2
	.public _s2_ad162, 2
	.public _fi_1ms_libchk

	.section .text, text
_fi_1ms_libchk:
	.stack _fi_1ms_libchk = 0
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_libchk.c", 169
	movhi HIGHW1(#_u1_GB_CLR), r0, r2
	ld.b LOWW(#_u1_GB_CLR)[r2], r2
	movhi 0x00000010, r0, r5
	movhi 0x0000FFC1, r0, r7
	mov 0x00100010, r6
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_libchk.c", 170
	movhi HIGHW1(#_u1_TH_PN), r0, r8
	movhi 0x00000020, r0, r9
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_libchk.c", 169
	shl 0x00000004, r2
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_libchk.c", 171
	movhi HIGHW1(#_u1_SDWN1), r0, r10
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_libchk.c", 169
	or r5, r2
	movhi 0x00000040, r0, r11
	and r6, r2
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_libchk.c", 172
	movhi HIGHW1(#_u1_SDWN2), r0, r13
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_libchk.c", 169
	st.w r2, 0x00000004[r7]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_libchk.c", 174
	movhi HIGHW1(#_u1_RLY1), r0, r15
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_libchk.c", 170
	ld.b LOWW(#_u1_TH_PN)[r8], r2
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_libchk.c", 175
	movhi HIGHW1(#_u1_RLY2), r0, r16
	mov 0x00200020, r8
	mov 0x00400040, r12
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_libchk.c", 170
	shl 0x00000005, r2
	movhi 0x00000001, r0, r17
	or r9, r2
	mov 0x00800080, r14
	and r8, r2
	st.w r2, 0x00000004[r7]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_libchk.c", 171
	ld.b LOWW(#_u1_SDWN1)[r10], r2
	movhi 0x00000080, r0, r10
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_libchk.c", 177
	movhi HIGHW1(#_u1_RLY4), r0, r18
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_libchk.c", 171
	shl 0x00000006, r2
	or r11, r2
	mov 0x00010001, r11
	and r12, r2
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_libchk.c", 176
	movhi HIGHW1(#_u1_RLY3), r0, r12
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_libchk.c", 171
	st.w r2, 0x000000C4[r7]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_libchk.c", 172
	ld.b LOWW(#_u1_SDWN2)[r13], r2
	movhi 0x00000002, r0, r13
	shl 0x00000007, r2
	or r10, r2
	and r14, r2
	st.w r2, 0x000000C4[r7]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_libchk.c", 174
	ld.b LOWW(#_u1_RLY1)[r15], r2
	mov 0x00020002, r15
	shl 0x00000007, r2
	or r10, r2
	movhi 0x00000004, r0, r10
	and r14, r2
	mov 0x00040004, r14
	st.w r2, 0x00000084[r7]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_libchk.c", 175
	ld.b LOWW(#_u1_RLY2)[r16], r2
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_libchk.c", 178
	movhi HIGHW1(#_u1_RLY5), r0, r16
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_libchk.c", 175
	or r17, r2
	and r11, r2
	st.w r2, 0x00000084[r7]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_libchk.c", 176
	ld.b LOWW(#_u1_RLY3)[r12], r2
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_libchk.c", 179
	movhi HIGHW1(#_u1_RLY6), r0, r12
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_libchk.c", 176
	add r2, r2
	or r13, r2
	and r15, r2
	st.w r2, 0x00000084[r7]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_libchk.c", 177
	ld.b LOWW(#_u1_RLY4)[r18], r2
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_libchk.c", 180
	movhi HIGHW1(#_u1_RLY7), r0, r18
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_libchk.c", 177
	shl 0x00000002, r2
	or r10, r2
	and r14, r2
	st.w r2, 0x00000084[r7]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_libchk.c", 178
	ld.b LOWW(#_u1_RLY5)[r16], r2
	movhi 0x00000008, r0, r16
	shl 0x00000005, r2
	or r9, r2
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_libchk.c", 181
	movhi HIGHW1(#_u1_RLY8), r0, r9
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_libchk.c", 178
	and r8, r2
	mov 0x00080008, r8
	st.w r2, 0x000000C4[r7]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_libchk.c", 179
	ld.b LOWW(#_u1_RLY6)[r12], r2
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_libchk.c", 182
	movhi HIGHW1(#_u1_DO0), r0, r12
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_libchk.c", 179
	shl 0x00000002, r2
	or r10, r2
	and r14, r2
	st.w r2, 0x00000084[r7]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_libchk.c", 180
	ld.b LOWW(#_u1_RLY7)[r18], r2
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_libchk.c", 183
	movhi HIGHW1(#_u1_DO1), r0, r18
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_libchk.c", 180
	shl 0x00000003, r2
	or r16, r2
	and r8, r2
	st.w r2, 0x00000084[r7]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_libchk.c", 181
	ld.b LOWW(#_u1_RLY8)[r9], r2
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_libchk.c", 184
	movhi HIGHW1(#_u1_DO2), r0, r9
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_libchk.c", 181
	shl 0x00000004, r2
	or r5, r2
	and r6, r2
	st.w r2, 0x00000084[r7]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_libchk.c", 182
	ld.b LOWW(#_u1_DO0)[r12], r2
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_libchk.c", 185
	movhi HIGHW1(#_u1_DO3), r0, r12
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_libchk.c", 182
	or r17, r2
	and r11, r2
	st.w r2, 0x00000184[r7]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_libchk.c", 183
	ld.b LOWW(#_u1_DO1)[r18], r2
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_libchk.c", 186
	movhi HIGHW1(#_u1_DO4), r0, r18
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_libchk.c", 183
	add r2, r2
	or r13, r2
	and r15, r2
	st.w r2, 0x00000184[r7]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_libchk.c", 184
	ld.b LOWW(#_u1_DO2)[r9], r2
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_libchk.c", 187
	movhi HIGHW1(#_u1_DO5), r0, r9
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_libchk.c", 184
	shl 0x00000002, r2
	or r10, r2
	and r14, r2
	st.w r2, 0x00000184[r7]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_libchk.c", 185
	ld.b LOWW(#_u1_DO3)[r12], r2
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_libchk.c", 188
	movhi HIGHW1(#_u1_DO6), r0, r12
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_libchk.c", 185
	shl 0x00000003, r2
	or r16, r2
	and r8, r2
	st.w r2, 0x00000184[r7]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_libchk.c", 186
	ld.b LOWW(#_u1_DO4)[r18], r2
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_libchk.c", 190
	movhi HIGHW1(#_u1_UDO0), r0, r18
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_libchk.c", 186
	add r2, r2
	or r13, r2
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_libchk.c", 192
	movhi HIGHW1(#_u1_UDO2), r0, r13
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_libchk.c", 186
	and r15, r2
	st.w r2, 0x00000004[r7]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_libchk.c", 187
	ld.b LOWW(#_u1_DO5)[r9], r2
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_libchk.c", 191
	movhi HIGHW1(#_u1_UDO1), r0, r9
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_libchk.c", 187
	shl 0x00000002, r2
	or r10, r2
	movhi 0x00000200, r0, r10
	and r14, r2
	movhi 0x00004000, r0, r14
	st.w r2, 0x00000004[r7]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_libchk.c", 188
	ld.b LOWW(#_u1_DO6)[r12], r2
	mov 0x02000200, r12
	shl 0x00000003, r2
	or r16, r2
	and r8, r2
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_libchk.c", 193
	movhi HIGHW1(#_u1_UDO3), r0, r8
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_libchk.c", 188
	st.w r2, 0x00000004[r7]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_libchk.c", 190
	ld.b LOWW(#_u1_UDO0)[r18], r2
	shl 0x00000004, r2
	or r5, r2
	mov 0x40004000, r5
	and r6, r2
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_libchk.c", 199
	movhi HIGHW1(#_u1_INVC1), r0, r6
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_libchk.c", 190
	st.w r2, 0x00000144[r7]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_libchk.c", 191
	ld.b LOWW(#_u1_UDO1)[r9], r2
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_libchk.c", 200
	movhi HIGHW1(#_u1_INVC2), r0, r9
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_libchk.c", 191
	shl 0x00000009, r2
	or r10, r2
	and r12, r2
	st.w r2, 0x00000144[r7]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_libchk.c", 192
	ld.b LOWW(#_u1_UDO2)[r13], r2
	or r17, r2
	and r11, r2
	st.w r2, 0x00000044[r7]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_libchk.c", 193
	ld.b LOWW(#_u1_UDO3)[r8], r2
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_libchk.c", 201
	movhi HIGHW1(#_u1_GB_LATCH), r0, r8
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_libchk.c", 193
	shl 0x0000000E, r2
	or r14, r2
	and r5, r2
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_libchk.c", 202
	movhi HIGHW1(#_u1_EMG_IN), r0, r5
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_libchk.c", 193
	st.w r2, 0x00000044[r7]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_libchk.c", 199
	ld.hu 0x0000008C[r7], r2
	andi 0x00000001, r2, r2
	st.b r2, LOWW(#_u1_INVC1)[r6]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_libchk.c", 203
	movhi HIGHW1(#_u1_GB), r0, r6
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_libchk.c", 200
	ld.h 0x0000008C[r7], r2
	shr 0x00000001, r2
	andi 0x00000001, r2, r2
	st.b r2, LOWW(#_u1_INVC2)[r9]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_libchk.c", 204
	movhi HIGHW1(#_u1_UDI0), r0, r9
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_libchk.c", 201
	ld.h 0x0000008C[r7], r2
	shr 0x00000005, r2
	andi 0x00000001, r2, r2
	st.b r2, LOWW(#_u1_GB_LATCH)[r8]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_libchk.c", 205
	movhi HIGHW1(#_u1_UDI1), r0, r8
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_libchk.c", 202
	ld.h 0x0000008C[r7], r2
	shr 0x00000006, r2
	andi 0x00000001, r2, r2
	st.b r2, LOWW(#_u1_EMG_IN)[r5]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_libchk.c", 206
	movhi HIGHW1(#_u1_UDI2), r0, r5
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_libchk.c", 203
	ld.h 0x000000CC[r7], r2
	shr 0x00000003, r2
	andi 0x00000001, r2, r2
	st.b r2, LOWW(#_u1_GB)[r6]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_libchk.c", 207
	movhi HIGHW1(#_u1_UDI3), r0, r6
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_libchk.c", 204
	ld.h 0x0000014C[r7], r2
	shr 0x00000003, r2
	andi 0x00000001, r2, r2
	st.b r2, LOWW(#_u1_UDI0)[r9]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_libchk.c", 208
	movhi HIGHW1(#_u1_DI0), r0, r9
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_libchk.c", 205
	ld.h 0x0000014C[r7], r2
	shr 0x00000008, r2
	andi 0x00000001, r2, r2
	st.b r2, LOWW(#_u1_UDI1)[r8]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_libchk.c", 209
	movhi HIGHW1(#_u1_DI1), r0, r8
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_libchk.c", 206
	ld.h 0x0000000C[r7], r2
	shr 0x0000000C, r2
	andi 0x00000001, r2, r2
	st.b r2, LOWW(#_u1_UDI2)[r5]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_libchk.c", 210
	movhi HIGHW1(#_u1_DI2), r0, r5
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_libchk.c", 207
	ld.h 0x0000000C[r7], r2
	shr 0x0000000E, r2
	andi 0x00000001, r2, r2
	st.b r2, LOWW(#_u1_UDI3)[r6]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_libchk.c", 211
	movhi HIGHW1(#_u1_DI3), r0, r6
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_libchk.c", 208
	ld.h 0x0000018C[r7], r2
	shr 0x00000004, r2
	andi 0x00000001, r2, r2
	st.b r2, LOWW(#_u1_DI0)[r9]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_libchk.c", 212
	movhi HIGHW1(#_u1_DI4), r0, r9
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_libchk.c", 209
	ld.h 0x0000018C[r7], r2
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_libchk.c", 222
	movhi 0x0000FFF2, r0, r10
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_libchk.c", 209
	shr 0x00000005, r2
	andi 0x00000001, r2, r2
	st.b r2, LOWW(#_u1_DI1)[r8]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_libchk.c", 213
	movhi HIGHW1(#_u1_DI5), r0, r8
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_libchk.c", 210
	ld.h 0x0000018C[r7], r2
	shr 0x00000006, r2
	andi 0x00000001, r2, r2
	st.b r2, LOWW(#_u1_DI2)[r5]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_libchk.c", 214
	movhi HIGHW1(#_u1_DI6), r0, r5
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_libchk.c", 211
	ld.hu 0x0000018C[r7], r2
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_libchk.c", 224
	movhi HIGHW1(#_s2_ad002), r0, r11
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_libchk.c", 211
	andi 0x00000080, r2, r2
	shr 0x00000007, r2
	st.b r2, LOWW(#_u1_DI3)[r6]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_libchk.c", 215
	movhi HIGHW1(#_u1_DI7), r0, r6
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_libchk.c", 212
	ld.hu 0x000001CC[r7], r2
	andi 0x00000001, r2, r2
	st.b r2, LOWW(#_u1_DI4)[r9]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_libchk.c", 222
	movhi HIGHW1(#_s2_ad000), r0, r9
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_libchk.c", 213
	ld.h 0x000001CC[r7], r2
	shr 0x00000001, r2
	andi 0x00000001, r2, r2
	st.b r2, LOWW(#_u1_DI5)[r8]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_libchk.c", 223
	movhi HIGHW1(#_s2_ad001), r0, r8
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_libchk.c", 214
	ld.h 0x000001CC[r7], r2
	shr 0x00000002, r2
	andi 0x00000001, r2, r2
	st.b r2, LOWW(#_u1_DI6)[r5]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_libchk.c", 225
	movhi HIGHW1(#_s2_ad003), r0, r5
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_libchk.c", 215
	ld.hu 0x0000014C[r7], r2
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_libchk.c", 227
	movhi HIGHW1(#_s2_ad011), r0, r7
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_libchk.c", 215
	andi 0x00000080, r2, r2
	shr 0x00000007, r2
	st.b r2, LOWW(#_u1_DI7)[r6]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_libchk.c", 226
	movhi HIGHW1(#_s2_ad010), r0, r6
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_libchk.c", 222
	ld.w 0x00000218[r10], r2
	andi 0x00000FFF, r2, r2
	st.h r2, LOWW(#_s2_ad000)[r9]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_libchk.c", 229
	movhi HIGHW1(#_s2_ad013), r0, r9
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_libchk.c", 223
	ld.w 0x00000220[r10], r2
	andi 0x00000FFF, r2, r2
	st.h r2, LOWW(#_s2_ad001)[r8]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_libchk.c", 228
	movhi HIGHW1(#_s2_ad012), r0, r8
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_libchk.c", 224
	ld.w 0x00000224[r10], r2
	andi 0x00000FFF, r2, r2
	st.h r2, LOWW(#_s2_ad002)[r11]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_libchk.c", 225
	ld.w 0x0000021C[r10], r2
	andi 0x00000FFF, r2, r2
	st.h r2, LOWW(#_s2_ad003)[r5]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_libchk.c", 230
	movhi HIGHW1(#_s2_ad030), r0, r5
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_libchk.c", 226
	ld.w 0x00000228[r10], r2
	andi 0x00000FFF, r2, r2
	st.h r2, LOWW(#_s2_ad010)[r6]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_libchk.c", 231
	movhi HIGHW1(#_s2_ad031), r0, r6
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_libchk.c", 227
	ld.w 0x0000022C[r10], r2
	andi 0x00000FFF, r2, r2
	st.h r2, LOWW(#_s2_ad011)[r7]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_libchk.c", 232
	movhi HIGHW1(#_s2_ad032), r0, r7
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_libchk.c", 228
	ld.w 0x00000230[r10], r2
	andi 0x00000FFF, r2, r2
	st.h r2, LOWW(#_s2_ad012)[r8]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_libchk.c", 233
	movhi HIGHW1(#_s2_ad033), r0, r8
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_libchk.c", 229
	ld.w 0x00000234[r10], r2
	andi 0x00000FFF, r2, r2
	st.h r2, LOWW(#_s2_ad013)[r9]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_libchk.c", 234
	movhi HIGHW1(#_s2_ad020), r0, r9
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_libchk.c", 230
	ld.w 0x00000200[r10], r2
	andi 0x00000FFF, r2, r2
	st.h r2, LOWW(#_s2_ad030)[r5]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_libchk.c", 235
	movhi HIGHW1(#_s2_ad021), r0, r5
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_libchk.c", 231
	ld.w 0x00000204[r10], r2
	andi 0x00000FFF, r2, r2
	st.h r2, LOWW(#_s2_ad031)[r6]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_libchk.c", 236
	movhi HIGHW1(#_s2_ad022), r0, r6
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_libchk.c", 232
	ld.w 0x00000208[r10], r2
	andi 0x00000FFF, r2, r2
	st.h r2, LOWW(#_s2_ad032)[r7]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_libchk.c", 237
	movhi HIGHW1(#_s2_ad023), r0, r7
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_libchk.c", 233
	ld.w 0x0000020C[r10], r2
	andi 0x00000FFF, r2, r2
	st.h r2, LOWW(#_s2_ad033)[r8]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_libchk.c", 240
	movhi HIGHW1(#_s2_ad100), r0, r8
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_libchk.c", 234
	ld.w 0x00000238[r10], r2
	andi 0x00000FFF, r2, r2
	st.h r2, LOWW(#_s2_ad020)[r9]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_libchk.c", 241
	movhi HIGHW1(#_s2_ad101), r0, r9
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_libchk.c", 235
	ld.w 0x0000023C[r10], r2
	andi 0x00000FFF, r2, r2
	st.h r2, LOWW(#_s2_ad021)[r5]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_libchk.c", 242
	movhi HIGHW1(#_s2_ad102), r0, r5
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_libchk.c", 236
	ld.w 0x00000210[r10], r2
	andi 0x00000FFF, r2, r2
	st.h r2, LOWW(#_s2_ad022)[r6]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_libchk.c", 243
	movhi HIGHW1(#_s2_ad110), r0, r6
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_libchk.c", 237
	ld.w 0x00000214[r10], r2
	andi 0x00000FFF, r2, r2
	st.h r2, LOWW(#_s2_ad023)[r7]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_libchk.c", 244
	movhi HIGHW1(#_s2_ad111), r0, r7
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_libchk.c", 240
	ld.w 0x00001218[r10], r2
	andi 0x00000FFF, r2, r2
	st.h r2, LOWW(#_s2_ad100)[r8]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_libchk.c", 245
	movhi HIGHW1(#_s2_ad112), r0, r8
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_libchk.c", 241
	ld.w 0x0000121C[r10], r2
	andi 0x00000FFF, r2, r2
	st.h r2, LOWW(#_s2_ad101)[r9]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_libchk.c", 246
	movhi HIGHW1(#_s2_ad120), r0, r9
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_libchk.c", 242
	ld.w 0x00001220[r10], r2
	andi 0x00000FFF, r2, r2
	st.h r2, LOWW(#_s2_ad102)[r5]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_libchk.c", 247
	movhi HIGHW1(#_s2_ad121), r0, r5
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_libchk.c", 243
	ld.w 0x00001224[r10], r2
	andi 0x00000FFF, r2, r2
	st.h r2, LOWW(#_s2_ad110)[r6]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_libchk.c", 248
	movhi HIGHW1(#_s2_ad122), r0, r6
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_libchk.c", 244
	ld.w 0x00001228[r10], r2
	andi 0x00000FFF, r2, r2
	st.h r2, LOWW(#_s2_ad111)[r7]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_libchk.c", 249
	movhi HIGHW1(#_s2_ad130), r0, r7
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_libchk.c", 245
	ld.w 0x0000122C[r10], r2
	andi 0x00000FFF, r2, r2
	st.h r2, LOWW(#_s2_ad112)[r8]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_libchk.c", 250
	movhi HIGHW1(#_s2_ad131), r0, r8
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_libchk.c", 246
	ld.w 0x00001230[r10], r2
	andi 0x00000FFF, r2, r2
	st.h r2, LOWW(#_s2_ad120)[r9]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_libchk.c", 251
	movhi HIGHW1(#_s2_ad132), r0, r9
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_libchk.c", 247
	ld.w 0x00001234[r10], r2
	andi 0x00000FFF, r2, r2
	st.h r2, LOWW(#_s2_ad121)[r5]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_libchk.c", 252
	movhi HIGHW1(#_s2_ad140), r0, r5
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_libchk.c", 248
	ld.w 0x00001238[r10], r2
	andi 0x00000FFF, r2, r2
	st.h r2, LOWW(#_s2_ad122)[r6]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_libchk.c", 253
	movhi HIGHW1(#_s2_ad141), r0, r6
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_libchk.c", 249
	ld.w 0x00001200[r10], r2
	andi 0x00000FFF, r2, r2
	st.h r2, LOWW(#_s2_ad130)[r7]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_libchk.c", 254
	movhi HIGHW1(#_s2_ad142), r0, r7
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_libchk.c", 250
	ld.w 0x00001204[r10], r2
	andi 0x00000FFF, r2, r2
	st.h r2, LOWW(#_s2_ad131)[r8]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_libchk.c", 255
	movhi HIGHW1(#_s2_ad150), r0, r8
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_libchk.c", 251
	ld.w 0x00001208[r10], r2
	andi 0x00000FFF, r2, r2
	st.h r2, LOWW(#_s2_ad132)[r9]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_libchk.c", 256
	movhi HIGHW1(#_s2_ad151), r0, r9
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_libchk.c", 252
	ld.w 0x0000120C[r10], r2
	andi 0x00000FFF, r2, r2
	st.h r2, LOWW(#_s2_ad140)[r5]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_libchk.c", 257
	movhi HIGHW1(#_s2_ad152), r0, r5
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_libchk.c", 253
	ld.w 0x00001210[r10], r2
	andi 0x00000FFF, r2, r2
	st.h r2, LOWW(#_s2_ad141)[r6]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_libchk.c", 258
	movhi HIGHW1(#_s2_ad160), r0, r6
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_libchk.c", 254
	ld.w 0x00001214[r10], r2
	andi 0x00000FFF, r2, r2
	st.h r2, LOWW(#_s2_ad142)[r7]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_libchk.c", 259
	movhi HIGHW1(#_s2_ad161), r0, r7
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_libchk.c", 255
	ld.w 0x0000123C[r10], r2
	andi 0x00000FFF, r2, r2
	st.h r2, LOWW(#_s2_ad150)[r8]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_libchk.c", 260
	movhi HIGHW1(#_s2_ad162), r0, r8
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_libchk.c", 256
	ld.w 0x00001240[r10], r2
	andi 0x00000FFF, r2, r2
	st.h r2, LOWW(#_s2_ad151)[r9]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_libchk.c", 257
	ld.w 0x00001244[r10], r2
	andi 0x00000FFF, r2, r2
	st.h r2, LOWW(#_s2_ad152)[r5]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_libchk.c", 258
	ld.w 0x00001248[r10], r2
	andi 0x00000FFF, r2, r2
	st.h r2, LOWW(#_s2_ad160)[r6]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_libchk.c", 259
	ld.w 0x0000124C[r10], r2
	andi 0x00000FFF, r2, r2
	st.h r2, LOWW(#_s2_ad161)[r7]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_libchk.c", 260
	ld.w 0x00001250[r10], r2
	andi 0x00000FFF, r2, r2
	st.h r2, LOWW(#_s2_ad162)[r8]
	.line "C:/Users/哲哉/Documents/プロジェクト/AMDT0529_トヨタテクニカルディベロプメント様向け水冷汎用インバータ製作/E_ソフト/C1Hコントローラ基板/20170502/PE2/src/fi_1ms_libchk.c", 267
	di
	jmp [r31]
	.section .bss, bss
_u1_GB_CLR:
	.ds (1)
_u1_TH_PN:
	.ds (1)
_u1_SDWN1:
	.ds (1)
_u1_SDWN2:
	.ds (1)
_u1_RLY1:
	.ds (1)
_u1_RLY2:
	.ds (1)
_u1_RLY3:
	.ds (1)
_u1_RLY4:
	.ds (1)
_u1_RLY5:
	.ds (1)
_u1_RLY6:
	.ds (1)
_u1_RLY7:
	.ds (1)
_u1_RLY8:
	.ds (1)
_u1_DO0:
	.ds (1)
_u1_DO1:
	.ds (1)
_u1_DO2:
	.ds (1)
_u1_DO3:
	.ds (1)
_u1_DO4:
	.ds (1)
_u1_DO5:
	.ds (1)
_u1_DO6:
	.ds (1)
_u1_UDO0:
	.ds (1)
_u1_UDO1:
	.ds (1)
_u1_UDO2:
	.ds (1)
_u1_UDO3:
	.ds (1)
_u1_INVC1:
	.ds (1)
_u1_INVC2:
	.ds (1)
_u1_GB_LATCH:
	.ds (1)
_u1_EMG_IN:
	.ds (1)
_u1_GB:
	.ds (1)
_u1_UDI0:
	.ds (1)
_u1_UDI1:
	.ds (1)
_u1_UDI2:
	.ds (1)
_u1_UDI3:
	.ds (1)
_u1_DI0:
	.ds (1)
_u1_DI1:
	.ds (1)
_u1_DI2:
	.ds (1)
_u1_DI3:
	.ds (1)
_u1_DI4:
	.ds (1)
_u1_DI5:
	.ds (1)
_u1_DI6:
	.ds (1)
_u1_DI7:
	.ds (1)
	.align 2
_s2_ad000:
	.ds (2)
	.align 2
_s2_ad001:
	.ds (2)
	.align 2
_s2_ad002:
	.ds (2)
	.align 2
_s2_ad003:
	.ds (2)
	.align 2
_s2_ad010:
	.ds (2)
	.align 2
_s2_ad011:
	.ds (2)
	.align 2
_s2_ad012:
	.ds (2)
	.align 2
_s2_ad013:
	.ds (2)
	.align 2
_s2_ad020:
	.ds (2)
	.align 2
_s2_ad021:
	.ds (2)
	.align 2
_s2_ad022:
	.ds (2)
	.align 2
_s2_ad023:
	.ds (2)
	.align 2
_s2_ad030:
	.ds (2)
	.align 2
_s2_ad031:
	.ds (2)
	.align 2
_s2_ad032:
	.ds (2)
	.align 2
_s2_ad033:
	.ds (2)
	.align 2
_s2_ad100:
	.ds (2)
	.align 2
_s2_ad101:
	.ds (2)
	.align 2
_s2_ad102:
	.ds (2)
	.align 2
_s2_ad110:
	.ds (2)
	.align 2
_s2_ad111:
	.ds (2)
	.align 2
_s2_ad112:
	.ds (2)
	.align 2
_s2_ad120:
	.ds (2)
	.align 2
_s2_ad121:
	.ds (2)
	.align 2
_s2_ad122:
	.ds (2)
	.align 2
_s2_ad130:
	.ds (2)
	.align 2
_s2_ad131:
	.ds (2)
	.align 2
_s2_ad132:
	.ds (2)
	.align 2
_s2_ad140:
	.ds (2)
	.align 2
_s2_ad141:
	.ds (2)
	.align 2
_s2_ad142:
	.ds (2)
	.align 2
_s2_ad150:
	.ds (2)
	.align 2
_s2_ad151:
	.ds (2)
	.align 2
_s2_ad152:
	.ds (2)
	.align 2
_s2_ad160:
	.ds (2)
	.align 2
_s2_ad161:
	.ds (2)
	.align 2
_s2_ad162:
	.ds (2)
