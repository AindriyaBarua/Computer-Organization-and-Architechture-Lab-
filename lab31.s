	.data
msg:

	.text
	.globl main
main:
        li $a0, 5
fact:
	addi $sp,$sp,-8
        sw $ra, 4($sp)
	sw $a0, 0($sp)

	slti $t0,$a0,1
        beq $t0,$zero,ELSE
        
        addi $v0,$zero,1
        addi $sp,$sp,8
        jr $ra
ELSE:
	add $a0, $a0, -1
        jal fact
        lw $a0, 0($sp)
        lw $ra, 4($sp)
        add $sp,$sp,8
        mul $v0, $a0, $v0
        jr $ra
