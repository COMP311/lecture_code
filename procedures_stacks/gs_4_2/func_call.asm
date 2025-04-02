main:
	li $t0, 2		# a
	li $t1, 3		# b
	# Pass arguments to func
	add $a0, $t0, $0	# $a0 = $t0
	add $a1, $t1, $0	# $a1 = $t1
	jal func
	add $t1, $v0, $t0	# $t1 value?
	j end

func:
	add $t0, $a0, $a1	# operate on arguments
	add $v0, $t0, $0	# set return value to $t0
	jr $ra			# return
	
end:
