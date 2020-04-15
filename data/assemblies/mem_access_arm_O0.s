
execs/mem_access/mem_access_arm_O0:     file format elf32-littlearm


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
   10540:	00010c00 	.word	0x00010c00
   10544:	00010638 	.word	0x00010638
   10548:	00010ba0 	.word	0x00010ba0

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
   10594:	00021053 	.word	0x00021053
   10598:	00021050 	.word	0x00021050
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
   105cc:	00021050 	.word	0x00021050
   105d0:	00021050 	.word	0x00021050
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
   105fc:	0002104d 	.word	0x0002104d

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

00010638 <main>:
   10638:	e92d4800 	push	{fp, lr}
   1063c:	e28db004 	add	fp, sp, #4
   10640:	e24dd008 	sub	sp, sp, #8
   10644:	e3a03000 	mov	r3, #0
   10648:	e50b3008 	str	r3, [fp, #-8]
   1064c:	eb00003f 	bl	10750 <alloc_array>
   10650:	e50b0008 	str	r0, [fp, #-8]
   10654:	e51b0008 	ldr	r0, [fp, #-8]
   10658:	eb00006c 	bl	10810 <init_array>
   1065c:	e51b0008 	ldr	r0, [fp, #-8]
   10660:	eb00013b 	bl	10b54 <mem_access_arm>
   10664:	e51b0008 	ldr	r0, [fp, #-8]
   10668:	ebffff8d 	bl	104a4 <free@plt>
   1066c:	e3a03000 	mov	r3, #0
   10670:	e1a00003 	mov	r0, r3
   10674:	e24bd004 	sub	sp, fp, #4
   10678:	e8bd8800 	pop	{fp, pc}

0001067c <allocate_matrix>:
   1067c:	e92d4810 	push	{r4, fp, lr}
   10680:	e28db008 	add	fp, sp, #8
   10684:	e24dd00c 	sub	sp, sp, #12
   10688:	e3a00efa 	mov	r0, #4000	; 0xfa0
   1068c:	ebffff8a 	bl	104bc <malloc@plt>
   10690:	e1a03000 	mov	r3, r0
   10694:	e50b3014 	str	r3, [fp, #-20]	; 0xffffffec
   10698:	e3a03000 	mov	r3, #0
   1069c:	e50b3010 	str	r3, [fp, #-16]
   106a0:	ea00000a 	b	106d0 <allocate_matrix+0x54>
   106a4:	e51b3010 	ldr	r3, [fp, #-16]
   106a8:	e1a03103 	lsl	r3, r3, #2
   106ac:	e51b2014 	ldr	r2, [fp, #-20]	; 0xffffffec
   106b0:	e0824003 	add	r4, r2, r3
   106b4:	e3a00efa 	mov	r0, #4000	; 0xfa0
   106b8:	ebffff7f 	bl	104bc <malloc@plt>
   106bc:	e1a03000 	mov	r3, r0
   106c0:	e5843000 	str	r3, [r4]
   106c4:	e51b3010 	ldr	r3, [fp, #-16]
   106c8:	e2833001 	add	r3, r3, #1
   106cc:	e50b3010 	str	r3, [fp, #-16]
   106d0:	e51b3010 	ldr	r3, [fp, #-16]
   106d4:	e3530ffa 	cmp	r3, #1000	; 0x3e8
   106d8:	bafffff1 	blt	106a4 <allocate_matrix+0x28>
   106dc:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
   106e0:	e1a00003 	mov	r0, r3
   106e4:	e24bd008 	sub	sp, fp, #8
   106e8:	e8bd8810 	pop	{r4, fp, pc}

000106ec <free_matrix>:
   106ec:	e92d4800 	push	{fp, lr}
   106f0:	e28db004 	add	fp, sp, #4
   106f4:	e24dd010 	sub	sp, sp, #16
   106f8:	e50b0010 	str	r0, [fp, #-16]
   106fc:	e3a03000 	mov	r3, #0
   10700:	e50b3008 	str	r3, [fp, #-8]
   10704:	ea000009 	b	10730 <free_matrix+0x44>
   10708:	e51b3008 	ldr	r3, [fp, #-8]
   1070c:	e1a03103 	lsl	r3, r3, #2
   10710:	e51b2010 	ldr	r2, [fp, #-16]
   10714:	e0823003 	add	r3, r2, r3
   10718:	e5933000 	ldr	r3, [r3]
   1071c:	e1a00003 	mov	r0, r3
   10720:	ebffff5f 	bl	104a4 <free@plt>
   10724:	e51b3008 	ldr	r3, [fp, #-8]
   10728:	e2833001 	add	r3, r3, #1
   1072c:	e50b3008 	str	r3, [fp, #-8]
   10730:	e51b3008 	ldr	r3, [fp, #-8]
   10734:	e3530ffa 	cmp	r3, #1000	; 0x3e8
   10738:	bafffff2 	blt	10708 <free_matrix+0x1c>
   1073c:	e51b0010 	ldr	r0, [fp, #-16]
   10740:	ebffff57 	bl	104a4 <free@plt>
   10744:	e1a00000 	nop			; (mov r0, r0)
   10748:	e24bd004 	sub	sp, fp, #4
   1074c:	e8bd8800 	pop	{fp, pc}

00010750 <alloc_array>:
   10750:	e92d4810 	push	{r4, fp, lr}
   10754:	e28db008 	add	fp, sp, #8
   10758:	e24dd00c 	sub	sp, sp, #12
   1075c:	e3a00010 	mov	r0, #16
   10760:	ebffff55 	bl	104bc <malloc@plt>
   10764:	e1a03000 	mov	r3, r0
   10768:	e50b3014 	str	r3, [fp, #-20]	; 0xffffffec
   1076c:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
   10770:	e3530000 	cmp	r3, #0
   10774:	1a000003 	bne	10788 <alloc_array+0x38>
   10778:	e59f0088 	ldr	r0, [pc, #136]	; 10808 <alloc_array+0xb8>
   1077c:	ebffff4b 	bl	104b0 <puts@plt>
   10780:	e3a00001 	mov	r0, #1
   10784:	ebffff55 	bl	104e0 <exit@plt>
   10788:	e3a03000 	mov	r3, #0
   1078c:	e50b3010 	str	r3, [fp, #-16]
   10790:	ea000015 	b	107ec <alloc_array+0x9c>
   10794:	e51b3010 	ldr	r3, [fp, #-16]
   10798:	e1a03103 	lsl	r3, r3, #2
   1079c:	e51b2014 	ldr	r2, [fp, #-20]	; 0xffffffec
   107a0:	e0824003 	add	r4, r2, r3
   107a4:	e3a00701 	mov	r0, #262144	; 0x40000
   107a8:	ebffff43 	bl	104bc <malloc@plt>
   107ac:	e1a03000 	mov	r3, r0
   107b0:	e5843000 	str	r3, [r4]
   107b4:	e51b3010 	ldr	r3, [fp, #-16]
   107b8:	e1a03103 	lsl	r3, r3, #2
   107bc:	e51b2014 	ldr	r2, [fp, #-20]	; 0xffffffec
   107c0:	e0823003 	add	r3, r2, r3
   107c4:	e5933000 	ldr	r3, [r3]
   107c8:	e3530000 	cmp	r3, #0
   107cc:	1a000003 	bne	107e0 <alloc_array+0x90>
   107d0:	e59f0034 	ldr	r0, [pc, #52]	; 1080c <alloc_array+0xbc>
   107d4:	ebffff35 	bl	104b0 <puts@plt>
   107d8:	e3a00001 	mov	r0, #1
   107dc:	ebffff3f 	bl	104e0 <exit@plt>
   107e0:	e51b3010 	ldr	r3, [fp, #-16]
   107e4:	e2833001 	add	r3, r3, #1
   107e8:	e50b3010 	str	r3, [fp, #-16]
   107ec:	e51b3010 	ldr	r3, [fp, #-16]
   107f0:	e3530003 	cmp	r3, #3
   107f4:	daffffe6 	ble	10794 <alloc_array+0x44>
   107f8:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
   107fc:	e1a00003 	mov	r0, r3
   10800:	e24bd008 	sub	sp, fp, #8
   10804:	e8bd8810 	pop	{r4, fp, pc}
   10808:	00010c10 	.word	0x00010c10
   1080c:	00010c30 	.word	0x00010c30

00010810 <init_array>:
   10810:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
   10814:	e28db000 	add	fp, sp, #0
   10818:	e24dd014 	sub	sp, sp, #20
   1081c:	e50b0010 	str	r0, [fp, #-16]
   10820:	e3a03000 	mov	r3, #0
   10824:	e50b3008 	str	r3, [fp, #-8]
   10828:	ea000015 	b	10884 <init_array+0x74>
   1082c:	e3a03000 	mov	r3, #0
   10830:	e50b300c 	str	r3, [fp, #-12]
   10834:	ea00000c 	b	1086c <init_array+0x5c>
   10838:	e51b3008 	ldr	r3, [fp, #-8]
   1083c:	e1a03103 	lsl	r3, r3, #2
   10840:	e51b2010 	ldr	r2, [fp, #-16]
   10844:	e0823003 	add	r3, r2, r3
   10848:	e5932000 	ldr	r2, [r3]
   1084c:	e51b300c 	ldr	r3, [fp, #-12]
   10850:	e1a03103 	lsl	r3, r3, #2
   10854:	e0823003 	add	r3, r2, r3
   10858:	e51b200c 	ldr	r2, [fp, #-12]
   1085c:	e5832000 	str	r2, [r3]
   10860:	e51b300c 	ldr	r3, [fp, #-12]
   10864:	e2833001 	add	r3, r3, #1
   10868:	e50b300c 	str	r3, [fp, #-12]
   1086c:	e51b300c 	ldr	r3, [fp, #-12]
   10870:	e3530801 	cmp	r3, #65536	; 0x10000
   10874:	baffffef 	blt	10838 <init_array+0x28>
   10878:	e51b3008 	ldr	r3, [fp, #-8]
   1087c:	e2833001 	add	r3, r3, #1
   10880:	e50b3008 	str	r3, [fp, #-8]
   10884:	e51b3008 	ldr	r3, [fp, #-8]
   10888:	e3530003 	cmp	r3, #3
   1088c:	daffffe6 	ble	1082c <init_array+0x1c>
   10890:	e1a00000 	nop			; (mov r0, r0)
   10894:	e28bd000 	add	sp, fp, #0
   10898:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
   1089c:	e12fff1e 	bx	lr

000108a0 <init_matrices>:
   108a0:	e92d4810 	push	{r4, fp, lr}
   108a4:	e28db008 	add	fp, sp, #8
   108a8:	e24dd01c 	sub	sp, sp, #28
   108ac:	e50b0018 	str	r0, [fp, #-24]	; 0xffffffe8
   108b0:	e50b101c 	str	r1, [fp, #-28]	; 0xffffffe4
   108b4:	e50b2020 	str	r2, [fp, #-32]	; 0xffffffe0
   108b8:	e59f00ec 	ldr	r0, [pc, #236]	; 109ac <init_matrices+0x10c>
   108bc:	ebffff0a 	bl	104ec <srand@plt>
   108c0:	e3a03000 	mov	r3, #0
   108c4:	e50b3010 	str	r3, [fp, #-16]
   108c8:	ea000031 	b	10994 <init_matrices+0xf4>
   108cc:	e3a03000 	mov	r3, #0
   108d0:	e50b3014 	str	r3, [fp, #-20]	; 0xffffffec
   108d4:	ea000028 	b	1097c <init_matrices+0xdc>
   108d8:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
   108dc:	e3530000 	cmp	r3, #0
   108e0:	0a000018 	beq	10948 <init_matrices+0xa8>
   108e4:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
   108e8:	e3530000 	cmp	r3, #0
   108ec:	0a000015 	beq	10948 <init_matrices+0xa8>
   108f0:	e51b3010 	ldr	r3, [fp, #-16]
   108f4:	e1a03103 	lsl	r3, r3, #2
   108f8:	e51b2018 	ldr	r2, [fp, #-24]	; 0xffffffe8
   108fc:	e0823003 	add	r3, r2, r3
   10900:	e5932000 	ldr	r2, [r3]
   10904:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
   10908:	e1a03103 	lsl	r3, r3, #2
   1090c:	e0824003 	add	r4, r2, r3
   10910:	ebfffef8 	bl	104f8 <rand@plt>
   10914:	e1a03000 	mov	r3, r0
   10918:	e5843000 	str	r3, [r4]
   1091c:	e51b3010 	ldr	r3, [fp, #-16]
   10920:	e1a03103 	lsl	r3, r3, #2
   10924:	e51b201c 	ldr	r2, [fp, #-28]	; 0xffffffe4
   10928:	e0823003 	add	r3, r2, r3
   1092c:	e5932000 	ldr	r2, [r3]
   10930:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
   10934:	e1a03103 	lsl	r3, r3, #2
   10938:	e0824003 	add	r4, r2, r3
   1093c:	ebfffeed 	bl	104f8 <rand@plt>
   10940:	e1a03000 	mov	r3, r0
   10944:	e5843000 	str	r3, [r4]
   10948:	e51b3010 	ldr	r3, [fp, #-16]
   1094c:	e1a03103 	lsl	r3, r3, #2
   10950:	e51b2020 	ldr	r2, [fp, #-32]	; 0xffffffe0
   10954:	e0823003 	add	r3, r2, r3
   10958:	e5932000 	ldr	r2, [r3]
   1095c:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
   10960:	e1a03103 	lsl	r3, r3, #2
   10964:	e0823003 	add	r3, r2, r3
   10968:	e3a02000 	mov	r2, #0
   1096c:	e5832000 	str	r2, [r3]
   10970:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
   10974:	e2833001 	add	r3, r3, #1
   10978:	e50b3014 	str	r3, [fp, #-20]	; 0xffffffec
   1097c:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
   10980:	e3530ffa 	cmp	r3, #1000	; 0x3e8
   10984:	baffffd3 	blt	108d8 <init_matrices+0x38>
   10988:	e51b3010 	ldr	r3, [fp, #-16]
   1098c:	e2833001 	add	r3, r3, #1
   10990:	e50b3010 	str	r3, [fp, #-16]
   10994:	e51b3010 	ldr	r3, [fp, #-16]
   10998:	e3530ffa 	cmp	r3, #1000	; 0x3e8
   1099c:	baffffca 	blt	108cc <init_matrices+0x2c>
   109a0:	e1a00000 	nop			; (mov r0, r0)
   109a4:	e24bd008 	sub	sp, fp, #8
   109a8:	e8bd8810 	pop	{r4, fp, pc}
   109ac:	00001092 	.word	0x00001092

000109b0 <check_result>:
   109b0:	e92d4800 	push	{fp, lr}
   109b4:	e28db004 	add	fp, sp, #4
   109b8:	e24dd030 	sub	sp, sp, #48	; 0x30
   109bc:	e50b0020 	str	r0, [fp, #-32]	; 0xffffffe0
   109c0:	e50b1024 	str	r1, [fp, #-36]	; 0xffffffdc
   109c4:	e50b2028 	str	r2, [fp, #-40]	; 0xffffffd8
   109c8:	e3a03000 	mov	r3, #0
   109cc:	e50b3014 	str	r3, [fp, #-20]	; 0xffffffec
   109d0:	e3a03000 	mov	r3, #0
   109d4:	e50b3008 	str	r3, [fp, #-8]
   109d8:	ea00004e 	b	10b18 <check_result+0x168>
   109dc:	e3a03000 	mov	r3, #0
   109e0:	e50b300c 	str	r3, [fp, #-12]
   109e4:	ea000042 	b	10af4 <check_result+0x144>
   109e8:	e3a03000 	mov	r3, #0
   109ec:	e50b3018 	str	r3, [fp, #-24]	; 0xffffffe8
   109f0:	e3a03000 	mov	r3, #0
   109f4:	e50b3010 	str	r3, [fp, #-16]
   109f8:	ea000018 	b	10a60 <check_result+0xb0>
   109fc:	e51b3008 	ldr	r3, [fp, #-8]
   10a00:	e1a03103 	lsl	r3, r3, #2
   10a04:	e51b2020 	ldr	r2, [fp, #-32]	; 0xffffffe0
   10a08:	e0823003 	add	r3, r2, r3
   10a0c:	e5932000 	ldr	r2, [r3]
   10a10:	e51b3010 	ldr	r3, [fp, #-16]
   10a14:	e1a03103 	lsl	r3, r3, #2
   10a18:	e0823003 	add	r3, r2, r3
   10a1c:	e5933000 	ldr	r3, [r3]
   10a20:	e51b2010 	ldr	r2, [fp, #-16]
   10a24:	e1a02102 	lsl	r2, r2, #2
   10a28:	e51b1024 	ldr	r1, [fp, #-36]	; 0xffffffdc
   10a2c:	e0812002 	add	r2, r1, r2
   10a30:	e5921000 	ldr	r1, [r2]
   10a34:	e51b200c 	ldr	r2, [fp, #-12]
   10a38:	e1a02102 	lsl	r2, r2, #2
   10a3c:	e0812002 	add	r2, r1, r2
   10a40:	e5922000 	ldr	r2, [r2]
   10a44:	e0030392 	mul	r3, r2, r3
   10a48:	e51b2018 	ldr	r2, [fp, #-24]	; 0xffffffe8
   10a4c:	e0823003 	add	r3, r2, r3
   10a50:	e50b3018 	str	r3, [fp, #-24]	; 0xffffffe8
   10a54:	e51b3010 	ldr	r3, [fp, #-16]
   10a58:	e2833001 	add	r3, r3, #1
   10a5c:	e50b3010 	str	r3, [fp, #-16]
   10a60:	e51b3010 	ldr	r3, [fp, #-16]
   10a64:	e3530ffa 	cmp	r3, #1000	; 0x3e8
   10a68:	baffffe3 	blt	109fc <check_result+0x4c>
   10a6c:	e51b3008 	ldr	r3, [fp, #-8]
   10a70:	e1a03103 	lsl	r3, r3, #2
   10a74:	e51b2028 	ldr	r2, [fp, #-40]	; 0xffffffd8
   10a78:	e0823003 	add	r3, r2, r3
   10a7c:	e5932000 	ldr	r2, [r3]
   10a80:	e51b300c 	ldr	r3, [fp, #-12]
   10a84:	e1a03103 	lsl	r3, r3, #2
   10a88:	e0823003 	add	r3, r2, r3
   10a8c:	e5932000 	ldr	r2, [r3]
   10a90:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
   10a94:	e1520003 	cmp	r2, r3
   10a98:	0a000012 	beq	10ae8 <check_result+0x138>
   10a9c:	e51b3008 	ldr	r3, [fp, #-8]
   10aa0:	e1a03103 	lsl	r3, r3, #2
   10aa4:	e51b2028 	ldr	r2, [fp, #-40]	; 0xffffffd8
   10aa8:	e0823003 	add	r3, r2, r3
   10aac:	e5932000 	ldr	r2, [r3]
   10ab0:	e51b300c 	ldr	r3, [fp, #-12]
   10ab4:	e1a03103 	lsl	r3, r3, #2
   10ab8:	e0823003 	add	r3, r2, r3
   10abc:	e5932000 	ldr	r2, [r3]
   10ac0:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
   10ac4:	e58d3000 	str	r3, [sp]
   10ac8:	e1a03002 	mov	r3, r2
   10acc:	e51b200c 	ldr	r2, [fp, #-12]
   10ad0:	e51b1008 	ldr	r1, [fp, #-8]
   10ad4:	e59f0070 	ldr	r0, [pc, #112]	; 10b4c <check_result+0x19c>
   10ad8:	ebfffe6e 	bl	10498 <printf@plt>
   10adc:	e3a03001 	mov	r3, #1
   10ae0:	e50b3014 	str	r3, [fp, #-20]	; 0xffffffec
   10ae4:	ea000005 	b	10b00 <check_result+0x150>
   10ae8:	e51b300c 	ldr	r3, [fp, #-12]
   10aec:	e2833001 	add	r3, r3, #1
   10af0:	e50b300c 	str	r3, [fp, #-12]
   10af4:	e51b300c 	ldr	r3, [fp, #-12]
   10af8:	e3530ffa 	cmp	r3, #1000	; 0x3e8
   10afc:	baffffb9 	blt	109e8 <check_result+0x38>
   10b00:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
   10b04:	e3530001 	cmp	r3, #1
   10b08:	0a000006 	beq	10b28 <check_result+0x178>
   10b0c:	e51b3008 	ldr	r3, [fp, #-8]
   10b10:	e2833001 	add	r3, r3, #1
   10b14:	e50b3008 	str	r3, [fp, #-8]
   10b18:	e51b3008 	ldr	r3, [fp, #-8]
   10b1c:	e3530ffa 	cmp	r3, #1000	; 0x3e8
   10b20:	baffffad 	blt	109dc <check_result+0x2c>
   10b24:	ea000000 	b	10b2c <check_result+0x17c>
   10b28:	e1a00000 	nop			; (mov r0, r0)
   10b2c:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
   10b30:	e3530000 	cmp	r3, #0
   10b34:	1a000001 	bne	10b40 <check_result+0x190>
   10b38:	e59f0010 	ldr	r0, [pc, #16]	; 10b50 <check_result+0x1a0>
   10b3c:	ebfffe5b 	bl	104b0 <puts@plt>
   10b40:	e1a00000 	nop			; (mov r0, r0)
   10b44:	e24bd004 	sub	sp, fp, #4
   10b48:	e8bd8800 	pop	{fp, pc}
   10b4c:	00010c50 	.word	0x00010c50
   10b50:	00010c6c 	.word	0x00010c6c

00010b54 <mem_access_arm>:
   10b54:	e92d407e 	push	{r1, r2, r3, r4, r5, r6, lr}
   10b58:	e59f103c 	ldr	r1, [pc, #60]	; 10b9c <array_size_address>
   10b5c:	e5911000 	ldr	r1, [r1]
   10b60:	e59f5030 	ldr	r5, [pc, #48]	; 10b98 <tmp_addr>
   10b64:	e3a02004 	mov	r2, #4
   10b68:	e3a03000 	mov	r3, #0
   10b6c:	e3a04000 	mov	r4, #0

00010b70 <inner_loop>:
   10b70:	e7906004 	ldr	r6, [r0, r4]
   10b74:	e5856000 	str	r6, [r5]
   10b78:	e2844001 	add	r4, r4, #1
   10b7c:	e1540001 	cmp	r4, r1
   10b80:	bafffffa 	blt	10b70 <inner_loop>
   10b84:	e2833001 	add	r3, r3, #1
   10b88:	e1530002 	cmp	r3, r2
   10b8c:	bafffff7 	blt	10b70 <inner_loop>
   10b90:	e8bd407e 	pop	{r1, r2, r3, r4, r5, r6, lr}
   10b94:	e12fff1e 	bx	lr

00010b98 <tmp_addr>:
   10b98:	00021044 	.word	0x00021044

00010b9c <array_size_address>:
   10b9c:	00021040 	.word	0x00021040

00010ba0 <__libc_csu_init>:
   10ba0:	e92d47f0 	push	{r4, r5, r6, r7, r8, r9, sl, lr}
   10ba4:	e1a07000 	mov	r7, r0
   10ba8:	e59f6048 	ldr	r6, [pc, #72]	; 10bf8 <__libc_csu_init+0x58>
   10bac:	e59f5048 	ldr	r5, [pc, #72]	; 10bfc <__libc_csu_init+0x5c>
   10bb0:	e08f6006 	add	r6, pc, r6
   10bb4:	e08f5005 	add	r5, pc, r5
   10bb8:	e0466005 	sub	r6, r6, r5
   10bbc:	e1a08001 	mov	r8, r1
   10bc0:	e1a09002 	mov	r9, r2
   10bc4:	ebfffe2b 	bl	10478 <_init>
   10bc8:	e1b06146 	asrs	r6, r6, #2
   10bcc:	08bd87f0 	popeq	{r4, r5, r6, r7, r8, r9, sl, pc}
   10bd0:	e3a04000 	mov	r4, #0
   10bd4:	e2844001 	add	r4, r4, #1
   10bd8:	e4953004 	ldr	r3, [r5], #4
   10bdc:	e1a02009 	mov	r2, r9
   10be0:	e1a01008 	mov	r1, r8
   10be4:	e1a00007 	mov	r0, r7
   10be8:	e12fff33 	blx	r3
   10bec:	e1560004 	cmp	r6, r4
   10bf0:	1afffff7 	bne	10bd4 <__libc_csu_init+0x34>
   10bf4:	e8bd87f0 	pop	{r4, r5, r6, r7, r8, r9, sl, pc}
   10bf8:	00010350 	.word	0x00010350
   10bfc:	00010348 	.word	0x00010348

00010c00 <__libc_csu_fini>:
   10c00:	e12fff1e 	bx	lr

Disassembly of section .fini:

00010c04 <_fini>:
   10c04:	e92d4008 	push	{r3, lr}
   10c08:	e8bd8008 	pop	{r3, pc}
