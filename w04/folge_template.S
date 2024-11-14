.globl _start
.text

# Example with n = 4
# Expected result is 186 or 0xba

_start:
	addi a0, zero, 4
	jal ra, rekursive_folge
	ebreak
    
rekursive_folge:
	# Your code goes here ;)
