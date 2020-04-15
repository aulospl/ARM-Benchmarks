
execs/mat_mult/mat_mult_c_arm_Os:     file format elf32-littlearm


Disassembly of section .init:

0001039c <_init>:
   1039c:	e92d4008 	push	{r3, lr}
   103a0:	eb000049 	bl	104cc <call_weak_fn>
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
   10434:	e92d4070 	push	{r4, r5, r6, lr}
   10438:	eb00005e 	bl	105b8 <allocate_matrix>
   1043c:	e1a06000 	mov	r6, r0
   10440:	eb00005c 	bl	105b8 <allocate_matrix>
   10444:	e1a05000 	mov	r5, r0
   10448:	eb00005a 	bl	105b8 <allocate_matrix>
   1044c:	e1a01005 	mov	r1, r5
   10450:	e1a04000 	mov	r4, r0
   10454:	e1a02000 	mov	r2, r0
   10458:	e1a00006 	mov	r0, r6
   1045c:	eb000093 	bl	106b0 <init_matrices>
   10460:	e1a02004 	mov	r2, r4
   10464:	e1a01005 	mov	r1, r5
   10468:	e1a00006 	mov	r0, r6
   1046c:	eb0000d3 	bl	107c0 <mat_mult_c>
   10470:	e1a00006 	mov	r0, r6
   10474:	eb00005e 	bl	105f4 <free_matrix>
   10478:	e1a00005 	mov	r0, r5
   1047c:	eb00005c 	bl	105f4 <free_matrix>
   10480:	e1a00004 	mov	r0, r4
   10484:	eb00005a 	bl	105f4 <free_matrix>
   10488:	e3a00000 	mov	r0, #0
   1048c:	e8bd8070 	pop	{r4, r5, r6, pc}

