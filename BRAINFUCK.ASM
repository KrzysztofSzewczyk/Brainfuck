.model tiny
.code
.startup
org 100h
lea si,src
shr di,1h
rep stosw
dec di
move: sub di,ax
      db 3Dh
padd: sub [di],al
next: lodsb
      cbw
      sub al,'['
      jcxz true
      jl next
incx: dec ax
      sub cl,al
      jmp next
true: jl ipt
      jg pend
      cmp al,[di]
      je incx
      push si
      db 3Dh
pend: pop si
      dec si
      jmp next
ipt:  sub al,'<'-'['
      dec ax
      jnc move
last: sub al,'+'-'<'-1
      cmp al,3
      je putc
      jnc exit
      dec ax
      jnz padd
getc: mov ah,8
      db 3Dh
putc: mov ah,2
      mov dl,[di]
exit: int 21h
      mov [di],al
      jmp next
src:
end
