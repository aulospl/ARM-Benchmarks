
execs/mat_mult/mat_mult_c_arm_O0:     file format elf32-littlearm


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
   10464:	00010c2c 	.word	0x00010c2c
   10468:	0001055c 	.word	0x0001055c
   1046c:	00010bcc 	.word	0x00010bcc

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
   10564:	e24dd010 	sub	sp, sp, #16
   10568:	eb000016 	bl	105c8 <allocate_matrix>
   1056c:	e50b0008 	str	r0, [fp, #-8]
   10570:	eb000014 	bl	105c8 <allocate_matrix>
   10574:	e50b000c 	str	r0, [fp, #-12]
   10578:	eb000012 	bl	105c8 <allocate_matrix>
   1057c:	e50b0010 	str	r0, [fp, #-16]
   10580:	e51b2010 	ldr	r2, [fp, #-16]
   10584:	e51b100c 	ldr	r1, [fp, #-12]
   10588:	e51b0008 	ldr	r0, [fp, #-8]
   1058c:	eb000096 	bl	107ec <init_matrices>
   10590:	e51b2010 	ldr	r2, [fp, #-16]
   10594:	e51b100c 	ldr	r1, [fp, #-12]
   10598:	e51b0008 	ldr	r0, [fp, #-8]
   1059c:	eb00013f 	bl	10aa0 <mat_mult_c>
   105a0:	e51b0008 	ldr	r0, [fp, #-8]
   105a4:	eb000023 	bl	10638 <free_matrix>
   105a8:	e51b000c 	ldr	r0, [fp, #-12]
   105ac:	eb000021 	bl	10638 <free_matrix>
   105b0:	e51b0010 	ldr	r0, [fp, #-16]
   105b4:	eb00001f 	bl	10638 <free_matrix>
   105b8:	e3a03000 	mov	r3, #0
   105bc:	e1a00003 	mov	r0, r3
   105c0:	e24bd004 	sub	sp, fp, #4
   105c4:	e8bd8800 	pop	{fp, pc}

000105c8 <allocate_matrix>:
   105c8:	e92d4810 	push	{r4, fp, lr}
   105cc:	e28db008 	add	fp, sp, #8
   105d0:	e24dd00c 	sub	sp, sp, #12
   105d4:	e3a00efa 	mov	r0, #4000	; 0xfa0
   105d8:	ebffff80 	bl	103e0 <malloc@plt>
   105dc:	e1a03000 	mov	r3, r0
   105e0:	e50b3014 	str	r3, [fp, #-20]	; 0xffffffec
   105e4:	e3a03000 	mov	r3, #0
   105e8:	e50b3010 	str	r3, [fp, #-16]
   105ec:	ea00000a 	b	1061c <allocate_matrix+0x54>
   105f0:	e51b3010 	ldr	r3, [fp, #-16]
   105f4:	e1a03103 	lsl	r3, r3, #2
   105f8:	e51b2014 	ldr	r2, [fp, #-20]	; 0xffffffec
   105fc:	e0824003 	add	r4, r2, r3
   10600:	e3a00efa 	mov	r0, #4000	; 0xfa0
   10604:	ebffff75 	bl	103e0 <malloc@plt>
   10608:	e1a03000 	mov	r3, r0
   1060c:	e5843000 	str	r3, [r4]
   10610:	e51b3010 	ldr	r3, [fp, #-16]
   10614:	e2833001 	add	r3, r3, #1
   10618:	e50b3010 	str	r3, [fp, #-16]
   1061c:	e51b3010 	ldr	r3, [fp, #-16]
   10620:	e3530ffa 	cmp	r3, #1000	; 0x3e8
   10624:	bafffff1 	blt	105f0 <allocate_matrix+0x28>
   10628:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
   1062c:	e1a00003 	mov	r0, r3
   10630:	e24bd008 	sub	sp, fp, #8
   10634:	e8bd8810 	pop	{r4, fp, pc}

00010638 <free_matrix>:
   10638:	e92d4800 	push	{fp, lr}
   1063c:	e28db004 	add	fp, sp, #4
   10640:	e24dd010 	sub	sp, sp, #16
   10644:	e50b0010 	str	r0, [fp, #-16]
   10648:	e3a03000 	mov	r3, #0
   1064c:	e50b3008 	str	r3, [fp, #-8]
   10650:	ea000009 	b	1067c <free_matrix+0x44>
   10654:	e51b3008 	ldr	r3, [fp, #-8]
   10658:	e1a03103 	lsl	r3, r3, #2
   1065c:	e51b2010 	ldr	r2, [fp, #-16]
   10660:	e0823003 	add	r3, r2, r3
   10664:	e5933000 	ldr	r3, [r3]
   10668:	e1a00003 	mov	r0, r3
   1066c:	ebffff55 	bl	103c8 <free@plt>
   10670:	e51b3008 	ldr	r3, [fp, #-8]
   10674:	e2833001 	add	r3, r3, #1
   10678:	e50b3008 	str	r3, [fp, #-8]
   1067c:	e51b3008 	ldr	r3, [fp, #-8]
   10680:	e3530ffa 	cmp	r3, #1000	; 0x3e8
   10684:	bafffff2 	blt	10654 <free_matrix+0x1c>
   10688:	e51b0010 	ldr	r0, [fp, #-16]
   1068c:	ebffff4d 	bl	103c8 <free@plt>
   10690:	e1a00000 	nop			; (mov r0, r0)
   10694:	e24bd004 	sub	sp, fp, #4
   10698:	e8bd8800 	pop	{fp, pc}

0001069c <alloc_array>:
   1069c:	e92d4810 	push	{r4, fp, lr}
   106a0:	e28db008 	add	fp, sp, #8
   106a4:	e24dd00c 	sub	sp, sp, #12
   106a8:	e3a00010 	mov	r0, #16
   106ac:	ebffff4b 	bl	103e0 <malloc@plt>
   106b0:	e1a03000 	mov	r3, r0
   106b4:	e50b3014 	str	r3, [fp, #-20]	; 0xffffffec
   106b8:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
   106bc:	e3530000 	cmp	r3, #0
   106c0:	1a000003 	bne	106d4 <alloc_array+0x38>
   106c4:	e59f0088 	ldr	r0, [pc, #136]	; 10754 <alloc_array+0xb8>
   106c8:	ebffff41 	bl	103d4 <puts@plt>
   106cc:	e3a00001 	mov	r0, #1
   106d0:	ebffff4b 	bl	10404 <exit@plt>
   106d4:	e3a03000 	mov	r3, #0
   106d8:	e50b3010 	str	r3, [fp, #-16]
   106dc:	ea000015 	b	10738 <alloc_array+0x9c>
   106e0:	e51b3010 	ldr	r3, [fp, #-16]
   106e4:	e1a03103 	lsl	r3, r3, #2
   106e8:	e51b2014 	ldr	r2, [fp, #-20]	; 0xffffffec
   106ec:	e0824003 	add	r4, r2, r3
   106f0:	e3a00701 	mov	r0, #262144	; 0x40000
   106f4:	ebffff39 	bl	103e0 <malloc@plt>
   106f8:	e1a03000 	mov	r3, r0
   106fc:	e5843000 	str	r3, [r4]
   10700:	e51b3010 	ldr	r3, [fp, #-16]
   10704:	e1a03103 	lsl	r3, r3, #2
   10708:	e51b2014 	ldr	r2, [fp, #-20]	; 0xffffffec
   1070c:	e0823003 	add	r3, r2, r3
   10710:	e5933000 	ldr	r3, [r3]
   10714:	e3530000 	cmp	r3, #0
   10718:	1a000003 	bne	1072c <alloc_array+0x90>
   1071c:	e59f0034 	ldr	r0, [pc, #52]	; 10758 <alloc_array+0xbc>
   10720:	ebffff2b 	bl	103d4 <puts@plt>
   10724:	e3a00001 	mov	r0, #1
   10728:	ebffff35 	bl	10404 <exit@plt>
   1072c:	e51b3010 	ldr	r3, [fp, #-16]
   10730:	e2833001 	add	r3, r3, #1
   10734:	e50b3010 	str	r3, [fp, #-16]
   10738:	e51b3010 	ldr	r3, [fp, #-16]
   1073c:	e3530003 	cmp	r3, #3
   10740:	daffffe6 	ble	106e0 <alloc_array+0x44>
   10744:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
   10748:	e1a00003 	mov	r0, r3
   1074c:	e24bd008 	sub	sp, fp, #8
   10750:	e8bd8810 	pop	{r4, fp, pc}
   10754:	00010c3c 	.word	0x00010c3c
   10758:	00010c5c 	.word	0x00010c5c

0001075c <init_array>:
   1075c:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
   10760:	e28db000 	add	fp, sp, #0
   10764:	e24dd014 	sub	sp, sp, #20
   10768:	e50b0010 	str	r0, [fp, #-16]
   1076c:	e3a03000 	mov	r3, #0
   10770:	e50b3008 	str	r3, [fp, #-8]
   10774:	ea000015 	b	107d0 <init_array+0x74>
   10778:	e3a03000 	mov	r3, #0
   1077c:	e50b300c 	str	r3, [fp, #-12]
   10780:	ea00000c 	b	107b8 <init_array+0x5c>
   10784:	e51b3008 	ldr	r3, [fp, #-8]
   10788:	e1a03103 	lsl	r3, r3, #2
   1078c:	e51b2010 	ldr	r2, [fp, #-16]
   10790:	e0823003 	add	r3, r2, r3
   10794:	e5932000 	ldr	r2, [r3]
   10798:	e51b300c 	ldr	r3, [fp, #-12]
   1079c:	e1a03103 	lsl	r3, r3, #2
   107a0:	e0823003 	add	r3, r2, r3
   107a4:	e51b200c 	ldr	r2, [fp, #-12]
   107a8:	e5832000 	str	r2, [r3]
   107ac:	e51b300c 	ldr	r3, [fp, #-12]
   107b0:	e2833001 	add	r3, r3, #1
   107b4:	e50b300c 	str	r3, [fp, #-12]
   107b8:	e51b300c 	ldr	r3, [fp, #-12]
   107bc:	e3530801 	cmp	r3, #65536	; 0x10000
   107c0:	baffffef 	blt	10784 <init_array+0x28>
   107c4:	e51b3008 	ldr	r3, [fp, #-8]
   107c8:	e2833001 	add	r3, r3, #1
   107cc:	e50b3008 	str	r3, [fp, #-8]
   107d0:	e51b3008 	ldr	r3, [fp, #-8]
   107d4:	e3530003 	cmp	r3, #3
   107d8:	daffffe6 	ble	10778 <init_array+0x1c>
   107dc:	e1a00000 	nop			; (mov r0, r0)
   107e0:	e28bd000 	add	sp, fp, #0
   107e4:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
   107e8:	e12fff1e 	bx	lr

000107ec <init_matrices>:
   107ec:	e92d4810 	push	{r4, fp, lr}
   107f0:	e28db008 	add	fp, sp, #8
   107f4:	e24dd01c 	sub	sp, sp, #28
   107f8:	e50b0018 	str	r0, [fp, #-24]	; 0xffffffe8
   107fc:	e50b101c 	str	r1, [fp, #-28]	; 0xffffffe4
   10800:	e50b2020 	str	r2, [fp, #-32]	; 0xffffffe0
   10804:	e59f00ec 	ldr	r0, [pc, #236]	; 108f8 <init_matrices+0x10c>
   10808:	ebffff00 	bl	10410 <srand@plt>
   1080c:	e3a03000 	mov	r3, #0
   10810:	e50b3010 	str	r3, [fp, #-16]
   10814:	ea000031 	b	108e0 <init_matrices+0xf4>
   10818:	e3a03000 	mov	r3, #0
   1081c:	e50b3014 	str	r3, [fp, #-20]	; 0xffffffec
   10820:	ea000028 	b	108c8 <init_matrices+0xdc>
   10824:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
   10828:	e3530000 	cmp	r3, #0
   1082c:	0a000018 	beq	10894 <init_matrices+0xa8>
   10830:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
   10834:	e3530000 	cmp	r3, #0
   10838:	0a000015 	beq	10894 <init_matrices+0xa8>
   1083c:	e51b3010 	ldr	r3, [fp, #-16]
   10840:	e1a03103 	lsl	r3, r3, #2
   10844:	e51b2018 	ldr	r2, [fp, #-24]	; 0xffffffe8
   10848:	e0823003 	add	r3, r2, r3
   1084c:	e5932000 	ldr	r2, [r3]
   10850:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
   10854:	e1a03103 	lsl	r3, r3, #2
   10858:	e0824003 	add	r4, r2, r3
   1085c:	ebfffeee 	bl	1041c <rand@plt>
   10860:	e1a03000 	mov	r3, r0
   10864:	e5843000 	str	r3, [r4]
   10868:	e51b3010 	ldr	r3, [fp, #-16]
   1086c:	e1a03103 	lsl	r3, r3, #2
   10870:	e51b201c 	ldr	r2, [fp, #-28]	; 0xffffffe4
   10874:	e0823003 	add	r3, r2, r3
   10878:	e5932000 	ldr	r2, [r3]
   1087c:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
   10880:	e1a03103 	lsl	r3, r3, #2
   10884:	e0824003 	add	r4, r2, r3
   10888:	ebfffee3 	bl	1041c <rand@plt>
   1088c:	e1a03000 	mov	r3, r0
   10890:	e5843000 	str	r3, [r4]
   10894:	e51b3010 	ldr	r3, [fp, #-16]
   10898:	e1a03103 	lsl	r3, r3, #2
   1089c:	e51b2020 	ldr	r2, [fp, #-32]	; 0xffffffe0
   108a0:	e0823003 	add	r3, r2, r3
   108a4:	e5932000 	ldr	r2, [r3]
   108a8:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
   108ac:	e1a03103 	lsl	r3, r3, #2
   108b0:	e0823003 	add	r3, r2, r3
   108b4:	e3a02000 	mov	r2, #0
   108b8:	e5832000 	str	r2, [r3]
   108bc:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
   108c0:	e2833001 	add	r3, r3, #1
   108c4:	e50b3014 	str	r3, [fp, #-20]	; 0xffffffec
   108c8:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
   108cc:	e3530ffa 	cmp	r3, #1000	; 0x3e8
   108d0:	baffffd3 	blt	10824 <init_matrices+0x38>
   108d4:	e51b3010 	ldr	r3, [fp, #-16]
   108d8:	e2833001 	add	r3, r3, #1
   108dc:	e50b3010 	str	r3, [fp, #-16]
   108e0:	e51b3010 	ldr	r3, [fp, #-16]
   108e4:	e3530ffa 	cmp	r3, #1000	; 0x3e8
   108e8:	baffffca 	blt	10818 <init_matrices+0x2c>
   108ec:	e1a00000 	nop			; (mov r0, r0)
   108f0:	e24bd008 	sub	sp, fp, #8
   108f4:	e8bd8810 	pop	{r4, fp, pc}
   108f8:	00001092 	.word	0x00001092

000108fc <check_result>:
   108fc:	e92d4800 	push	{fp, lr}
   10900:	e28db004 	add	fp, sp, #4
   10904:	e24dd030 	sub	sp, sp, #48	; 0x30
   10908:	e50b0020 	str	r0, [fp, #-32]	; 0xffffffe0
   1090c:	e50b1024 	str	r1, [fp, #-36]	; 0xffffffdc
   10910:	e50b2028 	str	r2, [fp, #-40]	; 0xffffffd8
   10914:	e3a03000 	mov	r3, #0
   10918:	e50b3014 	str	r3, [fp, #-20]	; 0xffffffec
   1091c:	e3a03000 	mov	r3, #0
   10920:	e50b3008 	str	r3, [fp, #-8]
   10924:	ea00004e 	b	10a64 <check_result+0x168>
   10928:	e3a03000 	mov	r3, #0
   1092c:	e50b300c 	str	r3, [fp, #-12]
   10930:	ea000042 	b	10a40 <check_result+0x144>
   10934:	e3a03000 	mov	r3, #0
   10938:	e50b3018 	str	r3, [fp, #-24]	; 0xffffffe8
   1093c:	e3a03000 	mov	r3, #0
   10940:	e50b3010 	str	r3, [fp, #-16]
   10944:	ea000018 	b	109ac <check_result+0xb0>
   10948:	e51b3008 	ldr	r3, [fp, #-8]
   1094c:	e1a03103 	lsl	r3, r3, #2
   10950:	e51b2020 	ldr	r2, [fp, #-32]	; 0xffffffe0
   10954:	e0823003 	add	r3, r2, r3
   10958:	e5932000 	ldr	r2, [r3]
   1095c:	e51b3010 	ldr	r3, [fp, #-16]
   10960:	e1a03103 	lsl	r3, r3, #2
   10964:	e0823003 	add	r3, r2, r3
   10968:	e5933000 	ldr	r3, [r3]
   1096c:	e51b2010 	ldr	r2, [fp, #-16]
   10970:	e1a02102 	lsl	r2, r2, #2
   10974:	e51b1024 	ldr	r1, [fp, #-36]	; 0xffffffdc
   10978:	e0812002 	add	r2, r1, r2
   1097c:	e5921000 	ldr	r1, [r2]
   10980:	e51b200c 	ldr	r2, [fp, #-12]
   10984:	e1a02102 	lsl	r2, r2, #2
   10988:	e0812002 	add	r2, r1, r2
   1098c:	e5922000 	ldr	r2, [r2]
   10990:	e0030392 	mul	r3, r2, r3
   10994:	e51b2018 	ldr	r2, [fp, #-24]	; 0xffffffe8
   10998:	e0823003 	add	r3, r2, r3
   1099c:	e50b3018 	str	r3, [fp, #-24]	; 0xffffffe8
   109a0:	e51b3010 	ldr	r3, [fp, #-16]
   109a4:	e2833001 	add	r3, r3, #1
   109a8:	e50b3010 	str	r3, [fp, #-16]
   109ac:	e51b3010 	ldr	r3, [fp, #-16]
   109b0:	e3530ffa 	cmp	r3, #1000	; 0x3e8
   109b4:	baffffe3 	blt	10948 <check_result+0x4c>
   109b8:	e51b3008 	ldr	r3, [fp, #-8]
   109bc:	e1a03103 	lsl	r3, r3, #2
   109c0:	e51b2028 	ldr	r2, [fp, #-40]	; 0xffffffd8
   109c4:	e0823003 	add	r3, r2, r3
   109c8:	e5932000 	ldr	r2, [r3]
   109cc:	e51b300c 	ldr	r3, [fp, #-12]
   109d0:	e1a03103 	lsl	r3, r3, #2
   109d4:	e0823003 	add	r3, r2, r3
   109d8:	e5932000 	ldr	r2, [r3]
   109dc:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
   109e0:	e1520003 	cmp	r2, r3
   109e4:	0a000012 	beq	10a34 <check_result+0x138>
   109e8:	e51b3008 	ldr	r3, [fp, #-8]
   109ec:	e1a03103 	lsl	r3, r3, #2
   109f0:	e51b2028 	ldr	r2, [fp, #-40]	; 0xffffffd8
   109f4:	e0823003 	add	r3, r2, r3
   109f8:	e5932000 	ldr	r2, [r3]
   109fc:	e51b300c 	ldr	r3, [fp, #-12]
   10a00:	e1a03103 	lsl	r3, r3, #2
   10a04:	e0823003 	add	r3, r2, r3
   10a08:	e5932000 	ldr	r2, [r3]
   10a0c:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
   10a10:	e58d3000 	str	r3, [sp]
   10a14:	e1a03002 	mov	r3, r2
   10a18:	e51b200c 	ldr	r2, [fp, #-12]
   10a1c:	e51b1008 	ldr	r1, [fp, #-8]
   10a20:	e59f0070 	ldr	r0, [pc, #112]	; 10a98 <check_result+0x19c>
   10a24:	ebfffe64 	bl	103bc <printf@plt>
   10a28:	e3a03001 	mov	r3, #1
   10a2c:	e50b3014 	str	r3, [fp, #-20]	; 0xffffffec
   10a30:	ea000005 	b	10a4c <check_result+0x150>
   10a34:	e51b300c 	ldr	r3, [fp, #-12]
   10a38:	e2833001 	add	r3, r3, #1
   10a3c:	e50b300c 	str	r3, [fp, #-12]
   10a40:	e51b300c 	ldr	r3, [fp, #-12]
   10a44:	e3530ffa 	cmp	r3, #1000	; 0x3e8
   10a48:	baffffb9 	blt	10934 <check_result+0x38>
   10a4c:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
   10a50:	e3530001 	cmp	r3, #1
   10a54:	0a000006 	beq	10a74 <check_result+0x178>
   10a58:	e51b3008 	ldr	r3, [fp, #-8]
   10a5c:	e2833001 	add	r3, r3, #1
   10a60:	e50b3008 	str	r3, [fp, #-8]
   10a64:	e51b3008 	ldr	r3, [fp, #-8]
   10a68:	e3530ffa 	cmp	r3, #1000	; 0x3e8
   10a6c:	baffffad 	blt	10928 <check_result+0x2c>
   10a70:	ea000000 	b	10a78 <check_result+0x17c>
   10a74:	e1a00000 	nop			; (mov r0, r0)
   10a78:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
   10a7c:	e3530000 	cmp	r3, #0
   10a80:	1a000001 	bne	10a8c <check_result+0x190>
   10a84:	e59f0010 	ldr	r0, [pc, #16]	; 10a9c <check_result+0x1a0>
   10a88:	ebfffe51 	bl	103d4 <puts@plt>
   10a8c:	e1a00000 	nop			; (mov r0, r0)
   10a90:	e24bd004 	sub	sp, fp, #4
   10a94:	e8bd8800 	pop	{fp, pc}
   10a98:	00010c7c 	.word	0x00010c7c
   10a9c:	00010c98 	.word	0x00010c98

00010aa0 <mat_mult_c>:
   10aa0:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
   10aa4:	e28db000 	add	fp, sp, #0
   10aa8:	e24dd024 	sub	sp, sp, #36	; 0x24
   10aac:	e50b0018 	str	r0, [fp, #-24]	; 0xffffffe8
   10ab0:	e50b101c 	str	r1, [fp, #-28]	; 0xffffffe4
   10ab4:	e50b2020 	str	r2, [fp, #-32]	; 0xffffffe0
   10ab8:	e3a03000 	mov	r3, #0
   10abc:	e50b3008 	str	r3, [fp, #-8]
   10ac0:	ea00003a 	b	10bb0 <mat_mult_c+0x110>
   10ac4:	e3a03000 	mov	r3, #0
   10ac8:	e50b300c 	str	r3, [fp, #-12]
   10acc:	ea000031 	b	10b98 <mat_mult_c+0xf8>
   10ad0:	e3a03000 	mov	r3, #0
   10ad4:	e50b3010 	str	r3, [fp, #-16]
   10ad8:	ea000028 	b	10b80 <mat_mult_c+0xe0>
   10adc:	e51b3008 	ldr	r3, [fp, #-8]
   10ae0:	e1a03103 	lsl	r3, r3, #2
   10ae4:	e51b2020 	ldr	r2, [fp, #-32]	; 0xffffffe0
   10ae8:	e0823003 	add	r3, r2, r3
   10aec:	e5932000 	ldr	r2, [r3]
   10af0:	e51b300c 	ldr	r3, [fp, #-12]
   10af4:	e1a03103 	lsl	r3, r3, #2
   10af8:	e0823003 	add	r3, r2, r3
   10afc:	e51b2008 	ldr	r2, [fp, #-8]
   10b00:	e1a02102 	lsl	r2, r2, #2
   10b04:	e51b1020 	ldr	r1, [fp, #-32]	; 0xffffffe0
   10b08:	e0812002 	add	r2, r1, r2
   10b0c:	e5921000 	ldr	r1, [r2]
   10b10:	e51b200c 	ldr	r2, [fp, #-12]
   10b14:	e1a02102 	lsl	r2, r2, #2
   10b18:	e0812002 	add	r2, r1, r2
   10b1c:	e5921000 	ldr	r1, [r2]
   10b20:	e51b2008 	ldr	r2, [fp, #-8]
   10b24:	e1a02102 	lsl	r2, r2, #2
   10b28:	e51b0018 	ldr	r0, [fp, #-24]	; 0xffffffe8
   10b2c:	e0802002 	add	r2, r0, r2
   10b30:	e5920000 	ldr	r0, [r2]
   10b34:	e51b2010 	ldr	r2, [fp, #-16]
   10b38:	e1a02102 	lsl	r2, r2, #2
   10b3c:	e0802002 	add	r2, r0, r2
   10b40:	e5922000 	ldr	r2, [r2]
   10b44:	e51b0010 	ldr	r0, [fp, #-16]
   10b48:	e1a00100 	lsl	r0, r0, #2
   10b4c:	e51bc01c 	ldr	ip, [fp, #-28]	; 0xffffffe4
   10b50:	e08c0000 	add	r0, ip, r0
   10b54:	e590c000 	ldr	ip, [r0]
   10b58:	e51b000c 	ldr	r0, [fp, #-12]
   10b5c:	e1a00100 	lsl	r0, r0, #2
   10b60:	e08c0000 	add	r0, ip, r0
   10b64:	e5900000 	ldr	r0, [r0]
   10b68:	e0020290 	mul	r2, r0, r2
   10b6c:	e0812002 	add	r2, r1, r2
   10b70:	e5832000 	str	r2, [r3]
   10b74:	e51b3010 	ldr	r3, [fp, #-16]
   10b78:	e2833001 	add	r3, r3, #1
   10b7c:	e50b3010 	str	r3, [fp, #-16]
   10b80:	e51b3010 	ldr	r3, [fp, #-16]
   10b84:	e3530ffa 	cmp	r3, #1000	; 0x3e8
   10b88:	baffffd3 	blt	10adc <mat_mult_c+0x3c>
   10b8c:	e51b300c 	ldr	r3, [fp, #-12]
   10b90:	e2833001 	add	r3, r3, #1
   10b94:	e50b300c 	str	r3, [fp, #-12]
   10b98:	e51b300c 	ldr	r3, [fp, #-12]
   10b9c:	e3530ffa 	cmp	r3, #1000	; 0x3e8
   10ba0:	baffffca 	blt	10ad0 <mat_mult_c+0x30>
   10ba4:	e51b3008 	ldr	r3, [fp, #-8]
   10ba8:	e2833001 	add	r3, r3, #1
   10bac:	e50b3008 	str	r3, [fp, #-8]
   10bb0:	e51b3008 	ldr	r3, [fp, #-8]
   10bb4:	e3530ffa 	cmp	r3, #1000	; 0x3e8
   10bb8:	baffffc1 	blt	10ac4 <mat_mult_c+0x24>
   10bbc:	e1a00000 	nop			; (mov r0, r0)
   10bc0:	e28bd000 	add	sp, fp, #0
   10bc4:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
   10bc8:	e12fff1e 	bx	lr

00010bcc <__libc_csu_init>:
   10bcc:	e92d47f0 	push	{r4, r5, r6, r7, r8, r9, sl, lr}
   10bd0:	e1a07000 	mov	r7, r0
   10bd4:	e59f6048 	ldr	r6, [pc, #72]	; 10c24 <__libc_csu_init+0x58>
   10bd8:	e59f5048 	ldr	r5, [pc, #72]	; 10c28 <__libc_csu_init+0x5c>
   10bdc:	e08f6006 	add	r6, pc, r6
   10be0:	e08f5005 	add	r5, pc, r5
   10be4:	e0466005 	sub	r6, r6, r5
   10be8:	e1a08001 	mov	r8, r1
   10bec:	e1a09002 	mov	r9, r2
   10bf0:	ebfffde9 	bl	1039c <_init>
   10bf4:	e1b06146 	asrs	r6, r6, #2
   10bf8:	08bd87f0 	popeq	{r4, r5, r6, r7, r8, r9, sl, pc}
   10bfc:	e3a04000 	mov	r4, #0
   10c00:	e2844001 	add	r4, r4, #1
   10c04:	e4953004 	ldr	r3, [r5], #4
   10c08:	e1a02009 	mov	r2, r9
   10c0c:	e1a01008 	mov	r1, r8
   10c10:	e1a00007 	mov	r0, r7
   10c14:	e12fff33 	blx	r3
   10c18:	e1560004 	cmp	r6, r4
   10c1c:	1afffff7 	bne	10c00 <__libc_csu_init+0x34>
   10c20:	e8bd87f0 	pop	{r4, r5, r6, r7, r8, r9, sl, pc}
   10c24:	0001032c 	.word	0x0001032c
   10c28:	00010324 	.word	0x00010324

00010c2c <__libc_csu_fini>:
   10c2c:	e12fff1e 	bx	lr

Disassembly of section .fini:

00010c30 <_fini>:
   10c30:	e92d4008 	push	{r3, lr}
   10c34:	e8bd8008 	pop	{r3, pc}
