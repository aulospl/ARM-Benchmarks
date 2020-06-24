

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
        
                mov r7, #0
                ldr r6, addr_number
                str r7, [r6]
            
                @DEBUG
                ldr r6, [r6]

 
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
        
                mov r7, #0
                ldr r6, addr_number
                str r7, [r6]
            
                @DEBUG
                ldr r6, [r6]

 
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
        
                mov r7, #0
                ldr r6, addr_number
                str r7, [r6]
            
                @DEBUG
                ldr r6, [r6]

 
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
        
                mov r7, #0
                ldr r6, addr_number
                str r7, [r6]
            
                @DEBUG
                ldr r6, [r6]

 
mov r3, #0
    i4_loop:
    mov r4, #0
            j4_loop:
             mov r5, #0
                k4_loop:
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
                    blt k4_loop

                add r4, #4
                push {r3}
                ldr r3, addr_number
                ldr r3, [r3]
                cmp r4, r3
                pop {r3}
                blt j4_loop

                add r3, #4
                push {r4}
                ldr r4, addr_number
                ldr r4, [r4]
                cmp r3, r4
                pop {r4}
                blt i4_loop
        
                mov r7, #0
                ldr r6, addr_number
                str r7, [r6]
            
                @DEBUG
                ldr r6, [r6]

 
mov r3, #0
    i5_loop:
    mov r4, #0
            j5_loop:
             mov r5, #0
                k5_loop:
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
                    blt k5_loop

                add r4, #4
                push {r3}
                ldr r3, addr_number
                ldr r3, [r3]
                cmp r4, r3
                pop {r3}
                blt j5_loop

                add r3, #4
                push {r4}
                ldr r4, addr_number
                ldr r4, [r4]
                cmp r3, r4
                pop {r4}
                blt i5_loop
        
                mov r7, #0
                ldr r6, addr_number
                str r7, [r6]
            
                @DEBUG
                ldr r6, [r6]

 
mov r3, #0
    i6_loop:
    mov r4, #0
            j6_loop:
             mov r5, #0
                k6_loop:
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
                    blt k6_loop

                add r4, #4
                push {r3}
                ldr r3, addr_number
                ldr r3, [r3]
                cmp r4, r3
                pop {r3}
                blt j6_loop

                add r3, #4
                push {r4}
                ldr r4, addr_number
                ldr r4, [r4]
                cmp r3, r4
                pop {r4}
                blt i6_loop
        
                mov r7, #0
                ldr r6, addr_number
                str r7, [r6]
            
                @DEBUG
                ldr r6, [r6]

 
mov r3, #0
    i7_loop:
    mov r4, #0
            j7_loop:
             mov r5, #0
                k7_loop:
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
                    blt k7_loop

                add r4, #4
                push {r3}
                ldr r3, addr_number
                ldr r3, [r3]
                cmp r4, r3
                pop {r3}
                blt j7_loop

                add r3, #4
                push {r4}
                ldr r4, addr_number
                ldr r4, [r4]
                cmp r3, r4
                pop {r4}
                blt i7_loop
        
                mov r7, #0
                ldr r6, addr_number
                str r7, [r6]
            
                @DEBUG
                ldr r6, [r6]

 
mov r3, #0
    i8_loop:
    mov r4, #0
            j8_loop:
             mov r5, #0
                k8_loop:
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
                    blt k8_loop

                add r4, #4
                push {r3}
                ldr r3, addr_number
                ldr r3, [r3]
                cmp r4, r3
                pop {r3}
                blt j8_loop

                add r3, #4
                push {r4}
                ldr r4, addr_number
                ldr r4, [r4]
                cmp r3, r4
                pop {r4}
                blt i8_loop
        
                mov r7, #0
                ldr r6, addr_number
                str r7, [r6]
            
                @DEBUG
                ldr r6, [r6]

 
mov r3, #0
    i9_loop:
    mov r4, #0
            j9_loop:
             mov r5, #0
                k9_loop:
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
                    blt k9_loop

                add r4, #4
                push {r3}
                ldr r3, addr_number
                ldr r3, [r3]
                cmp r4, r3
                pop {r3}
                blt j9_loop

                add r3, #4
                push {r4}
                ldr r4, addr_number
                ldr r4, [r4]
                cmp r3, r4
                pop {r4}
                blt i9_loop
        
                mov r7, #0
                ldr r6, addr_number
                str r7, [r6]
            
                @DEBUG
                ldr r6, [r6]

 
mov r3, #0
    i10_loop:
    mov r4, #0
            j10_loop:
             mov r5, #0
                k10_loop:
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
                    blt k10_loop

                add r4, #4
                push {r3}
                ldr r3, addr_number
                ldr r3, [r3]
                cmp r4, r3
                pop {r3}
                blt j10_loop

                add r3, #4
                push {r4}
                ldr r4, addr_number
                ldr r4, [r4]
                cmp r3, r4
                pop {r4}
                blt i10_loop
        
                mov r7, #0
                ldr r6, addr_number
                str r7, [r6]
            
                @DEBUG
                ldr r6, [r6]

 
mov r3, #0
    i11_loop:
    mov r4, #0
            j11_loop:
             mov r5, #0
                k11_loop:
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
                    blt k11_loop

                add r4, #4
                push {r3}
                ldr r3, addr_number
                ldr r3, [r3]
                cmp r4, r3
                pop {r3}
                blt j11_loop

                add r3, #4
                push {r4}
                ldr r4, addr_number
                ldr r4, [r4]
                cmp r3, r4
                pop {r4}
                blt i11_loop
        
                mov r7, #0
                ldr r6, addr_number
                str r7, [r6]
            
                @DEBUG
                ldr r6, [r6]

 
