#include "mat_mult_c.h"

//__attribute__((target("thumb")))
void mat_mult_c(int **a, int **b, int **c){
	int i, j, k;

	for (i = 0;i < SIZE;i++) {
		for (j = 0; j < SIZE;j++) {
			for (k = 0; k < SIZE; k++ ) {
				c[i][j] += a[i][k] * b[k][j];
			}
		}
	}
}

