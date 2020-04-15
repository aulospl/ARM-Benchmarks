
execs/mem_access/mem_access_c_thumb_O3:     file format elf32-littlearm


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
   10440:	fa0000e4 	blx	107d8 <mem_access_c>
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
   10484:	0001083c 	.word	0x0001083c
   10488:	00010434 	.word	0x00010434
   1048c:	000107dc 	.word	0x000107dc

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
   1058c:	e2404004 	sub	r4, r0, #4
   10590:	e285500c 	add	r5, r5, #12
   10594:	e1a06000 	mov	r6, r0
   10598:	e3a00efa 	mov	r0, #4000	; 0xfa0
   1059c:	ebffff8f 	bl	103e0 <malloc@plt>
   105a0:	e5a40004 	str	r0, [r4, #4]!
   105a4:	e1540005 	cmp	r4, r5
   105a8:	1afffffa 	bne	10598 <allocate_matrix+0x1c>
   105ac:	e1a00006 	mov	r0, r6
   105b0:	e8bd8070 	pop	{r4, r5, r6, pc}

000105b4 <free_matrix>:
   105b4:	e92d4070 	push	{r4, r5, r6, lr}
   105b8:	e2805ef9 	add	r5, r0, #3984	; 0xf90
   105bc:	e285500c 	add	r5, r5, #12
   105c0:	e2404004 	sub	r4, r0, #4
   105c4:	e1a06000 	mov	r6, r0
   105c8:	e5b40004 	ldr	r0, [r4, #4]!
   105cc:	ebffff7d 	bl	103c8 <free@plt>
   105d0:	e1550004 	cmp	r5, r4
   105d4:	1afffffb 	bne	105c8 <free_matrix+0x14>
   105d8:	e1a00006 	mov	r0, r6
   105dc:	e8bd4070 	pop	{r4, r5, r6, lr}
   105e0:	eaffff78 	b	103c8 <free@plt>

000105e4 <alloc_array>:
   105e4:	e92d4070 	push	{r4, r5, r6, lr}
   105e8:	e3a00010 	mov	r0, #16
   105ec:	ebffff7b 	bl	103e0 <malloc@plt>
   105f0:	e2506000 	subs	r6, r0, #0
   105f4:	12464004 	subne	r4, r6, #4
   105f8:	1286500c 	addne	r5, r6, #12
   105fc:	0a00000d 	beq	10638 <alloc_array+0x54>
   10600:	e3a00701 	mov	r0, #262144	; 0x40000
   10604:	ebffff75 	bl	103e0 <malloc@plt>
   10608:	e3500000 	cmp	r0, #0
   1060c:	e5a40004 	str	r0, [r4, #4]!
   10610:	0a000003 	beq	10624 <alloc_array+0x40>
   10614:	e1540005 	cmp	r4, r5
   10618:	1afffff8 	bne	10600 <alloc_array+0x1c>
   1061c:	e1a00006 	mov	r0, r6
   10620:	e8bd8070 	pop	{r4, r5, r6, pc}
   10624:	e300086c 	movw	r0, #2156	; 0x86c
   10628:	e3400001 	movt	r0, #1
   1062c:	ebffff68 	bl	103d4 <puts@plt>
   10630:	e3a00001 	mov	r0, #1
   10634:	ebffff72 	bl	10404 <exit@plt>
   10638:	e300084c 	movw	r0, #2124	; 0x84c
   1063c:	e3400001 	movt	r0, #1
   10640:	ebffff63 	bl	103d4 <puts@plt>
   10644:	e3a00001 	mov	r0, #1
   10648:	ebffff6d 	bl	10404 <exit@plt>

0001064c <init_array>:
   1064c:	e2401004 	sub	r1, r0, #4
   10650:	e280000c 	add	r0, r0, #12
   10654:	e5b12004 	ldr	r2, [r1, #4]!
   10658:	e3a03000 	mov	r3, #0
   1065c:	e2422004 	sub	r2, r2, #4
   10660:	e5a23004 	str	r3, [r2, #4]!
   10664:	e2833001 	add	r3, r3, #1
   10668:	e3530801 	cmp	r3, #65536	; 0x10000
   1066c:	1afffffb 	bne	10660 <init_array+0x14>
   10670:	e1500001 	cmp	r0, r1
   10674:	1afffff6 	bne	10654 <init_array+0x8>
   10678:	e12fff1e 	bx	lr

0001067c <init_matrices>:
   1067c:	e92d4ff0 	push	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
   10680:	e1a09000 	mov	r9, r0
   10684:	e24dd00c 	sub	sp, sp, #12
   10688:	e3510000 	cmp	r1, #0
   1068c:	13590000 	cmpne	r9, #0
   10690:	e3010092 	movw	r0, #4242	; 0x1092
   10694:	e1a06009 	mov	r6, r9
   10698:	e1a07002 	mov	r7, r2
   1069c:	e2863efa 	add	r3, r6, #4000	; 0xfa0
   106a0:	13a09001 	movne	r9, #1
   106a4:	03a09000 	moveq	r9, #0
   106a8:	e1a08001 	mov	r8, r1
   106ac:	e58d3004 	str	r3, [sp, #4]
   106b0:	ebffff56 	bl	10410 <srand@plt>
   106b4:	e3a05000 	mov	r5, #0
   106b8:	e3590000 	cmp	r9, #0
   106bc:	1a00000d 	bne	106f8 <init_matrices+0x7c>
   106c0:	e5972000 	ldr	r2, [r7]
   106c4:	e1a03009 	mov	r3, r9
   106c8:	e7825003 	str	r5, [r2, r3]
   106cc:	e2833004 	add	r3, r3, #4
   106d0:	e3530efa 	cmp	r3, #4000	; 0xfa0
   106d4:	1afffffb 	bne	106c8 <init_matrices+0x4c>
   106d8:	e59d3004 	ldr	r3, [sp, #4]
   106dc:	e2866004 	add	r6, r6, #4
   106e0:	e2888004 	add	r8, r8, #4
   106e4:	e2877004 	add	r7, r7, #4
   106e8:	e1530006 	cmp	r3, r6
   106ec:	1afffff1 	bne	106b8 <init_matrices+0x3c>
   106f0:	e28dd00c 	add	sp, sp, #12
   106f4:	e8bd8ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, pc}
   106f8:	e3a04000 	mov	r4, #0
   106fc:	e596a000 	ldr	sl, [r6]
   10700:	ebffff45 	bl	1041c <rand@plt>
   10704:	e598b000 	ldr	fp, [r8]
   10708:	e78a0004 	str	r0, [sl, r4]
   1070c:	ebffff42 	bl	1041c <rand@plt>
   10710:	e5973000 	ldr	r3, [r7]
   10714:	e78b0004 	str	r0, [fp, r4]
   10718:	e7835004 	str	r5, [r3, r4]
   1071c:	e2844004 	add	r4, r4, #4
   10720:	e3540efa 	cmp	r4, #4000	; 0xfa0
   10724:	1afffff4 	bne	106fc <init_matrices+0x80>
   10728:	eaffffea 	b	106d8 <init_matrices+0x5c>

0001072c <check_result>:
   1072c:	e92d4ff0 	push	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
   10730:	e2400004 	sub	r0, r0, #4
   10734:	e24dd00c 	sub	sp, sp, #12
   10738:	e242a004 	sub	sl, r2, #4
   1073c:	e241b004 	sub	fp, r1, #4
   10740:	e3a01000 	mov	r1, #0
   10744:	e5b09004 	ldr	r9, [r0, #4]!
   10748:	e3a02000 	mov	r2, #0
   1074c:	e5ba8004 	ldr	r8, [sl, #4]!
   10750:	e2897ef9 	add	r7, r9, #3984	; 0xf90
   10754:	e2499004 	sub	r9, r9, #4
   10758:	e287700c 	add	r7, r7, #12
   1075c:	e2488004 	sub	r8, r8, #4
   10760:	e1a06102 	lsl	r6, r2, #2
   10764:	e1a03009 	mov	r3, r9
   10768:	e1a0e00b 	mov	lr, fp
   1076c:	e3a0c000 	mov	ip, #0
   10770:	e5be4004 	ldr	r4, [lr, #4]!
   10774:	e5b35004 	ldr	r5, [r3, #4]!
   10778:	e7944006 	ldr	r4, [r4, r6]
   1077c:	e1570003 	cmp	r7, r3
   10780:	e02cc495 	mla	ip, r5, r4, ip
   10784:	1afffff9 	bne	10770 <check_result+0x44>
   10788:	e5b83004 	ldr	r3, [r8, #4]!
   1078c:	e15c0003 	cmp	ip, r3
   10790:	1a00000a 	bne	107c0 <check_result+0x94>
   10794:	e2822001 	add	r2, r2, #1
   10798:	e3520ffa 	cmp	r2, #1000	; 0x3e8
   1079c:	1affffef 	bne	10760 <check_result+0x34>
   107a0:	e2811001 	add	r1, r1, #1
   107a4:	e3510ffa 	cmp	r1, #1000	; 0x3e8
   107a8:	1affffe5 	bne	10744 <check_result+0x18>
   107ac:	e30008a8 	movw	r0, #2216	; 0x8a8
   107b0:	e3400001 	movt	r0, #1
   107b4:	e28dd00c 	add	sp, sp, #12
   107b8:	e8bd4ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
   107bc:	eaffff04 	b	103d4 <puts@plt>
   107c0:	e58dc000 	str	ip, [sp]
   107c4:	e300088c 	movw	r0, #2188	; 0x88c
   107c8:	e3400001 	movt	r0, #1
   107cc:	ebfffefa 	bl	103bc <printf@plt>
   107d0:	e28dd00c 	add	sp, sp, #12
   107d4:	e8bd8ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, pc}

000107d8 <mem_access_c>:
   107d8:	4770      	bx	lr
   107da:	bf00      	nop

000107dc <__libc_csu_init>:
   107dc:	e92d47f0 	push	{r4, r5, r6, r7, r8, r9, sl, lr}
   107e0:	e1a07000 	mov	r7, r0
   107e4:	e59f6048 	ldr	r6, [pc, #72]	; 10834 <__libc_csu_init+0x58>
   107e8:	e59f5048 	ldr	r5, [pc, #72]	; 10838 <__libc_csu_init+0x5c>
   107ec:	e08f6006 	add	r6, pc, r6
   107f0:	e08f5005 	add	r5, pc, r5
   107f4:	e0466005 	sub	r6, r6, r5
   107f8:	e1a08001 	mov	r8, r1
   107fc:	e1a09002 	mov	r9, r2
   10800:	ebfffee5 	bl	1039c <_init>
   10804:	e1b06146 	asrs	r6, r6, #2
   10808:	08bd87f0 	popeq	{r4, r5, r6, r7, r8, r9, sl, pc}
   1080c:	e3a04000 	mov	r4, #0
   10810:	e2844001 	add	r4, r4, #1
   10814:	e4953004 	ldr	r3, [r5], #4
   10818:	e1a02009 	mov	r2, r9
   1081c:	e1a01008 	mov	r1, r8
   10820:	e1a00007 	mov	r0, r7
   10824:	e12fff33 	blx	r3
   10828:	e1560004 	cmp	r6, r4
   1082c:	1afffff7 	bne	10810 <__libc_csu_init+0x34>
   10830:	e8bd87f0 	pop	{r4, r5, r6, r7, r8, r9, sl, pc}
   10834:	0001071c 	.word	0x0001071c
   10838:	00010714 	.word	0x00010714

0001083c <__libc_csu_fini>:
   1083c:	e12fff1e 	bx	lr

Disassembly of section .fini:

00010840 <_fini>:
   10840:	e92d4008 	push	{r3, lr}
   10844:	e8bd8008 	pop	{r3, pc}