00010490 <_start>:
   10490:	e3a0b000 	mov	fp, #0
   10494:	e3a0e000 	mov	lr, #0
   10498:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
   1049c:	e1a0200d 	mov	r2, sp
   104a0:	e52d2004 	push	{r2}		; (str r2, [sp, #-4]!)
   104a4:	e52d0004 	push	{r0}		; (str r0, [sp, #-4]!)
   104a8:	e59fc010 	ldr	ip, [pc, #16]	; 104c0 <_start+0x30>
   104ac:	e52dc004 	push	{ip}		; (str ip, [sp, #-4]!)
   104b0:	e59f000c 	ldr	r0, [pc, #12]	; 104c4 <_start+0x34>
   104b4:	e59f300c 	ldr	r3, [pc, #12]	; 104c8 <_start+0x38>
   104b8:	ebffffcb 	bl	103ec <__libc_start_main@plt>
   104bc:	ebffffd9 	bl	10428 <abort@plt>
   104c0:	00010890 	.word	0x00010890
   104c4:	00010434 	.word	0x00010434
   104c8:	00010830 	.word	0x00010830

000104cc <call_weak_fn>:
   104cc:	e59f3014 	ldr	r3, [pc, #20]	; 104e8 <call_weak_fn+0x1c>
   104d0:	e59f2014 	ldr	r2, [pc, #20]	; 104ec <call_weak_fn+0x20>
   104d4:	e08f3003 	add	r3, pc, r3
   104d8:	e7932002 	ldr	r2, [r3, r2]
   104dc:	e3520000 	cmp	r2, #0
   104e0:	012fff1e 	bxeq	lr
   104e4:	eaffffc3 	b	103f8 <__gmon_start__@plt>
   104e8:	00010b24 	.word	0x00010b24
   104ec:	00000034 	.word	0x00000034

000104f0 <deregister_tm_clones>:
   104f0:	e59f301c 	ldr	r3, [pc, #28]	; 10514 <deregister_tm_clones+0x24>
   104f4:	e59f001c 	ldr	r0, [pc, #28]	; 10518 <deregister_tm_clones+0x28>
   104f8:	e0433000 	sub	r3, r3, r0
   104fc:	e3530006 	cmp	r3, #6
   10500:	912fff1e 	bxls	lr
   10504:	e59f3010 	ldr	r3, [pc, #16]	; 1051c <deregister_tm_clones+0x2c>
   10508:	e3530000 	cmp	r3, #0
   1050c:	012fff1e 	bxeq	lr
   10510:	e12fff13 	bx	r3
   10514:	00021043 	.word	0x00021043
   10518:	00021040 	.word	0x00021040
   1051c:	00000000 	.word	0x00000000

00010520 <register_tm_clones>:
   10520:	e59f1024 	ldr	r1, [pc, #36]	; 1054c <register_tm_clones+0x2c>
   10524:	e59f0024 	ldr	r0, [pc, #36]	; 10550 <register_tm_clones+0x30>
   10528:	e0411000 	sub	r1, r1, r0
   1052c:	e1a01141 	asr	r1, r1, #2
   10530:	e0811fa1 	add	r1, r1, r1, lsr #31
   10534:	e1b010c1 	asrs	r1, r1, #1
   10538:	012fff1e 	bxeq	lr
   1053c:	e59f3010 	ldr	r3, [pc, #16]	; 10554 <register_tm_clones+0x34>
   10540:	e3530000 	cmp	r3, #0
   10544:	012fff1e 	bxeq	lr
   10548:	e12fff13 	bx	r3
   1054c:	00021040 	.word	0x00021040
   10550:	00021040 	.word	0x00021040
   10554:	00000000 	.word	0x00000000

00010558 <__do_global_dtors_aux>:
   10558:	e92d4010 	push	{r4, lr}
   1055c:	e59f4018 	ldr	r4, [pc, #24]	; 1057c <__do_global_dtors_aux+0x24>
   10560:	e5d43000 	ldrb	r3, [r4]
   10564:	e3530000 	cmp	r3, #0
   10568:	18bd8010 	popne	{r4, pc}
   1056c:	ebffffdf 	bl	104f0 <deregister_tm_clones>
   10570:	e3a03001 	mov	r3, #1
   10574:	e5c43000 	strb	r3, [r4]
   10578:	e8bd8010 	pop	{r4, pc}
   1057c:	00021040 	.word	0x00021040

00010580 <frame_dummy>:
   10580:	e59f0028 	ldr	r0, [pc, #40]	; 105b0 <frame_dummy+0x30>
   10584:	e5903000 	ldr	r3, [r0]
   10588:	e3530000 	cmp	r3, #0
   1058c:	1a000000 	bne	10594 <frame_dummy+0x14>
   10590:	eaffffe2 	b	10520 <register_tm_clones>
   10594:	e59f3018 	ldr	r3, [pc, #24]	; 105b4 <frame_dummy+0x34>
   10598:	e3530000 	cmp	r3, #0
   1059c:	0afffffb 	beq	10590 <frame_dummy+0x10>
   105a0:	e92d4010 	push	{r4, lr}
   105a4:	e12fff33 	blx	r3
   105a8:	e8bd4010 	pop	{r4, lr}
   105ac:	eaffffdb 	b	10520 <register_tm_clones>
   105b0:	00020f14 	.word	0x00020f14
   105b4:	00000000 	.word	0x00000000

000105b8 <allocate_matrix>:
   105b8:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
   105bc:	e3a00efa 	mov	r0, #4000	; 0xfa0
   105c0:	ebffff86 	bl	103e0 <malloc@plt>
   105c4:	e3a07efa 	mov	r7, #4000	; 0xfa0
   105c8:	e2805ef9 	add	r5, r0, #3984	; 0xf90
   105cc:	e1a04000 	mov	r4, r0
   105d0:	e2406004 	sub	r6, r0, #4
   105d4:	e285500c 	add	r5, r5, #12
   105d8:	e1a00007 	mov	r0, r7
   105dc:	ebffff7f 	bl	103e0 <malloc@plt>
   105e0:	e5a60004 	str	r0, [r6, #4]!
   105e4:	e1560005 	cmp	r6, r5
   105e8:	1afffffa 	bne	105d8 <allocate_matrix+0x20>
   105ec:	e1a00004 	mov	r0, r4
   105f0:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}

000105f4 <free_matrix>:
   105f4:	e92d4070 	push	{r4, r5, r6, lr}
   105f8:	e2805ef9 	add	r5, r0, #3984	; 0xf90
   105fc:	e1a04000 	mov	r4, r0
   10600:	e2406004 	sub	r6, r0, #4
   10604:	e285500c 	add	r5, r5, #12
   10608:	e5b60004 	ldr	r0, [r6, #4]!
   1060c:	ebffff6d 	bl	103c8 <free@plt>
   10610:	e1560005 	cmp	r6, r5
   10614:	1afffffb 	bne	10608 <free_matrix+0x14>
   10618:	e1a00004 	mov	r0, r4
   1061c:	e8bd4070 	pop	{r4, r5, r6, lr}
   10620:	eaffff68 	b	103c8 <free@plt>

00010624 <alloc_array>:
   10624:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
   10628:	e3a00010 	mov	r0, #16
   1062c:	ebffff6b 	bl	103e0 <malloc@plt>
   10630:	e2504000 	subs	r4, r0, #0
   10634:	059f0040 	ldreq	r0, [pc, #64]	; 1067c <alloc_array+0x58>
   10638:	0a000008 	beq	10660 <alloc_array+0x3c>
   1063c:	e2445004 	sub	r5, r4, #4
   10640:	e284600c 	add	r6, r4, #12
   10644:	e3a07701 	mov	r7, #262144	; 0x40000
   10648:	e1a00007 	mov	r0, r7
   1064c:	ebffff63 	bl	103e0 <malloc@plt>
   10650:	e3500000 	cmp	r0, #0
   10654:	e5a50004 	str	r0, [r5, #4]!
   10658:	1a000003 	bne	1066c <alloc_array+0x48>
   1065c:	e59f001c 	ldr	r0, [pc, #28]	; 10680 <alloc_array+0x5c>
   10660:	ebffff5b 	bl	103d4 <puts@plt>
   10664:	e3a00001 	mov	r0, #1
   10668:	ebffff65 	bl	10404 <exit@plt>
   1066c:	e1550006 	cmp	r5, r6
   10670:	1afffff4 	bne	10648 <alloc_array+0x24>
   10674:	e1a00004 	mov	r0, r4
   10678:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}
   1067c:	000108a0 	.word	0x000108a0
   10680:	000108c0 	.word	0x000108c0

00010684 <init_array>:
   10684:	e2402004 	sub	r2, r0, #4
   10688:	e280000c 	add	r0, r0, #12
   1068c:	e5b21004 	ldr	r1, [r2, #4]!
   10690:	e3a03000 	mov	r3, #0
   10694:	e7813103 	str	r3, [r1, r3, lsl #2]
   10698:	e2833001 	add	r3, r3, #1
   1069c:	e3530801 	cmp	r3, #65536	; 0x10000
   106a0:	1afffffb 	bne	10694 <init_array+0x10>
   106a4:	e1520000 	cmp	r2, r0
   106a8:	1afffff7 	bne	1068c <init_array+0x8>
   106ac:	e12fff1e 	bx	lr

000106b0 <init_matrices>:
   106b0:	e92d47f0 	push	{r4, r5, r6, r7, r8, r9, sl, lr}
   106b4:	e1a06000 	mov	r6, r0
   106b8:	e59f005c 	ldr	r0, [pc, #92]	; 1071c <init_matrices+0x6c>
   106bc:	e1a07001 	mov	r7, r1
   106c0:	e1a08002 	mov	r8, r2
   106c4:	ebffff51 	bl	10410 <srand@plt>
   106c8:	e3a04000 	mov	r4, #0
   106cc:	e1a09004 	mov	r9, r4
   106d0:	e3a05000 	mov	r5, #0
   106d4:	e3560000 	cmp	r6, #0
   106d8:	13570000 	cmpne	r7, #0
   106dc:	0a000005 	beq	106f8 <init_matrices+0x48>
   106e0:	e796a104 	ldr	sl, [r6, r4, lsl #2]
   106e4:	ebffff4c 	bl	1041c <rand@plt>
   106e8:	e78a0005 	str	r0, [sl, r5]
   106ec:	e797a104 	ldr	sl, [r7, r4, lsl #2]
   106f0:	ebffff49 	bl	1041c <rand@plt>
   106f4:	e78a0005 	str	r0, [sl, r5]
   106f8:	e7983104 	ldr	r3, [r8, r4, lsl #2]
   106fc:	e7839005 	str	r9, [r3, r5]
   10700:	e2855004 	add	r5, r5, #4
   10704:	e3550efa 	cmp	r5, #4000	; 0xfa0
   10708:	1afffff1 	bne	106d4 <init_matrices+0x24>
   1070c:	e2844001 	add	r4, r4, #1
   10710:	e3540ffa 	cmp	r4, #1000	; 0x3e8
   10714:	1affffed 	bne	106d0 <init_matrices+0x20>
   10718:	e8bd87f0 	pop	{r4, r5, r6, r7, r8, r9, sl, pc}
   1071c:	00001092 	.word	0x00001092

00010720 <check_result>:
   10720:	e92d4ff7 	push	{r0, r1, r2, r4, r5, r6, r7, r8, r9, sl, fp, lr}
   10724:	e1a07001 	mov	r7, r1
   10728:	e1a08002 	mov	r8, r2
   1072c:	e3a01000 	mov	r1, #0
   10730:	e7906101 	ldr	r6, [r0, r1, lsl #2]
   10734:	e7989101 	ldr	r9, [r8, r1, lsl #2]
   10738:	e286eef9 	add	lr, r6, #3984	; 0xf90
   1073c:	e3a02000 	mov	r2, #0
   10740:	e28ee00c 	add	lr, lr, #12
   10744:	ea000002 	b	10754 <check_result+0x34>
   10748:	e2822001 	add	r2, r2, #1
   1074c:	e3520ffa 	cmp	r2, #1000	; 0x3e8
   10750:	0a000011 	beq	1079c <check_result+0x7c>
   10754:	e1a05102 	lsl	r5, r2, #2
   10758:	e2463004 	sub	r3, r6, #4
   1075c:	e2474004 	sub	r4, r7, #4
   10760:	e3a0c000 	mov	ip, #0
   10764:	e5b4a004 	ldr	sl, [r4, #4]!
   10768:	e5b3b004 	ldr	fp, [r3, #4]!
   1076c:	e79aa005 	ldr	sl, [sl, r5]
   10770:	e15e0003 	cmp	lr, r3
   10774:	e02cca9b 	mla	ip, fp, sl, ip
   10778:	1afffff9 	bne	10764 <check_result+0x44>
   1077c:	e7993005 	ldr	r3, [r9, r5]
   10780:	e15c0003 	cmp	ip, r3
   10784:	0affffef 	beq	10748 <check_result+0x28>
   10788:	e58dc000 	str	ip, [sp]
   1078c:	e59f0024 	ldr	r0, [pc, #36]	; 107b8 <check_result+0x98>
   10790:	ebffff09 	bl	103bc <printf@plt>
   10794:	e28dd00c 	add	sp, sp, #12
   10798:	e8bd8ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, pc}
   1079c:	e2811001 	add	r1, r1, #1
   107a0:	e3510ffa 	cmp	r1, #1000	; 0x3e8
   107a4:	1affffe1 	bne	10730 <check_result+0x10>
   107a8:	e59f000c 	ldr	r0, [pc, #12]	; 107bc <check_result+0x9c>
   107ac:	e28dd00c 	add	sp, sp, #12
   107b0:	e8bd4ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
   107b4:	eaffff06 	b	103d4 <puts@plt>
   107b8:	000108e0 	.word	0x000108e0
   107bc:	000108fb 	.word	0x000108fb

000107c0 <mat_mult_c>:
   107c0:	e92d47f0 	push	{r4, r5, r6, r7, r8, r9, sl, lr}
   107c4:	e2424004 	sub	r4, r2, #4
   107c8:	e2822ef9 	add	r2, r2, #3984	; 0xf90
   107cc:	e2400004 	sub	r0, r0, #4
   107d0:	e282200c 	add	r2, r2, #12
   107d4:	e5b06004 	ldr	r6, [r0, #4]!
   107d8:	e5b47004 	ldr	r7, [r4, #4]!
   107dc:	e286cef9 	add	ip, r6, #3984	; 0xf90
   107e0:	e3a03000 	mov	r3, #0
   107e4:	e28cc00c 	add	ip, ip, #12
   107e8:	ea00000a 	b	10818 <mat_mult_c+0x58>
   107ec:	e5b8e004 	ldr	lr, [r8, #4]!
   107f0:	e5b5a004 	ldr	sl, [r5, #4]!
   107f4:	e7979003 	ldr	r9, [r7, r3]
   107f8:	e79ee003 	ldr	lr, [lr, r3]
   107fc:	e15c0005 	cmp	ip, r5
   10800:	e02e9e9a 	mla	lr, sl, lr, r9
   10804:	e787e003 	str	lr, [r7, r3]
   10808:	1afffff7 	bne	107ec <mat_mult_c+0x2c>
   1080c:	e2833004 	add	r3, r3, #4
   10810:	e3530efa 	cmp	r3, #4000	; 0xfa0
   10814:	0a000002 	beq	10824 <mat_mult_c+0x64>
   10818:	e2465004 	sub	r5, r6, #4
   1081c:	e2418004 	sub	r8, r1, #4
   10820:	eafffff1 	b	107ec <mat_mult_c+0x2c>
   10824:	e1520004 	cmp	r2, r4
   10828:	1affffe9 	bne	107d4 <mat_mult_c+0x14>
   1082c:	e8bd87f0 	pop	{r4, r5, r6, r7, r8, r9, sl, pc}

00010830 <__libc_csu_init>:
   10830:	e92d47f0 	push	{r4, r5, r6, r7, r8, r9, sl, lr}
   10834:	e1a07000 	mov	r7, r0
   10838:	e59f6048 	ldr	r6, [pc, #72]	; 10888 <__libc_csu_init+0x58>
   1083c:	e59f5048 	ldr	r5, [pc, #72]	; 1088c <__libc_csu_init+0x5c>
   10840:	e08f6006 	add	r6, pc, r6
   10844:	e08f5005 	add	r5, pc, r5
   10848:	e0466005 	sub	r6, r6, r5
   1084c:	e1a08001 	mov	r8, r1
   10850:	e1a09002 	mov	r9, r2
   10854:	ebfffed0 	bl	1039c <_init>
   10858:	e1b06146 	asrs	r6, r6, #2
   1085c:	08bd87f0 	popeq	{r4, r5, r6, r7, r8, r9, sl, pc}
   10860:	e3a04000 	mov	r4, #0
   10864:	e2844001 	add	r4, r4, #1
   10868:	e4953004 	ldr	r3, [r5], #4
   1086c:	e1a02009 	mov	r2, r9
   10870:	e1a01008 	mov	r1, r8
   10874:	e1a00007 	mov	r0, r7
   10878:	e12fff33 	blx	r3
   1087c:	e1560004 	cmp	r6, r4
   10880:	1afffff7 	bne	10864 <__libc_csu_init+0x34>
   10884:	e8bd87f0 	pop	{r4, r5, r6, r7, r8, r9, sl, pc}
   10888:	000106c8 	.word	0x000106c8
   1088c:	000106c0 	.word	0x000106c0

00010890 <__libc_csu_fini>:
   10890:	e12fff1e 	bx	lr

Disassembly of section .fini:

00010894 <_fini>:
   10894:	e92d4008 	push	{r3, lr}
   10898:	e8bd8008 	pop	{r3, pc}
