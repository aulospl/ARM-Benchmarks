@ Access 1MB array of integers with ARM instruction set
@ Operations: Sequential and random read and write
@ Value of array is passed through pointer 'cache'
@ void mem_access_arm(*cache)
.global mem_access_arm
.p2align 2
.type mem_access_arm,%function

.data
.balign 4
array_size: .word 65535
.balign 4
tmp: .word 0

.text
.balign 4
mem_access_arm:
	.fnstart
	@ r0 = array,
	push {r1, r2, r3, r4, r5, r6, r7, lr}
	
	ldr r1, array_size_address
	ldr r1, [r1]
	
	mov r2, #4
	mov r3, #0
	
	outer_loop:
		mov r4, #0
		inner_loop:
			
			@ do stuff here
			@ ya know... code stuff
			@ just code

			add r4, #1
			cmp r1, r4 
			blt inner_loop
		
		add r3, #1
		cmp r2, r3 
		blt outer_loop
	


	pop {r1, r2, r3, r4, r5, r6, r7, lr}
	bx lr
	.fnend

tmp_addr : .word tmp
array_size_address : .word array_size