.globl _findPaymentsSum

_findPaymentsSum:
    pushq %rbp
    movq  %rsp, %rbp

    movl  $0, %eax         # sum = 0
    movl  $0, %ecx         # i = 0
    addq  $8, %rdi         # 跳过id和age，指向payments[0]

loop:
    cmpl  %esi, %ecx       # 比较 i 和 num_of_payments
    jge   done             # i >= num 就退出

    addl  (%rdi), %eax     # sum += payments[i]
    addq  $4, %rdi         # 下一个payment
    incl  %ecx             # i++
    jmp   loop

done:
    popq  %rbp
    ret