	.data
array:	.word 4, 2, 4, 2, 2, 6

	.text
	.globl main
main:	li $v0, 4
	add $t0, $zero, $zero
	la $t2, array
	add $t6, $zero, $zero
	addi $t4, $zero, 6
loop:
	add $s1, $t2, $t0
	lw $s2, 0($s1)
	bge $s2, $t6, grn
	add $t0, $t0, 4
	add $t4, $t4, -1
	slti $t5, $t4, 1
	beq $t5, $zero, loop	

grn:	add $t6, $s2, $zero
	add $t0, $t0, 4
	add $t4, $t4, -1
	slti $t5, $t4, 1
	beq $t5, $zero, loop	
	

	jr $ra