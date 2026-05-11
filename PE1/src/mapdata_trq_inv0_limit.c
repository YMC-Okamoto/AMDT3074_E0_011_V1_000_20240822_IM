/*==============================================================*/
/* 				 ヘッダファイルのインクルード					*/
/*==============================================================*/
#include    <vals_typedef.h>									/* 変数型定義ヘッダファイル						*/
#include    <mathf.h>											/* 数学標準ライブラリ							*/

/* 制御プログラム関係			*/
#include    "fim_gwork_inv0.h"									/* 制御プログラムヘッダファイル					*/
#include    "mapdata_trq_inv0_limit.h"							/* マッププログラムヘッダファイル				*/
/*==============================================================*/

/*=============================================================*/
/* 						デバッグ用変数定義			   		   */
/*=============================================================*/
f4		f4_x_nom_2d;
f4		f4_z_nom_2d;
s4		s4_x_id_2d, s4_z_id_2d;
s4		s4_x_id_p1_2d, s4_z_id_p1_2d;
f4		f4_kw_x_2d, f4_kw_z_2d;

f4		f4_x_add1_2d;
f4		f4_x_add1_int_2d;
f4		f4_x_add2_2d;
f4		f4_x_add2_int_2d;
f4		f4_x_nom_temp_2d;
f4		f4_kw_x_temp_2d,f4_kw_x_add_2d;


f4		f4_z_add_2d;
f4		f4_z_add_int_2d;
f4		f4_z_nom_temp_2d;
f4		f4_kw_z_temp_2d,f4_kw_z_add_2d;

f4	C00_2d, C01_2d, C10_2d, C11_2d;
volatile s2	c00_2d, c01_2d, c10_2d, c11_2d;

