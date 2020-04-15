
execs/mem_access/mem_access_thumb_O1:     file format elf32-littlearm


Disassembly of section .init:

00010478 <_init>:
   10478:	e92d4008 	push	{r3, lr}
   1047c:	eb000032 	bl	1054c <call_weak_fn>
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

00010510 <_start>:
   10510:	e3a0b000 	mov	fp, #0
   10514:	e3a0e000 	mov	lr, #0
   10518:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
   1051c:	e1a0200d 	mov	r2, sp
   10520:	e52d2004 	push	{r2}		; (str r2, [sp, #-4]!)
   10524:	e52d0004 	push	{r0}		; (str r0, [sp, #-4]!)
   10528:	e59fc010 	ldr	ip, [pc, #16]	; 10540 <_start+0x30>
   1052c:	e52dc004 	push	{ip}		; (str ip, [sp, #-4]!)
   10530:	e59f000c 	ldr	r0, [pc, #12]	; 10544 <_start+0x34>
   10534:	e59f300c 	ldr	r3, [pc, #12]	; 10548 <_start+0x38>
   10538:	ebffffe2 	bl	104c8 <__libc_start_main@plt>
   1053c:	ebfffff0 	bl	10504 <abort@plt>
   10540:	00010920 	.word	0x00010920
   10544:	0001073c 	.word	0x0001073c
   10548:	000108c0 	.word	0x000108c0

0001054c <call_weak_fn>:
   1054c:	e59f3014 	ldr	r3, [pc, #20]	; 10568 <call_weak_fn+0x1c>
   10550:	e59f2014 	ldr	r2, [pc, #20]	; 1056c <call_weak_fn+0x20>
   10554:	e08f3003 	add	r3, pc, r3
   10558:	e7932002 	ldr	r2, [r3, r2]
   1055c:	e3520000 	cmp	r2, #0
   10560:	012fff1e 	bxeq	lr
   10564:	eaffffda 	b	104d4 <__gmon_start__@plt>
   10568:	00010aa4 	.word	0x00010aa4
   1056c:	00000034 	.word	0x00000034

00010570 <deregister_tm_clones>:
   10570:	e59f301c 	ldr	r3, [pc, #28]	; 10594 <deregister_tm_clones+0x24>
   10574:	e59f001c 	ldr	r0, [pc, #28]	; 10598 <deregister_tm_clones+0x28>
   10578:	e0433000 	sub	r3, r3, r0
   1057c:	e3530006 	cmp	r3, #6
   10580:	912fff1e 	bxls	lr
   10584:	e59f3010 	ldr	r3, [pc, #16]	; 1059c <deregister_tm_clones+0x2c>
   10588:	e3530000 	cmp	r3, #0
   1058c:	012fff1e 	bxeq	lr
   10590:	e12fff13 	bx	r3
   10594:	0002104b 	.word	0x0002104b
   10598:	00021048 	.word	0x00021048
   1059c:	00000000 	.word	0x00000000

000105a0 <register_tm_clones>:
   105a0:	e59f1024 	ldr	r1, [pc, #36]	; 105cc <register_tm_clones+0x2c>
   105a4:	e59f0024 	ldr	r0, [pc, #36]	; 105d0 <register_tm_clones+0x30>
   105a8:	e0411000 	sub	r1, r1, r0
   105ac:	e1a01141 	asr	r1, r1, #2
   105b0:	e0811fa1 	add	r1, r1, r1, lsr #31
   105b4:	e1b010c1 	asrs	r1, r1, #1
   105b8:	012fff1e 	bxeq	lr
   105bc:	e59f3010 	ldr	r3, [pc, #16]	; 105d4 <register_tm_clones+0x34>
   105c0:	e3530000 	cmp	r3, #0
   105c4:	012fff1e 	bxeq	lr
   105c8:	e12fff13 	bx	r3
   105cc:	00021048 	.word	0x00021048
   105d0:	00021048 	.word	0x00021048
   105d4:	00000000 	.word	0x00000000

000105d8 <__do_global_dtors_aux>:
   105d8:	e92d4010 	push	{r4, lr}
   105dc:	e59f4018 	ldr	r4, [pc, #24]	; 105fc <__do_global_dtors_aux+0x24>
   105e0:	e5d43000 	ldrb	r3, [r4]
   105e4:	e3530000 	cmp	r3, #0
   105e8:	18bd8010 	popne	{r4, pc}
   105ec:	ebffffdf 	bl	10570 <deregister_tm_clones>
   105f0:	e3a03001 	mov	r3, #1
   105f4:	e5c43000 	strb	r3, [r4]
   105f8:	e8bd8010 	pop	{r4, pc}
   105fc:	00021048 	.word	0x00021048

00010600 <frame_dummy>:
   10600:	e59f0028 	ldr	r0, [pc, #40]	; 10630 <frame_dummy+0x30>
   10604:	e5903000 	ldr	r3, [r0]
   10608:	e3530000 	cmp	r3, #0
   1060c:	1a000000 	bne	10614 <frame_dummy+0x14>
   10610:	eaffffe2 	b	105a0 <register_tm_clones>
   10614:	e59f3018 	ldr	r3, [pc, #24]	; 10634 <frame_dummy+0x34>
   10618:	e3530000 	cmp	r3, #0
   1061c:	0afffffb 	beq	10610 <frame_dummy+0x10>
   10620:	e92d4010 	push	{r4, lr}
   10624:	e12fff33 	blx	r3
   10628:	e8bd4010 	pop	{r4, lr}
   1062c:	eaffffdb 	b	105a0 <register_tm_clones>
   10630:	00020f0c 	.word	0x00020f0c
   10634:	00000000 	.word	0x00000000

00010638 <allocate_matrix>:
   10638:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
   1063c:	e3a00efa 	mov	r0, #4000	; 0xfa0
   10640:	ebffff9d 	bl	104bc <malloc@plt>
   10644:	e1a07000 	mov	r7, r0
   10648:	e2404004 	sub	r4, r0, #4
   1064c:	e2805ef9 	add	r5, r0, #3984	; 0xf90
   10650:	e285500c 	add	r5, r5, #12
   10654:	e3a06efa 	mov	r6, #4000	; 0xfa0
   10658:	e1a00006 	mov	r0, r6
   1065c:	ebffff96 	bl	104bc <malloc@plt>
   10660:	e5a40004 	str	r0, [r4, #4]!
   10664:	e1540005 	cmp	r4, r5
   10668:	1afffffa 	bne	10658 <allocate_matrix+0x20>
   1066c:	e1a00007 	mov	r0, r7
   10670:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}

00010674 <free_matrix>:
   10674:	e92d4070 	push	{r4, r5, r6, lr}
   10678:	e1a06000 	mov	r6, r0
   1067c:	e2404004 	sub	r4, r0, #4
   10680:	e2805ef9 	add	r5, r0, #3984	; 0xf90
   10684:	e285500c 	add	r5, r5, #12
   10688:	e5b40004 	ldr	r0, [r4, #4]!
   1068c:	ebffff84 	bl	104a4 <free@plt>
   10690:	e1540005 	cmp	r4, r5
   10694:	1afffffb 	bne	10688 <free_matrix+0x14>
   10698:	e1a00006 	mov	r0, r6
   1069c:	ebffff80 	bl	104a4 <free@plt>
   106a0:	e8bd8070 	pop	{r4, r5, r6, pc}

000106a4 <alloc_array>:
   106a4:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
   106a8:	e3a00010 	mov	r0, #16
   106ac:	ebffff82 	bl	104bc <malloc@plt>
   106b0:	e2507000 	subs	r7, r0, #0
   106b4:	12474004 	subne	r4, r7, #4
   106b8:	1287600c 	addne	r6, r7, #12
   106bc:	13a05701 	movne	r5, #262144	; 0x40000
   106c0:	0a000008 	beq	106e8 <alloc_array+0x44>
   106c4:	e1a00005 	mov	r0, r5
   106c8:	ebffff7b 	bl	104bc <malloc@plt>
   106cc:	e5a40004 	str	r0, [r4, #4]!
   106d0:	e3500000 	cmp	r0, #0
   106d4:	0a000007 	beq	106f8 <alloc_array+0x54>
   106d8:	e1540006 	cmp	r4, r6
   106dc:	1afffff8 	bne	106c4 <alloc_array+0x20>
   106e0:	e1a00007 	mov	r0, r7
   106e4:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}
   106e8:	e59f0018 	ldr	r0, [pc, #24]	; 10708 <alloc_array+0x64>
   106ec:	ebffff6f 	bl	104b0 <puts@plt>
   106f0:	e3a00001 	mov	r0, #1
   106f4:	ebffff79 	bl	104e0 <exit@plt>
   106f8:	e59f000c 	ldr	r0, [pc, #12]	; 1070c <alloc_array+0x68>
   106fc:	ebffff6b 	bl	104b0 <puts@plt>
   10700:	e3a00001 	mov	r0, #1
   10704:	ebffff75 	bl	104e0 <exit@plt>
   10708:	00010930 	.word	0x00010930
   1070c:	00010950 	.word	0x00010950

00010710 <init_array>:
   10710:	e2801010 	add	r1, r0, #16
   10714:	e3a03000 	mov	r3, #0
   10718:	e5902000 	ldr	r2, [r0]
   1071c:	e7823103 	str	r3, [r2, r3, lsl #2]
   10720:	e2833001 	add	r3, r3, #1
   10724:	e3530801 	cmp	r3, #65536	; 0x10000
   10728:	1afffffa 	bne	10718 <init_array+0x8>
   1072c:	e2800004 	add	r0, r0, #4
   10730:	e1500001 	cmp	r0, r1
   10734:	1afffff6 	bne	10714 <init_array+0x4>
   10738:	e12fff1e 	bx	lr

0001073c <main>:
   1073c:	e92d4010 	push	{r4, lr}
   10740:	ebffffd7 	bl	106a4 <alloc_array>
   10744:	e1a04000 	mov	r4, r0
   10748:	ebfffff0 	bl	10710 <init_array>
   1074c:	e1a00004 	mov	r0, r4
   10750:	eb00004c 	bl	10888 <mem_access_thumb>
   10754:	e1a00004 	mov	r0, r4
   10758:	ebffff51 	bl	104a4 <free@plt>
   1075c:	e3a00000 	mov	r0, #0
   10760:	e8bd8010 	pop	{r4, pc}

00010764 <init_matrices>:
   10764:	e92d47f0 	push	{r4, r5, r6, r7, r8, r9, sl, lr}
   10768:	e1a07000 	mov	r7, r0
   1076c:	e1a06001 	mov	r6, r1
   10770:	e1a09002 	mov	r9, r2
   10774:	e59f005c 	ldr	r0, [pc, #92]	; 107d8 <init_matrices+0x74>
   10778:	ebffff5b 	bl	104ec <srand@plt>
   1077c:	e3a05000 	mov	r5, #0
   10780:	e1a08005 	mov	r8, r5
   10784:	ea000011 	b	107d0 <init_matrices+0x6c>
   10788:	e7993105 	ldr	r3, [r9, r5, lsl #2]
   1078c:	e7838004 	str	r8, [r3, r4]
   10790:	e2844004 	add	r4, r4, #4
   10794:	e3540efa 	cmp	r4, #4000	; 0xfa0
   10798:	0a000009 	beq	107c4 <init_matrices+0x60>
   1079c:	e3570000 	cmp	r7, #0
   107a0:	13560000 	cmpne	r6, #0
   107a4:	0afffff7 	beq	10788 <init_matrices+0x24>
   107a8:	e797a105 	ldr	sl, [r7, r5, lsl #2]
   107ac:	ebffff51 	bl	104f8 <rand@plt>
   107b0:	e78a0004 	str	r0, [sl, r4]
   107b4:	e796a105 	ldr	sl, [r6, r5, lsl #2]
   107b8:	ebffff4e 	bl	104f8 <rand@plt>
   107bc:	e78a0004 	str	r0, [sl, r4]
   107c0:	eafffff0 	b	10788 <init_matrices+0x24>
   107c4:	e2855001 	add	r5, r5, #1
   107c8:	e3550ffa 	cmp	r5, #1000	; 0x3e8
   107cc:	08bd87f0 	popeq	{r4, r5, r6, r7, r8, r9, sl, pc}
   107d0:	e3a04000 	mov	r4, #0
   107d4:	eafffff0 	b	1079c <init_matrices+0x38>
   107d8:	00001092 	.word	0x00001092

000107dc <check_result>:
   107dc:	e92d4ff0 	push	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
   107e0:	e24dd00c 	sub	sp, sp, #12
   107e4:	e2400004 	sub	r0, r0, #4
   107e8:	e242b004 	sub	fp, r2, #4
   107ec:	e3a0a000 	mov	sl, #0
   107f0:	ea000008 	b	10818 <check_result+0x3c>
   107f4:	e58dc000 	str	ip, [sp]
   107f8:	e1a0100a 	mov	r1, sl
   107fc:	e59f007c 	ldr	r0, [pc, #124]	; 10880 <check_result+0xa4>
   10800:	ebffff24 	bl	10498 <printf@plt>
   10804:	e28dd00c 	add	sp, sp, #12
   10808:	e8bd8ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, pc}
   1080c:	e28aa001 	add	sl, sl, #1
   10810:	e35a0ffa 	cmp	sl, #1000	; 0x3e8
   10814:	0a000016 	beq	10874 <check_result+0x98>
   10818:	e5b09004 	ldr	r9, [r0, #4]!
   1081c:	e5bb8004 	ldr	r8, [fp, #4]!
   10820:	e2488004 	sub	r8, r8, #4
   10824:	e3a02000 	mov	r2, #0
   10828:	e2897ef9 	add	r7, r9, #3984	; 0xf90
   1082c:	e287700c 	add	r7, r7, #12
   10830:	e1a06102 	lsl	r6, r2, #2
   10834:	e2493004 	sub	r3, r9, #4
   10838:	e241e004 	sub	lr, r1, #4
   1083c:	e3a0c000 	mov	ip, #0
   10840:	e5be4004 	ldr	r4, [lr, #4]!
   10844:	e7944006 	ldr	r4, [r4, r6]
   10848:	e5b35004 	ldr	r5, [r3, #4]!
   1084c:	e02cc495 	mla	ip, r5, r4, ip
   10850:	e1530007 	cmp	r3, r7
   10854:	1afffff9 	bne	10840 <check_result+0x64>
   10858:	e5b83004 	ldr	r3, [r8, #4]!
   1085c:	e15c0003 	cmp	ip, r3
   10860:	1affffe3 	bne	107f4 <check_result+0x18>
   10864:	e2822001 	add	r2, r2, #1
   10868:	e3520ffa 	cmp	r2, #1000	; 0x3e8
   1086c:	1affffef 	bne	10830 <check_result+0x54>
   10870:	eaffffe5 	b	1080c <check_result+0x30>
   10874:	e59f0008 	ldr	r0, [pc, #8]	; 10884 <check_result+0xa8>
   10878:	ebffff0c 	bl	104b0 <puts@plt>
   1087c:	eaffffe0 	b	10804 <check_result+0x28>
   10880:	00010970 	.word	0x00010970
   10884:	0001098c 	.word	0x0001098c

00010888 <mem_access_thumb>:
   10888:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
   1088c:	fa000001 	blx	10898 <thumb_code>
   10890:	e49de004 	pop	{lr}		; (ldr lr, [sp], #4)
   10894:	e12fff1e 	bx	lr

00010898 <thumb_code>:
   10898:	4f08      	ldr	r7, [pc, #32]	; (108bc <array_size_address>)
   1089a:	683f      	ldr	r7, [r7, #0]
   1089c:	4d06      	ldr	r5, [pc, #24]	; (108b8 <tmp_addr>)
   1089e:	2204      	movs	r2, #4
   108a0:	2300      	movs	r3, #0

000108a2 <outer_loop>:
   108a2:	2400      	movs	r4, #0

000108a4 <inner_loop>:
   108a4:	5846      	ldr	r6, [r0, r1]
   108a6:	602e      	str	r6, [r5, #0]
   108a8:	3401      	adds	r4, #1
   108aa:	42a7      	cmp	r7, r4
   108ac:	dbfa      	blt.n	108a4 <inner_loop>
   108ae:	3301      	adds	r3, #1
   108b0:	429a      	cmp	r2, r3
   108b2:	dbf6      	blt.n	108a2 <outer_loop>
   108b4:	4770      	bx	lr
   108b6:	46c0      	nop			; (mov r8, r8)

000108b8 <tmp_addr>:
   108b8:	00021044 	.word	0x00021044

000108bc <array_size_address>:
   108bc:	00021040 	.word	0x00021040

000108c0 <__libc_csu_init>:
   108c0:	e92d47f0 	push	{r4, r5, r6, r7, r8, r9, sl, lr}
   108c4:	e1a07000 	mov	r7, r0
   108c8:	e59f6048 	ldr	r6, [pc, #72]	; 10918 <__libc_csu_init+0x58>
   108cc:	e59f5048 	ldr	r5, [pc, #72]	; 1091c <__libc_csu_init+0x5c>
   108d0:	e08f6006 	add	r6, pc, r6
   108d4:	e08f5005 	add	r5, pc, r5
   108d8:	e0466005 	sub	r6, r6, r5
   108dc:	e1a08001 	mov	r8, r1
   108e0:	e1a09002 	mov	r9, r2
   108e4:	ebfffee3 	bl	10478 <_init>
   108e8:	e1b06146 	asrs	r6, r6, #2
   108ec:	08bd87f0 	popeq	{r4, r5, r6, r7, r8, r9, sl, pc}
   108f0:	e3a04000 	mov	r4, #0
   108f4:	e2844001 	add	r4, r4, #1
   108f8:	e4953004 	ldr	r3, [r5], #4
   108fc:	e1a02009 	mov	r2, r9
   10900:	e1a01008 	mov	r1, r8
   10904:	e1a00007 	mov	r0, r7
   10908:	e12fff33 	blx	r3
   1090c:	e1560004 	cmp	r6, r4
   10910:	1afffff7 	bne	108f4 <__libc_csu_init+0x34>
   10914:	e8bd87f0 	pop	{r4, r5, r6, r7, r8, r9, sl, pc}
   10918:	00010630 	.word	0x00010630
   1091c:	00010628 	.word	0x00010628

00010920 <__libc_csu_fini>:
   10920:	e12fff1e 	bx	lr

Disassembly of section .fini:

00010924 <_fini>:
   10924:	e92d4008 	push	{r3, lr}
   10928:	e8bd8008 	pop	{r3, pc}
