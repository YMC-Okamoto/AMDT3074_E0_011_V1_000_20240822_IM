/*==============================================================*/
/*               ヘッダファイルのインクルード                   */
/*==============================================================*/
#include	"iolib/io_FCANlib.h"
/*==============================================================*/

/*==============================================================*/
/*               CAN用コンパイルオプション定義                  */
/*==============================================================*/
#define		CAN_CH		(0)
/*==============================================================*/

/*==============================================================*/
/*           データフレーム構造体＆共用体定義                   */
/*==============================================================*/

/*==============================================================*/
/*          受信　ID 0x010用定義                                */
/*==============================================================*/
typedef struct STRUCT_CRX0x010
{
	unsigned char		u1_0x010_rx_0;
	unsigned char		u1_0x010_rx_1;
	unsigned char		u1_0x010_rx_2;
	unsigned char		u1_0x010_rx_3;
	unsigned char		u1_0x010_rx_4;
	unsigned char		u1_0x010_rx_5;
	unsigned char		u1_0x010_rx_6;
	unsigned char		u1_0x010_rx_7;
}ST_CRX0x010;

typedef union UNION_CRX0x010
{
	float				f4b[2];	/* floatアクセス */
	unsigned long		u4b[2];	/* 32bitアクセス */
	unsigned short		u2b[4];	/* 16bitアクセス */
	unsigned char		u1b[8];	/* 8bitアクセス */
	ST_CRX0x010			val;
}UN_CRX0x010;
/*==============================================================*/

/*==============================================================*/
/*          受信　ID 0x011用定義                                */
/*==============================================================*/
typedef struct STRUCT_CRX0x011
{
	unsigned char		u1_0x011_rx_0;
	unsigned char		u1_0x011_rx_1;
	unsigned char		u1_0x011_rx_2;
	unsigned char		u1_0x011_rx_3;
	unsigned char		u1_0x011_rx_4;
	unsigned char		u1_0x011_rx_5;
	unsigned char		u1_0x011_rx_6;
	unsigned char		u1_0x011_rx_7;
}ST_CRX0x011;

typedef union UNION_CRX0x011
{
	float				f4b[2];	/* floatアクセス */
	unsigned long		u4b[2];	/* 32bitアクセス */
	unsigned short		u2b[4];	/* 16bitアクセス */
	unsigned char		u1b[8];	/* 8bitアクセス */
	ST_CRX0x011			val;
}UN_CRX0x011;
/*==============================================================*/

/*==============================================================*/
/*          送信　ID 0x030用定義                                */
/*==============================================================*/
typedef struct STRUCT_CTX0x030
{
	unsigned char		u1_0x030_tx_0;
	unsigned char		u1_0x030_tx_1;
	unsigned char		u1_0x030_tx_2;
	unsigned char		u1_0x030_tx_3;
	unsigned char		u1_0x030_tx_4;
	unsigned char		u1_0x030_tx_5;
	unsigned char		u1_0x030_tx_6;
	unsigned char		u1_0x030_tx_7;
}ST_CTX0x030;

typedef union UNION_CTX0x030
{
	float				f4b[2];	/* floatアクセス */
	unsigned long		u4b[2];	/* 32bitアクセス */
	unsigned short		u2b[4];	/* 16bitアクセス */
	unsigned char		u1b[8];	/* 8bitアクセス */
	ST_CTX0x030			val;
}UN_CTX0x030;
/*==============================================================*/

/*==============================================================*/
/*          送信　ID 0x031用定義                                */
/*==============================================================*/
typedef struct STRUCT_CTX0x031
{
	unsigned char		u1_0x031_tx_0;
	unsigned char		u1_0x031_tx_1;
	unsigned char		u1_0x031_tx_2;
	unsigned char		u1_0x031_tx_3;
	unsigned char		u1_0x031_tx_4;
	unsigned char		u1_0x031_tx_5;
	unsigned char		u1_0x031_tx_6;
	unsigned char		u1_0x031_tx_7;
}ST_CTX0x031;

typedef union UNION_CTX0x031
{
	float				f4b[2];	/* floatアクセス */
	unsigned long		u4b[2];	/* 32bitアクセス */
	unsigned short		u2b[4];	/* 16bitアクセス */
	unsigned char		u1b[8];	/* 8bitアクセス */
	ST_CTX0x031			val;
}UN_CTX0x031;
/*==============================================================*/

/*==============================================================*/
/*          送信　ID 0x032用定義                                */
/*==============================================================*/
typedef struct STRUCT_CTX0x032
{
	unsigned char		u1_0x032_tx_0;
	unsigned char		u1_0x032_tx_1;
	unsigned char		u1_0x032_tx_2;
	unsigned char		u1_0x032_tx_3;
	unsigned char		u1_0x032_tx_4;
	unsigned char		u1_0x032_tx_5;
	unsigned char		u1_0x032_tx_6;
	unsigned char		u1_0x032_tx_7;
}ST_CTX0x032;

typedef union UNION_CTX0x032
{
	float				f4b[2];	/* floatアクセス */
	unsigned long		u4b[2];	/* 32bitアクセス */
	unsigned short		u2b[4];	/* 16bitアクセス */
	unsigned char		u1b[8];	/* 8bitアクセス */
	ST_CTX0x032			val;
}UN_CTX0x032;
/*==============================================================*/

