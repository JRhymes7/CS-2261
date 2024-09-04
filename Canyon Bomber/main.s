	.cpu arm7tdmi
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 1
	.eabi_attribute 30, 2
	.eabi_attribute 34, 0
	.eabi_attribute 18, 4
	.file	"main.c"
	.text
	.align	2
	.global	initialize
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	initialize, %function
initialize:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r3, #67108864
	ldr	r1, .L4
	push	{r4, lr}
	ldr	r2, .L4+4
	strh	r1, [r3]	@ movhi
	ldr	r3, .L4+8
	ldrh	r0, [r2]
	mov	lr, pc
	bx	r3
	mov	ip, #5
	mov	r0, #20
	mov	r3, #1
	mov	r2, #2
	mov	r4, #0
	ldr	r1, .L4+12
	str	ip, [r1]
	ldr	r1, .L4+16
	ldr	ip, .L4+20
	str	r0, [r1]
	ldr	r0, .L4+24
	ldr	r1, .L4+28
	ldr	lr, .L4+32
	str	r3, [ip]
	str	r3, [r0]
	ldr	ip, .L4+36
	ldr	r0, .L4+40
	str	r3, [r1]
	ldr	r1, .L4+44
	ldr	r3, .L4+48
	str	r2, [lr]
	str	r2, [ip]
	str	r4, [r0]
	str	r4, [r1]
	mov	lr, pc
	bx	r3
	ldr	r3, .L4+52
	mov	lr, pc
	bx	r3
	ldr	r3, .L4+56
	mov	lr, pc
	bx	r3
	ldr	r3, .L4+60
	mov	lr, pc
	bx	r3
	ldr	r1, .L4+64
	ldr	r2, .L4+68
	ldr	r3, .L4+72
	strb	r4, [r1]
	str	r4, [r2]
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	bx	lr
.L5:
	.align	2
.L4:
	.word	1027
	.word	.LANCHOR0
	.word	fillScreen
	.word	playerX
	.word	playerY
	.word	pVx
	.word	oldpVx
	.word	bombVx
	.word	pVy
	.word	bombVy
	.word	frameCounter
	.word	bombCollision
	.word	initializeRect
	.word	drawRows
	.word	initializeFiller
	.word	drawFillerRects
	.word	state
	.word	active
	.word	mgba_open
	.size	initialize, .-initialize
	.align	2
	.global	drawGame
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawGame, %function
drawGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r2, .L30
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldrh	r2, [r2]
	ldr	r3, .L30+4
	ldr	r4, .L30+8
	tst	r2, #4
	ldr	r2, .L30+12
	ldr	r3, [r3]
	ldr	r0, [r4]
	ldr	r5, .L30+16
	ldrh	r2, [r2]
	sub	sp, sp, #20
	ldr	r1, [r5]
	sub	r0, r0, r3
	str	r2, [sp]
	bne	.L25
	cmp	r3, #0
	addlt	r0, r0, #2
	subge	r0, r0, #2
.L25:
	ldr	r6, .L30+20
	mov	r3, #8
	mov	r2, #4
	mov	lr, pc
	bx	r6
	mov	r3, #31
	ldr	r1, [r5]
	ldr	r0, [r4]
	mov	r2, #4
	str	r3, [sp]
	mov	r3, #8
	mov	lr, pc
	bx	r6
	ldr	r3, .L30+24
	ldr	r3, [r3]
	ldr	r6, .L30+28
	ldr	r7, .L30+32
	cmp	r3, #1
	ldr	r0, [r6]
	ldr	r1, [r7]
	beq	.L26
	ldr	r3, .L30+36
	ldr	r3, [r3]
	cmp	r3, #1
	beq	.L27
.L11:
	ldr	r4, .L30+40
	mov	r5, #20
	ldr	r8, .L30+44
	ldr	fp, .L30+48
	add	r10, r4, #1008
	b	.L13
.L12:
	add	r4, r4, #24
	cmp	r10, r4
	ldr	r0, [r6]
	ldr	r1, [r7]
	beq	.L28
