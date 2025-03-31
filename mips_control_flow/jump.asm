main:
	j func1
	li $t0, 1	# never executed
	
func1:
	li $t1, 1
	jal func2	# jump to func2, and $ra is set to the following instruction, which is `j end` here
	j end
	
func2:
	li $t2, 1
	jr $ra		# jumps to instruction whose address is in $ra, which is `j end` here
	
end:
	li $v0, 10	# service number 10 for exiting program
	syscall		# exit
