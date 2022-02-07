**PARAMETERS**  
A pairing implementation based on GMT8-542 curve

𝜒(128bit) = 0xefffffffffffffe00000000000000000  
(HW=58)  
ℎ_𝑡 = −1, 〖 ℎ〗_𝑦 = 0xffbbffffffffffffc020  
  
12p(𝜒) = (3(ℎ_𝑡+1)^2+(〖3(ℎ_𝑦+2)〗^2 )−6 (ℎ_𝑡^2+〖3ℎ〗_𝑦^2+2ℎ_𝑦−1)𝜒+(9ℎ_𝑡^2+27ℎ_𝑦^2+18ℎ_𝑦+7) 𝜒^2−6 (ℎ_𝑡^2−ℎ_𝑡+〖3ℎ〗_𝑦^2+ℎ_𝑦 ) 𝜒^3+(〖3ℎ〗_𝑡^2+(3ℎ_𝑦+1)) 𝜒^4   
  
p(672bit) = 0x9401ff90f28bffb0c610fb10bf9e0fefd59211629a7991563c5e468 d43ec9cfe1549fd59c20ab5b9a7cda7f27a0067b8303eeb4b31555cf4 f24050ed155555cd7fa7a5f8aaaaaaad47ede1a6aaaaaaaab69e6dcb

r(𝜒) = 𝜒^2−𝜒^ +1
  
r(256bit) = 0xe0ffffffffffffc400000000000003ff10000000000000200000000000000001  

t(𝜒) = −𝜒^2 +2𝜒  
  
t = −0xe0ffffffffffffc400000000000003fe20000000000000400000000000000000

**REFERENCE**  
Cocks-Pinch curves of embedding degrees five to eight and optimal ate pairing computation
Aurore Guillevic 1 Simon Masson 1, 2 Emmanuel Thomé 1  