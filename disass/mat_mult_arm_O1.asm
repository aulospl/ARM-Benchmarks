
execs/mat_mult/mat_mult_arm_O1:     file format elf32-littlearm


Disassembly of section .init:

00010478 <_init>:
   10478:	e92d4008 	push	{r3, lr}
   1047c:	eb000032 	bl	1054c <call_weak_fn>
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

00010510 <_start>:
   10510:	e3a0b000 	mov	fp, #0
   10514:	e3a0e000 	mov	lr, #0
   10518:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
   1051c:	e1a0200d 	mov	r2, sp
   10520:	e52d2004 	push	{r2}		; (str r2, [sp, #-4]!)
   10524:	e52d0004 	push	{r0}		; (str r0, [sp, #-4]!)
   10528:	e59fc010 	ldr	ip, [pc, #16]	; 10540 <_start+0x30>
   1052c:	e52dc004 	push	{ip}		; (str ip, [sp, #-4]!)
   10530:	e59f000c 	ldr	r0, [pc, #12]	; 10544 <_start+0x34>
   10534:	e59f300c 	ldr	r3, [pc, #12]	; 10548 <_start+0x38>
   10538:	ebffffe2 	bl	104c8 <__libc_start_main@plt>
   1053c:	ebfffff0 	bl	10504 <abort@plt>
   10540:	00010978 	.word	0x00010978
   10544:	000106a4 	.word	0x000106a4
   10548:	00010918 	.word	0x00010918

0001054c <call_weak_fn>:
   1054c:	e59f3014 	ldr	r3, [pc, #20]	; 10568 <call_weak_fn+0x1c>
   10550:	e59f2014 	ldr	r2, [pc, #20]	; 1056c <call_weak_fn+0x20>
   10554:	e08f3003 	add	r3, pc, r3
   10558:	e7932002 	ldr	r2, [r3, r2]
   1055c:	e3520000 	cmp	r2, #0
   10560:	012fff1e 	bxeq	lr
   10564:	eaffffda 	b	104d4 <__gmon_start__@plt>
   10568:	00010aa4 	.word	0x00010aa4
   1056c:	00000034 	.word	0x00000034

00010570 <deregister_tm_clones>:
   10570:	e59f301c 	ldr	r3, [pc, #28]	; 10594 <deregister_tm_clones+0x24>
   10574:	e59f001c 	ldr	r0, [pc, #28]	; 10598 <deregister_tm_clones+0x28>
   10578:	e0433000 	sub	r3, r3, r0
   1057c:	e3530006 	cmp	r3, #6
   10580:	912fff1e 	bxls	lr
   10584:	e59f3010 	ldr	r3, [pc, #16]	; 1059c <deregister_tm_clones+0x2c>
   10588:	e3530000 	cmp	r3, #0
   1058c:	012fff1e 	bxeq	lr
   10590:	e12fff13 	bx	r3
   10594:	00021047 	.word	0x00021047
   10598:	00021044 	.word	0x00021044
   1059c:	00000000 	.word	0x00000000

000105a0 <register_tm_clones>:
   105a0:	e59f1024 	ldr	r1, [pc, #36]	; 105cc <register_tm_clones+0x2c>
   105a4:	e59f0024 	ldr	r0, [pc, #36]	; 105d0 <register_tm_clones+0x30>
   105a8:	e0411000 	sub	r1, r1, r0
   105ac:	e1a01141 	asr	r1, r1, #2
   105b0:	e0811fa1 	add	r1, r1, r1, lsr #31
   105b4:	e1b010c1 	asrs	r1, r1, #1
   105b8:	012fff1e 	bxeq	lr
   105bc:	e59f3010 	ldr	r3, [pc, #16]	; 105d4 <register_tm_clones+0x34>
   105c0:	e3530000 	cmp	r3, #0
   105c4:	012fff1e 	bxeq	lr
   105c8:	e12fff13 	bx	r3
   105cc:	00021044 	.word	0x00021044
   105d0:	00021044 	.word	0x00021044
   105d4:	00000000 	.word	0x00000000

000105d8 <__do_global_dtors_aux>:
   105d8:	e92d4010 	push	{r4, lr}
   105dc:	e59f4018 	ldr	r4, [pc, #24]	; 105fc <__do_global_dtors_aux+0x24>
   105e0:	e5d43000 	ldrb	r3, [r4]
   105e4:	e3530000 	cmp	r3, #0
   105e8:	18bd8010 	popne	{r4, pc}
   105ec:	ebffffdf 	bl	10570 <deregister_tm_clones>
   105f0:	e3a03001 	mov	r3, #1
   105f4:	e5c43000 	strb	r3, [r4]
   105f8:	e8bd8010 	pop	{r4, pc}
   105fc:	00021044 	.word	0x00021044

00010600 <frame_dummy>:
   10600:	e59f0028 	ldr	r0, [pc, #40]	; 10630 <frame_dummy+0x30>
   10604:	e5903000 	ldr	r3, [r0]
   10608:	e3530000 	cmp	r3, #0
   1060c:	1a000000 	bne	10614 <frame_dummy+0x14>
   10610:	eaffffe2 	b	105a0 <register_tm_clones>
   10614:	e59f3018 	ldr	r3, [pc, #24]	; 10634 <frame_dummy+0x34>
   10618:	e3530000 	cmp	r3, #0
   1061c:	0afffffb 	beq	10610 <frame_dummy+0x10>
   10620:	e92d4010 	push	{r4, lr}
   10624:	e12fff33 	blx	r3
   10628:	e8bd4010 	pop	{r4, lr}
   1062c:	eaffffdb 	b	105a0 <register_tm_clones>
   10630:	00020f0c 	.word	0x00020f0c
   10634:	00000000 	.word	0x00000000

00010638 <allocate_matrix>:
   10638:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
   1063c:	e3a00efa 	mov	r0, #4000	; 0xfa0
   10640:	ebffff9d 	bl	104bc <malloc@plt>
   10644:	e1a07000 	mov	r7, r0
   10648:	e2404004 	sub	r4, r0, #4
   1064c:	e2805ef9 	add	r5, r0, #3984	; 0xf90
   10650:	e285500c 	add	r5, r5, #12
   10654:	e3a06efa 	mov	r6, #4000	; 0xfa0
   10658:	e1a00006 	mov	r0, r6
   1065c:	ebffff96 	bl	104bc <malloc@plt>
   10660:	e5a40004 	str	r0, [r4, #4]!
   10664:	e1540005 	cmp	r4, r5
   10668:	1afffffa 	bne	10658 <allocate_matrix+0x20>
   1066c:	e1a00007 	mov	r0, r7
   10670:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}

00010674 <free_matrix>:
   10674:	e92d4070 	push	{r4, r5, r6, lr}
   10678:	e1a06000 	mov	r6, r0
   1067c:	e2404004 	sub	r4, r0, #4
   10680:	e2805ef9 	add	r5, r0, #3984	; 0xf90
   10684:	e285500c 	add	r5, r5, #12
   10688:	e5b40004 	ldr	r0, [r4, #4]!
   1068c:	ebffff84 	bl	104a4 <free@plt>
   10690:	e1540005 	cmp	r4, r5
   10694:	1afffffb 	bne	10688 <free_matrix+0x14>
   10698:	e1a00006 	mov	r0, r6
   1069c:	ebffff80 	bl	104a4 <free@plt>
   106a0:	e8bd8070 	pop	{r4, r5, r6, pc}

000106a4 <main>:
   106a4:	e92d4070 	push	{r4, r5, r6, lr}
   106a8:	ebffffe2 	bl	10638 <allocate_matrix>
   106ac:	e1a06000 	mov	r6, r0
   106b0:	ebffffe0 	bl	10638 <allocate_matrix>
   106b4:	e1a05000 	mov	r5, r0
   106b8:	ebffffde 	bl	10638 <allocate_matrix>
   106bc:	e1a04000 	mov	r4, r0
   106c0:	e1a02000 	mov	r2, r0
   106c4:	e1a01005 	mov	r1, r5
   106c8:	e1a00006 	mov	r0, r6
   106cc:	eb000076 	bl	108ac <mat_mult_arm>
   106d0:	e1a00006 	mov	r0, r6
   106d4:	ebffffe6 	bl	10674 <free_matrix>
   106d8:	e1a00005 	mov	r0, r5
   106dc:	ebffffe4 	bl	10674 <free_matrix>
   106e0:	e1a00004 	mov	r0, r4
   106e4:	ebffffe2 	bl	10674 <free_matrix>
   106e8:	e3a00000 	mov	r0, #0
   106ec:	e8bd8070 	pop	{r4, r5, r6, pc}

000106f0 <alloc_array>:
   106f0:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
   106f4:	e3a00010 	mov	r0, #16
   106f8:	ebffff6f 	bl	104bc <malloc@plt>
   106fc:	e2507000 	subs	r7, r0, #0
   10700:	12474004 	subne	r4, r7, #4
   10704:	1287600c 	addne	r6, r7, #12
   10708:	13a05701 	movne	r5, #262144	; 0x40000
   1070c:	0a000008 	beq	10734 <alloc_array+0x44>
   10710:	e1a00005 	mov	r0, r5
   10714:	ebffff68 	bl	104bc <malloc@plt>
   10718:	e5a40004 	str	r0, [r4, #4]!
   1071c:	e3500000 	cmp	r0, #0
   10720:	0a000007 	beq	10744 <alloc_array+0x54>
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
   10754:	00010988 	.word	0x00010988
   10758:	000109a8 	.word	0x000109a8

0001075c <init_array>:
   1075c:	e2801010 	add	r1, r0, #16
   10760:	e3a03000 	mov	r3, #0
   10764:	e5902000 	ldr	r2, [r0]
   10768:	e7823103 	str	r3, [r2, r3, lsl #2]
   1076c:	e2833001 	add	r3, r3, #1
   10770:	e3530801 	cmp	r3, #65536	; 0x10000
   10774:	1afffffa 	bne	10764 <init_array+0x8>
   10778:	e2800004 	add	r0, r0, #4
   1077c:	e1500001 	cmp	r0, r1
   10780:	1afffff6 	bne	10760 <init_array+0x4>
   10784:	e12fff1e 	bx	lr

00010788 <init_matrices>:
   10788:	e92d47f0 	push	{r4, r5, r6, r7, r8, r9, sl, lr}
   1078c:	e1a07000 	mov	r7, r0
   10790:	e1a06001 	mov	r6, r1
   10794:	e1a09002 	mov	r9, r2
   10798:	e59f005c 	ldr	r0, [pc, #92]	; 107fc <init_matrices+0x74>
   1079c:	ebffff52 	bl	104ec <srand@plt>
   107a0:	e3a05000 	mov	r5, #0
   107a4:	e1a08005 	mov	r8, r5
   107a8:	ea000011 	b	107f4 <init_matrices+0x6c>
   107ac:	e7993105 	ldr	r3, [r9, r5, lsl #2]
   107b0:	e7838004 	str	r8, [r3, r4]
   107b4:	e2844004 	add	r4, r4, #4
   107b8:	e3540efa 	cmp	r4, #4000	; 0xfa0
   107bc:	0a000009 	beq	107e8 <init_matrices+0x60>
   107c0:	e3570000 	cmp	r7, #0
   107c4:	13560000 	cmpne	r6, #0
   107c8:	0afffff7 	beq	107ac <init_matrices+0x24>
   107cc:	e797a105 	ldr	sl, [r7, r5, lsl #2]
   107d0:	ebffff48 	bl	104f8 <rand@plt>
   107d4:	e78a0004 	str	r0, [sl, r4]
   107d8:	e796a105 	ldr	sl, [r6, r5, lsl #2]
   107dc:	ebffff45 	bl	104f8 <rand@plt>
   107e0:	e78a0004 	str	r0, [sl, r4]
   107e4:	eafffff0 	b	107ac <init_matrices+0x24>
   107e8:	e2855001 	add	r5, r5, #1
   107ec:	e3550ffa 	cmp	r5, #1000	; 0x3e8
   107f0:	08bd87f0 	popeq	{r4, r5, r6, r7, r8, r9, sl, pc}
   107f4:	e3a04000 	mov	r4, #0
   107f8:	eafffff0 	b	107c0 <init_matrices+0x38>
   107fc:	00001092 	.word	0x00001092

00010800 <check_result>:
   10800:	e92d4ff0 	push	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
   10804:	e24dd00c 	sub	sp, sp, #12
   10808:	e2400004 	sub	r0, r0, #4
   1080c:	e242b004 	sub	fp, r2, #4
   10810:	e3a0a000 	mov	sl, #0
   10814:	ea000008 	b	1083c <check_result+0x3c>
   10818:	e58dc000 	str	ip, [sp]
   1081c:	e1a0100a 	mov	r1, sl
   10820:	e59f007c 	ldr	r0, [pc, #124]	; 108a4 <check_result+0xa4>
   10824:	ebffff1b 	bl	10498 <printf@plt>
   10828:	e28dd00c 	add	sp, sp, #12
   1082c:	e8bd8ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, pc}
   10830:	e28aa001 	add	sl, sl, #1
   10834:	e35a0ffa 	cmp	sl, #1000	; 0x3e8
   10838:	0a000016 	beq	10898 <check_result+0x98>
   1083c:	e5b09004 	ldr	r9, [r0, #4]!
   10840:	e5bb8004 	ldr	r8, [fp, #4]!
   10844:	e2488004 	sub	r8, r8, #4
   10848:	e3a02000 	mov	r2, #0
   1084c:	e2897ef9 	add	r7, r9, #3984	; 0xf90
   10850:	e287700c 	add	r7, r7, #12
   10854:	e1a06102 	lsl	r6, r2, #2
   10858:	e2493004 	sub	r3, r9, #4
   1085c:	e241e004 	sub	lr, r1, #4
   10860:	e3a0c000 	mov	ip, #0
   10864:	e5be4004 	ldr	r4, [lr, #4]!
   10868:	e7944006 	ldr	r4, [r4, r6]
   1086c:	e5b35004 	ldr	r5, [r3, #4]!
   10870:	e02cc495 	mla	ip, r5, r4, ip
   10874:	e1530007 	cmp	r3, r7
   10878:	1afffff9 	bne	10864 <check_result+0x64>
   1087c:	e5b83004 	ldr	r3, [r8, #4]!
   10880:	e15c0003 	cmp	ip, r3
   10884:	1affffe3 	bne	10818 <check_result+0x18>
   10888:	e2822001 	add	r2, r2, #1
   1088c:	e3520ffa 	cmp	r2, #1000	; 0x3e8
   10890:	1affffef 	bne	10854 <check_result+0x54>
   10894:	eaffffe5 	b	10830 <check_result+0x30>
   10898:	e59f0008 	ldr	r0, [pc, #8]	; 108a8 <check_result+0xa8>
   1089c:	ebffff03 	bl	104b0 <puts@plt>
   108a0:	eaffffe0 	b	10828 <check_result+0x28>
   108a4:	000109c8 	.word	0x000109c8
   108a8:	000109e4 	.word	0x000109e4

000108ac <mat_mult_arm>:
   108ac:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
   108b0:	e3a08efa 	mov	r8, #4000	; 0xfa0
   108b4:	e3a05000 	mov	r5, #0

000108b8 <i_loop>:
   108b8:	e3a06000 	mov	r6, #0

000108bc <j_loop>:
   108bc:	e3a07000 	mov	r7, #0

000108c0 <k_loop>:
   108c0:	e3a03ffa 	mov	r3, #1000	; 0x3e8
   108c4:	e7909005 	ldr	r9, [r0, r5]
   108c8:	e799a007 	ldr	sl, [r9, r7]
   108cc:	e7919007 	ldr	r9, [r1, r7]
   108d0:	e7994006 	ldr	r4, [r9, r6]
   108d4:	e7929005 	ldr	r9, [r2, r5]
   108d8:	e7993006 	ldr	r3, [r9, r6]
   108dc:	e00a049a 	mul	sl, sl, r4
   108e0:	e083300a 	add	r3, r3, sl
   108e4:	e7893006 	str	r3, [r9, r6]
   108e8:	e2877004 	add	r7, r7, #4
   108ec:	e1570008 	cmp	r7, r8
   108f0:	bafffff2 	blt	108c0 <k_loop>
   108f4:	e2866004 	add	r6, r6, #4
   108f8:	e1560008 	cmp	r6, r8
   108fc:	baffffee 	blt	108bc <j_loop>
   10900:	e2855004 	add	r5, r5, #4
   10904:	e1550008 	cmp	r5, r8
   10908:	baffffea 	blt	108b8 <i_loop>
   1090c:	e8bd41f0 	pop	{r4, r5, r6, r7, r8, lr}
   10910:	e12fff1e 	bx	lr

00010914 <addr_size_bytes>:
   10914:	00021040 	.word	0x00021040

00010918 <__libc_csu_init>:
   10918:	e92d47f0 	push	{r4, r5, r6, r7, r8, r9, sl, lr}
   1091c:	e1a07000 	mov	r7, r0
   10920:	e59f6048 	ldr	r6, [pc, #72]	; 10970 <__libc_csu_init+0x58>
   10924:	e59f5048 	ldr	r5, [pc, #72]	; 10974 <__libc_csu_init+0x5c>
   10928:	e08f6006 	add	r6, pc, r6
   1092c:	e08f5005 	add	r5, pc, r5
   10930:	e0466005 	sub	r6, r6, r5
   10934:	e1a08001 	mov	r8, r1
   10938:	e1a09002 	mov	r9, r2
   1093c:	ebfffecd 	bl	10478 <_init>
   10940:	e1b06146 	asrs	r6, r6, #2
   10944:	08bd87f0 	popeq	{r4, r5, r6, r7, r8, r9, sl, pc}
   10948:	e3a04000 	mov	r4, #0
   1094c:	e2844001 	add	r4, r4, #1
   10950:	e4953004 	ldr	r3, [r5], #4
   10954:	e1a02009 	mov	r2, r9
   10958:	e1a01008 	mov	r1, r8
   1095c:	e1a00007 	mov	r0, r7
   10960:	e12fff33 	blx	r3
   10964:	e1560004 	cmp	r6, r4
   10968:	1afffff7 	bne	1094c <__libc_csu_init+0x34>
   1096c:	e8bd87f0 	pop	{r4, r5, r6, r7, r8, r9, sl, pc}
   10970:	000105d8 	.word	0x000105d8
   10974:	000105d0 	.word	0x000105d0

00010978 <__libc_csu_fini>:
   10978:	e12fff1e 	bx	lr

Disassembly of section .fini:

0001097c <_fini>:
   1097c:	e92d4008 	push	{r3, lr}
   10980:	e8bd8008 	pop	{r3, pc}
