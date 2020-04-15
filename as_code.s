.extern printf
.data
format: .asciz "%d\n"
array: .int 9, 12, 12, 15, 17, 18, 99, 100, 169, 155
array_end:
.text
.global main
.type main, @function

main:



mov $array, %ebx
mov $10, %ecx
1:
mov (%ebx), %eax
test %ecx, %ecx
je after_change
test  $1, %eax
jnz   odd
jz    even


odd:
sar $1, %eax
mov %eax, (%ebx)
add $4, %ebx
dec %ecx
jmp 1b

even:
shl $1, %eax 
mov %eax, (%ebx)
add $4, %ebx
dec %ecx
jmp 1b

after_change:
mov $10, %ecx
mov $array, %ebx                      
boop:

        push %rbx
        lea format(%eip), %edi
        mov (%ebx), %esi
        xor %eax, %eax
        call printf
        pop %rbx
        add $4, %ebx
        cmp $array_end, %ebx
    jne boop

