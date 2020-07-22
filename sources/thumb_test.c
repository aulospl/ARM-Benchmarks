#include <stdio.h>
#include <stdlib.h>
#include <time.h>
//#include "utilities/usbmeter.h"
// library for usb-meter synching 
/* usb power-logger commands:
 * 		'n': new test set (new file)
 *		'b': begin logging test
 *		's': stop  logging test
 *		'e': end test set (end program)
 */

extern void mat_mult_thumb(int **a, int **b, int **c);

int **allocate_matrix();
void free_matrix(int **m);
void init_matrices(int **a, int **b, int **c);
void check_result(int **a, int **b, int **c);
int **alloc_array();
void init_array(int **array);

int main() {

	// Matrices initialization

	int **a, **b, **c;
	a = allocate_matrix();
	b = allocate_matrix();
	c = allocate_matrix();
	
	printf("INIT\n");
	init_matrices(NULL, NULL, c);

	printf("Mat Mult Thumb\n");
	mat_mult_thumb(a, b, c);
	
	printf("CHECKING\n");
	check_result(a, b, c);
	printf("FREE A\n");
	free_matrix(a);
	printf("FREE B\n");
	free_matrix(b);
	printf("FREE C\n");
	free_matrix(c);

	return 0;
}

/* Return pointer to 1000x1000 matrix */
int **allocate_matrix(){
/*	int **m;
	m = (int**)malloc(1000*sizeof(int*));
	for(int i=0;i<1000;i++){
		m[i] = (int*)malloc(1000*sizeof(int));
	}
	*/
	int **m;
	m = (int**) malloc(1000 * sizeof(int*));
	m[0] = (int*) malloc(1000*1000*sizeof(int));
	return m;
}

/* Free 1000x1000 matrix */
void free_matrix(int **m){
	for(int i=0;i<1000;i++){
		free(m[i]);
	}
	free(m);
}


// Cache test array initialization
// Check cache_array size to make certain it is bigger than L2 cache
int** alloc_array(){
	int i;
	int **array = (int**)malloc(4*sizeof(int*));
	if(array == NULL){
		printf("failure to allocate outer array\n");
		exit(1);
	}
	//262144
	for(i=0;i<4;i++){
		array[i] = (int*)malloc(65536*sizeof(int));
		if(array[i] == NULL){
			printf("failure to allocate inner array\n");
			exit(1);
		}
	}
	return array;
}

void init_array(int **array){
	for(int i=0;i<4;i++){
		for(int j=0;j<65536;j++){
			array[i][j]=j;
		}
	}
}
/* Initialize matrices A and B with random values and matrix C with zeroes */
void init_matrices(int **a, int **b, int **c){
	srand(4242);
	for(int i=0;i<1000;i++){
		for(int j=0;j<1000;j++){
			if(a != NULL && b != NULL){
				a[i][j] = rand();
				b[i][j] = rand();
			}
			c[i][j] = 0;
		}
	}
}

// Check is calculation is correct
void check_result(int **a, int **b, int **c){
	int i, j, k, f = 0, r;;
	for(i=0;i<1000;i++){
		for(j=0;j<1000;j++){
			r = 0;
			for(k=0;k<1000;k++){
					r = r + (a[i][k] * b[k][j]);
			}
			if(r != c[i][j]){
				printf("BUGOU i:%d j:%d c:%d r:%d\n", i, j, c[i][j], r);
				f = 1;
				break;
			}
		}
		if(f == 1){
			break;
		}
	}
	if (f == 0){
		printf("CORRETO\n");
	}
}
