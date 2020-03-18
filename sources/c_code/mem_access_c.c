#include "mem_access_c.h"

//__attribute__((target("thumb")))
void mem_access_c(int **array){
	int tmp;
	for (int i = 0;i < SIZE;i++) {
		for (int j = 0; j < SIZE; j++ ) {
			tmp = array[i][j];
		}
	}

}
