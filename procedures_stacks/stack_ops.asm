# expected result at end: $t0 is 1 and $t1 is 2 (restored after being clobbered)

li $t0, 1
li $t1, 2

addi $sp, $sp, -8	# allocate stack space for 2 words
addi $fp, $sp, 4	# set $fp to "bottom" (earliest variable) of stack frame, "top" of sf when drawn

sw $t0, 4($sp)	# save $t0
sw $t1, 0($sp)	# save $t1

# pretend a function is called, and it clobbers $t0 and $t1
li $t0, 1234	# clobber $t0
li $t1, 5678	# clobber $t1

lw $t0, 0($fp)	# restore $t0
lw $t1, -4($fp)	# restore $t1
