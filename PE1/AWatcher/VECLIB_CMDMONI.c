/*===============================================================
+																+
+			Title:		AWatcher I/F関数						+
+																+
+				date:		 4th Dec,2014						+
+  	 	Copyright (C) Aoyama Motor Drive Technology 2014		+
+																+
===============================================================*/

#include    <vals_typedef.h>								/* 変数型定義ヘッダファイル						*/

#include    "cmdmoni_wt.h"

void VECLIB_CMDMONI_INIT(void)
{
	{
		CMDMONI_WT_INIT();
	}
}

void VECLIB_CMDMONI_MAIN(void)
{
	{
		CMDMONI_WT_CHECKCMD();
		CMDMONI_WT_SENDCMD();										/* コマンド送信処理								*/
	}
}

void VECLIB_CMDMONI_1MS(void)
{
	{
		CMDMONI_WT_1MS();
	}
}

void VECLIB_CMDMONI_PWM(void)
{
	{
		CMDMONI_WT_TRACEWATCH();									/* トレース格納処理								*/
	}
}

void VECLIB_CMDMONI_INTR(void)
{
	{
		MD_WT_INTR();
	}
}

void VECLIB_CMDMONI_INTRE(void)
{
	{
		MD_WT_INTRE();
	}
}
