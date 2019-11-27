@ Access 1MB array of integers with ARM instruction set
@ Operations: Sequential and random read and write
@ Value of array is passed through pointer 'cache'
@ void mem_access_arm(*cache)
.global mem_access_arm
.p2align 2
.type mem_access_arm,%function
.extern printf
.data
.balign 4
array_size: .word 65535
.balign 4
tmp: .word 0
.balign 4
stri: .asciz " %d\n"

.text
.balign 4
mem_access_arm:
	.fnstart
	@ r0 = array,
	push {r1, r2, r3, r4, r5, r6, lr}
	
	@ max array size
	ldr r1, array_size_address
	ldr r1, [r1]

	@ load addr of tmp var
	ldr r5, tmp_addr
	
	@ number of arrays	
	mov r2, #4

	@ init outer counter
	mov r3, #0
		
	@ init inner counter
	mov r4, #0
	
	outer_loop:
		inner_loop:
			
			@ read element [r4][r1] and write it into tmp
			ldr r6, [r0, +r4]
			str r6, [r5]
			
			@ increment and inner loop
			add r4, #1
			cmp r4, r1 
			blt inner_loop
		
		@ increment and outer loop
		add r3, #1
		cmp r3, r2
		blt outer_loop
	

	pop {r1, r2, r3, r4, r5, r6, lr}
	bx lr
	.fnend

tmp_addr : .word tmp
array_size_address : .word array_size
