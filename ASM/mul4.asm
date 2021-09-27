mul4(unsigned int _ExtInt<1408>*, unsigned int _ExtInt<704> const*, unsigned int _ExtInt<704> const*): # @mul4(unsigned int _ExtInt<1408>*, unsigned int _ExtInt<704> const*, unsigned int _ExtInt<704> const*)
        push    rbp
        push    r15
        push    r14
        push    r13
        push    r12
        push    rbx
        sub     rsp, 208
        mov     rax, qword ptr [rsi]
        mov     r11, rsi
        mov     qword ptr [rsp - 32], rsi       # 8-byte Spill
        mov     rsi, rdx
        mov     r15, qword ptr [rdx + 56]
        mov     rbx, qword ptr [rdx + 48]
        mov     qword ptr [rsp - 40], rbx       # 8-byte Spill
        mov     rdx, rbx
        mulx    r8, r10, rax
        mov     rdx, r15
        mov     qword ptr [rsp - 48], r15       # 8-byte Spill
        mulx    rbp, rcx, rax
        mov     r9, rax
        mov     rax, qword ptr [r11 + 8]
        mov     r11, qword ptr [rsi + 32]
        mov     r14, rsi
        mov     qword ptr [rsp - 56], rsi       # 8-byte Spill
        add     rcx, r8
        mov     rdx, rbx
        mulx    rsi, r8, rax
        adc     rbp, 0
        add     r8, rcx
        adc     rsi, rbp
        mov     rdx, r15
        mulx    r15, r12, rax
        setb    cl
        movzx   ecx, cl
        add     r12, rsi
        mov     rdx, r11
        mov     qword ptr [rsp + 48], r9        # 8-byte Spill
        mulx    rsi, rdx, r9
        mov     qword ptr [rsp - 128], rdx      # 8-byte Spill
        adc     r15, rcx
        mov     r14, qword ptr [r14 + 40]
        mov     rdx, r14
        mulx    rbp, rcx, r9
        add     rcx, rsi
        adc     rbp, 0
        mov     rdx, r11
        mov     qword ptr [rsp + 40], rax       # 8-byte Spill
        mulx    rsi, rdx, rax
        add     rdx, rcx
        mov     qword ptr [rsp - 112], rdx      # 8-byte Spill
        adc     rsi, rbp
        mov     rdx, r14
        mulx    r13, rcx, rax
        setb    dl
        add     rcx, rsi
        movzx   edx, dl
        adc     r13, rdx
        add     rcx, r10
        adc     r13, r8
        adc     r12, 0
        adc     r15, 0
        mov     rbp, qword ptr [rsp - 32]       # 8-byte Reload
        mov     r8, qword ptr [rbp + 16]
        mov     rbx, r11
        mov     qword ptr [rsp + 32], r11       # 8-byte Spill
        mov     rdx, r11
        mulx    r10, r9, r8
        mov     rdx, r14
        mov     qword ptr [rsp + 24], r14       # 8-byte Spill
        mulx    rax, rsi, r8
        add     rsi, r10
        adc     rax, 0
        mov     r11, qword ptr [rbp + 24]
        mov     rdx, rbx
        mulx    rbp, rdx, r11
        add     rdx, rsi
        mov     rbx, rdx
        adc     rbp, rax
        mov     rdx, r14
        mulx    rax, rsi, r11
        setb    dl
        add     rsi, rbp
        movzx   edx, dl
        adc     rax, rdx
        add     r9, rcx
        mov     qword ptr [rsp - 104], r9       # 8-byte Spill
        adc     rbx, r13
        mov     qword ptr [rsp - 64], rbx       # 8-byte Spill
        adc     rsi, 0
        adc     rax, 0
        add     rsi, r12
        adc     rax, r15
        mov     rcx, qword ptr [rsp - 40]       # 8-byte Reload
        mov     rdx, rcx
        mov     qword ptr [rsp - 80], r8        # 8-byte Spill
        mulx    r14, r13, r8
        mov     rbx, qword ptr [rsp - 48]       # 8-byte Reload
        mov     rdx, rbx
        mulx    r12, rbp, r8
        setb    r15b
        add     rbp, r14
        adc     r12, 0
        mov     rdx, rcx
        mulx    rcx, r14, r11
        mov     rdx, rbx
        mulx    rbx, r9, r11
        add     r14, rbp
        adc     rcx, r12
        setb    dl
        add     r9, rcx
        movzx   ecx, dl
        adc     rbx, rcx
        add     r13, rsi
        mov     qword ptr [rsp - 120], r13      # 8-byte Spill
        adc     r14, rax
        mov     qword ptr [rsp - 72], r14       # 8-byte Spill
        mov     r10, qword ptr [rsp - 56]       # 8-byte Reload
        mov     rax, qword ptr [r10 + 16]
        mov     rdx, rax
        mov     qword ptr [rsp + 16], rax       # 8-byte Spill
        mov     r8, qword ptr [rsp + 48]        # 8-byte Reload
        mulx    r14, rcx, r8
        mov     qword ptr [rsp + 64], rcx       # 8-byte Spill
        movzx   edx, r15b
        adc     r9, rdx
        mov     qword ptr [rsp - 96], r9        # 8-byte Spill
        mov     rcx, qword ptr [r10 + 24]
        mov     rdx, rcx
        mov     qword ptr [rsp + 8], rcx        # 8-byte Spill
        mulx    rsi, rbp, r8
        adc     rbx, 0
        mov     qword ptr [rsp - 88], rbx       # 8-byte Spill
        add     rbp, r14
        adc     rsi, 0
        mov     rdx, rax
        mov     r15, qword ptr [rsp + 40]       # 8-byte Reload
        mulx    rax, r14, r15
        add     r14, rbp
        adc     rax, rsi
        mov     rdx, rcx
        mulx    r9, r12, r15
        mov     rsi, r15
        setb    bl
        add     r12, rax
        mov     r15, qword ptr [r10]
        mov     rdx, r15
        mulx    rax, rcx, r8
        mov     qword ptr [rsp + 200], rcx      # 8-byte Spill
        movzx   edx, bl
        adc     r9, rdx
        mov     rdx, qword ptr [r10 + 8]
        mov     r10, rdx
        mulx    rbp, rbx, r8
        add     rbx, rax
        adc     rbp, 0
        mov     rdx, r15
        mulx    rax, rcx, rsi
        add     rcx, rbx
        mov     qword ptr [rsp + 192], rcx      # 8-byte Spill
        adc     rax, rbp
        mov     rcx, r10
        mov     rdx, r10
        mulx    r13, r8, rsi
        setb    dl
        add     r8, rax
        movzx   eax, dl
        adc     r13, rax
        add     r8, qword ptr [rsp + 64]        # 8-byte Folded Reload
        adc     r13, r14
        mov     rdx, r15
        mov     rsi, qword ptr [rsp - 80]       # 8-byte Reload
        mulx    rax, r10, rsi
        adc     r12, 0
        adc     r9, 0
        mov     rdx, rcx
        mov     r14, rcx
        mov     qword ptr [rsp + 56], rcx       # 8-byte Spill
        mulx    rcx, rsi, rsi
        add     rsi, rax
        adc     rcx, 0
        mov     rdx, r15
        mulx    rbp, rbx, r11
        add     rbx, rsi
        adc     rbp, rcx
        mov     rdx, r14
        mulx    rax, rsi, r11
        setb    cl
        add     rsi, rbp
        movzx   ecx, cl
        adc     rax, rcx
        add     r10, r8
        mov     qword ptr [rsp + 184], r10      # 8-byte Spill
        adc     rbx, r13
        mov     qword ptr [rsp + 176], rbx      # 8-byte Spill
        adc     rsi, 0
        adc     rax, 0
        add     rsi, r12
        mov     r14, qword ptr [rsp + 16]       # 8-byte Reload
        mov     rdx, r14
        mov     rcx, qword ptr [rsp - 80]       # 8-byte Reload
        mulx    r10, r13, rcx
        mov     r8, qword ptr [rsp + 8]         # 8-byte Reload
        mov     rdx, r8
        mulx    rbx, rbp, rcx
        adc     rax, r9
        setb    r12b
        add     rbp, r10
        mov     rdx, r14
        mov     qword ptr [rsp + 128], r11      # 8-byte Spill
        mulx    rcx, r9, r11
        adc     rbx, 0
        add     r9, rbp
        adc     rcx, rbx
        mov     rdx, r8
        mulx    rbp, rbx, r11
        setb    dl
        add     rbx, rcx
        movzx   ecx, dl
        adc     rbp, rcx
        add     r13, rsi
        adc     r9, rax
        movzx   eax, r12b
        adc     rbx, rax
        adc     rbp, 0
        add     r13, qword ptr [rsp - 128]      # 8-byte Folded Reload
        mov     qword ptr [rsp], r13            # 8-byte Spill
        adc     r9, qword ptr [rsp - 112]       # 8-byte Folded Reload
        mov     qword ptr [rsp - 8], r9         # 8-byte Spill
        adc     rbx, qword ptr [rsp - 104]      # 8-byte Folded Reload
        mov     qword ptr [rsp - 24], rbx       # 8-byte Spill
        adc     rbp, qword ptr [rsp - 64]       # 8-byte Folded Reload
        mov     qword ptr [rsp - 16], rbp       # 8-byte Spill
        adc     qword ptr [rsp - 120], 0        # 8-byte Folded Spill
        adc     qword ptr [rsp - 72], 0         # 8-byte Folded Spill
        adc     qword ptr [rsp - 96], 0         # 8-byte Folded Spill
        adc     qword ptr [rsp - 88], 0         # 8-byte Folded Spill
        mov     rcx, qword ptr [rsp - 32]       # 8-byte Reload
        mov     r9, qword ptr [rcx + 32]
        mov     rdx, r14
        mulx    rbx, rax, r9
        mov     qword ptr [rsp - 128], rax      # 8-byte Spill
        mov     rdx, r8
        mulx    rbp, rsi, r9
        add     rsi, rbx
        adc     rbp, 0
        mov     rax, qword ptr [rcx + 40]
        mov     rdx, r14
        mulx    rbx, r14, rax
        add     r14, rsi
        adc     rbx, rbp
        mov     rdx, r8
        mulx    r8, r12, rax
        mov     r10, rax
        setb    dl
        add     r12, rbx
        movzx   edx, dl
        adc     r8, rdx
        mov     rdx, r15
        mov     qword ptr [rsp - 104], r9       # 8-byte Spill
        mulx    rsi, rax, r9
        mov     qword ptr [rsp + 64], rax       # 8-byte Spill
        mov     rbp, qword ptr [rsp + 56]       # 8-byte Reload
        mov     rdx, rbp
        mulx    rcx, rbx, r9
        mov     rdx, r15
        mov     qword ptr [rsp - 64], r10       # 8-byte Spill
        mulx    rax, rdx, r10
        add     rbx, rsi
        adc     rcx, 0
        add     rdx, rbx
        mov     qword ptr [rsp + 144], rdx      # 8-byte Spill
        mov     rdx, rbp
        mulx    r13, rsi, r10
        adc     rax, rcx
        setb    cl
        add     rsi, rax
        movzx   eax, cl
        adc     r13, rax
        add     rsi, qword ptr [rsp - 128]      # 8-byte Folded Reload
        adc     r13, r14
        adc     r12, 0
        mov     rbx, qword ptr [rsp - 32]       # 8-byte Reload
        mov     r9, qword ptr [rbx + 48]
        mov     qword ptr [rsp + 160], r15      # 8-byte Spill
        mov     rdx, r15
        mulx    rax, r11, r9
        adc     r8, 0
        mov     rdx, rbp
        mov     r14, rbp
        mulx    rbp, rcx, r9
        add     rcx, rax
        adc     rbp, 0
        mov     r10, qword ptr [rbx + 56]
        mov     rdx, r15
        mulx    rax, rdx, r10
        add     rdx, rcx
        mov     rbx, rdx
        adc     rax, rbp
        mov     rdx, r14
        mulx    rcx, r15, r10
        setb    dl
        add     r15, rax
        movzx   eax, dl
        adc     rcx, rax
        add     r11, rsi
        mov     qword ptr [rsp + 136], r11      # 8-byte Spill
        adc     rbx, r13
        adc     r15, 0
        adc     rcx, 0
        add     r15, r12
        mov     rax, qword ptr [rsp + 16]       # 8-byte Reload
        mov     rdx, rax
        mov     qword ptr [rsp - 128], r9       # 8-byte Spill
        mulx    r14, r12, r9
        mov     r11, qword ptr [rsp + 8]        # 8-byte Reload
        mov     rdx, r11
        mulx    rbp, rsi, r9
        adc     rcx, r8
        setb    r13b
        add     rsi, r14
        mov     rdx, rax
        mov     qword ptr [rsp - 112], r10      # 8-byte Spill
        mulx    rax, r8, r10
        adc     rbp, 0
        add     r8, rsi
        adc     rax, rbp
        mov     rdx, r11
        mulx    rsi, r11, r10
        setb    dl
        add     r11, rax
        movzx   eax, dl
        adc     rsi, rax
        add     r12, r15
        adc     r8, rcx
        movzx   eax, r13b
        adc     r11, rax
        adc     rsi, 0
        mov     rax, qword ptr [rsp]            # 8-byte Reload
        add     qword ptr [rsp + 64], rax       # 8-byte Folded Spill
        mov     rax, qword ptr [rsp - 8]        # 8-byte Reload
        adc     qword ptr [rsp + 144], rax      # 8-byte Folded Spill
        mov     rax, qword ptr [rsp - 24]       # 8-byte Reload
        adc     qword ptr [rsp + 136], rax      # 8-byte Folded Spill
        adc     rbx, qword ptr [rsp - 16]       # 8-byte Folded Reload
        mov     qword ptr [rsp + 168], rbx      # 8-byte Spill
        adc     r12, 0
        adc     r8, 0
        adc     r11, 0
        adc     rsi, 0
        add     r12, qword ptr [rsp - 120]      # 8-byte Folded Reload
        mov     qword ptr [rsp], r12            # 8-byte Spill
        adc     r8, qword ptr [rsp - 72]        # 8-byte Folded Reload
        mov     qword ptr [rsp - 72], r8        # 8-byte Spill
        adc     r11, qword ptr [rsp - 96]       # 8-byte Folded Reload
        adc     rsi, qword ptr [rsp - 88]       # 8-byte Folded Reload
        mov     qword ptr [rsp - 96], rsi       # 8-byte Spill
        mov     rcx, qword ptr [rsp - 40]       # 8-byte Reload
        mov     rdx, rcx
        mov     rbp, qword ptr [rsp - 104]      # 8-byte Reload
        mulx    r8, rax, rbp
        mov     qword ptr [rsp - 120], rax      # 8-byte Spill
        mov     rax, qword ptr [rsp - 48]       # 8-byte Reload
        mov     rdx, rax
        mulx    rbx, rsi, rbp
        mov     r14, rbp
        setb    byte ptr [rsp - 16]             # 1-byte Folded Spill
        add     rsi, r8
        adc     rbx, 0
        mov     rdx, rcx
        mov     rcx, qword ptr [rsp - 64]       # 8-byte Reload
        mulx    rbp, r9, rcx
        mov     rdx, rax
        mulx    r10, r15, rcx
        mov     r8, rcx
        add     r9, rsi
        adc     rbp, rbx
        setb    dl
        add     r15, rbp
        movzx   edx, dl
        adc     r10, rdx
        mov     r12, qword ptr [rsp + 32]       # 8-byte Reload
        mov     rdx, r12
        mulx    rsi, rax, r14
        mov     qword ptr [rsp - 8], rax        # 8-byte Spill
        mov     rax, qword ptr [rsp + 24]       # 8-byte Reload
        mov     rdx, rax
        mulx    rbp, rbx, r14
        add     rbx, rsi
        adc     rbp, 0
        mov     rdx, r12
        mulx    rcx, rdx, rcx
        add     rdx, rbx
        mov     qword ptr [rsp - 24], rdx       # 8-byte Spill
        adc     rcx, rbp
        mov     rdx, rax
        mov     rbp, rax
        mulx    r13, r8, r8
        setb    dl
        add     r8, rcx
        movzx   ecx, dl
        adc     r13, rcx
        add     r8, qword ptr [rsp - 120]       # 8-byte Folded Reload
        adc     r13, r9
        adc     r15, 0
        adc     r10, 0
        mov     rdx, r12
        mov     rcx, qword ptr [rsp - 128]      # 8-byte Reload
        mulx    r9, rax, rcx
        mov     qword ptr [rsp - 120], rax      # 8-byte Spill
        mov     rdx, rbp
        mov     rax, rbp
        mulx    rbp, rcx, rcx
        add     rcx, r9
        adc     rbp, 0
        mov     rdx, r12
        mov     rsi, qword ptr [rsp - 112]      # 8-byte Reload
        mulx    rbx, r14, rsi
        add     r14, rcx
        adc     rbx, rbp
        mov     rdx, rax
        mulx    r9, rax, rsi
        setb    cl
        add     rax, rbx
        movzx   ecx, cl
        adc     r9, rcx
        mov     r12, qword ptr [rsp - 120]      # 8-byte Reload
        add     r12, r8
        adc     r14, r13
        adc     rax, 0
        adc     r9, 0
        mov     rbp, qword ptr [rsp - 40]       # 8-byte Reload
        mov     rdx, rbp
        mov     rcx, qword ptr [rsp - 128]      # 8-byte Reload
        mulx    r13, rdx, rcx
        mov     qword ptr [rsp - 88], rdx       # 8-byte Spill
        mov     rbx, qword ptr [rsp - 48]       # 8-byte Reload
        mov     rdx, rbx
        mulx    r8, rsi, rcx
        add     rax, r15
        adc     r9, r10
        mov     rdx, rbp
        mov     rcx, qword ptr [rsp - 112]      # 8-byte Reload
        mulx    rbp, rdx, rcx
        setb    r15b
        add     rsi, r13
        adc     r8, 0
        add     rdx, rsi
        mov     rsi, rdx
        mov     rdx, rbx
        mulx    rdx, rbx, rcx
        adc     rbp, r8
        setb    cl
        add     rbx, rbp
        movzx   ecx, cl
        adc     rdx, rcx
        mov     rcx, qword ptr [rsp - 88]       # 8-byte Reload
        add     rcx, rax
        adc     rsi, r9
        movzx   eax, r15b
        adc     rbx, rax
        adc     rdx, 0
        mov     rax, qword ptr [rsp]            # 8-byte Reload
        add     qword ptr [rsp - 8], rax        # 8-byte Folded Spill
        mov     rax, qword ptr [rsp - 72]       # 8-byte Reload
        adc     qword ptr [rsp - 24], rax       # 8-byte Folded Spill
        adc     r12, r11
        mov     qword ptr [rsp - 120], r12      # 8-byte Spill
        adc     r14, qword ptr [rsp - 96]       # 8-byte Folded Reload
        mov     qword ptr [rsp + 120], r14      # 8-byte Spill
        movzx   eax, byte ptr [rsp - 16]        # 1-byte Folded Reload
        adc     rcx, rax
        mov     qword ptr [rsp - 88], rcx       # 8-byte Spill
        adc     rsi, 0
        mov     qword ptr [rsp + 112], rsi      # 8-byte Spill
        adc     rbx, 0
        mov     qword ptr [rsp + 96], rbx       # 8-byte Spill
        adc     rdx, 0
        mov     qword ptr [rsp + 104], rdx      # 8-byte Spill
        mov     rax, qword ptr [rsp - 56]       # 8-byte Reload
        mov     rbx, qword ptr [rax + 80]
        mov     rdx, rbx
        mov     qword ptr [rsp - 72], rbx       # 8-byte Spill
        mov     rcx, qword ptr [rsp - 104]      # 8-byte Reload
        mulx    r8, r14, rcx
        xor     edx, edx
        mulx    rbp, rsi, rcx
        mov     r12, rcx
        mov     rdx, rbx
        mov     rbx, qword ptr [rsp - 64]       # 8-byte Reload
        mulx    rcx, r9, rbx
        add     rsi, r8
        adc     rbp, 0
        add     r9, rsi
        adc     rcx, rbp
        setb    r8b
        xor     edx, edx
        mulx    r11, r15, rbx
        add     r15, rcx
        mov     r10, qword ptr [rax + 72]
        mov     rbp, qword ptr [rax + 64]
        mov     rdx, rbp
        mulx    rcx, rdx, r12
        mov     qword ptr [rsp + 88], rdx       # 8-byte Spill
        mov     rdx, r10
        mulx    rax, rsi, r12
        movzx   edx, r8b
        adc     r11, rdx
        add     rsi, rcx
        mov     rdx, rbp
        mulx    rcx, rdx, rbx
        adc     rax, 0
        add     rdx, rsi
        mov     qword ptr [rsp + 80], rdx       # 8-byte Spill
        adc     rcx, rax
        mov     rdx, r10
        mulx    r12, r13, rbx
        setb    dl
        add     r13, rcx
        movzx   ecx, dl
        adc     r12, rcx
        add     r13, r14
        adc     r12, r9
        mov     rax, rbp
        mov     qword ptr [rsp], rbp            # 8-byte Spill
        mov     rdx, rbp
        mov     r8, qword ptr [rsp - 128]       # 8-byte Reload
        mulx    rcx, r9, r8
        mov     rdx, r10
        mov     qword ptr [rsp - 16], r10       # 8-byte Spill
        mulx    rbp, rbx, r8
        adc     r15, 0
        adc     r11, 0
        add     rbx, rcx
        mov     rdx, rax
        mov     r14, qword ptr [rsp - 112]      # 8-byte Reload
        mulx    rsi, rax, r14
        adc     rbp, 0
        add     rax, rbx
        adc     rsi, rbp
        mov     rdx, r10
        mulx    rbx, rcx, r14
        setb    dl
        add     rcx, rsi
        movzx   edx, dl
        adc     rbx, rdx
        add     r9, r13
        mov     qword ptr [rsp + 72], r9        # 8-byte Spill
        adc     rax, r12
        mov     qword ptr [rsp + 152], rax      # 8-byte Spill
        adc     rcx, 0
        adc     rbx, 0
        add     rcx, r15
        mov     r13, qword ptr [rsp - 72]       # 8-byte Reload
        mov     rdx, r13
        mulx    rax, r9, r8
        adc     rbx, r11
        setb    r11b
        xor     edx, edx
        mulx    rsi, rbp, r8
        add     rbp, rax
        adc     rsi, 0
        mov     rdx, r13
        mulx    rax, rdx, r14
        add     rdx, rbp
        mov     r8, rdx
        adc     rax, rsi
        setb    sil
        xor     edx, edx
        mulx    rbp, rdx, r14
        add     rdx, rax
        movzx   eax, sil
        adc     rbp, rax
        add     r9, rcx
        mov     qword ptr [rsp - 56], r9        # 8-byte Spill
        adc     r8, rbx
        mov     qword ptr [rsp - 96], r8        # 8-byte Spill
        movzx   eax, r11b
        adc     rdx, rax
        mov     qword ptr [rsp - 104], rdx      # 8-byte Spill
        mov     rdx, r13
        mov     rcx, qword ptr [rsp + 48]       # 8-byte Reload
        mulx    rax, r15, rcx
        adc     rbp, 0
        mov     qword ptr [rsp - 64], rbp       # 8-byte Spill
        xor     edx, edx
        mulx    rbp, rsi, rcx
        mov     r14, rcx
        add     rsi, rax
        adc     rbp, 0
        mov     rdx, r13
        mov     rcx, qword ptr [rsp + 40]       # 8-byte Reload
        mulx    rax, r8, rcx
        add     r8, rsi
        adc     rax, rbp
        setb    r12b
        xor     edx, edx
        mulx    r11, r9, rcx
        mov     r13, rcx
        add     r9, rax
        mov     r10, qword ptr [rsp]            # 8-byte Reload
        mov     rdx, r10
        mulx    rax, rcx, r14
        mov     qword ptr [rsp - 128], rcx      # 8-byte Spill
        mov     rbp, qword ptr [rsp - 16]       # 8-byte Reload
        mov     rdx, rbp
        mulx    rbx, rsi, r14
        movzx   edx, r12b
        adc     r11, rdx
        add     rsi, rax
        mov     rdx, r10
        mulx    rcx, rax, r13
        adc     rbx, 0
        add     rax, rsi
        mov     qword ptr [rsp - 112], rax      # 8-byte Spill
        adc     rcx, rbx
        mov     rdx, rbp
        mulx    r12, rsi, r13
        setb    dl
        add     rsi, rcx
        movzx   ecx, dl
        adc     r12, rcx
        add     rsi, r15
        adc     r12, r8
        mov     rdx, r10
        mov     r15, qword ptr [rsp - 80]       # 8-byte Reload
        mulx    rcx, r8, r15
        mov     rdx, rbp
        mov     r14, rbp
        mulx    rbp, rbx, r15
        adc     r9, 0
        adc     r11, 0
        add     rbx, rcx
        mov     rdx, r10
        mov     r10, qword ptr [rsp + 128]      # 8-byte Reload
        mulx    rax, r13, r10
        adc     rbp, 0
        add     r13, rbx
        adc     rax, rbp
        mov     rdx, r14
        mulx    rbx, rcx, r10
        setb    dl
        add     rcx, rax
        movzx   eax, dl
        adc     rbx, rax
        add     r8, rsi
        mov     r14, r8
        adc     r13, r12
        adc     rcx, 0
        adc     rbx, 0
        add     rcx, r9
        mov     rax, qword ptr [rsp - 72]       # 8-byte Reload
        mov     rdx, rax
        mulx    r9, r12, r15
        adc     rbx, r11
        setb    r8b
        xor     edx, edx
        mulx    rsi, rbp, r15
        add     rbp, r9
        adc     rsi, 0
        mov     rdx, rax
        mulx    rax, r9, r10
        add     r9, rbp
        adc     rax, rsi
        setb    sil
        xor     edx, edx
        mulx    rdx, rbp, r10
        add     rbp, rax
        movzx   eax, sil
        adc     rdx, rax
        add     r12, rcx
        adc     r9, rbx
        movzx   eax, r8b
        adc     rbp, rax
        adc     rdx, 0
        add     r12, qword ptr [rsp + 88]       # 8-byte Folded Reload
        adc     r9, qword ptr [rsp + 80]        # 8-byte Folded Reload
        adc     rbp, qword ptr [rsp + 72]       # 8-byte Folded Reload
        mov     r8, rbp
        adc     rdx, qword ptr [rsp + 152]      # 8-byte Folded Reload
        mov     rbx, rdx
        mov     rax, qword ptr [rsp - 56]       # 8-byte Reload
        adc     rax, 0
        mov     rcx, qword ptr [rsp - 96]       # 8-byte Reload
        adc     rcx, 0
        mov     rdx, qword ptr [rsp - 104]      # 8-byte Reload
        adc     rdx, 0
        mov     rbp, qword ptr [rsp - 64]       # 8-byte Reload
        adc     rbp, 0
        mov     rsi, qword ptr [rsp - 128]      # 8-byte Reload
        add     rsi, qword ptr [rsp - 8]        # 8-byte Folded Reload
        mov     qword ptr [rsp - 128], rsi      # 8-byte Spill
        mov     rsi, qword ptr [rsp - 112]      # 8-byte Reload
        adc     rsi, qword ptr [rsp - 24]       # 8-byte Folded Reload
        mov     qword ptr [rsp - 112], rsi      # 8-byte Spill
        adc     r14, qword ptr [rsp - 120]      # 8-byte Folded Reload
        mov     qword ptr [rsp + 48], r14       # 8-byte Spill
        adc     r13, qword ptr [rsp + 120]      # 8-byte Folded Reload
        mov     qword ptr [rsp + 40], r13       # 8-byte Spill
        adc     r12, qword ptr [rsp - 88]       # 8-byte Folded Reload
        mov     qword ptr [rsp - 8], r12        # 8-byte Spill
        adc     r9, qword ptr [rsp + 112]       # 8-byte Folded Reload
        mov     qword ptr [rsp - 24], r9        # 8-byte Spill
        adc     r8, qword ptr [rsp + 96]        # 8-byte Folded Reload
        mov     qword ptr [rsp + 120], r8       # 8-byte Spill
        adc     rbx, qword ptr [rsp + 104]      # 8-byte Folded Reload
        mov     qword ptr [rsp + 128], rbx      # 8-byte Spill
        adc     rax, 0
        mov     qword ptr [rsp - 56], rax       # 8-byte Spill
        adc     rcx, 0
        mov     qword ptr [rsp - 96], rcx       # 8-byte Spill
        adc     rdx, 0
        mov     qword ptr [rsp - 104], rdx      # 8-byte Spill
        mov     r12, qword ptr [rsp - 32]       # 8-byte Reload
        mov     r10, qword ptr [r12 + 64]
        mov     r9, qword ptr [rsp - 40]        # 8-byte Reload
        mov     rdx, r9
        mulx    rax, rcx, r10
        mov     qword ptr [rsp - 80], rcx       # 8-byte Spill
        mov     r15, qword ptr [rsp - 48]       # 8-byte Reload
        mov     rdx, r15
        mulx    rsi, rcx, r10
        adc     rbp, 0
        mov     qword ptr [rsp - 64], rbp       # 8-byte Spill
        mov     rbp, qword ptr [r12 + 72]
        mov     r8, r12
        mov     rdx, r9
        mulx    rbx, r11, rbp
        setb    byte ptr [rsp - 88]             # 1-byte Folded Spill
        add     rcx, rax
        adc     rsi, 0
        add     r11, rcx
        mov     rdx, r15
        mulx    r14, rcx, rbp
        mov     r12, rbp
        adc     rbx, rsi
        setb    sil
        add     rcx, rbx
        mov     rbx, qword ptr [rsp + 32]       # 8-byte Reload
        mov     rdx, rbx
        mulx    r13, rax, r10
        mov     qword ptr [rsp + 112], rax      # 8-byte Spill
        movzx   edx, sil
        adc     r14, rdx
        mov     rax, qword ptr [rsp + 24]       # 8-byte Reload
        mov     rdx, rax
        mulx    rbp, rsi, r10
        add     rsi, r13
        adc     rbp, 0
        mov     rdx, rbx
        mov     r13, rbx
        mulx    rbx, rdx, r12
        add     rdx, rsi
        mov     qword ptr [rsp + 104], rdx      # 8-byte Spill
        adc     rbx, rbp
        mov     rdx, rax
        mov     rbp, rax
        mulx    rax, rsi, r12
        setb    dl
        add     rsi, rbx
        movzx   edx, dl
        adc     rax, rdx
        add     rsi, qword ptr [rsp - 80]       # 8-byte Folded Reload
        adc     rax, r11
        mov     r8, qword ptr [r8 + 80]
        adc     rcx, 0
        adc     r14, 0
        mov     rdx, r13
        mulx    r11, rbx, r8
        mov     rdx, rbp
        mulx    rbp, rdx, r8
        add     rdx, r11
        adc     rbp, 0
        setb    r11b
        add     rbx, rsi
        mov     qword ptr [rsp + 32], rbx       # 8-byte Spill
        adc     rdx, rax
        mov     qword ptr [rsp + 24], rdx       # 8-byte Spill
        adc     rbp, 0
        movzx   eax, r11b
        adc     rax, 0
        add     rbp, rcx
        mov     rdx, r9
        mulx    r9, rcx, r8
        adc     rax, r14
        mov     rdx, r15
        mulx    rsi, rbx, r8
        setb    dl
        add     rbx, r9
        adc     rsi, 0
        setb    r15b
        add     rcx, rbp
        mov     qword ptr [rsp - 80], rcx       # 8-byte Spill
        adc     rbx, rax
        mov     qword ptr [rsp - 40], rbx       # 8-byte Spill
        movzx   eax, dl
        adc     rsi, rax
        mov     qword ptr [rsp - 48], rsi       # 8-byte Spill
        mov     rsi, qword ptr [rsp + 16]       # 8-byte Reload
        mov     rdx, rsi
        mulx    rbp, rax, r10
        mov     qword ptr [rsp + 72], rax       # 8-byte Spill
        mov     rax, qword ptr [rsp + 8]        # 8-byte Reload
        mov     rdx, rax
        mulx    rcx, rbx, r10
        mov     r11, r10
        movzx   edx, r15b
        adc     rdx, 0
        mov     qword ptr [rsp - 120], rdx      # 8-byte Spill
        add     rbx, rbp
        mov     rdx, rsi
        mov     r10, r12
        mulx    rbp, r15, r12
        adc     rcx, 0
        add     r15, rbx
        adc     rbp, rcx
        mov     rdx, rax
        mulx    r12, r9, r12
        mov     qword ptr [rsp + 80], r10       # 8-byte Spill
        setb    bl
        add     r9, rbp
        mov     rsi, qword ptr [rsp + 160]      # 8-byte Reload
        mov     rdx, rsi
        mov     qword ptr [rsp + 96], r11       # 8-byte Spill
        mulx    rbp, rax, r11
        mov     qword ptr [rsp - 32], rax       # 8-byte Spill
        movzx   edx, bl
        adc     r12, rdx
        mov     rax, qword ptr [rsp + 56]       # 8-byte Reload
        mov     rdx, rax
        mulx    rcx, rbx, r11
        add     rbx, rbp
        adc     rcx, 0
        mov     rdx, rsi
        mulx    rbp, r11, r10
        mov     rdx, rax
        mulx    r13, r14, r10
        add     r11, rbx
        adc     rbp, rcx
        setb    cl
        add     r14, rbp
        movzx   ecx, cl
        adc     r13, rcx
        add     r14, qword ptr [rsp + 72]       # 8-byte Folded Reload
        adc     r13, r15
        adc     r9, 0
        mov     rdx, rsi
        mulx    rcx, r10, r8
        adc     r12, 0
        mov     rdx, rax
        mulx    rbp, rax, r8
        add     rax, rcx
        adc     rbp, 0
        setb    cl
        add     r10, r14
        adc     rax, r13
        mov     r13, rax
        adc     rbp, 0
        movzx   ecx, cl
        adc     rcx, 0
        mov     rdx, qword ptr [rsp + 16]       # 8-byte Reload
        mov     qword ptr [rsp + 88], r8        # 8-byte Spill
        mulx    rbx, rsi, r8
        mov     rdx, qword ptr [rsp + 8]        # 8-byte Reload
        mulx    r14, r15, r8
        add     rbp, r9
        adc     rcx, r12
        setb    al
        add     r15, rbx
        adc     r14, 0
        setb    dl
        add     rsi, rbp
        adc     r15, rcx
        movzx   eax, al
        adc     r14, rax
        movzx   eax, dl
        adc     rax, 0
        add     rsi, qword ptr [rsp + 112]      # 8-byte Folded Reload
        mov     rbx, rsi
        adc     r15, qword ptr [rsp + 104]      # 8-byte Folded Reload
        adc     r14, qword ptr [rsp + 32]       # 8-byte Folded Reload
        adc     rax, qword ptr [rsp + 24]       # 8-byte Folded Reload
        mov     r8, rax
        mov     rsi, qword ptr [rsp - 80]       # 8-byte Reload
        adc     rsi, 0
        mov     rcx, qword ptr [rsp - 40]       # 8-byte Reload
        adc     rcx, 0
        mov     rdx, qword ptr [rsp - 48]       # 8-byte Reload
        adc     rdx, 0
        mov     rbp, qword ptr [rsp - 120]      # 8-byte Reload
        adc     rbp, 0
        mov     rax, qword ptr [rsp - 32]       # 8-byte Reload
        add     rax, qword ptr [rsp - 128]      # 8-byte Folded Reload
        mov     qword ptr [rsp - 32], rax       # 8-byte Spill
        adc     r11, qword ptr [rsp - 112]      # 8-byte Folded Reload
        mov     qword ptr [rsp + 16], r11       # 8-byte Spill
        adc     r10, qword ptr [rsp + 48]       # 8-byte Folded Reload
        mov     qword ptr [rsp + 8], r10        # 8-byte Spill
        adc     r13, qword ptr [rsp + 40]       # 8-byte Folded Reload
        mov     qword ptr [rsp - 128], r13      # 8-byte Spill
        adc     rbx, qword ptr [rsp - 8]        # 8-byte Folded Reload
        mov     qword ptr [rsp - 112], rbx      # 8-byte Spill
        adc     r15, qword ptr [rsp - 24]       # 8-byte Folded Reload
        adc     r14, qword ptr [rsp + 120]      # 8-byte Folded Reload
        adc     r8, qword ptr [rsp + 128]       # 8-byte Folded Reload
        mov     qword ptr [rsp + 56], r8        # 8-byte Spill
        adc     rsi, 0
        adc     rcx, 0
        adc     rdx, 0
        adc     rbp, 0
        setb    al
        add     rsi, qword ptr [rsp - 56]       # 8-byte Folded Reload
        mov     qword ptr [rsp - 80], rsi       # 8-byte Spill
        adc     rcx, qword ptr [rsp - 96]       # 8-byte Folded Reload
        mov     qword ptr [rsp - 40], rcx       # 8-byte Spill
        adc     rdx, qword ptr [rsp - 104]      # 8-byte Folded Reload
        mov     qword ptr [rsp - 48], rdx       # 8-byte Spill
        adc     rbp, qword ptr [rsp - 64]       # 8-byte Folded Reload
        mov     qword ptr [rsp - 120], rbp      # 8-byte Spill
        mov     rsi, qword ptr [rsp - 72]       # 8-byte Reload
        mov     rdx, rsi
        mov     r10, qword ptr [rsp + 96]       # 8-byte Reload
        mulx    rbx, rcx, r10
        mov     qword ptr [rsp - 104], rcx      # 8-byte Spill
        movzx   eax, al
        movzx   ecx, byte ptr [rsp - 88]        # 1-byte Folded Reload
        adc     rcx, rax
        mov     qword ptr [rsp - 56], rcx       # 8-byte Spill
        setb    byte ptr [rsp - 88]             # 1-byte Folded Spill
        xor     edx, edx
        mulx    rcx, rax, r10
        mov     rbp, r10
        add     rax, rbx
        adc     rcx, 0
        mov     rdx, rsi
        mov     r8, qword ptr [rsp + 80]        # 8-byte Reload
        mulx    rbx, r9, r8
        add     r9, rax
        adc     rbx, rcx
        setb    cl
        xor     edx, edx
        mulx    rax, r13, r8
        add     r13, rbx
        mov     r12, qword ptr [rsp]            # 8-byte Reload
        mov     rdx, r12
        mulx    r10, rdx, r10
        mov     qword ptr [rsp - 96], rdx       # 8-byte Spill
        movzx   ecx, cl
        adc     rax, rcx
        mov     r11, qword ptr [rsp - 16]       # 8-byte Reload
        mov     rdx, r11
        mulx    rbp, rcx, rbp
        add     rcx, r10
        adc     rbp, 0
        mov     rdx, r12
        mulx    rbx, r10, r8
        mov     rdx, r11
        mulx    r8, rsi, r8
        add     r10, rcx
        adc     rbx, rbp
        setb    cl
        add     rsi, rbx
        movzx   ecx, cl
        adc     r8, rcx
        add     rsi, qword ptr [rsp - 104]      # 8-byte Folded Reload
        adc     r8, r9
        adc     r13, 0
        mov     rdx, r12
        mov     rcx, qword ptr [rsp + 88]       # 8-byte Reload
        mulx    r9, r12, rcx
        adc     rax, 0
        mov     rdx, r11
        mulx    rbx, rbp, rcx
        add     rbp, r9
        adc     rbx, 0
        setb    dl
        add     r12, rsi
        adc     rbp, r8
        adc     rbx, 0
        movzx   esi, dl
        adc     rsi, 0
        add     rbx, r13
        adc     rsi, rax
        mov     rdx, qword ptr [rsp - 72]       # 8-byte Reload
        mulx    rax, rdx, rcx
        add     rdx, rbx
        adc     rax, rsi
        mov     rbx, qword ptr [rsp - 96]       # 8-byte Reload
        add     rbx, qword ptr [rsp - 80]       # 8-byte Folded Reload
        adc     r10, qword ptr [rsp - 40]       # 8-byte Folded Reload
        adc     r12, qword ptr [rsp - 48]       # 8-byte Folded Reload
        adc     rbp, qword ptr [rsp - 120]      # 8-byte Folded Reload
        adc     rdx, qword ptr [rsp - 56]       # 8-byte Folded Reload
        movzx   esi, byte ptr [rsp - 88]        # 1-byte Folded Reload
        adc     rax, rsi
        mov     rsi, qword ptr [rsp + 200]      # 8-byte Reload
        mov     qword ptr [rdi], rsi
        mov     rsi, qword ptr [rsp + 192]      # 8-byte Reload
        mov     qword ptr [rdi + 8], rsi
        mov     rsi, qword ptr [rsp + 184]      # 8-byte Reload
        mov     qword ptr [rdi + 16], rsi
        mov     rsi, qword ptr [rsp + 176]      # 8-byte Reload
        mov     qword ptr [rdi + 24], rsi
        mov     rsi, qword ptr [rsp + 64]       # 8-byte Reload
        mov     qword ptr [rdi + 32], rsi
        mov     rsi, qword ptr [rsp + 144]      # 8-byte Reload
        mov     qword ptr [rdi + 40], rsi
        mov     rsi, qword ptr [rsp + 136]      # 8-byte Reload
        mov     qword ptr [rdi + 48], rsi
        mov     rsi, qword ptr [rsp + 168]      # 8-byte Reload
        mov     qword ptr [rdi + 56], rsi
        mov     rsi, qword ptr [rsp - 32]       # 8-byte Reload
        mov     qword ptr [rdi + 64], rsi
        mov     rcx, qword ptr [rsp + 16]       # 8-byte Reload
        mov     qword ptr [rdi + 72], rcx
        mov     rcx, qword ptr [rsp + 8]        # 8-byte Reload
        mov     qword ptr [rdi + 80], rcx
        mov     rcx, qword ptr [rsp - 128]      # 8-byte Reload
        mov     qword ptr [rdi + 88], rcx
        mov     rcx, qword ptr [rsp - 112]      # 8-byte Reload
        mov     qword ptr [rdi + 96], rcx
        mov     qword ptr [rdi + 104], r15
        mov     qword ptr [rdi + 112], r14
        mov     rcx, qword ptr [rsp + 56]       # 8-byte Reload
        mov     qword ptr [rdi + 120], rcx
        mov     qword ptr [rdi + 128], rbx
        mov     qword ptr [rdi + 136], r10
        mov     qword ptr [rdi + 144], r12
        mov     qword ptr [rdi + 152], rbp
        mov     qword ptr [rdi + 160], rdx
        mov     qword ptr [rdi + 168], rax
        add     rsp, 208
        pop     rbx
        pop     r12
        pop     r13
        pop     r14
        pop     r15
        pop     rbp
        ret