# expected result: $t0 is 10 (1+2+3+4)

main:
	add $t0, $0, $0		# sum = 0
	add $t1, $0, $0		# for (i = 0; ...)
	
forloop:
	slti $t2, $t1, 5	# for (...; i<5;
	beq $t2, $0, end
	add $t0, $t0, $t1	# sum = sum + i
	addi $t1, $t1, 1	# for (...; ...; i++
	j forloop
	
end:
	ori $v0, $0, 10		# exit system call
	syscall
