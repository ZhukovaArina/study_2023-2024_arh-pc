%include 'in_out.asm'
section        .data
   msg  db "Наибольшее число: ",0h
   msgA db "Введите a: ",0h
   msgB db "Введите b: ",0h
   msgC db "Введите c: ",0h
section .bss
   max resb 10
   A   resb 10
   B   resb 10
   C   resb 10
section        .text
   global _start
_start:
; ------- Ввод A, B, C --------
   mov eax,msgA
   call sprint
   
   mov eax,A
   mov edx,10
   call sread
   
   mov eax,msgB
   call sprint
   
   mov ebx,B
   mov edx,10
   call sread
   
   mov eax,msgC
   call sprint
   
   mov ecx,C
   mov edx,10
   call sread
; -------- Преобразование ---------
   mov eax,B
   call atoi
   mov [B],eax
; -------- Записываем А в перенную  max --------
   mov ecx,[A]
   mov [max],ecx ; max = A
; ------- Сравниваем A и C -------------
   cmp ecx,[C]
   jg check_B
   mov ecx,[C]
   mov [max],ecx

check_B:
   mov eax,max
   call atoi
   mov [max],eax
   
   mov ecx,[max]
   cmp ecx,[B]
   jg  fin
   mov ecx,[B]
   mov [max],ecx
   
fin:
   mov eax, msg
   call sprint
   mov eax,[max]
   call iprintLF
   call quit