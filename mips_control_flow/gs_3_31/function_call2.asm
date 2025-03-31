main:
	jal func1		# 2
	addi $a0, $a0, 1	# 3
	j end			# 4

func1:
	jal func2		# 7
	addi $a1, $a1, 1	# 8
	jr $ra			# 9

func2:
	addi $a2, $a2, 1	# 12
	jr $ra			# 13
	
end:
				# 16
