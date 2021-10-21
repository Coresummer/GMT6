mul1(unsigned long*, unsigned long const*, unsigned long):                          # @mul1(unsigned long*, unsigned long const*, unsigned long)
        mulx    r8,  r9,  qword ptr   [rsi]     ;mulx
        mov     qword ptr [rdi], r9             ;[rdi]    = [0]*[B]:L
        mulx    r10, r11, qword ptr [rsi + 8]   ;mulx
        add     r8,  r11                        ;[0]*[B]:H + [1]*[B]:L carry goes to [rdi+16]
        mov     qword ptr [rdi + 8], r8         ;[rdi+ 8] = [0]*[B]:H + [1]*[B]:L

        mulx    r8,   r9, qword ptr   [rsi + 16];mulx
        adc     r9,   r10                       ;[1]*[B]:H + [2]*[B]:L carry goes to [rdi+24]
        mov     qword ptr [rdi + 16], r9        ;[rdi+16] = [1]*[B]:H + [2]*[B]
        mulx    r10, r11, qword ptr [rsi + 24]  ;mulx
        adc     r11,   r8                       ;[2]*[B]:H + [3]*[B]:L carry goes to [rdi+32]
        mov     qword ptr [rdi + 24], r11       ;[rdi+24] = [2]*[B]:H + [3]*[B]

        mulx    r8,   r9, qword ptr   [rsi + 32];mulx
        adc     r9,   r10                       ;[3]*[B]:H + [4]*[B]:L carry goes to [rdi+40]
        mov     qword ptr [rdi + 32], r9        ;[rdi+24] = [3]*[B]:H + [4]*[B]:L
        mulx    r10, r11, qword ptr [rsi + 40]  ;mulx
        adc     r11,   r8                       ;[4]*[B]:H + [5]*[B]:L carry goes to [rdi+48]
        mov     qword ptr [rdi + 40], r11       ;[rdi+32] = [4]*[B]:H + [5]*[B]

        mulx    r8,   r9, qword ptr   [rsi + 48];mulx
        adc     r9,   r10                       ;[5]*[B]:H + [6]*[B]:L carry goes to [rdi+56]
        mov     qword ptr [rdi + 48], r9        ;[rdi+40] = [5]*[B]:H + [6]*[B]:L
        mulx    r10, r11, qword ptr [rsi + 56]  ;mulx
        adc     r11,   r8                       ;[6]*[B]:H + [7]*[B]:L carry goes to [rdi+64]
        mov     qword ptr [rdi + 56], r11       ;[rdi+48] = [6]*[B]:H + [7]*[B]:L

        mulx    r8,   r9, qword ptr   [rsi + 64];mulx
        adc     r9,   r10                       ;[7]*[B]:H + [8]*[B]:L carry goes to [rdi+72]
        mov     qword ptr [rdi + 64], r9        ;[rdi+40] = [7]*[B]:H + [8]*[B]
        mulx    r10, r11, qword ptr [rsi + 72]  ;mulx
        adc     r11,   r8                       ;[8]*[B]:H + [9]*[B]:L carry goes to [rdi+80]
        mov     qword ptr [rdi + 72], r11       ;[rdi+48] = [8]*[B]:H + [9]*[B]:L

        mulx    r8,   r9, qword ptr   [rsi + 80];mulx
        adc     r9,   r10                       ;[9]*[B]:H + [10]*[B]:L carry goes to [rdi+88]
        mov     qword ptr [rdi + 80], r9        ;[rdi+40] = [9]*[B]:H + [10]*[B]:L
        adc     r11 ,0
        mov     qword ptr [rdi + 88], r11       ;[rdi+48] = [10]*[B]:H + carry

        mov     qword ptr [rdi + 96], 0
        mov     qword ptr [rdi + 104], 0
        mov     qword ptr [rdi + 112], 0
        mov     qword ptr [rdi + 120], 0
        mov     qword ptr [rdi + 128], 0
        mov     qword ptr [rdi + 138], 0
        mov     qword ptr [rdi + 146], 0
        mov     qword ptr [rdi + 152], 0
        mov     qword ptr [rdi + 160], 0

        setb    al
        movzx   eax, al
        ret