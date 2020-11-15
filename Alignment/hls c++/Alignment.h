#ifndef _ALIGNMENT_H
#define _ALIGNMENT_H

#include<ap_int.h>
#include<hls_math.h>

#define W 16

typedef ap_uint<W> raw_t;

#define ref_ROW 16
#define alt_ROW 24
#define ref_COL 16
#define alt_COL 24

#define SEARCH 9

void alignment(raw_t ref_imgs[ref_ROW][ref_COL],
		raw_t alt_imgs[alt_ROW][alt_COL],
		int *align_x, int *align_y);

#endif
