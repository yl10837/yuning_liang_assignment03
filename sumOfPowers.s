.globl sumOfPowers

sumOfPowers:
    pushq %rbp
    movq  %rsp, %rbp

    movl  %edi, %r8d
    movl  $0,   %eax
    movl  $1,   %ecx

loop:
    cmpl  %r8d, %ecx
    jg    done

    movl  %ecx, %edx
    imull %ecx, %edx
    addl  %edx, %eax

    incl  %ecx
    jmp   loop

done:
    popq  %rbp
    ret