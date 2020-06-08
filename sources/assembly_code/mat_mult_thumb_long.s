

.global mat_mult_thumb_long
.p2align 2
.type mat_mult_thumb_long,%function

.data
.align 2
number: .word 4000

.text
.code 32
.align 4
mat_mult_thumb_long:
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

 
mov r3, #0
    i0_loop:
    mov r4, #0
            j0_loop:
             mov r5, #0
                k0_loop:
                    ldr r6, [r0, +r3]
                    push {r0}
                    ldr r7, [r6, +r5]
                    ldr r6, [r1, +r5]
                    push {r1}
                    ldr r0, [r6, +r4]
                    ldr r6, [r2, +r3]
                    ldr r1, [r6, +r4]
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
                    blt k0_loop

                add r4, #4
                push {r3}
                ldr r3, addr_number
                ldr r3, [r3]
                cmp r4, r3
                pop {r3}
                blt j0_loop

                add r3, #4
                push {r4}
                ldr r4, addr_number
                ldr r4, [r4]
                cmp r3, r4
                pop {r4}
                blt i0_loop
                    
                     
mov r3, #0
    i1_loop:
    mov r4, #0
            j1_loop:
             mov r5, #0
                k1_loop:
                    ldr r6, [r0, +r3]
                    push {r0}
                    ldr r7, [r6, +r5]
                    ldr r6, [r1, +r5]
                    push {r1}
                    ldr r0, [r6, +r4]
                    ldr r6, [r2, +r3]
                    ldr r1, [r6, +r4]
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
                    blt k1_loop

                add r4, #4
                push {r3}
                ldr r3, addr_number
                ldr r3, [r3]
                cmp r4, r3
                pop {r3}
                blt j1_loop

                add r3, #4
                push {r4}
                ldr r4, addr_number
                ldr r4, [r4]
                cmp r3, r4
                pop {r4}
                blt i1_loop
                    
                     
mov r3, #0
    i2_loop:
    mov r4, #0
            j2_loop:
             mov r5, #0
                k2_loop:
                    ldr r6, [r0, +r3]
                    push {r0}
                    ldr r7, [r6, +r5]
                    ldr r6, [r1, +r5]
                    push {r1}
                    ldr r0, [r6, +r4]
                    ldr r6, [r2, +r3]
                    ldr r1, [r6, +r4]
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
                    blt k2_loop

                add r4, #4
                push {r3}
                ldr r3, addr_number
                ldr r3, [r3]
                cmp r4, r3
                pop {r3}
                blt j2_loop

                add r3, #4
                push {r4}
                ldr r4, addr_number
                ldr r4, [r4]
                cmp r3, r4
                pop {r4}
                blt i2_loop
                    
                     
mov r3, #0
    i3_loop:
    mov r4, #0
            j3_loop:
             mov r5, #0
                k3_loop:
                    ldr r6, [r0, +r3]
                    push {r0}
                    ldr r7, [r6, +r5]
                    ldr r6, [r1, +r5]
                    push {r1}
                    ldr r0, [r6, +r4]
                    ldr r6, [r2, +r3]
                    ldr r1, [r6, +r4]
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
                    blt k3_loop

                add r4, #4
                push {r3}
                ldr r3, addr_number
                ldr r3, [r3]
                cmp r4, r3
                pop {r3}
                blt j3_loop

                add r3, #4
                push {r4}
                ldr r4, addr_number
                ldr r4, [r4]
                cmp r3, r4
                pop {r4}
                blt i3_loop
                    
                    
    bx lr

    .align 2
    addr_number: .word number
