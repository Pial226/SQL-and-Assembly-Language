.model small
.stack 100h
.data
    N dw 3              ; Calculate sum up to this number
    msg db "Sum of first N natural numbers: $"

.code
main proc
    ; Initialize data segment
    mov ax, @data
    mov ds, ax

    ; Display message
    mov ah, 9
    lea dx, msg
    int 21h

    ; SUM CALCULATION
    mov cx, N           ; Load N into CX
    xor ax, ax          ; Clear AX (used for the sum)
    mov bx, 1           ; Start from 1

sum_loop:
    add ax, bx          ; Add current number to sum
    inc bx              ; Increment the number
    loop sum_loop       ; Repeat until CX is 0

    ; Convert result to ASCII and print
    add ax, '0'         ; Convert sum to ASCII
    mov dl, al          ; Move ASCII result to DL
    mov ah, 2           ; DOS function to display character
    int 21h

    ; Exit program
    mov ah, 4ch
    int 21h
main endp
end main
