
execs/mat_mult/mat_mult_c_arm_O2:     file format elf32-littlearm


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
   1045c:	eb000097 	bl	106c0 <init_matrices>
   10460:	e1a02004 	mov	r2, r4
   10464:	e1a01005 	mov	r1, r5
   10468:	e1a00006 	mov	r0, r6
   1046c:	eb0000e3 	bl	10800 <mat_mult_c>
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
   104c0:	000108e8 	.word	0x000108e8
   104c4:	00010434 	.word	0x00010434
   104c8:	00010888 	.word	0x00010888

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
   105c4:	e3a06efa 	mov	r6, #4000	; 0xfa0
   105c8:	e2805ef9 	add	r5, r0, #3984	; 0xf90
   105cc:	e1a07000 	mov	r7, r0
   105d0:	e285500c 	add	r5, r5, #12
   105d4:	e2404004 	sub	r4, r0, #4
   105d8:	e1a00006 	mov	r0, r6
   105dc:	ebffff7f 	bl	103e0 <malloc@plt>
   105e0:	e5a40004 	str	r0, [r4, #4]!
   105e4:	e1540005 	cmp	r4, r5
   105e8:	1afffffa 	bne	105d8 <allocate_matrix+0x20>
   105ec:	e1a00007 	mov	r0, r7
   105f0:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}

