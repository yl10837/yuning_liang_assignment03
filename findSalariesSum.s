.globl _findSalariesSum

_findSalariesSum:
    pushq %rbp
    movq  %rsp, %rbp

    movl  $0, %eax         # sum = 0
    movl  $0, %ecx         # i = 0

loop:
    cmpl  %esi, %ecx       # 比较 i 和 size
    jge   done             # i >= size 就退出

    addl  8(%rdi), %eax    # sum += salary (偏移8，因为name占8字节)
    addq  $12, %rdi        # 下一个employee (name8字节+salary4字节=12字节)
    incl  %ecx             # i++
    jmp   loop

done:
    popq  %rbp
    ret