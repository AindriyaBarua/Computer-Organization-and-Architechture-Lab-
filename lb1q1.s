	.data
array1:	.word 1, 2, 3, 4, 5, 6
array2:

	.text
	.globl main
main:	add $t0, $zero, $zero
	la $t1, array1
	la $t2, array2
	addi $t4, $zero, 6
loop:
	add $s1, $t1, $t0
	lw $s2, 0($s1)
	add $s3, $t2, $t0
	sw $s2, 0($s3)
		
	add $t0, $t0, 4
	add $t4, $t4, -1
	slti $t5, $t4, 1
	beq $t5, $zero, loop
	jr $ra