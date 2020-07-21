
execs/mat_mult/mat_mult_thumb_Os:     file format elf32-littlearm


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
   10538:	eb0000d4 	bl	10890 <mat_mult_thumb>
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
   1058c:	00010950 	.word	0x00010950
   10590:	00010510 	.word	0x00010510
   10594:	000108f0 	.word	0x000108f0

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
   10690:	e3a07efa 	mov	r7, #4000	; 0xfa0
   10694:	e2805ef9 	add	r5, r0, #3984	; 0xf90
   10698:	e1a04000 	mov	r4, r0
   1069c:	e2406004 	sub	r6, r0, #4
   106a0:	e285500c 	add	r5, r5, #12
   106a4:	e1a00007 	mov	r0, r7
   106a8:	ebffff83 	bl	104bc <malloc@plt>
   106ac:	e5a60004 	str	r0, [r6, #4]!
   106b0:	e1560005 	cmp	r6, r5
   106b4:	1afffffa 	bne	106a4 <allocate_matrix+0x20>
   106b8:	e1a00004 	mov	r0, r4
   106bc:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}

000106c0 <free_matrix>:
   106c0:	e92d4070 	push	{r4, r5, r6, lr}
   106c4:	e2805ef9 	add	r5, r0, #3984	; 0xf90
   106c8:	e1a04000 	mov	r4, r0
   106cc:	e2406004 	sub	r6, r0, #4
   106d0:	e285500c 	add	r5, r5, #12
   106d4:	e5b60004 	ldr	r0, [r6, #4]!
   106d8:	ebffff71 	bl	104a4 <free@plt>
   106dc:	e1560005 	cmp	r6, r5
   106e0:	1afffffb 	bne	106d4 <free_matrix+0x14>
   106e4:	e1a00004 	mov	r0, r4
   106e8:	e8bd4070 	pop	{r4, r5, r6, lr}
   106ec:	eaffff6c 	b	104a4 <free@plt>

000106f0 <alloc_array>:
   106f0:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
   106f4:	e3a00010 	mov	r0, #16
   106f8:	ebffff6f 	bl	104bc <malloc@plt>
   106fc:	e2504000 	subs	r4, r0, #0
   10700:	059f0040 	ldreq	r0, [pc, #64]	; 10748 <alloc_array+0x58>
   10704:	0a000008 	beq	1072c <alloc_array+0x3c>
   10708:	e2445004 	sub	r5, r4, #4
   1070c:	e284600c 	add	r6, r4, #12
   10710:	e3a07701 	mov	r7, #262144	; 0x40000
   10714:	e1a00007 	mov	r0, r7
   10718:	ebffff67 	bl	104bc <malloc@plt>
   1071c:	e3500000 	cmp	r0, #0
   10720:	e5a50004 	str	r0, [r5, #4]!
   10724:	1a000003 	bne	10738 <alloc_array+0x48>
   10728:	e59f001c 	ldr	r0, [pc, #28]	; 1074c <alloc_array+0x5c>
   1072c:	ebffff5f 	bl	104b0 <puts@plt>
   10730:	e3a00001 	mov	r0, #1
   10734:	ebffff69 	bl	104e0 <exit@plt>
   10738:	e1550006 	cmp	r5, r6
   1073c:	1afffff4 	bne	10714 <alloc_array+0x24>
   10740:	e1a00004 	mov	r0, r4
   10744:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}
   10748:	00010960 	.word	0x00010960
   1074c:	00010980 	.word	0x00010980

00010750 <init_array>:
   10750:	e2402004 	sub	r2, r0, #4
   10754:	e280000c 	add	r0, r0, #12
   10758:	e5b21004 	ldr	r1, [r2, #4]!
   1075c:	e3a03000 	mov	r3, #0
   10760:	e7813103 	str	r3, [r1, r3, lsl #2]
   10764:	e2833001 	add	r3, r3, #1
   10768:	e3530801 	cmp	r3, #65536	; 0x10000
   1076c:	1afffffb 	bne	10760 <init_array+0x10>
   10770:	e1520000 	cmp	r2, r0
   10774:	1afffff7 	bne	10758 <init_array+0x8>
   10778:	e12fff1e 	bx	lr

0001077c <init_matrices>:
   1077c:	e92d47f0 	push	{r4, r5, r6, r7, r8, r9, sl, lr}
   10780:	e1a06000 	mov	r6, r0
   10784:	e59f005c 	ldr	r0, [pc, #92]	; 107e8 <init_matrices+0x6c>
   10788:	e1a07001 	mov	r7, r1
   1078c:	e1a08002 	mov	r8, r2
   10790:	ebffff55 	bl	104ec <srand@plt>
   10794:	e3a04000 	mov	r4, #0
   10798:	e1a09004 	mov	r9, r4
   1079c:	e3a05000 	mov	r5, #0
   107a0:	e3560000 	cmp	r6, #0
   107a4:	13570000 	cmpne	r7, #0
   107a8:	0a000005 	beq	107c4 <init_matrices+0x48>
   107ac:	e796a104 	ldr	sl, [r6, r4, lsl #2]
   107b0:	ebffff50 	bl	104f8 <rand@plt>
   107b4:	e78a0005 	str	r0, [sl, r5]
   107b8:	e797a104 	ldr	sl, [r7, r4, lsl #2]
   107bc:	ebffff4d 	bl	104f8 <rand@plt>
   107c0:	e78a0005 	str	r0, [sl, r5]
   107c4:	e7983104 	ldr	r3, [r8, r4, lsl #2]
   107c8:	e7839005 	str	r9, [r3, r5]
   107cc:	e2855004 	add	r5, r5, #4
   107d0:	e3550efa 	cmp	r5, #4000	; 0xfa0
   107d4:	1afffff1 	bne	107a0 <init_matrices+0x24>
   107d8:	e2844001 	add	r4, r4, #1
   107dc:	e3540ffa 	cmp	r4, #1000	; 0x3e8
   107e0:	1affffed 	bne	1079c <init_matrices+0x20>
   107e4:	e8bd87f0 	pop	{r4, r5, r6, r7, r8, r9, sl, pc}
   107e8:	00001092 	.word	0x00001092

000107ec <check_result>:
   107ec:	e92d4ff7 	push	{r0, r1, r2, r4, r5, r6, r7, r8, r9, sl, fp, lr}
   107f0:	e1a07001 	mov	r7, r1
   107f4:	e1a08002 	mov	r8, r2
   107f8:	e3a01000 	mov	r1, #0
   107fc:	e7906101 	ldr	r6, [r0, r1, lsl #2]
   10800:	e7989101 	ldr	r9, [r8, r1, lsl #2]
   10804:	e286eef9 	add	lr, r6, #3984	; 0xf90
   10808:	e3a02000 	mov	r2, #0
   1080c:	e28ee00c 	add	lr, lr, #12
   10810:	ea000002 	b	10820 <check_result+0x34>
   10814:	e2822001 	add	r2, r2, #1
   10818:	e3520ffa 	cmp	r2, #1000	; 0x3e8
   1081c:	0a000011 	beq	10868 <check_result+0x7c>
   10820:	e1a05102 	lsl	r5, r2, #2
   10824:	e2463004 	sub	r3, r6, #4
   10828:	e2474004 	sub	r4, r7, #4
   1082c:	e3a0c000 	mov	ip, #0
   10830:	e5b4a004 	ldr	sl, [r4, #4]!
   10834:	e5b3b004 	ldr	fp, [r3, #4]!
   10838:	e79aa005 	ldr	sl, [sl, r5]
   1083c:	e15e0003 	cmp	lr, r3
   10840:	e02cca9b 	mla	ip, fp, sl, ip
   10844:	1afffff9 	bne	10830 <check_result+0x44>
   10848:	e7993005 	ldr	r3, [r9, r5]
   1084c:	e15c0003 	cmp	ip, r3
   10850:	0affffef 	beq	10814 <check_result+0x28>
   10854:	e58dc000 	str	ip, [sp]
   10858:	e59f0024 	ldr	r0, [pc, #36]	; 10884 <check_result+0x98>
   1085c:	ebffff0d 	bl	10498 <printf@plt>
   10860:	e28dd00c 	add	sp, sp, #12
   10864:	e8bd8ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, pc}
   10868:	e2811001 	add	r1, r1, #1
   1086c:	e3510ffa 	cmp	r1, #1000	; 0x3e8
   10870:	1affffe1 	bne	107fc <check_result+0x10>
   10874:	e59f000c 	ldr	r0, [pc, #12]	; 10888 <check_result+0x9c>
   10878:	e28dd00c 	add	sp, sp, #12
   1087c:	e8bd4ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
   10880:	eaffff0a 	b	104b0 <puts@plt>
   10884:	000109a0 	.word	0x000109a0
   10888:	000109bb 	.word	0x000109bb
   1088c:	00000000 	.word	0x00000000

00010890 <mat_mult_thumb>:
   10890:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
   10894:	fa000001 	blx	108a0 <thumb_func>
   10898:	e49de004 	pop	{lr}		; (ldr lr, [sp], #4)
   1089c:	e12fff1e 	bx	lr

000108a0 <thumb_func>:
   108a0:	2300      	movs	r3, #0

000108a2 <i_loop>:
   108a2:	2400      	movs	r4, #0

000108a4 <j_loop>:
   108a4:	2500      	movs	r5, #0

000108a6 <k_loop>:
   108a6:	58c6      	ldr	r6, [r0, r3]
   108a8:	b401      	push	{r0}
   108aa:	5977      	ldr	r7, [r6, r5]
   108ac:	594e      	ldr	r6, [r1, r5]
   108ae:	b402      	push	{r1}
   108b0:	5930      	ldr	r0, [r6, r4]
   108b2:	58d6      	ldr	r6, [r2, r3]
   108b4:	5931      	ldr	r1, [r6, r4]
   108b6:	4347      	muls	r7, r0
   108b8:	19c9      	adds	r1, r1, r7
   108ba:	5131      	str	r1, [r6, r4]
   108bc:	bc02      	pop	{r1}
   108be:	bc01      	pop	{r0}
   108c0:	3504      	adds	r5, #4
   108c2:	b408      	push	{r3}
   108c4:	4b09      	ldr	r3, [pc, #36]	; (108ec <addr_number>)
   108c6:	681b      	ldr	r3, [r3, #0]
   108c8:	429d      	cmp	r5, r3
   108ca:	bc08      	pop	{r3}
   108cc:	dbeb      	blt.n	108a6 <k_loop>
   108ce:	3404      	adds	r4, #4
   108d0:	b408      	push	{r3}
   108d2:	4b06      	ldr	r3, [pc, #24]	; (108ec <addr_number>)
   108d4:	681b      	ldr	r3, [r3, #0]
   108d6:	429c      	cmp	r4, r3
   108d8:	bc08      	pop	{r3}
   108da:	dbe3      	blt.n	108a4 <j_loop>
   108dc:	3304      	adds	r3, #4
   108de:	b410      	push	{r4}
   108e0:	4c02      	ldr	r4, [pc, #8]	; (108ec <addr_number>)
   108e2:	6824      	ldr	r4, [r4, #0]
   108e4:	42a3      	cmp	r3, r4
   108e6:	bc10      	pop	{r4}
   108e8:	dbdb      	blt.n	108a2 <i_loop>
   108ea:	4770      	bx	lr

000108ec <addr_number>:
   108ec:	00021040 	.word	0x00021040

000108f0 <__libc_csu_init>:
   108f0:	e92d47f0 	push	{r4, r5, r6, r7, r8, r9, sl, lr}
   108f4:	e1a07000 	mov	r7, r0
   108f8:	e59f6048 	ldr	r6, [pc, #72]	; 10948 <__libc_csu_init+0x58>
   108fc:	e59f5048 	ldr	r5, [pc, #72]	; 1094c <__libc_csu_init+0x5c>
   10900:	e08f6006 	add	r6, pc, r6
   10904:	e08f5005 	add	r5, pc, r5
   10908:	e0466005 	sub	r6, r6, r5
   1090c:	e1a08001 	mov	r8, r1
   10910:	e1a09002 	mov	r9, r2
   10914:	ebfffed7 	bl	10478 <_init>
   10918:	e1b06146 	asrs	r6, r6, #2
   1091c:	08bd87f0 	popeq	{r4, r5, r6, r7, r8, r9, sl, pc}
   10920:	e3a04000 	mov	r4, #0
   10924:	e2844001 	add	r4, r4, #1
   10928:	e4953004 	ldr	r3, [r5], #4
   1092c:	e1a02009 	mov	r2, r9
   10930:	e1a01008 	mov	r1, r8
   10934:	e1a00007 	mov	r0, r7
   10938:	e12fff33 	blx	r3
   1093c:	e1560004 	cmp	r6, r4
   10940:	1afffff7 	bne	10924 <__libc_csu_init+0x34>
   10944:	e8bd87f0 	pop	{r4, r5, r6, r7, r8, r9, sl, pc}
   10948:	00010600 	.word	0x00010600
   1094c:	000105f8 	.word	0x000105f8

00010950 <__libc_csu_fini>:
   10950:	e12fff1e 	bx	lr

Disassembly of section .fini:

00010954 <_fini>:
   10954:	e92d4008 	push	{r3, lr}
   10958:	e8bd8008 	pop	{r3, pc}