//					(rpm, vdc_ac, trq_limit_n, trq_limit_p)
u1 u1_tq_map_limit(f4 f4_x_2d, f4 f4_z_2d, f4 *f4_a_2d, f4 *f4_b_2d)
{
	/*============================================================*/
	/*					   ローカル変数定義		　				  */
	/*============================================================*/
	float	f4_temp0;
	s4		s4_temp0;

	u1		u1_error = 0;
//	s4		s4_x_id_p1_2d, s4_y_id_p1, s4_z_id_p1_2d;
	/*============================================================*/

	/*============================================================*/
	/*					   引数の正規化			　				  */
	/*============================================================*/
	/* X 処理　*/
	f4_x_nom_temp_2d	= (((f4)(f4_x_2d)) - ((f4)(ORIGIN_X_2D))) * ((f4)(1.0/RESO_X_2D));
	f4_x_add1_2d		= (((f4)(N_X_ADD1_2D)) - ((f4)(ORIGIN_X_2D))) * ((f4)(1.0/RESO_X_2D));
	s4_temp0			= (s4)(f4_x_add1_2d);
	f4_x_add1_int_2d	= (f4)(s4_temp0);

	f4_x_add2_2d		= (((f4)(N_X_ADD2_2D)) - ((f4)(ORIGIN_X_2D))) * ((f4)(1.0/RESO_X_2D)) + (f4)1.0;

	s4_temp0			= (s4)(f4_x_add2_2d);
	f4_x_add2_int_2d	= (f4)(s4_temp0);

	if(f4_x_add1_int_2d >= f4_x_nom_temp_2d)
	{
		f4_x_nom_2d		= f4_x_nom_temp_2d;
		s4_temp0		= (s4)(f4_x_nom_2d);
		f4_kw_x_2d		= f4_x_nom_2d - (f4)(s4_temp0);
		s4_x_id_2d		= (s4)(s4_temp0);
	}
	else if((f4_x_add1_int_2d + (f4)1.0) <= f4_x_nom_temp_2d)
	{
		f4_x_nom_temp_2d	= f4_x_nom_temp_2d + (f4)1.0;

		if(f4_x_add2_int_2d >= f4_x_nom_temp_2d)
		{
			f4_x_nom_2d		= f4_x_nom_temp_2d;
			s4_temp0		= (s4)(f4_x_nom_2d);
			f4_kw_x_2d		= f4_x_nom_2d - (f4)(s4_temp0);
			s4_x_id_2d		= (s4)(s4_temp0);
		}
		else if((f4_x_add2_int_2d + (f4)1.0) <= f4_x_nom_temp_2d)
		{
			f4_x_nom_2d		= f4_x_nom_temp_2d + (f4)1.0;
			s4_temp0		= (s4)(f4_x_nom_2d);
			f4_kw_x_2d		= f4_x_nom_2d - (f4)(s4_temp0);
			s4_x_id_2d		= (s4)(s4_temp0);
		}
		else	/* 追加回転数処理2		*/
		{
			if(f4_x_nom_temp_2d > f4_x_add2_2d)
			{
				f4_x_nom_2d		= f4_x_nom_temp_2d + (f4)1.0;
				s4_temp0		= (s4)(f4_x_nom_2d);
				f4_kw_x_temp_2d	= f4_x_nom_2d - (f4)(s4_temp0);
				s4_x_id_2d		= (s4)(s4_temp0);

				s4_temp0		= (s4)(f4_x_add2_2d);
				f4_kw_x_add_2d	= f4_x_add2_2d - (f4)(s4_temp0);

				f4_kw_x_2d			= (f4_kw_x_temp_2d - f4_kw_x_add_2d) / ((f4)1.0 - f4_kw_x_add_2d);
			}
			else
			{
				f4_x_nom_2d		= f4_x_nom_temp_2d;
				s4_temp0		= (s4)(f4_x_nom_2d);
				f4_kw_x_temp_2d	= f4_x_nom_2d - (f4)(s4_temp0);
				s4_x_id_2d		= (s4)(s4_temp0);

				s4_temp0		= (s4)(f4_x_add2_2d);
				f4_kw_x_add_2d	= f4_x_add2_2d - (f4)(s4_temp0);

				f4_kw_x_2d			= f4_kw_x_temp_2d / f4_kw_x_add_2d;
			}
		}
	}
	else	/* 追加回転数処理1		*/
	{
		if(f4_x_nom_temp_2d > f4_x_add1_2d)
		{
			f4_x_nom_2d		= f4_x_nom_temp_2d + (f4)(1.0);
			s4_temp0		= (s4)(f4_x_nom_2d);
			f4_kw_x_temp_2d	= f4_x_nom_2d - (f4)(s4_temp0);
			s4_x_id_2d		= (s4)(s4_temp0);

			s4_temp0		= (s4)(f4_x_add1_2d);
			f4_kw_x_add_2d	= f4_x_add1_2d - (f4)(s4_temp0);

			f4_kw_x_2d			= (f4_kw_x_temp_2d - f4_kw_x_add_2d) / ((f4)1.0 - f4_kw_x_add_2d);
		}
		else
		{
			f4_x_nom_2d		= f4_x_nom_temp_2d;
			s4_temp0		= (s4)(f4_x_nom_2d);
			f4_kw_x_temp_2d	= f4_x_nom_2d - (f4)(s4_temp0);
			s4_x_id_2d		= (s4)(s4_temp0);

			s4_temp0		= (s4)(f4_x_add1_2d);
			f4_kw_x_add_2d	= f4_x_add1_2d - (f4)(s4_temp0);

			f4_kw_x_2d			= f4_kw_x_temp_2d / f4_kw_x_add_2d;
		}
	}


	/* エラー検出			*/
	u1_error	|= (s4_x_id_2d<0)?(1):((s4_x_id_2d>=N_X_2D)?(1):(0));
	if(s4_x_id_2d<0)
	{
		s4_x_id_2d		= 0;
		f4_kw_x_2d		= (f4)0.0;
		u1_error	|= 0x1;
	}
	else if(s4_x_id_2d<(s4)(N_X_2D-1))
	{
	}
	else
	{
		s4_x_id_2d		= (s4)(N_X_2D - 1);
		f4_kw_x_2d		= (f4)1.0;
		u1_error	|= 0x1;
	}

	/* Z 処理　*/
	f4_z_nom_temp_2d	= (((f4)(f4_z_2d)) - ((f4)(ORIGIN_Z_2D))) * ((f4)(1.0/RESO_Z_2D));
	f4_z_add_2d			= (((f4)(N_Z_ADD_2D)) - ((f4)(ORIGIN_Z_2D))) * ((f4)(1.0/RESO_Z_2D));
	s4_temp0			= (s4)(f4_z_add_2d);
	f4_z_add_int_2d		= (f4)(s4_temp0);

#if 1	/* 追加電圧が最低電圧以外の場合	*/

	if(f4_z_add_int_2d > f4_z_nom_temp_2d)
	{
		f4_z_nom_2d	= f4_z_nom_temp_2d;
		s4_temp0	= (s4)(f4_z_nom_2d);
		f4_kw_z_2d	= f4_z_nom_2d - (f4)(s4_temp0);

		s4_z_id_2d	= (s4)(s4_temp0);
	}
	else if((f4_z_add_int_2d + (f4)1.0) < f4_z_nom_temp_2d)
	{
		f4_z_nom_2d	= f4_z_nom_temp_2d + (f4)1.0;
		s4_temp0	= (s4)(f4_z_nom_2d);
		f4_kw_z_2d	= f4_z_nom_2d - (f4)(s4_temp0);

		s4_z_id_2d	= (s4)(s4_temp0);
	}
	else	/* 追加処理		*/
	{


		if(f4_z_nom_temp_2d > f4_z_add_2d)
		{
			f4_z_nom_2d		= f4_z_nom_temp_2d + (f4)1.0;

			s4_temp0		= (s4)(f4_z_nom_2d);
			f4_kw_z_temp_2d	= f4_z_nom_2d - (f4)(s4_temp0);

			s4_z_id_2d		= (s4)(s4_temp0);

			s4_temp0		= (s4)(f4_z_add_2d);
			f4_kw_z_add_2d	= f4_z_add_2d - (f4)(s4_temp0);

			f4_kw_z_2d			= (f4_kw_z_temp_2d - f4_kw_z_add_2d) / ((f4)1.0 - f4_kw_z_add_2d);
		}
		else
		{
			f4_z_nom_2d		= f4_z_nom_temp_2d;
			s4_temp0		= (s4)(f4_z_nom_2d);
			f4_kw_z_temp_2d	= f4_z_nom_2d - (f4)(s4_temp0);

			s4_z_id_2d		= (s4)(s4_temp0);

			s4_temp0		= (s4)(f4_z_add_2d);
			f4_kw_z_add_2d	= f4_z_add_2d - (f4)(s4_temp0);

			f4_kw_z_2d			= f4_kw_z_temp_2d / f4_kw_z_add_2d;
		}

	}

#else	/* 追加電圧が最低電圧の場合	*/

	/* Z 処理　*/
	f4_z_nom_temp_2d	= (((f4)(f4_z_2d)) - ((f4)(ORIGIN_Z_2D))) * ((f4)(1.0/RESO_Z_2D));
	f4_z_add_2d		= (((f4)(N_Z_ADD_2D)) - ((f4)(ORIGIN_Z_2D))) * ((f4)(1.0/RESO_Z_2D));
	f4_z_add_int_2d	= floorf(f4_z_add_2d);

	if(f4_z_add_2d > f4_z_nom_temp_2d)
	{
		s4_z_id_2d		= 0;
		f4_kw_z_2d		= (f4)0.0;
	}
	else if((f4_z_add_int_2d + (f4)1.0) <= f4_z_nom_temp_2d)
	{
		f4_z_nom_2d	= f4_z_nom_temp_2d;
		s4_temp0	= (s4)(f4_z_nom_2d);
		f4_kw_z_2d	= f4_z_nom_2d - (f4)(s4_temp0);

		s4_z_id_2d	= (s4)(s4_temp0);
	}
	else	/* 追加処理		*/
	{
		f4_z_nom_2d		= f4_z_nom_temp_2d;

		s4_temp0		= (s4)(f4_z_nom_2d);
		f4_kw_z_temp_2d	= f4_z_nom_2d - (f4)(s4_temp0);

		s4_z_id_2d		= (s4)(s4_temp0);

		s4_temp0		= (s4)(f4_z_add_2d);
		f4_kw_z_add_2d	= f4_z_add_2d - (f4)(s4_temp0);

		f4_kw_z_2d			= (f4_kw_z_temp_2d - f4_kw_z_add_2d) / ((f4)1.0 - f4_kw_z_add_2d);
	}

#endif

	u1_error	|= (s4_z_id_2d<0)?(1):((s4_z_id_2d>=N_Z_2D)?(1):(0));
	if(s4_z_id_2d<0)
	{
		s4_z_id_2d		= 0;
		f4_kw_z_2d		= (f4)0.0;
		u1_error	|= 0x4;
	}
	else if(s4_z_id_2d<(s4)(N_Z_2D-1))
	{
	}
	else
	{
		s4_z_id_2d		= (s4)(N_Z_2D - 1);
		f4_kw_z_2d		= (f4)1.0;
		u1_error	|= 0x4;
	}


	if(f4_kw_x_2d < (f4)(0.))
	{
		f4_kw_x_2d			= (f4)(0.);
	}
	else{}

	if(f4_kw_z_2d < (f4)(0.))
	{
		f4_kw_z_2d			= (f4)(0.);
	}
	else{}

	/*============================================================*/

	/*============================================================*/
	/*					  データ取得			　				  */
	/*============================================================*/
	s4_x_id_p1_2d	= s4_x_id_2d+1;
	s4_x_id_p1_2d	= (s4_x_id_p1_2d<N_X_2D)?(s4_x_id_p1_2d):(N_X_2D-1);
	s4_z_id_p1_2d	= s4_z_id_2d+1;
	s4_z_id_p1_2d	= (s4_z_id_p1_2d<N_Z_2D)?(s4_z_id_p1_2d):(N_Z_2D-1);

	// Cxyz
	// test
	c00_2d		= map_tq_limit[s4_z_id_2d][0][s4_x_id_2d];
	c10_2d		= map_tq_limit[s4_z_id_2d][0][s4_x_id_p1_2d];
	c01_2d		= map_tq_limit[s4_z_id_p1_2d][0][s4_x_id_2d];
	c11_2d		= map_tq_limit[s4_z_id_p1_2d][0][s4_x_id_p1_2d];

	// trq_limit_n
	C00_2d		= (f4)(SCALLING_A_2D)*(f4)map_tq_limit[s4_z_id_2d][0][s4_x_id_2d];
	C10_2d		= (f4)(SCALLING_A_2D)*(f4)map_tq_limit[s4_z_id_2d][0][s4_x_id_p1_2d];
	C01_2d		= (f4)(SCALLING_A_2D)*(f4)map_tq_limit[s4_z_id_p1_2d][0][s4_x_id_2d];
	C11_2d		= (f4)(SCALLING_A_2D)*(f4)map_tq_limit[s4_z_id_p1_2d][0][s4_x_id_p1_2d];
	*f4_a_2d	= ((f4)1.0-f4_kw_x_2d)*((f4)1.0-f4_kw_z_2d)*C00_2d
				+ (f4_kw_x_2d)*((f4)1.0-f4_kw_z_2d)*C10_2d
				+ ((f4)1.0-f4_kw_x_2d)*(f4_kw_z_2d)*C01_2d
				+ (f4_kw_x_2d)*(f4_kw_z_2d)*C11_2d;

	// trq_limit_p
	C00_2d		= (f4)(SCALLING_A_2D)*(f4)map_tq_limit[s4_z_id_2d][1][s4_x_id_2d];
	C10_2d		= (f4)(SCALLING_A_2D)*(f4)map_tq_limit[s4_z_id_2d][1][s4_x_id_p1_2d];
	C01_2d		= (f4)(SCALLING_A_2D)*(f4)map_tq_limit[s4_z_id_p1_2d][1][s4_x_id_2d];
	C11_2d		= (f4)(SCALLING_A_2D)*(f4)map_tq_limit[s4_z_id_p1_2d][1][s4_x_id_p1_2d];
	*f4_b_2d	= ((f4)1.0-f4_kw_x_2d)*((f4)1.0-f4_kw_z_2d)*C00_2d
				+ (f4_kw_x_2d)*((f4)1.0-f4_kw_z_2d)*C10_2d
				+ ((f4)1.0-f4_kw_x_2d)*(f4_kw_z_2d)*C01_2d
				+ (f4_kw_x_2d)*(f4_kw_z_2d)*C11_2d;



	/*============================================================*/

	/*============================================================*/
	/*					  戻り値				　				  */
	/*============================================================*/
	return(u1_error);
	/*============================================================*/
}
