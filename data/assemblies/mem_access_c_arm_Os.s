
execs/mem_access/mem_access_c_arm_Os:     file format elf32-littlearm


Disassembly of section .init:

0001039c <_init>:
   1039c:	e92d4008 	push	{r3, lr}
   103a0:	eb00003a 	bl	10490 <call_weak_fn>
   103a4:	e8bd8008 	pop	{r3, pc}

Disassembly of section .plt:

000103a8 <.plt>:
   103a8:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
   103ac:	e59fe004 	ldr	lr, [pc, #4]	; 103b8 <.plt+0x10>
   103b0:	e08fe00e 	add	lr, pc, lr
   103b4:	e5bef008 	ldr	pc, [lr, #8]!
   103b8:	00010c48 	.word	0x00010c48

000103bc <printf@plt>:
   103bc:	e28fc600 	add	ip, pc, #0, 12
   103c0:	e28cca10 	add	ip, ip, #16, 20	; 0x10000
   103c4:	e5bcfc48 	ldr	pc, [ip, #3144]!	; 0xc48

000103c8 <free@plt>:
   103c8:	e28fc600 	add	ip, pc, #0, 12
   103cc:	e28cca10 	add	ip, ip, #16, 20	; 0x10000
   103d0:	e5bcfc40 	ldr	pc, [ip, #3136]!	; 0xc40

000103d4 <puts@plt>:
   103d4:	e28fc600 	add	ip, pc, #0, 12
   103d8:	e28cca10 	add	ip, ip, #16, 20	; 0x10000
   103dc:	e5bcfc38 	ldr	pc, [ip, #3128]!	; 0xc38

000103e0 <malloc@plt>:
   103e0:	e28fc600 	add	ip, pc, #0, 12
   103e4:	e28cca10 	add	ip, ip, #16, 20	; 0x10000
   103e8:	e5bcfc30 	ldr	pc, [ip, #3120]!	; 0xc30

000103ec <__libc_start_main@plt>:
   103ec:	e28fc600 	add	ip, pc, #0, 12
   103f0:	e28cca10 	add	ip, ip, #16, 20	; 0x10000
   103f4:	e5bcfc28 	ldr	pc, [ip, #3112]!	; 0xc28

000103f8 <__gmon_start__@plt>:
   103f8:	e28fc600 	add	ip, pc, #0, 12
   103fc:	e28cca10 	add	ip, ip, #16, 20	; 0x10000
   10400:	e5bcfc20 	ldr	pc, [ip, #3104]!	; 0xc20

00010404 <exit@plt>:
   10404:	e28fc600 	add	ip, pc, #0, 12
   10408:	e28cca10 	add	ip, ip, #16, 20	; 0x10000
   1040c:	e5bcfc18 	ldr	pc, [ip, #3096]!	; 0xc18

00010410 <srand@plt>:
   10410:	e28fc600 	add	ip, pc, #0, 12
   10414:	e28cca10 	add	ip, ip, #16, 20	; 0x10000
   10418:	e5bcfc10 	ldr	pc, [ip, #3088]!	; 0xc10

0001041c <rand@plt>:
   1041c:	e28fc600 	add	ip, pc, #0, 12
   10420:	e28cca10 	add	ip, ip, #16, 20	; 0x10000
   10424:	e5bcfc08 	ldr	pc, [ip, #3080]!	; 0xc08

00010428 <abort@plt>:
   10428:	e28fc600 	add	ip, pc, #0, 12
   1042c:	e28cca10 	add	ip, ip, #16, 20	; 0x10000
   10430:	e5bcfc00 	ldr	pc, [ip, #3072]!	; 0xc00

Disassembly of section .text:

00010434 <main>:
   10434:	e92d4010 	push	{r4, lr}
   10438:	eb000069 	bl	105e4 <alloc_array>
   1043c:	e1a04000 	mov	r4, r0
   10440:	eb0000cc 	bl	10778 <mem_access_c>
   10444:	e1a00004 	mov	r0, r4
   10448:	ebffffde 	bl	103c8 <free@plt>
   1044c:	e3a00000 	mov	r0, #0
   10450:	e8bd8010 	pop	{r4, pc}

00010454 <_start>:
   10454:	e3a0b000 	mov	fp, #0
   10458:	e3a0e000 	mov	lr, #0
   1045c:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
   10460:	e1a0200d 	mov	r2, sp
   10464:	e52d2004 	push	{r2}		; (str r2, [sp, #-4]!)
   10468:	e52d0004 	push	{r0}		; (str r0, [sp, #-4]!)
   1046c:	e59fc010 	ldr	ip, [pc, #16]	; 10484 <_start+0x30>
   10470:	e52dc004 	push	{ip}		; (str ip, [sp, #-4]!)
   10474:	e59f000c 	ldr	r0, [pc, #12]	; 10488 <_start+0x34>
   10478:	e59f300c 	ldr	r3, [pc, #12]	; 1048c <_start+0x38>
   1047c:	ebffffda 	bl	103ec <__libc_start_main@plt>
   10480:	ebffffe8 	bl	10428 <abort@plt>
   10484:	000107dc 	.word	0x000107dc
   10488:	00010434 	.word	0x00010434
   1048c:	0001077c 	.word	0x0001077c

00010490 <call_weak_fn>:
   10490:	e59f3014 	ldr	r3, [pc, #20]	; 104ac <call_weak_fn+0x1c>
   10494:	e59f2014 	ldr	r2, [pc, #20]	; 104b0 <call_weak_fn+0x20>
   10498:	e08f3003 	add	r3, pc, r3
   1049c:	e7932002 	ldr	r2, [r3, r2]
   104a0:	e3520000 	cmp	r2, #0
   104a4:	012fff1e 	bxeq	lr
   104a8:	eaffffd2 	b	103f8 <__gmon_start__@plt>
   104ac:	00010b60 	.word	0x00010b60
   104b0:	00000034 	.word	0x00000034

000104b4 <deregister_tm_clones>:
   104b4:	e59f301c 	ldr	r3, [pc, #28]	; 104d8 <deregister_tm_clones+0x24>
   104b8:	e59f001c 	ldr	r0, [pc, #28]	; 104dc <deregister_tm_clones+0x28>
   104bc:	e0433000 	sub	r3, r3, r0
   104c0:	e3530006 	cmp	r3, #6
   104c4:	912fff1e 	bxls	lr
   104c8:	e59f3010 	ldr	r3, [pc, #16]	; 104e0 <deregister_tm_clones+0x2c>
   104cc:	e3530000 	cmp	r3, #0
   104d0:	012fff1e 	bxeq	lr
   104d4:	e12fff13 	bx	r3
   104d8:	00021043 	.word	0x00021043
   104dc:	00021040 	.word	0x00021040
   104e0:	00000000 	.word	0x00000000

000104e4 <register_tm_clones>:
   104e4:	e59f1024 	ldr	r1, [pc, #36]	; 10510 <register_tm_clones+0x2c>
   104e8:	e59f0024 	ldr	r0, [pc, #36]	; 10514 <register_tm_clones+0x30>
   104ec:	e0411000 	sub	r1, r1, r0
   104f0:	e1a01141 	asr	r1, r1, #2
   104f4:	e0811fa1 	add	r1, r1, r1, lsr #31
   104f8:	e1b010c1 	asrs	r1, r1, #1
   104fc:	012fff1e 	bxeq	lr
   10500:	e59f3010 	ldr	r3, [pc, #16]	; 10518 <register_tm_clones+0x34>
   10504:	e3530000 	cmp	r3, #0
   10508:	012fff1e 	bxeq	lr
   1050c:	e12fff13 	bx	r3
   10510:	00021040 	.word	0x00021040
   10514:	00021040 	.word	0x00021040
   10518:	00000000 	.word	0x00000000

0001051c <__do_global_dtors_aux>:
   1051c:	e92d4010 	push	{r4, lr}
   10520:	e59f4018 	ldr	r4, [pc, #24]	; 10540 <__do_global_dtors_aux+0x24>
   10524:	e5d43000 	ldrb	r3, [r4]
   10528:	e3530000 	cmp	r3, #0
   1052c:	18bd8010 	popne	{r4, pc}
   10530:	ebffffdf 	bl	104b4 <deregister_tm_clones>
   10534:	e3a03001 	mov	r3, #1
   10538:	e5c43000 	strb	r3, [r4]
   1053c:	e8bd8010 	pop	{r4, pc}
   10540:	00021040 	.word	0x00021040

00010544 <frame_dummy>:
   10544:	e59f0028 	ldr	r0, [pc, #40]	; 10574 <frame_dummy+0x30>
   10548:	e5903000 	ldr	r3, [r0]
   1054c:	e3530000 	cmp	r3, #0
   10550:	1a000000 	bne	10558 <frame_dummy+0x14>
   10554:	eaffffe2 	b	104e4 <register_tm_clones>
   10558:	e59f3018 	ldr	r3, [pc, #24]	; 10578 <frame_dummy+0x34>
   1055c:	e3530000 	cmp	r3, #0
   10560:	0afffffb 	beq	10554 <frame_dummy+0x10>
   10564:	e92d4010 	push	{r4, lr}
   10568:	e12fff33 	blx	r3
   1056c:	e8bd4010 	pop	{r4, lr}
   10570:	eaffffdb 	b	104e4 <register_tm_clones>
   10574:	00020f14 	.word	0x00020f14
   10578:	00000000 	.word	0x00000000

0001057c <allocate_matrix>:
   1057c:	e92d4070 	push	{r4, r5, r6, lr}
   10580:	e3a00efa 	mov	r0, #4000	; 0xfa0
   10584:	ebffff95 	bl	103e0 <malloc@plt>
   10588:	e2805ef9 	add	r5, r0, #3984	; 0xf90
   1058c:	e2406004 	sub	r6, r0, #4
   10590:	e285500c 	add	r5, r5, #12
   10594:	e1a04000 	mov	r4, r0
   10598:	e3a00efa 	mov	r0, #4000	; 0xfa0
   1059c:	ebffff8f 	bl	103e0 <malloc@plt>
   105a0:	e5a60004 	str	r0, [r6, #4]!
   105a4:	e1560005 	cmp	r6, r5
   105a8:	1afffffa 	bne	10598 <allocate_matrix+0x1c>
   105ac:	e1a00004 	mov	r0, r4
   105b0:	e8bd8070 	pop	{r4, r5, r6, pc}

000105b4 <free_matrix>:
   105b4:	e92d4070 	push	{r4, r5, r6, lr}
   105b8:	e2805ef9 	add	r5, r0, #3984	; 0xf90
   105bc:	e2406004 	sub	r6, r0, #4
   105c0:	e285500c 	add	r5, r5, #12
   105c4:	e1a04000 	mov	r4, r0
   105c8:	e5b60004 	ldr	r0, [r6, #4]!
   105cc:	ebffff7d 	bl	103c8 <free@plt>
   105d0:	e1560005 	cmp	r6, r5
   105d4:	1afffffb 	bne	105c8 <free_matrix+0x14>
   105d8:	e1a00004 	mov	r0, r4
   105dc:	e8bd4070 	pop	{r4, r5, r6, lr}
   105e0:	eaffff78 	b	103c8 <free@plt>

000105e4 <alloc_array>:
   105e4:	e92d4070 	push	{r4, r5, r6, lr}
   105e8:	e3a00010 	mov	r0, #16
   105ec:	ebffff7b 	bl	103e0 <malloc@plt>
   105f0:	e2504000 	subs	r4, r0, #0
   105f4:	059f003c 	ldreq	r0, [pc, #60]	; 10638 <alloc_array+0x54>
   105f8:	0a000007 	beq	1061c <alloc_array+0x38>
   105fc:	e2445004 	sub	r5, r4, #4
   10600:	e284600c 	add	r6, r4, #12
   10604:	e3a00701 	mov	r0, #262144	; 0x40000
   10608:	ebffff74 	bl	103e0 <malloc@plt>
   1060c:	e3500000 	cmp	r0, #0
   10610:	e5a50004 	str	r0, [r5, #4]!
   10614:	1a000003 	bne	10628 <alloc_array+0x44>
   10618:	e59f001c 	ldr	r0, [pc, #28]	; 1063c <alloc_array+0x58>
   1061c:	ebffff6c 	bl	103d4 <puts@plt>
   10620:	e3a00001 	mov	r0, #1
   10624:	ebffff76 	bl	10404 <exit@plt>
   10628:	e1550006 	cmp	r5, r6
   1062c:	1afffff4 	bne	10604 <alloc_array+0x20>
   10630:	e1a00004 	mov	r0, r4
   10634:	e8bd8070 	pop	{r4, r5, r6, pc}
   10638:	000107ec 	.word	0x000107ec
   1063c:	0001080c 	.word	0x0001080c

00010640 <init_array>:
   10640:	e2402004 	sub	r2, r0, #4
   10644:	e280000c 	add	r0, r0, #12
   10648:	e5b21004 	ldr	r1, [r2, #4]!
   1064c:	e3a03000 	mov	r3, #0
   10650:	e7813103 	str	r3, [r1, r3, lsl #2]
   10654:	e2833001 	add	r3, r3, #1
   10658:	e3530801 	cmp	r3, #65536	; 0x10000
   1065c:	1afffffb 	bne	10650 <init_array+0x10>
   10660:	e1520000 	cmp	r2, r0
   10664:	1afffff7 	bne	10648 <init_array+0x8>
   10668:	e12fff1e 	bx	lr

0001066c <init_matrices>:
   1066c:	e92d47f0 	push	{r4, r5, r6, r7, r8, r9, sl, lr}
   10670:	e1a06000 	mov	r6, r0
   10674:	e3010092 	movw	r0, #4242	; 0x1092
   10678:	e1a07001 	mov	r7, r1
   1067c:	e1a08002 	mov	r8, r2
   10680:	ebffff62 	bl	10410 <srand@plt>
   10684:	e3a04000 	mov	r4, #0
   10688:	e1a09004 	mov	r9, r4
   1068c:	e3a05000 	mov	r5, #0
   10690:	e3560000 	cmp	r6, #0
   10694:	13570000 	cmpne	r7, #0
   10698:	0a000005 	beq	106b4 <init_matrices+0x48>
   1069c:	e796a104 	ldr	sl, [r6, r4, lsl #2]
   106a0:	ebffff5d 	bl	1041c <rand@plt>
   106a4:	e78a0005 	str	r0, [sl, r5]
   106a8:	e797a104 	ldr	sl, [r7, r4, lsl #2]
   106ac:	ebffff5a 	bl	1041c <rand@plt>
   106b0:	e78a0005 	str	r0, [sl, r5]
   106b4:	e7983104 	ldr	r3, [r8, r4, lsl #2]
   106b8:	e7839005 	str	r9, [r3, r5]
   106bc:	e2855004 	add	r5, r5, #4
   106c0:	e3550efa 	cmp	r5, #4000	; 0xfa0
   106c4:	1afffff1 	bne	10690 <init_matrices+0x24>
   106c8:	e2844001 	add	r4, r4, #1
   106cc:	e3540ffa 	cmp	r4, #1000	; 0x3e8
   106d0:	1affffed 	bne	1068c <init_matrices+0x20>
   106d4:	e8bd87f0 	pop	{r4, r5, r6, r7, r8, r9, sl, pc}

000106d8 <check_result>:
   106d8:	e92d4ff7 	push	{r0, r1, r2, r4, r5, r6, r7, r8, r9, sl, fp, lr}
   106dc:	e1a06001 	mov	r6, r1
   106e0:	e1a07002 	mov	r7, r2
   106e4:	e3a01000 	mov	r1, #0
   106e8:	e790e101 	ldr	lr, [r0, r1, lsl #2]
   106ec:	e3a02000 	mov	r2, #0
   106f0:	e7979101 	ldr	r9, [r7, r1, lsl #2]
   106f4:	e28e8ef9 	add	r8, lr, #3984	; 0xf90
   106f8:	e288800c 	add	r8, r8, #12
   106fc:	ea000002 	b	1070c <check_result+0x34>
   10700:	e2822001 	add	r2, r2, #1
   10704:	e3520ffa 	cmp	r2, #1000	; 0x3e8
   10708:	0a000011 	beq	10754 <check_result+0x7c>
   1070c:	e1a05102 	lsl	r5, r2, #2
   10710:	e24e3004 	sub	r3, lr, #4
   10714:	e2464004 	sub	r4, r6, #4
   10718:	e3a0c000 	mov	ip, #0
   1071c:	e5b4a004 	ldr	sl, [r4, #4]!
   10720:	e5b3b004 	ldr	fp, [r3, #4]!
   10724:	e79aa005 	ldr	sl, [sl, r5]
   10728:	e1580003 	cmp	r8, r3
   1072c:	e02cca9b 	mla	ip, fp, sl, ip
   10730:	1afffff9 	bne	1071c <check_result+0x44>
   10734:	e7993005 	ldr	r3, [r9, r5]
   10738:	e15c0003 	cmp	ip, r3
   1073c:	0affffef 	beq	10700 <check_result+0x28>
   10740:	e58dc000 	str	ip, [sp]
   10744:	e59f0024 	ldr	r0, [pc, #36]	; 10770 <check_result+0x98>
   10748:	ebffff1b 	bl	103bc <printf@plt>
   1074c:	e28dd00c 	add	sp, sp, #12
   10750:	e8bd8ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, pc}
   10754:	e2811001 	add	r1, r1, #1
   10758:	e3510ffa 	cmp	r1, #1000	; 0x3e8
   1075c:	1affffe1 	bne	106e8 <check_result+0x10>
   10760:	e59f000c 	ldr	r0, [pc, #12]	; 10774 <check_result+0x9c>
   10764:	e28dd00c 	add	sp, sp, #12
   10768:	e8bd4ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
   1076c:	eaffff18 	b	103d4 <puts@plt>
   10770:	0001082c 	.word	0x0001082c
   10774:	00010847 	.word	0x00010847

00010778 <mem_access_c>:
   10778:	e12fff1e 	bx	lr

0001077c <__libc_csu_init>:
   1077c:	e92d47f0 	push	{r4, r5, r6, r7, r8, r9, sl, lr}
   10780:	e1a07000 	mov	r7, r0
   10784:	e59f6048 	ldr	r6, [pc, #72]	; 107d4 <__libc_csu_init+0x58>
   10788:	e59f5048 	ldr	r5, [pc, #72]	; 107d8 <__libc_csu_init+0x5c>
   1078c:	e08f6006 	add	r6, pc, r6
   10790:	e08f5005 	add	r5, pc, r5
   10794:	e0466005 	sub	r6, r6, r5
   10798:	e1a08001 	mov	r8, r1
   1079c:	e1a09002 	mov	r9, r2
   107a0:	ebfffefd 	bl	1039c <_init>
   107a4:	e1b06146 	asrs	r6, r6, #2
   107a8:	08bd87f0 	popeq	{r4, r5, r6, r7, r8, r9, sl, pc}
   107ac:	e3a04000 	mov	r4, #0
   107b0:	e2844001 	add	r4, r4, #1
   107b4:	e4953004 	ldr	r3, [r5], #4
   107b8:	e1a02009 	mov	r2, r9
   107bc:	e1a01008 	mov	r1, r8
   107c0:	e1a00007 	mov	r0, r7
   107c4:	e12fff33 	blx	r3
   107c8:	e1560004 	cmp	r6, r4
   107cc:	1afffff7 	bne	107b0 <__libc_csu_init+0x34>
   107d0:	e8bd87f0 	pop	{r4, r5, r6, r7, r8, r9, sl, pc}
   107d4:	0001077c 	.word	0x0001077c
   107d8:	00010774 	.word	0x00010774

000107dc <__libc_csu_fini>:
   107dc:	e12fff1e 	bx	lr

Disassembly of section .fini:

000107e0 <_fini>:
   107e0:	e92d4008 	push	{r3, lr}
   107e4:	e8bd8008 	pop	{r3, pc}
