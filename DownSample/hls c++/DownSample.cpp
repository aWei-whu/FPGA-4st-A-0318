#include "DownSample.h"

void DownSample(
		raw_t imgs[RAW_ROW][RAW_COL],
		raw_t L0[L0_ROW][L0_COL],
		raw_t L1[L1_ROW][L1_COL],
		raw_t *L2)
{
	box_down2(imgs, L0);
	Guass_down4_1(L0, L1);
	*L2 = Guass_down4_2(L1);
}

void box_down2(raw_t imgs[RAW_ROW][RAW_COL], raw_t output[L0_ROW][L0_COL]){
	box_down2_iloop:
	for(int i = 0;i < L0_ROW;i++){
		box_down2_jloop:
		for(int j = 0;j < L0_COL;j++){
			output[i][j] = (imgs[i*2][j*2] + imgs[i*2+1][j*2]
							+ imgs[i*2][j*2+1] + imgs[i*2+1][j*2+1])/4;
		}
	}
}

void Guass_down4_1(raw_t imgs[L0_ROW][L0_COL], raw_t output[L1_ROW][L1_COL]){
	Guass_down4_1_iloop:
	for(int i = 0;i < L1_ROW;i++){
		Guass_down4_1_jloop:
		for(int j = 0;j < L1_COL;j++){
			int ii = i * 4 + 3;
			int jj = j * 4 + 3;
			int sum = 0, k = 0;
			Guass_down4_1_nloop:
			for(int n = ii - 2;n < ii + 2;n++){
				Guass_down4_1_mloop:
				for(int m = jj - 2;m < jj + 2;m++){
					sum += imgs[n][m] * Guass_kernel[k];
					k++;
				}
			}
			output[i][j] = sum / 159;
		}
	}
}
raw_t Guass_down4_2(raw_t imgs[L1_ROW][L1_COL]){
	raw_t L2;
	int sum = 0, k = 0;
	Guass_down4_2_iloop:
	for(int i = 0;i < L1_ROW;i++){
		Guass_down4_2_jloop:
		for(int j = 0;j < L1_COL;j++){
			sum += imgs[i][j] * Guass_kernel[k];
			k++;
		}
	}
	L2 = sum / 159;
	return L2;
}
