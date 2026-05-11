/*=============================================================*/
/* 				 ヘッダファイルのインクルード				   */
/*=============================================================*/
#include	"iolib/io_FCANlib.h"
/*=============================================================*/

/*!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!*/
/*                               			CAN用コンパイルオプション定義							   	        */
/*!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!*/
#define	CAN_CH					(1)
/*!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!*/

/*!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!*/
/*                               	CAN受信データエラー定数定義											    */
/*!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!*/
#define		CAN1_WARING_BUSOFF_EPASSIVE		((u4)(0x00000001))								/*エラーパッシブorBUSOFF		*/
#define		CAN1_NOT_ARRIVE					((u4)(0x00000002))								/*受信後、定期受信がない場合	*/


/*==============================================================*/
/* 			データフレーム構造体＆共用体定義					*/
/*==============================================================*/

/*==============================================================*/
/*			受信　ID 0x010用定義								*/
/*==============================================================*/
typedef	struct STRUCT_CRX0x010
{
	unsigned char		u1_0x010_0;
	unsigned char		u1_0x010_1;
	signed short		s2_0x010_23;
	signed short		s2_0x010_45;
	signed short		s2_0x010_67;

}ST_CRX0x010;

typedef	union UNION_CRX0x010
{
	float				f4b[2];							/* floatアクセス				*/
	unsigned long		u4b[2];							/* 32Bitアクセス				*/
	unsigned short		u2b[4];
	unsigned char		u1b[8];							/* 8Bitアクセス					*/
	ST_CRX0x010			val;
}UN_CRX0x010;
/*==============================================================*/

/*==============================================================*/
/*			受信　ID 0x011用定義								*/
/*==============================================================*/
typedef	struct STRUCT_CRX0x011
{
	signed short		s2_0x011_01;
	unsigned short		u2_0x011_23;
	unsigned short		u2_0x011_45;
	unsigned short		u2_0x011_67;

}ST_CRX0x011;

typedef	union UNION_CRX0x011
{
	float				f4b[2];							/* floatアクセス				*/
	unsigned long		u4b[2];							/* 32Bitアクセス				*/
	unsigned short		u2b[4];
	unsigned char		u1b[8];							/* 8Bitアクセス					*/
	ST_CRX0x011			val;
}UN_CRX0x011;
/*==============================================================*/

/*==============================================================*/
/*			送信　ID 0x020用定義								*/
/*==============================================================*/
typedef	struct STRUCT_CTX0x020
{
	unsigned char		u1_0x020_0;
	unsigned char		u1_0x020_1;
	signed short		s2_0x020_23;
	unsigned short		u2_0x020_45;
	signed short		s2_0x020_67;


	
}ST_CTX0x020;

typedef	union UNION_CTX0x020
{
	float				f4b[2];							/* floatアクセス				*/
	unsigned long		u4b[2];							/* 32Bitアクセス				*/
	unsigned short		u2b[4];
	unsigned char		u1b[8];							/* 8Bitアクセス					*/
	ST_CTX0x020	val;
}UN_CTX0x020;
/*=============================================================*/

/*==============================================================*/
/*			送信　ID 0x021用定義								*/
/*==============================================================*/
typedef	struct STRUCT_CTX0x021
{
	signed short		s2_0x021_01;
	signed short		s2_0x021_23;
	unsigned short		u2_0x021_45;
	signed short		s2_0x021_67;

}ST_CTX0x021;

typedef	union UNION_CTX0x021
{
	float				f4b[2];							/* floatアクセス				*/
	unsigned long		u4b[2];							/* 32Bitアクセス				*/
	unsigned short		u2b[4];
	unsigned char		u1b[8];							/* 8Bitアクセス					*/
	ST_CTX0x021	val;
}UN_CTX0x021;
/*=============================================================*/


/*==============================================================*/
/*			送信　ID 0x022用定義								*/
/*==============================================================*/
typedef	struct STRUCT_CTX0x022
{
	signed short		s2_0x022_01;
	signed short		s2_0x022_23;
	signed short		s2_0x022_45;
	signed short		s2_0x022_67;

}ST_CTX0x022;

typedef	union UNION_CTX0x022
{
	float				f4b[2];							/* floatアクセス				*/
	unsigned long		u4b[2];							/* 32Bitアクセス				*/
	unsigned short		u2b[4];
	unsigned char		u1b[8];							/* 8Bitアクセス					*/
	ST_CTX0x022	val;
}UN_CTX0x022;
/*=============================================================*/

/*==============================================================*/
/*			送信　ID 0x023用定義								*/
/*==============================================================*/
typedef	struct STRUCT_CTX0x023
{
	signed short		s2_0x023_01;
	signed short		s2_0x023_23;
	unsigned short		u2_0x023_45;
	unsigned short		u2_0x023_67;

}ST_CTX0x023;

typedef	union UNION_CTX0x023
{
	float				f4b[2];							/* floatアクセス				*/
	unsigned long		u4b[2];							/* 32Bitアクセス				*/
	unsigned short		u2b[4];
	unsigned char		u1b[8];							/* 8Bitアクセス					*/
	ST_CTX0x023	val;
}UN_CTX0x023;
/*=============================================================*/

/*==============================================================*/
/*			送信　ID 0x024用定義								*/
/*==============================================================*/
typedef	struct STRUCT_CTX0x024
{
	signed short		s2_0x024_01;
	signed short		s2_0x024_23;
	unsigned char		u1_0x024_4;
	unsigned char		u1_0x024_5;
	unsigned char		u1_0x024_6;
	unsigned char		u1_0x024_7;

}ST_CTX0x024;

typedef	union UNION_CTX0x024
{
	float				f4b[2];							/* floatアクセス				*/
	unsigned long		u4b[2];							/* 32Bitアクセス				*/
	unsigned short		u2b[4];
	unsigned char		u1b[8];							/* 8Bitアクセス					*/
	ST_CTX0x024	val;
}UN_CTX0x024;
/*=============================================================*/

/*==============================================================*/
/*			送信　ID 0x025用定義								*/
/*==============================================================*/
typedef	struct STRUCT_CTX0x025
{
	unsigned char		u1_0x025_0;
	unsigned char		u1_0x025_1;
	unsigned char		u1_0x025_2;
	unsigned char		u1_0x025_3;
	unsigned char		u1_0x025_4;
	unsigned char		u1_0x025_5;
	unsigned short		u2_0x025_67;

}ST_CTX0x025;

typedef	union UNION_CTX0x025
{
	float				f4b[2];							/* floatアクセス				*/
	unsigned long		u4b[2];							/* 32Bitアクセス				*/
	unsigned short		u2b[4];
	unsigned char		u1b[8];							/* 8Bitアクセス					*/
	ST_CTX0x025	val;
}UN_CTX0x025;
/*=============================================================*/	

/*==============================================================*/
/*			送信　ID 0x026用定義								*/
/*==============================================================*/
typedef	struct STRUCT_CTX0x026
{
	unsigned long		u4_0x026_0123;
	unsigned long		u4_0x026_4567;

}ST_CTX0x026;

typedef	union UNION_CTX0x026
{
	float				f4b[2];							/* floatアクセス				*/
	unsigned long		u4b[2];							/* 32Bitアクセス				*/
	unsigned short		u2b[4];
	unsigned char		u1b[8];							/* 8Bitアクセス					*/
	ST_CTX0x026	val;
}UN_CTX0x026;
/*=============================================================*/	
