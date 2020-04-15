
execs/mat_mult/mat_mult_arm_O3:     file format elf32-littlearm


Disassembly of section .init:

00010478 <_init>:
   10478:	e92d4008 	push	{r3, lr}
   1047c:	eb000045 	bl	10598 <call_weak_fn>
   10480:	e8bd8008 	pop	{r3, pc}

Disassembly of section .plt:

00010484 <.plt>:
   10484:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
   10488:	e59fe004 	ldr	lr, [pc, #4]	; 10494 <.plt+0x10>
   1048c:	e08fe00e 	add	lr, pc, lr
   10490:	e5bef008 	ldr	pc, [lr, #8]!
   10494:	00010b6c 	.word	0x00010b6c

00010498 <printf@plt>:
   10498:	e28fc600 	add	ip, pc, #0, 12
   1049c:	e28cca10 	add	ip, ip, #16, 20	; 0x10000
   104a0:	e5bcfb6c 	ldr	pc, [ip, #2924]!	; 0xb6c

000104a4 <free@plt>:
   104a4:	e28fc600 	add	ip, pc, #0, 12
   104a8:	e28cca10 	add	ip, ip, #16, 20	; 0x10000
   104ac:	e5bcfb64 	ldr	pc, [ip, #2916]!	; 0xb64

000104b0 <puts@plt>:
   104b0:	e28fc600 	add	ip, pc, #0, 12
   104b4:	e28cca10 	add	ip, ip, #16, 20	; 0x10000
   104b8:	e5bcfb5c 	ldr	pc, [ip, #2908]!	; 0xb5c

000104bc <malloc@plt>:
   104bc:	e28fc600 	add	ip, pc, #0, 12
   104c0:	e28cca10 	add	ip, ip, #16, 20	; 0x10000
   104c4:	e5bcfb54 	ldr	pc, [ip, #2900]!	; 0xb54

000104c8 <__libc_start_main@plt>:
   104c8:	e28fc600 	add	ip, pc, #0, 12
   104cc:	e28cca10 	add	ip, ip, #16, 20	; 0x10000
   104d0:	e5bcfb4c 	ldr	pc, [ip, #2892]!	; 0xb4c

000104d4 <__gmon_start__@plt>:
   104d4:	e28fc600 	add	ip, pc, #0, 12
   104d8:	e28cca10 	add	ip, ip, #16, 20	; 0x10000
   104dc:	e5bcfb44 	ldr	pc, [ip, #2884]!	; 0xb44

000104e0 <exit@plt>:
   104e0:	e28fc600 	add	ip, pc, #0, 12
   104e4:	e28cca10 	add	ip, ip, #16, 20	; 0x10000
   104e8:	e5bcfb3c 	ldr	pc, [ip, #2876]!	; 0xb3c

000104ec <srand@plt>:
   104ec:	e28fc600 	add	ip, pc, #0, 12
   104f0:	e28cca10 	add	ip, ip, #16, 20	; 0x10000
   104f4:	e5bcfb34 	ldr	pc, [ip, #2868]!	; 0xb34

000104f8 <rand@plt>:
   104f8:	e28fc600 	add	ip, pc, #0, 12
   104fc:	e28cca10 	add	ip, ip, #16, 20	; 0x10000
   10500:	e5bcfb2c 	ldr	pc, [ip, #2860]!	; 0xb2c

00010504 <abort@plt>:
   10504:	e28fc600 	add	ip, pc, #0, 12
   10508:	e28cca10 	add	ip, ip, #16, 20	; 0x10000
   1050c:	e5bcfb24 	ldr	pc, [ip, #2852]!	; 0xb24

Disassembly of section .text:

00010510 <main>:
   10510:	e92d4070 	push	{r4, r5, r6, lr}
   10514:	eb00005a 	bl	10684 <allocate_matrix>
   10518:	e1a06000 	mov	r6, r0
   1051c:	eb000058 	bl	10684 <allocate_matrix>
   10520:	e1a05000 	mov	r5, r0
   10524:	eb000056 	bl	10684 <allocate_matrix>
   10528:	e1a01005 	mov	r1, r5
   1052c:	e1a02000 	mov	r2, r0
   10530:	e1a04000 	mov	r4, r0
   10534:	e1a00006 	mov	r0, r6
   10538:	eb0000eb 	bl	108ec <mat_mult_arm>
   1053c:	e1a00006 	mov	r0, r6
   10540:	eb00005e 	bl	106c0 <free_matrix>
   10544:	e1a00005 	mov	r0, r5
   10548:	eb00005c 	bl	106c0 <free_matrix>
   1054c:	e1a00004 	mov	r0, r4
   10550:	eb00005a 	bl	106c0 <free_matrix>
   10554:	e3a00000 	mov	r0, #0
   10558:	e8bd8070 	pop	{r4, r5, r6, pc}

0001055c <_start>:
   1055c:	e3a0b000 	mov	fp, #0
   10560:	e3a0e000 	mov	lr, #0
   10564:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
   10568:	e1a0200d 	mov	r2, sp
   1056c:	e52d2004 	push	{r2}		; (str r2, [sp, #-4]!)
   10570:	e52d0004 	push	{r0}		; (str r0, [sp, #-4]!)
   10574:	e59fc010 	ldr	ip, [pc, #16]	; 1058c <_start+0x30>
   10578:	e52dc004 	push	{ip}		; (str ip, [sp, #-4]!)
   1057c:	e59f000c 	ldr	r0, [pc, #12]	; 10590 <_start+0x34>
   10580:	e59f300c 	ldr	r3, [pc, #12]	; 10594 <_start+0x38>
   10584:	ebffffcf 	bl	104c8 <__libc_start_main@plt>
   10588:	ebffffdd 	bl	10504 <abort@plt>
   1058c:	000109b8 	.word	0x000109b8
   10590:	00010510 	.word	0x00010510
   10594:	00010958 	.word	0x00010958

00010598 <call_weak_fn>:
   10598:	e59f3014 	ldr	r3, [pc, #20]	; 105b4 <call_weak_fn+0x1c>
   1059c:	e59f2014 	ldr	r2, [pc, #20]	; 105b8 <call_weak_fn+0x20>
   105a0:	e08f3003 	add	r3, pc, r3
   105a4:	e7932002 	ldr	r2, [r3, r2]
   105a8:	e3520000 	cmp	r2, #0
   105ac:	012fff1e 	bxeq	lr
   105b0:	eaffffc7 	b	104d4 <__gmon_start__@plt>
   105b4:	00010a58 	.word	0x00010a58
   105b8:	00000034 	.word	0x00000034

000105bc <deregister_tm_clones>:
   105bc:	e59f301c 	ldr	r3, [pc, #28]	; 105e0 <deregister_tm_clones+0x24>
   105c0:	e59f001c 	ldr	r0, [pc, #28]	; 105e4 <deregister_tm_clones+0x28>
   105c4:	e0433000 	sub	r3, r3, r0
   105c8:	e3530006 	cmp	r3, #6
   105cc:	912fff1e 	bxls	lr
   105d0:	e59f3010 	ldr	r3, [pc, #16]	; 105e8 <deregister_tm_clones+0x2c>
   105d4:	e3530000 	cmp	r3, #0
   105d8:	012fff1e 	bxeq	lr
   105dc:	e12fff13 	bx	r3
   105e0:	00021047 	.word	0x00021047
   105e4:	00021044 	.word	0x00021044
   105e8:	00000000 	.word	0x00000000

000105ec <register_tm_clones>:
   105ec:	e59f1024 	ldr	r1, [pc, #36]	; 10618 <register_tm_clones+0x2c>
   105f0:	e59f0024 	ldr	r0, [pc, #36]	; 1061c <register_tm_clones+0x30>
   105f4:	e0411000 	sub	r1, r1, r0
   105f8:	e1a01141 	asr	r1, r1, #2
   105fc:	e0811fa1 	add	r1, r1, r1, lsr #31
   10600:	e1b010c1 	asrs	r1, r1, #1
   10604:	012fff1e 	bxeq	lr
   10608:	e59f3010 	ldr	r3, [pc, #16]	; 10620 <register_tm_clones+0x34>
   1060c:	e3530000 	cmp	r3, #0
   10610:	012fff1e 	bxeq	lr
   10614:	e12fff13 	bx	r3
   10618:	00021044 	.word	0x00021044
   1061c:	00021044 	.word	0x00021044
   10620:	00000000 	.word	0x00000000

00010624 <__do_global_dtors_aux>:
   10624:	e92d4010 	push	{r4, lr}
   10628:	e59f4018 	ldr	r4, [pc, #24]	; 10648 <__do_global_dtors_aux+0x24>
   1062c:	e5d43000 	ldrb	r3, [r4]
   10630:	e3530000 	cmp	r3, #0
   10634:	18bd8010 	popne	{r4, pc}
   10638:	ebffffdf 	bl	105bc <deregister_tm_clones>
   1063c:	e3a03001 	mov	r3, #1
   10640:	e5c43000 	strb	r3, [r4]
   10644:	e8bd8010 	pop	{r4, pc}
   10648:	00021044 	.word	0x00021044

0001064c <frame_dummy>:
   1064c:	e59f0028 	ldr	r0, [pc, #40]	; 1067c <frame_dummy+0x30>
   10650:	e5903000 	ldr	r3, [r0]
   10654:	e3530000 	cmp	r3, #0
   10658:	1a000000 	bne	10660 <frame_dummy+0x14>
   1065c:	eaffffe2 	b	105ec <register_tm_clones>
   10660:	e59f3018 	ldr	r3, [pc, #24]	; 10680 <frame_dummy+0x34>
   10664:	e3530000 	cmp	r3, #0
   10668:	0afffffb 	beq	1065c <frame_dummy+0x10>
   1066c:	e92d4010 	push	{r4, lr}
   10670:	e12fff33 	blx	r3
   10674:	e8bd4010 	pop	{r4, lr}
   10678:	eaffffdb 	b	105ec <register_tm_clones>
   1067c:	00020f0c 	.word	0x00020f0c
   10680:	00000000 	.word	0x00000000

00010684 <allocate_matrix>:
   10684:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
   10688:	e3a00efa 	mov	r0, #4000	; 0xfa0
   1068c:	ebffff8a 	bl	104bc <malloc@plt>
   10690:	e3a06efa 	mov	r6, #4000	; 0xfa0
   10694:	e2805ef9 	add	r5, r0, #3984	; 0xf90
   10698:	e1a07000 	mov	r7, r0
   1069c:	e285500c 	add	r5, r5, #12
   106a0:	e2404004 	sub	r4, r0, #4
   106a4:	e1a00006 	mov	r0, r6
   106a8:	ebffff83 	bl	104bc <malloc@plt>
   106ac:	e5a40004 	str	r0, [r4, #4]!
   106b0:	e1540005 	cmp	r4, r5
   106b4:	1afffffa 	bne	106a4 <allocate_matrix+0x20>
   106b8:	e1a00007 	mov	r0, r7
   106bc:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}

000106c0 <free_matrix>:
   106c0:	e92d4070 	push	{r4, r5, r6, lr}
   106c4:	e2805ef9 	add	r5, r0, #3984	; 0xf90
   106c8:	e1a06000 	mov	r6, r0
   106cc:	e285500c 	add	r5, r5, #12
   106d0:	e2404004 	sub	r4, r0, #4
   106d4:	e5b40004 	ldr	r0, [r4, #4]!
   106d8:	ebffff71 	bl	104a4 <free@plt>
   106dc:	e1550004 	cmp	r5, r4
   106e0:	1afffffb 	bne	106d4 <free_matrix+0x14>
   106e4:	e1a00006 	mov	r0, r6
   106e8:	e8bd4070 	pop	{r4, r5, r6, lr}
   106ec:	eaffff6c 	b	104a4 <free@plt>

000106f0 <alloc_array>:
   106f0:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
   106f4:	e3a00010 	mov	r0, #16
   106f8:	ebffff6f 	bl	104bc <malloc@plt>
   106fc:	e2507000 	subs	r7, r0, #0
   10700:	12474004 	subne	r4, r7, #4
   10704:	1287600c 	addne	r6, r7, #12
   10708:	13a05701 	movne	r5, #262144	; 0x40000
   1070c:	0a00000c 	beq	10744 <alloc_array+0x54>
   10710:	e1a00005 	mov	r0, r5
   10714:	ebffff68 	bl	104bc <malloc@plt>
   10718:	e3500000 	cmp	r0, #0
   1071c:	e5a40004 	str	r0, [r4, #4]!
   10720:	0a000003 	beq	10734 <alloc_array+0x44>
   10724:	e1540006 	cmp	r4, r6
   10728:	1afffff8 	bne	10710 <alloc_array+0x20>
   1072c:	e1a00007 	mov	r0, r7
   10730:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}
   10734:	e59f0018 	ldr	r0, [pc, #24]	; 10754 <alloc_array+0x64>
   10738:	ebffff5c 	bl	104b0 <puts@plt>
   1073c:	e3a00001 	mov	r0, #1
   10740:	ebffff66 	bl	104e0 <exit@plt>
   10744:	e59f000c 	ldr	r0, [pc, #12]	; 10758 <alloc_array+0x68>
   10748:	ebffff58 	bl	104b0 <puts@plt>
   1074c:	e3a00001 	mov	r0, #1
   10750:	ebffff62 	bl	104e0 <exit@plt>
   10754:	000109e8 	.word	0x000109e8
   10758:	000109c8 	.word	0x000109c8

0001075c <init_array>:
   1075c:	e2401004 	sub	r1, r0, #4
   10760:	e280000c 	add	r0, r0, #12
   10764:	e5b12004 	ldr	r2, [r1, #4]!
   10768:	e3a03000 	mov	r3, #0
   1076c:	e2422004 	sub	r2, r2, #4
   10770:	e5a23004 	str	r3, [r2, #4]!
   10774:	e2833001 	add	r3, r3, #1
   10778:	e3530801 	cmp	r3, #65536	; 0x10000
   1077c:	1afffffb 	bne	10770 <init_array+0x14>
   10780:	e1500001 	cmp	r0, r1
   10784:	1afffff6 	bne	10764 <init_array+0x8>
   10788:	e12fff1e 	bx	lr

0001078c <init_matrices>:
   1078c:	e92d4ff0 	push	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
   10790:	e1a09000 	mov	r9, r0
   10794:	e24dd00c 	sub	sp, sp, #12
   10798:	e1a06000 	mov	r6, r0
   1079c:	e3510000 	cmp	r1, #0
   107a0:	13590000 	cmpne	r9, #0
   107a4:	e2863efa 	add	r3, r6, #4000	; 0xfa0
   107a8:	e59f008c 	ldr	r0, [pc, #140]	; 1083c <init_matrices+0xb0>
   107ac:	e1a07002 	mov	r7, r2
   107b0:	13a09001 	movne	r9, #1
   107b4:	03a09000 	moveq	r9, #0
   107b8:	e1a08001 	mov	r8, r1
   107bc:	e58d3004 	str	r3, [sp, #4]
   107c0:	ebffff49 	bl	104ec <srand@plt>
   107c4:	e3a05000 	mov	r5, #0
   107c8:	e3590000 	cmp	r9, #0
   107cc:	1a00000d 	bne	10808 <init_matrices+0x7c>
   107d0:	e5972000 	ldr	r2, [r7]
   107d4:	e1a03009 	mov	r3, r9
   107d8:	e7825003 	str	r5, [r2, r3]
   107dc:	e2833004 	add	r3, r3, #4
   107e0:	e3530efa 	cmp	r3, #4000	; 0xfa0
   107e4:	1afffffb 	bne	107d8 <init_matrices+0x4c>
   107e8:	e59d3004 	ldr	r3, [sp, #4]
   107ec:	e2866004 	add	r6, r6, #4
   107f0:	e1530006 	cmp	r3, r6
   107f4:	e2888004 	add	r8, r8, #4
   107f8:	e2877004 	add	r7, r7, #4
   107fc:	1afffff1 	bne	107c8 <init_matrices+0x3c>
   10800:	e28dd00c 	add	sp, sp, #12
   10804:	e8bd8ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, pc}
   10808:	e3a04000 	mov	r4, #0
   1080c:	e596a000 	ldr	sl, [r6]
   10810:	ebffff38 	bl	104f8 <rand@plt>
   10814:	e598b000 	ldr	fp, [r8]
   10818:	e78a0004 	str	r0, [sl, r4]
   1081c:	ebffff35 	bl	104f8 <rand@plt>
   10820:	e5973000 	ldr	r3, [r7]
   10824:	e78b0004 	str	r0, [fp, r4]
   10828:	e7835004 	str	r5, [r3, r4]
   1082c:	e2844004 	add	r4, r4, #4
   10830:	e3540efa 	cmp	r4, #4000	; 0xfa0
   10834:	1afffff4 	bne	1080c <init_matrices+0x80>
   10838:	eaffffea 	b	107e8 <init_matrices+0x5c>
   1083c:	00001092 	.word	0x00001092

00010840 <check_result>:
   10840:	e92d4ff0 	push	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
   10844:	e2400004 	sub	r0, r0, #4
   10848:	e241b004 	sub	fp, r1, #4
   1084c:	e24dd00c 	sub	sp, sp, #12
   10850:	e242a004 	sub	sl, r2, #4
   10854:	e3a01000 	mov	r1, #0
   10858:	e5b09004 	ldr	r9, [r0, #4]!
   1085c:	e5ba8004 	ldr	r8, [sl, #4]!
   10860:	e2897ef9 	add	r7, r9, #3984	; 0xf90
   10864:	e287700c 	add	r7, r7, #12
   10868:	e2499004 	sub	r9, r9, #4
   1086c:	e2488004 	sub	r8, r8, #4
   10870:	e3a02000 	mov	r2, #0
   10874:	e1a06102 	lsl	r6, r2, #2
   10878:	e1a03009 	mov	r3, r9
   1087c:	e1a0e00b 	mov	lr, fp
   10880:	e3a0c000 	mov	ip, #0
   10884:	e5be4004 	ldr	r4, [lr, #4]!
   10888:	e5b35004 	ldr	r5, [r3, #4]!
   1088c:	e7944006 	ldr	r4, [r4, r6]
   10890:	e1570003 	cmp	r7, r3
   10894:	e02cc495 	mla	ip, r5, r4, ip
   10898:	1afffff9 	bne	10884 <check_result+0x44>
   1089c:	e5b83004 	ldr	r3, [r8, #4]!
   108a0:	e15c0003 	cmp	ip, r3
   108a4:	1a000009 	bne	108d0 <check_result+0x90>
   108a8:	e2822001 	add	r2, r2, #1
   108ac:	e3520ffa 	cmp	r2, #1000	; 0x3e8
   108b0:	1affffef 	bne	10874 <check_result+0x34>
   108b4:	e2811001 	add	r1, r1, #1
   108b8:	e3510ffa 	cmp	r1, #1000	; 0x3e8
   108bc:	1affffe5 	bne	10858 <check_result+0x18>
   108c0:	e59f001c 	ldr	r0, [pc, #28]	; 108e4 <check_result+0xa4>
   108c4:	e28dd00c 	add	sp, sp, #12
   108c8:	e8bd4ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
   108cc:	eafffef7 	b	104b0 <puts@plt>
   108d0:	e58dc000 	str	ip, [sp]
   108d4:	e59f000c 	ldr	r0, [pc, #12]	; 108e8 <check_result+0xa8>
   108d8:	ebfffeee 	bl	10498 <printf@plt>
   108dc:	e28dd00c 	add	sp, sp, #12
   108e0:	e8bd8ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, pc}
   108e4:	00010a24 	.word	0x00010a24
   108e8:	00010a08 	.word	0x00010a08

000108ec <mat_mult_arm>:
   108ec:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
   108f0:	e3a08efa 	mov	r8, #4000	; 0xfa0
   108f4:	e3a05000 	mov	r5, #0

000108f8 <i_loop>:
   108f8:	e3a06000 	mov	r6, #0

000108fc <j_loop>:
   108fc:	e3a07000 	mov	r7, #0

00010900 <k_loop>:
   10900:	e3a03ffa 	mov	r3, #1000	; 0x3e8
   10904:	e7909005 	ldr	r9, [r0, r5]
   10908:	e799a007 	ldr	sl, [r9, r7]
   1090c:	e7919007 	ldr	r9, [r1, r7]
   10910:	e7994006 	ldr	r4, [r9, r6]
   10914:	e7929005 	ldr	r9, [r2, r5]
   10918:	e7993006 	ldr	r3, [r9, r6]
   1091c:	e00a049a 	mul	sl, sl, r4
   10920:	e083300a 	add	r3, r3, sl
   10924:	e7893006 	str	r3, [r9, r6]
   10928:	e2877004 	add	r7, r7, #4
   1092c:	e1570008 	cmp	r7, r8
   10930:	bafffff2 	blt	10900 <k_loop>
   10934:	e2866004 	add	r6, r6, #4
   10938:	e1560008 	cmp	r6, r8
   1093c:	baffffee 	blt	108fc <j_loop>
   10940:	e2855004 	add	r5, r5, #4
   10944:	e1550008 	cmp	r5, r8
   10948:	baffffea 	blt	108f8 <i_loop>
   1094c:	e8bd41f0 	pop	{r4, r5, r6, r7, r8, lr}
   10950:	e12fff1e 	bx	lr

00010954 <addr_size_bytes>:
   10954:	00021040 	.word	0x00021040

00010958 <__libc_csu_init>:
   10958:	e92d47f0 	push	{r4, r5, r6, r7, r8, r9, sl, lr}
   1095c:	e1a07000 	mov	r7, r0
   10960:	e59f6048 	ldr	r6, [pc, #72]	; 109b0 <__libc_csu_init+0x58>
   10964:	e59f5048 	ldr	r5, [pc, #72]	; 109b4 <__libc_csu_init+0x5c>
   10968:	e08f6006 	add	r6, pc, r6
   1096c:	e08f5005 	add	r5, pc, r5
   10970:	e0466005 	sub	r6, r6, r5
   10974:	e1a08001 	mov	r8, r1
   10978:	e1a09002 	mov	r9, r2
   1097c:	ebfffebd 	bl	10478 <_init>
   10980:	e1b06146 	asrs	r6, r6, #2
   10984:	08bd87f0 	popeq	{r4, r5, r6, r7, r8, r9, sl, pc}
   10988:	e3a04000 	mov	r4, #0
   1098c:	e2844001 	add	r4, r4, #1
   10990:	e4953004 	ldr	r3, [r5], #4
   10994:	e1a02009 	mov	r2, r9
   10998:	e1a01008 	mov	r1, r8
   1099c:	e1a00007 	mov	r0, r7
   109a0:	e12fff33 	blx	r3
   109a4:	e1560004 	cmp	r6, r4
   109a8:	1afffff7 	bne	1098c <__libc_csu_init+0x34>
   109ac:	e8bd87f0 	pop	{r4, r5, r6, r7, r8, r9, sl, pc}
   109b0:	00010598 	.word	0x00010598
   109b4:	00010590 	.word	0x00010590

000109b8 <__libc_csu_fini>:
   109b8:	e12fff1e 	bx	lr

Disassembly of section .fini:

000109bc <_fini>:
   109bc:	e92d4008 	push	{r3, lr}
   109c0:	e8bd8008 	pop	{r3, pc}
