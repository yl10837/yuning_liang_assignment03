.globl compareAges

compareAges:
    pushq %rbp
    movq  %rsp, %rbp

    movl  4(%rdi), %eax    # a->age (偏移4字节，因为id占4字节)
    movl  4(%rsi), %ecx    # b->age

    cmpl  %eax, %ecx       # 比较两个age
    jne   not_equal        # 不相等就跳走

    movl  $1, %eax         # 相等：返回1
    jmp   done

not_equal:
    movl  $0, %eax         # 不相等：返回0

done:
    popq  %rbp
    ret