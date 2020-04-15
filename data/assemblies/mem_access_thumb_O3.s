
execs/mem_access/mem_access_thumb_O3:     file format elf32-littlearm


Disassembly of section .init:

00010478 <_init>:
   10478:	e92d4008 	push	{r3, lr}
   1047c:	eb000046 	bl	1059c <call_weak_fn>
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
   10514:	eb000076 	bl	106f4 <alloc_array>
   10518:	e1a04000 	mov	r4, r0
   1051c:	e2401004 	sub	r1, r0, #4
   10520:	e280000c 	add	r0, r0, #12
   10524:	e5b12004 	ldr	r2, [r1, #4]!
   10528:	e3a03000 	mov	r3, #0
   1052c:	e2422004 	sub	r2, r2, #4
   10530:	e5a23004 	str	r3, [r2, #4]!
   10534:	e2833001 	add	r3, r3, #1
   10538:	e3530801 	cmp	r3, #65536	; 0x10000
   1053c:	1afffffb 	bne	10530 <main+0x20>
   10540:	e1500001 	cmp	r0, r1
   10544:	1afffff6 	bne	10524 <main+0x14>
   10548:	e1a00004 	mov	r0, r4
   1054c:	eb0000e7 	bl	108f0 <mem_access_thumb>
   10550:	e1a00004 	mov	r0, r4
   10554:	ebffffd2 	bl	104a4 <free@plt>
   10558:	e3a00000 	mov	r0, #0
   1055c:	e8bd8010 	pop	{r4, pc}

00010560 <_start>:
   10560:	e3a0b000 	mov	fp, #0
   10564:	e3a0e000 	mov	lr, #0
   10568:	e49d1004 	pop	{r1}		; (ldr r1, [sp], #4)
   1056c:	e1a0200d 	mov	r2, sp
   10570:	e52d2004 	push	{r2}		; (str r2, [sp, #-4]!)
   10574:	e52d0004 	push	{r0}		; (str r0, [sp, #-4]!)
   10578:	e59fc010 	ldr	ip, [pc, #16]	; 10590 <_start+0x30>
   1057c:	e52dc004 	push	{ip}		; (str ip, [sp, #-4]!)
   10580:	e59f000c 	ldr	r0, [pc, #12]	; 10594 <_start+0x34>
   10584:	e59f300c 	ldr	r3, [pc, #12]	; 10598 <_start+0x38>
   10588:	ebffffce 	bl	104c8 <__libc_start_main@plt>
   1058c:	ebffffdc 	bl	10504 <abort@plt>
   10590:	00010988 	.word	0x00010988
   10594:	00010510 	.word	0x00010510
   10598:	00010928 	.word	0x00010928

0001059c <call_weak_fn>:
   1059c:	e59f3014 	ldr	r3, [pc, #20]	; 105b8 <call_weak_fn+0x1c>
   105a0:	e59f2014 	ldr	r2, [pc, #20]	; 105bc <call_weak_fn+0x20>
   105a4:	e08f3003 	add	r3, pc, r3
   105a8:	e7932002 	ldr	r2, [r3, r2]
   105ac:	e3520000 	cmp	r2, #0
   105b0:	012fff1e 	bxeq	lr
   105b4:	eaffffc6 	b	104d4 <__gmon_start__@plt>
   105b8:	00010a54 	.word	0x00010a54
   105bc:	00000034 	.word	0x00000034

000105c0 <deregister_tm_clones>:
   105c0:	e59f301c 	ldr	r3, [pc, #28]	; 105e4 <deregister_tm_clones+0x24>
   105c4:	e59f001c 	ldr	r0, [pc, #28]	; 105e8 <deregister_tm_clones+0x28>
   105c8:	e0433000 	sub	r3, r3, r0
   105cc:	e3530006 	cmp	r3, #6
   105d0:	912fff1e 	bxls	lr
   105d4:	e59f3010 	ldr	r3, [pc, #16]	; 105ec <deregister_tm_clones+0x2c>
   105d8:	e3530000 	cmp	r3, #0
   105dc:	012fff1e 	bxeq	lr
   105e0:	e12fff13 	bx	r3
   105e4:	0002104b 	.word	0x0002104b
   105e8:	00021048 	.word	0x00021048
   105ec:	00000000 	.word	0x00000000

000105f0 <register_tm_clones>:
   105f0:	e59f1024 	ldr	r1, [pc, #36]	; 1061c <register_tm_clones+0x2c>
   105f4:	e59f0024 	ldr	r0, [pc, #36]	; 10620 <register_tm_clones+0x30>
   105f8:	e0411000 	sub	r1, r1, r0
   105fc:	e1a01141 	asr	r1, r1, #2
   10600:	e0811fa1 	add	r1, r1, r1, lsr #31
   10604:	e1b010c1 	asrs	r1, r1, #1
   10608:	012fff1e 	bxeq	lr
   1060c:	e59f3010 	ldr	r3, [pc, #16]	; 10624 <register_tm_clones+0x34>
   10610:	e3530000 	cmp	r3, #0
   10614:	012fff1e 	bxeq	lr
   10618:	e12fff13 	bx	r3
   1061c:	00021048 	.word	0x00021048
   10620:	00021048 	.word	0x00021048
   10624:	00000000 	.word	0x00000000

00010628 <__do_global_dtors_aux>:
   10628:	e92d4010 	push	{r4, lr}
   1062c:	e59f4018 	ldr	r4, [pc, #24]	; 1064c <__do_global_dtors_aux+0x24>
   10630:	e5d43000 	ldrb	r3, [r4]
   10634:	e3530000 	cmp	r3, #0
   10638:	18bd8010 	popne	{r4, pc}
   1063c:	ebffffdf 	bl	105c0 <deregister_tm_clones>
   10640:	e3a03001 	mov	r3, #1
   10644:	e5c43000 	strb	r3, [r4]
   10648:	e8bd8010 	pop	{r4, pc}
   1064c:	00021048 	.word	0x00021048

00010650 <frame_dummy>:
   10650:	e59f0028 	ldr	r0, [pc, #40]	; 10680 <frame_dummy+0x30>
   10654:	e5903000 	ldr	r3, [r0]
   10658:	e3530000 	cmp	r3, #0
   1065c:	1a000000 	bne	10664 <frame_dummy+0x14>
   10660:	eaffffe2 	b	105f0 <register_tm_clones>
   10664:	e59f3018 	ldr	r3, [pc, #24]	; 10684 <frame_dummy+0x34>
   10668:	e3530000 	cmp	r3, #0
   1066c:	0afffffb 	beq	10660 <frame_dummy+0x10>
   10670:	e92d4010 	push	{r4, lr}
   10674:	e12fff33 	blx	r3
   10678:	e8bd4010 	pop	{r4, lr}
   1067c:	eaffffdb 	b	105f0 <register_tm_clones>
   10680:	00020f0c 	.word	0x00020f0c
   10684:	00000000 	.word	0x00000000

00010688 <allocate_matrix>:
   10688:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
   1068c:	e3a00efa 	mov	r0, #4000	; 0xfa0
   10690:	ebffff89 	bl	104bc <malloc@plt>
   10694:	e3a06efa 	mov	r6, #4000	; 0xfa0
   10698:	e2805ef9 	add	r5, r0, #3984	; 0xf90
   1069c:	e1a07000 	mov	r7, r0
   106a0:	e285500c 	add	r5, r5, #12
   106a4:	e2404004 	sub	r4, r0, #4
   106a8:	e1a00006 	mov	r0, r6
   106ac:	ebffff82 	bl	104bc <malloc@plt>
   106b0:	e5a40004 	str	r0, [r4, #4]!
   106b4:	e1540005 	cmp	r4, r5
   106b8:	1afffffa 	bne	106a8 <allocate_matrix+0x20>
   106bc:	e1a00007 	mov	r0, r7
   106c0:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}

000106c4 <free_matrix>:
   106c4:	e92d4070 	push	{r4, r5, r6, lr}
   106c8:	e2805ef9 	add	r5, r0, #3984	; 0xf90
   106cc:	e1a06000 	mov	r6, r0
   106d0:	e285500c 	add	r5, r5, #12
   106d4:	e2404004 	sub	r4, r0, #4
   106d8:	e5b40004 	ldr	r0, [r4, #4]!
   106dc:	ebffff70 	bl	104a4 <free@plt>
   106e0:	e1550004 	cmp	r5, r4
   106e4:	1afffffb 	bne	106d8 <free_matrix+0x14>
   106e8:	e1a00006 	mov	r0, r6
   106ec:	e8bd4070 	pop	{r4, r5, r6, lr}
   106f0:	eaffff6b 	b	104a4 <free@plt>

000106f4 <alloc_array>:
   106f4:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
   106f8:	e3a00010 	mov	r0, #16
   106fc:	ebffff6e 	bl	104bc <malloc@plt>
   10700:	e2507000 	subs	r7, r0, #0
   10704:	12474004 	subne	r4, r7, #4
   10708:	1287600c 	addne	r6, r7, #12
   1070c:	13a05701 	movne	r5, #262144	; 0x40000
   10710:	0a00000c 	beq	10748 <alloc_array+0x54>
   10714:	e1a00005 	mov	r0, r5
   10718:	ebffff67 	bl	104bc <malloc@plt>
   1071c:	e3500000 	cmp	r0, #0
   10720:	e5a40004 	str	r0, [r4, #4]!
   10724:	0a000003 	beq	10738 <alloc_array+0x44>
   10728:	e1540006 	cmp	r4, r6
   1072c:	1afffff8 	bne	10714 <alloc_array+0x20>
   10730:	e1a00007 	mov	r0, r7
   10734:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}
   10738:	e59f0018 	ldr	r0, [pc, #24]	; 10758 <alloc_array+0x64>
   1073c:	ebffff5b 	bl	104b0 <puts@plt>
   10740:	e3a00001 	mov	r0, #1
   10744:	ebffff65 	bl	104e0 <exit@plt>
   10748:	e59f000c 	ldr	r0, [pc, #12]	; 1075c <alloc_array+0x68>
   1074c:	ebffff57 	bl	104b0 <puts@plt>
   10750:	e3a00001 	mov	r0, #1
   10754:	ebffff61 	bl	104e0 <exit@plt>
   10758:	000109b8 	.word	0x000109b8
   1075c:	00010998 	.word	0x00010998

00010760 <init_array>:
   10760:	e2401004 	sub	r1, r0, #4
   10764:	e280000c 	add	r0, r0, #12
   10768:	e5b12004 	ldr	r2, [r1, #4]!
   1076c:	e3a03000 	mov	r3, #0
   10770:	e2422004 	sub	r2, r2, #4
   10774:	e5a23004 	str	r3, [r2, #4]!
   10778:	e2833001 	add	r3, r3, #1
   1077c:	e3530801 	cmp	r3, #65536	; 0x10000
   10780:	1afffffb 	bne	10774 <init_array+0x14>
   10784:	e1500001 	cmp	r0, r1
   10788:	1afffff6 	bne	10768 <init_array+0x8>
   1078c:	e12fff1e 	bx	lr

00010790 <init_matrices>:
   10790:	e92d4ff0 	push	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
   10794:	e1a09000 	mov	r9, r0
   10798:	e24dd00c 	sub	sp, sp, #12
   1079c:	e1a06000 	mov	r6, r0
   107a0:	e3510000 	cmp	r1, #0
   107a4:	13590000 	cmpne	r9, #0
   107a8:	e2863efa 	add	r3, r6, #4000	; 0xfa0
   107ac:	e59f008c 	ldr	r0, [pc, #140]	; 10840 <init_matrices+0xb0>
   107b0:	e1a07002 	mov	r7, r2
   107b4:	13a09001 	movne	r9, #1
   107b8:	03a09000 	moveq	r9, #0
   107bc:	e1a08001 	mov	r8, r1
   107c0:	e58d3004 	str	r3, [sp, #4]
   107c4:	ebffff48 	bl	104ec <srand@plt>
   107c8:	e3a05000 	mov	r5, #0
   107cc:	e3590000 	cmp	r9, #0
   107d0:	1a00000d 	bne	1080c <init_matrices+0x7c>
   107d4:	e5972000 	ldr	r2, [r7]
   107d8:	e1a03009 	mov	r3, r9
   107dc:	e7825003 	str	r5, [r2, r3]
   107e0:	e2833004 	add	r3, r3, #4
   107e4:	e3530efa 	cmp	r3, #4000	; 0xfa0
   107e8:	1afffffb 	bne	107dc <init_matrices+0x4c>
   107ec:	e59d3004 	ldr	r3, [sp, #4]
   107f0:	e2866004 	add	r6, r6, #4
   107f4:	e1530006 	cmp	r3, r6
   107f8:	e2888004 	add	r8, r8, #4
   107fc:	e2877004 	add	r7, r7, #4
   10800:	1afffff1 	bne	107cc <init_matrices+0x3c>
   10804:	e28dd00c 	add	sp, sp, #12
   10808:	e8bd8ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, pc}
   1080c:	e3a04000 	mov	r4, #0
   10810:	e596a000 	ldr	sl, [r6]
   10814:	ebffff37 	bl	104f8 <rand@plt>
   10818:	e598b000 	ldr	fp, [r8]
   1081c:	e78a0004 	str	r0, [sl, r4]
   10820:	ebffff34 	bl	104f8 <rand@plt>
   10824:	e5973000 	ldr	r3, [r7]
   10828:	e78b0004 	str	r0, [fp, r4]
   1082c:	e7835004 	str	r5, [r3, r4]
   10830:	e2844004 	add	r4, r4, #4
   10834:	e3540efa 	cmp	r4, #4000	; 0xfa0
   10838:	1afffff4 	bne	10810 <init_matrices+0x80>
   1083c:	eaffffea 	b	107ec <init_matrices+0x5c>
   10840:	00001092 	.word	0x00001092

00010844 <check_result>:
   10844:	e92d4ff0 	push	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
   10848:	e2400004 	sub	r0, r0, #4
   1084c:	e241b004 	sub	fp, r1, #4
   10850:	e24dd00c 	sub	sp, sp, #12
   10854:	e242a004 	sub	sl, r2, #4
   10858:	e3a01000 	mov	r1, #0
   1085c:	e5b09004 	ldr	r9, [r0, #4]!
   10860:	e5ba8004 	ldr	r8, [sl, #4]!
   10864:	e2897ef9 	add	r7, r9, #3984	; 0xf90
   10868:	e287700c 	add	r7, r7, #12
   1086c:	e2499004 	sub	r9, r9, #4
   10870:	e2488004 	sub	r8, r8, #4
   10874:	e3a02000 	mov	r2, #0
   10878:	e1a06102 	lsl	r6, r2, #2
   1087c:	e1a03009 	mov	r3, r9
   10880:	e1a0e00b 	mov	lr, fp
   10884:	e3a0c000 	mov	ip, #0
   10888:	e5be4004 	ldr	r4, [lr, #4]!
   1088c:	e5b35004 	ldr	r5, [r3, #4]!
   10890:	e7944006 	ldr	r4, [r4, r6]
   10894:	e1570003 	cmp	r7, r3
   10898:	e02cc495 	mla	ip, r5, r4, ip
   1089c:	1afffff9 	bne	10888 <check_result+0x44>
   108a0:	e5b83004 	ldr	r3, [r8, #4]!
   108a4:	e15c0003 	cmp	ip, r3
   108a8:	1a000009 	bne	108d4 <check_result+0x90>
   108ac:	e2822001 	add	r2, r2, #1
   108b0:	e3520ffa 	cmp	r2, #1000	; 0x3e8
   108b4:	1affffef 	bne	10878 <check_result+0x34>
   108b8:	e2811001 	add	r1, r1, #1
   108bc:	e3510ffa 	cmp	r1, #1000	; 0x3e8
   108c0:	1affffe5 	bne	1085c <check_result+0x18>
   108c4:	e59f001c 	ldr	r0, [pc, #28]	; 108e8 <check_result+0xa4>
   108c8:	e28dd00c 	add	sp, sp, #12
   108cc:	e8bd4ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
   108d0:	eafffef6 	b	104b0 <puts@plt>
   108d4:	e58dc000 	str	ip, [sp]
   108d8:	e59f000c 	ldr	r0, [pc, #12]	; 108ec <check_result+0xa8>
   108dc:	ebfffeed 	bl	10498 <printf@plt>
   108e0:	e28dd00c 	add	sp, sp, #12
   108e4:	e8bd8ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, pc}
   108e8:	000109f4 	.word	0x000109f4
   108ec:	000109d8 	.word	0x000109d8

000108f0 <mem_access_thumb>:
   108f0:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
   108f4:	fa000001 	blx	10900 <thumb_code>
   108f8:	e49de004 	pop	{lr}		; (ldr lr, [sp], #4)
   108fc:	e12fff1e 	bx	lr

00010900 <thumb_code>:
   10900:	4f08      	ldr	r7, [pc, #32]	; (10924 <array_size_address>)
   10902:	683f      	ldr	r7, [r7, #0]
   10904:	4d06      	ldr	r5, [pc, #24]	; (10920 <tmp_addr>)
   10906:	2204      	movs	r2, #4
   10908:	2300      	movs	r3, #0

0001090a <outer_loop>:
   1090a:	2400      	movs	r4, #0

0001090c <inner_loop>:
   1090c:	5846      	ldr	r6, [r0, r1]
   1090e:	602e      	str	r6, [r5, #0]
   10910:	3401      	adds	r4, #1
   10912:	42a7      	cmp	r7, r4
   10914:	dbfa      	blt.n	1090c <inner_loop>
   10916:	3301      	adds	r3, #1
   10918:	429a      	cmp	r2, r3
   1091a:	dbf6      	blt.n	1090a <outer_loop>
   1091c:	4770      	bx	lr
   1091e:	46c0      	nop			; (mov r8, r8)

00010920 <tmp_addr>:
   10920:	00021044 	.word	0x00021044

00010924 <array_size_address>:
   10924:	00021040 	.word	0x00021040

00010928 <__libc_csu_init>:
   10928:	e92d47f0 	push	{r4, r5, r6, r7, r8, r9, sl, lr}
   1092c:	e1a07000 	mov	r7, r0
   10930:	e59f6048 	ldr	r6, [pc, #72]	; 10980 <__libc_csu_init+0x58>
   10934:	e59f5048 	ldr	r5, [pc, #72]	; 10984 <__libc_csu_init+0x5c>
   10938:	e08f6006 	add	r6, pc, r6
   1093c:	e08f5005 	add	r5, pc, r5
   10940:	e0466005 	sub	r6, r6, r5
   10944:	e1a08001 	mov	r8, r1
   10948:	e1a09002 	mov	r9, r2
   1094c:	ebfffec9 	bl	10478 <_init>
   10950:	e1b06146 	asrs	r6, r6, #2
   10954:	08bd87f0 	popeq	{r4, r5, r6, r7, r8, r9, sl, pc}
   10958:	e3a04000 	mov	r4, #0
   1095c:	e2844001 	add	r4, r4, #1
   10960:	e4953004 	ldr	r3, [r5], #4
   10964:	e1a02009 	mov	r2, r9
   10968:	e1a01008 	mov	r1, r8
   1096c:	e1a00007 	mov	r0, r7
   10970:	e12fff33 	blx	r3
   10974:	e1560004 	cmp	r6, r4
   10978:	1afffff7 	bne	1095c <__libc_csu_init+0x34>
   1097c:	e8bd87f0 	pop	{r4, r5, r6, r7, r8, r9, sl, pc}
   10980:	000105c8 	.word	0x000105c8
   10984:	000105c0 	.word	0x000105c0

00010988 <__libc_csu_fini>:
   10988:	e12fff1e 	bx	lr

Disassembly of section .fini:

0001098c <_fini>:
   1098c:	e92d4008 	push	{r3, lr}
   10990:	e8bd8008 	pop	{r3, pc}
