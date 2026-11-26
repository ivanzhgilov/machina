section data
message:
    pstr "Hello, world!"

section text
global _start
extern print_pstr

_start:
    MOV R0, message
    CALL print_pstr
    HALT
