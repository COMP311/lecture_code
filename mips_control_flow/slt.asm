li $t0, 1	# $t0 = 1
li $t1, 2	# $t1 = 2

slt $t2, $t0, $t1	# $t2 = 1
slt $t2, $t1, $t0	# $t2 = 0

slti $t2, $0, 1		# $t2 = 1
slti $t2, $0, 0x7fff	# $t2 = 1
# slti $t2, $0, 0x8000	# doesn't work in MARS (operand out of range)
			# but $t2 would be 0 because sign-extended 0x8000 is 0xffff8000, a negative number
