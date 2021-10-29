.data 
Lugar: .word 0
.eqv pc 0xF08AE
.eqv sum 0xef8
.text
	addi a1, zero 2
	addi a2, zero -2
	nop #
	nop #
	add a0, a1, a2
	nop #
	nop #
	bne a0,zero, Erro
	nop #
	andi a0, a2, 0
	nop #
	nop #
	beq a0, zero, OK1
	nop #
	jal ra, Erro
	nop #
OK1: 	ori a5, zero,255
	nop #
	nop #
	ori a6,a5,0
	nop #
	nop #
	bge a6,a5, OK2
	nop #
	jal ra, Erro
	nop #
OK2: 	nop #
	nop #
	bgeu a6,a5, OK3
	nop #
	jal ra, Erro
	nop #
OK3:	addi a1, zero, 2
	addi a2, zero, 1
	nop #
	nop #
	sub a3, a1, a2
	nop #
	nop #
	blt  a3, a1, OK4
	nop #
	jal ra, Erro
	nop #
OK4:	addi a1, zero, 0x2
	nop #
	nop #
	and a3, a1, zero
	nop #
	nop #
	beq a3, zero, OK5
	nop #
	jal ra, Erro
	nop #
OK5:	or a3, a1, zero
	nop #
	nop #
	bltu zero, a3, OK6
	nop #
	jal ra, Erro
	nop #
OK6:	addi a2,zero, 2
	addi a3, zero, 3
	nop #
	nop #
	slt  a1, a2,a3
	sltu a0, a2, a3
	nop #
	nop #
	beq a0,a1, OK7
	nop #
	jal ra, Erro
	nop #
OK7:	addi a0, zero, 0
	xori a0, zero 0x2
	nop #
	nop #
	bne a0, zero, OK8
	nop #
	jal ra, Erro
	nop #
OK8:	addi a3, zero, 1
	slti a2, a0, 3
	nop #
	nop #
	beq a2, a3, OK9
	nop #
	jal ra, Erro
	nop #
OK9:	sltiu a1, a0, -2
	nop #
	nop #
	beq a1, a3, OK10
	nop #
	jal ra, Erro
	nop #
OK10:	addi a1, zero, 1
	addi a0, zero, 2
	nop #
	sll a1, a1, a1
	nop #
	nop #
	beq a1,a0, OK11
	nop #
	jal ra, Erro
	nop #
OK11:   slli a1, a1, 0
	nop #
	nop #
	beq a1, a0, OK12
	nop #
	jal ra, Erro
	nop #
OK12:	lui a1, 0
	nop #
	nop #
	beq a1, zero, OK13
	nop #
	jal ra, Erro
	nop #
OK13:	auipc a0, pc
	lui t0, 0x000001
	nop #
	nop #
	addi t0, t0, -0x108
	nop #
	nop #
	add a0,a0,t0
	lui a1, 0xF0CAF
	nop #
	nop #
	addi a1, a1, 0xD4
	lui a2, 0x10010
	nop #
	nop #
	sw a1, 0(a2)
	lw a3, 0(a2)
	nop #
	nop #
	nop #
	beq a3, a0, OK14
	nop #
	jal ra, Erro
	nop #
OK14:	addi a0, zero, 0
	addi a1, zero, 0x2
	nop #
	nop #
	xor a0, zero, a1
	nop #
	nop #
	bne a0, zero, OK15
	nop #
	jal ra, Erro
	nop #
OK15:	jal a0, JALR
	nop #
JALR:	nop #
	jalr a1, a0, 12
	nop #
	addi a1, a1, -12
	nop #
	nop #
	beq a0, a1, OK16
	nop #
	jal ra, Erro
	nop #
OK16:	lui a0, 0xCCCCC
FimS:	jal ra, FimS
	nop #

Erro: lui a0, 0xEEEEE
Fim: jal ra, Fim
	nop #
