hy = 0xffbbffffffffffffc020
w = hy//2
x = 0xefffffffffffffe00000000000000000
p = 0x9401ff90f28bffb0c610fb10bf9e0fefd59211629a7991563c5e468d43ec9cfe1549fd59c20ab5b9a7cda7f27a0067b8303eeb4b31555cf4f24050ed155555cd7fa7a5f8aaaaaaad47ede1a6aaaaaaaab69e6dcb
r = x**2 -x + 1
weil = p - x
weil_r = (3*weil) // r 

old_weil = ((p + x**2 -2*x + 1)//r)
old_weil_r =3*( old_weil // r)


my3c = (1 + 3*w+ 9*(w**2) )*(x**2) + (-2-9*(w**2))*x + (1+6*w+9*w**2)
myold3c = (4 + 6*w + 9*(w**2))*(x**2) + (-2-9*(w**2))*x + (1+3*w+9*w**2)
print("new weil_r:",hex(weil_r))
print("my new 3c :",hex(my3c))
print("  ")
print("old_weil_r:",hex(old_weil_r))
print("my old 3c :",hex(myold3c))
print("  ")
print("  ")

print("sub",weil_r-my3c)
