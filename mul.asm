global fp_mul11_1_asm
global fp_mul11_1_add_asm

segment .text

fp_mul11_1_asm:
        mulx    r8,  r9,  qword    [rsi]     ;mulx
        mov     qword  [rdi], r9             ;[rdi]    = [0]*[B]:L
        mulx    r10, r11, qword  [rsi + 8]   ;mulx
        add     r8,  r11                        ;[0]*[B]:H + [1]*[B]:L carry goes to [rdi+16]
        mov     qword  [rdi + 8], r8         ;[rdi+ 8] = [0]*[B]:H + [1]*[B]:L

        mulx    r8,   r9, qword    [rsi + 16];mulx
        adc     r9,   r10                       ;[1]*[B]:H + [2]*[B]:L carry goes to [rdi+24]
        mov     qword  [rdi + 16], r9        ;[rdi+16] = [1]*[B]:H + [2]*[B]:L
        mulx    r10, r11, qword  [rsi + 24]  ;mulx
        adc     r11,   r8                       ;[2]*[B]:H + [3]*[B]:L carry goes to [rdi+32]
        mov     qword  [rdi + 24], r11       ;[rdi+24] = [2]*[B]:H + [3]*[B]:L

        mulx    r8,   r9, qword    [rsi + 32];mulx
        adc     r9,   r10                       ;[3]*[B]:H + [4]*[B]:L carry goes to [rdi+40]
        mov     qword  [rdi + 32], r9        ;[rdi+24] = [3]*[B]:H + [4]*[B]:L
        mulx    r10, r11, qword  [rsi + 40]  ;mulx
        adc     r11,   r8                       ;[4]*[B]:H + [5]*[B]:L carry goes to [rdi+48]
        mov     qword  [rdi + 40], r11       ;[rdi+32] = [4]*[B]:H + [5]*[B]:L

        mulx    r8,   r9, qword    [rsi + 48];mulx
        adc     r9,   r10                       ;[5]*[B]:H + [6]*[B]:L carry goes to [rdi+56]
        mov     qword  [rdi + 48], r9        ;[rdi+40] = [5]*[B]:H + [6]*[B]:L
        mulx    r10, r11, qword  [rsi + 56]  ;mulx
        adc     r11,   r8                       ;[6]*[B]:H + [7]*[B]:L carry goes to [rdi+64]
        mov     qword  [rdi + 56], r11       ;[rdi+48] = [6]*[B]:H + [7]*[B]:L

        mulx    r8,   r9, qword    [rsi + 64];mulx
        adc     r9,   r10                       ;[7]*[B]:H + [8]*[B]:L carry goes to [rdi+72]
        mov     qword  [rdi + 64], r9        ;[rdi+40] = [7]*[B]:H + [8]*[B]:L
        mulx    r10, r11, qword  [rsi + 72]  ;mulx
        adc     r11,   r8                       ;[8]*[B]:H + [9]*[B]:L carry goes to [rdi+80]
        mov     qword  [rdi + 72], r11       ;[rdi+48] = [8]*[B]:H + [9]*[B]:L

        mulx    r8,   r9, qword    [rsi + 80];mulx
        adc     r9,   r10                       ;[9]*[B]:H + [10]*[B]:L carry goes to [rdi+88]
        mov     qword  [rdi + 80], r9        ;[rdi+40] = [9]*[B]:H + [10]*[B]:L
        adc     r8 ,0
        mov     qword  [rdi + 88], r8       ;[rdi+48] = [10]*[B]:H + carry

        mov     qword  [rdi + 96], 0
        mov     qword  [rdi + 104], 0
        mov     qword  [rdi + 112], 0
        mov     qword  [rdi + 120], 0
        mov     qword  [rdi + 128], 0
        mov     qword  [rdi + 136], 0
        mov     qword  [rdi + 144], 0
        mov     qword  [rdi + 152], 0
        mov     qword  [rdi + 160], 0
        mov     qword  [rdi + 168], 0

        ret

fp_mul11_1_add_asm:   
        mulx    r8,  r9,  qword    [rsi]     ;mulx
        add     qword  [rdi], r9   
        mulx    r10, r11, qword  [rsi + 8]   ;mulx
        adc     r8,  r11                        ;[0]*[B]:H + [1]*[B]:L carry goes to [rdi+16]
        adc     qword  [rdi + 8], r8         ;[rdi+ 8] = [0]*[B]:H + [1]*[B]:L

        mulx    r8,   r9, qword    [rsi + 16];mulx
        adc     r9,   r10                       ;[1]*[B]:H + [2]*[B]:L carry goes to [rdi+24]
        adc     qword  [rdi + 16], r9        ;[rdi+16] = [1]*[B]:H + [2]*[B]:L
        mulx    r10, r11, qword  [rsi + 24]  ;mulx
        adc     r11,   r8                       ;[2]*[B]:H + [3]*[B]:L carry goes to [rdi+32]
        adc     qword  [rdi + 24], r11       ;[rdi+24] = [2]*[B]:H + [3]*[B]:L

        mulx    r8,   r9, qword    [rsi + 32];mulx
        adc     r9,   r10                       ;[3]*[B]:H + [4]*[B]:L carry goes to [rdi+40]
        adc     qword  [rdi + 32], r9        ;[rdi+24] = [3]*[B]:H + [4]*[B]:L
        mulx    r10, r11, qword  [rsi + 40]  ;mulx
        adc     r11,   r8                       ;[4]*[B]:H + [5]*[B]:L carry goes to [rdi+48]
        adc     qword  [rdi + 40], r11       ;[rdi+32] = [4]*[B]:H + [5]*[B]:L

        mulx    r8,   r9, qword    [rsi + 48];mulx
        adc     r9,   r10                       ;[5]*[B]:H + [6]*[B]:L carry goes to [rdi+56]
        adc     qword  [rdi + 48], r9        ;[rdi+40] = [5]*[B]:H + [6]*[B]:L
        mulx    r10, r11, qword  [rsi + 56]  ;mulx
        adc     r11,   r8                       ;[6]*[B]:H + [7]*[B]:L carry goes to [rdi+64]
        adc     qword  [rdi + 56], r11       ;[rdi+48] = [6]*[B]:H + [7]*[B]:L

        mulx    r8,   r9, qword    [rsi + 64];mulx
        adc     r9,   r10                       ;[7]*[B]:H + [8]*[B]:L carry goes to [rdi+72]
        adc     qword  [rdi + 64], r9        ;[rdi+40] = [7]*[B]:H + [8]*[B]:L
        mulx    r10, r11, qword  [rsi + 72]  ;mulx
        adc     r11,   r8                       ;[8]*[B]:H + [9]*[B]:L carry goes to [rdi+80]
        adc     qword  [rdi + 72], r11       ;[rdi+48] = [8]*[B]:H + [9]*[B]:L

        mulx    r8,   r9, qword    [rsi + 80];mulx
        adc     r9,   r10                       ;[9]*[B]:H + [10]*[B]:L carry goes to [rdi+88]
        adc     qword  [rdi + 80], r9        ;[rdi+40] = [9]*[B]:H + [10]*[B]:L
        adc     r8 ,0
        mov     qword  [rdi + 88], r8       ;[rdi+48] = [10]*[B]:H + carry

        ret
