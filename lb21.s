	.data
array:	.word 6 ,3 ,7
	
	.text
	.globl main
main:	
	la $t2,array
	add $t0,$zero,$zero
	add $s1,$t2,$t0
	lw $t6,0($s1)
	addi $t0,$zero,4
	addi $t1,$zero,2
	
loop:
	add $s1,$t2,$t0
	lw $s2,0($s1)
	bge $t6,$s2,gre
gre:
	add $t6,$s2,$zero
	addi $t0,$t0,4
	addi $t1,$t1,-1
	slti $t5,$t1,1
	beq $t5,$zero,loop

	li $v0,1
	move $a0,$s2
	syscall
	
	
	
	