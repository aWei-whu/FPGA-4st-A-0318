#include "Merge.h"

void Merge(
		raw_t imgs[MERGE_L][IMG_CNT],
		raw_t output[MERGE_L]){

	wet_t imgs_weight[IMG_CNT];
#pragma HLS ARRAY_PARTITION variable=imgs_weight complete dim=1
	raw_t imgs_tile[MERGE_L][IMG_CNT];
#pragma HLS ARRAY_PARTITION variable=imgs_tile complete dim=2

	cal_weight(imgs, imgs_weight);
	proc_tile(imgs, imgs_weight, imgs_tile);
	cal_merge(imgs_tile, output);
}

void cal_weight(raw_t imgs[MERGE_L][IMG_CNT], wet_t weight[IMG_CNT]){
	double sum = 0;
	cal_weight_nloop:
	for(int n = 1;n < IMG_CNT;n++){
#pragma HLS UNROLL
		cai_weight_iloop:
		for(int i = 0;i < MERGE_L;i++){
#pragma HLS PIPELINE
			sum += abs(imgs[i][n] - imgs[i][0]);
		}
		sum /= 256.0;
		sum = fmax(1, (sum - min_dist) / factor);
		weight[n] = sum > (max_dist - min_dist)? 0 : 1;
	}
}

void proc_tile(raw_t imgs[MERGE_L][IMG_CNT], wet_t weight[IMG_CNT], raw_t output[MERGE_L][IMG_CNT]){
	double total_weight = 0;
	proc_tile_kloop:
	for(int k = 0;k < IMG_CNT;k++){
#pragma HLS UNROLL
		total_weight += weight[k];
	}
	proc_tile_ploop:
	for(int p = 0;p < MERGE_L;p++){
#pragma HLS PIPELINE
		output[p][0] = imgs[MERGE_L][0] / total_weight;
	}
	proc_tile_nloop:
	for(int n = 1;n < IMG_CNT;n++){
		proc_tile_iloop:
		for(int i = 0;i < MERGE_L;i++){
#pragma HLS PIPELINE
			output[i][n] = imgs[i][n] * weight[n] / total_weight;
		}
	}
}

void cal_merge(raw_t imgs[MERGE_L][IMG_CNT], raw_t output[MERGE_L]){
	cal_merge_iloop:
	for(int i = 0;i < MERGE_L;i++){
		raw_t temp = 0;
		cal_merge_nloop:
		for(int n = 0;n < IMG_CNT;n++){
#pragma HLS PIPELINE
			temp += imgs[i][n];
		}
		output[i] = temp;
	}
}
