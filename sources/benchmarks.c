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

/* extern assembly functions to bench */
extern void mat_mult_arm(int **a, int **b, int **c); 
extern void mat_mult_thumb(int **a, int **b, int **c);
extern void mem_access_arm(int *cache);

int **allocate_matrix();
void free_matrix(int **m);
void init_matrices(int **a, int **b, int **c);
void check_result(int **a, int **b, int **c);
int* init_cache_array();

int main() {

	// Matrices initialization
	int **a, **b, **c;
	a = allocate_matrix();
	b = allocate_matrix();
	c = allocate_matrix();
	
	// Memory array initialization
	int *cache = NULL;
	
	/* Run benchmarks */
	
	//usb_synch('n');
	//printf("ARM MATRIX MULTIPLICATION\n");
	//init_matrices(a, b, c);
	//usb_synch(argv[1], 'b'); //begin
	//mat_mult_arm(a, b, c);
	
	//usb_synch(argv[1], 's'); //stop
	//printf("THUMB MATRIX MULTIPLICATION\n");
	//init_matrices(NULL, NULL, c);
	//mat_mult_thumb(a, b, c);
	//check_result(a, b, c);
	//printf("DONE\n");

	//printf("THUMB MATRIX MULTIPLICATION\n");
	//usb_synch(argv[1], 'b'); //begin
	//mat_mult_thumb(a, b);
	//usb_synch(argv[1], 's'); //stop
	//printf("DONE"\n);
	//usb_synch('e');
	
	// Free matrix memory
	// free_matrix(a);
	// free_matrix(b);
	// free_matrix(c);
	
	/* Memory access (cacheless) */
	cache = init_cache_array();
	mem_access_arm(cache);
	printf("THUMB MEMORY ACCESS\n");
	
	free(cache);
	
	
	return 0;
}

/* Return pointer to 1000x1000 matrix */
int **allocate_matrix(){
	int **m;
	m = (int**)malloc(1000*sizeof(int*));
	for(int i=0;i<1000;i++){
		m[i] = (int*)malloc(1000*sizeof(int));
	}
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
int* init_cache_array(){
	int* cache = (int*)malloc(262144*sizeof(int));
	if(cache == NULL){
		printf("failure to allocate array\n");
		exit(1);
	}
	for(int i=0;i<262144;i++){
		cache[i] = i+1;
	}
	return cache;
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
