
execs/mem_access/mem_access_thumb_Os:     file format elf32-littlearm


Disassembly of section .init:

00010478 <_init>:
   10478:	e92d4008 	push	{r3, lr}
   1047c:	eb00003c 	bl	10574 <call_weak_fn>
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
   10510:	e92d4010 	push	{r4, lr}
   10514:	eb00006c 	bl	106cc <alloc_array>
   10518:	e1a04000 	mov	r4, r0
   1051c:	eb000082 	bl	1072c <init_array>
   10520:	e1a00004 	mov	r0, r4
   10524:	eb0000cf 	bl	10868 <mem_access_thumb>
   10528:	e1a00004 	mov	r0, r4
   1052c:	ebffffdc 	bl	104a4 <free@plt>
   10530:	e3a00000 	mov	r0, #0
   10534:	e8bd8010 	pop	{r4, pc}

00010538 <_start>:
   10538:	e3a0b000 	mov	fp, #0
   1053c:	e3a0e000 	mov	lr, #0
   10540:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
   10544:	e1a0200d 	mov	r2, sp
   10548:	e52d2004 	push	{r2}		; (str r2, [sp, #-4]!)
   1054c:	e52d0004 	push	{r0}		; (str r0, [sp, #-4]!)
   10550:	e59fc010 	ldr	ip, [pc, #16]	; 10568 <_start+0x30>
   10554:	e52dc004 	push	{ip}		; (str ip, [sp, #-4]!)
   10558:	e59f000c 	ldr	r0, [pc, #12]	; 1056c <_start+0x34>
   1055c:	e59f300c 	ldr	r3, [pc, #12]	; 10570 <_start+0x38>
   10560:	ebffffd8 	bl	104c8 <__libc_start_main@plt>
   10564:	ebffffe6 	bl	10504 <abort@plt>
   10568:	00010900 	.word	0x00010900
   1056c:	00010510 	.word	0x00010510
   10570:	000108a0 	.word	0x000108a0

00010574 <call_weak_fn>:
   10574:	e59f3014 	ldr	r3, [pc, #20]	; 10590 <call_weak_fn+0x1c>
   10578:	e59f2014 	ldr	r2, [pc, #20]	; 10594 <call_weak_fn+0x20>
   1057c:	e08f3003 	add	r3, pc, r3
   10580:	e7932002 	ldr	r2, [r3, r2]
   10584:	e3520000 	cmp	r2, #0
   10588:	012fff1e 	bxeq	lr
   1058c:	eaffffd0 	b	104d4 <__gmon_start__@plt>
   10590:	00010a7c 	.word	0x00010a7c
   10594:	00000034 	.word	0x00000034

00010598 <deregister_tm_clones>:
   10598:	e59f301c 	ldr	r3, [pc, #28]	; 105bc <deregister_tm_clones+0x24>
   1059c:	e59f001c 	ldr	r0, [pc, #28]	; 105c0 <deregister_tm_clones+0x28>
   105a0:	e0433000 	sub	r3, r3, r0
   105a4:	e3530006 	cmp	r3, #6
   105a8:	912fff1e 	bxls	lr
   105ac:	e59f3010 	ldr	r3, [pc, #16]	; 105c4 <deregister_tm_clones+0x2c>
   105b0:	e3530000 	cmp	r3, #0
   105b4:	012fff1e 	bxeq	lr
   105b8:	e12fff13 	bx	r3
   105bc:	0002104b 	.word	0x0002104b
   105c0:	00021048 	.word	0x00021048
   105c4:	00000000 	.word	0x00000000

000105c8 <register_tm_clones>:
   105c8:	e59f1024 	ldr	r1, [pc, #36]	; 105f4 <register_tm_clones+0x2c>
   105cc:	e59f0024 	ldr	r0, [pc, #36]	; 105f8 <register_tm_clones+0x30>
   105d0:	e0411000 	sub	r1, r1, r0
   105d4:	e1a01141 	asr	r1, r1, #2
   105d8:	e0811fa1 	add	r1, r1, r1, lsr #31
   105dc:	e1b010c1 	asrs	r1, r1, #1
   105e0:	012fff1e 	bxeq	lr
   105e4:	e59f3010 	ldr	r3, [pc, #16]	; 105fc <register_tm_clones+0x34>
   105e8:	e3530000 	cmp	r3, #0
   105ec:	012fff1e 	bxeq	lr
   105f0:	e12fff13 	bx	r3
   105f4:	00021048 	.word	0x00021048
   105f8:	00021048 	.word	0x00021048
   105fc:	00000000 	.word	0x00000000

00010600 <__do_global_dtors_aux>:
   10600:	e92d4010 	push	{r4, lr}
   10604:	e59f4018 	ldr	r4, [pc, #24]	; 10624 <__do_global_dtors_aux+0x24>
   10608:	e5d43000 	ldrb	r3, [r4]
   1060c:	e3530000 	cmp	r3, #0
   10610:	18bd8010 	popne	{r4, pc}
   10614:	ebffffdf 	bl	10598 <deregister_tm_clones>
   10618:	e3a03001 	mov	r3, #1
   1061c:	e5c43000 	strb	r3, [r4]
   10620:	e8bd8010 	pop	{r4, pc}
   10624:	00021048 	.word	0x00021048

00010628 <frame_dummy>:
   10628:	e59f0028 	ldr	r0, [pc, #40]	; 10658 <frame_dummy+0x30>
   1062c:	e5903000 	ldr	r3, [r0]
   10630:	e3530000 	cmp	r3, #0
   10634:	1a000000 	bne	1063c <frame_dummy+0x14>
   10638:	eaffffe2 	b	105c8 <register_tm_clones>
   1063c:	e59f3018 	ldr	r3, [pc, #24]	; 1065c <frame_dummy+0x34>
   10640:	e3530000 	cmp	r3, #0
   10644:	0afffffb 	beq	10638 <frame_dummy+0x10>
   10648:	e92d4010 	push	{r4, lr}
   1064c:	e12fff33 	blx	r3
   10650:	e8bd4010 	pop	{r4, lr}
   10654:	eaffffdb 	b	105c8 <register_tm_clones>
   10658:	00020f0c 	.word	0x00020f0c
   1065c:	00000000 	.word	0x00000000

00010660 <allocate_matrix>:
   10660:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
   10664:	e3a00efa 	mov	r0, #4000	; 0xfa0
   10668:	ebffff93 	bl	104bc <malloc@plt>
   1066c:	e3a07efa 	mov	r7, #4000	; 0xfa0
   10670:	e2805ef9 	add	r5, r0, #3984	; 0xf90
   10674:	e1a04000 	mov	r4, r0
   10678:	e2406004 	sub	r6, r0, #4
   1067c:	e285500c 	add	r5, r5, #12
   10680:	e1a00007 	mov	r0, r7
   10684:	ebffff8c 	bl	104bc <malloc@plt>
   10688:	e5a60004 	str	r0, [r6, #4]!
   1068c:	e1560005 	cmp	r6, r5
   10690:	1afffffa 	bne	10680 <allocate_matrix+0x20>
   10694:	e1a00004 	mov	r0, r4
   10698:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}

0001069c <free_matrix>:
   1069c:	e92d4070 	push	{r4, r5, r6, lr}
   106a0:	e2805ef9 	add	r5, r0, #3984	; 0xf90
   106a4:	e1a04000 	mov	r4, r0
   106a8:	e2406004 	sub	r6, r0, #4
   106ac:	e285500c 	add	r5, r5, #12
   106b0:	e5b60004 	ldr	r0, [r6, #4]!
   106b4:	ebffff7a 	bl	104a4 <free@plt>
   106b8:	e1560005 	cmp	r6, r5
   106bc:	1afffffb 	bne	106b0 <free_matrix+0x14>
   106c0:	e1a00004 	mov	r0, r4
   106c4:	e8bd4070 	pop	{r4, r5, r6, lr}
   106c8:	eaffff75 	b	104a4 <free@plt>

000106cc <alloc_array>:
   106cc:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
   106d0:	e3a00010 	mov	r0, #16
   106d4:	ebffff78 	bl	104bc <malloc@plt>
   106d8:	e2504000 	subs	r4, r0, #0
   106dc:	059f0040 	ldreq	r0, [pc, #64]	; 10724 <alloc_array+0x58>
   106e0:	0a000008 	beq	10708 <alloc_array+0x3c>
   106e4:	e2445004 	sub	r5, r4, #4
   106e8:	e284600c 	add	r6, r4, #12
   106ec:	e3a07701 	mov	r7, #262144	; 0x40000
   106f0:	e1a00007 	mov	r0, r7
   106f4:	ebffff70 	bl	104bc <malloc@plt>
   106f8:	e3500000 	cmp	r0, #0
   106fc:	e5a50004 	str	r0, [r5, #4]!
   10700:	1a000003 	bne	10714 <alloc_array+0x48>
   10704:	e59f001c 	ldr	r0, [pc, #28]	; 10728 <alloc_array+0x5c>
   10708:	ebffff68 	bl	104b0 <puts@plt>
   1070c:	e3a00001 	mov	r0, #1
   10710:	ebffff72 	bl	104e0 <exit@plt>
   10714:	e1550006 	cmp	r5, r6
   10718:	1afffff4 	bne	106f0 <alloc_array+0x24>
   1071c:	e1a00004 	mov	r0, r4
   10720:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}
   10724:	00010910 	.word	0x00010910
   10728:	00010930 	.word	0x00010930

0001072c <init_array>:
   1072c:	e2402004 	sub	r2, r0, #4
   10730:	e280000c 	add	r0, r0, #12
   10734:	e5b21004 	ldr	r1, [r2, #4]!
   10738:	e3a03000 	mov	r3, #0
   1073c:	e7813103 	str	r3, [r1, r3, lsl #2]
   10740:	e2833001 	add	r3, r3, #1
   10744:	e3530801 	cmp	r3, #65536	; 0x10000
   10748:	1afffffb 	bne	1073c <init_array+0x10>
   1074c:	e1520000 	cmp	r2, r0
   10750:	1afffff7 	bne	10734 <init_array+0x8>
   10754:	e12fff1e 	bx	lr

00010758 <init_matrices>:
   10758:	e92d47f0 	push	{r4, r5, r6, r7, r8, r9, sl, lr}
   1075c:	e1a06000 	mov	r6, r0
   10760:	e59f005c 	ldr	r0, [pc, #92]	; 107c4 <init_matrices+0x6c>
   10764:	e1a07001 	mov	r7, r1
   10768:	e1a08002 	mov	r8, r2
   1076c:	ebffff5e 	bl	104ec <srand@plt>
   10770:	e3a04000 	mov	r4, #0
   10774:	e1a09004 	mov	r9, r4
   10778:	e3a05000 	mov	r5, #0
   1077c:	e3560000 	cmp	r6, #0
   10780:	13570000 	cmpne	r7, #0
   10784:	0a000005 	beq	107a0 <init_matrices+0x48>
   10788:	e796a104 	ldr	sl, [r6, r4, lsl #2]
   1078c:	ebffff59 	bl	104f8 <rand@plt>
   10790:	e78a0005 	str	r0, [sl, r5]
   10794:	e797a104 	ldr	sl, [r7, r4, lsl #2]
   10798:	ebffff56 	bl	104f8 <rand@plt>
   1079c:	e78a0005 	str	r0, [sl, r5]
   107a0:	e7983104 	ldr	r3, [r8, r4, lsl #2]
   107a4:	e7839005 	str	r9, [r3, r5]
   107a8:	e2855004 	add	r5, r5, #4
   107ac:	e3550efa 	cmp	r5, #4000	; 0xfa0
   107b0:	1afffff1 	bne	1077c <init_matrices+0x24>
   107b4:	e2844001 	add	r4, r4, #1
   107b8:	e3540ffa 	cmp	r4, #1000	; 0x3e8
   107bc:	1affffed 	bne	10778 <init_matrices+0x20>
   107c0:	e8bd87f0 	pop	{r4, r5, r6, r7, r8, r9, sl, pc}
   107c4:	00001092 	.word	0x00001092

000107c8 <check_result>:
   107c8:	e92d4ff7 	push	{r0, r1, r2, r4, r5, r6, r7, r8, r9, sl, fp, lr}
   107cc:	e1a07001 	mov	r7, r1
   107d0:	e1a08002 	mov	r8, r2
   107d4:	e3a01000 	mov	r1, #0
   107d8:	e7906101 	ldr	r6, [r0, r1, lsl #2]
   107dc:	e7989101 	ldr	r9, [r8, r1, lsl #2]
   107e0:	e286eef9 	add	lr, r6, #3984	; 0xf90
   107e4:	e3a02000 	mov	r2, #0
   107e8:	e28ee00c 	add	lr, lr, #12
   107ec:	ea000002 	b	107fc <check_result+0x34>
   107f0:	e2822001 	add	r2, r2, #1
   107f4:	e3520ffa 	cmp	r2, #1000	; 0x3e8
   107f8:	0a000011 	beq	10844 <check_result+0x7c>
   107fc:	e1a05102 	lsl	r5, r2, #2
   10800:	e2463004 	sub	r3, r6, #4
   10804:	e2474004 	sub	r4, r7, #4
   10808:	e3a0c000 	mov	ip, #0
   1080c:	e5b4a004 	ldr	sl, [r4, #4]!
   10810:	e5b3b004 	ldr	fp, [r3, #4]!
   10814:	e79aa005 	ldr	sl, [sl, r5]
   10818:	e15e0003 	cmp	lr, r3
   1081c:	e02cca9b 	mla	ip, fp, sl, ip
   10820:	1afffff9 	bne	1080c <check_result+0x44>
   10824:	e7993005 	ldr	r3, [r9, r5]
   10828:	e15c0003 	cmp	ip, r3
   1082c:	0affffef 	beq	107f0 <check_result+0x28>
   10830:	e58dc000 	str	ip, [sp]
   10834:	e59f0024 	ldr	r0, [pc, #36]	; 10860 <check_result+0x98>
   10838:	ebffff16 	bl	10498 <printf@plt>
   1083c:	e28dd00c 	add	sp, sp, #12
   10840:	e8bd8ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, pc}
   10844:	e2811001 	add	r1, r1, #1
   10848:	e3510ffa 	cmp	r1, #1000	; 0x3e8
   1084c:	1affffe1 	bne	107d8 <check_result+0x10>
   10850:	e59f000c 	ldr	r0, [pc, #12]	; 10864 <check_result+0x9c>
   10854:	e28dd00c 	add	sp, sp, #12
   10858:	e8bd4ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
   1085c:	eaffff13 	b	104b0 <puts@plt>
   10860:	00010950 	.word	0x00010950
   10864:	0001096b 	.word	0x0001096b

00010868 <mem_access_thumb>:
   10868:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
   1086c:	fa000001 	blx	10878 <thumb_code>
   10870:	e49de004 	pop	{lr}		; (ldr lr, [sp], #4)
   10874:	e12fff1e 	bx	lr

00010878 <thumb_code>:
   10878:	4f08      	ldr	r7, [pc, #32]	; (1089c <array_size_address>)
   1087a:	683f      	ldr	r7, [r7, #0]
   1087c:	4d06      	ldr	r5, [pc, #24]	; (10898 <tmp_addr>)
   1087e:	2204      	movs	r2, #4
   10880:	2300      	movs	r3, #0

00010882 <outer_loop>:
   10882:	2400      	movs	r4, #0

00010884 <inner_loop>:
   10884:	5846      	ldr	r6, [r0, r1]
   10886:	602e      	str	r6, [r5, #0]
   10888:	3401      	adds	r4, #1
   1088a:	42a7      	cmp	r7, r4
   1088c:	dbfa      	blt.n	10884 <inner_loop>
   1088e:	3301      	adds	r3, #1
   10890:	429a      	cmp	r2, r3
   10892:	dbf6      	blt.n	10882 <outer_loop>
   10894:	4770      	bx	lr
   10896:	46c0      	nop			; (mov r8, r8)

00010898 <tmp_addr>:
   10898:	00021044 	.word	0x00021044

0001089c <array_size_address>:
   1089c:	00021040 	.word	0x00021040

000108a0 <__libc_csu_init>:
   108a0:	e92d47f0 	push	{r4, r5, r6, r7, r8, r9, sl, lr}
   108a4:	e1a07000 	mov	r7, r0
   108a8:	e59f6048 	ldr	r6, [pc, #72]	; 108f8 <__libc_csu_init+0x58>
   108ac:	e59f5048 	ldr	r5, [pc, #72]	; 108fc <__libc_csu_init+0x5c>
   108b0:	e08f6006 	add	r6, pc, r6
   108b4:	e08f5005 	add	r5, pc, r5
   108b8:	e0466005 	sub	r6, r6, r5
   108bc:	e1a08001 	mov	r8, r1
   108c0:	e1a09002 	mov	r9, r2
   108c4:	ebfffeeb 	bl	10478 <_init>
   108c8:	e1b06146 	asrs	r6, r6, #2
   108cc:	08bd87f0 	popeq	{r4, r5, r6, r7, r8, r9, sl, pc}
   108d0:	e3a04000 	mov	r4, #0
   108d4:	e2844001 	add	r4, r4, #1
   108d8:	e4953004 	ldr	r3, [r5], #4
   108dc:	e1a02009 	mov	r2, r9
   108e0:	e1a01008 	mov	r1, r8
   108e4:	e1a00007 	mov	r0, r7
   108e8:	e12fff33 	blx	r3
   108ec:	e1560004 	cmp	r6, r4
   108f0:	1afffff7 	bne	108d4 <__libc_csu_init+0x34>
   108f4:	e8bd87f0 	pop	{r4, r5, r6, r7, r8, r9, sl, pc}
   108f8:	00010650 	.word	0x00010650
   108fc:	00010648 	.word	0x00010648

00010900 <__libc_csu_fini>:
   10900:	e12fff1e 	bx	lr

Disassembly of section .fini:

00010904 <_fini>:
   10904:	e92d4008 	push	{r3, lr}
   10908:	e8bd8008 	pop	{r3, pc}
