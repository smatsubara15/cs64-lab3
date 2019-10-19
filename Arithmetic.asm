# Arithmetic.asm
# A simple calculator program in MIPS Assembly for CS64
#
.data
newline: .asciiz "\n"
	
.text

main:

	li $v0, 5
	syscall
	addu $t0, $zero, $v0

	li $v0, 5
	syscall
	addu $t1, $zero, $v0

	li $v0, 5
	syscall
	addu $t2, $zero, $v0

	sub $t4, $t0, $t1
	add $t5, $t4, $t4

	li $t6, 3
	mult $t6, $t2
	mflo $t7

	add $t0, $t7, $t5

	li $v0, 1
	addu $a0, $zero, $t0
	syscall

	li $v0, 4
	la $a0, newline
	syscall
exit:
	# Exit
	li $v0, 10
	syscall

