
execs/mat_mult/mat_mult_c_thumb_O1:     file format elf32-littlearm


Disassembly of section .init:

0001039c <_init>:
   1039c:	e92d4008 	push	{r3, lr}
   103a0:	eb000032 	bl	10470 <call_weak_fn>
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

00010434 <_start>:
   10434:	e3a0b000 	mov	fp, #0
   10438:	e3a0e000 	mov	lr, #0
   1043c:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
   10440:	e1a0200d 	mov	r2, sp
   10444:	e52d2004 	push	{r2}		; (str r2, [sp, #-4]!)
   10448:	e52d0004 	push	{r0}		; (str r0, [sp, #-4]!)
   1044c:	e59fc010 	ldr	ip, [pc, #16]	; 10464 <_start+0x30>
   10450:	e52dc004 	push	{ip}		; (str ip, [sp, #-4]!)
   10454:	e59f000c 	ldr	r0, [pc, #12]	; 10468 <_start+0x34>
   10458:	e59f300c 	ldr	r3, [pc, #12]	; 1046c <_start+0x38>
   1045c:	ebffffe2 	bl	103ec <__libc_start_main@plt>
   10460:	ebfffff0 	bl	10428 <abort@plt>
   10464:	00010888 	.word	0x00010888
   10468:	000106d4 	.word	0x000106d4
   1046c:	00010828 	.word	0x00010828

00010470 <call_weak_fn>:
   10470:	e59f3014 	ldr	r3, [pc, #20]	; 1048c <call_weak_fn+0x1c>
   10474:	e59f2014 	ldr	r2, [pc, #20]	; 10490 <call_weak_fn+0x20>
   10478:	e08f3003 	add	r3, pc, r3
   1047c:	e7932002 	ldr	r2, [r3, r2]
   10480:	e3520000 	cmp	r2, #0
   10484:	012fff1e 	bxeq	lr
   10488:	eaffffda 	b	103f8 <__gmon_start__@plt>
   1048c:	00010b80 	.word	0x00010b80
   10490:	00000034 	.word	0x00000034

00010494 <deregister_tm_clones>:
   10494:	e59f301c 	ldr	r3, [pc, #28]	; 104b8 <deregister_tm_clones+0x24>
   10498:	e59f001c 	ldr	r0, [pc, #28]	; 104bc <deregister_tm_clones+0x28>
   1049c:	e0433000 	sub	r3, r3, r0
   104a0:	e3530006 	cmp	r3, #6
   104a4:	912fff1e 	bxls	lr
   104a8:	e59f3010 	ldr	r3, [pc, #16]	; 104c0 <deregister_tm_clones+0x2c>
   104ac:	e3530000 	cmp	r3, #0
   104b0:	012fff1e 	bxeq	lr
   104b4:	e12fff13 	bx	r3
   104b8:	00021043 	.word	0x00021043
   104bc:	00021040 	.word	0x00021040
   104c0:	00000000 	.word	0x00000000

000104c4 <register_tm_clones>:
   104c4:	e59f1024 	ldr	r1, [pc, #36]	; 104f0 <register_tm_clones+0x2c>
   104c8:	e59f0024 	ldr	r0, [pc, #36]	; 104f4 <register_tm_clones+0x30>
   104cc:	e0411000 	sub	r1, r1, r0
   104d0:	e1a01141 	asr	r1, r1, #2
   104d4:	e0811fa1 	add	r1, r1, r1, lsr #31
   104d8:	e1b010c1 	asrs	r1, r1, #1
   104dc:	012fff1e 	bxeq	lr
   104e0:	e59f3010 	ldr	r3, [pc, #16]	; 104f8 <register_tm_clones+0x34>
   104e4:	e3530000 	cmp	r3, #0
   104e8:	012fff1e 	bxeq	lr
   104ec:	e12fff13 	bx	r3
   104f0:	00021040 	.word	0x00021040
   104f4:	00021040 	.word	0x00021040
   104f8:	00000000 	.word	0x00000000

000104fc <__do_global_dtors_aux>:
   104fc:	e92d4010 	push	{r4, lr}
   10500:	e59f4018 	ldr	r4, [pc, #24]	; 10520 <__do_global_dtors_aux+0x24>
   10504:	e5d43000 	ldrb	r3, [r4]
   10508:	e3530000 	cmp	r3, #0
   1050c:	18bd8010 	popne	{r4, pc}
   10510:	ebffffdf 	bl	10494 <deregister_tm_clones>
   10514:	e3a03001 	mov	r3, #1
   10518:	e5c43000 	strb	r3, [r4]
   1051c:	e8bd8010 	pop	{r4, pc}
   10520:	00021040 	.word	0x00021040

00010524 <frame_dummy>:
   10524:	e59f0028 	ldr	r0, [pc, #40]	; 10554 <frame_dummy+0x30>
   10528:	e5903000 	ldr	r3, [r0]
   1052c:	e3530000 	cmp	r3, #0
   10530:	1a000000 	bne	10538 <frame_dummy+0x14>
   10534:	eaffffe2 	b	104c4 <register_tm_clones>
   10538:	e59f3018 	ldr	r3, [pc, #24]	; 10558 <frame_dummy+0x34>
   1053c:	e3530000 	cmp	r3, #0
   10540:	0afffffb 	beq	10534 <frame_dummy+0x10>
   10544:	e92d4010 	push	{r4, lr}
   10548:	e12fff33 	blx	r3
   1054c:	e8bd4010 	pop	{r4, lr}
   10550:	eaffffdb 	b	104c4 <register_tm_clones>
   10554:	00020f14 	.word	0x00020f14
   10558:	00000000 	.word	0x00000000

0001055c <allocate_matrix>:
   1055c:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
   10560:	e3a00efa 	mov	r0, #4000	; 0xfa0
   10564:	ebffff9d 	bl	103e0 <malloc@plt>
   10568:	e1a07000 	mov	r7, r0
   1056c:	e2404004 	sub	r4, r0, #4
   10570:	e2805ef9 	add	r5, r0, #3984	; 0xf90
   10574:	e285500c 	add	r5, r5, #12
   10578:	e3a06efa 	mov	r6, #4000	; 0xfa0
   1057c:	e1a00006 	mov	r0, r6
   10580:	ebffff96 	bl	103e0 <malloc@plt>
   10584:	e5a40004 	str	r0, [r4, #4]!
   10588:	e1540005 	cmp	r4, r5
   1058c:	1afffffa 	bne	1057c <allocate_matrix+0x20>
   10590:	e1a00007 	mov	r0, r7
   10594:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}

00010598 <free_matrix>:
   10598:	e92d4070 	push	{r4, r5, r6, lr}
   1059c:	e1a06000 	mov	r6, r0
   105a0:	e2404004 	sub	r4, r0, #4
   105a4:	e2805ef9 	add	r5, r0, #3984	; 0xf90
   105a8:	e285500c 	add	r5, r5, #12
   105ac:	e5b40004 	ldr	r0, [r4, #4]!
   105b0:	ebffff84 	bl	103c8 <free@plt>
   105b4:	e1540005 	cmp	r4, r5
   105b8:	1afffffb 	bne	105ac <free_matrix+0x14>
   105bc:	e1a00006 	mov	r0, r6
   105c0:	ebffff80 	bl	103c8 <free@plt>
   105c4:	e8bd8070 	pop	{r4, r5, r6, pc}

000105c8 <alloc_array>:
   105c8:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
   105cc:	e3a00010 	mov	r0, #16
   105d0:	ebffff82 	bl	103e0 <malloc@plt>
   105d4:	e2507000 	subs	r7, r0, #0
   105d8:	12474004 	subne	r4, r7, #4
   105dc:	1287600c 	addne	r6, r7, #12
   105e0:	13a05701 	movne	r5, #262144	; 0x40000
   105e4:	0a000008 	beq	1060c <alloc_array+0x44>
   105e8:	e1a00005 	mov	r0, r5
   105ec:	ebffff7b 	bl	103e0 <malloc@plt>
   105f0:	e5a40004 	str	r0, [r4, #4]!
   105f4:	e3500000 	cmp	r0, #0
   105f8:	0a000008 	beq	10620 <alloc_array+0x58>
   105fc:	e1540006 	cmp	r4, r6
   10600:	1afffff8 	bne	105e8 <alloc_array+0x20>
   10604:	e1a00007 	mov	r0, r7
   10608:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}
   1060c:	e3000898 	movw	r0, #2200	; 0x898
   10610:	e3400001 	movt	r0, #1
   10614:	ebffff6e 	bl	103d4 <puts@plt>
   10618:	e3a00001 	mov	r0, #1
   1061c:	ebffff78 	bl	10404 <exit@plt>
   10620:	e30008b8 	movw	r0, #2232	; 0x8b8
   10624:	e3400001 	movt	r0, #1
   10628:	ebffff69 	bl	103d4 <puts@plt>
   1062c:	e3a00001 	mov	r0, #1
   10630:	ebffff73 	bl	10404 <exit@plt>

00010634 <init_array>:
   10634:	e2801010 	add	r1, r0, #16
   10638:	e3a03000 	mov	r3, #0
   1063c:	e5902000 	ldr	r2, [r0]
   10640:	e7823103 	str	r3, [r2, r3, lsl #2]
   10644:	e2833001 	add	r3, r3, #1
   10648:	e3530801 	cmp	r3, #65536	; 0x10000
   1064c:	1afffffa 	bne	1063c <init_array+0x8>
   10650:	e2800004 	add	r0, r0, #4
   10654:	e1500001 	cmp	r0, r1
   10658:	1afffff6 	bne	10638 <init_array+0x4>
   1065c:	e12fff1e 	bx	lr

00010660 <init_matrices>:
   10660:	e92d47f0 	push	{r4, r5, r6, r7, r8, r9, sl, lr}
   10664:	e1a07000 	mov	r7, r0
   10668:	e1a06001 	mov	r6, r1
   1066c:	e1a09002 	mov	r9, r2
   10670:	e3010092 	movw	r0, #4242	; 0x1092
   10674:	ebffff65 	bl	10410 <srand@plt>
   10678:	e3a05000 	mov	r5, #0
   1067c:	e1a08005 	mov	r8, r5
   10680:	ea000011 	b	106cc <init_matrices+0x6c>
   10684:	e7993105 	ldr	r3, [r9, r5, lsl #2]
   10688:	e7838004 	str	r8, [r3, r4]
   1068c:	e2844004 	add	r4, r4, #4
   10690:	e3540efa 	cmp	r4, #4000	; 0xfa0
   10694:	0a000009 	beq	106c0 <init_matrices+0x60>
   10698:	e3570000 	cmp	r7, #0
   1069c:	13560000 	cmpne	r6, #0
   106a0:	0afffff7 	beq	10684 <init_matrices+0x24>
   106a4:	e797a105 	ldr	sl, [r7, r5, lsl #2]
   106a8:	ebffff5b 	bl	1041c <rand@plt>
   106ac:	e78a0004 	str	r0, [sl, r4]
   106b0:	e796a105 	ldr	sl, [r6, r5, lsl #2]
   106b4:	ebffff58 	bl	1041c <rand@plt>
   106b8:	e78a0004 	str	r0, [sl, r4]
   106bc:	eafffff0 	b	10684 <init_matrices+0x24>
   106c0:	e2855001 	add	r5, r5, #1
   106c4:	e3550ffa 	cmp	r5, #1000	; 0x3e8
   106c8:	08bd87f0 	popeq	{r4, r5, r6, r7, r8, r9, sl, pc}
   106cc:	e3a04000 	mov	r4, #0
   106d0:	eafffff0 	b	10698 <init_matrices+0x38>

000106d4 <main>:
   106d4:	e92d4070 	push	{r4, r5, r6, lr}
   106d8:	ebffff9f 	bl	1055c <allocate_matrix>
   106dc:	e1a06000 	mov	r6, r0
   106e0:	ebffff9d 	bl	1055c <allocate_matrix>
   106e4:	e1a05000 	mov	r5, r0
   106e8:	ebffff9b 	bl	1055c <allocate_matrix>
   106ec:	e1a04000 	mov	r4, r0
   106f0:	e1a02000 	mov	r2, r0
   106f4:	e1a01005 	mov	r1, r5
   106f8:	e1a00006 	mov	r0, r6
   106fc:	ebffffd7 	bl	10660 <init_matrices>
   10700:	e1a02004 	mov	r2, r4
   10704:	e1a01005 	mov	r1, r5
   10708:	e1a00006 	mov	r0, r6
   1070c:	fa000032 	blx	107dc <mat_mult_c>
   10710:	e1a00006 	mov	r0, r6
   10714:	ebffff9f 	bl	10598 <free_matrix>
   10718:	e1a00005 	mov	r0, r5
   1071c:	ebffff9d 	bl	10598 <free_matrix>
   10720:	e1a00004 	mov	r0, r4
   10724:	ebffff9b 	bl	10598 <free_matrix>
   10728:	e3a00000 	mov	r0, #0
   1072c:	e8bd8070 	pop	{r4, r5, r6, pc}

00010730 <check_result>:
   10730:	e92d4ff0 	push	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
   10734:	e24dd00c 	sub	sp, sp, #12
   10738:	e2400004 	sub	r0, r0, #4
   1073c:	e242b004 	sub	fp, r2, #4
   10740:	e3a0a000 	mov	sl, #0
   10744:	ea000009 	b	10770 <check_result+0x40>
   10748:	e58dc000 	str	ip, [sp]
   1074c:	e1a0100a 	mov	r1, sl
   10750:	e30008d8 	movw	r0, #2264	; 0x8d8
   10754:	e3400001 	movt	r0, #1
   10758:	ebffff17 	bl	103bc <printf@plt>
   1075c:	e28dd00c 	add	sp, sp, #12
   10760:	e8bd8ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, pc}
   10764:	e28aa001 	add	sl, sl, #1
   10768:	e35a0ffa 	cmp	sl, #1000	; 0x3e8
   1076c:	0a000016 	beq	107cc <check_result+0x9c>
   10770:	e5b09004 	ldr	r9, [r0, #4]!
   10774:	e5bb8004 	ldr	r8, [fp, #4]!
   10778:	e2488004 	sub	r8, r8, #4
   1077c:	e3a02000 	mov	r2, #0
   10780:	e2897ef9 	add	r7, r9, #3984	; 0xf90
   10784:	e287700c 	add	r7, r7, #12
   10788:	e1a06102 	lsl	r6, r2, #2
   1078c:	e2493004 	sub	r3, r9, #4
   10790:	e241e004 	sub	lr, r1, #4
   10794:	e3a0c000 	mov	ip, #0
   10798:	e5be4004 	ldr	r4, [lr, #4]!
   1079c:	e7944006 	ldr	r4, [r4, r6]
   107a0:	e5b35004 	ldr	r5, [r3, #4]!
   107a4:	e02cc495 	mla	ip, r5, r4, ip
   107a8:	e1530007 	cmp	r3, r7
   107ac:	1afffff9 	bne	10798 <check_result+0x68>
   107b0:	e5b83004 	ldr	r3, [r8, #4]!
   107b4:	e15c0003 	cmp	ip, r3
   107b8:	1affffe2 	bne	10748 <check_result+0x18>
   107bc:	e2822001 	add	r2, r2, #1
   107c0:	e3520ffa 	cmp	r2, #1000	; 0x3e8
   107c4:	1affffef 	bne	10788 <check_result+0x58>
   107c8:	eaffffe5 	b	10764 <check_result+0x34>
   107cc:	e30008f4 	movw	r0, #2292	; 0x8f4
   107d0:	e3400001 	movt	r0, #1
   107d4:	ebfffefe 	bl	103d4 <puts@plt>
   107d8:	eaffffdf 	b	1075c <check_result+0x2c>

000107dc <mat_mult_c>:
   107dc:	e92d 43f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, lr}
   107e0:	4696      	mov	lr, r2
   107e2:	f502 697a 	add.w	r9, r2, #4000	; 0xfa0
   107e6:	4688      	mov	r8, r1
   107e8:	f501 6c7a 	add.w	ip, r1, #4000	; 0xfa0
   107ec:	e018      	b.n	10820 <mat_mult_c+0x44>
   107ee:	460b      	mov	r3, r1
   107f0:	f8de 6000 	ldr.w	r6, [lr]
   107f4:	eba3 0208 	sub.w	r2, r3, r8
   107f8:	6804      	ldr	r4, [r0, #0]
   107fa:	58a4      	ldr	r4, [r4, r2]
   107fc:	f853 2b04 	ldr.w	r2, [r3], #4
   10800:	5952      	ldr	r2, [r2, r5]
   10802:	5977      	ldr	r7, [r6, r5]
   10804:	fb02 7404 	mla	r4, r2, r4, r7
   10808:	5174      	str	r4, [r6, r5]
   1080a:	459c      	cmp	ip, r3
   1080c:	d1f0      	bne.n	107f0 <mat_mult_c+0x14>
   1080e:	3504      	adds	r5, #4
   10810:	f5b5 6f7a 	cmp.w	r5, #4000	; 0xfa0
   10814:	d1eb      	bne.n	107ee <mat_mult_c+0x12>
   10816:	f10e 0e04 	add.w	lr, lr, #4
   1081a:	3004      	adds	r0, #4
   1081c:	45ce      	cmp	lr, r9
   1081e:	d001      	beq.n	10824 <mat_mult_c+0x48>
   10820:	2500      	movs	r5, #0
   10822:	e7e4      	b.n	107ee <mat_mult_c+0x12>
   10824:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}

00010828 <__libc_csu_init>:
   10828:	e92d47f0 	push	{r4, r5, r6, r7, r8, r9, sl, lr}
   1082c:	e1a07000 	mov	r7, r0
   10830:	e59f6048 	ldr	r6, [pc, #72]	; 10880 <__libc_csu_init+0x58>
   10834:	e59f5048 	ldr	r5, [pc, #72]	; 10884 <__libc_csu_init+0x5c>
   10838:	e08f6006 	add	r6, pc, r6
   1083c:	e08f5005 	add	r5, pc, r5
   10840:	e0466005 	sub	r6, r6, r5
   10844:	e1a08001 	mov	r8, r1
   10848:	e1a09002 	mov	r9, r2
   1084c:	ebfffed2 	bl	1039c <_init>
   10850:	e1b06146 	asrs	r6, r6, #2
   10854:	08bd87f0 	popeq	{r4, r5, r6, r7, r8, r9, sl, pc}
   10858:	e3a04000 	mov	r4, #0
   1085c:	e2844001 	add	r4, r4, #1
   10860:	e4953004 	ldr	r3, [r5], #4
   10864:	e1a02009 	mov	r2, r9
   10868:	e1a01008 	mov	r1, r8
   1086c:	e1a00007 	mov	r0, r7
   10870:	e12fff33 	blx	r3
   10874:	e1560004 	cmp	r6, r4
   10878:	1afffff7 	bne	1085c <__libc_csu_init+0x34>
   1087c:	e8bd87f0 	pop	{r4, r5, r6, r7, r8, r9, sl, pc}
   10880:	000106d0 	.word	0x000106d0
   10884:	000106c8 	.word	0x000106c8

00010888 <__libc_csu_fini>:
   10888:	e12fff1e 	bx	lr

Disassembly of section .fini:

0001088c <_fini>:
   1088c:	e92d4008 	push	{r3, lr}
   10890:	e8bd8008 	pop	{r3, pc}