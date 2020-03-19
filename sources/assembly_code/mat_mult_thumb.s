@ Simple 1000x1000 matrix multiplication with THUMB instruction set
@ Value of square matrices A and B are passed through pointers 'a' and 'b'
@ Matrix C (pointer 'c') is the return address of the resulting matrix
@ void mat_mult_arm(int** a, int** b, int** c)
.global mat_mult_thumb
.p2align 2
.type mat_mult_thumb,%function

.data
.align 2
number: .word 4000

.text
.code 32
.align 4
mat_mult_thumb:
	.fnstart
	push {lr}
		
	blx thumb_func	
	
	pop {lr}	
	bx lr
	.fnend

.code 16
@.thumb
@.syntax unified
.align 2
thumb_func:
	@ Multiply matA and matB into matC
	@ r3 = i , r4 = j, r5 = k

	mov r3, #0
	i_loop:
		mov r4, #0
		j_loop:
			mov r5, #0
	 		k_loop:
				
				@ r6 is temp address to access element in matrix
				@ calculate memory address for A[i][k]
				ldr r6, [r0, +r3]
				push {r0}
				@ load element i, k from matrix A
				ldr r7, [r6, +r5]			

				@ calculate memory address for B[k][j]
				ldr r6, [r1, +r5]
				push {r1}
				@ load element k, j from matrix B
				ldr r0, [r6, +r4]

				@ calculate memory address for C[i][j]
				ldr r6, [r2, +r3]
				
				@ load element i, j from matrix C
				ldr r1, [r6, +r4] @ was r3

				@ multiply A[i][k] with B[k][j] and add to C[i][j]
				mul r7, r7, r0
				add r1, r1, r7
				str r1, [r6, +r4]

				pop {r1}
				pop {r0}

				add r5, #4
				push {r3}
				ldr r3, addr_number
				ldr r3, [r3]
				cmp r5, r3
				pop {r3}
				blt k_loop
				
			add r4, #4
			push {r3}
			ldr r3, addr_number
			ldr r3, [r3]
			cmp r4, r3
			pop {r3}
			blt j_loop
		
		add r3, #4
		push {r4}
		ldr r4, addr_number
		ldr r4, [r4]
		cmp r3, r4
		pop {r4}

		blt i_loop
	bx lr

.align 2
addr_number: .word number

