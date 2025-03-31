main:
	j label
	li $t0, 1	# never executed
	
label:
	li $t1, 1
	jal func	# jump to func, and $ra is set to the following instruction, which is `j end` here
	j end
	
func:
	li $t2, 1
	jr $ra		# jumps to instruction whose address is in $ra, which is `j end` (line 8)
	
end:
	li $v0, 10	# service number 10 for exiting program
	syscall		# exit
