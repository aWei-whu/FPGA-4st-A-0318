#include "Alignment.h"

void Alignment(raw_t ref_imgs[ref_ROW][ref_COL],
		raw_t alt_imgs[alt_ROW][alt_COL],
		int *align_x, int *align_y){
	alignment(ref_imgs, alt_imgs, align_x, align_y);
}

void alignment(raw_t ref_imgs[ref_ROW][ref_COL],
		raw_t alt_imgs[alt_ROW][alt_COL],
		int *align_x, int *align_y){
	int sum = 10000;
	alignment_iloop:
	for(int i = 0;i < SEARCH;i++){
		alignment_jloop:
		for(int j = 0;j < SEARCH;j++){
			int temp_sum = 0;
			alignment_nloop:
			for(int n = 0;n < ref_ROW;n++){
				alignment_mloop:
				for(int m = 0;m < ref_COL;m++){
#pragma HLS UNROLL
					temp_sum += abs(ref_imgs[n][m] - alt_imgs[n + i][m + j]);
				}
			}
			if(temp_sum < sum){
				sum = temp_sum;
				*align_x = i - 4;
				*align_y = j - 4;
			}
		}
	}
}
