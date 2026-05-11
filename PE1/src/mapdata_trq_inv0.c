/*==============================================================*/
/* 				 ヘッダファイルのインクルード					*/
/*==============================================================*/
#include    <vals_typedef.h>									/* 変数型定義ヘッダファイル						*/
#include    <mathf.h>											/* 数学標準ライブラリ							*/

/* 制御プログラム関係			*/
#include    "fim_gwork_inv0.h"									/* 制御プログラムヘッダファイル					*/
#include    "mapdata_trq_inv0.h"								/* マッププログラムヘッダファイル				*/
/*==============================================================*/

/*=============================================================*/
/* 						デバッグ用変数定義			   		   */
/*=============================================================*/
f4		f4_x_nom;
f4 		f4_y_nom;
f4		f4_z_nom;
s4		s4_x_id, s4_y_id, s4_z_id;
s4		s4_x_id_p1, s4_y_id_p1, s4_z_id_p1;
f4		f4_kw_x, f4_kw_y, f4_kw_z;

f4		f4_x_add1;
f4		f4_x_add1_int;
f4		f4_x_add2;
f4		f4_x_add2_int;
f4		f4_x_nom_temp;
f4		f4_kw_x_temp,f4_kw_x_add;


f4		f4_z_add;
f4		f4_z_add_int;
f4		f4_z_nom_temp;
f4		f4_kw_z_temp,f4_kw_z_add;

f4	C000, C001, C010, C011, C100, C101, C110, C111;
volatile s2	c000, c001, c010, c011, c100, c101, c110, c111;

