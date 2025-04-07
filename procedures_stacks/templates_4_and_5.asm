# expected result: $t0 = 1, $t1 = 2, $s0 = 1, $s1 = 2 (all the original values, restored after clobbering)

# $fp -> $t0
# $sp -> $t1
main:
	li $t0, 1
	li $t1, 2
	li $s0, 1
	li $s1, 2
	
	addi $sp, $sp, -8
	addi $fp, $sp, 4
	# caller saves t registers
	sw $t0, 4($sp)
	sw $t1, 0($sp)
	
	jal proc1
	
	# restore t registers
	lw $t0, 0($fp)
	lw $t1, -4($fp)
	
	j end
	
# $fp -> $ra
#	 $fp
# 	 $s0
# $sp -> $s1
proc1:
	addi $sp, $sp, -8
	sw $ra, 4($sp)
	sw $fp, 0($sp)
	addi $fp, $sp, 4
	
	addi $sp, $sp, -8
	# callee saves s registers
	sw $s0, 4($sp)
	sw $s1, 0($sp)
	
	# clobber $t0 and $t1
	li $t0, 1234
	li $t1, 5678
	
	# clobber $s0 and $s1
	li $s0, 1234
	li $s1, 5678
	
	jal proc2
	
	# restore s registers
	lw $s0, -8($fp)
	lw $s1, -12($fp)
	
	addi $sp, $fp, 4
	lw $ra, 0($fp)
	lw $fp, -4($fp)
	jr $ra

# empty procedure, only called to show that proc1 correctly saves and restores $ra and $fp in stack
proc2:
	jr $ra
	
end:
	li $v0, 10
	syscall