/*==============================================================*/
/*          送信　ID 0x033用定義                                */
/*==============================================================*/
typedef struct STRUCT_CTX0x033
{
	unsigned char		u1_0x033_tx_0;
	unsigned char		u1_0x033_tx_1;
	unsigned char		u1_0x033_tx_2;
	unsigned char		u1_0x033_tx_3;
	unsigned char		u1_0x033_tx_4;
	unsigned char		u1_0x033_tx_5;
	unsigned char		u1_0x033_tx_6;
	unsigned char		u1_0x033_tx_7;
}ST_CTX0x033;

typedef union UNION_CTX0x033
{
	float				f4b[2];	/* floatアクセス */
	unsigned long		u4b[2];	/* 32bitアクセス */
	unsigned short		u2b[4];	/* 16bitアクセス */
	unsigned char		u1b[8];	/* 8bitアクセス */
	ST_CTX0x033			val;
}UN_CTX0x033;
/*==============================================================*/

/*==============================================================*/
/*          送信　ID 0x034用定義                                */
/*==============================================================*/
typedef struct STRUCT_CTX0x034
{
	unsigned char		u1_0x034_tx_0;
	unsigned char		u1_0x034_tx_1;
	unsigned char		u1_0x034_tx_2;
	unsigned char		u1_0x034_tx_3;
	unsigned char		u1_0x034_tx_4;
	unsigned char		u1_0x034_tx_5;
	unsigned char		u1_0x034_tx_6;
	unsigned char		u1_0x034_tx_7;
}ST_CTX0x034;

typedef union UNION_CTX0x034
{
	float				f4b[2];	/* floatアクセス */
	unsigned long		u4b[2];	/* 32bitアクセス */
	unsigned short		u2b[4];	/* 16bitアクセス */
	unsigned char		u1b[8];	/* 8bitアクセス */
	ST_CTX0x034			val;
}UN_CTX0x034;
/*==============================================================*/

/*==============================================================*/
/*          送信　ID 0x035用定義                                */
/*==============================================================*/
typedef struct STRUCT_CTX0x035
{
	unsigned char		u1_0x035_tx_0;
	unsigned char		u1_0x035_tx_1;
	unsigned char		u1_0x035_tx_2;
	unsigned char		u1_0x035_tx_3;
	unsigned char		u1_0x035_tx_4;
	unsigned char		u1_0x035_tx_5;
	unsigned char		u1_0x035_tx_6;
	unsigned char		u1_0x035_tx_7;
}ST_CTX0x035;

typedef union UNION_CTX0x035
{
	float				f4b[2];	/* floatアクセス */
	unsigned long		u4b[2];	/* 32bitアクセス */
	unsigned short		u2b[4];	/* 16bitアクセス */
	unsigned char		u1b[8];	/* 8bitアクセス */
	ST_CTX0x035			val;
}UN_CTX0x035;
/*==============================================================*/

/*==============================================================*/
/*          送信　ID 0x036用定義                                */
/*==============================================================*/
typedef struct STRUCT_CTX0x036
{
	unsigned char		u1_0x036_tx_0;
	unsigned char		u1_0x036_tx_1;
	unsigned char		u1_0x036_tx_2;
	unsigned char		u1_0x036_tx_3;
	unsigned char		u1_0x036_tx_4;
	unsigned char		u1_0x036_tx_5;
	unsigned char		u1_0x036_tx_6;
	unsigned char		u1_0x036_tx_7;
}ST_CTX0x036;

typedef union UNION_CTX0x036
{
	float				f4b[2];	/* floatアクセス */
	unsigned long		u4b[2];	/* 32bitアクセス */
	unsigned short		u2b[4];	/* 16bitアクセス */
	unsigned char		u1b[8];	/* 8bitアクセス */
	ST_CTX0x036			val;
}UN_CTX0x036;
/*==============================================================*/

/*==============================================================*/
/*          送信　ID 0x037用定義                                */
/*==============================================================*/
typedef struct STRUCT_CTX0x037
{
	unsigned char		u1_0x037_tx_0;
	unsigned char		u1_0x037_tx_1;
	unsigned char		u1_0x037_tx_2;
	unsigned char		u1_0x037_tx_3;
	unsigned char		u1_0x037_tx_4;
	unsigned char		u1_0x037_tx_5;
	unsigned char		u1_0x037_tx_6;
	unsigned char		u1_0x037_tx_7;
}ST_CTX0x037;

typedef union UNION_CTX0x037
{
	float				f4b[2];	/* floatアクセス */
	unsigned long		u4b[2];	/* 32bitアクセス */
	unsigned short		u2b[4];	/* 16bitアクセス */
	unsigned char		u1b[8];	/* 8bitアクセス */
	ST_CTX0x037			val;
}UN_CTX0x037;
/*==============================================================*/

/*==============================================================*/
/*          送信　ID 0x038用定義                                */
/*==============================================================*/
typedef struct STRUCT_CTX0x038
{
	unsigned char		u1_0x038_tx_0;
	unsigned char		u1_0x038_tx_1;
	unsigned char		u1_0x038_tx_2;
	unsigned char		u1_0x038_tx_3;
	unsigned char		u1_0x038_tx_4;
	unsigned char		u1_0x038_tx_5;
	unsigned char		u1_0x038_tx_6;
	unsigned char		u1_0x038_tx_7;
}ST_CTX0x038;

typedef union UNION_CTX0x038
{
	float				f4b[2];	/* floatアクセス */
	unsigned long		u4b[2];	/* 32bitアクセス */
	unsigned short		u2b[4];	/* 16bitアクセス */
	unsigned char		u1b[8];	/* 8bitアクセス */
	ST_CTX0x038			val;
}UN_CTX0x038;
/*==============================================================*/
/*            version:        1.010                             */

