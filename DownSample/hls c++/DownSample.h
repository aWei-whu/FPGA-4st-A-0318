#ifndef _DOWNSAMPLE_H
#define _DOWNSAMPLE_H

#include<ap_int.h>

#define W 16

#define RAW_ROW 42
#define RAW_COL 42

#define L0_ROW 21
#define L0_COL 21

#define L1_ROW 5
#define L1_COL 5

typedef ap_uint<W> raw_t;


void box_down2(raw_t imgs[RAW_ROW][RAW_COL], raw_t output[L0_ROW][L0_COL]);
void Guass_down4_1(raw_t imgs[L0_ROW][L0_COL], raw_t output[L1_ROW][L1_COL]);
raw_t Guass_down4_2(raw_t imgs[L1_ROW][L1_COL]);

const raw_t Guass_kernel[25] = {2, 4, 5, 4, 2,
							4, 9, 12, 9, 4,
							5, 12, 15, 12, 5,
							4, 9, 12, 9, 4,
							2, 4, 5, 4, 2};

#endif