000105f4 <free_matrix>:
   105f4:	e92d4070 	push	{r4, r5, r6, lr}
   105f8:	e2805ef9 	add	r5, r0, #3984	; 0xf90
   105fc:	e1a06000 	mov	r6, r0
   10600:	e285500c 	add	r5, r5, #12
   10604:	e2404004 	sub	r4, r0, #4
   10608:	e5b40004 	ldr	r0, [r4, #4]!
   1060c:	ebffff6d 	bl	103c8 <free@plt>
   10610:	e1540005 	cmp	r4, r5
   10614:	1afffffb 	bne	10608 <free_matrix+0x14>
   10618:	e1a00006 	mov	r0, r6
   1061c:	e8bd4070 	pop	{r4, r5, r6, lr}
   10620:	eaffff68 	b	103c8 <free@plt>

00010624 <alloc_array>:
   10624:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
   10628:	e3a00010 	mov	r0, #16
   1062c:	ebffff6b 	bl	103e0 <malloc@plt>
   10630:	e2507000 	subs	r7, r0, #0
   10634:	12474004 	subne	r4, r7, #4
   10638:	1287600c 	addne	r6, r7, #12
   1063c:	13a05701 	movne	r5, #262144	; 0x40000
   10640:	0a00000c 	beq	10678 <alloc_array+0x54>
   10644:	e1a00005 	mov	r0, r5
   10648:	ebffff64 	bl	103e0 <malloc@plt>
   1064c:	e3500000 	cmp	r0, #0
   10650:	e5a40004 	str	r0, [r4, #4]!
   10654:	0a000003 	beq	10668 <alloc_array+0x44>
   10658:	e1540006 	cmp	r4, r6
   1065c:	1afffff8 	bne	10644 <alloc_array+0x20>
   10660:	e1a00007 	mov	r0, r7
   10664:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}
   10668:	e59f0018 	ldr	r0, [pc, #24]	; 10688 <alloc_array+0x64>
   1066c:	ebffff58 	bl	103d4 <puts@plt>
   10670:	e3a00001 	mov	r0, #1
   10674:	ebffff62 	bl	10404 <exit@plt>
   10678:	e59f000c 	ldr	r0, [pc, #12]	; 1068c <alloc_array+0x68>
   1067c:	ebffff54 	bl	103d4 <puts@plt>
   10680:	e3a00001 	mov	r0, #1
   10684:	ebffff5e 	bl	10404 <exit@plt>
   10688:	00010918 	.word	0x00010918
   1068c:	000108f8 	.word	0x000108f8

00010690 <init_array>:
   10690:	e2401004 	sub	r1, r0, #4
   10694:	e280000c 	add	r0, r0, #12
   10698:	e5b12004 	ldr	r2, [r1, #4]!
   1069c:	e3a03000 	mov	r3, #0
   106a0:	e2422004 	sub	r2, r2, #4
   106a4:	e5a23004 	str	r3, [r2, #4]!
   106a8:	e2833001 	add	r3, r3, #1
   106ac:	e3530801 	cmp	r3, #65536	; 0x10000
   106b0:	1afffffb 	bne	106a4 <init_array+0x14>
   106b4:	e1500001 	cmp	r0, r1
   106b8:	1afffff6 	bne	10698 <init_array+0x8>
   106bc:	e12fff1e 	bx	lr

000106c0 <init_matrices>:
   106c0:	e92d4ff0 	push	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
   106c4:	e24dd00c 	sub	sp, sp, #12
   106c8:	e1a03000 	mov	r3, r0
   106cc:	e3a05000 	mov	r5, #0
   106d0:	e1510005 	cmp	r1, r5
   106d4:	11530005 	cmpne	r3, r5
   106d8:	e58d0004 	str	r0, [sp, #4]
   106dc:	e59f006c 	ldr	r0, [pc, #108]	; 10750 <init_matrices+0x90>
   106e0:	e1a0a001 	mov	sl, r1
   106e4:	e1a08002 	mov	r8, r2
   106e8:	13a07001 	movne	r7, #1
   106ec:	03a07000 	moveq	r7, #0
   106f0:	ebffff46 	bl	10410 <srand@plt>
   106f4:	e1a06005 	mov	r6, r5
   106f8:	e3a04000 	mov	r4, #0
   106fc:	ea000004 	b	10714 <init_matrices+0x54>
   10700:	e7983105 	ldr	r3, [r8, r5, lsl #2]
   10704:	e7836004 	str	r6, [r3, r4]
   10708:	e2844004 	add	r4, r4, #4
   1070c:	e3540efa 	cmp	r4, #4000	; 0xfa0
   10710:	0a000009 	beq	1073c <init_matrices+0x7c>
   10714:	e3570000 	cmp	r7, #0
   10718:	0afffff8 	beq	10700 <init_matrices+0x40>
   1071c:	e59d3004 	ldr	r3, [sp, #4]
   10720:	e7939105 	ldr	r9, [r3, r5, lsl #2]
   10724:	ebffff3c 	bl	1041c <rand@plt>
   10728:	e79ab105 	ldr	fp, [sl, r5, lsl #2]
   1072c:	e7890004 	str	r0, [r9, r4]
   10730:	ebffff39 	bl	1041c <rand@plt>
   10734:	e78b0004 	str	r0, [fp, r4]
   10738:	eafffff0 	b	10700 <init_matrices+0x40>
   1073c:	e2855001 	add	r5, r5, #1
   10740:	e3550ffa 	cmp	r5, #1000	; 0x3e8
   10744:	1affffeb 	bne	106f8 <init_matrices+0x38>
   10748:	e28dd00c 	add	sp, sp, #12
   1074c:	e8bd8ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, pc}
   10750:	00001092 	.word	0x00001092

00010754 <check_result>:
   10754:	e92d4ff0 	push	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
   10758:	e2400004 	sub	r0, r0, #4
   1075c:	e241b004 	sub	fp, r1, #4
   10760:	e24dd00c 	sub	sp, sp, #12
   10764:	e242a004 	sub	sl, r2, #4
   10768:	e3a01000 	mov	r1, #0
   1076c:	e5b09004 	ldr	r9, [r0, #4]!
   10770:	e5ba8004 	ldr	r8, [sl, #4]!
   10774:	e2897ef9 	add	r7, r9, #3984	; 0xf90
   10778:	e287700c 	add	r7, r7, #12
   1077c:	e2499004 	sub	r9, r9, #4
   10780:	e2488004 	sub	r8, r8, #4
   10784:	e3a02000 	mov	r2, #0
   10788:	e1a06102 	lsl	r6, r2, #2
   1078c:	e1a03009 	mov	r3, r9
   10790:	e1a0e00b 	mov	lr, fp
   10794:	e3a0c000 	mov	ip, #0
   10798:	e5be4004 	ldr	r4, [lr, #4]!
   1079c:	e5b35004 	ldr	r5, [r3, #4]!
   107a0:	e7944006 	ldr	r4, [r4, r6]
   107a4:	e1570003 	cmp	r7, r3
   107a8:	e02cc495 	mla	ip, r5, r4, ip
   107ac:	1afffff9 	bne	10798 <check_result+0x44>
   107b0:	e5b83004 	ldr	r3, [r8, #4]!
   107b4:	e15c0003 	cmp	ip, r3
   107b8:	1a000009 	bne	107e4 <check_result+0x90>
   107bc:	e2822001 	add	r2, r2, #1
   107c0:	e3520ffa 	cmp	r2, #1000	; 0x3e8
   107c4:	1affffef 	bne	10788 <check_result+0x34>
   107c8:	e2811001 	add	r1, r1, #1
   107cc:	e3510ffa 	cmp	r1, #1000	; 0x3e8
   107d0:	1affffe5 	bne	1076c <check_result+0x18>
   107d4:	e59f001c 	ldr	r0, [pc, #28]	; 107f8 <check_result+0xa4>
   107d8:	e28dd00c 	add	sp, sp, #12
   107dc:	e8bd4ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
   107e0:	eafffefb 	b	103d4 <puts@plt>
   107e4:	e58dc000 	str	ip, [sp]
   107e8:	e59f000c 	ldr	r0, [pc, #12]	; 107fc <check_result+0xa8>
   107ec:	ebfffef2 	bl	103bc <printf@plt>
   107f0:	e28dd00c 	add	sp, sp, #12
   107f4:	e8bd8ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, pc}
   107f8:	00010954 	.word	0x00010954
   107fc:	00010938 	.word	0x00010938

00010800 <mat_mult_c>:
   10800:	e92d4ff0 	push	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
   10804:	e2823ef9 	add	r3, r2, #3984	; 0xf90
   10808:	e24dd00c 	sub	sp, sp, #12
   1080c:	e2400004 	sub	r0, r0, #4
   10810:	e2411004 	sub	r1, r1, #4
   10814:	e242b004 	sub	fp, r2, #4
   10818:	e283300c 	add	r3, r3, #12
   1081c:	e58d3004 	str	r3, [sp, #4]
   10820:	e5b08004 	ldr	r8, [r0, #4]!
   10824:	e5bb9004 	ldr	r9, [fp, #4]!
   10828:	e2887ef9 	add	r7, r8, #3984	; 0xf90
   1082c:	e287700c 	add	r7, r7, #12
   10830:	e2488004 	sub	r8, r8, #4
   10834:	e289aefa 	add	sl, r9, #4000	; 0xfa0
   10838:	e1a05009 	mov	r5, r9
   1083c:	e5952000 	ldr	r2, [r5]
   10840:	e0456009 	sub	r6, r5, r9
   10844:	e1a03008 	mov	r3, r8
   10848:	e1a0c001 	mov	ip, r1
   1084c:	e5bce004 	ldr	lr, [ip, #4]!
   10850:	e5b34004 	ldr	r4, [r3, #4]!
   10854:	e79ee006 	ldr	lr, [lr, r6]
   10858:	e1570003 	cmp	r7, r3
   1085c:	e0222e94 	mla	r2, r4, lr, r2
   10860:	e5852000 	str	r2, [r5]
   10864:	1afffff8 	bne	1084c <mat_mult_c+0x4c>
   10868:	e2855004 	add	r5, r5, #4
   1086c:	e15a0005 	cmp	sl, r5
   10870:	1afffff1 	bne	1083c <mat_mult_c+0x3c>
   10874:	e59d3004 	ldr	r3, [sp, #4]
   10878:	e153000b 	cmp	r3, fp
   1087c:	1affffe7 	bne	10820 <mat_mult_c+0x20>
   10880:	e28dd00c 	add	sp, sp, #12
   10884:	e8bd8ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, pc}

00010888 <__libc_csu_init>:
   10888:	e92d47f0 	push	{r4, r5, r6, r7, r8, r9, sl, lr}
   1088c:	e1a07000 	mov	r7, r0
   10890:	e59f6048 	ldr	r6, [pc, #72]	; 108e0 <__libc_csu_init+0x58>
   10894:	e59f5048 	ldr	r5, [pc, #72]	; 108e4 <__libc_csu_init+0x5c>
   10898:	e08f6006 	add	r6, pc, r6
   1089c:	e08f5005 	add	r5, pc, r5
   108a0:	e0466005 	sub	r6, r6, r5
   108a4:	e1a08001 	mov	r8, r1
   108a8:	e1a09002 	mov	r9, r2
   108ac:	ebfffeba 	bl	1039c <_init>
   108b0:	e1b06146 	asrs	r6, r6, #2
   108b4:	08bd87f0 	popeq	{r4, r5, r6, r7, r8, r9, sl, pc}
   108b8:	e3a04000 	mov	r4, #0
   108bc:	e2844001 	add	r4, r4, #1
   108c0:	e4953004 	ldr	r3, [r5], #4
   108c4:	e1a02009 	mov	r2, r9
   108c8:	e1a01008 	mov	r1, r8
   108cc:	e1a00007 	mov	r0, r7
   108d0:	e12fff33 	blx	r3
   108d4:	e1560004 	cmp	r6, r4
   108d8:	1afffff7 	bne	108bc <__libc_csu_init+0x34>
   108dc:	e8bd87f0 	pop	{r4, r5, r6, r7, r8, r9, sl, pc}
   108e0:	00010670 	.word	0x00010670
   108e4:	00010668 	.word	0x00010668

000108e8 <__libc_csu_fini>:
   108e8:	e12fff1e 	bx	lr

Disassembly of section .fini:

000108ec <_fini>:
   108ec:	e92d4008 	push	{r3, lr}
   108f0:	e8bd8008 	pop	{r3, pc}
