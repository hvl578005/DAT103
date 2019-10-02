; Program som skriver ut hello world

; Konstanter

cr equ 13 ; vognretur
lf equ 10 ; linjeskift

section .data ; Datasegment
melding db 'Hello World!',cr,lf
lengde equ $ - melding

section .text ; Kodesegment
global _start
_start:
mov edx,lengde
mov ecx,melding
mov ebx,1
mov eax,4 ; sys_write
int 80h
mov ebx,0
mov eax,1 ; sys_exit
int 80h
