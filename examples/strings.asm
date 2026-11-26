equ PORT_OUTPUT, 1

section text
global print_pstr

; R0 points to the length byte. Clobbers R0, R1, R2 and flags.
print_pstr:
    MOVB R1, [R0]+
    CMP R1, 0
    JZ done
next_char:
    MOVB R2, [R0]+
    OUT PORT_OUTPUT, R2
    SUB R1, 1
    JNZ next_char
done:
    RET
