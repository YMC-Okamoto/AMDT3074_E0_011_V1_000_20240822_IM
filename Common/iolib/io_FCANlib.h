#ifndef _CAN_LIB_H
#define _CAN_LIB_H

/*=============================================================*/
/* 					インクルードファイル					   */
/*=============================================================*/
#include	<iodefine.h>
/*=============================================================*/

/*=============================================================*/
/* 					構造体/共用体の定義						   */
/*=============================================================*/
typedef union  
{
	volatile unsigned char	data[8];				/* 送受信バッファ	*/
	volatile unsigned long	u4_data[2];	
} union_data ;


typedef struct {
	volatile unsigned char	mb	;					/* メールBOX NO		*/
	volatile unsigned char	extended;				/* 拡張ID			*/
	volatile unsigned char	dlc;					/* DLC				*/
	volatile unsigned char	length;					/* データ数			*/
	volatile unsigned long	id;						/* ID				*/
	
	union_data union_data ;	
} CAN_ST_MBOX;

typedef	CAN_ST_MBOX	can_st_mbox;

typedef struct {
	volatile unsigned long	u4_brp_prs;				/* プリスケーラ		*/
	volatile unsigned long	u4_tseg1;				/* TESG1			*/
	volatile unsigned long	u4_tseg2;				/* TESG2			*/
	volatile unsigned char	u4_sjw;					/*　SJW				*/
} CAN_ST_CONFIG;

typedef	CAN_ST_CONFIG	can_st_chconf;

/*=============================================================*/



#endif