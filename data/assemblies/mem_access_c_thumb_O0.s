
execs/mem_access/mem_access_c_thumb_O0:     file format elf32-littlearm


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
   10464:	00010b1c 	.word	0x00010b1c
   10468:	0001055c 	.word	0x0001055c
   1046c:	00010abc 	.word	0x00010abc

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

0001055c <main>:
   1055c:	e92d4800 	push	{fp, lr}
   10560:	e28db004 	add	fp, sp, #4
   10564:	e24dd008 	sub	sp, sp, #8
   10568:	e3a03000 	mov	r3, #0
   1056c:	e50b3008 	str	r3, [fp, #-8]
   10570:	eb00003d 	bl	1066c <alloc_array>
   10574:	e50b0008 	str	r0, [fp, #-8]
   10578:	e51b0008 	ldr	r0, [fp, #-8]
   1057c:	fa00013a 	blx	10a6c <mem_access_c>
   10580:	e51b0008 	ldr	r0, [fp, #-8]
   10584:	ebffff8f 	bl	103c8 <free@plt>
   10588:	e3a03000 	mov	r3, #0
   1058c:	e1a00003 	mov	r0, r3
   10590:	e24bd004 	sub	sp, fp, #4
   10594:	e8bd8800 	pop	{fp, pc}

00010598 <allocate_matrix>:
   10598:	e92d4810 	push	{r4, fp, lr}
   1059c:	e28db008 	add	fp, sp, #8
   105a0:	e24dd00c 	sub	sp, sp, #12
   105a4:	e3a00efa 	mov	r0, #4000	; 0xfa0
   105a8:	ebffff8c 	bl	103e0 <malloc@plt>
   105ac:	e1a03000 	mov	r3, r0
   105b0:	e50b3014 	str	r3, [fp, #-20]	; 0xffffffec
   105b4:	e3a03000 	mov	r3, #0
   105b8:	e50b3010 	str	r3, [fp, #-16]
   105bc:	ea00000a 	b	105ec <allocate_matrix+0x54>
   105c0:	e51b3010 	ldr	r3, [fp, #-16]
   105c4:	e1a03103 	lsl	r3, r3, #2
   105c8:	e51b2014 	ldr	r2, [fp, #-20]	; 0xffffffec
   105cc:	e0824003 	add	r4, r2, r3
   105d0:	e3a00efa 	mov	r0, #4000	; 0xfa0
   105d4:	ebffff81 	bl	103e0 <malloc@plt>
   105d8:	e1a03000 	mov	r3, r0
   105dc:	e5843000 	str	r3, [r4]
   105e0:	e51b3010 	ldr	r3, [fp, #-16]
   105e4:	e2833001 	add	r3, r3, #1
   105e8:	e50b3010 	str	r3, [fp, #-16]
   105ec:	e51b3010 	ldr	r3, [fp, #-16]
   105f0:	e3530ffa 	cmp	r3, #1000	; 0x3e8
   105f4:	bafffff1 	blt	105c0 <allocate_matrix+0x28>
   105f8:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
   105fc:	e1a00003 	mov	r0, r3
   10600:	e24bd008 	sub	sp, fp, #8
   10604:	e8bd8810 	pop	{r4, fp, pc}

00010608 <free_matrix>:
   10608:	e92d4800 	push	{fp, lr}
   1060c:	e28db004 	add	fp, sp, #4
   10610:	e24dd010 	sub	sp, sp, #16
   10614:	e50b0010 	str	r0, [fp, #-16]
   10618:	e3a03000 	mov	r3, #0
   1061c:	e50b3008 	str	r3, [fp, #-8]
   10620:	ea000009 	b	1064c <free_matrix+0x44>
   10624:	e51b3008 	ldr	r3, [fp, #-8]
   10628:	e1a03103 	lsl	r3, r3, #2
   1062c:	e51b2010 	ldr	r2, [fp, #-16]
   10630:	e0823003 	add	r3, r2, r3
   10634:	e5933000 	ldr	r3, [r3]
   10638:	e1a00003 	mov	r0, r3
   1063c:	ebffff61 	bl	103c8 <free@plt>
   10640:	e51b3008 	ldr	r3, [fp, #-8]
   10644:	e2833001 	add	r3, r3, #1
   10648:	e50b3008 	str	r3, [fp, #-8]
   1064c:	e51b3008 	ldr	r3, [fp, #-8]
   10650:	e3530ffa 	cmp	r3, #1000	; 0x3e8
   10654:	bafffff2 	blt	10624 <free_matrix+0x1c>
   10658:	e51b0010 	ldr	r0, [fp, #-16]
   1065c:	ebffff59 	bl	103c8 <free@plt>
   10660:	e320f000 	nop	{0}
   10664:	e24bd004 	sub	sp, fp, #4
   10668:	e8bd8800 	pop	{fp, pc}

0001066c <alloc_array>:
   1066c:	e92d4810 	push	{r4, fp, lr}
   10670:	e28db008 	add	fp, sp, #8
   10674:	e24dd00c 	sub	sp, sp, #12
   10678:	e3a00010 	mov	r0, #16
   1067c:	ebffff57 	bl	103e0 <malloc@plt>
   10680:	e1a03000 	mov	r3, r0
   10684:	e50b3014 	str	r3, [fp, #-20]	; 0xffffffec
   10688:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
   1068c:	e3530000 	cmp	r3, #0
   10690:	1a000004 	bne	106a8 <alloc_array+0x3c>
   10694:	e3000b2c 	movw	r0, #2860	; 0xb2c
   10698:	e3400001 	movt	r0, #1
   1069c:	ebffff4c 	bl	103d4 <puts@plt>
   106a0:	e3a00001 	mov	r0, #1
   106a4:	ebffff56 	bl	10404 <exit@plt>
   106a8:	e3a03000 	mov	r3, #0
   106ac:	e50b3010 	str	r3, [fp, #-16]
   106b0:	ea000016 	b	10710 <alloc_array+0xa4>
   106b4:	e51b3010 	ldr	r3, [fp, #-16]
   106b8:	e1a03103 	lsl	r3, r3, #2
   106bc:	e51b2014 	ldr	r2, [fp, #-20]	; 0xffffffec
   106c0:	e0824003 	add	r4, r2, r3
   106c4:	e3a00701 	mov	r0, #262144	; 0x40000
   106c8:	ebffff44 	bl	103e0 <malloc@plt>
   106cc:	e1a03000 	mov	r3, r0
   106d0:	e5843000 	str	r3, [r4]
   106d4:	e51b3010 	ldr	r3, [fp, #-16]
   106d8:	e1a03103 	lsl	r3, r3, #2
   106dc:	e51b2014 	ldr	r2, [fp, #-20]	; 0xffffffec
   106e0:	e0823003 	add	r3, r2, r3
   106e4:	e5933000 	ldr	r3, [r3]
   106e8:	e3530000 	cmp	r3, #0
   106ec:	1a000004 	bne	10704 <alloc_array+0x98>
   106f0:	e3000b4c 	movw	r0, #2892	; 0xb4c
   106f4:	e3400001 	movt	r0, #1
   106f8:	ebffff35 	bl	103d4 <puts@plt>
   106fc:	e3a00001 	mov	r0, #1
   10700:	ebffff3f 	bl	10404 <exit@plt>
   10704:	e51b3010 	ldr	r3, [fp, #-16]
   10708:	e2833001 	add	r3, r3, #1
   1070c:	e50b3010 	str	r3, [fp, #-16]
   10710:	e51b3010 	ldr	r3, [fp, #-16]
   10714:	e3530003 	cmp	r3, #3
   10718:	daffffe5 	ble	106b4 <alloc_array+0x48>
   1071c:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
   10720:	e1a00003 	mov	r0, r3
   10724:	e24bd008 	sub	sp, fp, #8
   10728:	e8bd8810 	pop	{r4, fp, pc}

0001072c <init_array>:
   1072c:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
   10730:	e28db000 	add	fp, sp, #0
   10734:	e24dd014 	sub	sp, sp, #20
   10738:	e50b0010 	str	r0, [fp, #-16]
   1073c:	e3a03000 	mov	r3, #0
   10740:	e50b3008 	str	r3, [fp, #-8]
   10744:	ea000015 	b	107a0 <init_array+0x74>
   10748:	e3a03000 	mov	r3, #0
   1074c:	e50b300c 	str	r3, [fp, #-12]
   10750:	ea00000c 	b	10788 <init_array+0x5c>
   10754:	e51b3008 	ldr	r3, [fp, #-8]
   10758:	e1a03103 	lsl	r3, r3, #2
   1075c:	e51b2010 	ldr	r2, [fp, #-16]
   10760:	e0823003 	add	r3, r2, r3
   10764:	e5932000 	ldr	r2, [r3]
   10768:	e51b300c 	ldr	r3, [fp, #-12]
   1076c:	e1a03103 	lsl	r3, r3, #2
   10770:	e0823003 	add	r3, r2, r3
   10774:	e51b200c 	ldr	r2, [fp, #-12]
   10778:	e5832000 	str	r2, [r3]
   1077c:	e51b300c 	ldr	r3, [fp, #-12]
   10780:	e2833001 	add	r3, r3, #1
   10784:	e50b300c 	str	r3, [fp, #-12]
   10788:	e51b300c 	ldr	r3, [fp, #-12]
   1078c:	e3530801 	cmp	r3, #65536	; 0x10000
   10790:	baffffef 	blt	10754 <init_array+0x28>
   10794:	e51b3008 	ldr	r3, [fp, #-8]
   10798:	e2833001 	add	r3, r3, #1
   1079c:	e50b3008 	str	r3, [fp, #-8]
   107a0:	e51b3008 	ldr	r3, [fp, #-8]
   107a4:	e3530003 	cmp	r3, #3
   107a8:	daffffe6 	ble	10748 <init_array+0x1c>
   107ac:	e320f000 	nop	{0}
   107b0:	e28bd000 	add	sp, fp, #0
   107b4:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
   107b8:	e12fff1e 	bx	lr

000107bc <init_matrices>:
   107bc:	e92d4810 	push	{r4, fp, lr}
   107c0:	e28db008 	add	fp, sp, #8
   107c4:	e24dd01c 	sub	sp, sp, #28
   107c8:	e50b0018 	str	r0, [fp, #-24]	; 0xffffffe8
   107cc:	e50b101c 	str	r1, [fp, #-28]	; 0xffffffe4
   107d0:	e50b2020 	str	r2, [fp, #-32]	; 0xffffffe0
   107d4:	e3010092 	movw	r0, #4242	; 0x1092
   107d8:	ebffff0c 	bl	10410 <srand@plt>
   107dc:	e3a03000 	mov	r3, #0
   107e0:	e50b3010 	str	r3, [fp, #-16]
   107e4:	ea000031 	b	108b0 <init_matrices+0xf4>
   107e8:	e3a03000 	mov	r3, #0
   107ec:	e50b3014 	str	r3, [fp, #-20]	; 0xffffffec
   107f0:	ea000028 	b	10898 <init_matrices+0xdc>
   107f4:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
   107f8:	e3530000 	cmp	r3, #0
   107fc:	0a000018 	beq	10864 <init_matrices+0xa8>
   10800:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
   10804:	e3530000 	cmp	r3, #0
   10808:	0a000015 	beq	10864 <init_matrices+0xa8>
   1080c:	e51b3010 	ldr	r3, [fp, #-16]
   10810:	e1a03103 	lsl	r3, r3, #2
   10814:	e51b2018 	ldr	r2, [fp, #-24]	; 0xffffffe8
   10818:	e0823003 	add	r3, r2, r3
   1081c:	e5932000 	ldr	r2, [r3]
   10820:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
   10824:	e1a03103 	lsl	r3, r3, #2
   10828:	e0824003 	add	r4, r2, r3
   1082c:	ebfffefa 	bl	1041c <rand@plt>
   10830:	e1a03000 	mov	r3, r0
   10834:	e5843000 	str	r3, [r4]
   10838:	e51b3010 	ldr	r3, [fp, #-16]
   1083c:	e1a03103 	lsl	r3, r3, #2
   10840:	e51b201c 	ldr	r2, [fp, #-28]	; 0xffffffe4
   10844:	e0823003 	add	r3, r2, r3
   10848:	e5932000 	ldr	r2, [r3]
   1084c:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
   10850:	e1a03103 	lsl	r3, r3, #2
   10854:	e0824003 	add	r4, r2, r3
   10858:	ebfffeef 	bl	1041c <rand@plt>
   1085c:	e1a03000 	mov	r3, r0
   10860:	e5843000 	str	r3, [r4]
   10864:	e51b3010 	ldr	r3, [fp, #-16]
   10868:	e1a03103 	lsl	r3, r3, #2
   1086c:	e51b2020 	ldr	r2, [fp, #-32]	; 0xffffffe0
   10870:	e0823003 	add	r3, r2, r3
   10874:	e5932000 	ldr	r2, [r3]
   10878:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
   1087c:	e1a03103 	lsl	r3, r3, #2
   10880:	e0823003 	add	r3, r2, r3
   10884:	e3a02000 	mov	r2, #0
   10888:	e5832000 	str	r2, [r3]
   1088c:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
   10890:	e2833001 	add	r3, r3, #1
   10894:	e50b3014 	str	r3, [fp, #-20]	; 0xffffffec
   10898:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
   1089c:	e3530ffa 	cmp	r3, #1000	; 0x3e8
   108a0:	baffffd3 	blt	107f4 <init_matrices+0x38>
   108a4:	e51b3010 	ldr	r3, [fp, #-16]
   108a8:	e2833001 	add	r3, r3, #1
   108ac:	e50b3010 	str	r3, [fp, #-16]
   108b0:	e51b3010 	ldr	r3, [fp, #-16]
   108b4:	e3530ffa 	cmp	r3, #1000	; 0x3e8
   108b8:	baffffca 	blt	107e8 <init_matrices+0x2c>
   108bc:	e320f000 	nop	{0}
   108c0:	e24bd008 	sub	sp, fp, #8
   108c4:	e8bd8810 	pop	{r4, fp, pc}

000108c8 <check_result>:
   108c8:	e92d4800 	push	{fp, lr}
   108cc:	e28db004 	add	fp, sp, #4
   108d0:	e24dd030 	sub	sp, sp, #48	; 0x30
   108d4:	e50b0020 	str	r0, [fp, #-32]	; 0xffffffe0
   108d8:	e50b1024 	str	r1, [fp, #-36]	; 0xffffffdc
   108dc:	e50b2028 	str	r2, [fp, #-40]	; 0xffffffd8
   108e0:	e3a03000 	mov	r3, #0
   108e4:	e50b3014 	str	r3, [fp, #-20]	; 0xffffffec
   108e8:	e3a03000 	mov	r3, #0
   108ec:	e50b3008 	str	r3, [fp, #-8]
   108f0:	ea00004f 	b	10a34 <check_result+0x16c>
   108f4:	e3a03000 	mov	r3, #0
   108f8:	e50b300c 	str	r3, [fp, #-12]
   108fc:	ea000043 	b	10a10 <check_result+0x148>
   10900:	e3a03000 	mov	r3, #0
   10904:	e50b3018 	str	r3, [fp, #-24]	; 0xffffffe8
   10908:	e3a03000 	mov	r3, #0
   1090c:	e50b3010 	str	r3, [fp, #-16]
   10910:	ea000018 	b	10978 <check_result+0xb0>
   10914:	e51b3008 	ldr	r3, [fp, #-8]
   10918:	e1a03103 	lsl	r3, r3, #2
   1091c:	e51b2020 	ldr	r2, [fp, #-32]	; 0xffffffe0
   10920:	e0823003 	add	r3, r2, r3
   10924:	e5932000 	ldr	r2, [r3]
   10928:	e51b3010 	ldr	r3, [fp, #-16]
   1092c:	e1a03103 	lsl	r3, r3, #2
   10930:	e0823003 	add	r3, r2, r3
   10934:	e5933000 	ldr	r3, [r3]
   10938:	e51b2010 	ldr	r2, [fp, #-16]
   1093c:	e1a02102 	lsl	r2, r2, #2
   10940:	e51b1024 	ldr	r1, [fp, #-36]	; 0xffffffdc
   10944:	e0812002 	add	r2, r1, r2
   10948:	e5921000 	ldr	r1, [r2]
   1094c:	e51b200c 	ldr	r2, [fp, #-12]
   10950:	e1a02102 	lsl	r2, r2, #2
   10954:	e0812002 	add	r2, r1, r2
   10958:	e5922000 	ldr	r2, [r2]
   1095c:	e0030392 	mul	r3, r2, r3
   10960:	e51b2018 	ldr	r2, [fp, #-24]	; 0xffffffe8
   10964:	e0823003 	add	r3, r2, r3
   10968:	e50b3018 	str	r3, [fp, #-24]	; 0xffffffe8
   1096c:	e51b3010 	ldr	r3, [fp, #-16]
   10970:	e2833001 	add	r3, r3, #1
   10974:	e50b3010 	str	r3, [fp, #-16]
   10978:	e51b3010 	ldr	r3, [fp, #-16]
   1097c:	e3530ffa 	cmp	r3, #1000	; 0x3e8
   10980:	baffffe3 	blt	10914 <check_result+0x4c>
   10984:	e51b3008 	ldr	r3, [fp, #-8]
   10988:	e1a03103 	lsl	r3, r3, #2
   1098c:	e51b2028 	ldr	r2, [fp, #-40]	; 0xffffffd8
   10990:	e0823003 	add	r3, r2, r3
   10994:	e5932000 	ldr	r2, [r3]
   10998:	e51b300c 	ldr	r3, [fp, #-12]
   1099c:	e1a03103 	lsl	r3, r3, #2
   109a0:	e0823003 	add	r3, r2, r3
   109a4:	e5932000 	ldr	r2, [r3]
   109a8:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
   109ac:	e1520003 	cmp	r2, r3
   109b0:	0a000013 	beq	10a04 <check_result+0x13c>
   109b4:	e51b3008 	ldr	r3, [fp, #-8]
   109b8:	e1a03103 	lsl	r3, r3, #2
   109bc:	e51b2028 	ldr	r2, [fp, #-40]	; 0xffffffd8
   109c0:	e0823003 	add	r3, r2, r3
   109c4:	e5932000 	ldr	r2, [r3]
   109c8:	e51b300c 	ldr	r3, [fp, #-12]
   109cc:	e1a03103 	lsl	r3, r3, #2
   109d0:	e0823003 	add	r3, r2, r3
   109d4:	e5932000 	ldr	r2, [r3]
   109d8:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
   109dc:	e58d3000 	str	r3, [sp]
   109e0:	e1a03002 	mov	r3, r2
   109e4:	e51b200c 	ldr	r2, [fp, #-12]
   109e8:	e51b1008 	ldr	r1, [fp, #-8]
   109ec:	e3000b6c 	movw	r0, #2924	; 0xb6c
   109f0:	e3400001 	movt	r0, #1
   109f4:	ebfffe70 	bl	103bc <printf@plt>
   109f8:	e3a03001 	mov	r3, #1
   109fc:	e50b3014 	str	r3, [fp, #-20]	; 0xffffffec
   10a00:	ea000005 	b	10a1c <check_result+0x154>
   10a04:	e51b300c 	ldr	r3, [fp, #-12]
   10a08:	e2833001 	add	r3, r3, #1
   10a0c:	e50b300c 	str	r3, [fp, #-12]
   10a10:	e51b300c 	ldr	r3, [fp, #-12]
   10a14:	e3530ffa 	cmp	r3, #1000	; 0x3e8
   10a18:	baffffb8 	blt	10900 <check_result+0x38>
   10a1c:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
   10a20:	e3530001 	cmp	r3, #1
   10a24:	0a000006 	beq	10a44 <check_result+0x17c>
   10a28:	e51b3008 	ldr	r3, [fp, #-8]
   10a2c:	e2833001 	add	r3, r3, #1
   10a30:	e50b3008 	str	r3, [fp, #-8]
   10a34:	e51b3008 	ldr	r3, [fp, #-8]
   10a38:	e3530ffa 	cmp	r3, #1000	; 0x3e8
   10a3c:	baffffac 	blt	108f4 <check_result+0x2c>
   10a40:	ea000000 	b	10a48 <check_result+0x180>
   10a44:	e320f000 	nop	{0}
   10a48:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
   10a4c:	e3530000 	cmp	r3, #0
   10a50:	1a000002 	bne	10a60 <check_result+0x198>
   10a54:	e3000b88 	movw	r0, #2952	; 0xb88
   10a58:	e3400001 	movt	r0, #1
   10a5c:	ebfffe5c 	bl	103d4 <puts@plt>
   10a60:	e320f000 	nop	{0}
   10a64:	e24bd004 	sub	sp, fp, #4
   10a68:	e8bd8800 	pop	{fp, pc}

00010a6c <mem_access_c>:
   10a6c:	b480      	push	{r7}
   10a6e:	b087      	sub	sp, #28
   10a70:	af00      	add	r7, sp, #0
   10a72:	6078      	str	r0, [r7, #4]
   10a74:	2300      	movs	r3, #0
   10a76:	617b      	str	r3, [r7, #20]
   10a78:	e016      	b.n	10aa8 <mem_access_c+0x3c>
   10a7a:	2300      	movs	r3, #0
   10a7c:	613b      	str	r3, [r7, #16]
   10a7e:	e00c      	b.n	10a9a <mem_access_c+0x2e>
   10a80:	697b      	ldr	r3, [r7, #20]
   10a82:	009b      	lsls	r3, r3, #2
   10a84:	687a      	ldr	r2, [r7, #4]
   10a86:	4413      	add	r3, r2
   10a88:	681a      	ldr	r2, [r3, #0]
   10a8a:	693b      	ldr	r3, [r7, #16]
   10a8c:	009b      	lsls	r3, r3, #2
   10a8e:	4413      	add	r3, r2
   10a90:	681b      	ldr	r3, [r3, #0]
   10a92:	60fb      	str	r3, [r7, #12]
   10a94:	693b      	ldr	r3, [r7, #16]
   10a96:	3301      	adds	r3, #1
   10a98:	613b      	str	r3, [r7, #16]
   10a9a:	693b      	ldr	r3, [r7, #16]
   10a9c:	f5b3 7f7a 	cmp.w	r3, #1000	; 0x3e8
   10aa0:	dbee      	blt.n	10a80 <mem_access_c+0x14>
   10aa2:	697b      	ldr	r3, [r7, #20]
   10aa4:	3301      	adds	r3, #1
   10aa6:	617b      	str	r3, [r7, #20]
   10aa8:	697b      	ldr	r3, [r7, #20]
   10aaa:	f5b3 7f7a 	cmp.w	r3, #1000	; 0x3e8
   10aae:	dbe4      	blt.n	10a7a <mem_access_c+0xe>
   10ab0:	bf00      	nop
   10ab2:	371c      	adds	r7, #28
   10ab4:	46bd      	mov	sp, r7
   10ab6:	f85d 7b04 	ldr.w	r7, [sp], #4
   10aba:	4770      	bx	lr

00010abc <__libc_csu_init>:
   10abc:	e92d47f0 	push	{r4, r5, r6, r7, r8, r9, sl, lr}
   10ac0:	e1a07000 	mov	r7, r0
   10ac4:	e59f6048 	ldr	r6, [pc, #72]	; 10b14 <__libc_csu_init+0x58>
   10ac8:	e59f5048 	ldr	r5, [pc, #72]	; 10b18 <__libc_csu_init+0x5c>
   10acc:	e08f6006 	add	r6, pc, r6
   10ad0:	e08f5005 	add	r5, pc, r5
   10ad4:	e0466005 	sub	r6, r6, r5
   10ad8:	e1a08001 	mov	r8, r1
   10adc:	e1a09002 	mov	r9, r2
   10ae0:	ebfffe2d 	bl	1039c <_init>
   10ae4:	e1b06146 	asrs	r6, r6, #2
   10ae8:	08bd87f0 	popeq	{r4, r5, r6, r7, r8, r9, sl, pc}
   10aec:	e3a04000 	mov	r4, #0
   10af0:	e2844001 	add	r4, r4, #1
   10af4:	e4953004 	ldr	r3, [r5], #4
   10af8:	e1a02009 	mov	r2, r9
   10afc:	e1a01008 	mov	r1, r8
   10b00:	e1a00007 	mov	r0, r7
   10b04:	e12fff33 	blx	r3
   10b08:	e1560004 	cmp	r6, r4
   10b0c:	1afffff7 	bne	10af0 <__libc_csu_init+0x34>
   10b10:	e8bd87f0 	pop	{r4, r5, r6, r7, r8, r9, sl, pc}
   10b14:	0001043c 	.word	0x0001043c
   10b18:	00010434 	.word	0x00010434

00010b1c <__libc_csu_fini>:
   10b1c:	e12fff1e 	bx	lr

Disassembly of section .fini:

00010b20 <_fini>:
   10b20:	e92d4008 	push	{r3, lr}
   10b24:	e8bd8008 	pop	{r3, pc}
