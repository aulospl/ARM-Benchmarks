header = """.global mat_mult_arm_long
            .p2align 2
            .type mat_mult_arm_long,%function

            .data
            .balign 4
            size_bytes: .word 4000000 

            .text
            .balign 4
            mat_mult_arm_long:
            .fnstart
                push {r4, r5, r6, r7, r8, lr}
                mov r8, #4000"""

foot = """
        pop {r4, r5, r6, r7, r8, lr}    
        bx lr
    .fnend

    addr_size_bytes: .word size_bytes
"""

func = """ 
            mov r9, #0
            mov r10, #0

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
		cmp r5, r8"""


print('test')
f = open('mat_mult_arm_long.s', 'w')
f.write(header)


for c in range(0, 2000):
    new_func = func.replace('i_loop', 'i'+str(c)+'_loop')
    new_func = new_func.replace('j_loop', 'j'+str(c)+'_loop')
    new_func = new_func.replace('k_loop', 'k'+str(c)+'_loop')
    f.write(new_func)
 

f.write(foot)


f.close()






