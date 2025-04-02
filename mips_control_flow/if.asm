# if (a < b) a++

li $t0, 1	# a
li $t1, 2	# b

slt $t2, $t0, $t1	# $t2 = $t0 < $t1
beq $t2, 0, after_if	# if comparison is false, branch to after the if body
addi $t0, $t0, 1	# a++ (if body)

after_if:
