#Programa que lê 2 inteiros da entrada padrão e apresenta a soma destes na saída padrão.

.text
	.globl main

main:				# void main(){
	li $v0, 5		# 
	syscall			#
	move $t0, $v0		# $t0 = a
	sw $v0, a		# int a = getChar();
	
	li $v0, 5		# 
	syscall			#
	move $t1, $v0		# $t1 = b
	sw $v0, b		# int b = getChar();
	
	add $t2, $t1, $t0	# int c = a + b;
	sw $t2, c		# 
	li $v0, 1		#
	move $a0, $t2		#
	syscall			# printf("%d", c);
	li $v0, 10		#
	syscall			# encerra o programa
.data
	a: .word 0		# int a = 0;     -> esta declaração pode ser
	b: .word 0		# int b = 0;        feita como a: .space 4 e
	c: .word 0		# int c = 0;	    no caso seria, "int a;"