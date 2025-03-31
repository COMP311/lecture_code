main:
	addi $t0, $0, 2
	add $a0, $0, $t0
	jal func
	add $t1, $t0, $v0
	j end

func:
	sll $t0, $a0, 2
	addi $v0, $t0, 0
	jr $ra
	
end:
