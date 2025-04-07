# See mips_control_flow/gs_3_31/function_call2.asm to see how using the stack here resolves the problem there

main:
	jal proc1
	j end
	
proc1:
	addi $sp, $sp, -8
	sw $ra, 4($sp)		# save $ra
	sw $fp, 0($sp)		# save $fp
	addi $fp, $sp, 4	# set $fp
	
	jal proc2
	
	addi $sp, $fp, 4	# restore $sp
	lw $ra, 0($fp)		# restore $ra
	lw $fp, -4($fp)		# restore $fp
	jr $ra			# return
	
proc2:
	jr $ra
	
end:
	li $v0, 10		# exit
	syscall			# exit
