equ PORT_INPUT, 0
equ PORT_OUTPUT, 1

section text
global _start

_start:
    IN R0, PORT_INPUT
    OUT PORT_OUTPUT, R0
    JMP _start
