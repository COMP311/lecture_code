.data

x: .word 9

.text

main:
	lw $a0, x		# pass argument x to func before calling func
	jal func
	# here, $v0 = 2x - 1
	j end
	
func:
	add $v0, $a0, $a0	# rv = 2 * x
	addi $v0, $v0, -1	# rv = 2 * x - 1
	jr $ra			# return

end:
