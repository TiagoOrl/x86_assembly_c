
global myAsm
global localVars
global sumValues
global getStruct

section .text

; 1 getting args and returning a value from eax
myAsm:
    push ebp
    mov ebp, esp

    mov eax, [ebp + 8] ; valA
    mov eax, [ebp + 12] ; valB

    pop ebp
    ret


; 2 local variables
localVars:
    push ebp
    mov ebp, esp

    sub esp, 8 ; sub 4 bytes from SP to make space for scope variable

    mov dword[ebp - 4], 30 ; move value into stack position
    mov dword[ebp - 8], 45 ; 2nd variable

    add esp, 8 ; move back stack pointer to original position

    ; return a + b
    mov eax, dword[ebp - 4]
    add eax, dword[ebp - 8]

    pop ebp
    ret

sumValues:
    push ebp
    mov ebp, esp

    mov eax, [ebp + 8] ; valA
    add eax, [ebp + 12] ; add valB

    pop ebp
    ret

; returning structures
getStruct:
    push ebp
    mov ebp, esp

    mov eax, [ebp + 8] ; move addr of struct into eax
    mov byte[eax], 'H' ; sets first index of array buf
    mov byte[eax + 1], 'e' ; sets second
    mov byte[eax + 2], 'l' ; sets third

    pop ebp
    ret

