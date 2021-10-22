mul1(unsigned long*, unsigned long const*, unsigned long):                          # @mul1(unsigned long*, unsigned long const*, unsigned long)
        mulx    r8,  r9,  qword ptr   [rsi]     ;mulx
        add     qword ptr [rdi], r9   
        mulx    r10, r11, qword ptr [rsi + 8]   ;mulx
        adc     r8,  r11                        ;[0]*[B]:H + [1]*[B]:L carry goes to [rdi+16]
        adc     qword ptr [rdi + 8], r8         ;[rdi+ 8] = [0]*[B]:H + [1]*[B]:L

        mulx    r8,   r9, qword ptr   [rsi + 16];mulx
        adc     r9,   r10                       ;[1]*[B]:H + [2]*[B]:L carry goes to [rdi+24]
        adc     qword ptr [rdi + 16], r9        ;[rdi+16] = [1]*[B]:H + [2]*[B]:L
        mulx    r10, r11, qword ptr [rsi + 24]  ;mulx
        adc     r11,   r8                       ;[2]*[B]:H + [3]*[B]:L carry goes to [rdi+32]
        adc     qword ptr [rdi + 24], r11       ;[rdi+24] = [2]*[B]:H + [3]*[B]:L

        mulx    r8,   r9, qword ptr   [rsi + 32];mulx
        adc     r9,   r10                       ;[3]*[B]:H + [4]*[B]:L carry goes to [rdi+40]
        adc     qword ptr [rdi + 32], r9        ;[rdi+24] = [3]*[B]:H + [4]*[B]:L
        mulx    r10, r11, qword ptr [rsi + 40]  ;mulx
        adc     r11,   r8                       ;[4]*[B]:H + [5]*[B]:L carry goes to [rdi+48]
        adc     qword ptr [rdi + 40], r11       ;[rdi+32] = [4]*[B]:H + [5]*[B]:L

        mulx    r8,   r9, qword ptr   [rsi + 48];mulx
        adc     r9,   r10                       ;[5]*[B]:H + [6]*[B]:L carry goes to [rdi+56]
        adc     qword ptr [rdi + 48], r9        ;[rdi+40] = [5]*[B]:H + [6]*[B]:L
        mulx    r10, r11, qword ptr [rsi + 56]  ;mulx
        adc     r11,   r8                       ;[6]*[B]:H + [7]*[B]:L carry goes to [rdi+64]
        adc     qword ptr [rdi + 56], r11       ;[rdi+48] = [6]*[B]:H + [7]*[B]:L

        mulx    r8,   r9, qword ptr   [rsi + 64];mulx
        adc     r9,   r10                       ;[7]*[B]:H + [8]*[B]:L carry goes to [rdi+72]
        adc     qword ptr [rdi + 64], r9        ;[rdi+40] = [7]*[B]:H + [8]*[B]:L
        mulx    r10, r11, qword ptr [rsi + 72]  ;mulx
        adc     r11,   r8                       ;[8]*[B]:H + [9]*[B]:L carry goes to [rdi+80]
        adc     qword ptr [rdi + 72], r11       ;[rdi+48] = [8]*[B]:H + [9]*[B]:L

        mulx    r8,   r9, qword ptr   [rsi + 80];mulx
        adc     r9,   r10                       ;[9]*[B]:H + [10]*[B]:L carry goes to [rdi+88]
        adc     qword ptr [rdi + 80], r9        ;[rdi+40] = [9]*[B]:H + [10]*[B]:L
        adc     r8 ,0
        mov     qword ptr [rdi + 88], r8       ;[rdi+48] = [10]*[B]:H + carry

        ret