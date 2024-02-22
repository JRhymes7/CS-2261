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
	.file	"game.c"
	.text
	.align	2
	.global	drawVerticalLine
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawVerticalLine, %function
drawVerticalLine:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	subs	ip, r2, #0
	bxle	lr
	ldr	r2, .L10
	add	ip, r1, ip
	ldr	r2, [r2]
	str	lr, [sp, #-4]!
	rsb	ip, ip, ip, lsl #4
	rsb	lr, r1, r1, lsl #4
	add	r1, r0, ip, lsl #4
	add	r0, r0, lr, lsl #4
	add	r1, r2, r1, lsl #1
	add	r2, r2, r0, lsl #1
.L3:
	strh	r3, [r2]	@ movhi
	add	r2, r2, #480
	cmp	r2, r1
	bne	.L3
	ldr	lr, [sp], #4
	bx	lr
.L11:
	.align	2
.L10:
	.word	videoBuffer
	.size	drawVerticalLine, .-drawVerticalLine
	.align	2
	.global	drawHorizontalLine
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawHorizontalLine, %function
drawHorizontalLine:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r2, #0
	bxle	lr
	str	lr, [sp, #-4]!
	ldr	lr, .L20
	rsb	ip, r1, r1, lsl #4
	add	r1, r2, ip, lsl #4
	ldr	r2, [lr]
	add	r1, r1, r0
	add	r0, r0, ip, lsl #4
	add	r1, r2, r1, lsl #1
	add	r2, r2, r0, lsl #1
.L14:
	strh	r3, [r2], #2	@ movhi
	cmp	r2, r1
	bne	.L14
	ldr	lr, [sp], #4
	bx	lr
.L21:
	.align	2
.L20:
	.word	videoBuffer
	.size	drawHorizontalLine, .-drawHorizontalLine
	.align	2
	.global	drawPlayer
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawPlayer, %function
drawPlayer:
	@ Function supports interworking.
	@ args = 4, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	sub	sp, sp, #8
	ldrh	ip, [sp, #16]
	ldr	r4, .L24
	str	ip, [sp]
	mov	lr, pc
	bx	r4
	add	sp, sp, #8
	@ sp needed
	pop	{r4, lr}
	bx	lr
.L25:
	.align	2
.L24:
	.word	drawRectangle
	.size	drawPlayer, .-drawPlayer
	.align	2
	.global	initializeRect
	.syntax unified
	.arm
	.fpu softvfp
	.type	initializeRect, %function
initializeRect:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L36
	push	{r4, lr}
	mov	r1, #40
	mov	r2, r3
	mov	r4, #140
	mov	r0, #20
	mov	lr, #1
	mov	ip, #31
.L27:
	str	r1, [r2]
	add	r1, r1, #20
	cmp	r1, #200
	str	r4, [r2, #4]
	str	r0, [r2, #8]
	str	r0, [r2, #12]
	str	lr, [r2, #16]
	strh	ip, [r2, #20]	@ movhi
	add	r2, r2, #24
	bne	.L27
	mov	r2, #20
	mov	lr, #120
	mov	r1, r2
	mov	ip, #1
	mov	r0, #31744
.L28:
	str	r2, [r3, #192]
	add	r2, r2, #20
	cmp	r2, #220
	str	lr, [r3, #196]
	str	r1, [r3, #200]
	str	r1, [r3, #204]
	str	ip, [r3, #208]
	strh	r0, [r3, #212]	@ movhi
	add	r3, r3, #24
	bne	.L28
	mov	r2, #0
	mov	lr, #100
	mov	r1, #20
	mov	ip, #1
	mvn	r0, #64512
	ldr	r3, .L36+4
.L29:
	str	r2, [r3]
	add	r2, r2, #20
	cmp	r2, #240
	str	lr, [r3, #4]
	str	r1, [r3, #8]
	str	r1, [r3, #12]
	str	ip, [r3, #16]
	strh	r0, [r3, #20]	@ movhi
	add	r3, r3, #24
	bne	.L29
	mov	r2, #0
	mov	lr, #80
	mov	r1, #20
	mov	ip, #1
	mov	r0, #992
	ldr	r3, .L36+8
.L30:
	str	r2, [r3]
	add	r2, r2, #20
	cmp	r2, #240
	str	lr, [r3, #4]
	str	r1, [r3, #8]
	str	r1, [r3, #12]
	str	ip, [r3, #16]
	strh	r0, [r3, #20]	@ movhi
	add	r3, r3, #24
	bne	.L30
	pop	{r4, lr}
	bx	lr
.L37:
	.align	2
.L36:
	.word	arr
	.word	arr+432
	.word	arr+720
	.size	initializeRect, .-initializeRect
	.align	2
	.global	drawRows
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawRows, %function
drawRows:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldr	r4, .L42
	ldr	r6, .L42+4
	sub	sp, sp, #8
	add	r5, r4, #1008
.L39:
	ldrh	r2, [r4, #20]
	ldr	r3, [r4, #12]
	str	r2, [sp]
	ldm	r4, {r0, r1, r2}
	add	r4, r4, #24
	mov	lr, pc
	bx	r6
	cmp	r4, r5
	bne	.L39
	add	sp, sp, #8
	@ sp needed
	pop	{r4, r5, r6, lr}
	bx	lr
.L43:
	.align	2
.L42:
	.word	arr
	.word	drawRectangle
	.size	drawRows, .-drawRows
	.align	2
	.global	drawBomb
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawBomb, %function
drawBomb:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	subs	r5, r2, #0
	ble	.L44
	ldr	ip, .L66
	add	r2, r5, r1
	ldr	ip, [ip]
	rsb	r2, r2, r2, lsl #4
	add	lr, r0, r2, lsl #4
	add	lr, ip, lr, lsl #1
	mov	r4, lr
	mov	r7, r5
	mov	r8, r0
	rsb	r6, r1, r1, lsl #4
	add	r6, r0, r6, lsl #4
	add	r6, ip, r6, lsl #1
	lsl	r9, r1, #4
	add	r10, r0, r5
.L48:
	mov	r2, r6
.L47:
	strh	r3, [r2]	@ movhi
	add	r2, r2, #480
	cmp	r2, r4
	bne	.L47
	add	r8, r8, #1
	sub	r4, r2, #476
	cmp	r8, r10
	sub	r4, r4, #2
	add	r6, r6, #2
	bne	.L48
	sub	r2, r9, r1
	add	r2, r0, r2, lsl #4
	add	r4, ip, r2, lsl #1
	mov	r0, r4
	mov	r1, r5
	lsl	r6, r2, #1
.L49:
	mov	r2, r0
.L50:
	strh	r3, [r2]	@ movhi
	add	r2, r2, #480
	cmp	r2, lr
	bne	.L50
	sub	lr, r2, #480
	subs	r1, r1, #1
	sub	lr, lr, #2
	sub	r0, r0, #2
	bne	.L49
	rsb	r1, r5, r5, lsl #4
	sub	r1, r6, r1, lsl #5
	add	r1, ip, r1
	mov	r0, r1
	mov	ip, r5
	mov	lr, r4
.L53:
	mov	r2, lr
.L52:
	strh	r3, [r2]	@ movhi
	sub	r2, r2, #480
	cmp	r2, r0
	bne	.L52
	add	r0, r0, #480
	subs	ip, ip, #1
	add	r0, r0, #2
	add	lr, lr, #2
	bne	.L53
.L54:
	mov	r2, r4
.L55:
	strh	r3, [r2]	@ movhi
	sub	r2, r2, #480
	cmp	r1, r2
	bne	.L55
	add	r1, r1, #476
	subs	r7, r7, #1
	add	r1, r1, #2
	sub	r4, r4, #2
	bne	.L54
.L44:
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L67:
	.align	2
.L66:
	.word	videoBuffer
	.size	drawBomb, .-drawBomb
	.align	2
	.global	initializeFiller
	.syntax unified
	.arm
	.fpu softvfp
	.type	initializeFiller, %function
initializeFiller:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r1, #0
	push	{r4, lr}
	mov	r2, #20
	mov	r0, #140
	mov	lr, #220
	mov	r4, #200
	mov	ip, #120
	ldr	r3, .L70
	str	r1, [r3]
	str	r1, [r3, #80]
	ldr	r1, .L70+4
	str	r4, [r3, #32]
	str	lr, [r3, #48]
	str	lr, [r3, #64]
	str	r0, [r3, #4]
	str	r0, [r3, #20]
	str	r0, [r3, #36]
	str	r0, [r3, #52]
	str	r2, [r3, #8]
	str	r2, [r3, #16]
	str	r2, [r3, #24]
	str	r2, [r3, #40]
	str	r2, [r3, #56]
	str	r2, [r3, #72]
	str	r2, [r3, #88]
	strh	r1, [r3, #12]	@ movhi
	strh	r1, [r3, #28]	@ movhi
	strh	r1, [r3, #44]	@ movhi
	strh	r1, [r3, #60]	@ movhi
	strh	r1, [r3, #76]	@ movhi
	strh	r1, [r3, #92]	@ movhi
	str	ip, [r3, #68]
	str	ip, [r3, #84]
	pop	{r4, lr}
	bx	lr
.L71:
	.align	2
.L70:
	.word	fillerRectangles
	.word	15855
	.size	initializeFiller, .-initializeFiller
	.align	2
	.global	drawFillerRects
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawFillerRects, %function
drawFillerRects:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	ldr	r4, .L76
	ldr	r7, .L76+4
	ldr	r6, .L76+8
	sub	sp, sp, #12
	add	r5, r4, #96
.L73:
	mov	r3, #20
	ldr	r1, [r4, #4]
	ldr	r0, [r4], #16
	mov	r2, r3
	str	r6, [sp]
	mov	lr, pc
	bx	r7
	cmp	r4, r5
	bne	.L73
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, r6, r7, lr}
	bx	lr
.L77:
	.align	2
.L76:
	.word	fillerRectangles
	.word	drawRectangle
	.word	15855
	.size	drawFillerRects, .-drawFillerRects
	.comm	fillerRectangles,96,4
	.comm	arr,1008,4
	.ident	"GCC: (devkitARM release 53) 9.1.0"