//					(rpm, tq_ref, vdc_ac, id_ref, iq_ref, Pm/P123, P123/P4)
u1 u1_tq_map_get(f4 f4_x, f4 f4_y, f4 f4_z, f4 *f4_a, f4 *f4_b , f4 *f4_c, f4 *f4_d)
{
	/*============================================================*/
	/*					   ローカル変数定義		　				  */
	/*============================================================*/
	float	f4_temp0, f4_temp1;
	s4		s4_temp0;

	u1		u1_error = 0;
//	s4		s4_x_id_p1, s4_y_id_p1, s4_z_id_p1;
	/*============================================================*/

	/*============================================================*/
	/*					   引数の正規化			　				  */
	/*============================================================*/
	/* X 処理　*/
	f4_x_nom_temp	= (((f4)(f4_x)) - ((f4)(ORIGIN_X))) * ((f4)(1.0/RESO_X));
	f4_x_add1		= (((f4)(N_X_ADD1)) - ((f4)(ORIGIN_X))) * ((f4)(1.0/RESO_X));
	s4_temp0		= (s4)(f4_x_add1);
	f4_x_add1_int	= (f4)(s4_temp0);
	f4_x_add2		= (((f4)(N_X_ADD2)) - ((f4)(ORIGIN_X))) * ((f4)(1.0/RESO_X)) + (f4)(1.0);
	s4_temp0		= (s4)(f4_x_add2);
	f4_x_add2_int	= (f4)(s4_temp0);

	if(f4_x_add1_int >= f4_x_nom_temp)
	{
		f4_x_nom	= f4_x_nom_temp;
		s4_temp0	= (s4)(f4_x_nom);
		f4_kw_x		= f4_x_nom - (f4)(s4_temp0);
		s4_x_id		= (s4)(s4_temp0);
	}
	else if((f4_x_add1_int + (f4)1.0) <= f4_x_nom_temp)
	{
		f4_x_nom_temp	= f4_x_nom_temp + (f4)1.0;

		if(f4_x_add2_int >= f4_x_nom_temp)
		{
			f4_x_nom	= f4_x_nom_temp;
			s4_temp0	= (s4)(f4_x_nom);
			f4_kw_x		= f4_x_nom - (f4)(s4_temp0);
			s4_x_id		= (s4)(s4_temp0);
		}
		else if((f4_x_add2_int + (f4)1.0) <= f4_x_nom_temp)
		{
			f4_x_nom	= f4_x_nom_temp + (f4)1.0;
			s4_temp0	= (s4)(f4_x_nom);
			f4_kw_x		= f4_x_nom - (f4)(s4_temp0);
			s4_x_id		= (s4)(s4_temp0);
		}
		else	/* 追加回転数処理2		*/
		{
			if(f4_x_nom_temp > f4_x_add2)
			{
				f4_x_nom		= f4_x_nom_temp + (f4)1.0;
				s4_temp0		= (s4)(f4_x_nom);
				f4_kw_x_temp	= f4_x_nom - (f4)(s4_temp0);
				s4_x_id			= (s4)(s4_temp0);

				s4_temp0		= (s4)(f4_x_add2);
				f4_kw_x_add		= f4_x_add2 - (f4)(s4_temp0);

				f4_kw_x			= (f4_kw_x_temp - f4_kw_x_add) / ((f4)1.0 - f4_kw_x_add);
			}
			else
			{
				f4_x_nom		= f4_x_nom_temp;
				s4_temp0		= (s4)(f4_x_nom);
				f4_kw_x_temp	= f4_x_nom - (f4)(s4_temp0);
				s4_x_id			= (s4)(s4_temp0);

				s4_temp0		= (s4)(f4_x_add2);
				f4_kw_x_add		= f4_x_add2 - (f4)(s4_temp0);

				f4_kw_x			= f4_kw_x_temp / f4_kw_x_add;
			}
		}
	}
	else	/* 追加回転数処理1		*/
	{
		if(f4_x_nom_temp > f4_x_add1)
		{
			f4_x_nom		= f4_x_nom_temp + (f4)1.0;
			s4_temp0		= (s4)(f4_x_nom);
			f4_kw_x_temp	= f4_x_nom - (f4)(s4_temp0);
			s4_x_id			= (s4)(s4_temp0);

			s4_temp0		= (s4)(f4_x_add1);
			f4_kw_x_add		= f4_x_add1 - (f4)(s4_temp0);

			f4_kw_x			= (f4_kw_x_temp - f4_kw_x_add) / ((f4)1.0 - f4_kw_x_add);
		}
		else
		{
			f4_x_nom		= f4_x_nom_temp;
			s4_temp0		= (s4)(f4_x_nom);
			f4_kw_x_temp	= f4_x_nom - (f4)(s4_temp0);
			s4_x_id			= (s4)(s4_temp0);

			s4_temp0		= (s4)(f4_x_add1);
			f4_kw_x_add		= f4_x_add1 - (f4)(s4_temp0);

			f4_kw_x			= f4_kw_x_temp / f4_kw_x_add;
		}
	}


	/* エラー検出			*/
	u1_error	|= (s4_x_id<0)?(1):((s4_x_id>=N_X)?(1):(0));
	if(s4_x_id<0)
	{
		s4_x_id		= 0;
		f4_kw_x		= (f4)0.0;
		u1_error	|= 0x1;
	}
	else if(s4_x_id<(s4)(N_X-1))
	{
	}
	else
	{
		s4_x_id		= (s4)(N_X - 1);
		f4_kw_x		= (f4)1.0;
		u1_error	|= 0x1;
	}

	/* Y 処理　*/
	f4_y_nom	= (f4_y - (f4)(ORIGIN_Y)) * (f4)(1.0/RESO_Y);
	s4_temp0	= (s4)(f4_y_nom);
	f4_kw_y		= f4_y_nom - (f4)(s4_temp0);

	s4_y_id		= (s4)(s4_temp0);

	u1_error	|= (s4_y_id<0)?(1):((s4_y_id>=N_Y)?(1):(0));
	if(s4_y_id<0)
	{
		s4_y_id		= 0;
		f4_kw_y		= (f4)0.0;
		u1_error	|= 0x2;
	}
	else if(s4_y_id<(s4)(N_Y-1))
	{
	}
	else
	{
		s4_y_id		= (s4)(N_Y - 1);
		f4_kw_y		= (f4)1.0;
		u1_error	|= 0x2;
	}

	/* Z 処理　*/
	f4_z_nom_temp	= (((f4)(f4_z)) - ((f4)(ORIGIN_Z))) * ((f4)(1.0/RESO_Z));
	f4_z_add		= (((f4)(N_Z_ADD)) - ((f4)(ORIGIN_Z))) * ((f4)(1.0/RESO_Z));
	s4_temp0		= (s4)(f4_z_add);
	f4_z_add_int	= (f4)(s4_temp0);

#if 1	/* 追加電圧が最低電圧以外の場合	*/

	if(f4_z_add_int > f4_z_nom_temp)
	{
		f4_z_nom	= f4_z_nom_temp;

		s4_temp0	= (s4)(f4_z_nom);
		f4_kw_z		= f4_z_nom - (f4)(s4_temp0);

		s4_z_id		= (s4)(s4_temp0);
	}
	else if((f4_z_add_int + (f4)1.0) < f4_z_nom_temp)
	{
		f4_z_nom	= f4_z_nom_temp + (f4)1.0;

		s4_temp0	= (s4)(f4_z_nom);
		f4_kw_z		= f4_z_nom - (f4)(s4_temp0);

		s4_z_id		= (s4)(s4_temp0);
	}
	else	/* 追加処理		*/
	{


		if(f4_z_nom_temp > f4_z_add)
		{
			f4_z_nom		= f4_z_nom_temp + (f4)1.0;

			s4_temp0		= (s4)(f4_z_nom);
			f4_kw_z_temp	= f4_z_nom - (f4)(s4_temp0);

			s4_z_id			= (s4)(s4_temp0);

			s4_temp0		= (s4)(f4_z_add);
			f4_kw_z_add		= f4_z_add - (f4)(s4_temp0);

			f4_kw_z			= (f4_kw_z_temp - f4_kw_z_add) / ((f4)1.0 - f4_kw_z_add);
		}
		else
		{
			f4_z_nom		= f4_z_nom_temp;

			s4_temp0		= (s4)(f4_z_nom);
			f4_kw_z_temp	= f4_z_nom - (f4)(s4_temp0);

			s4_z_id			= (s4)(s4_temp0);

			s4_temp0		= (s4)(f4_z_add);
			f4_kw_z_add		= f4_z_add - (f4)(s4_temp0);

			f4_kw_z			= f4_kw_z_temp / f4_kw_z_add;
		}

	}

#else	/* 追加電圧が最低電圧の場合	*/

	if(f4_z_add > f4_z_nom_temp)
	{
		s4_z_id		= 0;
		f4_kw_z		= (f4)0.0;
	}
	else if((f4_z_add_int + (f4)1.0) <= f4_z_nom_temp)
	{
		f4_z_nom	= f4_z_nom_temp;
		s4_temp0	= (s4)(f4_z_nom);
		f4_kw_z		= f4_z_nom - (f4)(s4_temp0);

		s4_z_id		= (s4)(s4_temp0);
	}
	else	/* 追加処理		*/
	{
		f4_z_nom		= f4_z_nom_temp;

		s4_temp0		= (s4)(f4_z_nom);
		f4_kw_z_temp	= f4_z_nom - (f4)(s4_temp0);

		s4_z_id			= (s4)(s4_temp0);

		s4_temp0		= (s4)(f4_z_add);
		f4_kw_z_add		= f4_z_add - (f4)(s4_temp0)

		f4_kw_z			= (f4_kw_z_temp - f4_kw_z_add) / ((f4)1.0 - f4_kw_z_add);
	}

#endif

	u1_error	|= (s4_z_id<0)?(1):((s4_z_id>=N_Z)?(1):(0));
	if(s4_z_id<0)
	{
		s4_z_id		= 0;
		f4_kw_z		= (f4)0.0;
		u1_error	|= 0x4;
	}
	else if(s4_z_id<(s4)(N_Z-1))
	{
	}
	else
	{
		s4_z_id		= (s4)(N_Z - 1);
		f4_kw_z		= (f4)1.0;
		u1_error	|= 0x4;
	}

	if(f4_kw_x < (f4)(0.))
	{
		f4_kw_x			= (f4)(0.);
	}
	else{}

	if(f4_kw_y < (f4)(0.))
	{
		f4_kw_y			= (f4)(0.);
	}
	else{}

	if(f4_kw_z < (f4)(0.))
	{
		f4_kw_z			= (f4)(0.);
	}
	else{}
	/*============================================================*/

	/*============================================================*/
	/*					  データ取得			　				  */
	/*============================================================*/
	s4_x_id_p1	= s4_x_id+1;
	s4_x_id_p1	= (s4_x_id_p1<N_X)?(s4_x_id_p1):(N_X-1);
	s4_y_id_p1	= s4_y_id+1;
	s4_y_id_p1	= (s4_y_id_p1<N_Y)?(s4_y_id_p1):(N_Y-1);
	s4_z_id_p1	= s4_z_id+1;
	s4_z_id_p1	= (s4_z_id_p1<N_Z)?(s4_z_id_p1):(N_Z-1);

	// Cxyz
	// test
	c000		= map_tq_to_idq[s4_z_id][0][s4_y_id][s4_x_id];
	c100		= map_tq_to_idq[s4_z_id][0][s4_y_id][s4_x_id_p1];
	c010		= map_tq_to_idq[s4_z_id][0][s4_y_id_p1][s4_x_id];
	c110		= map_tq_to_idq[s4_z_id][0][s4_y_id_p1][s4_x_id_p1];
	c001		= map_tq_to_idq[s4_z_id_p1][0][s4_y_id][s4_x_id];
	c101		= map_tq_to_idq[s4_z_id_p1][0][s4_y_id][s4_x_id_p1];
	c011		= map_tq_to_idq[s4_z_id_p1][0][s4_y_id_p1][s4_x_id];
	c111		= map_tq_to_idq[s4_z_id_p1][0][s4_y_id_p1][s4_x_id_p1];

	// id
	C000		= (f4)(SCALLING_A)*(f4)map_tq_to_idq[s4_z_id][0][s4_y_id][s4_x_id];
	C100		= (f4)(SCALLING_A)*(f4)map_tq_to_idq[s4_z_id][0][s4_y_id][s4_x_id_p1];
	C010		= (f4)(SCALLING_A)*(f4)map_tq_to_idq[s4_z_id][0][s4_y_id_p1][s4_x_id];
	C110		= (f4)(SCALLING_A)*(f4)map_tq_to_idq[s4_z_id][0][s4_y_id_p1][s4_x_id_p1];
	C001		= (f4)(SCALLING_A)*(f4)map_tq_to_idq[s4_z_id_p1][0][s4_y_id][s4_x_id];
	C101		= (f4)(SCALLING_A)*(f4)map_tq_to_idq[s4_z_id_p1][0][s4_y_id][s4_x_id_p1];
	C011		= (f4)(SCALLING_A)*(f4)map_tq_to_idq[s4_z_id_p1][0][s4_y_id_p1][s4_x_id];
	C111		= (f4)(SCALLING_A)*(f4)map_tq_to_idq[s4_z_id_p1][0][s4_y_id_p1][s4_x_id_p1];
	*f4_a		= ((f4)1.0-f4_kw_x)*((f4)1.0-f4_kw_y)*((f4)1.0-f4_kw_z)*C000
				+ (f4_kw_x)*((f4)1.0-f4_kw_y)*((f4)1.0-f4_kw_z)*C100
				+ ((f4)1.0-f4_kw_x)*(f4_kw_y)*((f4)1.0-f4_kw_z)*C010
				+ (f4_kw_x)*(f4_kw_y)*((f4)1.0-f4_kw_z)*C110
				+ ((f4)1.0-f4_kw_x)*((f4)1.0-f4_kw_y)*(f4_kw_z)*C001
				+ (f4_kw_x)*((f4)1.0-f4_kw_y)*(f4_kw_z)*C101
				+ ((f4)1.0-f4_kw_x)*(f4_kw_y)*(f4_kw_z)*C011
				+ (f4_kw_x)*(f4_kw_y)*(f4_kw_z)*C111;

	// iq
	C000		= (f4)(SCALLING_B)*(f4)map_tq_to_idq[s4_z_id][1][s4_y_id][s4_x_id];
	C100		= (f4)(SCALLING_B)*(f4)map_tq_to_idq[s4_z_id][1][s4_y_id][s4_x_id_p1];
	C010		= (f4)(SCALLING_B)*(f4)map_tq_to_idq[s4_z_id][1][s4_y_id_p1][s4_x_id];
	C110		= (f4)(SCALLING_B)*(f4)map_tq_to_idq[s4_z_id][1][s4_y_id_p1][s4_x_id_p1];
	C001		= (f4)(SCALLING_B)*(f4)map_tq_to_idq[s4_z_id_p1][1][s4_y_id][s4_x_id];
	C101		= (f4)(SCALLING_B)*(f4)map_tq_to_idq[s4_z_id_p1][1][s4_y_id][s4_x_id_p1];
	C011		= (f4)(SCALLING_B)*(f4)map_tq_to_idq[s4_z_id_p1][1][s4_y_id_p1][s4_x_id];
	C111		= (f4)(SCALLING_B)*(f4)map_tq_to_idq[s4_z_id_p1][1][s4_y_id_p1][s4_x_id_p1];
	*f4_b		= ((f4)1.0-f4_kw_x)*((f4)1.0-f4_kw_y)*((f4)1.0-f4_kw_z)*C000
				+ (f4_kw_x)*((f4)1.0-f4_kw_y)*((f4)1.0-f4_kw_z)*C100
				+ ((f4)1.0-f4_kw_x)*(f4_kw_y)*((f4)1.0-f4_kw_z)*C010
				+ (f4_kw_x)*(f4_kw_y)*((f4)1.0-f4_kw_z)*C110
				+ ((f4)1.0-f4_kw_x)*((f4)1.0-f4_kw_y)*(f4_kw_z)*C001
				+ (f4_kw_x)*((f4)1.0-f4_kw_y)*(f4_kw_z)*C101
				+ ((f4)1.0-f4_kw_x)*(f4_kw_y)*(f4_kw_z)*C011
				+ (f4_kw_x)*(f4_kw_y)*(f4_kw_z)*C111;
				
	// Pm/P123
	C000		= (f4)(SCALLING_C)*(f4)map_tq_to_power[s4_z_id][0][s4_y_id][s4_x_id];
	C100		= (f4)(SCALLING_C)*(f4)map_tq_to_power[s4_z_id][0][s4_y_id][s4_x_id_p1];
	C010		= (f4)(SCALLING_C)*(f4)map_tq_to_power[s4_z_id][0][s4_y_id_p1][s4_x_id];
	C110		= (f4)(SCALLING_C)*(f4)map_tq_to_power[s4_z_id][0][s4_y_id_p1][s4_x_id_p1];
	C001		= (f4)(SCALLING_C)*(f4)map_tq_to_power[s4_z_id_p1][0][s4_y_id][s4_x_id];
	C101		= (f4)(SCALLING_C)*(f4)map_tq_to_power[s4_z_id_p1][0][s4_y_id][s4_x_id_p1];
	C011		= (f4)(SCALLING_C)*(f4)map_tq_to_power[s4_z_id_p1][0][s4_y_id_p1][s4_x_id];
	C111		= (f4)(SCALLING_C)*(f4)map_tq_to_power[s4_z_id_p1][0][s4_y_id_p1][s4_x_id_p1];
	*f4_c		= ((f4)1.0-f4_kw_x)*((f4)1.0-f4_kw_y)*((f4)1.0-f4_kw_z)*C000
				+ (f4_kw_x)*((f4)1.0-f4_kw_y)*((f4)1.0-f4_kw_z)*C100
				+ ((f4)1.0-f4_kw_x)*(f4_kw_y)*((f4)1.0-f4_kw_z)*C010
				+ (f4_kw_x)*(f4_kw_y)*((f4)1.0-f4_kw_z)*C110
				+ ((f4)1.0-f4_kw_x)*((f4)1.0-f4_kw_y)*(f4_kw_z)*C001
				+ (f4_kw_x)*((f4)1.0-f4_kw_y)*(f4_kw_z)*C101
				+ ((f4)1.0-f4_kw_x)*(f4_kw_y)*(f4_kw_z)*C011
				+ (f4_kw_x)*(f4_kw_y)*(f4_kw_z)*C111;
				
	// P123/P4
	C000		= (f4)(SCALLING_D)*(f4)map_tq_to_power[s4_z_id][1][s4_y_id][s4_x_id];
	C100		= (f4)(SCALLING_D)*(f4)map_tq_to_power[s4_z_id][1][s4_y_id][s4_x_id_p1];
	C010		= (f4)(SCALLING_D)*(f4)map_tq_to_power[s4_z_id][1][s4_y_id_p1][s4_x_id];
	C110		= (f4)(SCALLING_D)*(f4)map_tq_to_power[s4_z_id][1][s4_y_id_p1][s4_x_id_p1];
	C001		= (f4)(SCALLING_D)*(f4)map_tq_to_power[s4_z_id_p1][1][s4_y_id][s4_x_id];
	C101		= (f4)(SCALLING_D)*(f4)map_tq_to_power[s4_z_id_p1][1][s4_y_id][s4_x_id_p1];
	C011		= (f4)(SCALLING_D)*(f4)map_tq_to_power[s4_z_id_p1][1][s4_y_id_p1][s4_x_id];
	C111		= (f4)(SCALLING_D)*(f4)map_tq_to_power[s4_z_id_p1][1][s4_y_id_p1][s4_x_id_p1];
	*f4_d		= ((f4)1.0-f4_kw_x)*((f4)1.0-f4_kw_y)*((f4)1.0-f4_kw_z)*C000
				+ (f4_kw_x)*((f4)1.0-f4_kw_y)*((f4)1.0-f4_kw_z)*C100
				+ ((f4)1.0-f4_kw_x)*(f4_kw_y)*((f4)1.0-f4_kw_z)*C010
				+ (f4_kw_x)*(f4_kw_y)*((f4)1.0-f4_kw_z)*C110
				+ ((f4)1.0-f4_kw_x)*((f4)1.0-f4_kw_y)*(f4_kw_z)*C001
				+ (f4_kw_x)*((f4)1.0-f4_kw_y)*(f4_kw_z)*C101
				+ ((f4)1.0-f4_kw_x)*(f4_kw_y)*(f4_kw_z)*C011
				+ (f4_kw_x)*(f4_kw_y)*(f4_kw_z)*C111;

	/*============================================================*/

	/*============================================================*/
	/*					  戻り値				　				  */
	/*============================================================*/
	return(u1_error);
	/*============================================================*/
}
