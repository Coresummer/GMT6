mul1(unsigned long*, unsigned long const*, unsigned long):                          # @mul1(unsigned long*, unsigned long const*, unsigned long)
        push    rbp
        push    r15
        push    r14
        push    r13
        push    r12
        push    rbx
        ;evac callee-saves
        mov     rax, rdx
        mulx    rbp, r11, qword ptr [rsi + 48]
        mulx    rcx, r10, qword ptr [rsi + 56]
        mulx    rbx, r15, qword ptr [rsi + 32]
        add     r10, rbp
        adc     rcx, 0
        mulx    r12, r9, qword ptr [rsi + 40]
        add     r9, rbx
        adc     r12, r11
        mulx    rbx, r8, qword ptr [rsi + 16]
        adc     r10, 0
        adc     rcx, 0
        mulx    r11, r13, qword ptr [rsi + 24]
        setb    r14b
        add     r13, rbx
        mulx    rbx, rdx, qword ptr [rsi]
        mov     qword ptr [rsp - 8], rdx        # 8-byte Spill
        adc     r11, 0
        mov     rdx, rax
        mulx    rdx, rbp, qword ptr [rsi + 8]
        add     rbp, rbx
        mov     qword ptr [rsp - 16], rbp       # 8-byte Spill
        movzx   r14d, r14b
        adc     rdx, r8
        mov     qword ptr [rsp - 24], rdx       # 8-byte Spill
        adc     r13, 0
        adc     r11, r15
        adc     r9, 0
        adc     r12, 0
        adc     r10, 0
        adc     rcx, 0
        mov     rdx, rax
        mulx    r15, rdx, qword ptr [rsi + 80]
        mov     qword ptr [rsp - 32], rdx       # 8-byte Spill
        adc     r14, 0
        setb    byte ptr [rsp - 33]             # 1-byte Folded Spill
        xor     edx, edx
        mulx    rbx, rbp, rax
        add     rbp, r15
        adc     rbx, 0
        mov     rdx, rax
        mulx    r8, r15, qword ptr [rsi + 64]
        mulx    rax, rdx, qword ptr [rsi + 72]
        add     rdx, r8
        adc     rax, qword ptr [rsp - 32]       # 8-byte Folded Reload
        adc     rbp, 0
        adc     rbx, 0
        setb    sil
        add     r15, rcx
        adc     rdx, r14
        movzx   ecx, byte ptr [rsp - 33]        # 1-byte Folded Reload
        adc     rax, rcx
        mov     rcx, qword ptr [rsp - 8]        # 8-byte Reload
        mov     qword ptr [rdi], rcx
        mov     rcx, qword ptr [rsp - 16]       # 8-byte Reload
        mov     qword ptr [rdi + 8], rcx
        mov     rcx, qword ptr [rsp - 24]       # 8-byte Reload
        mov     qword ptr [rdi + 16], rcx
        mov     qword ptr [rdi + 24], r13
        mov     qword ptr [rdi + 32], r11
        mov     qword ptr [rdi + 40], r9
        mov     qword ptr [rdi + 48], r12
        mov     qword ptr [rdi + 56], r10
        mov     qword ptr [rdi + 64], r15
        mov     qword ptr [rdi + 72], rdx
        mov     qword ptr [rdi + 80], rax
        adc     rbp, 0
        mov     qword ptr [rdi + 88], rbp
        adc     rbx, 0
        mov     qword ptr [rdi + 96], rbx
        movzx   eax, sil
        adc     rax, 0
        mov     qword ptr [rdi + 104], rax
        setb    al
        movzx   eax, al
        vxorps  xmm0, xmm0, xmm0
        vmovups xmmword ptr [rdi + 160], xmm0
        mov     qword ptr [rdi + 112], rax
        vmovups xmmword ptr [rdi + 144], xmm0
        vmovups xmmword ptr [rdi + 128], xmm0
        mov     qword ptr [rdi + 120], 0
        pop     rbx
        pop     r12
        pop     r13
        pop     r14
        pop     r15
        pop     rbp
        ret