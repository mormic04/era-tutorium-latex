.globl _start
.text

# Example with a = 12 and b = 9
# ggT(12, 9) = 3

_start:
	addi a0, zero, 12
	addi a1, zero, 9
	jal ra, ggt
	ebreak

ggt:
	# Your code goes here