.L13:
	mov	r3, #4
	ldr	r2, [r4, #4]
	ldr	ip, [r4]
	sub	r2, r2, #2
	stmib	sp, {r2, r5}
	str	r5, [sp, #12]
	mov	r2, r3
	str	ip, [sp]
	mov	lr, pc
	bx	r8
	cmp	r0, #0
	beq	.L12
	ldr	r9, [r4, #16]
	cmp	r9, #1
	bne	.L12
	mov	r3, #20
	ldr	r2, .L30+12
	ldrh	r1, [r2]
	str	r1, [sp]
	mov	r2, r3
	ldm	r4, {r0, r1}
	ldr	ip, .L30+52
	mov	lr, pc
	bx	ip
	mov	r2, #0
	ldr	r3, [fp]
	sub	r3, r3, #1
	ldr	r1, .L30+36
	str	r3, [fp]
	ldr	r3, .L30+24
	str	r9, [r1]
	str	r2, [r3]
	str	r2, [r4, #16]
	b	.L12
.L28:
	ldr	r4, .L30+56
	mov	r5, #20
	mov	r10, #1
	add	r9, r4, #96
	b	.L16
.L29:
	ldr	r0, [r6]
	ldr	r1, [r7]
.L16:
	mov	r3, #4
	ldr	r2, [r4, #4]
	ldr	ip, [r4]
	sub	r2, r2, #4
	stmib	sp, {r2, r5}
	str	r5, [sp, #12]
	mov	r2, r3
	str	ip, [sp]
	mov	lr, pc
	bx	r8
	cmp	r0, #0
	ldrne	r3, .L30+36
	add	r4, r4, #16
	strne	r10, [r3]
	cmp	r9, r4
	bne	.L29
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L26:
	ldr	r3, .L30+60
	ldr	r2, .L30+64
	ldr	r3, [r3]
	ldr	r2, [r2]
	sub	r0, r0, r3
	ldr	r3, .L30+12
	sub	r1, r1, r2
	ldrh	r3, [r3]
	mov	r2, #4
	ldr	r4, .L30+68
	mov	lr, pc
	bx	r4
	ldr	r3, .L30+72
	ldr	r1, [r7]
	ldr	r0, [r6]
	mov	r2, #4
	mov	lr, pc
	bx	r4
	ldr	r3, .L30+36
	ldr	r3, [r3]
	cmp	r3, #1
	ldr	r0, [r6]
	ldr	r1, [r7]
	bne	.L11
.L27:
	ldr	r3, .L30+12
	mov	r2, #4
	ldrh	r3, [r3]
	ldr	r4, .L30+68
	mov	lr, pc
	bx	r4
	mov	r3, #0
	ldr	r2, .L30+24
	str	r3, [r2]
	ldr	r2, .L30+36
	ldr	r0, [r6]
	str	r3, [r2]
	ldr	r1, [r7]
	b	.L11
.L31:
	.align	2
.L30:
	.word	buttons
	.word	pVx
	.word	playerX
	.word	.LANCHOR0
	.word	playerY
	.word	drawPlayer
	.word	active
	.word	bombX
	.word	bombY
	.word	bombCollision
	.word	arr
	.word	collision
	.word	.LANCHOR1
	.word	drawRectangle
	.word	fillerRectangles
	.word	bombVx
	.word	bombVy
	.word	drawBomb
	.word	31775
	.size	drawGame, .-drawGame
	.align	2
	.global	updatePlayer
	.syntax unified
	.arm
	.fpu softvfp
	.type	updatePlayer, %function
updatePlayer:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r0, .L38
	ldr	r1, .L38+4
	ldr	r3, [r0]
	ldr	r2, [r1]
	adds	r2, r3, r2
	bmi	.L37
	cmp	r2, #235
	movgt	r2, #235
	rsbgt	r3, r3, #0
	strgt	r3, [r0]
	str	r2, [r1]
	bx	lr
.L37:
	mov	r2, #0
	rsb	r3, r3, #0
	str	r3, [r0]
	str	r2, [r1]
	bx	lr
.L39:
	.align	2
.L38:
	.word	pVx
	.word	playerX
	.size	updatePlayer, .-updatePlayer
	.align	2
	.global	updateBomb
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateBomb, %function
updateBomb:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r1, .L53
	ldr	r3, [r1]
	cmp	r3, #0
	push	{r4, lr}
	beq	.L41
	ldr	r0, .L53+4
	ldr	r1, .L53+8
	ldr	r3, .L53+12
	ldr	r2, .L53+16
	ldr	lr, [r0]
	ldr	ip, [r1]
	ldr	r3, [r3]
	ldr	r2, [r2]
	add	r3, lr, r3
	add	r2, ip, r2
	str	r3, [r0]
	str	r2, [r1]
.L42:
	cmp	r3, #0
	beq	.L47
	cmp	r3, #235
	ble	.L46
.L47:
	mov	r1, #1
	ldr	r3, .L53+20
	str	r1, [r3]
.L46:
	cmp	r2, #155
	movhi	r2, #1
	ldrhi	r3, .L53+20
	pop	{r4, lr}
	strhi	r2, [r3]
	bx	lr
.L41:
	ldr	r3, .L53+24
	ldrh	r3, [r3]
	tst	r3, #2
	bne	.L44
	ldr	r3, .L53+28
	ldrh	r3, [r3]
	tst	r3, #2
	beq	.L44
	mov	ip, #1
	ldr	r3, .L53+32
	ldr	r4, .L53+4
	ldr	r2, .L53+36
	ldr	lr, .L53+40
	ldr	r0, .L53+44
	ldr	r3, [r3]
	str	ip, [r1]
	str	r3, [r4]
	ldr	r2, [r2]
	ldr	lr, [lr]
	ldr	r0, [r0]
	ldr	r4, .L53+8
	ldr	ip, .L53+12
	ldr	r1, .L53+16
	str	r2, [r4]
	str	lr, [ip]
	str	r0, [r1]
	b	.L42
.L44:
	ldr	r3, .L53+4
	ldr	r2, .L53+8
	ldr	r3, [r3]
	ldr	r2, [r2]
	b	.L42
.L54:
	.align	2
.L53:
	.word	active
	.word	bombX
	.word	bombY
	.word	bombVx
	.word	bombVy
	.word	bombCollision
	.word	buttons
	.word	oldButtons
	.word	playerX
	.word	playerY
	.word	pVx
	.word	pVy
	.size	updateBomb, .-updateBomb
	.align	2
	.global	updateGame
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateGame, %function
updateGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	bl	updateBomb
	bl	updatePlayer
	ldr	r2, .L64
	ldr	r3, [r2]
	cmp	r3, #59
	moveq	r3, #0
	addne	r3, r3, #1
	str	r3, [r2]
	ldr	r3, .L64+4
	ldrh	r2, [r3]
	ldr	r3, .L64+8
	tst	r2, #4
	ldr	r2, [r3]
	bne	.L58
	cmp	r2, #0
	mvnlt	r2, #2
	movge	r2, #3
	str	r2, [r3]
.L60:
	ldr	r3, .L64+12
	ldr	r3, [r3]
	cmp	r3, #0
	moveq	r2, #2
	ldreq	r3, .L64+16
	strbeq	r2, [r3]
	pop	{r4, lr}
	bx	lr
.L58:
	ldr	r1, .L64+20
	cmp	r2, #0
	str	r2, [r1]
	mvnlt	r2, #0
	movge	r2, #1
	str	r2, [r3]
	b	.L60
.L65:
	.align	2
.L64:
	.word	frameCounter
	.word	buttons
	.word	pVx
	.word	.LANCHOR1
	.word	state
	.word	oldpVx
	.size	updateGame, .-updateGame
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"Press Start to start game\000"
	.align	2
.LC1:
	.ascii	"You Won! Game Over\000"
	.section	.text.startup,"ax",%progbits
	.align	2
	.global	main
	.syntax unified
	.arm
	.fpu softvfp
	.type	main, %function
main:
	@ Function supports interworking.
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r7, fp, lr}
	ldr	r7, .L76
	ldr	r4, .L76+4
	ldr	r3, .L76+8
	mov	lr, pc
	bx	r3
	ldr	r5, .L76+12
	ldrb	r2, [r7]	@ zero_extendqisi2
	ldrh	r3, [r4]
	ldr	r10, .L76+16
	ldr	r9, .L76+20
	ldr	r8, .L76+24
	ldr	r6, .L76+28
	ldr	fp, .L76+32
.L70:
	strh	r3, [r5]	@ movhi
	ldrh	r3, [r6, #48]
	cmp	r2, #1
	strh	r3, [r4]	@ movhi
	beq	.L68
	cmp	r2, #2
	beq	.L69
	cmp	r2, #0
	bne	.L70
	mov	lr, pc
	bx	r10
	mov	lr, pc
	bx	r9
	mov	r3, #992
	mov	r2, fp
	mov	r1, #10
	mov	r0, #5
	mov	lr, pc
	bx	r8
	ldrh	r3, [r4]
	tst	r3, #8
	bne	.L71
	ldrh	r2, [r5]
	tst	r2, #8
	beq	.L71
	ldr	r3, .L76+36
	mov	r2, fp
	ldrh	r3, [r3]
	mov	r1, #10
	mov	r0, #5
	mov	lr, pc
	bx	r8
	mov	r2, #1
	ldrh	r3, [r4]
	strb	r2, [r7]
	b	.L70
.L69:
	mov	r3, #992
	ldr	r2, .L76+40
	mov	r1, #10
	mov	r0, #5
	mov	lr, pc
	bx	r8
	ldrb	r2, [r7]	@ zero_extendqisi2
	ldrh	r3, [r4]
	b	.L70
.L68:
	ldr	r3, .L76+44
	mov	lr, pc
	bx	r3
	mov	lr, pc
	bx	r10
	mov	lr, pc
	bx	r9
	ldrb	r2, [r7]	@ zero_extendqisi2
	ldrh	r3, [r4]
	b	.L70
.L71:
	ldrb	r2, [r7]	@ zero_extendqisi2
	b	.L70
.L77:
	.align	2
.L76:
	.word	state
	.word	buttons
	.word	initialize
	.word	oldButtons
	.word	waitForVBlank
	.word	drawGame
	.word	drawString
	.word	67109120
	.word	.LC0
	.word	.LANCHOR0
	.word	.LC1
	.word	updateGame
	.size	main, .-main
	.text
	.align	2
	.global	gameOver
	.syntax unified
	.arm
	.fpu softvfp
	.type	gameOver, %function
gameOver:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	mov	r3, #992
	ldr	r4, .L80
	mov	r1, #10
	mov	r0, #5
	ldr	r2, .L80+4
	mov	lr, pc
	bx	r4
	pop	{r4, lr}
	bx	lr
.L81:
	.align	2
.L80:
	.word	drawString
	.word	.LC1
	.size	gameOver, .-gameOver
	.comm	oldpVx,4,4
	.comm	bombCollision,4,4
	.global	rectangleCOUNT
	.comm	active,4,4
	.global	bgColor
	.comm	bombVy,4,4
	.comm	bombVx,4,4
	.comm	bombY,4,4
	.comm	bombX,4,4
	.comm	pVy,4,4
	.comm	pVx,4,4
	.comm	playerY,4,4
	.comm	playerX,4,4
	.comm	frameCounter,4,4
	.comm	oldButtons,2,2
	.comm	buttons,2,2
	.comm	state,1,1
	.comm	fillerRectangles,96,4
	.comm	arr,1008,4
	.data
	.align	2
	.set	.LANCHOR1,. + 0
	.type	rectangleCOUNT, %object
	.size	rectangleCOUNT, 4
rectangleCOUNT:
	.word	42
	.bss
	.align	1
	.set	.LANCHOR0,. + 0
	.type	bgColor, %object
	.size	bgColor, 2
bgColor:
	.space	2
	.ident	"GCC: (devkitARM release 53) 9.1.0"
