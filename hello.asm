# hello.asm
# A "Hello World" program in MIPS Assembly for CS64
#
#  Data Area - allocate and initialize variables
.data
statement: .asciiz "Choose an integer number between 0 and 1000:\n"
hello:	.asciiz "Hello World!\n"
choice:	.asciiz "User chose "
wise:	.asciiz ". Truly a wise choice.\n"
newline:	.asciiz "\n"
	
#Text Area (i.e. instructions)
.text
main:

	li $v0, 4
	la $a0, statement
	syscall

	li $v0, 5
	syscall
	
	addu $t0, $zero, $v0
	li $v0, 1
	addu $a0, $zero, $t0

	li $v0, 4
	la $a0, hello
	syscall

	li $v0, 4
	la $a0, choice
	syscall

	li $v0, 1
	addu $a0, $zero, $t0
	syscall

	li $v0, 4
	la $a0, wise
	syscall
	
exit:
	# Exit
	li $v0, 10
	syscall

