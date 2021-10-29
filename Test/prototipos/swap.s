	
.text

	lui a0, 0x10010
	li a1, 2
	li t0 7
	sw t0 8(a0)
	li t0 9
	sw t0 12(a0)
	jal SWAP
	nop #
jump:	j jump
	nop #

SWAP:	slli t1,a1,2
	add t1,a0,t1
	lw t0,0(t1)
	lw t2,4(t1)
	nop #
	sw t2,0(t1)
	sw t0,4(t1)
	ret
	nop #