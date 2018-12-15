	.data
msg:
	.text
	.globl main
main:
	addi $t0,$zero,5
	addi $t1,$zero,1
	addi $t2,$zero,1

fibo:	slti $t3,$t0,2
	beq $t3,$zero,else
	jr $ra

else:
	addi $t0,$t0,-1
	add $t4,$t2,$t1
	add $t1,$t2,$zero
	add $t2,$t4,$zero
	j  fibo