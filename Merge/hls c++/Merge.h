#ifndef _MERGE_H
#define _MERGE_H

#include<ap_int.h>
#include<hls_math.h>

#define W 16

#define TILE_L 16
#define MERGE_L TILE_L*TILE_L
#define IMG_CNT 6

#define factor 8.0
#define min_dist 10.0
#define max_dist 300.0

typedef ap_uint<W> raw_t;
typedef double wet_t;

void cal_weight(raw_t imgs[MERGE_L][IMG_CNT], wet_t weight[IMG_CNT]);
void proc_tile(raw_t imgs[MERGE_L][IMG_CNT], wet_t weight[IMG_CNT], raw_t output[MERGE_L][IMG_CNT]);
void cal_merge(raw_t imgs[MERGE_L][IMG_CNT], raw_t output[MERGE_L]);

#endif
