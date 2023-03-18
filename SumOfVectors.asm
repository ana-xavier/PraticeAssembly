#Programa que soma elemento a elemento de 2 vetores de mesmo tamanho armazenados em 
#memória e coloca o resultado de cada soma em cada elemento de um terceiro vetor.

.text	
	.globl main
main:				#  --> guarda o endereço.
	la $s0, vetA		# int *pA = $vetA[0];
	la $s1, vetB		# int *pB = $vetA[0];
	la $s2, vetC		# int *pC = $vetA[0];
	la $s3, vetC+20		# int *pFim = $vetC[10];
while:
	bge $s2, $s3, fim	# while(*pC >= *pFim){
	lw $t0, 0($s0)		# $t0 = *pA;                -> ponteiro
	lw $t1, 0($s1)		# $t1 = *pB;	  	    -> ponteiro
	add $t2, $t0, $t1	# $t2 = *pA + *pB;
	sw $t2, 0($s2)		# *pC = *pA + *pB;
	addi $s0, $s0, 4	# pA++;
	addi $s1, $s1, 4	# pB++;
	addi $s2, $s2, 4	# pC++;
	j while			# }
fim:
	li $v0, 10		# }
	syscall			#
.data
	vetA: .word 2, 6, 8, 6, 7
	vetB: .word 0, -4, 5, -7, 3
	vetC: .space 20