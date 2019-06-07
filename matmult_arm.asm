.globl matmult_arm
.p2align 2
.type matmult_arm,%function

matmult_arm:
    .fnstart
    mov r1, #1
    add r0, r0, r1
    .fnend