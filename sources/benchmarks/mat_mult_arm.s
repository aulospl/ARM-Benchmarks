@ Simple 1000x1000 matrix multiplication with ARM instruction set
@ Value of square matrices A and B are passed through pointers 'a' and 'b'
@ Matrix C (pointer 'c') is the return address of the resulting matrix
@ void mat_mult_arm(int** a, int** b, int** c)
.global mat_mult_arm
.p2align 2
.type mat_mult_arm,%function

.data
.balign 4
size_bytes: .word 4000000 

.text
.balign 4
mat_mult_arm:
	.fnstart
	push {r4, r5, r6, r7, r8, lr}
	
	@ load 4 million into r4, due to number size cannot use immediate load
	@ldr r4, addr_size_bytes
	@ldr r4, [r4]
	
	mov r8, #4000
	@mov r3, #1000
	@ Multiply matA and matB into matC
	@ r5 = i , r6 = j, r7 = k, r8 = 1000th element, r4 = 1000th element
	
	mov r5, #0
	i_loop:
		mov r6, #0
		j_loop:
			mov r7, #0
	 		k_loop:
				mov r3, #1000
				@ r9 is temp address to access element in matrix
				@ calculate memory address for A[i][k]
				ldr r9, [r0, +r5]
				@mul r9, r5, r3
				@add r9, r9, r7

				@ load element i, k from matrix A
				ldr r10, [r9, +r7]			

				@ calculate memory address for B[k][j]
				ldr r9, [r1, +r7]
				@mul r9, r7, r3
				@add r9, r9, r6

				@ load element k, j from matrix B
				ldr r4, [r9, +r6]

				@ calculate memory address for C[i][j]
				ldr r9, [r2, +r5]
				@mul r9, r5, r3
				@add r9, r9, r6
				
				@ load element i, j from matrix C
				ldr r3, [r9, +r6]

				@ multiply A[i][k] with B[k][j] and add to C[i][j]
				mul r10, r10, r4
				add r3, r3, r10
				str r3, [r9, +r6]

				add r7, #4
				cmp r7, r8
				blt k_loop
				
			add r6, #4
			cmp r6, r8
			blt j_loop
		
		add r5, #4
		cmp r5, r8
		blt i_loop
		
	
	pop {r4, r5, r6, r7, r8, lr}	
	bx lr
	.fnend

addr_size_bytes: .word size_bytes

