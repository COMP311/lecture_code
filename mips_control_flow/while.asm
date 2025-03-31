# while (i < 5) i++

li $t0, 0	# i

loop:
	bge $t0, 5, end_loop	# if i >= 5, branch to end_loop
	addi $t0, $t0, 1	# i++
	j loop
	
end_loop:
