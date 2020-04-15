
execs/mat_mult/mat_mult_c_thumb_O2:     file format elf32-littlearm


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
   1045c:	eb000095 	bl	106b8 <init_matrices>
   10460:	e1a02004 	mov	r2, r4
   10464:	e1a01005 	mov	r1, r5
   10468:	e1a00006 	mov	r0, r6
   1046c:	fa0000e0 	blx	107f4 <mat_mult_c>
   10470:	e1a00006 	mov	r0, r6
   10474:	eb00005d 	bl	105f0 <free_matrix>
   10478:	e1a00005 	mov	r0, r5
   1047c:	eb00005b 	bl	105f0 <free_matrix>
   10480:	e1a00004 	mov	r0, r4
   10484:	eb000059 	bl	105f0 <free_matrix>
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
   104c0:	000108b0 	.word	0x000108b0
   104c4:	00010434 	.word	0x00010434
   104c8:	00010850 	.word	0x00010850

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
   105b8:	e92d4070 	push	{r4, r5, r6, lr}
   105bc:	e3a00efa 	mov	r0, #4000	; 0xfa0
   105c0:	ebffff86 	bl	103e0 <malloc@plt>
   105c4:	e2805ef9 	add	r5, r0, #3984	; 0xf90
   105c8:	e2404004 	sub	r4, r0, #4
   105cc:	e285500c 	add	r5, r5, #12
   105d0:	e1a06000 	mov	r6, r0
   105d4:	e3a00efa 	mov	r0, #4000	; 0xfa0
   105d8:	ebffff80 	bl	103e0 <malloc@plt>
   105dc:	e5a40004 	str	r0, [r4, #4]!
   105e0:	e1540005 	cmp	r4, r5
   105e4:	1afffffa 	bne	105d4 <allocate_matrix+0x1c>
   105e8:	e1a00006 	mov	r0, r6
   105ec:	e8bd8070 	pop	{r4, r5, r6, pc}

000105f0 <free_matrix>:
   105f0:	e92d4070 	push	{r4, r5, r6, lr}
   105f4:	e2805ef9 	add	r5, r0, #3984	; 0xf90
   105f8:	e285500c 	add	r5, r5, #12
   105fc:	e2404004 	sub	r4, r0, #4
   10600:	e1a06000 	mov	r6, r0
   10604:	e5b40004 	ldr	r0, [r4, #4]!
   10608:	ebffff6e 	bl	103c8 <free@plt>
   1060c:	e1540005 	cmp	r4, r5
   10610:	1afffffb 	bne	10604 <free_matrix+0x14>
   10614:	e1a00006 	mov	r0, r6
   10618:	e8bd4070 	pop	{r4, r5, r6, lr}
   1061c:	eaffff69 	b	103c8 <free@plt>

00010620 <alloc_array>:
   10620:	e92d4070 	push	{r4, r5, r6, lr}
   10624:	e3a00010 	mov	r0, #16
   10628:	ebffff6c 	bl	103e0 <malloc@plt>
   1062c:	e2506000 	subs	r6, r0, #0
   10630:	12464004 	subne	r4, r6, #4
   10634:	1286500c 	addne	r5, r6, #12
   10638:	0a00000d 	beq	10674 <alloc_array+0x54>
   1063c:	e3a00701 	mov	r0, #262144	; 0x40000
   10640:	ebffff66 	bl	103e0 <malloc@plt>
   10644:	e3500000 	cmp	r0, #0
   10648:	e5a40004 	str	r0, [r4, #4]!
   1064c:	0a000003 	beq	10660 <alloc_array+0x40>
   10650:	e1540005 	cmp	r4, r5
   10654:	1afffff8 	bne	1063c <alloc_array+0x1c>
   10658:	e1a00006 	mov	r0, r6
   1065c:	e8bd8070 	pop	{r4, r5, r6, pc}
   10660:	e30008e0 	movw	r0, #2272	; 0x8e0
   10664:	e3400001 	movt	r0, #1
   10668:	ebffff59 	bl	103d4 <puts@plt>
   1066c:	e3a00001 	mov	r0, #1
   10670:	ebffff63 	bl	10404 <exit@plt>
   10674:	e30008c0 	movw	r0, #2240	; 0x8c0
   10678:	e3400001 	movt	r0, #1
   1067c:	ebffff54 	bl	103d4 <puts@plt>
   10680:	e3a00001 	mov	r0, #1
   10684:	ebffff5e 	bl	10404 <exit@plt>

00010688 <init_array>:
   10688:	e2401004 	sub	r1, r0, #4
   1068c:	e280000c 	add	r0, r0, #12
   10690:	e5b12004 	ldr	r2, [r1, #4]!
   10694:	e3a03000 	mov	r3, #0
   10698:	e2422004 	sub	r2, r2, #4
   1069c:	e5a23004 	str	r3, [r2, #4]!
   106a0:	e2833001 	add	r3, r3, #1
   106a4:	e3530801 	cmp	r3, #65536	; 0x10000
   106a8:	1afffffb 	bne	1069c <init_array+0x14>
   106ac:	e1500001 	cmp	r0, r1
   106b0:	1afffff6 	bne	10690 <init_array+0x8>
   106b4:	e12fff1e 	bx	lr

000106b8 <init_matrices>:
   106b8:	e92d4ff0 	push	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
   106bc:	e24dd00c 	sub	sp, sp, #12
   106c0:	e1a03000 	mov	r3, r0
   106c4:	e3a05000 	mov	r5, #0
   106c8:	e1510005 	cmp	r1, r5
   106cc:	11530005 	cmpne	r3, r5
   106d0:	e58d0004 	str	r0, [sp, #4]
   106d4:	e3010092 	movw	r0, #4242	; 0x1092
   106d8:	e1a0a001 	mov	sl, r1
   106dc:	e1a08002 	mov	r8, r2
   106e0:	13a07001 	movne	r7, #1
   106e4:	03a07000 	moveq	r7, #0
   106e8:	ebffff48 	bl	10410 <srand@plt>
   106ec:	e1a06005 	mov	r6, r5
   106f0:	e3a04000 	mov	r4, #0
   106f4:	ea000004 	b	1070c <init_matrices+0x54>
   106f8:	e7983105 	ldr	r3, [r8, r5, lsl #2]
   106fc:	e7836004 	str	r6, [r3, r4]
   10700:	e2844004 	add	r4, r4, #4
   10704:	e3540efa 	cmp	r4, #4000	; 0xfa0
   10708:	0a000009 	beq	10734 <init_matrices+0x7c>
   1070c:	e3570000 	cmp	r7, #0
   10710:	0afffff8 	beq	106f8 <init_matrices+0x40>
   10714:	e59d3004 	ldr	r3, [sp, #4]
   10718:	e7939105 	ldr	r9, [r3, r5, lsl #2]
   1071c:	ebffff3e 	bl	1041c <rand@plt>
   10720:	e79ab105 	ldr	fp, [sl, r5, lsl #2]
   10724:	e7890004 	str	r0, [r9, r4]
   10728:	ebffff3b 	bl	1041c <rand@plt>
   1072c:	e78b0004 	str	r0, [fp, r4]
   10730:	eafffff0 	b	106f8 <init_matrices+0x40>
   10734:	e2855001 	add	r5, r5, #1
   10738:	e3550ffa 	cmp	r5, #1000	; 0x3e8
   1073c:	1affffeb 	bne	106f0 <init_matrices+0x38>
   10740:	e28dd00c 	add	sp, sp, #12
   10744:	e8bd8ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, pc}

00010748 <check_result>:
   10748:	e92d4ff0 	push	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
   1074c:	e2400004 	sub	r0, r0, #4
   10750:	e24dd00c 	sub	sp, sp, #12
   10754:	e242a004 	sub	sl, r2, #4
   10758:	e241b004 	sub	fp, r1, #4
   1075c:	e3a01000 	mov	r1, #0
   10760:	e5b09004 	ldr	r9, [r0, #4]!
   10764:	e3a02000 	mov	r2, #0
   10768:	e5ba8004 	ldr	r8, [sl, #4]!
   1076c:	e2897ef9 	add	r7, r9, #3984	; 0xf90
   10770:	e2499004 	sub	r9, r9, #4
   10774:	e287700c 	add	r7, r7, #12
   10778:	e2488004 	sub	r8, r8, #4
   1077c:	e1a06102 	lsl	r6, r2, #2
   10780:	e1a03009 	mov	r3, r9
   10784:	e1a0e00b 	mov	lr, fp
   10788:	e3a0c000 	mov	ip, #0
   1078c:	e5be4004 	ldr	r4, [lr, #4]!
   10790:	e5b35004 	ldr	r5, [r3, #4]!
   10794:	e7944006 	ldr	r4, [r4, r6]
   10798:	e1570003 	cmp	r7, r3
   1079c:	e02cc495 	mla	ip, r5, r4, ip
   107a0:	1afffff9 	bne	1078c <check_result+0x44>
   107a4:	e5b83004 	ldr	r3, [r8, #4]!
   107a8:	e15c0003 	cmp	ip, r3
   107ac:	1a00000a 	bne	107dc <check_result+0x94>
   107b0:	e2822001 	add	r2, r2, #1
   107b4:	e3520ffa 	cmp	r2, #1000	; 0x3e8
   107b8:	1affffef 	bne	1077c <check_result+0x34>
   107bc:	e2811001 	add	r1, r1, #1
   107c0:	e3510ffa 	cmp	r1, #1000	; 0x3e8
   107c4:	1affffe5 	bne	10760 <check_result+0x18>
   107c8:	e300091c 	movw	r0, #2332	; 0x91c
   107cc:	e3400001 	movt	r0, #1
   107d0:	e28dd00c 	add	sp, sp, #12
   107d4:	e8bd4ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
   107d8:	eafffefd 	b	103d4 <puts@plt>
   107dc:	e58dc000 	str	ip, [sp]
   107e0:	e3000900 	movw	r0, #2304	; 0x900
   107e4:	e3400001 	movt	r0, #1
   107e8:	ebfffef3 	bl	103bc <printf@plt>
   107ec:	e28dd00c 	add	sp, sp, #12
   107f0:	e8bd8ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, pc}

000107f4 <mat_mult_c>:
   107f4:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
   107f8:	3804      	subs	r0, #4
   107fa:	b083      	sub	sp, #12
   107fc:	f1a1 0804 	sub.w	r8, r1, #4
   10800:	f1a2 0b04 	sub.w	fp, r2, #4
   10804:	f602 739c 	addw	r3, r2, #3996	; 0xf9c
   10808:	9301      	str	r3, [sp, #4]
   1080a:	f85b cf04 	ldr.w	ip, [fp, #4]!
   1080e:	f850 3f04 	ldr.w	r3, [r0, #4]!
   10812:	f50c 6a7a 	add.w	sl, ip, #4000	; 0xfa0
   10816:	f1a3 0904 	sub.w	r9, r3, #4
   1081a:	f603 7e9c 	addw	lr, r3, #3996	; 0xf9c
   1081e:	4666      	mov	r6, ip
   10820:	6832      	ldr	r2, [r6, #0]
   10822:	eba6 070c 	sub.w	r7, r6, ip
   10826:	464b      	mov	r3, r9
   10828:	4641      	mov	r1, r8
   1082a:	f851 4f04 	ldr.w	r4, [r1, #4]!
   1082e:	f853 5f04 	ldr.w	r5, [r3, #4]!
   10832:	59e4      	ldr	r4, [r4, r7]
   10834:	459e      	cmp	lr, r3
   10836:	fb05 2204 	mla	r2, r5, r4, r2
   1083a:	6032      	str	r2, [r6, #0]
   1083c:	d1f5      	bne.n	1082a <mat_mult_c+0x36>
   1083e:	3604      	adds	r6, #4
   10840:	45b2      	cmp	sl, r6
   10842:	d1ed      	bne.n	10820 <mat_mult_c+0x2c>
   10844:	9b01      	ldr	r3, [sp, #4]
   10846:	455b      	cmp	r3, fp
   10848:	d1df      	bne.n	1080a <mat_mult_c+0x16>
   1084a:	b003      	add	sp, #12
   1084c:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}

00010850 <__libc_csu_init>:
   10850:	e92d47f0 	push	{r4, r5, r6, r7, r8, r9, sl, lr}
   10854:	e1a07000 	mov	r7, r0
   10858:	e59f6048 	ldr	r6, [pc, #72]	; 108a8 <__libc_csu_init+0x58>
   1085c:	e59f5048 	ldr	r5, [pc, #72]	; 108ac <__libc_csu_init+0x5c>
   10860:	e08f6006 	add	r6, pc, r6
   10864:	e08f5005 	add	r5, pc, r5
   10868:	e0466005 	sub	r6, r6, r5
   1086c:	e1a08001 	mov	r8, r1
   10870:	e1a09002 	mov	r9, r2
   10874:	ebfffec8 	bl	1039c <_init>
   10878:	e1b06146 	asrs	r6, r6, #2
   1087c:	08bd87f0 	popeq	{r4, r5, r6, r7, r8, r9, sl, pc}
   10880:	e3a04000 	mov	r4, #0
   10884:	e2844001 	add	r4, r4, #1
   10888:	e4953004 	ldr	r3, [r5], #4
   1088c:	e1a02009 	mov	r2, r9
   10890:	e1a01008 	mov	r1, r8
   10894:	e1a00007 	mov	r0, r7
   10898:	e12fff33 	blx	r3
   1089c:	e1560004 	cmp	r6, r4
   108a0:	1afffff7 	bne	10884 <__libc_csu_init+0x34>
   108a4:	e8bd87f0 	pop	{r4, r5, r6, r7, r8, r9, sl, pc}
   108a8:	000106a8 	.word	0x000106a8
   108ac:	000106a0 	.word	0x000106a0

000108b0 <__libc_csu_fini>:
   108b0:	e12fff1e 	bx	lr

Disassembly of section .fini:

000108b4 <_fini>:
   108b4:	e92d4008 	push	{r3, lr}
   108b8:	e8bd8008 	pop	{r3, pc}
