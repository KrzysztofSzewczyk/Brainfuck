.program:
  .string ",[.,]"
main:
  push r12						; Function entry point
  or r12d, -1					; Setting up parameters in registers
  push rbp
  mov ebp, OFFSET FLAT:l
  push rbx
  xor ebx, ebx
.mainloop:
  movsx rax, ebx				;Beginning loop
  mov al, BYTE PTR .program[rax]
  test al, al
  je .endloop					; Setting up loops.
  cmp al, 62					; Is pointer plus command?
  mov edx, 1
  je .isptr						; Yes.
  xor edx, edx
  cmp al, 60					; Is pointer minus command?
  sete dl
  neg rdx
.isptr:
  add rbp, rdx
  cmp al, 43					; Is memory plus command?
  mov dil, 1
  mov dl, BYTE PTR [rbp+0]
  je .io						; Yes? Go on.
  cmp al, 45					; Is memory minus command?
  sete dil
  neg edi
.io:
  add edi, edx
  cmp al, 46					; Is dot command?
  mov BYTE PTR [rbp+0], dil
  jne .inputc						; No? Check other.
  movzx edi, dil
  call putchar					; Print memory cell under pointer
  jmp .outputc
.inputc:
  cmp al, 44
  jne .outputc
  call getchar
  mov BYTE PTR [rbp+0], al
.outputc:
  movzx edx, BYTE PTR [rbp+0]
  test edx, edx
  je .beforeend
  dec ebx
  movsx rax, ebx
.loopins:							; Process loop operation
  mov sil, BYTE PTR .program[rax]	; Calculate does pointer match needs
  mov ebx, eax
  mov ecx, r12d
  cmp sil, 91
  je .ToEnd
  xor ecx, ecx
  cmp sil, 93
  sete cl
.ToEnd:								; Yes? End.
  dec rax
  add edx, ecx
  jne .loopins						; Loop operation should end there.
.beforeend:
  inc ebx
  jmp .mainloop
.endloop:						; Program ends here.
  mov eax, ebx
  pop rbx
  pop rbp
  pop r12
  ret
l:								; Initialized memory.
  .zero 6000
