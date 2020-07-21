
execs/mat_mult/mat_mult_thumb_O0:     file format elf32-littlearm


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
   10540:	00010c30 	.word	0x00010c30
   10544:	00010638 	.word	0x00010638
   10548:	00010bd0 	.word	0x00010bd0

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
   10594:	00021047 	.word	0x00021047
   10598:	00021044 	.word	0x00021044
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
   105cc:	00021044 	.word	0x00021044
   105d0:	00021044 	.word	0x00021044
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
   105fc:	00021044 	.word	0x00021044

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
   10640:	e24dd010 	sub	sp, sp, #16
   10644:	eb000012 	bl	10694 <allocate_matrix>
   10648:	e50b0008 	str	r0, [fp, #-8]
   1064c:	eb000010 	bl	10694 <allocate_matrix>
   10650:	e50b000c 	str	r0, [fp, #-12]
   10654:	eb00000e 	bl	10694 <allocate_matrix>
   10658:	e50b0010 	str	r0, [fp, #-16]
   1065c:	e51b2010 	ldr	r2, [fp, #-16]
   10660:	e51b100c 	ldr	r1, [fp, #-12]
   10664:	e51b0008 	ldr	r0, [fp, #-8]
   10668:	eb000140 	bl	10b70 <mat_mult_thumb>
   1066c:	e51b0008 	ldr	r0, [fp, #-8]
   10670:	eb000023 	bl	10704 <free_matrix>
   10674:	e51b000c 	ldr	r0, [fp, #-12]
   10678:	eb000021 	bl	10704 <free_matrix>
   1067c:	e51b0010 	ldr	r0, [fp, #-16]
   10680:	eb00001f 	bl	10704 <free_matrix>
   10684:	e3a03000 	mov	r3, #0
   10688:	e1a00003 	mov	r0, r3
   1068c:	e24bd004 	sub	sp, fp, #4
   10690:	e8bd8800 	pop	{fp, pc}

00010694 <allocate_matrix>:
   10694:	e92d4810 	push	{r4, fp, lr}
   10698:	e28db008 	add	fp, sp, #8
   1069c:	e24dd00c 	sub	sp, sp, #12
   106a0:	e3a00efa 	mov	r0, #4000	; 0xfa0
   106a4:	ebffff84 	bl	104bc <malloc@plt>
   106a8:	e1a03000 	mov	r3, r0
   106ac:	e50b3014 	str	r3, [fp, #-20]	; 0xffffffec
   106b0:	e3a03000 	mov	r3, #0
   106b4:	e50b3010 	str	r3, [fp, #-16]
   106b8:	ea00000a 	b	106e8 <allocate_matrix+0x54>
   106bc:	e51b3010 	ldr	r3, [fp, #-16]
   106c0:	e1a03103 	lsl	r3, r3, #2
   106c4:	e51b2014 	ldr	r2, [fp, #-20]	; 0xffffffec
   106c8:	e0824003 	add	r4, r2, r3
   106cc:	e3a00efa 	mov	r0, #4000	; 0xfa0
   106d0:	ebffff79 	bl	104bc <malloc@plt>
   106d4:	e1a03000 	mov	r3, r0
   106d8:	e5843000 	str	r3, [r4]
   106dc:	e51b3010 	ldr	r3, [fp, #-16]
   106e0:	e2833001 	add	r3, r3, #1
   106e4:	e50b3010 	str	r3, [fp, #-16]
   106e8:	e51b3010 	ldr	r3, [fp, #-16]
   106ec:	e3530ffa 	cmp	r3, #1000	; 0x3e8
   106f0:	bafffff1 	blt	106bc <allocate_matrix+0x28>
   106f4:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
   106f8:	e1a00003 	mov	r0, r3
   106fc:	e24bd008 	sub	sp, fp, #8
   10700:	e8bd8810 	pop	{r4, fp, pc}

00010704 <free_matrix>:
   10704:	e92d4800 	push	{fp, lr}
   10708:	e28db004 	add	fp, sp, #4
   1070c:	e24dd010 	sub	sp, sp, #16
   10710:	e50b0010 	str	r0, [fp, #-16]
   10714:	e3a03000 	mov	r3, #0
   10718:	e50b3008 	str	r3, [fp, #-8]
   1071c:	ea000009 	b	10748 <free_matrix+0x44>
   10720:	e51b3008 	ldr	r3, [fp, #-8]
   10724:	e1a03103 	lsl	r3, r3, #2
   10728:	e51b2010 	ldr	r2, [fp, #-16]
   1072c:	e0823003 	add	r3, r2, r3
   10730:	e5933000 	ldr	r3, [r3]
   10734:	e1a00003 	mov	r0, r3
   10738:	ebffff59 	bl	104a4 <free@plt>
   1073c:	e51b3008 	ldr	r3, [fp, #-8]
   10740:	e2833001 	add	r3, r3, #1
   10744:	e50b3008 	str	r3, [fp, #-8]
   10748:	e51b3008 	ldr	r3, [fp, #-8]
   1074c:	e3530ffa 	cmp	r3, #1000	; 0x3e8
   10750:	bafffff2 	blt	10720 <free_matrix+0x1c>
   10754:	e51b0010 	ldr	r0, [fp, #-16]
   10758:	ebffff51 	bl	104a4 <free@plt>
   1075c:	e1a00000 	nop			; (mov r0, r0)
   10760:	e24bd004 	sub	sp, fp, #4
   10764:	e8bd8800 	pop	{fp, pc}

00010768 <alloc_array>:
   10768:	e92d4810 	push	{r4, fp, lr}
   1076c:	e28db008 	add	fp, sp, #8
   10770:	e24dd00c 	sub	sp, sp, #12
   10774:	e3a00010 	mov	r0, #16
   10778:	ebffff4f 	bl	104bc <malloc@plt>
   1077c:	e1a03000 	mov	r3, r0
   10780:	e50b3014 	str	r3, [fp, #-20]	; 0xffffffec
   10784:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
   10788:	e3530000 	cmp	r3, #0
   1078c:	1a000003 	bne	107a0 <alloc_array+0x38>
   10790:	e59f0088 	ldr	r0, [pc, #136]	; 10820 <alloc_array+0xb8>
   10794:	ebffff45 	bl	104b0 <puts@plt>
   10798:	e3a00001 	mov	r0, #1
   1079c:	ebffff4f 	bl	104e0 <exit@plt>
   107a0:	e3a03000 	mov	r3, #0
   107a4:	e50b3010 	str	r3, [fp, #-16]
   107a8:	ea000015 	b	10804 <alloc_array+0x9c>
   107ac:	e51b3010 	ldr	r3, [fp, #-16]
   107b0:	e1a03103 	lsl	r3, r3, #2
   107b4:	e51b2014 	ldr	r2, [fp, #-20]	; 0xffffffec
   107b8:	e0824003 	add	r4, r2, r3
   107bc:	e3a00701 	mov	r0, #262144	; 0x40000
   107c0:	ebffff3d 	bl	104bc <malloc@plt>
   107c4:	e1a03000 	mov	r3, r0
   107c8:	e5843000 	str	r3, [r4]
   107cc:	e51b3010 	ldr	r3, [fp, #-16]
   107d0:	e1a03103 	lsl	r3, r3, #2
   107d4:	e51b2014 	ldr	r2, [fp, #-20]	; 0xffffffec
   107d8:	e0823003 	add	r3, r2, r3
   107dc:	e5933000 	ldr	r3, [r3]
   107e0:	e3530000 	cmp	r3, #0
   107e4:	1a000003 	bne	107f8 <alloc_array+0x90>
   107e8:	e59f0034 	ldr	r0, [pc, #52]	; 10824 <alloc_array+0xbc>
   107ec:	ebffff2f 	bl	104b0 <puts@plt>
   107f0:	e3a00001 	mov	r0, #1
   107f4:	ebffff39 	bl	104e0 <exit@plt>
   107f8:	e51b3010 	ldr	r3, [fp, #-16]
   107fc:	e2833001 	add	r3, r3, #1
   10800:	e50b3010 	str	r3, [fp, #-16]
   10804:	e51b3010 	ldr	r3, [fp, #-16]
   10808:	e3530003 	cmp	r3, #3
   1080c:	daffffe6 	ble	107ac <alloc_array+0x44>
   10810:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
   10814:	e1a00003 	mov	r0, r3
   10818:	e24bd008 	sub	sp, fp, #8
   1081c:	e8bd8810 	pop	{r4, fp, pc}
   10820:	00010c40 	.word	0x00010c40
   10824:	00010c60 	.word	0x00010c60

00010828 <init_array>:
   10828:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
   1082c:	e28db000 	add	fp, sp, #0
   10830:	e24dd014 	sub	sp, sp, #20
   10834:	e50b0010 	str	r0, [fp, #-16]
   10838:	e3a03000 	mov	r3, #0
   1083c:	e50b3008 	str	r3, [fp, #-8]
   10840:	ea000015 	b	1089c <init_array+0x74>
   10844:	e3a03000 	mov	r3, #0
   10848:	e50b300c 	str	r3, [fp, #-12]
   1084c:	ea00000c 	b	10884 <init_array+0x5c>
   10850:	e51b3008 	ldr	r3, [fp, #-8]
   10854:	e1a03103 	lsl	r3, r3, #2
   10858:	e51b2010 	ldr	r2, [fp, #-16]
   1085c:	e0823003 	add	r3, r2, r3
   10860:	e5932000 	ldr	r2, [r3]
   10864:	e51b300c 	ldr	r3, [fp, #-12]
   10868:	e1a03103 	lsl	r3, r3, #2
   1086c:	e0823003 	add	r3, r2, r3
   10870:	e51b200c 	ldr	r2, [fp, #-12]
   10874:	e5832000 	str	r2, [r3]
   10878:	e51b300c 	ldr	r3, [fp, #-12]
   1087c:	e2833001 	add	r3, r3, #1
   10880:	e50b300c 	str	r3, [fp, #-12]
   10884:	e51b300c 	ldr	r3, [fp, #-12]
   10888:	e3530801 	cmp	r3, #65536	; 0x10000
   1088c:	baffffef 	blt	10850 <init_array+0x28>
   10890:	e51b3008 	ldr	r3, [fp, #-8]
   10894:	e2833001 	add	r3, r3, #1
   10898:	e50b3008 	str	r3, [fp, #-8]
   1089c:	e51b3008 	ldr	r3, [fp, #-8]
   108a0:	e3530003 	cmp	r3, #3
   108a4:	daffffe6 	ble	10844 <init_array+0x1c>
   108a8:	e1a00000 	nop			; (mov r0, r0)
   108ac:	e28bd000 	add	sp, fp, #0
   108b0:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
   108b4:	e12fff1e 	bx	lr

000108b8 <init_matrices>:
   108b8:	e92d4810 	push	{r4, fp, lr}
   108bc:	e28db008 	add	fp, sp, #8
   108c0:	e24dd01c 	sub	sp, sp, #28
   108c4:	e50b0018 	str	r0, [fp, #-24]	; 0xffffffe8
   108c8:	e50b101c 	str	r1, [fp, #-28]	; 0xffffffe4
   108cc:	e50b2020 	str	r2, [fp, #-32]	; 0xffffffe0
   108d0:	e59f00ec 	ldr	r0, [pc, #236]	; 109c4 <init_matrices+0x10c>
   108d4:	ebffff04 	bl	104ec <srand@plt>
   108d8:	e3a03000 	mov	r3, #0
   108dc:	e50b3010 	str	r3, [fp, #-16]
   108e0:	ea000031 	b	109ac <init_matrices+0xf4>
   108e4:	e3a03000 	mov	r3, #0
   108e8:	e50b3014 	str	r3, [fp, #-20]	; 0xffffffec
   108ec:	ea000028 	b	10994 <init_matrices+0xdc>
   108f0:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
   108f4:	e3530000 	cmp	r3, #0
   108f8:	0a000018 	beq	10960 <init_matrices+0xa8>
   108fc:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
   10900:	e3530000 	cmp	r3, #0
   10904:	0a000015 	beq	10960 <init_matrices+0xa8>
   10908:	e51b3010 	ldr	r3, [fp, #-16]
   1090c:	e1a03103 	lsl	r3, r3, #2
   10910:	e51b2018 	ldr	r2, [fp, #-24]	; 0xffffffe8
   10914:	e0823003 	add	r3, r2, r3
   10918:	e5932000 	ldr	r2, [r3]
   1091c:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
   10920:	e1a03103 	lsl	r3, r3, #2
   10924:	e0824003 	add	r4, r2, r3
   10928:	ebfffef2 	bl	104f8 <rand@plt>
   1092c:	e1a03000 	mov	r3, r0
   10930:	e5843000 	str	r3, [r4]
   10934:	e51b3010 	ldr	r3, [fp, #-16]
   10938:	e1a03103 	lsl	r3, r3, #2
   1093c:	e51b201c 	ldr	r2, [fp, #-28]	; 0xffffffe4
   10940:	e0823003 	add	r3, r2, r3
   10944:	e5932000 	ldr	r2, [r3]
   10948:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
   1094c:	e1a03103 	lsl	r3, r3, #2
   10950:	e0824003 	add	r4, r2, r3
   10954:	ebfffee7 	bl	104f8 <rand@plt>
   10958:	e1a03000 	mov	r3, r0
   1095c:	e5843000 	str	r3, [r4]
   10960:	e51b3010 	ldr	r3, [fp, #-16]
   10964:	e1a03103 	lsl	r3, r3, #2
   10968:	e51b2020 	ldr	r2, [fp, #-32]	; 0xffffffe0
   1096c:	e0823003 	add	r3, r2, r3
   10970:	e5932000 	ldr	r2, [r3]
   10974:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
   10978:	e1a03103 	lsl	r3, r3, #2
   1097c:	e0823003 	add	r3, r2, r3
   10980:	e3a02000 	mov	r2, #0
   10984:	e5832000 	str	r2, [r3]
   10988:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
   1098c:	e2833001 	add	r3, r3, #1
   10990:	e50b3014 	str	r3, [fp, #-20]	; 0xffffffec
   10994:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
   10998:	e3530ffa 	cmp	r3, #1000	; 0x3e8
   1099c:	baffffd3 	blt	108f0 <init_matrices+0x38>
   109a0:	e51b3010 	ldr	r3, [fp, #-16]
   109a4:	e2833001 	add	r3, r3, #1
   109a8:	e50b3010 	str	r3, [fp, #-16]
   109ac:	e51b3010 	ldr	r3, [fp, #-16]
   109b0:	e3530ffa 	cmp	r3, #1000	; 0x3e8
   109b4:	baffffca 	blt	108e4 <init_matrices+0x2c>
   109b8:	e1a00000 	nop			; (mov r0, r0)
   109bc:	e24bd008 	sub	sp, fp, #8
   109c0:	e8bd8810 	pop	{r4, fp, pc}
   109c4:	00001092 	.word	0x00001092

000109c8 <check_result>:
   109c8:	e92d4800 	push	{fp, lr}
   109cc:	e28db004 	add	fp, sp, #4
   109d0:	e24dd030 	sub	sp, sp, #48	; 0x30
   109d4:	e50b0020 	str	r0, [fp, #-32]	; 0xffffffe0
   109d8:	e50b1024 	str	r1, [fp, #-36]	; 0xffffffdc
   109dc:	e50b2028 	str	r2, [fp, #-40]	; 0xffffffd8
   109e0:	e3a03000 	mov	r3, #0
   109e4:	e50b3014 	str	r3, [fp, #-20]	; 0xffffffec
   109e8:	e3a03000 	mov	r3, #0
   109ec:	e50b3008 	str	r3, [fp, #-8]
   109f0:	ea00004e 	b	10b30 <check_result+0x168>
   109f4:	e3a03000 	mov	r3, #0
   109f8:	e50b300c 	str	r3, [fp, #-12]
   109fc:	ea000042 	b	10b0c <check_result+0x144>
   10a00:	e3a03000 	mov	r3, #0
   10a04:	e50b3018 	str	r3, [fp, #-24]	; 0xffffffe8
   10a08:	e3a03000 	mov	r3, #0
   10a0c:	e50b3010 	str	r3, [fp, #-16]
   10a10:	ea000018 	b	10a78 <check_result+0xb0>
   10a14:	e51b3008 	ldr	r3, [fp, #-8]
   10a18:	e1a03103 	lsl	r3, r3, #2
   10a1c:	e51b2020 	ldr	r2, [fp, #-32]	; 0xffffffe0
   10a20:	e0823003 	add	r3, r2, r3
   10a24:	e5932000 	ldr	r2, [r3]
   10a28:	e51b3010 	ldr	r3, [fp, #-16]
   10a2c:	e1a03103 	lsl	r3, r3, #2
   10a30:	e0823003 	add	r3, r2, r3
   10a34:	e5933000 	ldr	r3, [r3]
   10a38:	e51b2010 	ldr	r2, [fp, #-16]
   10a3c:	e1a02102 	lsl	r2, r2, #2
   10a40:	e51b1024 	ldr	r1, [fp, #-36]	; 0xffffffdc
   10a44:	e0812002 	add	r2, r1, r2
   10a48:	e5921000 	ldr	r1, [r2]
   10a4c:	e51b200c 	ldr	r2, [fp, #-12]
   10a50:	e1a02102 	lsl	r2, r2, #2
   10a54:	e0812002 	add	r2, r1, r2
   10a58:	e5922000 	ldr	r2, [r2]
   10a5c:	e0030392 	mul	r3, r2, r3
   10a60:	e51b2018 	ldr	r2, [fp, #-24]	; 0xffffffe8
   10a64:	e0823003 	add	r3, r2, r3
   10a68:	e50b3018 	str	r3, [fp, #-24]	; 0xffffffe8
   10a6c:	e51b3010 	ldr	r3, [fp, #-16]
   10a70:	e2833001 	add	r3, r3, #1
   10a74:	e50b3010 	str	r3, [fp, #-16]
   10a78:	e51b3010 	ldr	r3, [fp, #-16]
   10a7c:	e3530ffa 	cmp	r3, #1000	; 0x3e8
   10a80:	baffffe3 	blt	10a14 <check_result+0x4c>
   10a84:	e51b3008 	ldr	r3, [fp, #-8]
   10a88:	e1a03103 	lsl	r3, r3, #2
   10a8c:	e51b2028 	ldr	r2, [fp, #-40]	; 0xffffffd8
   10a90:	e0823003 	add	r3, r2, r3
   10a94:	e5932000 	ldr	r2, [r3]
   10a98:	e51b300c 	ldr	r3, [fp, #-12]
   10a9c:	e1a03103 	lsl	r3, r3, #2
   10aa0:	e0823003 	add	r3, r2, r3
   10aa4:	e5932000 	ldr	r2, [r3]
   10aa8:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
   10aac:	e1520003 	cmp	r2, r3
   10ab0:	0a000012 	beq	10b00 <check_result+0x138>
   10ab4:	e51b3008 	ldr	r3, [fp, #-8]
   10ab8:	e1a03103 	lsl	r3, r3, #2
   10abc:	e51b2028 	ldr	r2, [fp, #-40]	; 0xffffffd8
   10ac0:	e0823003 	add	r3, r2, r3
   10ac4:	e5932000 	ldr	r2, [r3]
   10ac8:	e51b300c 	ldr	r3, [fp, #-12]
   10acc:	e1a03103 	lsl	r3, r3, #2
   10ad0:	e0823003 	add	r3, r2, r3
   10ad4:	e5932000 	ldr	r2, [r3]
   10ad8:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
   10adc:	e58d3000 	str	r3, [sp]
   10ae0:	e1a03002 	mov	r3, r2
   10ae4:	e51b200c 	ldr	r2, [fp, #-12]
   10ae8:	e51b1008 	ldr	r1, [fp, #-8]
   10aec:	e59f0070 	ldr	r0, [pc, #112]	; 10b64 <check_result+0x19c>
   10af0:	ebfffe68 	bl	10498 <printf@plt>
   10af4:	e3a03001 	mov	r3, #1
   10af8:	e50b3014 	str	r3, [fp, #-20]	; 0xffffffec
   10afc:	ea000005 	b	10b18 <check_result+0x150>
   10b00:	e51b300c 	ldr	r3, [fp, #-12]
   10b04:	e2833001 	add	r3, r3, #1
   10b08:	e50b300c 	str	r3, [fp, #-12]
   10b0c:	e51b300c 	ldr	r3, [fp, #-12]
   10b10:	e3530ffa 	cmp	r3, #1000	; 0x3e8
   10b14:	baffffb9 	blt	10a00 <check_result+0x38>
   10b18:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
   10b1c:	e3530001 	cmp	r3, #1
   10b20:	0a000006 	beq	10b40 <check_result+0x178>
   10b24:	e51b3008 	ldr	r3, [fp, #-8]
   10b28:	e2833001 	add	r3, r3, #1
   10b2c:	e50b3008 	str	r3, [fp, #-8]
   10b30:	e51b3008 	ldr	r3, [fp, #-8]
   10b34:	e3530ffa 	cmp	r3, #1000	; 0x3e8
   10b38:	baffffad 	blt	109f4 <check_result+0x2c>
   10b3c:	ea000000 	b	10b44 <check_result+0x17c>
   10b40:	e1a00000 	nop			; (mov r0, r0)
   10b44:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
   10b48:	e3530000 	cmp	r3, #0
   10b4c:	1a000001 	bne	10b58 <check_result+0x190>
   10b50:	e59f0010 	ldr	r0, [pc, #16]	; 10b68 <check_result+0x1a0>
   10b54:	ebfffe55 	bl	104b0 <puts@plt>
   10b58:	e1a00000 	nop			; (mov r0, r0)
   10b5c:	e24bd004 	sub	sp, fp, #4
   10b60:	e8bd8800 	pop	{fp, pc}
   10b64:	00010c80 	.word	0x00010c80
   10b68:	00010c9c 	.word	0x00010c9c
   10b6c:	00000000 	.word	0x00000000

00010b70 <mat_mult_thumb>:
   10b70:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
   10b74:	fa000001 	blx	10b80 <thumb_func>
   10b78:	e49de004 	pop	{lr}		; (ldr lr, [sp], #4)
   10b7c:	e12fff1e 	bx	lr

00010b80 <thumb_func>:
   10b80:	2300      	movs	r3, #0

00010b82 <i_loop>:
   10b82:	2400      	movs	r4, #0

00010b84 <j_loop>:
   10b84:	2500      	movs	r5, #0

00010b86 <k_loop>:
   10b86:	58c6      	ldr	r6, [r0, r3]
   10b88:	b401      	push	{r0}
   10b8a:	5977      	ldr	r7, [r6, r5]
   10b8c:	594e      	ldr	r6, [r1, r5]
   10b8e:	b402      	push	{r1}
   10b90:	5930      	ldr	r0, [r6, r4]
   10b92:	58d6      	ldr	r6, [r2, r3]
   10b94:	5931      	ldr	r1, [r6, r4]
   10b96:	4347      	muls	r7, r0
   10b98:	19c9      	adds	r1, r1, r7
   10b9a:	5131      	str	r1, [r6, r4]
   10b9c:	bc02      	pop	{r1}
   10b9e:	bc01      	pop	{r0}
   10ba0:	3504      	adds	r5, #4
   10ba2:	b408      	push	{r3}
   10ba4:	4b09      	ldr	r3, [pc, #36]	; (10bcc <addr_number>)
   10ba6:	681b      	ldr	r3, [r3, #0]
   10ba8:	429d      	cmp	r5, r3
   10baa:	bc08      	pop	{r3}
   10bac:	dbeb      	blt.n	10b86 <k_loop>
   10bae:	3404      	adds	r4, #4
   10bb0:	b408      	push	{r3}
   10bb2:	4b06      	ldr	r3, [pc, #24]	; (10bcc <addr_number>)
   10bb4:	681b      	ldr	r3, [r3, #0]
   10bb6:	429c      	cmp	r4, r3
   10bb8:	bc08      	pop	{r3}
   10bba:	dbe3      	blt.n	10b84 <j_loop>
   10bbc:	3304      	adds	r3, #4
   10bbe:	b410      	push	{r4}
   10bc0:	4c02      	ldr	r4, [pc, #8]	; (10bcc <addr_number>)
   10bc2:	6824      	ldr	r4, [r4, #0]
   10bc4:	42a3      	cmp	r3, r4
   10bc6:	bc10      	pop	{r4}
   10bc8:	dbdb      	blt.n	10b82 <i_loop>
   10bca:	4770      	bx	lr

00010bcc <addr_number>:
   10bcc:	00021040 	.word	0x00021040

00010bd0 <__libc_csu_init>:
   10bd0:	e92d47f0 	push	{r4, r5, r6, r7, r8, r9, sl, lr}
   10bd4:	e1a07000 	mov	r7, r0
   10bd8:	e59f6048 	ldr	r6, [pc, #72]	; 10c28 <__libc_csu_init+0x58>
   10bdc:	e59f5048 	ldr	r5, [pc, #72]	; 10c2c <__libc_csu_init+0x5c>
   10be0:	e08f6006 	add	r6, pc, r6
   10be4:	e08f5005 	add	r5, pc, r5
   10be8:	e0466005 	sub	r6, r6, r5
   10bec:	e1a08001 	mov	r8, r1
   10bf0:	e1a09002 	mov	r9, r2
   10bf4:	ebfffe1f 	bl	10478 <_init>
   10bf8:	e1b06146 	asrs	r6, r6, #2
   10bfc:	08bd87f0 	popeq	{r4, r5, r6, r7, r8, r9, sl, pc}
   10c00:	e3a04000 	mov	r4, #0
   10c04:	e2844001 	add	r4, r4, #1
   10c08:	e4953004 	ldr	r3, [r5], #4
   10c0c:	e1a02009 	mov	r2, r9
   10c10:	e1a01008 	mov	r1, r8
   10c14:	e1a00007 	mov	r0, r7
   10c18:	e12fff33 	blx	r3
   10c1c:	e1560004 	cmp	r6, r4
   10c20:	1afffff7 	bne	10c04 <__libc_csu_init+0x34>
   10c24:	e8bd87f0 	pop	{r4, r5, r6, r7, r8, r9, sl, pc}
   10c28:	00010320 	.word	0x00010320
   10c2c:	00010318 	.word	0x00010318

00010c30 <__libc_csu_fini>:
   10c30:	e12fff1e 	bx	lr

Disassembly of section .fini:

00010c34 <_fini>:
   10c34:	e92d4008 	push	{r3, lr}
   10c38:	e8bd8008 	pop	{r3, pc}
