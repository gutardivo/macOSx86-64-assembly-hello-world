.global start
.intel_syntax noprefix

start:
    mov rax, 0x2000004
    mov rdi, 1
    lea rsi, hello[rip]
    mov rdx, 14
    syscall

    mov rax, 0x2000001
    mov rdi, 99                       
    syscall

hello:
    .asciz "Hello world!\n\n"
