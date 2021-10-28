.text
addi x1, zero, 4
addi x3, zero, 2
addi x5, zero, 3

sub x2, x1,x3
and x12, x2, x5
or x12, x2, x5
add x12, x1, x2
JUMP: beq zero zero JUMP
nop
