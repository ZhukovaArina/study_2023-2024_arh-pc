%include   'in_out.asm'

  SECTION .data
  div:  DB 'Результат: ',0
  msg:  DB 'Введите значение x: ',0

  SECTION  .bss
  x:     RESB 80
  
  SECTION .text
     GLOBAL _start
     _start:

     mov eax, msg
     call sprintLF

     mov ecx, x
     mov edx, 80
 
     call sread

     mov eax,x            ;EAX=x
     call atoi
     mov [x],eax
     mov ebx,2            ;EBX=x
     mul ebx              ;EAX=EAX*EBX
     add eax,10           ;EAX=EAX+10
     xor edx,edx          ;Обнуление EDX
     mov ebx,3            ;EBX=3
     div ebx              ;EAX=EAX/3, EDX-остаток от деления
     
     mov edi,eax
     
     mov eax,div
     call sprint
     mov eax,edi
     call iprintLF
     
     call quit