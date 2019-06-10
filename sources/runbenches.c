#include <stdio.h>
#include <stdlib.h>
#include <string.h>
extern void matmult_arm(int a[4][4], int b[4][4], int c[4][4]);
extern void matmult_thumb(int a[4][4], int b[4][4], int c[4][4]);

int main(int argc, char *argv[])
{
    int A_mats [10000][4][4];
	int B_mats[10000][4][4];
	int C_mats[10000][4][4];
	
	
	int i;
	//Initialize matrices
	for(i=0;i<1000;i++){
		srand(4242);	
		for(int j=0;j<4;j++){
			for(int k=0;k<4;k++){
				A_mats[i][j][k] = rand();
				B_mats[i][j][k] = rand();
			}
		}
	}
	
	if(strcmp(argv[2], "arm")){
		if(strcmp(argv[1], "matmult")){	
			while(1){
				for(i=0;i<10000;i++){
					matmult_arm(A_mats[i], B_mats[i],  C_mats[i]);
				}
			}
		}
		else if(strcmp(argv[1], "otherbench")){
			// Other benchmarks here
			while(1){

			}
		}

	}
	else if(strcmp(argv[2], "thumb") == 0){
		if(strcmp(argv[1], "matmult")){	
			while(1){
				for(i=0;i<10000;i++){
					matmult_thumb(A_mats[i], B_mats[i],  C_mats[i]);
				}
			}
		}
		else if(strcmp(argv[1], "otherbench")){
			// Other benchmarks here
			while(1){

			}
		}

	
	}


	

	return 0;
}
