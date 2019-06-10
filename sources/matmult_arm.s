.globl matmult_arm
.p2align 2
.type matmult_arm,%function

@ r0 is matrix A
@ r1 is matrix B
@ r2 is matric C
matmult_arm:
    .fnstart
	@ load matrix A from memory

	@ load matrix B from memory

	@ initialize matrix C
	
	@ multiply A x B

	@ store matrix C into memory

	bx lr
	.fnend
