	.data
arr:	.word 1, 2, 3, 4
k:	.byte 2
	.text
	.globl main
main:
	la	$t0, arr
	la	$t1, k
	
	lw	$t2, 0($t0)
	lw	$t3, 4($t0)
	sw	$t3, 0($t0)
	sw	$t2, 4($t0)
jr $ra
	