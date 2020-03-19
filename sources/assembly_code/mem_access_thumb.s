@ Access 1MB array of integers with ARM instruction set
@ Operations: Sequential and random read and write
@ Value of array is passed through pointer 'cache'
@ void mem_access_arm(*cache)
.global mem_access_thumb
.p2align 2
.type mem_access_arm,%function

.data
.align 2
array_size: .word 65535
.align 2
tmp: .word 0

.text
.code 32
.balign 4
mem_access_thumb:
	.fnstart
	@ r0 = array,
	push {lr}
	
	@ branch to THUMB mode
	blx thumb_code

	pop {lr}
	bx lr
	.fnend


.code 16
.align 2
thumb_code:
@	push {r1} 
@	push {r2}
@	push {r3} 
@	push {r4}
@	push {r5} 
@	push {r6}
	@ max array size
	ldr r7, array_size_address
	ldr r7, [r7]

	@ load addr of tmp var
	ldr r5, tmp_addr
	
	@ number of arrays	
	mov r2, #4

	@ init outer counter
	mov r3, #0
		
	outer_loop:
		@ init inner counter
		mov r4, #0
		inner_loop:
			
			@ read element [r4][r1] and write it into tmp
			ldr r6, [r0, +r1]
			str r6, [r5]
			
			@ increment and inner loop
			add r4, #1
			cmp r7, r4 
			blt inner_loop
		
		@ increment and outer loop
		add r3, #1
		cmp r2, r3 
		blt outer_loop
	
@	push {r1} 
@	push {r2}
@	push {r3} 
@	push {r4}
@	push {r5} 
@	push {r6}
	bx lr

.align 2
tmp_addr : .word tmp
.align 2
array_size_address : .word array_size