mov r3, #0
    i12_loop:
    mov r4, #0
            j12_loop:
             mov r5, #0
                k12_loop:
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
                    blt k12_loop

                add r4, #4
                push {r3}
                ldr r3, addr_number
                ldr r3, [r3]
                cmp r4, r3
                pop {r3}
                blt j12_loop

                add r3, #4
                push {r4}
                ldr r4, addr_number
                ldr r4, [r4]
                cmp r3, r4
                pop {r4}
                blt i12_loop
        
                mov r7, #0
                ldr r6, addr_number
                str r7, [r6]
            
                @DEBUG
                ldr r6, [r6]

 
mov r3, #0
    i13_loop:
    mov r4, #0
            j13_loop:
             mov r5, #0
                k13_loop:
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
                    blt k13_loop

                add r4, #4
                push {r3}
                ldr r3, addr_number
                ldr r3, [r3]
                cmp r4, r3
                pop {r3}
                blt j13_loop

                add r3, #4
                push {r4}
                ldr r4, addr_number
                ldr r4, [r4]
                cmp r3, r4
                pop {r4}
                blt i13_loop
        
                mov r7, #0
                ldr r6, addr_number
                str r7, [r6]
            
                @DEBUG
                ldr r6, [r6]

 
mov r3, #0
    i14_loop:
    mov r4, #0
            j14_loop:
             mov r5, #0
                k14_loop:
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
                    blt k14_loop

                add r4, #4
                push {r3}
                ldr r3, addr_number
                ldr r3, [r3]
                cmp r4, r3
                pop {r3}
                blt j14_loop

                add r3, #4
                push {r4}
                ldr r4, addr_number
                ldr r4, [r4]
                cmp r3, r4
                pop {r4}
                blt i14_loop
        
                mov r7, #0
                ldr r6, addr_number
                str r7, [r6]
            
                @DEBUG
                ldr r6, [r6]

 
mov r3, #0
    i15_loop:
    mov r4, #0
            j15_loop:
             mov r5, #0
                k15_loop:
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
                    blt k15_loop

                add r4, #4
                push {r3}
                ldr r3, addr_number
                ldr r3, [r3]
                cmp r4, r3
                pop {r3}
                blt j15_loop

                add r3, #4
                push {r4}
                ldr r4, addr_number
                ldr r4, [r4]
                cmp r3, r4
                pop {r4}
                blt i15_loop
        
                mov r7, #0
                ldr r6, addr_number
                str r7, [r6]
            
                @DEBUG
                ldr r6, [r6]

 
mov r3, #0
    i16_loop:
    mov r4, #0
            j16_loop:
             mov r5, #0
                k16_loop:
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
                    blt k16_loop

                add r4, #4
                push {r3}
                ldr r3, addr_number
                ldr r3, [r3]
                cmp r4, r3
                pop {r3}
                blt j16_loop

                add r3, #4
                push {r4}
                ldr r4, addr_number
                ldr r4, [r4]
                cmp r3, r4
                pop {r4}
                blt i16_loop
        
                mov r7, #0
                ldr r6, addr_number
                str r7, [r6]
            
                @DEBUG
                ldr r6, [r6]

 
mov r3, #0
    i17_loop:
    mov r4, #0
            j17_loop:
             mov r5, #0
                k17_loop:
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
                    blt k17_loop

                add r4, #4
                push {r3}
                ldr r3, addr_number
                ldr r3, [r3]
                cmp r4, r3
                pop {r3}
                blt j17_loop

                add r3, #4
                push {r4}
                ldr r4, addr_number
                ldr r4, [r4]
                cmp r3, r4
                pop {r4}
                blt i17_loop
        
                mov r7, #0
                ldr r6, addr_number
                str r7, [r6]
            
                @DEBUG
                ldr r6, [r6]

 
mov r3, #0
    i18_loop:
    mov r4, #0
            j18_loop:
             mov r5, #0
                k18_loop:
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
                    blt k18_loop

                add r4, #4
                push {r3}
                ldr r3, addr_number
                ldr r3, [r3]
                cmp r4, r3
                pop {r3}
                blt j18_loop

                add r3, #4
                push {r4}
                ldr r4, addr_number
                ldr r4, [r4]
                cmp r3, r4
                pop {r4}
                blt i18_loop
        
                mov r7, #0
                ldr r6, addr_number
                str r7, [r6]
            
                @DEBUG
                ldr r6, [r6]

 
mov r3, #0
    i19_loop:
    mov r4, #0
            j19_loop:
             mov r5, #0
                k19_loop:
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
                    blt k19_loop

                add r4, #4
                push {r3}
                ldr r3, addr_number
                ldr r3, [r3]
                cmp r4, r3
                pop {r3}
                blt j19_loop

                add r3, #4
                push {r4}
                ldr r4, addr_number
                ldr r4, [r4]
                cmp r3, r4
                pop {r4}
                blt i19_loop
        
                mov r7, #0
                ldr r6, addr_number
                str r7, [r6]
            
                @DEBUG
                ldr r6, [r6]


    bx lr

    .align 2
    addr_number: .word number
