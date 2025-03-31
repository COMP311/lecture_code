addi $t1, $0, 3
addi $t2, $t1, -1
addi $t3, $0, 0

loop:
	slt $t4, $0, $t2
	beq $t4, $0, end
	add $t3, $t3, $t2
	addi $t2, $t2, -1
	j loop

end:
