.globl _start
.text

# Example with n = 4
# Expected result is 186 or 0xba

_start:
	addi a0, zero, 4
	jal ra, rekursive_folge
	ebreak
    
rekursive_folge:
    beq a0, zero, break
    addi sp, sp, -16
    sw ra, 0(sp)
    sw a0, 4(sp)

    addi a0, a0, -1
    jal ra, rekursive_folge

    lw t0, 4(sp)
    lw ra, 0(sp)
    addi sp, sp, 16

    ;*2 + n
    slli a0, a0, 1
    add a0, a0, t0
    
    jalr zero, 0(ra)

break:
    addi a0, zero, 10
    jalr zero, 0(ra)

