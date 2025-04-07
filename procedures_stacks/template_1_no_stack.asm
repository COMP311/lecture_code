main:
	jal proc1
	j end
	
# leaf procedure (doesn't call another procedure)
# leaf procedure does not need to save $ra because it won't mutate $ra (by calling another procedure)
# may not need to use the stack at all (if no register needs to be saved)
proc1:
	li $t0, 1
	jr $ra

end:
	li $v0, 10
	syscall
