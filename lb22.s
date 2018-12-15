	.data
n:	.word 6
	.globl main
	.text
main:
	li 	$t1, 1		#a
	li 	$t2, 1		#b
	lw 	$t0, n   #limit
	li	$t3, 2   #count
    li  $t4, 0 	 #final sum
	beq	$t0, 1, one
	beq $t0, 2, two
fibo:
	add $t4, $t1, $t2
	add $t1, $t2, $zero
	add $t2, $t4, $zero
	addi $t3, $t3, 1 
	blt	$t3, $t0, fibo
	j 	exit
one:
	add $t4, $t1, $zero
	j 	exit
two:
	add $t4, $t2, $zero
	j 	exit

exit:
	jr $ra