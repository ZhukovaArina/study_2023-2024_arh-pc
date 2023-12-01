%include 'in_out.asm'
section        .data
   result_msg  db "Результат: ",0h
   msgA db "Введите a: ",0h
   msgX db "Введите x: ",0h
section .bss
   a   resb 10
   x   resb 10
   result resd 1
section        .text
   global _start
_start:
; ------- Ввод A  --------
   mov eax,msgA
   call sprint
   
   mov ecx,a
   mov edx,10
   call sread
   
; ------- Преобразование A ------
   mov eax,a
   call atoi 
   mov [a],eax
   
; ------- Ввод X ------------
   mov eax,msgX
   call sprint
   
   mov ecx,x
   mov edx,10
   call sread
   
; -------- Преобразование X ---------
   mov eax,x
   call atoi
   mov [x],eax
   
; --------- Сравнение ---------
   mov eax, [a]
   cmp eax, [x]
   jge  less_A
   
   mov eax, result_msg
   call sprint
   mov eax,8
   call iprintLF
   call quit
   
less_A:
   mov eax,[a]
   mov ebx,2
   mul ebx
   sub eax, [x]
   mov [result], eax
   
   mov eax, result_msg
   call sprint
   mov eax, [result]
   call iprintLF
   
   call quit