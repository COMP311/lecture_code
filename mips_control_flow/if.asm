# if (a < b) c = 3

li $t0, 1	# a
li $t1, 2	# b
li $t2, 0	# c

slt $t3, $t0, $t1	# $t3 = $t0 < $t1
beq $t3, 0, after_if	# if $t0 is not less than $t1, branch to after the if body
li $t2, 3		# c = 3 (if body)

after_if:
