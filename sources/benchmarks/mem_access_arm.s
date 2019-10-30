@ Access 1MB array of integers with ARM instruction set
@ Operations: Sequential and random read and write
@ Value of array is passed through pointer 'cache'
@ void mem_access_arm(*cache)
.global mem_access_arm
.p2align 2
.type mem_access_arm,%function

.data
.balign 4
array_size: .word 262144
.balign 4
tmp: .word 0

.text
.balign 4
mem_access_arm:
	.fnstart
	@ r0 = cache, r4 = tmp, r5 = max, r6 = index, r7 = tmp_var
	push {r4, r5, r6, r7, lr}
	
	ldr r7, tmp_addr

	ldr r5, array_size_address	
	ldr r5, [r5]
	
	ldr r4, [r0]

	mov r6, #0
	
	loop:
	ldr r4, [r0, +r6]
	str r4, [r7]

	add r6, #4
	cmp r6, r5
	ble loop 

	pop {r4, r5, r6, r7, lr}
	bx lr
	.fnend

tmp_addr : .word tmp
array_size_address : .word array_size
