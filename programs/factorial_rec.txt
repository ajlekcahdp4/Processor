in
pop rbx
push rbx
call fact_calc
out
hlt


fact_calc:
    pop rax
    push rax

    push rbx
    push 1
    je end_fact

    push rbx
    push 1
    sub
    pop rbx
    push rbx
    push rax
    mul
    dump
    call fact_calc


    end_fact:
    push rax
ret