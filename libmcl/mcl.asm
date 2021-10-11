In archive libmcl.a:

mcl.o:     file format elf64-x86-64


Disassembly of section .text:

0000000000000000 <mcl_init>:
   0:	f3 0f 1e fa          	endbr64 
   4:	55                   	push   %rbp
   5:	48 8b 3d 00 00 00 00 	mov    0x0(%rip),%rdi        # c <mcl_init+0xc>
   c:	e8 00 00 00 00       	callq  11 <mcl_init+0x11>
  11:	31 c0                	xor    %eax,%eax
  13:	5d                   	pop    %rbp
  14:	c3                   	retq   
  15:	f3 0f 1e fa          	endbr64 
  19:	48 89 c7             	mov    %rax,%rdi
  1c:	48 89 d0             	mov    %rdx,%rax
  1f:	e9 00 00 00 00       	jmpq   24 <.LC7+0xb>

Disassembly of section .text._ZNK6cybozu9Exception4whatEv:

0000000000000000 <_ZNK6cybozu9Exception4whatEv>:
   0:	f3 0f 1e fa          	endbr64 
   4:	48 8b 47 08          	mov    0x8(%rdi),%rax
   8:	c3                   	retq   

Disassembly of section .text._ZNK5Xbyak5Error4whatEv:

0000000000000000 <_ZNK5Xbyak5Error4whatEv>:
   0:	f3 0f 1e fa          	endbr64 
   4:	48 63 47 08          	movslq 0x8(%rdi),%rax
   8:	4c 8d 05 00 00 00 00 	lea    0x0(%rip),%r8        # f <_ZNK5Xbyak5Error4whatEv+0xf>
   f:	83 f8 2f             	cmp    $0x2f,%eax
  12:	7f 0b                	jg     1f <_ZNK5Xbyak5Error4whatEv+0x1f>
  14:	48 8b 15 00 00 00 00 	mov    0x0(%rip),%rdx        # 1b <_ZNK5Xbyak5Error4whatEv+0x1b>
  1b:	4c 8b 04 c2          	mov    (%rdx,%rax,8),%r8
  1f:	4c 89 c0             	mov    %r8,%rax
  22:	c3                   	retq   

Disassembly of section .text._ZNK5Xbyak9Allocator10useProtectEv:

0000000000000000 <_ZNK5Xbyak9Allocator10useProtectEv>:
   0:	f3 0f 1e fa          	endbr64 
   4:	b8 01 00 00 00       	mov    $0x1,%eax
   9:	c3                   	retq   

Disassembly of section .text._ZN5Xbyak5ErrorD2Ev:

0000000000000000 <_ZN5Xbyak5ErrorD1Ev>:
   0:	f3 0f 1e fa          	endbr64 
   4:	48 8b 05 00 00 00 00 	mov    0x0(%rip),%rax        # b <_ZN5Xbyak5ErrorD1Ev+0xb>
   b:	48 83 c0 10          	add    $0x10,%rax
   f:	48 89 07             	mov    %rax,(%rdi)
  12:	e9 00 00 00 00       	jmpq   17 <.LC11+0x7>

Disassembly of section .text._ZN6cybozu9ExceptionD2Ev:

0000000000000000 <_ZN6cybozu9ExceptionD1Ev>:
   0:	f3 0f 1e fa          	endbr64 
   4:	48 8b 05 00 00 00 00 	mov    0x0(%rip),%rax        # b <_ZN6cybozu9ExceptionD1Ev+0xb>
   b:	55                   	push   %rbp
   c:	48 89 fd             	mov    %rdi,%rbp
   f:	48 83 c0 10          	add    $0x10,%rax
  13:	48 89 07             	mov    %rax,(%rdi)
  16:	48 8b 7f 08          	mov    0x8(%rdi),%rdi
  1a:	48 8d 45 18          	lea    0x18(%rbp),%rax
  1e:	48 39 c7             	cmp    %rax,%rdi
  21:	74 05                	je     28 <_ZN6cybozu9ExceptionD1Ev+0x28>
  23:	e8 00 00 00 00       	callq  28 <_ZN6cybozu9ExceptionD1Ev+0x28>
  28:	48 89 ef             	mov    %rbp,%rdi
  2b:	5d                   	pop    %rbp
  2c:	e9 00 00 00 00       	jmpq   31 <.LC7+0x18>

Disassembly of section .text._ZN5Xbyak5ErrorD0Ev:

0000000000000000 <_ZN5Xbyak5ErrorD0Ev>:
   0:	f3 0f 1e fa          	endbr64 
   4:	48 8b 05 00 00 00 00 	mov    0x0(%rip),%rax        # b <_ZN5Xbyak5ErrorD0Ev+0xb>
   b:	55                   	push   %rbp
   c:	48 89 fd             	mov    %rdi,%rbp
   f:	48 83 c0 10          	add    $0x10,%rax
  13:	48 89 07             	mov    %rax,(%rdi)
  16:	e8 00 00 00 00       	callq  1b <_ZN5Xbyak5ErrorD0Ev+0x1b>
  1b:	48 89 ef             	mov    %rbp,%rdi
  1e:	be 10 00 00 00       	mov    $0x10,%esi
  23:	5d                   	pop    %rbp
  24:	e9 00 00 00 00       	jmpq   29 <.LC7+0x10>

Disassembly of section .text.unlikely:

0000000000000000 <_ZN5Xbyak13CodeGenerator6setSIBERKNS_6RegExpEii.part.0>:
   0:	50                   	push   %rax
   1:	58                   	pop    %rax
   2:	bf 10 00 00 00       	mov    $0x10,%edi
   7:	50                   	push   %rax
   8:	e8 00 00 00 00       	callq  d <_ZN5Xbyak13CodeGenerator6setSIBERKNS_6RegExpEii.part.0+0xd>
   d:	48 8b 15 00 00 00 00 	mov    0x0(%rip),%rdx        # 14 <_ZN5Xbyak13CodeGenerator6setSIBERKNS_6RegExpEii.part.0+0x14>
  14:	48 8b 35 00 00 00 00 	mov    0x0(%rip),%rsi        # 1b <_ZN5Xbyak13CodeGenerator6setSIBERKNS_6RegExpEii.part.0+0x1b>
  1b:	48 89 c7             	mov    %rax,%rdi
  1e:	48 8b 05 00 00 00 00 	mov    0x0(%rip),%rax        # 25 <_ZN5Xbyak13CodeGenerator6setSIBERKNS_6RegExpEii.part.0+0x25>
  25:	c7 47 08 10 00 00 00 	movl   $0x10,0x8(%rdi)
  2c:	48 83 c0 10          	add    $0x10,%rax
  30:	48 89 07             	mov    %rax,(%rdi)
  33:	e8 00 00 00 00       	callq  38 <_ZNK5Xbyak6RegExp6verifyEv.part.0>

0000000000000038 <_ZNK5Xbyak6RegExp6verifyEv.part.0>:
  38:	50                   	push   %rax
  39:	58                   	pop    %rax
  3a:	bf 10 00 00 00       	mov    $0x10,%edi
  3f:	50                   	push   %rax
  40:	e8 00 00 00 00       	callq  45 <_ZNK5Xbyak6RegExp6verifyEv.part.0+0xd>
  45:	48 8b 15 00 00 00 00 	mov    0x0(%rip),%rdx        # 4c <_ZNK5Xbyak6RegExp6verifyEv.part.0+0x14>
  4c:	48 8b 35 00 00 00 00 	mov    0x0(%rip),%rsi        # 53 <_ZNK5Xbyak6RegExp6verifyEv.part.0+0x1b>
  53:	48 89 c7             	mov    %rax,%rdi
  56:	48 8b 05 00 00 00 00 	mov    0x0(%rip),%rax        # 5d <_ZNK5Xbyak6RegExp6verifyEv.part.0+0x25>
  5d:	c7 47 08 06 00 00 00 	movl   $0x6,0x8(%rdi)
  64:	48 83 c0 10          	add    $0x10,%rax
  68:	48 89 07             	mov    %rax,(%rdi)
  6b:	e8 00 00 00 00       	callq  70 <_ZN5Xbyak13MmapAllocator5allocEm.part.0>

0000000000000070 <_ZN5Xbyak13MmapAllocator5allocEm.part.0>:
  70:	50                   	push   %rax
  71:	58                   	pop    %rax
  72:	bf 10 00 00 00       	mov    $0x10,%edi
  77:	50                   	push   %rax
  78:	e8 00 00 00 00       	callq  7d <_ZN5Xbyak13MmapAllocator5allocEm.part.0+0xd>
  7d:	48 8b 15 00 00 00 00 	mov    0x0(%rip),%rdx        # 84 <_ZN5Xbyak13MmapAllocator5allocEm.part.0+0x14>
  84:	48 8b 35 00 00 00 00 	mov    0x0(%rip),%rsi        # 8b <_ZN5Xbyak13MmapAllocator5allocEm.part.0+0x1b>
  8b:	48 89 c7             	mov    %rax,%rdi
  8e:	48 8b 05 00 00 00 00 	mov    0x0(%rip),%rax        # 95 <_ZN5Xbyak13MmapAllocator5allocEm.part.0+0x25>
  95:	c7 47 08 16 00 00 00 	movl   $0x16,0x8(%rdi)
  9c:	48 83 c0 10          	add    $0x10,%rax
  a0:	48 89 07             	mov    %rax,(%rdi)
  a3:	e8 00 00 00 00       	callq  a8 <_ZN5Xbyak9CodeArray2dbEi.part.0>

00000000000000a8 <_ZN5Xbyak9CodeArray2dbEi.part.0>:
  a8:	50                   	push   %rax
  a9:	58                   	pop    %rax
  aa:	bf 10 00 00 00       	mov    $0x10,%edi
  af:	50                   	push   %rax
  b0:	e8 00 00 00 00       	callq  b5 <_ZN5Xbyak9CodeArray2dbEi.part.0+0xd>
  b5:	48 8b 15 00 00 00 00 	mov    0x0(%rip),%rdx        # bc <_ZN5Xbyak9CodeArray2dbEi.part.0+0x14>
  bc:	48 8b 35 00 00 00 00 	mov    0x0(%rip),%rsi        # c3 <_ZN5Xbyak9CodeArray2dbEi.part.0+0x1b>
  c3:	48 89 c7             	mov    %rax,%rdi
  c6:	48 8b 05 00 00 00 00 	mov    0x0(%rip),%rax        # cd <_ZN5Xbyak9CodeArray2dbEi.part.0+0x25>
  cd:	c7 47 08 02 00 00 00 	movl   $0x2,0x8(%rdi)
  d4:	48 83 c0 10          	add    $0x10,%rax
  d8:	48 89 07             	mov    %rax,(%rdi)
  db:	e8 00 00 00 00       	callq  e0 <_ZN5Xbyak9CodeArray2dbEmm.part.0>

00000000000000e0 <_ZN5Xbyak9CodeArray2dbEmm.part.0>:
  e0:	50                   	push   %rax
  e1:	58                   	pop    %rax
  e2:	bf 10 00 00 00       	mov    $0x10,%edi
  e7:	50                   	push   %rax
  e8:	e8 00 00 00 00       	callq  ed <_ZN5Xbyak9CodeArray2dbEmm.part.0+0xd>
  ed:	48 8b 15 00 00 00 00 	mov    0x0(%rip),%rdx        # f4 <_ZN5Xbyak9CodeArray2dbEmm.part.0+0x14>
  f4:	48 8b 35 00 00 00 00 	mov    0x0(%rip),%rsi        # fb <_ZN5Xbyak9CodeArray2dbEmm.part.0+0x1b>
  fb:	48 89 c7             	mov    %rax,%rdi
  fe:	48 8b 05 00 00 00 00 	mov    0x0(%rip),%rax        # 105 <_ZN5Xbyak9CodeArray2dbEmm.part.0+0x25>
 105:	c7 47 08 0d 00 00 00 	movl   $0xd,0x8(%rdi)
 10c:	48 83 c0 10          	add    $0x10,%rax
 110:	48 89 07             	mov    %rax,(%rdi)
 113:	e8 00 00 00 00       	callq  118 <_ZN5Xbyak9CodeArray14setProtectModeENS0_11ProtectModeEb.part.0>

0000000000000118 <_ZN5Xbyak9CodeArray14setProtectModeENS0_11ProtectModeEb.part.0>:
 118:	50                   	push   %rax
 119:	58                   	pop    %rax
 11a:	bf 10 00 00 00       	mov    $0x10,%edi
 11f:	50                   	push   %rax
 120:	e8 00 00 00 00       	callq  125 <_ZN5Xbyak9CodeArray14setProtectModeENS0_11ProtectModeEb.part.0+0xd>
 125:	48 8b 15 00 00 00 00 	mov    0x0(%rip),%rdx        # 12c <_ZN5Xbyak9CodeArray14setProtectModeENS0_11ProtectModeEb.part.0+0x14>
 12c:	48 8b 35 00 00 00 00 	mov    0x0(%rip),%rsi        # 133 <_ZN5Xbyak9CodeArray14setProtectModeENS0_11ProtectModeEb.part.0+0x1b>
 133:	48 89 c7             	mov    %rax,%rdi
 136:	48 8b 05 00 00 00 00 	mov    0x0(%rip),%rax        # 13d <_ZN5Xbyak9CodeArray14setProtectModeENS0_11ProtectModeEb.part.0+0x25>
 13d:	c7 47 08 0e 00 00 00 	movl   $0xe,0x8(%rdi)
 144:	48 83 c0 10          	add    $0x10,%rax
 148:	48 89 07             	mov    %rax,(%rdi)
 14b:	e8 00 00 00 00       	callq  150 <_ZN5Xbyak13CodeGenerator3movERKNS_7OperandES3_.part.0>

0000000000000150 <_ZN5Xbyak13CodeGenerator3movERKNS_7OperandES3_.part.0>:
 150:	50                   	push   %rax
 151:	58                   	pop    %rax
 152:	bf 10 00 00 00       	mov    $0x10,%edi
 157:	50                   	push   %rax
 158:	e8 00 00 00 00       	callq  15d <_ZN5Xbyak13CodeGenerator3movERKNS_7OperandES3_.part.0+0xd>
 15d:	48 8b 15 00 00 00 00 	mov    0x0(%rip),%rdx        # 164 <_ZN5Xbyak13CodeGenerator3movERKNS_7OperandES3_.part.0+0x14>
 164:	48 8b 35 00 00 00 00 	mov    0x0(%rip),%rsi        # 16b <_ZN5Xbyak13CodeGenerator3movERKNS_7OperandES3_.part.0+0x1b>
 16b:	48 89 c7             	mov    %rax,%rdi
 16e:	48 8b 05 00 00 00 00 	mov    0x0(%rip),%rax        # 175 <_ZN5Xbyak13CodeGenerator3movERKNS_7OperandES3_.part.0+0x25>
 175:	c7 47 08 05 00 00 00 	movl   $0x5,0x8(%rdi)
 17c:	48 83 c0 10          	add    $0x10,%rax
 180:	48 89 07             	mov    %rax,(%rdi)
 183:	e8 00 00 00 00       	callq  188 <_ZN5Xbyak13CodeGenerator15verifyDuplicateEiiii.isra.0.part.0>

0000000000000188 <_ZN5Xbyak13CodeGenerator15verifyDuplicateEiiii.isra.0.part.0>:
 188:	53                   	push   %rbx
 189:	89 fb                	mov    %edi,%ebx
 18b:	bf 10 00 00 00       	mov    $0x10,%edi
 190:	e8 00 00 00 00       	callq  195 <_ZN5Xbyak13CodeGenerator15verifyDuplicateEiiii.isra.0.part.0+0xd>
 195:	48 8b 15 00 00 00 00 	mov    0x0(%rip),%rdx        # 19c <_ZN5Xbyak13CodeGenerator15verifyDuplicateEiiii.isra.0.part.0+0x14>
 19c:	48 8b 35 00 00 00 00 	mov    0x0(%rip),%rsi        # 1a3 <_ZN5Xbyak13CodeGenerator15verifyDuplicateEiiii.isra.0.part.0+0x1b>
 1a3:	48 89 c7             	mov    %rax,%rdi
 1a6:	48 8b 05 00 00 00 00 	mov    0x0(%rip),%rax        # 1ad <_ZN5Xbyak13CodeGenerator15verifyDuplicateEiiii.isra.0.part.0+0x25>
 1ad:	89 5f 08             	mov    %ebx,0x8(%rdi)
 1b0:	48 83 c0 10          	add    $0x10,%rax
 1b4:	48 89 07             	mov    %rax,(%rdi)
 1b7:	e8 00 00 00 00       	callq  1bc <_ZNK5Xbyak13CodeGenerator16verifyMemHasSizeERKNS_7OperandE.isra.0.part.0>

00000000000001bc <_ZNK5Xbyak13CodeGenerator16verifyMemHasSizeERKNS_7OperandE.isra.0.part.0>:
 1bc:	50                   	push   %rax
 1bd:	58                   	pop    %rax
 1be:	bf 10 00 00 00       	mov    $0x10,%edi
 1c3:	50                   	push   %rax
 1c4:	e8 00 00 00 00       	callq  1c9 <_ZNK5Xbyak13CodeGenerator16verifyMemHasSizeERKNS_7OperandE.isra.0.part.0+0xd>
 1c9:	48 8b 15 00 00 00 00 	mov    0x0(%rip),%rdx        # 1d0 <_ZNK5Xbyak13CodeGenerator16verifyMemHasSizeERKNS_7OperandE.isra.0.part.0+0x14>
 1d0:	48 8b 35 00 00 00 00 	mov    0x0(%rip),%rsi        # 1d7 <_ZNK5Xbyak13CodeGenerator16verifyMemHasSizeERKNS_7OperandE.isra.0.part.0+0x1b>
 1d7:	48 89 c7             	mov    %rax,%rdi
 1da:	48 8b 05 00 00 00 00 	mov    0x0(%rip),%rax        # 1e1 <_ZNK5Xbyak13CodeGenerator16verifyMemHasSizeERKNS_7OperandE.isra.0.part.0+0x25>
 1e1:	c7 47 08 11 00 00 00 	movl   $0x11,0x8(%rdi)
 1e8:	48 83 c0 10          	add    $0x10,%rax
 1ec:	48 89 07             	mov    %rax,(%rdi)
 1ef:	e8 00 00 00 00       	callq  1f4 <_ZN5XbyakplERKNS_6RegExpES2_.part.0>

00000000000001f4 <_ZN5XbyakplERKNS_6RegExpES2_.part.0>:
 1f4:	50                   	push   %rax
 1f5:	58                   	pop    %rax
 1f6:	bf 10 00 00 00       	mov    $0x10,%edi
 1fb:	50                   	push   %rax
 1fc:	e8 00 00 00 00       	callq  201 <_ZN5XbyakplERKNS_6RegExpES2_.part.0+0xd>
 201:	48 8b 15 00 00 00 00 	mov    0x0(%rip),%rdx        # 208 <_ZN5XbyakplERKNS_6RegExpES2_.part.0+0x14>
 208:	48 8b 35 00 00 00 00 	mov    0x0(%rip),%rsi        # 20f <_ZN5XbyakplERKNS_6RegExpES2_.part.0+0x1b>
 20f:	48 89 c7             	mov    %rax,%rdi
 212:	48 8b 05 00 00 00 00 	mov    0x0(%rip),%rax        # 219 <_ZN5XbyakplERKNS_6RegExpES2_.part.0+0x25>
 219:	c7 47 08 01 00 00 00 	movl   $0x1,0x8(%rdi)
 220:	48 83 c0 10          	add    $0x10,%rax
 224:	48 89 07             	mov    %rax,(%rdi)
 227:	e8 00 00 00 00       	callq  22c <_ZN5Xbyak13CodeGenerator6opModMERKNS_7AddressERKNS_3RegEiiii.part.0>

000000000000022c <_ZN5Xbyak13CodeGenerator6opModMERKNS_7AddressERKNS_3RegEiiii.part.0>:
 22c:	50                   	push   %rax
 22d:	58                   	pop    %rax
 22e:	bf 10 00 00 00       	mov    $0x10,%edi
 233:	50                   	push   %rax
 234:	e8 00 00 00 00       	callq  239 <_ZN5Xbyak13CodeGenerator6opModMERKNS_7AddressERKNS_3RegEiiii.part.0+0xd>
 239:	48 8b 15 00 00 00 00 	mov    0x0(%rip),%rdx        # 240 <_ZN5Xbyak13CodeGenerator6opModMERKNS_7AddressERKNS_3RegEiiii.part.0+0x14>
 240:	48 8b 35 00 00 00 00 	mov    0x0(%rip),%rsi        # 247 <_ZN5Xbyak13CodeGenerator6opModMERKNS_7AddressERKNS_3RegEiiii.part.0+0x1b>
 247:	48 89 c7             	mov    %rax,%rdi
 24a:	48 8b 05 00 00 00 00 	mov    0x0(%rip),%rax        # 251 <_ZN5Xbyak13CodeGenerator6opModMERKNS_7AddressERKNS_3RegEiiii.part.0+0x25>
 251:	c7 47 08 0f 00 00 00 	movl   $0xf,0x8(%rdi)
 258:	48 83 c0 10          	add    $0x10,%rax
 25c:	48 89 07             	mov    %rax,(%rdi)
 25f:	e8 00 00 00 00       	callq  264 <_ZN5Xbyak13CodeGenerator3movERKNS_7OperandEm.part.0>

0000000000000264 <_ZN5Xbyak13CodeGenerator3movERKNS_7OperandEm.part.0>:
 264:	50                   	push   %rax
 265:	58                   	pop    %rax
 266:	bf 10 00 00 00       	mov    $0x10,%edi
 26b:	50                   	push   %rax
 26c:	e8 00 00 00 00       	callq  271 <_ZN5Xbyak13CodeGenerator3movERKNS_7OperandEm.part.0+0xd>
 271:	48 8b 15 00 00 00 00 	mov    0x0(%rip),%rdx        # 278 <_ZN5Xbyak13CodeGenerator3movERKNS_7OperandEm.part.0+0x14>
 278:	48 8b 35 00 00 00 00 	mov    0x0(%rip),%rsi        # 27f <_ZN5Xbyak13CodeGenerator3movERKNS_7OperandEm.part.0+0x1b>
 27f:	48 89 c7             	mov    %rax,%rdi
 282:	48 8b 05 00 00 00 00 	mov    0x0(%rip),%rax        # 289 <_ZN5Xbyak13CodeGenerator3movERKNS_7OperandEm.part.0+0x25>
 289:	c7 47 08 07 00 00 00 	movl   $0x7,0x8(%rdi)
 290:	48 83 c0 10          	add    $0x10,%rax
 294:	48 89 07             	mov    %rax,(%rdi)
 297:	e8 00 00 00 00       	callq  29c <_ZN5Xbyak13CodeGenerator5opVexERKNS_3RegEPKNS_7OperandERS5_iii.part.0>

000000000000029c <_ZN5Xbyak13CodeGenerator5opVexERKNS_3RegEPKNS_7OperandERS5_iii.part.0>:
 29c:	50                   	push   %rax
 29d:	58                   	pop    %rax
 29e:	bf 10 00 00 00       	mov    $0x10,%edi
 2a3:	50                   	push   %rax
 2a4:	e8 00 00 00 00       	callq  2a9 <_ZN5Xbyak13CodeGenerator5opVexERKNS_3RegEPKNS_7OperandERS5_iii.part.0+0xd>
 2a9:	48 8b 15 00 00 00 00 	mov    0x0(%rip),%rdx        # 2b0 <_ZN5Xbyak13CodeGenerator5opVexERKNS_3RegEPKNS_7OperandERS5_iii.part.0+0x14>
 2b0:	48 8b 35 00 00 00 00 	mov    0x0(%rip),%rsi        # 2b7 <_ZN5Xbyak13CodeGenerator5opVexERKNS_3RegEPKNS_7OperandERS5_iii.part.0+0x1b>
 2b7:	48 89 c7             	mov    %rax,%rdi
 2ba:	48 8b 05 00 00 00 00 	mov    0x0(%rip),%rax        # 2c1 <_ZN5Xbyak13CodeGenerator5opVexERKNS_3RegEPKNS_7OperandERS5_iii.part.0+0x25>
 2c1:	c7 47 08 28 00 00 00 	movl   $0x28,0x8(%rdi)
 2c8:	48 83 c0 10          	add    $0x10,%rax
 2cc:	48 89 07             	mov    %rax,(%rdi)
 2cf:	e8 00 00 00 00       	callq  2d4 <mcl_init.cold>

00000000000002d4 <mcl_init.cold>:
 2d4:	48 83 e8 01          	sub    $0x1,%rax
 2d8:	75 3d                	jne    317 <mcl_init.cold+0x43>
 2da:	e8 00 00 00 00       	callq  2df <mcl_init.cold+0xb>
 2df:	48 89 c7             	mov    %rax,%rdi
 2e2:	48 8b 00             	mov    (%rax),%rax
 2e5:	ff 50 10             	callq  *0x10(%rax)
 2e8:	48 8d 15 00 00 00 00 	lea    0x0(%rip),%rdx        # 2ef <mcl_init.cold+0x1b>
 2ef:	be 01 00 00 00       	mov    $0x1,%esi
 2f4:	48 89 c1             	mov    %rax,%rcx
 2f7:	48 8b 05 00 00 00 00 	mov    0x0(%rip),%rax        # 2fe <mcl_init.cold+0x2a>
 2fe:	48 8b 38             	mov    (%rax),%rdi
 301:	31 c0                	xor    %eax,%eax
 303:	e8 00 00 00 00       	callq  308 <mcl_init.cold+0x34>
 308:	e8 00 00 00 00       	callq  30d <mcl_init.cold+0x39>
 30d:	b8 01 00 00 00       	mov    $0x1,%eax
 312:	e9 00 00 00 00       	jmpq   317 <mcl_init.cold+0x43>
 317:	e8 00 00 00 00       	callq  31c <mcl_init.cold+0x48>
 31c:	f3 0f 1e fa          	endbr64 
 320:	48 89 c5             	mov    %rax,%rbp
 323:	e8 00 00 00 00       	callq  328 <mcl_init.cold+0x54>
 328:	48 89 ef             	mov    %rbp,%rdi
 32b:	e8 00 00 00 00       	callq  330 <_GLOBAL__sub_I_mcl.cpp.cold>

0000000000000330 <_GLOBAL__sub_I_mcl.cpp.cold>:
 330:	bf 10 00 00 00       	mov    $0x10,%edi
 335:	e8 00 00 00 00       	callq  33a <_GLOBAL__sub_I_mcl.cpp.cold+0xa>
 33a:	48 8b 15 00 00 00 00 	mov    0x0(%rip),%rdx        # 341 <_GLOBAL__sub_I_mcl.cpp.cold+0x11>
 341:	48 8b 35 00 00 00 00 	mov    0x0(%rip),%rsi        # 348 <_GLOBAL__sub_I_mcl.cpp.cold+0x18>
 348:	48 89 c7             	mov    %rax,%rdi
 34b:	48 8b 05 00 00 00 00 	mov    0x0(%rip),%rax        # 352 <_GLOBAL__sub_I_mcl.cpp.cold+0x22>
 352:	c7 47 08 16 00 00 00 	movl   $0x16,0x8(%rdi)
 359:	48 83 c0 10          	add    $0x10,%rax
 35d:	48 89 07             	mov    %rax,(%rdi)
 360:	e8 00 00 00 00       	callq  365 <_GLOBAL__sub_I_mcl.cpp.cold+0x35>
 365:	f3 0f 1e fa          	endbr64 
 369:	49 89 c4             	mov    %rax,%r12
 36c:	49 8d 45 10          	lea    0x10(%r13),%rax
 370:	48 8b 7d 40          	mov    0x40(%rbp),%rdi
 374:	48 89 45 28          	mov    %rax,0x28(%rbp)
 378:	48 85 ff             	test   %rdi,%rdi
 37b:	0f 85 7e 01 00 00    	jne    4ff <_GLOBAL__sub_I_mcl.cpp.cold+0x1cf>
 381:	48 8b 45 38          	mov    0x38(%rbp),%rax
 385:	48 8b 7d 30          	mov    0x30(%rbp),%rdi
 389:	31 f6                	xor    %esi,%esi
 38b:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
 392:	00 
 393:	e8 00 00 00 00       	callq  398 <_GLOBAL__sub_I_mcl.cpp.cold+0x68>
 398:	48 8b 7d 30          	mov    0x30(%rbp),%rdi
 39c:	48 8d 45 60          	lea    0x60(%rbp),%rax
 3a0:	48 c7 45 48 00 00 00 	movq   $0x0,0x48(%rbp)
 3a7:	00 
 3a8:	48 c7 45 40 00 00 00 	movq   $0x0,0x40(%rbp)
 3af:	00 
 3b0:	48 39 c7             	cmp    %rax,%rdi
 3b3:	74 05                	je     3ba <_GLOBAL__sub_I_mcl.cpp.cold+0x8a>
 3b5:	e8 00 00 00 00       	callq  3ba <_GLOBAL__sub_I_mcl.cpp.cold+0x8a>
 3ba:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
 3be:	48 8d 5d 08          	lea    0x8(%rbp),%rbx
 3c2:	48 39 df             	cmp    %rbx,%rdi
 3c5:	0f 85 54 01 00 00    	jne    51f <_GLOBAL__sub_I_mcl.cpp.cold+0x1ef>
 3cb:	4c 89 e7             	mov    %r12,%rdi
 3ce:	e8 00 00 00 00       	callq  3d3 <_GLOBAL__sub_I_mcl.cpp.cold+0xa3>
 3d3:	48 8b bd 38 01 00 00 	mov    0x138(%rbp),%rdi
 3da:	48 85 ff             	test   %rdi,%rdi
 3dd:	0f 85 2c 01 00 00    	jne    50f <_GLOBAL__sub_I_mcl.cpp.cold+0x1df>
 3e3:	48 8b 85 30 01 00 00 	mov    0x130(%rbp),%rax
 3ea:	48 8b bd 28 01 00 00 	mov    0x128(%rbp),%rdi
 3f1:	31 f6                	xor    %esi,%esi
 3f3:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
 3fa:	00 
 3fb:	e8 00 00 00 00       	callq  400 <_GLOBAL__sub_I_mcl.cpp.cold+0xd0>
 400:	48 8b bd 28 01 00 00 	mov    0x128(%rbp),%rdi
 407:	48 8d 85 58 01 00 00 	lea    0x158(%rbp),%rax
 40e:	48 c7 85 40 01 00 00 	movq   $0x0,0x140(%rbp)
 415:	00 00 00 00 
 419:	48 c7 85 38 01 00 00 	movq   $0x0,0x138(%rbp)
 420:	00 00 00 00 
 424:	48 39 c7             	cmp    %rax,%rdi
 427:	74 05                	je     42e <_GLOBAL__sub_I_mcl.cpp.cold+0xfe>
 429:	e8 00 00 00 00       	callq  42e <_GLOBAL__sub_I_mcl.cpp.cold+0xfe>
 42e:	48 8b bd 00 01 00 00 	mov    0x100(%rbp),%rdi
 435:	48 85 ff             	test   %rdi,%rdi
 438:	0f 85 f1 00 00 00    	jne    52f <_GLOBAL__sub_I_mcl.cpp.cold+0x1ff>
 43e:	48 8b 85 f8 00 00 00 	mov    0xf8(%rbp),%rax
 445:	48 8b bd f0 00 00 00 	mov    0xf0(%rbp),%rdi
 44c:	31 f6                	xor    %esi,%esi
 44e:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
 455:	00 
 456:	e8 00 00 00 00       	callq  45b <_GLOBAL__sub_I_mcl.cpp.cold+0x12b>
 45b:	48 8b bd f0 00 00 00 	mov    0xf0(%rbp),%rdi
 462:	48 8d 85 20 01 00 00 	lea    0x120(%rbp),%rax
 469:	48 c7 85 08 01 00 00 	movq   $0x0,0x108(%rbp)
 470:	00 00 00 00 
 474:	48 c7 85 00 01 00 00 	movq   $0x0,0x100(%rbp)
 47b:	00 00 00 00 
 47f:	48 39 c7             	cmp    %rax,%rdi
 482:	0f 85 b7 00 00 00    	jne    53f <_GLOBAL__sub_I_mcl.cpp.cold+0x20f>
 488:	48 8b bd c8 00 00 00 	mov    0xc8(%rbp),%rdi
 48f:	48 85 ff             	test   %rdi,%rdi
 492:	0f 85 b1 00 00 00    	jne    549 <_GLOBAL__sub_I_mcl.cpp.cold+0x219>
 498:	48 8b 85 c0 00 00 00 	mov    0xc0(%rbp),%rax
 49f:	48 8b bd b8 00 00 00 	mov    0xb8(%rbp),%rdi
 4a6:	31 f6                	xor    %esi,%esi
 4a8:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
 4af:	00 
 4b0:	e8 00 00 00 00       	callq  4b5 <_GLOBAL__sub_I_mcl.cpp.cold+0x185>
 4b5:	48 8b bd b8 00 00 00 	mov    0xb8(%rbp),%rdi
 4bc:	48 8d 85 e8 00 00 00 	lea    0xe8(%rbp),%rax
 4c3:	48 c7 85 d0 00 00 00 	movq   $0x0,0xd0(%rbp)
 4ca:	00 00 00 00 
 4ce:	48 c7 85 c8 00 00 00 	movq   $0x0,0xc8(%rbp)
 4d5:	00 00 00 00 
 4d9:	48 39 c7             	cmp    %rax,%rdi
 4dc:	74 05                	je     4e3 <_GLOBAL__sub_I_mcl.cpp.cold+0x1b3>
 4de:	e8 00 00 00 00       	callq  4e3 <_GLOBAL__sub_I_mcl.cpp.cold+0x1b3>
 4e3:	48 8d bd 98 00 00 00 	lea    0x98(%rbp),%rdi
 4ea:	e8 00 00 00 00       	callq  4ef <_GLOBAL__sub_I_mcl.cpp.cold+0x1bf>
 4ef:	48 89 ef             	mov    %rbp,%rdi
 4f2:	e8 00 00 00 00       	callq  4f7 <_GLOBAL__sub_I_mcl.cpp.cold+0x1c7>
 4f7:	4c 89 e7             	mov    %r12,%rdi
 4fa:	e8 00 00 00 00       	callq  4ff <_GLOBAL__sub_I_mcl.cpp.cold+0x1cf>
 4ff:	48 8b 1f             	mov    (%rdi),%rbx
 502:	e8 00 00 00 00       	callq  507 <_GLOBAL__sub_I_mcl.cpp.cold+0x1d7>
 507:	48 89 df             	mov    %rbx,%rdi
 50a:	e9 69 fe ff ff       	jmpq   378 <_GLOBAL__sub_I_mcl.cpp.cold+0x48>
 50f:	48 8b 1f             	mov    (%rdi),%rbx
 512:	e8 00 00 00 00       	callq  517 <_GLOBAL__sub_I_mcl.cpp.cold+0x1e7>
 517:	48 89 df             	mov    %rbx,%rdi
 51a:	e9 bb fe ff ff       	jmpq   3da <_GLOBAL__sub_I_mcl.cpp.cold+0xaa>
 51f:	48 8b 2f             	mov    (%rdi),%rbp
 522:	e8 00 00 00 00       	callq  527 <_GLOBAL__sub_I_mcl.cpp.cold+0x1f7>
 527:	48 89 ef             	mov    %rbp,%rdi
 52a:	e9 93 fe ff ff       	jmpq   3c2 <_GLOBAL__sub_I_mcl.cpp.cold+0x92>
 52f:	48 8b 1f             	mov    (%rdi),%rbx
 532:	e8 00 00 00 00       	callq  537 <_GLOBAL__sub_I_mcl.cpp.cold+0x207>
 537:	48 89 df             	mov    %rbx,%rdi
 53a:	e9 f6 fe ff ff       	jmpq   435 <_GLOBAL__sub_I_mcl.cpp.cold+0x105>
 53f:	e8 00 00 00 00       	callq  544 <_GLOBAL__sub_I_mcl.cpp.cold+0x214>
 544:	e9 3f ff ff ff       	jmpq   488 <_GLOBAL__sub_I_mcl.cpp.cold+0x158>
 549:	48 8b 1f             	mov    (%rdi),%rbx
 54c:	e8 00 00 00 00       	callq  551 <_GLOBAL__sub_I_mcl.cpp.cold+0x221>
 551:	48 89 df             	mov    %rbx,%rdi
 554:	e9 36 ff ff ff       	jmpq   48f <_GLOBAL__sub_I_mcl.cpp.cold+0x15f>

Disassembly of section .text._ZN5Xbyak13CodeGenerator18isREG32_REG32orMEMERKNS_7OperandES3_:

0000000000000000 <_ZN5Xbyak13CodeGenerator18isREG32_REG32orMEMERKNS_7OperandES3_>:
   0:	f3 0f 1e fa          	endbr64 
   4:	31 c0                	xor    %eax,%eax
   6:	f6 07 80             	testb  $0x80,(%rdi)
   9:	74 3c                	je     47 <_ZN5Xbyak13CodeGenerator18isREG32_REG32orMEMERKNS_7OperandES3_+0x47>
   b:	0f b7 57 02          	movzwl 0x2(%rdi),%edx
   f:	89 d1                	mov    %edx,%ecx
  11:	66 81 e1 ff 3f       	and    $0x3fff,%cx
  16:	83 e2 60             	and    $0x60,%edx
  19:	74 2c                	je     47 <_ZN5Xbyak13CodeGenerator18isREG32_REG32orMEMERKNS_7OperandES3_+0x47>
  1b:	0f b7 06             	movzwl (%rsi),%eax
  1e:	89 c2                	mov    %eax,%edx
  20:	66 c1 ea 06          	shr    $0x6,%dx
  24:	a8 80                	test   $0x80,%al
  26:	74 1a                	je     42 <_ZN5Xbyak13CodeGenerator18isREG32_REG32orMEMERKNS_7OperandES3_+0x42>
  28:	0f b7 46 02          	movzwl 0x2(%rsi),%eax
  2c:	89 c6                	mov    %eax,%esi
  2e:	66 81 e6 ff 3f       	and    $0x3fff,%si
  33:	a8 60                	test   $0x60,%al
  35:	0f 95 c0             	setne  %al
  38:	66 39 f1             	cmp    %si,%cx
  3b:	0f 94 c1             	sete   %cl
  3e:	20 c8                	and    %cl,%al
  40:	75 05                	jne    47 <_ZN5Xbyak13CodeGenerator18isREG32_REG32orMEMERKNS_7OperandES3_+0x47>
  42:	89 d0                	mov    %edx,%eax
  44:	83 e0 01             	and    $0x1,%eax
  47:	c3                   	retq   

Disassembly of section .text._ZN5Xbyak13MmapAllocator4freeEPh:

0000000000000000 <_ZN5Xbyak13MmapAllocator4freeEPh>:
   0:	f3 0f 1e fa          	endbr64 
   4:	48 85 f6             	test   %rsi,%rsi
   7:	0f 84 13 01 00 00    	je     120 <_ZN5Xbyak13MmapAllocator4freeEPh+0x120>
   d:	55                   	push   %rbp
   e:	31 d2                	xor    %edx,%edx
  10:	53                   	push   %rbx
  11:	48 89 fb             	mov    %rdi,%rbx
  14:	48 89 f7             	mov    %rsi,%rdi
  17:	48 89 f8             	mov    %rdi,%rax
  1a:	48 83 ec 08          	sub    $0x8,%rsp
  1e:	48 8b 73 10          	mov    0x10(%rbx),%rsi
  22:	48 f7 f6             	div    %rsi
  25:	48 8b 43 08          	mov    0x8(%rbx),%rax
  29:	48 8b 04 d0          	mov    (%rax,%rdx,8),%rax
  2d:	49 89 d0             	mov    %rdx,%r8
  30:	48 85 c0             	test   %rax,%rax
  33:	0f 84 32 01 00 00    	je     16b <_ZN5Xbyak13MmapAllocator4freeEPh+0x16b>
  39:	48 8b 28             	mov    (%rax),%rbp
  3c:	48 8b 4d 08          	mov    0x8(%rbp),%rcx
  40:	eb 28                	jmp    6a <_ZN5Xbyak13MmapAllocator4freeEPh+0x6a>
  42:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  48:	48 8b 6d 00          	mov    0x0(%rbp),%rbp
  4c:	48 85 ed             	test   %rbp,%rbp
  4f:	0f 84 16 01 00 00    	je     16b <_ZN5Xbyak13MmapAllocator4freeEPh+0x16b>
  55:	48 8b 4d 08          	mov    0x8(%rbp),%rcx
  59:	31 d2                	xor    %edx,%edx
  5b:	48 89 c8             	mov    %rcx,%rax
  5e:	48 f7 f6             	div    %rsi
  61:	49 39 d0             	cmp    %rdx,%r8
  64:	0f 85 01 01 00 00    	jne    16b <_ZN5Xbyak13MmapAllocator4freeEPh+0x16b>
  6a:	48 39 cf             	cmp    %rcx,%rdi
  6d:	75 d9                	jne    48 <_ZN5Xbyak13MmapAllocator4freeEPh+0x48>
  6f:	48 8b 75 10          	mov    0x10(%rbp),%rsi
  73:	e8 00 00 00 00       	callq  78 <_ZN5Xbyak13MmapAllocator4freeEPh+0x78>
  78:	85 c0                	test   %eax,%eax
  7a:	0f 88 b6 00 00 00    	js     136 <_ZN5Xbyak13MmapAllocator4freeEPh+0x136>
  80:	48 8b 4b 10          	mov    0x10(%rbx),%rcx
  84:	48 8b 45 08          	mov    0x8(%rbp),%rax
  88:	31 d2                	xor    %edx,%edx
  8a:	4c 8b 4b 08          	mov    0x8(%rbx),%r9
  8e:	48 f7 f1             	div    %rcx
  91:	4d 8d 14 d1          	lea    (%r9,%rdx,8),%r10
  95:	49 89 d0             	mov    %rdx,%r8
  98:	49 8b 02             	mov    (%r10),%rax
  9b:	48 89 c2             	mov    %rax,%rdx
  9e:	66 90                	xchg   %ax,%ax
  a0:	48 89 d7             	mov    %rdx,%rdi
  a3:	48 8b 12             	mov    (%rdx),%rdx
  a6:	48 39 d5             	cmp    %rdx,%rbp
  a9:	75 f5                	jne    a0 <_ZN5Xbyak13MmapAllocator4freeEPh+0xa0>
  ab:	48 8b 75 00          	mov    0x0(%rbp),%rsi
  af:	48 39 f8             	cmp    %rdi,%rax
  b2:	74 3c                	je     f0 <_ZN5Xbyak13MmapAllocator4freeEPh+0xf0>
  b4:	48 85 f6             	test   %rsi,%rsi
  b7:	74 16                	je     cf <_ZN5Xbyak13MmapAllocator4freeEPh+0xcf>
  b9:	48 8b 46 08          	mov    0x8(%rsi),%rax
  bd:	31 d2                	xor    %edx,%edx
  bf:	48 f7 f1             	div    %rcx
  c2:	49 39 d0             	cmp    %rdx,%r8
  c5:	74 08                	je     cf <_ZN5Xbyak13MmapAllocator4freeEPh+0xcf>
  c7:	49 89 3c d1          	mov    %rdi,(%r9,%rdx,8)
  cb:	48 8b 75 00          	mov    0x0(%rbp),%rsi
  cf:	48 89 37             	mov    %rsi,(%rdi)
  d2:	48 89 ef             	mov    %rbp,%rdi
  d5:	e8 00 00 00 00       	callq  da <_ZN5Xbyak13MmapAllocator4freeEPh+0xda>
  da:	48 83 6b 20 01       	subq   $0x1,0x20(%rbx)
  df:	48 83 c4 08          	add    $0x8,%rsp
  e3:	5b                   	pop    %rbx
  e4:	5d                   	pop    %rbp
  e5:	c3                   	retq   
  e6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  ed:	00 00 00 
  f0:	48 85 f6             	test   %rsi,%rsi
  f3:	74 33                	je     128 <_ZN5Xbyak13MmapAllocator4freeEPh+0x128>
  f5:	48 8b 46 08          	mov    0x8(%rsi),%rax
  f9:	31 d2                	xor    %edx,%edx
  fb:	48 f7 f1             	div    %rcx
  fe:	49 39 d0             	cmp    %rdx,%r8
 101:	74 cc                	je     cf <_ZN5Xbyak13MmapAllocator4freeEPh+0xcf>
 103:	49 89 3c d1          	mov    %rdi,(%r9,%rdx,8)
 107:	49 8b 02             	mov    (%r10),%rax
 10a:	48 8d 53 18          	lea    0x18(%rbx),%rdx
 10e:	48 39 d0             	cmp    %rdx,%rax
 111:	74 1d                	je     130 <_ZN5Xbyak13MmapAllocator4freeEPh+0x130>
 113:	49 c7 02 00 00 00 00 	movq   $0x0,(%r10)
 11a:	48 8b 75 00          	mov    0x0(%rbp),%rsi
 11e:	eb af                	jmp    cf <_ZN5Xbyak13MmapAllocator4freeEPh+0xcf>
 120:	c3                   	retq   
 121:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
 128:	48 89 f8             	mov    %rdi,%rax
 12b:	eb dd                	jmp    10a <_ZN5Xbyak13MmapAllocator4freeEPh+0x10a>
 12d:	0f 1f 00             	nopl   (%rax)
 130:	48 89 73 18          	mov    %rsi,0x18(%rbx)
 134:	eb dd                	jmp    113 <_ZN5Xbyak13MmapAllocator4freeEPh+0x113>
 136:	bf 10 00 00 00       	mov    $0x10,%edi
 13b:	e8 00 00 00 00       	callq  140 <_ZN5Xbyak13MmapAllocator4freeEPh+0x140>
 140:	48 8b 15 00 00 00 00 	mov    0x0(%rip),%rdx        # 147 <_ZN5Xbyak13MmapAllocator4freeEPh+0x147>
 147:	48 8b 35 00 00 00 00 	mov    0x0(%rip),%rsi        # 14e <_ZN5Xbyak13MmapAllocator4freeEPh+0x14e>
 14e:	48 89 c7             	mov    %rax,%rdi
 151:	48 8b 05 00 00 00 00 	mov    0x0(%rip),%rax        # 158 <_ZN5Xbyak13MmapAllocator4freeEPh+0x158>
 158:	c7 47 08 20 00 00 00 	movl   $0x20,0x8(%rdi)
 15f:	48 83 c0 10          	add    $0x10,%rax
 163:	48 89 07             	mov    %rax,(%rdi)
 166:	e8 00 00 00 00       	callq  16b <_ZN5Xbyak13MmapAllocator4freeEPh+0x16b>
 16b:	bf 10 00 00 00       	mov    $0x10,%edi
 170:	e8 00 00 00 00       	callq  175 <_ZN5Xbyak13MmapAllocator4freeEPh+0x175>
 175:	48 8b 15 00 00 00 00 	mov    0x0(%rip),%rdx        # 17c <_ZN5Xbyak13MmapAllocator4freeEPh+0x17c>
 17c:	48 8b 35 00 00 00 00 	mov    0x0(%rip),%rsi        # 183 <_ZN5Xbyak13MmapAllocator4freeEPh+0x183>
 183:	48 89 c7             	mov    %rax,%rdi
 186:	48 8b 05 00 00 00 00 	mov    0x0(%rip),%rax        # 18d <_ZN5Xbyak13MmapAllocator4freeEPh+0x18d>
 18d:	c7 47 08 0d 00 00 00 	movl   $0xd,0x8(%rdi)
 194:	48 83 c0 10          	add    $0x10,%rax
 198:	48 89 07             	mov    %rax,(%rdi)
 19b:	e8 00 00 00 00       	callq  1a0 <_ZN5Xbyak13CodeGenerator15verifyDuplicateEiiii.isra.0.part.0+0x18>

Disassembly of section .text.unlikely._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_.isra.0:

0000000000000000 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_.isra.0>:
   0:	41 54                	push   %r12
   2:	48 8d 47 10          	lea    0x10(%rdi),%rax
   6:	55                   	push   %rbp
   7:	53                   	push   %rbx
   8:	48 83 ec 10          	sub    $0x10,%rsp
   c:	48 89 07             	mov    %rax,(%rdi)
   f:	48 85 f6             	test   %rsi,%rsi
  12:	74 7b                	je     8f <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_.isra.0+0x8f>
  14:	48 89 fd             	mov    %rdi,%rbp
  17:	48 83 c9 ff          	or     $0xffffffffffffffff,%rcx
  1b:	31 c0                	xor    %eax,%eax
  1d:	48 89 f7             	mov    %rsi,%rdi
  20:	f2 ae                	repnz scas %es:(%rdi),%al
  22:	49 89 f4             	mov    %rsi,%r12
  25:	48 f7 d1             	not    %rcx
  28:	48 8d 59 ff          	lea    -0x1(%rcx),%rbx
  2c:	48 89 5c 24 08       	mov    %rbx,0x8(%rsp)
  31:	48 83 fb 0f          	cmp    $0xf,%rbx
  35:	76 1c                	jbe    53 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_.isra.0+0x53>
  37:	48 8d 74 24 08       	lea    0x8(%rsp),%rsi
  3c:	31 d2                	xor    %edx,%edx
  3e:	48 89 ef             	mov    %rbp,%rdi
  41:	e8 00 00 00 00       	callq  46 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_.isra.0+0x46>
  46:	48 89 45 00          	mov    %rax,0x0(%rbp)
  4a:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
  4f:	48 89 45 10          	mov    %rax,0x10(%rbp)
  53:	48 8b 45 00          	mov    0x0(%rbp),%rax
  57:	48 83 fb 01          	cmp    $0x1,%rbx
  5b:	75 08                	jne    65 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_.isra.0+0x65>
  5d:	41 8a 14 24          	mov    (%r12),%dl
  61:	88 10                	mov    %dl,(%rax)
  63:	eb 10                	jmp    75 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_.isra.0+0x75>
  65:	48 85 db             	test   %rbx,%rbx
  68:	74 0b                	je     75 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_.isra.0+0x75>
  6a:	48 89 c7             	mov    %rax,%rdi
  6d:	4c 89 e6             	mov    %r12,%rsi
  70:	48 89 d9             	mov    %rbx,%rcx
  73:	f3 a4                	rep movsb %ds:(%rsi),%es:(%rdi)
  75:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
  7a:	48 8b 55 00          	mov    0x0(%rbp),%rdx
  7e:	48 89 45 08          	mov    %rax,0x8(%rbp)
  82:	c6 04 02 00          	movb   $0x0,(%rdx,%rax,1)
  86:	48 83 c4 10          	add    $0x10,%rsp
  8a:	5b                   	pop    %rbx
  8b:	5d                   	pop    %rbp
  8c:	41 5c                	pop    %r12
  8e:	c3                   	retq   
  8f:	48 8d 3d 00 00 00 00 	lea    0x0(%rip),%rdi        # 96 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_.isra.0+0x96>
  96:	e8 00 00 00 00       	callq  9b <_ZN5Xbyak13MmapAllocator5allocEm.part.0+0x2b>

Disassembly of section .text._ZN6cybozu9ExceptionD0Ev:

0000000000000000 <_ZN6cybozu9ExceptionD0Ev>:
   0:	f3 0f 1e fa          	endbr64 
   4:	48 8b 05 00 00 00 00 	mov    0x0(%rip),%rax        # b <_ZN6cybozu9ExceptionD0Ev+0xb>
   b:	55                   	push   %rbp
   c:	48 89 fd             	mov    %rdi,%rbp
   f:	48 83 c0 10          	add    $0x10,%rax
  13:	48 89 07             	mov    %rax,(%rdi)
  16:	48 8b 7f 08          	mov    0x8(%rdi),%rdi
  1a:	48 8d 45 18          	lea    0x18(%rbp),%rax
  1e:	48 39 c7             	cmp    %rax,%rdi
  21:	74 05                	je     28 <_ZN6cybozu9ExceptionD0Ev+0x28>
  23:	e8 00 00 00 00       	callq  28 <_ZN6cybozu9ExceptionD0Ev+0x28>
  28:	48 89 ef             	mov    %rbp,%rdi
  2b:	e8 00 00 00 00       	callq  30 <_ZN6cybozu9ExceptionD0Ev+0x30>
  30:	48 89 ef             	mov    %rbp,%rdi
  33:	be 28 00 00 00       	mov    $0x28,%esi
  38:	5d                   	pop    %rbp
  39:	e9 00 00 00 00       	jmpq   3e <_ZNK5Xbyak6RegExp6verifyEv.part.0+0x6>

Disassembly of section .text._ZN5Xbyak13MmapAllocatorD2Ev:

0000000000000000 <_ZN5Xbyak13MmapAllocatorD1Ev>:
   0:	f3 0f 1e fa          	endbr64 
   4:	55                   	push   %rbp
   5:	53                   	push   %rbx
   6:	48 89 fb             	mov    %rdi,%rbx
   9:	48 83 ec 08          	sub    $0x8,%rsp
   d:	48 8b 05 00 00 00 00 	mov    0x0(%rip),%rax        # 14 <_ZN5Xbyak13MmapAllocatorD1Ev+0x14>
  14:	48 8b 6f 18          	mov    0x18(%rdi),%rbp
  18:	48 83 c0 10          	add    $0x10,%rax
  1c:	48 89 07             	mov    %rax,(%rdi)
  1f:	48 85 ed             	test   %rbp,%rbp
  22:	74 15                	je     39 <_ZN5Xbyak13MmapAllocatorD1Ev+0x39>
  24:	0f 1f 40 00          	nopl   0x0(%rax)
  28:	48 89 ef             	mov    %rbp,%rdi
  2b:	48 8b 6d 00          	mov    0x0(%rbp),%rbp
  2f:	e8 00 00 00 00       	callq  34 <_ZN5Xbyak13MmapAllocatorD1Ev+0x34>
  34:	48 85 ed             	test   %rbp,%rbp
  37:	75 ef                	jne    28 <_ZN5Xbyak13MmapAllocatorD1Ev+0x28>
  39:	48 8b 43 10          	mov    0x10(%rbx),%rax
  3d:	48 8b 7b 08          	mov    0x8(%rbx),%rdi
  41:	31 f6                	xor    %esi,%esi
  43:	48 83 c3 38          	add    $0x38,%rbx
  47:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
  4e:	00 
  4f:	e8 00 00 00 00       	callq  54 <_ZN5Xbyak13MmapAllocatorD1Ev+0x54>
  54:	48 8b 7b d0          	mov    -0x30(%rbx),%rdi
  58:	48 c7 43 e8 00 00 00 	movq   $0x0,-0x18(%rbx)
  5f:	00 
  60:	48 c7 43 e0 00 00 00 	movq   $0x0,-0x20(%rbx)
  67:	00 
  68:	48 39 df             	cmp    %rbx,%rdi
  6b:	74 13                	je     80 <_ZN5Xbyak13MmapAllocatorD1Ev+0x80>
  6d:	48 83 c4 08          	add    $0x8,%rsp
  71:	5b                   	pop    %rbx
  72:	5d                   	pop    %rbp
  73:	e9 00 00 00 00       	jmpq   78 <_ZN5Xbyak13MmapAllocatorD1Ev+0x78>
  78:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  7f:	00 
  80:	48 83 c4 08          	add    $0x8,%rsp
  84:	5b                   	pop    %rbx
  85:	5d                   	pop    %rbp
  86:	c3                   	retq   

Disassembly of section .text._ZN5Xbyak13MmapAllocatorD0Ev:

0000000000000000 <_ZN5Xbyak13MmapAllocatorD0Ev>:
   0:	f3 0f 1e fa          	endbr64 
   4:	55                   	push   %rbp
   5:	48 89 fd             	mov    %rdi,%rbp
   8:	53                   	push   %rbx
   9:	48 83 ec 08          	sub    $0x8,%rsp
   d:	48 8b 05 00 00 00 00 	mov    0x0(%rip),%rax        # 14 <_ZN5Xbyak13MmapAllocatorD0Ev+0x14>
  14:	48 8b 5f 18          	mov    0x18(%rdi),%rbx
  18:	48 83 c0 10          	add    $0x10,%rax
  1c:	48 89 07             	mov    %rax,(%rdi)
  1f:	48 85 db             	test   %rbx,%rbx
  22:	74 14                	je     38 <_ZN5Xbyak13MmapAllocatorD0Ev+0x38>
  24:	0f 1f 40 00          	nopl   0x0(%rax)
  28:	48 89 df             	mov    %rbx,%rdi
  2b:	48 8b 1b             	mov    (%rbx),%rbx
  2e:	e8 00 00 00 00       	callq  33 <_ZN5Xbyak13MmapAllocatorD0Ev+0x33>
  33:	48 85 db             	test   %rbx,%rbx
  36:	75 f0                	jne    28 <_ZN5Xbyak13MmapAllocatorD0Ev+0x28>
  38:	48 8b 45 10          	mov    0x10(%rbp),%rax
  3c:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
  40:	31 f6                	xor    %esi,%esi
  42:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
  49:	00 
  4a:	e8 00 00 00 00       	callq  4f <_ZN5Xbyak13MmapAllocatorD0Ev+0x4f>
  4f:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
  53:	48 8d 45 38          	lea    0x38(%rbp),%rax
  57:	48 c7 45 20 00 00 00 	movq   $0x0,0x20(%rbp)
  5e:	00 
  5f:	48 c7 45 18 00 00 00 	movq   $0x0,0x18(%rbp)
  66:	00 
  67:	48 39 c7             	cmp    %rax,%rdi
  6a:	74 05                	je     71 <_ZN5Xbyak13MmapAllocatorD0Ev+0x71>
  6c:	e8 00 00 00 00       	callq  71 <_ZN5Xbyak13MmapAllocatorD0Ev+0x71>
  71:	48 83 c4 08          	add    $0x8,%rsp
  75:	48 89 ef             	mov    %rbp,%rdi
  78:	be 40 00 00 00       	mov    $0x40,%esi
  7d:	5b                   	pop    %rbx
  7e:	5d                   	pop    %rbp
  7f:	e9 00 00 00 00       	jmpq   84 <_ZN5Xbyak13MmapAllocator5allocEm.part.0+0x14>

Disassembly of section .text._ZN5Xbyak9CodeArrayD2Ev:

0000000000000000 <_ZN5Xbyak9CodeArrayD1Ev>:
   0:	f3 0f 1e fa          	endbr64 
   4:	48 8b 05 00 00 00 00 	mov    0x0(%rip),%rax        # b <_ZN5Xbyak9CodeArrayD1Ev+0xb>
   b:	41 54                	push   %r12
   d:	55                   	push   %rbp
   e:	48 89 fd             	mov    %rdi,%rbp
  11:	48 83 c0 10          	add    $0x10,%rax
  15:	53                   	push   %rbx
  16:	48 89 07             	mov    %rax,(%rdi)
  19:	8b 47 20             	mov    0x20(%rdi),%eax
  1c:	83 e8 02             	sub    $0x2,%eax
  1f:	83 f8 01             	cmp    $0x1,%eax
  22:	0f 86 90 00 00 00    	jbe    b8 <_ZN5Xbyak9CodeArrayD1Ev+0xb8>
  28:	48 8b 05 00 00 00 00 	mov    0x0(%rip),%rax        # 2f <_ZN5Xbyak9CodeArrayD1Ev+0x2f>
  2f:	48 8b 5d 40          	mov    0x40(%rbp),%rbx
  33:	48 83 c0 10          	add    $0x10,%rax
  37:	48 89 45 28          	mov    %rax,0x28(%rbp)
  3b:	48 85 db             	test   %rbx,%rbx
  3e:	74 10                	je     50 <_ZN5Xbyak9CodeArrayD1Ev+0x50>
  40:	48 89 df             	mov    %rbx,%rdi
  43:	48 8b 1b             	mov    (%rbx),%rbx
  46:	e8 00 00 00 00       	callq  4b <_ZN5Xbyak9CodeArrayD1Ev+0x4b>
  4b:	48 85 db             	test   %rbx,%rbx
  4e:	75 f0                	jne    40 <_ZN5Xbyak9CodeArrayD1Ev+0x40>
  50:	48 8b 45 38          	mov    0x38(%rbp),%rax
  54:	48 8b 7d 30          	mov    0x30(%rbp),%rdi
  58:	31 f6                	xor    %esi,%esi
  5a:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
  61:	00 
  62:	e8 00 00 00 00       	callq  67 <_ZN5Xbyak9CodeArrayD1Ev+0x67>
  67:	48 8b 7d 30          	mov    0x30(%rbp),%rdi
  6b:	48 8d 45 60          	lea    0x60(%rbp),%rax
  6f:	48 c7 45 48 00 00 00 	movq   $0x0,0x48(%rbp)
  76:	00 
  77:	48 c7 45 40 00 00 00 	movq   $0x0,0x40(%rbp)
  7e:	00 
  7f:	48 39 c7             	cmp    %rax,%rdi
  82:	74 05                	je     89 <_ZN5Xbyak9CodeArrayD1Ev+0x89>
  84:	e8 00 00 00 00       	callq  89 <_ZN5Xbyak9CodeArrayD1Ev+0x89>
  89:	48 8b 5d 08          	mov    0x8(%rbp),%rbx
  8d:	48 83 c5 08          	add    $0x8,%rbp
  91:	48 39 eb             	cmp    %rbp,%rbx
  94:	74 1a                	je     b0 <_ZN5Xbyak9CodeArrayD1Ev+0xb0>
  96:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  9d:	00 00 00 
  a0:	48 89 df             	mov    %rbx,%rdi
  a3:	48 8b 1b             	mov    (%rbx),%rbx
  a6:	e8 00 00 00 00       	callq  ab <_ZN5Xbyak9CodeArrayD1Ev+0xab>
  ab:	48 39 eb             	cmp    %rbp,%rbx
  ae:	75 f0                	jne    a0 <_ZN5Xbyak9CodeArrayD1Ev+0xa0>
  b0:	5b                   	pop    %rbx
  b1:	5d                   	pop    %rbp
  b2:	41 5c                	pop    %r12
  b4:	c3                   	retq   
  b5:	0f 1f 00             	nopl   (%rax)
  b8:	48 8b 7f 68          	mov    0x68(%rdi),%rdi
  bc:	48 8b 07             	mov    (%rdi),%rax
  bf:	48 8b 40 20          	mov    0x20(%rax),%rax
  c3:	48 3b 05 00 00 00 00 	cmp    0x0(%rip),%rax        # ca <_ZN5Xbyak9CodeArrayD1Ev+0xca>
  ca:	75 3f                	jne    10b <_ZN5Xbyak9CodeArrayD1Ev+0x10b>
  cc:	bf 1e 00 00 00       	mov    $0x1e,%edi
  d1:	4c 8b 65 78          	mov    0x78(%rbp),%r12
  d5:	48 8b 5d 70          	mov    0x70(%rbp),%rbx
  d9:	e8 00 00 00 00       	callq  de <_ZN5Xbyak9CodeArrayD1Ev+0xde>
  de:	ba 03 00 00 00       	mov    $0x3,%edx
  e3:	48 f7 d8             	neg    %rax
  e6:	4a 8d 34 23          	lea    (%rbx,%r12,1),%rsi
  ea:	48 89 c7             	mov    %rax,%rdi
  ed:	4c 21 e7             	and    %r12,%rdi
  f0:	48 29 fe             	sub    %rdi,%rsi
  f3:	e8 00 00 00 00       	callq  f8 <_ZN5Xbyak9CodeArrayD1Ev+0xf8>
  f8:	48 8b 7d 68          	mov    0x68(%rbp),%rdi
  fc:	48 8b 75 78          	mov    0x78(%rbp),%rsi
 100:	48 8b 07             	mov    (%rdi),%rax
 103:	ff 50 08             	callq  *0x8(%rax)
 106:	e9 1d ff ff ff       	jmpq   28 <_ZN5Xbyak9CodeArrayD1Ev+0x28>
 10b:	ff d0                	callq  *%rax
 10d:	84 c0                	test   %al,%al
 10f:	74 e7                	je     f8 <_ZN5Xbyak9CodeArrayD1Ev+0xf8>
 111:	eb b9                	jmp    cc <_ZN5Xbyak9CodeArrayD1Ev+0xcc>

Disassembly of section .text._ZN5Xbyak9CodeArrayD0Ev:

0000000000000000 <_ZN5Xbyak9CodeArrayD0Ev>:
   0:	f3 0f 1e fa          	endbr64 
   4:	48 8b 05 00 00 00 00 	mov    0x0(%rip),%rax        # b <_ZN5Xbyak9CodeArrayD0Ev+0xb>
   b:	41 54                	push   %r12
   d:	55                   	push   %rbp
   e:	48 89 fd             	mov    %rdi,%rbp
  11:	48 83 c0 10          	add    $0x10,%rax
  15:	53                   	push   %rbx
  16:	48 89 07             	mov    %rax,(%rdi)
  19:	8b 47 20             	mov    0x20(%rdi),%eax
  1c:	83 e8 02             	sub    $0x2,%eax
  1f:	83 f8 01             	cmp    $0x1,%eax
  22:	0f 86 a0 00 00 00    	jbe    c8 <_ZN5Xbyak9CodeArrayD0Ev+0xc8>
  28:	48 8b 05 00 00 00 00 	mov    0x0(%rip),%rax        # 2f <_ZN5Xbyak9CodeArrayD0Ev+0x2f>
  2f:	48 8b 5d 40          	mov    0x40(%rbp),%rbx
  33:	48 83 c0 10          	add    $0x10,%rax
  37:	48 89 45 28          	mov    %rax,0x28(%rbp)
  3b:	48 85 db             	test   %rbx,%rbx
  3e:	74 10                	je     50 <_ZN5Xbyak9CodeArrayD0Ev+0x50>
  40:	48 89 df             	mov    %rbx,%rdi
  43:	48 8b 1b             	mov    (%rbx),%rbx
  46:	e8 00 00 00 00       	callq  4b <_ZN5Xbyak9CodeArrayD0Ev+0x4b>
  4b:	48 85 db             	test   %rbx,%rbx
  4e:	75 f0                	jne    40 <_ZN5Xbyak9CodeArrayD0Ev+0x40>
  50:	48 8b 45 38          	mov    0x38(%rbp),%rax
  54:	48 8b 7d 30          	mov    0x30(%rbp),%rdi
  58:	31 f6                	xor    %esi,%esi
  5a:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
  61:	00 
  62:	e8 00 00 00 00       	callq  67 <_ZN5Xbyak9CodeArrayD0Ev+0x67>
  67:	48 8b 7d 30          	mov    0x30(%rbp),%rdi
  6b:	48 8d 45 60          	lea    0x60(%rbp),%rax
  6f:	48 c7 45 48 00 00 00 	movq   $0x0,0x48(%rbp)
  76:	00 
  77:	48 c7 45 40 00 00 00 	movq   $0x0,0x40(%rbp)
  7e:	00 
  7f:	48 39 c7             	cmp    %rax,%rdi
  82:	74 05                	je     89 <_ZN5Xbyak9CodeArrayD0Ev+0x89>
  84:	e8 00 00 00 00       	callq  89 <_ZN5Xbyak9CodeArrayD0Ev+0x89>
  89:	48 8b 5d 08          	mov    0x8(%rbp),%rbx
  8d:	4c 8d 65 08          	lea    0x8(%rbp),%r12
  91:	4c 39 e3             	cmp    %r12,%rbx
  94:	74 1a                	je     b0 <_ZN5Xbyak9CodeArrayD0Ev+0xb0>
  96:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  9d:	00 00 00 
  a0:	48 89 df             	mov    %rbx,%rdi
  a3:	48 8b 1b             	mov    (%rbx),%rbx
  a6:	e8 00 00 00 00       	callq  ab <_ZN5Xbyak9CodeArrayD0Ev+0xab>
  ab:	4c 39 e3             	cmp    %r12,%rbx
  ae:	75 f0                	jne    a0 <_ZN5Xbyak9CodeArrayD0Ev+0xa0>
  b0:	5b                   	pop    %rbx
  b1:	48 89 ef             	mov    %rbp,%rdi
  b4:	be 90 00 00 00       	mov    $0x90,%esi
  b9:	5d                   	pop    %rbp
  ba:	41 5c                	pop    %r12
  bc:	e9 00 00 00 00       	jmpq   c1 <_ZN5Xbyak9CodeArrayD0Ev+0xc1>
  c1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  c8:	48 8b 7f 68          	mov    0x68(%rdi),%rdi
  cc:	48 8b 07             	mov    (%rdi),%rax
  cf:	48 8b 40 20          	mov    0x20(%rax),%rax
  d3:	48 3b 05 00 00 00 00 	cmp    0x0(%rip),%rax        # da <_ZN5Xbyak9CodeArrayD0Ev+0xda>
  da:	75 44                	jne    120 <_ZN5Xbyak9CodeArrayD0Ev+0x120>
  dc:	bf 1e 00 00 00       	mov    $0x1e,%edi
  e1:	4c 8b 65 78          	mov    0x78(%rbp),%r12
  e5:	48 8b 5d 70          	mov    0x70(%rbp),%rbx
  e9:	e8 00 00 00 00       	callq  ee <_ZN5Xbyak9CodeArrayD0Ev+0xee>
  ee:	ba 03 00 00 00       	mov    $0x3,%edx
  f3:	48 f7 d8             	neg    %rax
  f6:	4a 8d 34 23          	lea    (%rbx,%r12,1),%rsi
  fa:	48 89 c7             	mov    %rax,%rdi
  fd:	4c 21 e7             	and    %r12,%rdi
 100:	48 29 fe             	sub    %rdi,%rsi
 103:	e8 00 00 00 00       	callq  108 <_ZN5Xbyak9CodeArrayD0Ev+0x108>
 108:	48 8b 7d 68          	mov    0x68(%rbp),%rdi
 10c:	48 8b 75 78          	mov    0x78(%rbp),%rsi
 110:	48 8b 07             	mov    (%rdi),%rax
 113:	ff 50 08             	callq  *0x8(%rax)
 116:	e9 0d ff ff ff       	jmpq   28 <_ZN5Xbyak9CodeArrayD0Ev+0x28>
 11b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
 120:	ff d0                	callq  *%rax
 122:	84 c0                	test   %al,%al
 124:	74 e2                	je     108 <_ZN5Xbyak9CodeArrayD0Ev+0x108>
 126:	eb b4                	jmp    dc <_ZN5Xbyak9CodeArrayD0Ev+0xdc>

Disassembly of section .text._ZN6cybozu9ExceptionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb:

0000000000000000 <_ZN6cybozu9ExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb>:
   0:	f3 0f 1e fa          	endbr64 
   4:	41 55                	push   %r13
   6:	41 54                	push   %r12
   8:	55                   	push   %rbp
   9:	48 89 fd             	mov    %rdi,%rbp
   c:	48 83 c7 18          	add    $0x18,%rdi
  10:	48 83 ec 10          	sub    $0x10,%rsp
  14:	48 8b 05 00 00 00 00 	mov    0x0(%rip),%rax        # 1b <_ZN6cybozu9ExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb+0x1b>
  1b:	4c 8b 66 08          	mov    0x8(%rsi),%r12
  1f:	48 83 c0 10          	add    $0x10,%rax
  23:	48 89 47 e8          	mov    %rax,-0x18(%rdi)
  27:	48 89 7d 08          	mov    %rdi,0x8(%rbp)
  2b:	4c 8b 2e             	mov    (%rsi),%r13
  2e:	4c 89 e8             	mov    %r13,%rax
  31:	4c 01 e0             	add    %r12,%rax
  34:	74 05                	je     3b <_ZN6cybozu9ExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb+0x3b>
  36:	4d 85 ed             	test   %r13,%r13
  39:	74 7b                	je     b6 <_ZN6cybozu9ExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb+0xb6>
  3b:	4c 89 64 24 08       	mov    %r12,0x8(%rsp)
  40:	49 83 fc 0f          	cmp    $0xf,%r12
  44:	77 3a                	ja     80 <_ZN6cybozu9ExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb+0x80>
  46:	49 83 fc 01          	cmp    $0x1,%r12
  4a:	75 24                	jne    70 <_ZN6cybozu9ExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb+0x70>
  4c:	41 0f b6 45 00       	movzbl 0x0(%r13),%eax
  51:	88 45 18             	mov    %al,0x18(%rbp)
  54:	4c 89 65 10          	mov    %r12,0x10(%rbp)
  58:	42 c6 04 27 00       	movb   $0x0,(%rdi,%r12,1)
  5d:	48 83 c4 10          	add    $0x10,%rsp
  61:	5d                   	pop    %rbp
  62:	41 5c                	pop    %r12
  64:	41 5d                	pop    %r13
  66:	c3                   	retq   
  67:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  6e:	00 00 
  70:	4d 85 e4             	test   %r12,%r12
  73:	74 df                	je     54 <_ZN6cybozu9ExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb+0x54>
  75:	eb 29                	jmp    a0 <_ZN6cybozu9ExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb+0xa0>
  77:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  7e:	00 00 
  80:	48 8d 74 24 08       	lea    0x8(%rsp),%rsi
  85:	48 8d 7d 08          	lea    0x8(%rbp),%rdi
  89:	31 d2                	xor    %edx,%edx
  8b:	e8 00 00 00 00       	callq  90 <_ZN6cybozu9ExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb+0x90>
  90:	48 89 45 08          	mov    %rax,0x8(%rbp)
  94:	48 89 c7             	mov    %rax,%rdi
  97:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
  9c:	48 89 45 18          	mov    %rax,0x18(%rbp)
  a0:	4c 89 e2             	mov    %r12,%rdx
  a3:	4c 89 ee             	mov    %r13,%rsi
  a6:	e8 00 00 00 00       	callq  ab <_ZN6cybozu9ExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb+0xab>
  ab:	4c 8b 64 24 08       	mov    0x8(%rsp),%r12
  b0:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
  b4:	eb 9e                	jmp    54 <_ZN6cybozu9ExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb+0x54>
  b6:	48 8d 3d 00 00 00 00 	lea    0x0(%rip),%rdi        # bd <_ZN6cybozu9ExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb+0xbd>
  bd:	e8 00 00 00 00       	callq  c2 <_ZN6cybozu9ExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb+0xc2>
  c2:	f3 0f 1e fa          	endbr64 
  c6:	49 89 c4             	mov    %rax,%r12
  c9:	48 89 ef             	mov    %rbp,%rdi
  cc:	e8 00 00 00 00       	callq  d1 <_ZN6cybozu9ExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb+0xd1>
  d1:	4c 89 e7             	mov    %r12,%rdi
  d4:	e8 00 00 00 00       	callq  d9 <_ZN5Xbyak9CodeArray2dbEi.part.0+0x31>

Disassembly of section .text._ZN3mcl2fp10decToArrayEPmmPKcm:

0000000000000000 <_ZN3mcl2fp10decToArrayEPmmPKcm>:
   0:	f3 0f 1e fa          	endbr64 
   4:	55                   	push   %rbp
   5:	48 8d 04 f5 17 00 00 	lea    0x17(,%rsi,8),%rax
   c:	00 
   d:	49 89 d2             	mov    %rdx,%r10
  10:	48 89 c2             	mov    %rax,%rdx
  13:	48 25 00 f0 ff ff    	and    $0xfffffffffffff000,%rax
  19:	48 83 e2 f0          	and    $0xfffffffffffffff0,%rdx
  1d:	48 89 e5             	mov    %rsp,%rbp
  20:	41 57                	push   %r15
  22:	41 56                	push   %r14
  24:	41 55                	push   %r13
  26:	41 54                	push   %r12
  28:	53                   	push   %rbx
  29:	48 89 f3             	mov    %rsi,%rbx
  2c:	48 83 ec 08          	sub    $0x8,%rsp
  30:	48 89 e6             	mov    %rsp,%rsi
  33:	48 29 c6             	sub    %rax,%rsi
  36:	48 89 f0             	mov    %rsi,%rax
  39:	48 39 c4             	cmp    %rax,%rsp
  3c:	74 15                	je     53 <_ZN3mcl2fp10decToArrayEPmmPKcm+0x53>
  3e:	48 81 ec 00 10 00 00 	sub    $0x1000,%rsp
  45:	48 83 8c 24 f8 0f 00 	orq    $0x0,0xff8(%rsp)
  4c:	00 00 
  4e:	48 39 c4             	cmp    %rax,%rsp
  51:	75 eb                	jne    3e <_ZN3mcl2fp10decToArrayEPmmPKcm+0x3e>
  53:	81 e2 ff 0f 00 00    	and    $0xfff,%edx
  59:	48 29 d4             	sub    %rdx,%rsp
  5c:	48 85 d2             	test   %rdx,%rdx
  5f:	0f 85 3b 03 00 00    	jne    3a0 <_ZN3mcl2fp10decToArrayEPmmPKcm+0x3a0>
  65:	4c 8d 4c 24 0f       	lea    0xf(%rsp),%r9
  6a:	49 83 e1 f0          	and    $0xfffffffffffffff0,%r9
  6e:	48 01 db             	add    %rbx,%rbx
  71:	0f 84 71 02 00 00    	je     2e8 <_ZN3mcl2fp10decToArrayEPmmPKcm+0x2e8>
  77:	41 c7 01 00 00 00 00 	movl   $0x0,(%r9)
  7e:	48 85 c9             	test   %rcx,%rcx
  81:	0f 84 36 03 00 00    	je     3bd <_ZN3mcl2fp10decToArrayEPmmPKcm+0x3bd>
  87:	49 bc 8f e3 38 8e e3 	movabs $0xe38e38e38e38e38f,%r12
  8e:	38 8e e3 
  91:	be 01 00 00 00       	mov    $0x1,%esi
  96:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  9d:	00 00 00 
  a0:	48 89 c8             	mov    %rcx,%rax
  a3:	49 f7 e4             	mul    %r12
  a6:	48 89 c8             	mov    %rcx,%rax
  a9:	49 89 d0             	mov    %rdx,%r8
  ac:	48 83 e2 f8          	and    $0xfffffffffffffff8,%rdx
  b0:	49 c1 e8 03          	shr    $0x3,%r8
  b4:	49 01 d0             	add    %rdx,%r8
  b7:	4c 29 c0             	sub    %r8,%rax
  ba:	49 89 c0             	mov    %rax,%r8
  bd:	41 0f be 02          	movsbl (%r10),%eax
  c1:	8d 50 d0             	lea    -0x30(%rax),%edx
  c4:	0f 85 26 02 00 00    	jne    2f0 <_ZN3mcl2fp10decToArrayEPmmPKcm+0x2f0>
  ca:	80 fa 09             	cmp    $0x9,%dl
  cd:	0f 87 15 02 00 00    	ja     2e8 <_ZN3mcl2fp10decToArrayEPmmPKcm+0x2e8>
  d3:	41 0f be 52 01       	movsbl 0x1(%r10),%edx
  d8:	83 e8 30             	sub    $0x30,%eax
  db:	44 8d 42 d0          	lea    -0x30(%rdx),%r8d
  df:	41 80 f8 09          	cmp    $0x9,%r8b
  e3:	0f 87 ff 01 00 00    	ja     2e8 <_ZN3mcl2fp10decToArrayEPmmPKcm+0x2e8>
  e9:	8d 04 80             	lea    (%rax,%rax,4),%eax
  ec:	8d 54 42 d0          	lea    -0x30(%rdx,%rax,2),%edx
  f0:	41 0f be 42 02       	movsbl 0x2(%r10),%eax
  f5:	44 8d 40 d0          	lea    -0x30(%rax),%r8d
  f9:	41 80 f8 09          	cmp    $0x9,%r8b
  fd:	0f 87 e5 01 00 00    	ja     2e8 <_ZN3mcl2fp10decToArrayEPmmPKcm+0x2e8>
 103:	8d 14 92             	lea    (%rdx,%rdx,4),%edx
 106:	41 b8 09 00 00 00    	mov    $0x9,%r8d
 10c:	8d 44 50 d0          	lea    -0x30(%rax,%rdx,2),%eax
 110:	41 0f be 52 03       	movsbl 0x3(%r10),%edx
 115:	44 8d 5a d0          	lea    -0x30(%rdx),%r11d
 119:	41 80 fb 09          	cmp    $0x9,%r11b
 11d:	0f 87 c5 01 00 00    	ja     2e8 <_ZN3mcl2fp10decToArrayEPmmPKcm+0x2e8>
 123:	8d 04 80             	lea    (%rax,%rax,4),%eax
 126:	8d 44 42 d0          	lea    -0x30(%rdx,%rax,2),%eax
 12a:	49 83 f8 04          	cmp    $0x4,%r8
 12e:	0f 84 a4 00 00 00    	je     1d8 <_ZN3mcl2fp10decToArrayEPmmPKcm+0x1d8>
 134:	41 0f be 52 04       	movsbl 0x4(%r10),%edx
 139:	44 8d 5a d0          	lea    -0x30(%rdx),%r11d
 13d:	41 80 fb 09          	cmp    $0x9,%r11b
 141:	0f 87 a1 01 00 00    	ja     2e8 <_ZN3mcl2fp10decToArrayEPmmPKcm+0x2e8>
 147:	8d 04 80             	lea    (%rax,%rax,4),%eax
 14a:	8d 44 42 d0          	lea    -0x30(%rdx,%rax,2),%eax
 14e:	49 83 f8 05          	cmp    $0x5,%r8
 152:	0f 84 80 00 00 00    	je     1d8 <_ZN3mcl2fp10decToArrayEPmmPKcm+0x1d8>
 158:	41 0f be 52 05       	movsbl 0x5(%r10),%edx
 15d:	44 8d 5a d0          	lea    -0x30(%rdx),%r11d
 161:	41 80 fb 09          	cmp    $0x9,%r11b
 165:	0f 87 7d 01 00 00    	ja     2e8 <_ZN3mcl2fp10decToArrayEPmmPKcm+0x2e8>
 16b:	8d 04 80             	lea    (%rax,%rax,4),%eax
 16e:	8d 44 42 d0          	lea    -0x30(%rdx,%rax,2),%eax
 172:	49 83 f8 06          	cmp    $0x6,%r8
 176:	74 60                	je     1d8 <_ZN3mcl2fp10decToArrayEPmmPKcm+0x1d8>
 178:	41 0f be 52 06       	movsbl 0x6(%r10),%edx
 17d:	44 8d 5a d0          	lea    -0x30(%rdx),%r11d
 181:	41 80 fb 09          	cmp    $0x9,%r11b
 185:	0f 87 5d 01 00 00    	ja     2e8 <_ZN3mcl2fp10decToArrayEPmmPKcm+0x2e8>
 18b:	8d 04 80             	lea    (%rax,%rax,4),%eax
 18e:	8d 44 42 d0          	lea    -0x30(%rdx,%rax,2),%eax
 192:	49 83 f8 07          	cmp    $0x7,%r8
 196:	74 40                	je     1d8 <_ZN3mcl2fp10decToArrayEPmmPKcm+0x1d8>
 198:	41 0f be 52 07       	movsbl 0x7(%r10),%edx
 19d:	44 8d 5a d0          	lea    -0x30(%rdx),%r11d
 1a1:	41 80 fb 09          	cmp    $0x9,%r11b
 1a5:	0f 87 3d 01 00 00    	ja     2e8 <_ZN3mcl2fp10decToArrayEPmmPKcm+0x2e8>
 1ab:	8d 04 80             	lea    (%rax,%rax,4),%eax
 1ae:	8d 44 42 d0          	lea    -0x30(%rdx,%rax,2),%eax
 1b2:	49 83 f8 08          	cmp    $0x8,%r8
 1b6:	74 20                	je     1d8 <_ZN3mcl2fp10decToArrayEPmmPKcm+0x1d8>
 1b8:	41 0f be 52 08       	movsbl 0x8(%r10),%edx
 1bd:	44 8d 42 d0          	lea    -0x30(%rdx),%r8d
 1c1:	41 80 f8 09          	cmp    $0x9,%r8b
 1c5:	0f 87 1d 01 00 00    	ja     2e8 <_ZN3mcl2fp10decToArrayEPmmPKcm+0x2e8>
 1cb:	8d 04 80             	lea    (%rax,%rax,4),%eax
 1ce:	41 b8 09 00 00 00    	mov    $0x9,%r8d
 1d4:	8d 44 42 d0          	lea    -0x30(%rdx,%rax,2),%eax
 1d8:	41 8b 11             	mov    (%r9),%edx
 1db:	4d 8d 59 04          	lea    0x4(%r9),%r11
 1df:	48 69 d2 00 ca 9a 3b 	imul   $0x3b9aca00,%rdx,%rdx
 1e6:	49 89 d6             	mov    %rdx,%r14
 1e9:	41 89 11             	mov    %edx,(%r9)
 1ec:	49 c1 ee 20          	shr    $0x20,%r14
 1f0:	4d 89 f7             	mov    %r14,%r15
 1f3:	4d 8d 34 b1          	lea    (%r9,%rsi,4),%r14
 1f7:	48 83 fe 01          	cmp    $0x1,%rsi
 1fb:	74 36                	je     233 <_ZN3mcl2fp10decToArrayEPmmPKcm+0x233>
 1fd:	0f 1f 00             	nopl   (%rax)
 200:	41 8b 13             	mov    (%r11),%edx
 203:	48 69 d2 00 ca 9a 3b 	imul   $0x3b9aca00,%rdx,%rdx
 20a:	49 89 d5             	mov    %rdx,%r13
 20d:	49 c1 ed 20          	shr    $0x20,%r13
 211:	44 01 fa             	add    %r15d,%edx
 214:	41 0f 92 c7          	setb   %r15b
 218:	41 89 13             	mov    %edx,(%r11)
 21b:	45 0f b6 ff          	movzbl %r15b,%r15d
 21f:	41 83 ff 01          	cmp    $0x1,%r15d
 223:	45 89 ef             	mov    %r13d,%r15d
 226:	41 83 df ff          	sbb    $0xffffffff,%r15d
 22a:	49 83 c3 04          	add    $0x4,%r11
 22e:	4d 39 de             	cmp    %r11,%r14
 231:	75 cd                	jne    200 <_ZN3mcl2fp10decToArrayEPmmPKcm+0x200>
 233:	45 85 ff             	test   %r15d,%r15d
 236:	0f 84 14 01 00 00    	je     350 <_ZN3mcl2fp10decToArrayEPmmPKcm+0x350>
 23c:	48 39 f3             	cmp    %rsi,%rbx
 23f:	0f 84 a3 00 00 00    	je     2e8 <_ZN3mcl2fp10decToArrayEPmmPKcm+0x2e8>
 245:	45 89 3c b1          	mov    %r15d,(%r9,%rsi,4)
 249:	41 03 01             	add    (%r9),%eax
 24c:	4c 8d 5e 01          	lea    0x1(%rsi),%r11
 250:	41 89 01             	mov    %eax,(%r9)
 253:	73 1f                	jae    274 <_ZN3mcl2fp10decToArrayEPmmPKcm+0x274>
 255:	b8 01 00 00 00       	mov    $0x1,%eax
 25a:	eb 11                	jmp    26d <_ZN3mcl2fp10decToArrayEPmmPKcm+0x26d>
 25c:	0f 1f 40 00          	nopl   0x0(%rax)
 260:	48 83 c0 01          	add    $0x1,%rax
 264:	4c 39 d8             	cmp    %r11,%rax
 267:	0f 83 03 01 00 00    	jae    370 <_ZN3mcl2fp10decToArrayEPmmPKcm+0x370>
 26d:	41 83 04 81 01       	addl   $0x1,(%r9,%rax,4)
 272:	74 ec                	je     260 <_ZN3mcl2fp10decToArrayEPmmPKcm+0x260>
 274:	4c 89 de             	mov    %r11,%rsi
 277:	4d 01 c2             	add    %r8,%r10
 27a:	4c 29 c1             	sub    %r8,%rcx
 27d:	0f 85 1d fe ff ff    	jne    a0 <_ZN3mcl2fp10decToArrayEPmmPKcm+0xa0>
 283:	40 f6 c6 01          	test   $0x1,%sil
 287:	0f 84 45 01 00 00    	je     3d2 <_ZN3mcl2fp10decToArrayEPmmPKcm+0x3d2>
 28d:	48 8d 04 b5 00 00 00 	lea    0x0(,%rsi,4),%rax
 294:	00 
 295:	48 83 c6 01          	add    $0x1,%rsi
 299:	49 89 f2             	mov    %rsi,%r10
 29c:	49 d1 ea             	shr    %r10
 29f:	41 c7 04 01 00 00 00 	movl   $0x0,(%r9,%rax,1)
 2a6:	00 
 2a7:	31 c0                	xor    %eax,%eax
 2a9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
 2b0:	41 8b 54 81 04       	mov    0x4(%r9,%rax,4),%edx
 2b5:	45 8b 04 81          	mov    (%r9,%rax,4),%r8d
 2b9:	48 89 c1             	mov    %rax,%rcx
 2bc:	48 83 c0 02          	add    $0x2,%rax
 2c0:	48 d1 e9             	shr    %rcx
 2c3:	48 c1 e2 20          	shl    $0x20,%rdx
 2c7:	4c 09 c2             	or     %r8,%rdx
 2ca:	48 89 14 cf          	mov    %rdx,(%rdi,%rcx,8)
 2ce:	48 39 f0             	cmp    %rsi,%rax
 2d1:	72 dd                	jb     2b0 <_ZN3mcl2fp10decToArrayEPmmPKcm+0x2b0>
 2d3:	48 8d 65 d8          	lea    -0x28(%rbp),%rsp
 2d7:	4c 89 d0             	mov    %r10,%rax
 2da:	5b                   	pop    %rbx
 2db:	41 5c                	pop    %r12
 2dd:	41 5d                	pop    %r13
 2df:	41 5e                	pop    %r14
 2e1:	41 5f                	pop    %r15
 2e3:	5d                   	pop    %rbp
 2e4:	c3                   	retq   
 2e5:	0f 1f 00             	nopl   (%rax)
 2e8:	45 31 d2             	xor    %r10d,%r10d
 2eb:	eb e6                	jmp    2d3 <_ZN3mcl2fp10decToArrayEPmmPKcm+0x2d3>
 2ed:	0f 1f 00             	nopl   (%rax)
 2f0:	80 fa 09             	cmp    $0x9,%dl
 2f3:	77 f3                	ja     2e8 <_ZN3mcl2fp10decToArrayEPmmPKcm+0x2e8>
 2f5:	83 e8 30             	sub    $0x30,%eax
 2f8:	49 83 f8 01          	cmp    $0x1,%r8
 2fc:	0f 84 d6 fe ff ff    	je     1d8 <_ZN3mcl2fp10decToArrayEPmmPKcm+0x1d8>
 302:	41 0f be 52 01       	movsbl 0x1(%r10),%edx
 307:	44 8d 5a d0          	lea    -0x30(%rdx),%r11d
 30b:	41 80 fb 09          	cmp    $0x9,%r11b
 30f:	77 d7                	ja     2e8 <_ZN3mcl2fp10decToArrayEPmmPKcm+0x2e8>
 311:	8d 04 80             	lea    (%rax,%rax,4),%eax
 314:	8d 44 42 d0          	lea    -0x30(%rdx,%rax,2),%eax
 318:	49 83 f8 02          	cmp    $0x2,%r8
 31c:	0f 84 b6 fe ff ff    	je     1d8 <_ZN3mcl2fp10decToArrayEPmmPKcm+0x1d8>
 322:	41 0f be 52 02       	movsbl 0x2(%r10),%edx
 327:	44 8d 5a d0          	lea    -0x30(%rdx),%r11d
 32b:	41 80 fb 09          	cmp    $0x9,%r11b
 32f:	77 b7                	ja     2e8 <_ZN3mcl2fp10decToArrayEPmmPKcm+0x2e8>
 331:	8d 04 80             	lea    (%rax,%rax,4),%eax
 334:	8d 44 42 d0          	lea    -0x30(%rdx,%rax,2),%eax
 338:	49 83 f8 03          	cmp    $0x3,%r8
 33c:	0f 85 ce fd ff ff    	jne    110 <_ZN3mcl2fp10decToArrayEPmmPKcm+0x110>
 342:	e9 91 fe ff ff       	jmpq   1d8 <_ZN3mcl2fp10decToArrayEPmmPKcm+0x1d8>
 347:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
 34e:	00 00 
 350:	41 03 01             	add    (%r9),%eax
 353:	41 89 01             	mov    %eax,(%r9)
 356:	0f 83 1b ff ff ff    	jae    277 <_ZN3mcl2fp10decToArrayEPmmPKcm+0x277>
 35c:	48 83 fe 01          	cmp    $0x1,%rsi
 360:	74 2e                	je     390 <_ZN3mcl2fp10decToArrayEPmmPKcm+0x390>
 362:	49 89 f3             	mov    %rsi,%r11
 365:	e9 eb fe ff ff       	jmpq   255 <_ZN3mcl2fp10decToArrayEPmmPKcm+0x255>
 36a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
 370:	4c 39 db             	cmp    %r11,%rbx
 373:	0f 84 6f ff ff ff    	je     2e8 <_ZN3mcl2fp10decToArrayEPmmPKcm+0x2e8>
 379:	43 c7 04 99 01 00 00 	movl   $0x1,(%r9,%r11,4)
 380:	00 
 381:	49 8d 73 01          	lea    0x1(%r11),%rsi
 385:	e9 ed fe ff ff       	jmpq   277 <_ZN3mcl2fp10decToArrayEPmmPKcm+0x277>
 38a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
 390:	41 bb 01 00 00 00    	mov    $0x1,%r11d
 396:	eb e1                	jmp    379 <_ZN3mcl2fp10decToArrayEPmmPKcm+0x379>
 398:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
 39f:	00 
 3a0:	48 83 4c 14 f8 00    	orq    $0x0,-0x8(%rsp,%rdx,1)
 3a6:	4c 8d 4c 24 0f       	lea    0xf(%rsp),%r9
 3ab:	49 83 e1 f0          	and    $0xfffffffffffffff0,%r9
 3af:	48 01 db             	add    %rbx,%rbx
 3b2:	0f 85 bf fc ff ff    	jne    77 <_ZN3mcl2fp10decToArrayEPmmPKcm+0x77>
 3b8:	e9 2b ff ff ff       	jmpq   2e8 <_ZN3mcl2fp10decToArrayEPmmPKcm+0x2e8>
 3bd:	41 ba 01 00 00 00    	mov    $0x1,%r10d
 3c3:	be 02 00 00 00       	mov    $0x2,%esi
 3c8:	b8 04 00 00 00       	mov    $0x4,%eax
 3cd:	e9 cd fe ff ff       	jmpq   29f <_ZN3mcl2fp10decToArrayEPmmPKcm+0x29f>
 3d2:	49 89 f2             	mov    %rsi,%r10
 3d5:	49 d1 ea             	shr    %r10
 3d8:	e9 ca fe ff ff       	jmpq   2a7 <_ZN3mcl2fp10decToArrayEPmmPKcm+0x2a7>

Disassembly of section .text._ZN5Xbyak6RegExpC2ERKNS_3RegEi:

0000000000000000 <_ZN5Xbyak6RegExpC1ERKNS_3RegEi>:
   0:	f3 0f 1e fa          	endbr64 
   4:	48 83 ec 08          	sub    $0x8,%rsp
   8:	81 27 00 00 00 80    	andl   $0x80000000,(%rdi)
   e:	80 67 04 c0          	andb   $0xc0,0x4(%rdi)
  12:	81 67 08 00 00 00 80 	andl   $0x80000000,0x8(%rdi)
  19:	80 67 0c c0          	andb   $0xc0,0xc(%rdi)
  1d:	0f b7 06             	movzwl (%rsi),%eax
  20:	89 57 10             	mov    %edx,0x10(%rdi)
  23:	89 c1                	mov    %eax,%ecx
  25:	48 c7 47 18 00 00 00 	movq   $0x0,0x18(%rdi)
  2c:	00 
  2d:	66 c1 e9 06          	shr    $0x6,%cx
  31:	a8 80                	test   $0x80,%al
  33:	74 3b                	je     70 <_ZN5Xbyak6RegExpC1ERKNS_3RegEi+0x70>
  35:	f6 46 02 60          	testb  $0x60,0x2(%rsi)
  39:	74 35                	je     70 <_ZN5Xbyak6RegExpC1ERKNS_3RegEi+0x70>
  3b:	85 d2                	test   %edx,%edx
  3d:	74 2b                	je     6a <_ZN5Xbyak6RegExpC1ERKNS_3RegEi+0x6a>
  3f:	8d 42 fc             	lea    -0x4(%rdx),%eax
  42:	83 e0 fb             	and    $0xfffffffb,%eax
  45:	75 69                	jne    b0 <_ZN5Xbyak6RegExpC1ERKNS_3RegEi+0xb0>
  47:	0f b7 46 02          	movzwl 0x2(%rsi),%eax
  4b:	66 25 ff 3f          	and    $0x3fff,%ax
  4f:	66 83 f8 7f          	cmp    $0x7f,%ax
  53:	8b 06                	mov    (%rsi),%eax
  55:	77 09                	ja     60 <_ZN5Xbyak6RegExpC1ERKNS_3RegEi+0x60>
  57:	83 fa 01             	cmp    $0x1,%edx
  5a:	0f 84 90 00 00 00    	je     f0 <_ZN5Xbyak6RegExpC1ERKNS_3RegEi+0xf0>
  60:	89 47 08             	mov    %eax,0x8(%rdi)
  63:	0f b6 46 04          	movzbl 0x4(%rsi),%eax
  67:	88 47 0c             	mov    %al,0xc(%rdi)
  6a:	48 83 c4 08          	add    $0x8,%rsp
  6e:	c3                   	retq   
  6f:	90                   	nop
  70:	66 f7 c1 70 02       	test   $0x270,%cx
  75:	75 c4                	jne    3b <_ZN5Xbyak6RegExpC1ERKNS_3RegEi+0x3b>
  77:	bf 10 00 00 00       	mov    $0x10,%edi
  7c:	e8 00 00 00 00       	callq  81 <_ZN5Xbyak6RegExpC1ERKNS_3RegEi+0x81>
  81:	48 8b 15 00 00 00 00 	mov    0x0(%rip),%rdx        # 88 <_ZN5Xbyak6RegExpC1ERKNS_3RegEi+0x88>
  88:	48 8b 35 00 00 00 00 	mov    0x0(%rip),%rsi        # 8f <_ZN5Xbyak6RegExpC1ERKNS_3RegEi+0x8f>
  8f:	48 89 c7             	mov    %rax,%rdi
  92:	48 8b 05 00 00 00 00 	mov    0x0(%rip),%rax        # 99 <_ZN5Xbyak6RegExpC1ERKNS_3RegEi+0x99>
  99:	c7 47 08 06 00 00 00 	movl   $0x6,0x8(%rdi)
  a0:	48 83 c0 10          	add    $0x10,%rax
  a4:	48 89 07             	mov    %rax,(%rdi)
  a7:	e8 00 00 00 00       	callq  ac <_ZN5Xbyak6RegExpC1ERKNS_3RegEi+0xac>
  ac:	0f 1f 40 00          	nopl   0x0(%rax)
  b0:	8d 42 ff             	lea    -0x1(%rdx),%eax
  b3:	83 f8 01             	cmp    $0x1,%eax
  b6:	76 8f                	jbe    47 <_ZN5Xbyak6RegExpC1ERKNS_3RegEi+0x47>
  b8:	bf 10 00 00 00       	mov    $0x10,%edi
  bd:	e8 00 00 00 00       	callq  c2 <_ZN5Xbyak6RegExpC1ERKNS_3RegEi+0xc2>
  c2:	48 8b 15 00 00 00 00 	mov    0x0(%rip),%rdx        # c9 <_ZN5Xbyak6RegExpC1ERKNS_3RegEi+0xc9>
  c9:	48 8b 35 00 00 00 00 	mov    0x0(%rip),%rsi        # d0 <_ZN5Xbyak6RegExpC1ERKNS_3RegEi+0xd0>
  d0:	48 89 c7             	mov    %rax,%rdi
  d3:	48 8b 05 00 00 00 00 	mov    0x0(%rip),%rax        # da <_ZN5Xbyak6RegExpC1ERKNS_3RegEi+0xda>
  da:	c7 47 08 03 00 00 00 	movl   $0x3,0x8(%rdi)
  e1:	48 83 c0 10          	add    $0x10,%rax
  e5:	48 89 07             	mov    %rax,(%rdi)
  e8:	e8 00 00 00 00       	callq  ed <_ZN5Xbyak6RegExpC1ERKNS_3RegEi+0xed>
  ed:	0f 1f 00             	nopl   (%rax)
  f0:	89 07                	mov    %eax,(%rdi)
  f2:	0f b6 46 04          	movzbl 0x4(%rsi),%eax
  f6:	88 47 04             	mov    %al,0x4(%rdi)
  f9:	48 83 c4 08          	add    $0x8,%rsp
  fd:	c3                   	retq   

Disassembly of section .text._ZN5Xbyak9CodeArray2dbEi:

0000000000000000 <_ZN5Xbyak9CodeArray2dbEi>:
   0:	f3 0f 1e fa          	endbr64 
   4:	41 55                	push   %r13
   6:	41 89 f5             	mov    %esi,%r13d
   9:	41 54                	push   %r12
   b:	55                   	push   %rbp
   c:	53                   	push   %rbx
   d:	48 89 fb             	mov    %rdi,%rbx
  10:	48 83 ec 08          	sub    $0x8,%rsp
  14:	48 8b 87 80 00 00 00 	mov    0x80(%rdi),%rax
  1b:	48 8b 6f 70          	mov    0x70(%rdi),%rbp
  1f:	48 39 e8             	cmp    %rbp,%rax
  22:	0f 82 98 00 00 00    	jb     c0 <_ZN5Xbyak9CodeArray2dbEi+0xc0>
  28:	83 7f 20 03          	cmpl   $0x3,0x20(%rdi)
  2c:	0f 85 94 00 00 00    	jne    c6 <_ZN5Xbyak9CodeArray2dbEi+0xc6>
  32:	48 8b 7f 68          	mov    0x68(%rdi),%rdi
  36:	48 01 ed             	add    %rbp,%rbp
  39:	b8 00 10 00 00       	mov    $0x1000,%eax
  3e:	48 81 fd 00 10 00 00 	cmp    $0x1000,%rbp
  45:	48 0f 42 e8          	cmovb  %rax,%rbp
  49:	48 8b 07             	mov    (%rdi),%rax
  4c:	48 89 ee             	mov    %rbp,%rsi
  4f:	ff 10                	callq  *(%rax)
  51:	49 89 c4             	mov    %rax,%r12
  54:	48 85 c0             	test   %rax,%rax
  57:	74 72                	je     cb <_ZN5Xbyak9CodeArray2dbEi+0xcb>
  59:	31 d2                	xor    %edx,%edx
  5b:	48 83 bb 80 00 00 00 	cmpq   $0x0,0x80(%rbx)
  62:	00 
  63:	74 1c                	je     81 <_ZN5Xbyak9CodeArray2dbEi+0x81>
  65:	0f 1f 00             	nopl   (%rax)
  68:	48 8b 43 78          	mov    0x78(%rbx),%rax
  6c:	0f b6 04 10          	movzbl (%rax,%rdx,1),%eax
  70:	41 88 04 14          	mov    %al,(%r12,%rdx,1)
  74:	48 83 c2 01          	add    $0x1,%rdx
  78:	48 39 93 80 00 00 00 	cmp    %rdx,0x80(%rbx)
  7f:	77 e7                	ja     68 <_ZN5Xbyak9CodeArray2dbEi+0x68>
  81:	48 8b 7b 68          	mov    0x68(%rbx),%rdi
  85:	48 8b 73 78          	mov    0x78(%rbx),%rsi
  89:	48 8b 07             	mov    (%rdi),%rax
  8c:	ff 50 08             	callq  *0x8(%rax)
  8f:	4c 89 63 78          	mov    %r12,0x78(%rbx)
  93:	48 8b 83 80 00 00 00 	mov    0x80(%rbx),%rax
  9a:	48 89 6b 70          	mov    %rbp,0x70(%rbx)
  9e:	48 8d 50 01          	lea    0x1(%rax),%rdx
  a2:	48 89 93 80 00 00 00 	mov    %rdx,0x80(%rbx)
  a9:	45 88 2c 04          	mov    %r13b,(%r12,%rax,1)
  ad:	48 83 c4 08          	add    $0x8,%rsp
  b1:	5b                   	pop    %rbx
  b2:	5d                   	pop    %rbp
  b3:	41 5c                	pop    %r12
  b5:	41 5d                	pop    %r13
  b7:	c3                   	retq   
  b8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  bf:	00 
  c0:	4c 8b 67 78          	mov    0x78(%rdi),%r12
  c4:	eb d8                	jmp    9e <_ZN5Xbyak9CodeArray2dbEi+0x9e>
  c6:	e8 00 00 00 00       	callq  cb <_ZN5Xbyak9CodeArray2dbEi+0xcb>
  cb:	e8 00 00 00 00       	callq  d0 <_ZN5Xbyak9CodeArray2dbEi.part.0+0x28>

Disassembly of section .text._ZN5Xbyak13CodeGenerator3rexERKNS_7OperandES3_:

0000000000000000 <_ZN5Xbyak13CodeGenerator3rexERKNS_7OperandES3_>:
   0:	f3 0f 1e fa          	endbr64 
   4:	41 57                	push   %r15
   6:	41 56                	push   %r14
   8:	41 55                	push   %r13
   a:	49 89 f5             	mov    %rsi,%r13
   d:	41 54                	push   %r12
   f:	49 89 d4             	mov    %rdx,%r12
  12:	55                   	push   %rbp
  13:	53                   	push   %rbx
  14:	48 89 fb             	mov    %rdi,%rbx
  17:	48 83 ec 18          	sub    $0x18,%rsp
  1b:	41 0f b7 04 24       	movzwl (%r12),%eax
  20:	0f b7 16             	movzwl (%rsi),%edx
  23:	66 c1 e8 06          	shr    $0x6,%ax
  27:	89 d1                	mov    %edx,%ecx
  29:	89 c6                	mov    %eax,%esi
  2b:	66 c1 e9 06          	shr    $0x6,%cx
  2f:	83 e6 01             	and    $0x1,%esi
  32:	83 e2 40             	and    $0x40,%edx
  35:	0f 84 fd 00 00 00    	je     138 <_ZN5Xbyak13CodeGenerator3rexERKNS_7OperandES3_+0x138>
  3b:	66 85 f6             	test   %si,%si
  3e:	0f 85 6e 04 00 00    	jne    4b2 <_ZN5Xbyak13CodeGenerator3rexERKNS_7OperandES3_+0x4b2>
  44:	4d 89 ee             	mov    %r13,%r14
  47:	4d 89 e7             	mov    %r12,%r15
  4a:	41 0f b7 56 0a       	movzwl 0xa(%r14),%edx
  4f:	66 81 e2 ff 3f       	and    $0x3fff,%dx
  54:	66 83 fa 20          	cmp    $0x20,%dx
  58:	0f 84 fa 02 00 00    	je     358 <_ZN5Xbyak13CodeGenerator3rexERKNS_7OperandES3_+0x358>
  5e:	41 0f b7 56 12       	movzwl 0x12(%r14),%edx
  63:	66 81 e2 ff 3f       	and    $0x3fff,%dx
  68:	66 83 fa 20          	cmp    $0x20,%dx
  6c:	0f 84 e6 02 00 00    	je     358 <_ZN5Xbyak13CodeGenerator3rexERKNS_7OperandES3_+0x358>
  72:	41 8b 56 30          	mov    0x30(%r14),%edx
  76:	31 ed                	xor    %ebp,%ebp
  78:	85 d2                	test   %edx,%edx
  7a:	75 3e                	jne    ba <_ZN5Xbyak13CodeGenerator3rexERKNS_7OperandES3_+0xba>
  7c:	41 0f b6 56 08       	movzbl 0x8(%r14),%edx
  81:	41 0f b6 4e 10       	movzbl 0x10(%r14),%ecx
  86:	83 e2 3f             	and    $0x3f,%edx
  89:	83 e1 3f             	and    $0x3f,%ecx
  8c:	41 f6 46 12 60       	testb  $0x60,0x12(%r14)
  91:	74 11                	je     a4 <_ZN5Xbyak13CodeGenerator3rexERKNS_7OperandES3_+0xa4>
  93:	66 41 f7 46 0a ff 3f 	testw  $0x3fff,0xa(%r14)
  9a:	75 08                	jne    a4 <_ZN5Xbyak13CodeGenerator3rexERKNS_7OperandES3_+0xa4>
  9c:	41 83 7e 18 02       	cmpl   $0x2,0x18(%r14)
  a1:	0f 44 d1             	cmove  %ecx,%edx
  a4:	83 e2 08             	and    $0x8,%edx
  a7:	83 e1 08             	and    $0x8,%ecx
  aa:	0f 85 c0 03 00 00    	jne    470 <_ZN5Xbyak13CodeGenerator3rexERKNS_7OperandES3_+0x470>
  b0:	80 fa 01             	cmp    $0x1,%dl
  b3:	19 ed                	sbb    %ebp,%ebp
  b5:	f7 d5                	not    %ebp
  b7:	83 e5 41             	and    $0x41,%ebp
  ba:	41 0f b6 17          	movzbl (%r15),%edx
  be:	89 d1                	mov    %edx,%ecx
  c0:	83 e2 08             	and    $0x8,%edx
  c3:	83 e1 3f             	and    $0x3f,%ecx
  c6:	a8 02                	test   $0x2,%al
  c8:	74 0b                	je     d5 <_ZN5Xbyak13CodeGenerator3rexERKNS_7OperandES3_+0xd5>
  ca:	41 f6 47 02 40       	testb  $0x40,0x2(%r15)
  cf:	0f 85 83 03 00 00    	jne    458 <_ZN5Xbyak13CodeGenerator3rexERKNS_7OperandES3_+0x458>
  d5:	b8 44 00 00 00       	mov    $0x44,%eax
  da:	84 d2                	test   %dl,%dl
  dc:	75 0a                	jne    e8 <_ZN5Xbyak13CodeGenerator3rexERKNS_7OperandES3_+0xe8>
  de:	83 e1 20             	and    $0x20,%ecx
  e1:	74 07                	je     ea <_ZN5Xbyak13CodeGenerator3rexERKNS_7OperandES3_+0xea>
  e3:	b8 40 00 00 00       	mov    $0x40,%eax
  e8:	09 c5                	or     %eax,%ebp
  ea:	41 0f b7 45 02       	movzwl 0x2(%r13),%eax
  ef:	41 0f b7 54 24 02    	movzwl 0x2(%r12),%edx
  f5:	66 25 ff 3f          	and    $0x3fff,%ax
  f9:	66 81 e2 ff 3f       	and    $0x3fff,%dx
  fe:	a8 10                	test   $0x10,%al
 100:	0f 85 b1 00 00 00    	jne    1b7 <_ZN5Xbyak13CodeGenerator3rexERKNS_7OperandES3_+0x1b7>
 106:	83 e2 10             	and    $0x10,%edx
 109:	0f 84 4f 01 00 00    	je     25e <_ZN5Xbyak13CodeGenerator3rexERKNS_7OperandES3_+0x25e>
 10f:	a8 60                	test   $0x60,%al
 111:	0f 85 47 01 00 00    	jne    25e <_ZN5Xbyak13CodeGenerator3rexERKNS_7OperandES3_+0x25e>
 117:	48 8b 83 80 00 00 00 	mov    0x80(%rbx),%rax
 11e:	4c 8b 6b 70          	mov    0x70(%rbx),%r13
 122:	4c 39 e8             	cmp    %r13,%rax
 125:	0f 83 a9 00 00 00    	jae    1d4 <_ZN5Xbyak13CodeGenerator3rexERKNS_7OperandES3_+0x1d4>
 12b:	4c 8b 63 78          	mov    0x78(%rbx),%r12
 12f:	e9 1a 01 00 00       	jmpq   24e <_ZN5Xbyak13CodeGenerator3rexERKNS_7OperandES3_+0x24e>
 134:	0f 1f 40 00          	nopl   0x0(%rax)
 138:	66 85 f6             	test   %si,%si
 13b:	0f 85 5a 03 00 00    	jne    49b <_ZN5Xbyak13CodeGenerator3rexERKNS_7OperandES3_+0x49b>
 141:	41 0f b7 74 24 02    	movzwl 0x2(%r12),%esi
 147:	89 f2                	mov    %esi,%edx
 149:	66 81 e2 ff 3f       	and    $0x3fff,%dx
 14e:	a8 02                	test   $0x2,%al
 150:	0f 85 22 01 00 00    	jne    278 <_ZN5Xbyak13CodeGenerator3rexERKNS_7OperandES3_+0x278>
 156:	41 b8 04 00 00 00    	mov    $0x4,%r8d
 15c:	31 ff                	xor    %edi,%edi
 15e:	41 0f b6 75 00       	movzbl 0x0(%r13),%esi
 163:	45 0f b6 0c 24       	movzbl (%r12),%r9d
 168:	83 e1 02             	and    $0x2,%ecx
 16b:	45 0f b7 5d 02       	movzwl 0x2(%r13),%r11d
 170:	83 e6 3f             	and    $0x3f,%esi
 173:	45 89 ca             	mov    %r9d,%r10d
 176:	89 f5                	mov    %esi,%ebp
 178:	44 89 d8             	mov    %r11d,%eax
 17b:	41 83 e2 3f          	and    $0x3f,%r10d
 17f:	40 c0 ed 03          	shr    $0x3,%bpl
 183:	66 25 ff 3f          	and    $0x3fff,%ax
 187:	83 e5 01             	and    $0x1,%ebp
 18a:	41 83 e1 08          	and    $0x8,%r9d
 18e:	0f 85 ec 02 00 00    	jne    480 <_ZN5Xbyak13CodeGenerator3rexERKNS_7OperandES3_+0x480>
 194:	09 fd                	or     %edi,%ebp
 196:	66 85 c9             	test   %cx,%cx
 199:	0f 84 01 01 00 00    	je     2a0 <_ZN5Xbyak13CodeGenerator3rexERKNS_7OperandES3_+0x2a0>
 19f:	41 83 e3 40          	and    $0x40,%r11d
 1a3:	0f 84 f7 00 00 00    	je     2a0 <_ZN5Xbyak13CodeGenerator3rexERKNS_7OperandES3_+0x2a0>
 1a9:	83 cd 08             	or     $0x8,%ebp
 1ac:	83 cd 40             	or     $0x40,%ebp
 1af:	a8 10                	test   $0x10,%al
 1b1:	0f 84 4f ff ff ff    	je     106 <_ZN5Xbyak13CodeGenerator3rexERKNS_7OperandES3_+0x106>
 1b7:	f6 c2 60             	test   $0x60,%dl
 1ba:	0f 85 46 ff ff ff    	jne    106 <_ZN5Xbyak13CodeGenerator3rexERKNS_7OperandES3_+0x106>
 1c0:	48 8b 83 80 00 00 00 	mov    0x80(%rbx),%rax
 1c7:	4c 8b 6b 70          	mov    0x70(%rbx),%r13
 1cb:	4c 39 e8             	cmp    %r13,%rax
 1ce:	0f 82 57 ff ff ff    	jb     12b <_ZN5Xbyak13CodeGenerator3rexERKNS_7OperandES3_+0x12b>
 1d4:	83 7b 20 03          	cmpl   $0x3,0x20(%rbx)
 1d8:	0f 85 ca 02 00 00    	jne    4a8 <_ZN5Xbyak13CodeGenerator3rexERKNS_7OperandES3_+0x4a8>
 1de:	48 8b 7b 68          	mov    0x68(%rbx),%rdi
 1e2:	4d 01 ed             	add    %r13,%r13
 1e5:	b8 00 10 00 00       	mov    $0x1000,%eax
 1ea:	49 81 fd 00 10 00 00 	cmp    $0x1000,%r13
 1f1:	4c 0f 42 e8          	cmovb  %rax,%r13
 1f5:	48 8b 07             	mov    (%rdi),%rax
 1f8:	4c 89 ee             	mov    %r13,%rsi
 1fb:	ff 10                	callq  *(%rax)
 1fd:	49 89 c4             	mov    %rax,%r12
 200:	48 85 c0             	test   %rax,%rax
 203:	0f 84 a4 02 00 00    	je     4ad <_ZN5Xbyak13CodeGenerator3rexERKNS_7OperandES3_+0x4ad>
 209:	31 d2                	xor    %edx,%edx
 20b:	48 83 bb 80 00 00 00 	cmpq   $0x0,0x80(%rbx)
 212:	00 
 213:	74 1c                	je     231 <_ZN5Xbyak13CodeGenerator3rexERKNS_7OperandES3_+0x231>
 215:	0f 1f 00             	nopl   (%rax)
 218:	48 8b 43 78          	mov    0x78(%rbx),%rax
 21c:	0f b6 04 10          	movzbl (%rax,%rdx,1),%eax
 220:	41 88 04 14          	mov    %al,(%r12,%rdx,1)
 224:	48 83 c2 01          	add    $0x1,%rdx
 228:	48 39 93 80 00 00 00 	cmp    %rdx,0x80(%rbx)
 22f:	77 e7                	ja     218 <_ZN5Xbyak13CodeGenerator3rexERKNS_7OperandES3_+0x218>
 231:	48 8b 7b 68          	mov    0x68(%rbx),%rdi
 235:	48 8b 73 78          	mov    0x78(%rbx),%rsi
 239:	48 8b 07             	mov    (%rdi),%rax
 23c:	ff 50 08             	callq  *0x8(%rax)
 23f:	4c 89 63 78          	mov    %r12,0x78(%rbx)
 243:	48 8b 83 80 00 00 00 	mov    0x80(%rbx),%rax
 24a:	4c 89 6b 70          	mov    %r13,0x70(%rbx)
 24e:	48 8d 50 01          	lea    0x1(%rax),%rdx
 252:	48 89 93 80 00 00 00 	mov    %rdx,0x80(%rbx)
 259:	41 c6 04 04 66       	movb   $0x66,(%r12,%rax,1)
 25e:	40 84 ed             	test   %bpl,%bpl
 261:	75 5d                	jne    2c0 <_ZN5Xbyak13CodeGenerator3rexERKNS_7OperandES3_+0x2c0>
 263:	48 83 c4 18          	add    $0x18,%rsp
 267:	5b                   	pop    %rbx
 268:	5d                   	pop    %rbp
 269:	41 5c                	pop    %r12
 26b:	41 5d                	pop    %r13
 26d:	41 5e                	pop    %r14
 26f:	41 5f                	pop    %r15
 271:	c3                   	retq   
 272:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
 278:	83 e6 40             	and    $0x40,%esi
 27b:	66 83 fe 01          	cmp    $0x1,%si
 27f:	45 19 c0             	sbb    %r8d,%r8d
 282:	41 83 e0 f8          	and    $0xfffffff8,%r8d
 286:	41 83 c0 0c          	add    $0xc,%r8d
 28a:	66 83 fe 01          	cmp    $0x1,%si
 28e:	19 ff                	sbb    %edi,%edi
 290:	f7 d7                	not    %edi
 292:	83 e7 08             	and    $0x8,%edi
 295:	e9 c4 fe ff ff       	jmpq   15e <_ZN5Xbyak13CodeGenerator3rexERKNS_7OperandES3_+0x15e>
 29a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
 2a0:	40 84 ed             	test   %bpl,%bpl
 2a3:	0f 85 03 ff ff ff    	jne    1ac <_ZN5Xbyak13CodeGenerator3rexERKNS_7OperandES3_+0x1ac>
 2a9:	44 09 d6             	or     %r10d,%esi
 2ac:	83 e6 20             	and    $0x20,%esi
 2af:	0f 85 f7 fe ff ff    	jne    1ac <_ZN5Xbyak13CodeGenerator3rexERKNS_7OperandES3_+0x1ac>
 2b5:	e9 f5 fe ff ff       	jmpq   1af <_ZN5Xbyak13CodeGenerator3rexERKNS_7OperandES3_+0x1af>
 2ba:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
 2c0:	48 8b 83 80 00 00 00 	mov    0x80(%rbx),%rax
 2c7:	4c 8b 6b 70          	mov    0x70(%rbx),%r13
 2cb:	4c 39 e8             	cmp    %r13,%rax
 2ce:	0f 82 34 01 00 00    	jb     408 <_ZN5Xbyak13CodeGenerator3rexERKNS_7OperandES3_+0x408>
 2d4:	83 7b 20 03          	cmpl   $0x3,0x20(%rbx)
 2d8:	0f 85 ca 01 00 00    	jne    4a8 <_ZN5Xbyak13CodeGenerator3rexERKNS_7OperandES3_+0x4a8>
 2de:	48 8b 7b 68          	mov    0x68(%rbx),%rdi
 2e2:	4d 01 ed             	add    %r13,%r13
 2e5:	b8 00 10 00 00       	mov    $0x1000,%eax
 2ea:	49 81 fd 00 10 00 00 	cmp    $0x1000,%r13
 2f1:	4c 0f 42 e8          	cmovb  %rax,%r13
 2f5:	48 8b 07             	mov    (%rdi),%rax
 2f8:	4c 89 ee             	mov    %r13,%rsi
 2fb:	ff 10                	callq  *(%rax)
 2fd:	49 89 c4             	mov    %rax,%r12
 300:	48 85 c0             	test   %rax,%rax
 303:	0f 84 a4 01 00 00    	je     4ad <_ZN5Xbyak13CodeGenerator3rexERKNS_7OperandES3_+0x4ad>
 309:	31 d2                	xor    %edx,%edx
 30b:	48 83 bb 80 00 00 00 	cmpq   $0x0,0x80(%rbx)
 312:	00 
 313:	74 1c                	je     331 <_ZN5Xbyak13CodeGenerator3rexERKNS_7OperandES3_+0x331>
 315:	0f 1f 00             	nopl   (%rax)
 318:	48 8b 43 78          	mov    0x78(%rbx),%rax
 31c:	0f b6 04 10          	movzbl (%rax,%rdx,1),%eax
 320:	41 88 04 14          	mov    %al,(%r12,%rdx,1)
 324:	48 83 c2 01          	add    $0x1,%rdx
 328:	48 39 93 80 00 00 00 	cmp    %rdx,0x80(%rbx)
 32f:	77 e7                	ja     318 <_ZN5Xbyak13CodeGenerator3rexERKNS_7OperandES3_+0x318>
 331:	48 8b 7b 68          	mov    0x68(%rbx),%rdi
 335:	48 8b 73 78          	mov    0x78(%rbx),%rsi
 339:	48 8b 07             	mov    (%rdi),%rax
 33c:	ff 50 08             	callq  *0x8(%rax)
 33f:	4c 89 63 78          	mov    %r12,0x78(%rbx)
 343:	48 8b 83 80 00 00 00 	mov    0x80(%rbx),%rax
 34a:	4c 89 6b 70          	mov    %r13,0x70(%rbx)
 34e:	e9 b9 00 00 00       	jmpq   40c <_ZN5Xbyak13CodeGenerator3rexERKNS_7OperandES3_+0x40c>
 353:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
 358:	48 8b 83 80 00 00 00 	mov    0x80(%rbx),%rax
 35f:	48 8b 4b 70          	mov    0x70(%rbx),%rcx
 363:	48 39 c8             	cmp    %rcx,%rax
 366:	0f 82 c4 00 00 00    	jb     430 <_ZN5Xbyak13CodeGenerator3rexERKNS_7OperandES3_+0x430>
 36c:	83 7b 20 03          	cmpl   $0x3,0x20(%rbx)
 370:	0f 85 32 01 00 00    	jne    4a8 <_ZN5Xbyak13CodeGenerator3rexERKNS_7OperandES3_+0x4a8>
 376:	48 8b 7b 68          	mov    0x68(%rbx),%rdi
 37a:	48 01 c9             	add    %rcx,%rcx
 37d:	b8 00 10 00 00       	mov    $0x1000,%eax
 382:	48 81 f9 00 10 00 00 	cmp    $0x1000,%rcx
 389:	48 0f 42 c8          	cmovb  %rax,%rcx
 38d:	48 8b 07             	mov    (%rdi),%rax
 390:	48 89 4c 24 08       	mov    %rcx,0x8(%rsp)
 395:	48 89 ce             	mov    %rcx,%rsi
 398:	ff 10                	callq  *(%rax)
 39a:	48 8b 4c 24 08       	mov    0x8(%rsp),%rcx
 39f:	48 85 c0             	test   %rax,%rax
 3a2:	48 89 c5             	mov    %rax,%rbp
 3a5:	0f 84 02 01 00 00    	je     4ad <_ZN5Xbyak13CodeGenerator3rexERKNS_7OperandES3_+0x4ad>
 3ab:	31 d2                	xor    %edx,%edx
 3ad:	48 83 bb 80 00 00 00 	cmpq   $0x0,0x80(%rbx)
 3b4:	00 
 3b5:	74 22                	je     3d9 <_ZN5Xbyak13CodeGenerator3rexERKNS_7OperandES3_+0x3d9>
 3b7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
 3be:	00 00 
 3c0:	48 8b 43 78          	mov    0x78(%rbx),%rax
 3c4:	0f b6 04 10          	movzbl (%rax,%rdx,1),%eax
 3c8:	88 44 15 00          	mov    %al,0x0(%rbp,%rdx,1)
 3cc:	48 83 c2 01          	add    $0x1,%rdx
 3d0:	48 39 93 80 00 00 00 	cmp    %rdx,0x80(%rbx)
 3d7:	77 e7                	ja     3c0 <_ZN5Xbyak13CodeGenerator3rexERKNS_7OperandES3_+0x3c0>
 3d9:	48 8b 7b 68          	mov    0x68(%rbx),%rdi
 3dd:	48 8b 73 78          	mov    0x78(%rbx),%rsi
 3e1:	48 89 4c 24 08       	mov    %rcx,0x8(%rsp)
 3e6:	48 8b 07             	mov    (%rdi),%rax
 3e9:	ff 50 08             	callq  *0x8(%rax)
 3ec:	48 8b 4c 24 08       	mov    0x8(%rsp),%rcx
 3f1:	48 89 6b 78          	mov    %rbp,0x78(%rbx)
 3f5:	48 8b 83 80 00 00 00 	mov    0x80(%rbx),%rax
 3fc:	48 89 4b 70          	mov    %rcx,0x70(%rbx)
 400:	eb 32                	jmp    434 <_ZN5Xbyak13CodeGenerator3rexERKNS_7OperandES3_+0x434>
 402:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
 408:	4c 8b 63 78          	mov    0x78(%rbx),%r12
 40c:	48 8d 50 01          	lea    0x1(%rax),%rdx
 410:	48 89 93 80 00 00 00 	mov    %rdx,0x80(%rbx)
 417:	41 88 2c 04          	mov    %bpl,(%r12,%rax,1)
 41b:	48 83 c4 18          	add    $0x18,%rsp
 41f:	5b                   	pop    %rbx
 420:	5d                   	pop    %rbp
 421:	41 5c                	pop    %r12
 423:	41 5d                	pop    %r13
 425:	41 5e                	pop    %r14
 427:	41 5f                	pop    %r15
 429:	c3                   	retq   
 42a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
 430:	48 8b 6b 78          	mov    0x78(%rbx),%rbp
 434:	48 8d 50 01          	lea    0x1(%rax),%rdx
 438:	48 89 93 80 00 00 00 	mov    %rdx,0x80(%rbx)
 43f:	c6 44 05 00 67       	movb   $0x67,0x0(%rbp,%rax,1)
 444:	41 0f b7 07          	movzwl (%r15),%eax
 448:	66 c1 e8 06          	shr    $0x6,%ax
 44c:	e9 21 fc ff ff       	jmpq   72 <_ZN5Xbyak13CodeGenerator3rexERKNS_7OperandES3_+0x72>
 451:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
 458:	80 fa 01             	cmp    $0x1,%dl
 45b:	19 c0                	sbb    %eax,%eax
 45d:	83 e0 fc             	and    $0xfffffffc,%eax
 460:	83 c0 4c             	add    $0x4c,%eax
 463:	09 c5                	or     %eax,%ebp
 465:	e9 80 fc ff ff       	jmpq   ea <_ZN5Xbyak13CodeGenerator3rexERKNS_7OperandES3_+0xea>
 46a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
 470:	84 d2                	test   %dl,%dl
 472:	40 0f 95 c5          	setne  %bpl
 476:	83 c5 42             	add    $0x42,%ebp
 479:	e9 3c fc ff ff       	jmpq   ba <_ZN5Xbyak13CodeGenerator3rexERKNS_7OperandES3_+0xba>
 47e:	66 90                	xchg   %ax,%ax
 480:	44 09 c5             	or     %r8d,%ebp
 483:	66 85 c9             	test   %cx,%cx
 486:	0f 84 20 fd ff ff    	je     1ac <_ZN5Xbyak13CodeGenerator3rexERKNS_7OperandES3_+0x1ac>
 48c:	41 83 e3 40          	and    $0x40,%r11d
 490:	0f 85 13 fd ff ff    	jne    1a9 <_ZN5Xbyak13CodeGenerator3rexERKNS_7OperandES3_+0x1a9>
 496:	e9 11 fd ff ff       	jmpq   1ac <_ZN5Xbyak13CodeGenerator3rexERKNS_7OperandES3_+0x1ac>
 49b:	89 c8                	mov    %ecx,%eax
 49d:	4d 89 e6             	mov    %r12,%r14
 4a0:	4d 89 ef             	mov    %r13,%r15
 4a3:	e9 a2 fb ff ff       	jmpq   4a <_ZN5Xbyak13CodeGenerator3rexERKNS_7OperandES3_+0x4a>
 4a8:	e8 00 00 00 00       	callq  4ad <_ZN5Xbyak13CodeGenerator3rexERKNS_7OperandES3_+0x4ad>
 4ad:	e8 00 00 00 00       	callq  4b2 <_ZN5Xbyak13CodeGenerator3rexERKNS_7OperandES3_+0x4b2>
 4b2:	e8 00 00 00 00       	callq  4b7 <_GLOBAL__sub_I_mcl.cpp.cold+0x187>

Disassembly of section .text._ZN5Xbyak13CodeGenerator3vexERKNS_3RegES3_PKNS_7OperandEiib:

0000000000000000 <_ZN5Xbyak13CodeGenerator3vexERKNS_3RegES3_PKNS_7OperandEiib>:
   0:	f3 0f 1e fa          	endbr64 
   4:	41 57                	push   %r15
   6:	41 56                	push   %r14
   8:	41 55                	push   %r13
   a:	45 89 cd             	mov    %r9d,%r13d
   d:	41 54                	push   %r12
   f:	45 89 c4             	mov    %r8d,%r12d
  12:	55                   	push   %rbp
  13:	41 c1 fc 0e          	sar    $0xe,%r12d
  17:	53                   	push   %rbx
  18:	41 83 e4 01          	and    $0x1,%r12d
  1c:	48 89 fb             	mov    %rdi,%rbx
  1f:	bf 01 00 00 00       	mov    $0x1,%edi
  24:	48 83 ec 28          	sub    $0x28,%rsp
  28:	44 8b 74 24 60       	mov    0x60(%rsp),%r14d
  2d:	41 f7 c0 00 10 00 00 	test   $0x1000,%r8d
  34:	75 0f                	jne    45 <_ZN5Xbyak13CodeGenerator3vexERKNS_3RegES3_PKNS_7OperandEiib+0x45>
  36:	31 ff                	xor    %edi,%edi
  38:	41 f7 c0 00 08 00 00 	test   $0x800,%r8d
  3f:	0f 84 eb 03 00 00    	je     430 <_ZN5Xbyak13CodeGenerator3vexERKNS_3RegES3_PKNS_7OperandEiib+0x430>
  45:	44 0f b6 0e          	movzbl (%rsi),%r9d
  49:	44 0f b6 3a          	movzbl (%rdx),%r15d
  4d:	31 d2                	xor    %edx,%edx
  4f:	44 89 c8             	mov    %r9d,%eax
  52:	44 89 fe             	mov    %r15d,%esi
  55:	41 83 e1 08          	and    $0x8,%r9d
  59:	41 83 e7 08          	and    $0x8,%r15d
  5d:	83 e0 3f             	and    $0x3f,%eax
  60:	83 e6 3f             	and    $0x3f,%esi
  63:	48 85 c9             	test   %rcx,%rcx
  66:	74 06                	je     6e <_ZN5Xbyak13CodeGenerator3vexERKNS_3RegES3_PKNS_7OperandEiib+0x6e>
  68:	0f b6 11             	movzbl (%rcx),%edx
  6b:	83 e2 1f             	and    $0x1f,%edx
  6e:	09 f0                	or     %esi,%eax
  70:	83 e0 1f             	and    $0x1f,%eax
  73:	09 d0                	or     %edx,%eax
  75:	83 f8 0f             	cmp    $0xf,%eax
  78:	0f 8f 28 04 00 00    	jg     4a6 <_ZN5Xbyak13CodeGenerator3vexERKNS_3RegES3_PKNS_7OperandEiib+0x4a6>
  7e:	f7 d2                	not    %edx
  80:	44 89 c5             	mov    %r8d,%ebp
  83:	8d 04 d5 00 00 00 00 	lea    0x0(,%rdx,8),%eax
  8a:	c1 fd 05             	sar    $0x5,%ebp
  8d:	83 e0 78             	and    $0x78,%eax
  90:	83 e5 03             	and    $0x3,%ebp
  93:	89 c2                	mov    %eax,%edx
  95:	83 ca 04             	or     $0x4,%edx
  98:	40 84 ff             	test   %dil,%dil
  9b:	0f 45 c2             	cmovne %edx,%eax
  9e:	44 89 f2             	mov    %r14d,%edx
  a1:	09 c5                	or     %eax,%ebp
  a3:	44 89 c0             	mov    %r8d,%eax
  a6:	25 00 01 00 00       	and    $0x100,%eax
  ab:	45 84 ff             	test   %r15b,%r15b
  ae:	0f 94 c1             	sete   %cl
  b1:	83 f2 01             	xor    $0x1,%edx
  b4:	84 d1                	test   %dl,%cl
  b6:	74 09                	je     c1 <_ZN5Xbyak13CodeGenerator3vexERKNS_3RegES3_PKNS_7OperandEiib+0xc1>
  b8:	45 85 e4             	test   %r12d,%r12d
  bb:	0f 84 2f 03 00 00    	je     3f0 <_ZN5Xbyak13CodeGenerator3vexERKNS_3RegES3_PKNS_7OperandEiib+0x3f0>
  c1:	b9 01 00 00 00       	mov    $0x1,%ecx
  c6:	85 c0                	test   %eax,%eax
  c8:	0f 84 26 03 00 00    	je     3f4 <_ZN5Xbyak13CodeGenerator3vexERKNS_3RegES3_PKNS_7OperandEiib+0x3f4>
  ce:	48 8b 93 80 00 00 00 	mov    0x80(%rbx),%rdx
  d5:	4c 8b 43 70          	mov    0x70(%rbx),%r8
  d9:	4c 39 c2             	cmp    %r8,%rdx
  dc:	0f 83 46 02 00 00    	jae    328 <_ZN5Xbyak13CodeGenerator3vexERKNS_3RegES3_PKNS_7OperandEiib+0x328>
  e2:	48 8b 43 78          	mov    0x78(%rbx),%rax
  e6:	41 80 f9 01          	cmp    $0x1,%r9b
  ea:	48 8d 72 01          	lea    0x1(%rdx),%rsi
  ee:	48 89 b3 80 00 00 00 	mov    %rsi,0x80(%rbx)
  f5:	c6 04 10 c4          	movb   $0xc4,(%rax,%rdx,1)
  f9:	19 d2                	sbb    %edx,%edx
  fb:	81 e2 80 00 00 00    	and    $0x80,%edx
 101:	83 c2 40             	add    $0x40,%edx
 104:	41 80 f9 01          	cmp    $0x1,%r9b
 108:	19 c0                	sbb    %eax,%eax
 10a:	25 80 00 00 00       	and    $0x80,%eax
 10f:	45 84 f6             	test   %r14b,%r14b
 112:	0f 44 c2             	cmove  %edx,%eax
 115:	89 c2                	mov    %eax,%edx
 117:	83 ca 20             	or     $0x20,%edx
 11a:	45 84 ff             	test   %r15b,%r15b
 11d:	4c 8b 7b 70          	mov    0x70(%rbx),%r15
 121:	0f 44 c2             	cmove  %edx,%eax
 124:	48 8b 93 80 00 00 00 	mov    0x80(%rbx),%rdx
 12b:	09 c8                	or     %ecx,%eax
 12d:	41 89 c6             	mov    %eax,%r14d
 130:	4c 39 fa             	cmp    %r15,%rdx
 133:	0f 82 27 03 00 00    	jb     460 <_ZN5Xbyak13CodeGenerator3vexERKNS_3RegES3_PKNS_7OperandEiib+0x460>
 139:	83 7b 20 03          	cmpl   $0x3,0x20(%rbx)
 13d:	0f 85 68 03 00 00    	jne    4ab <_ZN5Xbyak13CodeGenerator3vexERKNS_3RegES3_PKNS_7OperandEiib+0x4ab>
 143:	4d 01 ff             	add    %r15,%r15
 146:	48 8b 7b 68          	mov    0x68(%rbx),%rdi
 14a:	b8 00 10 00 00       	mov    $0x1000,%eax
 14f:	49 81 ff 00 10 00 00 	cmp    $0x1000,%r15
 156:	4c 0f 42 f8          	cmovb  %rax,%r15
 15a:	48 8b 07             	mov    (%rdi),%rax
 15d:	4c 89 fe             	mov    %r15,%rsi
 160:	ff 10                	callq  *(%rax)
 162:	48 85 c0             	test   %rax,%rax
 165:	0f 84 36 03 00 00    	je     4a1 <_ZN5Xbyak13CodeGenerator3vexERKNS_3RegES3_PKNS_7OperandEiib+0x4a1>
 16b:	31 d2                	xor    %edx,%edx
 16d:	48 83 bb 80 00 00 00 	cmpq   $0x0,0x80(%rbx)
 174:	00 
 175:	74 21                	je     198 <_ZN5Xbyak13CodeGenerator3vexERKNS_3RegES3_PKNS_7OperandEiib+0x198>
 177:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
 17e:	00 00 
 180:	48 8b 4b 78          	mov    0x78(%rbx),%rcx
 184:	0f b6 0c 11          	movzbl (%rcx,%rdx,1),%ecx
 188:	88 0c 10             	mov    %cl,(%rax,%rdx,1)
 18b:	48 83 c2 01          	add    $0x1,%rdx
 18f:	48 39 93 80 00 00 00 	cmp    %rdx,0x80(%rbx)
 196:	77 e8                	ja     180 <_ZN5Xbyak13CodeGenerator3vexERKNS_3RegES3_PKNS_7OperandEiib+0x180>
 198:	48 8b 7b 68          	mov    0x68(%rbx),%rdi
 19c:	48 8b 73 78          	mov    0x78(%rbx),%rsi
 1a0:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
 1a5:	48 8b 17             	mov    (%rdi),%rdx
 1a8:	ff 52 08             	callq  *0x8(%rdx)
 1ab:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
 1b0:	4c 89 7b 70          	mov    %r15,0x70(%rbx)
 1b4:	48 8b 93 80 00 00 00 	mov    0x80(%rbx),%rdx
 1bb:	48 89 43 78          	mov    %rax,0x78(%rbx)
 1bf:	41 c1 e4 07          	shl    $0x7,%r12d
 1c3:	48 8d 4a 01          	lea    0x1(%rdx),%rcx
 1c7:	48 89 8b 80 00 00 00 	mov    %rcx,0x80(%rbx)
 1ce:	44 09 e5             	or     %r12d,%ebp
 1d1:	44 88 34 10          	mov    %r14b,(%rax,%rdx,1)
 1d5:	48 8b 83 80 00 00 00 	mov    0x80(%rbx),%rax
 1dc:	4c 8b 63 70          	mov    0x70(%rbx),%r12
 1e0:	4c 39 e0             	cmp    %r12,%rax
 1e3:	0f 82 67 02 00 00    	jb     450 <_ZN5Xbyak13CodeGenerator3vexERKNS_3RegES3_PKNS_7OperandEiib+0x450>
 1e9:	83 7b 20 03          	cmpl   $0x3,0x20(%rbx)
 1ed:	0f 85 b8 02 00 00    	jne    4ab <_ZN5Xbyak13CodeGenerator3vexERKNS_3RegES3_PKNS_7OperandEiib+0x4ab>
 1f3:	48 8b 7b 68          	mov    0x68(%rbx),%rdi
 1f7:	4d 01 e4             	add    %r12,%r12
 1fa:	b8 00 10 00 00       	mov    $0x1000,%eax
 1ff:	49 81 fc 00 10 00 00 	cmp    $0x1000,%r12
 206:	4c 0f 42 e0          	cmovb  %rax,%r12
 20a:	48 8b 07             	mov    (%rdi),%rax
 20d:	4c 89 e6             	mov    %r12,%rsi
 210:	ff 10                	callq  *(%rax)
 212:	49 89 c6             	mov    %rax,%r14
 215:	48 85 c0             	test   %rax,%rax
 218:	0f 84 83 02 00 00    	je     4a1 <_ZN5Xbyak13CodeGenerator3vexERKNS_3RegES3_PKNS_7OperandEiib+0x4a1>
 21e:	31 d2                	xor    %edx,%edx
 220:	48 83 bb 80 00 00 00 	cmpq   $0x0,0x80(%rbx)
 227:	00 
 228:	74 1f                	je     249 <_ZN5Xbyak13CodeGenerator3vexERKNS_3RegES3_PKNS_7OperandEiib+0x249>
 22a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
 230:	48 8b 43 78          	mov    0x78(%rbx),%rax
 234:	0f b6 04 10          	movzbl (%rax,%rdx,1),%eax
 238:	41 88 04 16          	mov    %al,(%r14,%rdx,1)
 23c:	48 83 c2 01          	add    $0x1,%rdx
 240:	48 39 93 80 00 00 00 	cmp    %rdx,0x80(%rbx)
 247:	77 e7                	ja     230 <_ZN5Xbyak13CodeGenerator3vexERKNS_3RegES3_PKNS_7OperandEiib+0x230>
 249:	48 8b 7b 68          	mov    0x68(%rbx),%rdi
 24d:	48 8b 73 78          	mov    0x78(%rbx),%rsi
 251:	48 8b 07             	mov    (%rdi),%rax
 254:	ff 50 08             	callq  *0x8(%rax)
 257:	4c 89 73 78          	mov    %r14,0x78(%rbx)
 25b:	48 8b 83 80 00 00 00 	mov    0x80(%rbx),%rax
 262:	4c 89 63 70          	mov    %r12,0x70(%rbx)
 266:	48 8d 50 01          	lea    0x1(%rax),%rdx
 26a:	48 89 93 80 00 00 00 	mov    %rdx,0x80(%rbx)
 271:	41 88 2c 06          	mov    %bpl,(%r14,%rax,1)
 275:	48 8b 83 80 00 00 00 	mov    0x80(%rbx),%rax
 27c:	48 8b 6b 70          	mov    0x70(%rbx),%rbp
 280:	48 39 e8             	cmp    %rbp,%rax
 283:	0f 82 b7 01 00 00    	jb     440 <_ZN5Xbyak13CodeGenerator3vexERKNS_3RegES3_PKNS_7OperandEiib+0x440>
 289:	83 7b 20 03          	cmpl   $0x3,0x20(%rbx)
 28d:	0f 85 18 02 00 00    	jne    4ab <_ZN5Xbyak13CodeGenerator3vexERKNS_3RegES3_PKNS_7OperandEiib+0x4ab>
 293:	48 8b 7b 68          	mov    0x68(%rbx),%rdi
 297:	48 01 ed             	add    %rbp,%rbp
 29a:	b8 00 10 00 00       	mov    $0x1000,%eax
 29f:	48 81 fd 00 10 00 00 	cmp    $0x1000,%rbp
 2a6:	48 0f 42 e8          	cmovb  %rax,%rbp
 2aa:	48 8b 07             	mov    (%rdi),%rax
 2ad:	48 89 ee             	mov    %rbp,%rsi
 2b0:	ff 10                	callq  *(%rax)
 2b2:	49 89 c4             	mov    %rax,%r12
 2b5:	48 85 c0             	test   %rax,%rax
 2b8:	0f 84 e3 01 00 00    	je     4a1 <_ZN5Xbyak13CodeGenerator3vexERKNS_3RegES3_PKNS_7OperandEiib+0x4a1>
 2be:	31 d2                	xor    %edx,%edx
 2c0:	48 83 bb 80 00 00 00 	cmpq   $0x0,0x80(%rbx)
 2c7:	00 
 2c8:	74 1f                	je     2e9 <_ZN5Xbyak13CodeGenerator3vexERKNS_3RegES3_PKNS_7OperandEiib+0x2e9>
 2ca:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
 2d0:	48 8b 43 78          	mov    0x78(%rbx),%rax
 2d4:	0f b6 04 10          	movzbl (%rax,%rdx,1),%eax
 2d8:	41 88 04 14          	mov    %al,(%r12,%rdx,1)
 2dc:	48 83 c2 01          	add    $0x1,%rdx
 2e0:	48 39 93 80 00 00 00 	cmp    %rdx,0x80(%rbx)
 2e7:	77 e7                	ja     2d0 <_ZN5Xbyak13CodeGenerator3vexERKNS_3RegES3_PKNS_7OperandEiib+0x2d0>
 2e9:	48 8b 7b 68          	mov    0x68(%rbx),%rdi
 2ed:	48 8b 73 78          	mov    0x78(%rbx),%rsi
 2f1:	48 8b 07             	mov    (%rdi),%rax
 2f4:	ff 50 08             	callq  *0x8(%rax)
 2f7:	4c 89 63 78          	mov    %r12,0x78(%rbx)
 2fb:	48 8b 83 80 00 00 00 	mov    0x80(%rbx),%rax
 302:	48 89 6b 70          	mov    %rbp,0x70(%rbx)
 306:	48 8d 50 01          	lea    0x1(%rax),%rdx
 30a:	48 89 93 80 00 00 00 	mov    %rdx,0x80(%rbx)
 311:	45 88 2c 04          	mov    %r13b,(%r12,%rax,1)
 315:	48 83 c4 28          	add    $0x28,%rsp
 319:	5b                   	pop    %rbx
 31a:	5d                   	pop    %rbp
 31b:	41 5c                	pop    %r12
 31d:	41 5d                	pop    %r13
 31f:	41 5e                	pop    %r14
 321:	41 5f                	pop    %r15
 323:	c3                   	retq   
 324:	0f 1f 40 00          	nopl   0x0(%rax)
 328:	83 7b 20 03          	cmpl   $0x3,0x20(%rbx)
 32c:	44 88 4c 24 17       	mov    %r9b,0x17(%rsp)
 331:	89 4c 24 10          	mov    %ecx,0x10(%rsp)
 335:	0f 85 70 01 00 00    	jne    4ab <_ZN5Xbyak13CodeGenerator3vexERKNS_3RegES3_PKNS_7OperandEiib+0x4ab>
 33b:	48 8b 7b 68          	mov    0x68(%rbx),%rdi
 33f:	4d 01 c0             	add    %r8,%r8
 342:	b8 00 10 00 00       	mov    $0x1000,%eax
 347:	49 81 f8 00 10 00 00 	cmp    $0x1000,%r8
 34e:	4c 0f 42 c0          	cmovb  %rax,%r8
 352:	48 8b 07             	mov    (%rdi),%rax
 355:	4c 89 44 24 08       	mov    %r8,0x8(%rsp)
 35a:	4c 89 c6             	mov    %r8,%rsi
 35d:	ff 10                	callq  *(%rax)
 35f:	4c 8b 44 24 08       	mov    0x8(%rsp),%r8
 364:	8b 4c 24 10          	mov    0x10(%rsp),%ecx
 368:	48 85 c0             	test   %rax,%rax
 36b:	44 0f b6 4c 24 17    	movzbl 0x17(%rsp),%r9d
 371:	0f 84 2a 01 00 00    	je     4a1 <_ZN5Xbyak13CodeGenerator3vexERKNS_3RegES3_PKNS_7OperandEiib+0x4a1>
 377:	31 d2                	xor    %edx,%edx
 379:	48 83 bb 80 00 00 00 	cmpq   $0x0,0x80(%rbx)
 380:	00 
 381:	74 1e                	je     3a1 <_ZN5Xbyak13CodeGenerator3vexERKNS_3RegES3_PKNS_7OperandEiib+0x3a1>
 383:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
 388:	48 8b 73 78          	mov    0x78(%rbx),%rsi
 38c:	0f b6 34 16          	movzbl (%rsi,%rdx,1),%esi
 390:	40 88 34 10          	mov    %sil,(%rax,%rdx,1)
 394:	48 83 c2 01          	add    $0x1,%rdx
 398:	48 39 93 80 00 00 00 	cmp    %rdx,0x80(%rbx)
 39f:	77 e7                	ja     388 <_ZN5Xbyak13CodeGenerator3vexERKNS_3RegES3_PKNS_7OperandEiib+0x388>
 3a1:	48 8b 7b 68          	mov    0x68(%rbx),%rdi
 3a5:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
 3aa:	44 88 4c 24 17       	mov    %r9b,0x17(%rsp)
 3af:	48 8b 73 78          	mov    0x78(%rbx),%rsi
 3b3:	48 8b 17             	mov    (%rdi),%rdx
 3b6:	89 4c 24 10          	mov    %ecx,0x10(%rsp)
 3ba:	4c 89 44 24 08       	mov    %r8,0x8(%rsp)
 3bf:	ff 52 08             	callq  *0x8(%rdx)
 3c2:	48 8b 44 24 18       	mov    0x18(%rsp),%rax
 3c7:	4c 8b 44 24 08       	mov    0x8(%rsp),%r8
 3cc:	48 8b 93 80 00 00 00 	mov    0x80(%rbx),%rdx
 3d3:	8b 4c 24 10          	mov    0x10(%rsp),%ecx
 3d7:	48 89 43 78          	mov    %rax,0x78(%rbx)
 3db:	44 0f b6 4c 24 17    	movzbl 0x17(%rsp),%r9d
 3e1:	4c 89 43 70          	mov    %r8,0x70(%rbx)
 3e5:	e9 fc fc ff ff       	jmpq   e6 <_ZN5Xbyak13CodeGenerator3vexERKNS_3RegES3_PKNS_7OperandEiib+0xe6>
 3ea:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
 3f0:	85 c0                	test   %eax,%eax
 3f2:	75 7c                	jne    470 <_ZN5Xbyak13CodeGenerator3vexERKNS_3RegES3_PKNS_7OperandEiib+0x470>
 3f4:	b9 02 00 00 00       	mov    $0x2,%ecx
 3f9:	41 f7 c0 00 02 00 00 	test   $0x200,%r8d
 400:	0f 85 c8 fc ff ff    	jne    ce <_ZN5Xbyak13CodeGenerator3vexERKNS_3RegES3_PKNS_7OperandEiib+0xce>
 406:	44 89 c1             	mov    %r8d,%ecx
 409:	48 8b 93 80 00 00 00 	mov    0x80(%rbx),%rdx
 410:	4c 8b 43 70          	mov    0x70(%rbx),%r8
 414:	c1 e1 15             	shl    $0x15,%ecx
 417:	c1 f9 1f             	sar    $0x1f,%ecx
 41a:	83 e1 03             	and    $0x3,%ecx
 41d:	4c 39 c2             	cmp    %r8,%rdx
 420:	0f 82 bc fc ff ff    	jb     e2 <_ZN5Xbyak13CodeGenerator3vexERKNS_3RegES3_PKNS_7OperandEiib+0xe2>
 426:	e9 fd fe ff ff       	jmpq   328 <_ZN5Xbyak13CodeGenerator3vexERKNS_3RegES3_PKNS_7OperandEiib+0x328>
 42b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
 430:	0f b7 3e             	movzwl (%rsi),%edi
 433:	66 c1 ef 0b          	shr    $0xb,%di
 437:	83 e7 01             	and    $0x1,%edi
 43a:	e9 06 fc ff ff       	jmpq   45 <_ZN5Xbyak13CodeGenerator3vexERKNS_3RegES3_PKNS_7OperandEiib+0x45>
 43f:	90                   	nop
 440:	4c 8b 63 78          	mov    0x78(%rbx),%r12
 444:	e9 bd fe ff ff       	jmpq   306 <_ZN5Xbyak13CodeGenerator3vexERKNS_3RegES3_PKNS_7OperandEiib+0x306>
 449:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
 450:	4c 8b 73 78          	mov    0x78(%rbx),%r14
 454:	e9 0d fe ff ff       	jmpq   266 <_ZN5Xbyak13CodeGenerator3vexERKNS_3RegES3_PKNS_7OperandEiib+0x266>
 459:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
 460:	48 8b 43 78          	mov    0x78(%rbx),%rax
 464:	e9 56 fd ff ff       	jmpq   1bf <_ZN5Xbyak13CodeGenerator3vexERKNS_3RegES3_PKNS_7OperandEiib+0x1bf>
 469:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
 470:	48 89 df             	mov    %rbx,%rdi
 473:	be c5 00 00 00       	mov    $0xc5,%esi
 478:	44 88 4c 24 08       	mov    %r9b,0x8(%rsp)
 47d:	e8 00 00 00 00       	callq  482 <_ZN5Xbyak13CodeGenerator3vexERKNS_3RegES3_PKNS_7OperandEiib+0x482>
 482:	44 0f b6 4c 24 08    	movzbl 0x8(%rsp),%r9d
 488:	89 e8                	mov    %ebp,%eax
 48a:	48 89 df             	mov    %rbx,%rdi
 48d:	0c 80                	or     $0x80,%al
 48f:	45 84 c9             	test   %r9b,%r9b
 492:	0f 44 e8             	cmove  %eax,%ebp
 495:	89 ee                	mov    %ebp,%esi
 497:	e8 00 00 00 00       	callq  49c <_ZN5Xbyak13CodeGenerator3vexERKNS_3RegES3_PKNS_7OperandEiib+0x49c>
 49c:	e9 d4 fd ff ff       	jmpq   275 <_ZN5Xbyak13CodeGenerator3vexERKNS_3RegES3_PKNS_7OperandEiib+0x275>
 4a1:	e8 00 00 00 00       	callq  4a6 <_ZN5Xbyak13CodeGenerator3vexERKNS_3RegES3_PKNS_7OperandEiib+0x4a6>
 4a6:	e8 00 00 00 00       	callq  4ab <_ZN5Xbyak13CodeGenerator3vexERKNS_3RegES3_PKNS_7OperandEiib+0x4ab>
 4ab:	e8 00 00 00 00       	callq  4b0 <_GLOBAL__sub_I_mcl.cpp.cold+0x180>

Disassembly of section .text._ZN5Xbyak13CodeGenerator4evexERKNS_3RegES3_PKNS_7OperandEiibbijb:

0000000000000000 <_ZN5Xbyak13CodeGenerator4evexERKNS_3RegES3_PKNS_7OperandEiibbijb>:
   0:	f3 0f 1e fa          	endbr64 
   4:	41 57                	push   %r15
   6:	41 56                	push   %r14
   8:	41 55                	push   %r13
   a:	41 54                	push   %r12
   c:	55                   	push   %rbp
   d:	53                   	push   %rbx
   e:	48 89 fb             	mov    %rdi,%rbx
  11:	48 89 cf             	mov    %rcx,%rdi
  14:	48 83 ec 48          	sub    $0x48,%rsp
  18:	44 8b ac 24 88 00 00 	mov    0x88(%rsp),%r13d
  1f:	00 
  20:	8b 84 24 a0 00 00 00 	mov    0xa0(%rsp),%eax
  27:	44 89 4c 24 2c       	mov    %r9d,0x2c(%rsp)
  2c:	8b 8c 24 80 00 00 00 	mov    0x80(%rsp),%ecx
  33:	89 44 24 30          	mov    %eax,0x30(%rsp)
  37:	44 88 6c 24 29       	mov    %r13b,0x29(%rsp)
  3c:	41 f7 c0 00 00 04 02 	test   $0x2040000,%r8d
  43:	0f 84 95 09 00 00    	je     9de <_ZN5Xbyak13CodeGenerator4evexERKNS_3RegES3_PKNS_7OperandEiibbijb+0x9de>
  49:	44 89 c0             	mov    %r8d,%eax
  4c:	41 89 cc             	mov    %ecx,%r12d
  4f:	c1 f8 10             	sar    $0x10,%eax
  52:	83 e0 01             	and    $0x1,%eax
  55:	89 44 24 08          	mov    %eax,0x8(%rsp)
  59:	41 f7 c0 00 01 00 00 	test   $0x100,%r8d
  60:	75 36                	jne    98 <_ZN5Xbyak13CodeGenerator4evexERKNS_3RegES3_PKNS_7OperandEiibbijb+0x98>
  62:	41 f7 c0 00 02 00 00 	test   $0x200,%r8d
  69:	0f 85 e1 01 00 00    	jne    250 <_ZN5Xbyak13CodeGenerator4evexERKNS_3RegES3_PKNS_7OperandEiibbijb+0x250>
  6f:	44 89 c0             	mov    %r8d,%eax
  72:	25 00 04 00 00       	and    $0x400,%eax
  77:	83 f8 01             	cmp    $0x1,%eax
  7a:	45 19 ff             	sbb    %r15d,%r15d
  7d:	41 83 e7 fd          	and    $0xfffffffd,%r15d
  81:	41 83 c7 07          	add    $0x7,%r15d
  85:	83 f8 01             	cmp    $0x1,%eax
  88:	19 c0                	sbb    %eax,%eax
  8a:	f7 d0                	not    %eax
  8c:	83 e0 03             	and    $0x3,%eax
  8f:	eb 12                	jmp    a3 <_ZN5Xbyak13CodeGenerator4evexERKNS_3RegES3_PKNS_7OperandEiibbijb+0xa3>
  91:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  98:	41 bf 05 00 00 00    	mov    $0x5,%r15d
  9e:	b8 01 00 00 00       	mov    $0x1,%eax
  a3:	45 85 c0             	test   %r8d,%r8d
  a6:	44 0f b6 0a          	movzbl (%rdx),%r9d
  aa:	44 89 c5             	mov    %r8d,%ebp
  ad:	44 0f 49 f8          	cmovns %eax,%r15d
  b1:	0f b6 06             	movzbl (%rsi),%eax
  b4:	c1 fd 05             	sar    $0x5,%ebp
  b7:	83 e5 03             	and    $0x3,%ebp
  ba:	41 89 c3             	mov    %eax,%r11d
  bd:	83 e0 10             	and    $0x10,%eax
  c0:	88 44 24 18          	mov    %al,0x18(%rsp)
  c4:	41 83 e3 08          	and    $0x8,%r11d
  c8:	44 89 c8             	mov    %r9d,%eax
  cb:	41 83 e1 08          	and    $0x8,%r9d
  cf:	44 88 5c 24 10       	mov    %r11b,0x10(%rsp)
  d4:	83 e0 3f             	and    $0x3f,%eax
  d7:	44 88 4c 24 2b       	mov    %r9b,0x2b(%rsp)
  dc:	48 85 ff             	test   %rdi,%rdi
  df:	0f 84 9b 07 00 00    	je     880 <_ZN5Xbyak13CodeGenerator4evexERKNS_3RegES3_PKNS_7OperandEiibbijb+0x880>
  e5:	44 0f b6 0f          	movzbl (%rdi),%r9d
  e9:	41 83 e1 1f          	and    $0x1f,%r9d
  ed:	41 f7 d1             	not    %r9d
  f0:	44 89 4c 24 24       	mov    %r9d,0x24(%rsp)
  f5:	84 c9                	test   %cl,%cl
  f7:	0f 85 43 01 00 00    	jne    240 <_ZN5Xbyak13CodeGenerator4evexERKNS_3RegES3_PKNS_7OperandEiibbijb+0x240>
  fd:	c0 e8 04             	shr    $0x4,%al
 100:	83 f0 01             	xor    $0x1,%eax
 103:	83 e0 01             	and    $0x1,%eax
 106:	88 44 24 2a          	mov    %al,0x2a(%rsp)
 10a:	0f b6 4f 04          	movzbl 0x4(%rdi),%ecx
 10e:	c0 e9 03             	shr    $0x3,%cl
 111:	83 e1 07             	and    $0x7,%ecx
 114:	41 0f 95 c4          	setne  %r12b
 118:	44 0f b6 4a 04       	movzbl 0x4(%rdx),%r9d
 11d:	0f b6 46 04          	movzbl 0x4(%rsi),%eax
 121:	45 89 ca             	mov    %r9d,%r10d
 124:	88 44 24 38          	mov    %al,0x38(%rsp)
 128:	c0 e8 03             	shr    $0x3,%al
 12b:	41 c0 ea 03          	shr    $0x3,%r10b
 12f:	83 e0 07             	and    $0x7,%eax
 132:	41 83 e2 07          	and    $0x7,%r10d
 136:	44 0f b6 f0          	movzbl %al,%r14d
 13a:	44 09 d0             	or     %r10d,%eax
 13d:	45 0f b6 da          	movzbl %r10b,%r11d
 141:	0f b6 c0             	movzbl %al,%eax
 144:	09 c8                	or     %ecx,%eax
 146:	45 85 f6             	test   %r14d,%r14d
 149:	41 0f 9f c2          	setg   %r10b
 14d:	41 39 c6             	cmp    %eax,%r14d
 150:	41 0f 95 c6          	setne  %r14b
 154:	45 0f b6 f6          	movzbl %r14b,%r14d
 158:	45 21 f2             	and    %r14d,%r10d
 15b:	45 85 db             	test   %r11d,%r11d
 15e:	41 0f 9f c6          	setg   %r14b
 162:	41 39 c3             	cmp    %eax,%r11d
 165:	41 0f 95 c3          	setne  %r11b
 169:	45 0f b6 db          	movzbl %r11b,%r11d
 16d:	45 21 de             	and    %r11d,%r14d
 170:	45 01 d6             	add    %r10d,%r14d
 173:	45 31 d2             	xor    %r10d,%r10d
 176:	39 c1                	cmp    %eax,%ecx
 178:	41 0f 95 c2          	setne  %r10b
 17c:	45 21 d4             	and    %r10d,%r12d
 17f:	45 01 e6             	add    %r12d,%r14d
 182:	44 89 74 24 20       	mov    %r14d,0x20(%rsp)
 187:	0f 85 86 08 00 00    	jne    a13 <_ZN5Xbyak13CodeGenerator4evexERKNS_3RegES3_PKNS_7OperandEiibbijb+0xa13>
 18d:	85 c0                	test   %eax,%eax
 18f:	0f 84 2b 01 00 00    	je     2c0 <_ZN5Xbyak13CodeGenerator4evexERKNS_3RegES3_PKNS_7OperandEiibbijb+0x2c0>
 195:	83 f8 05             	cmp    $0x5,%eax
 198:	0f 84 d2 07 00 00    	je     970 <_ZN5Xbyak13CodeGenerator4evexERKNS_3RegES3_PKNS_7OperandEiibbijb+0x970>
 19e:	41 f6 c0 80          	test   $0x80,%r8b
 1a2:	74 0c                	je     1b0 <_ZN5Xbyak13CodeGenerator4evexERKNS_3RegES3_PKNS_7OperandEiibbijb+0x1b0>
 1a4:	f6 02 80             	testb  $0x80,(%rdx)
 1a7:	74 07                	je     1b0 <_ZN5Xbyak13CodeGenerator4evexERKNS_3RegES3_PKNS_7OperandEiibbijb+0x1b0>
 1a9:	f6 42 02 60          	testb  $0x60,0x2(%rdx)
 1ad:	75 19                	jne    1c8 <_ZN5Xbyak13CodeGenerator4evexERKNS_3RegES3_PKNS_7OperandEiibbijb+0x1c8>
 1af:	90                   	nop
 1b0:	41 f7 c0 00 00 08 00 	test   $0x80000,%r8d
 1b7:	0f 84 a3 00 00 00    	je     260 <_ZN5Xbyak13CodeGenerator4evexERKNS_3RegES3_PKNS_7OperandEiibbijb+0x260>
 1bd:	66 f7 02 00 04       	testw  $0x400,(%rdx)
 1c2:	0f 84 98 00 00 00    	je     260 <_ZN5Xbyak13CodeGenerator4evexERKNS_3RegES3_PKNS_7OperandEiibbijb+0x260>
 1c8:	83 e8 01             	sub    $0x1,%eax
 1cb:	c6 44 24 29 01       	movb   $0x1,0x29(%rsp)
 1d0:	41 bc 01 00 00 00    	mov    $0x1,%r12d
 1d6:	89 44 24 04          	mov    %eax,0x4(%rsp)
 1da:	45 31 ed             	xor    %r13d,%r13d
 1dd:	48 85 ff             	test   %rdi,%rdi
 1e0:	74 0c                	je     1ee <_ZN5Xbyak13CodeGenerator4evexERKNS_3RegES3_PKNS_7OperandEiibbijb+0x1ee>
 1e2:	44 0f b6 2f          	movzbl (%rdi),%r13d
 1e6:	41 c1 ed 04          	shr    $0x4,%r13d
 1ea:	41 83 e5 01          	and    $0x1,%r13d
 1ee:	0f b6 44 24 30       	movzbl 0x30(%rsp),%eax
 1f3:	41 09 c5             	or     %eax,%r13d
 1f6:	48 8b 06             	mov    (%rsi),%rax
 1f9:	a9 00 00 00 40       	test   $0x40000000,%eax
 1fe:	0f 85 64 01 00 00    	jne    368 <_ZN5Xbyak13CodeGenerator4evexERKNS_3RegES3_PKNS_7OperandEiibbijb+0x368>
 204:	48 8b 02             	mov    (%rdx),%rax
 207:	a9 00 00 00 40       	test   $0x40000000,%eax
 20c:	0f 85 56 01 00 00    	jne    368 <_ZN5Xbyak13CodeGenerator4evexERKNS_3RegES3_PKNS_7OperandEiibbijb+0x368>
 212:	48 85 ff             	test   %rdi,%rdi
 215:	0f 84 2d 07 00 00    	je     948 <_ZN5Xbyak13CodeGenerator4evexERKNS_3RegES3_PKNS_7OperandEiibbijb+0x948>
 21b:	44 8b 84 24 90 00 00 	mov    0x90(%rsp),%r8d
 222:	00 
 223:	48 f7 07 00 00 00 40 	testq  $0x40000000,(%rdi)
 22a:	41 0f 95 c6          	setne  %r14b
 22e:	45 85 c0             	test   %r8d,%r8d
 231:	0f 85 c8 01 00 00    	jne    3ff <_ZN5Xbyak13CodeGenerator4evexERKNS_3RegES3_PKNS_7OperandEiibbijb+0x3ff>
 237:	e9 4a 01 00 00       	jmpq   386 <_ZN5Xbyak13CodeGenerator4evexERKNS_3RegES3_PKNS_7OperandEiibbijb+0x386>
 23c:	0f 1f 40 00          	nopl   0x0(%rax)
 240:	c6 44 24 2a 00       	movb   $0x0,0x2a(%rsp)
 245:	e9 c0 fe ff ff       	jmpq   10a <_ZN5Xbyak13CodeGenerator4evexERKNS_3RegES3_PKNS_7OperandEiibbijb+0x10a>
 24a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
 250:	41 bf 06 00 00 00    	mov    $0x6,%r15d
 256:	b8 02 00 00 00       	mov    $0x2,%eax
 25b:	e9 43 fe ff ff       	jmpq   a3 <_ZN5Xbyak13CodeGenerator4evexERKNS_3RegES3_PKNS_7OperandEiibbijb+0xa3>
 260:	41 f7 c0 00 00 10 00 	test   $0x100000,%r8d
 267:	74 0b                	je     274 <_ZN5Xbyak13CodeGenerator4evexERKNS_3RegES3_PKNS_7OperandEiibbijb+0x274>
 269:	66 f7 02 00 08       	testw  $0x800,(%rdx)
 26e:	0f 85 54 ff ff ff    	jne    1c8 <_ZN5Xbyak13CodeGenerator4evexERKNS_3RegES3_PKNS_7OperandEiibbijb+0x1c8>
 274:	41 81 e0 00 00 20 00 	and    $0x200000,%r8d
 27b:	74 0b                	je     288 <_ZN5Xbyak13CodeGenerator4evexERKNS_3RegES3_PKNS_7OperandEiibbijb+0x288>
 27d:	66 f7 02 00 10       	testw  $0x1000,(%rdx)
 282:	0f 85 40 ff ff ff    	jne    1c8 <_ZN5Xbyak13CodeGenerator4evexERKNS_3RegES3_PKNS_7OperandEiibbijb+0x1c8>
 288:	bf 10 00 00 00       	mov    $0x10,%edi
 28d:	e8 00 00 00 00       	callq  292 <_ZN5Xbyak13CodeGenerator4evexERKNS_3RegES3_PKNS_7OperandEiibbijb+0x292>
 292:	48 8b 15 00 00 00 00 	mov    0x0(%rip),%rdx        # 299 <_ZN5Xbyak13CodeGenerator4evexERKNS_3RegES3_PKNS_7OperandEiibbijb+0x299>
 299:	48 8b 35 00 00 00 00 	mov    0x0(%rip),%rsi        # 2a0 <_ZN5Xbyak13CodeGenerator4evexERKNS_3RegES3_PKNS_7OperandEiibbijb+0x2a0>
 2a0:	48 89 c7             	mov    %rax,%rdi
 2a3:	48 8b 05 00 00 00 00 	mov    0x0(%rip),%rax        # 2aa <_ZN5Xbyak13CodeGenerator4evexERKNS_3RegES3_PKNS_7OperandEiibbijb+0x2aa>
 2aa:	c7 47 08 26 00 00 00 	movl   $0x26,0x8(%rdi)
 2b1:	48 83 c0 10          	add    $0x10,%rax
 2b5:	48 89 07             	mov    %rax,(%rdi)
 2b8:	e8 00 00 00 00       	callq  2bd <_ZN5Xbyak13CodeGenerator4evexERKNS_3RegES3_PKNS_7OperandEiibbijb+0x2bd>
 2bd:	0f 1f 00             	nopl   (%rax)
 2c0:	48 85 ff             	test   %rdi,%rdi
 2c3:	74 1f                	je     2e4 <_ZN5Xbyak13CodeGenerator4evexERKNS_3RegES3_PKNS_7OperandEiibbijb+0x2e4>
 2c5:	0f b7 47 02          	movzwl 0x2(%rdi),%eax
 2c9:	25 ff 3f 00 00       	and    $0x3fff,%eax
 2ce:	39 84 24 98 00 00 00 	cmp    %eax,0x98(%rsp)
 2d5:	0f 43 84 24 98 00 00 	cmovae 0x98(%rsp),%eax
 2dc:	00 
 2dd:	89 84 24 98 00 00 00 	mov    %eax,0x98(%rsp)
 2e4:	0f b7 4e 02          	movzwl 0x2(%rsi),%ecx
 2e8:	0f b7 42 02          	movzwl 0x2(%rdx),%eax
 2ec:	c7 44 24 04 02 00 00 	movl   $0x2,0x4(%rsp)
 2f3:	00 
 2f4:	81 e1 ff 3f 00 00    	and    $0x3fff,%ecx
 2fa:	25 ff 3f 00 00       	and    $0x3fff,%eax
 2ff:	39 c1                	cmp    %eax,%ecx
 301:	0f 43 c1             	cmovae %ecx,%eax
 304:	3b 84 24 98 00 00 00 	cmp    0x98(%rsp),%eax
 30b:	0f 42 84 24 98 00 00 	cmovb  0x98(%rsp),%eax
 312:	00 
 313:	3d 00 02 00 00       	cmp    $0x200,%eax
 318:	74 0e                	je     328 <_ZN5Xbyak13CodeGenerator4evexERKNS_3RegES3_PKNS_7OperandEiibbijb+0x328>
 31a:	31 c9                	xor    %ecx,%ecx
 31c:	3d 00 01 00 00       	cmp    $0x100,%eax
 321:	0f 94 c1             	sete   %cl
 324:	89 4c 24 04          	mov    %ecx,0x4(%rsp)
 328:	45 84 ed             	test   %r13b,%r13b
 32b:	0f 84 6f 05 00 00    	je     8a0 <_ZN5Xbyak13CodeGenerator4evexERKNS_3RegES3_PKNS_7OperandEiibbijb+0x8a0>
 331:	44 89 c0             	mov    %r8d,%eax
 334:	41 bc 02 00 00 00    	mov    $0x2,%r12d
 33a:	25 00 00 00 0c       	and    $0xc000000,%eax
 33f:	3d 00 00 00 0c       	cmp    $0xc000000,%eax
 344:	0f 84 90 fe ff ff    	je     1da <_ZN5Xbyak13CodeGenerator4evexERKNS_3RegES3_PKNS_7OperandEiibbijb+0x1da>
 34a:	41 81 e0 00 00 00 04 	and    $0x4000000,%r8d
 351:	41 83 f8 01          	cmp    $0x1,%r8d
 355:	45 19 e4             	sbb    %r12d,%r12d
 358:	41 83 e4 04          	and    $0x4,%r12d
 35c:	41 83 c4 04          	add    $0x4,%r12d
 360:	e9 75 fe ff ff       	jmpq   1da <_ZN5Xbyak13CodeGenerator4evexERKNS_3RegES3_PKNS_7OperandEiibbijb+0x1da>
 365:	0f 1f 00             	nopl   (%rax)
 368:	8b b4 24 90 00 00 00 	mov    0x90(%rsp),%esi
 36f:	85 f6                	test   %esi,%esi
 371:	0f 85 f9 04 00 00    	jne    870 <_ZN5Xbyak13CodeGenerator4evexERKNS_3RegES3_PKNS_7OperandEiibbijb+0x870>
 377:	48 85 ff             	test   %rdi,%rdi
 37a:	0f 84 40 06 00 00    	je     9c0 <_ZN5Xbyak13CodeGenerator4evexERKNS_3RegES3_PKNS_7OperandEiibbijb+0x9c0>
 380:	41 be 01 00 00 00    	mov    $0x1,%r14d
 386:	0f b6 4f 04          	movzbl 0x4(%rdi),%ecx
 38a:	83 e1 07             	and    $0x7,%ecx
 38d:	40 0f 95 c6          	setne  %sil
 391:	0f b6 7c 24 38       	movzbl 0x38(%rsp),%edi
 396:	89 f8                	mov    %edi,%eax
 398:	44 09 c8             	or     %r9d,%eax
 39b:	83 e0 07             	and    $0x7,%eax
 39e:	09 c8                	or     %ecx,%eax
 3a0:	41 83 e1 07          	and    $0x7,%r9d
 3a4:	89 84 24 90 00 00 00 	mov    %eax,0x90(%rsp)
 3ab:	0f 95 c0             	setne  %al
 3ae:	31 d2                	xor    %edx,%edx
 3b0:	44 3b 8c 24 90 00 00 	cmp    0x90(%rsp),%r9d
 3b7:	00 
 3b8:	0f 95 c2             	setne  %dl
 3bb:	21 c2                	and    %eax,%edx
 3bd:	89 f8                	mov    %edi,%eax
 3bf:	83 e0 07             	and    $0x7,%eax
 3c2:	40 0f 95 c7          	setne  %dil
 3c6:	3b 84 24 90 00 00 00 	cmp    0x90(%rsp),%eax
 3cd:	0f 95 c0             	setne  %al
 3d0:	0f b6 c0             	movzbl %al,%eax
 3d3:	21 f8                	and    %edi,%eax
 3d5:	01 d0                	add    %edx,%eax
 3d7:	31 d2                	xor    %edx,%edx
 3d9:	3b 8c 24 90 00 00 00 	cmp    0x90(%rsp),%ecx
 3e0:	0f 95 c2             	setne  %dl
 3e3:	21 f2                	and    %esi,%edx
 3e5:	01 d0                	add    %edx,%eax
 3e7:	0f 85 3a 06 00 00    	jne    a27 <_ZN5Xbyak13CodeGenerator4evexERKNS_3RegES3_PKNS_7OperandEiibbijb+0xa27>
 3ed:	8b 8c 24 90 00 00 00 	mov    0x90(%rsp),%ecx
 3f4:	b8 00 00 00 00       	mov    $0x0,%eax
 3f9:	85 c9                	test   %ecx,%ecx
 3fb:	44 0f 44 f0          	cmove  %eax,%r14d
 3ff:	48 8b 93 80 00 00 00 	mov    0x80(%rbx),%rdx
 406:	48 8b 4b 70          	mov    0x70(%rbx),%rcx
 40a:	48 39 ca             	cmp    %rcx,%rdx
 40d:	0f 82 4d 04 00 00    	jb     860 <_ZN5Xbyak13CodeGenerator4evexERKNS_3RegES3_PKNS_7OperandEiibbijb+0x860>
 413:	83 7b 20 03          	cmpl   $0x3,0x20(%rbx)
 417:	0f 85 00 06 00 00    	jne    a1d <_ZN5Xbyak13CodeGenerator4evexERKNS_3RegES3_PKNS_7OperandEiibbijb+0xa1d>
 41d:	48 8b 7b 68          	mov    0x68(%rbx),%rdi
 421:	48 01 c9             	add    %rcx,%rcx
 424:	b8 00 10 00 00       	mov    $0x1000,%eax
 429:	48 81 f9 00 10 00 00 	cmp    $0x1000,%rcx
 430:	48 0f 42 c8          	cmovb  %rax,%rcx
 434:	48 8b 07             	mov    (%rdi),%rax
 437:	48 89 4c 24 30       	mov    %rcx,0x30(%rsp)
 43c:	48 89 ce             	mov    %rcx,%rsi
 43f:	ff 10                	callq  *(%rax)
 441:	48 8b 4c 24 30       	mov    0x30(%rsp),%rcx
 446:	48 85 c0             	test   %rax,%rax
 449:	0f 84 d3 05 00 00    	je     a22 <_ZN5Xbyak13CodeGenerator4evexERKNS_3RegES3_PKNS_7OperandEiibbijb+0xa22>
 44f:	31 d2                	xor    %edx,%edx
 451:	48 83 bb 80 00 00 00 	cmpq   $0x0,0x80(%rbx)
 458:	00 
 459:	74 1e                	je     479 <_ZN5Xbyak13CodeGenerator4evexERKNS_3RegES3_PKNS_7OperandEiibbijb+0x479>
 45b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
 460:	48 8b 73 78          	mov    0x78(%rbx),%rsi
 464:	0f b6 34 16          	movzbl (%rsi,%rdx,1),%esi
 468:	40 88 34 10          	mov    %sil,(%rax,%rdx,1)
 46c:	48 83 c2 01          	add    $0x1,%rdx
 470:	48 39 93 80 00 00 00 	cmp    %rdx,0x80(%rbx)
 477:	77 e7                	ja     460 <_ZN5Xbyak13CodeGenerator4evexERKNS_3RegES3_PKNS_7OperandEiibbijb+0x460>
 479:	48 8b 7b 68          	mov    0x68(%rbx),%rdi
 47d:	48 8b 73 78          	mov    0x78(%rbx),%rsi
 481:	48 89 4c 24 38       	mov    %rcx,0x38(%rsp)
 486:	48 89 44 24 30       	mov    %rax,0x30(%rsp)
 48b:	48 8b 17             	mov    (%rdi),%rdx
 48e:	ff 52 08             	callq  *0x8(%rdx)
 491:	48 8b 44 24 30       	mov    0x30(%rsp),%rax
 496:	48 8b 4c 24 38       	mov    0x38(%rsp),%rcx
 49b:	48 8b 93 80 00 00 00 	mov    0x80(%rbx),%rdx
 4a2:	48 89 43 78          	mov    %rax,0x78(%rbx)
 4a6:	48 89 4b 70          	mov    %rcx,0x70(%rbx)
 4aa:	48 8d 4a 01          	lea    0x1(%rdx),%rcx
 4ae:	80 7c 24 10 01       	cmpb   $0x1,0x10(%rsp)
 4b3:	48 89 8b 80 00 00 00 	mov    %rcx,0x80(%rbx)
 4ba:	c6 04 10 62          	movb   $0x62,(%rax,%rdx,1)
 4be:	19 d2                	sbb    %edx,%edx
 4c0:	48 8b 4b 70          	mov    0x70(%rbx),%rcx
 4c4:	81 e2 80 00 00 00    	and    $0x80,%edx
 4ca:	80 7c 24 2a 00       	cmpb   $0x0,0x2a(%rsp)
 4cf:	8d 42 40             	lea    0x40(%rdx),%eax
 4d2:	0f 44 c2             	cmove  %edx,%eax
 4d5:	89 c2                	mov    %eax,%edx
 4d7:	83 ca 20             	or     $0x20,%edx
 4da:	80 7c 24 2b 00       	cmpb   $0x0,0x2b(%rsp)
 4df:	0f 44 c2             	cmove  %edx,%eax
 4e2:	89 c2                	mov    %eax,%edx
 4e4:	83 ca 10             	or     $0x10,%edx
 4e7:	80 7c 24 18 00       	cmpb   $0x0,0x18(%rsp)
 4ec:	0f 44 c2             	cmove  %edx,%eax
 4ef:	48 8b 93 80 00 00 00 	mov    0x80(%rbx),%rdx
 4f6:	41 09 c7             	or     %eax,%r15d
 4f9:	48 39 ca             	cmp    %rcx,%rdx
 4fc:	0f 82 4e 03 00 00    	jb     850 <_ZN5Xbyak13CodeGenerator4evexERKNS_3RegES3_PKNS_7OperandEiibbijb+0x850>
 502:	83 7b 20 03          	cmpl   $0x3,0x20(%rbx)
 506:	0f 85 11 05 00 00    	jne    a1d <_ZN5Xbyak13CodeGenerator4evexERKNS_3RegES3_PKNS_7OperandEiibbijb+0xa1d>
 50c:	48 01 c9             	add    %rcx,%rcx
 50f:	48 8b 7b 68          	mov    0x68(%rbx),%rdi
 513:	b8 00 10 00 00       	mov    $0x1000,%eax
 518:	48 81 f9 00 10 00 00 	cmp    $0x1000,%rcx
 51f:	48 0f 42 c8          	cmovb  %rax,%rcx
 523:	48 8b 07             	mov    (%rdi),%rax
 526:	48 89 4c 24 10       	mov    %rcx,0x10(%rsp)
 52b:	48 89 ce             	mov    %rcx,%rsi
 52e:	ff 10                	callq  *(%rax)
 530:	48 85 c0             	test   %rax,%rax
 533:	0f 84 e9 04 00 00    	je     a22 <_ZN5Xbyak13CodeGenerator4evexERKNS_3RegES3_PKNS_7OperandEiibbijb+0xa22>
 539:	31 d2                	xor    %edx,%edx
 53b:	48 83 bb 80 00 00 00 	cmpq   $0x0,0x80(%rbx)
 542:	00 
 543:	48 8b 4c 24 10       	mov    0x10(%rsp),%rcx
 548:	74 1f                	je     569 <_ZN5Xbyak13CodeGenerator4evexERKNS_3RegES3_PKNS_7OperandEiibbijb+0x569>
 54a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
 550:	48 8b 73 78          	mov    0x78(%rbx),%rsi
 554:	0f b6 34 16          	movzbl (%rsi,%rdx,1),%esi
 558:	40 88 34 10          	mov    %sil,(%rax,%rdx,1)
 55c:	48 83 c2 01          	add    $0x1,%rdx
 560:	48 39 93 80 00 00 00 	cmp    %rdx,0x80(%rbx)
 567:	77 e7                	ja     550 <_ZN5Xbyak13CodeGenerator4evexERKNS_3RegES3_PKNS_7OperandEiibbijb+0x550>
 569:	48 8b 7b 68          	mov    0x68(%rbx),%rdi
 56d:	48 8b 73 78          	mov    0x78(%rbx),%rsi
 571:	48 89 4c 24 18       	mov    %rcx,0x18(%rsp)
 576:	48 89 44 24 10       	mov    %rax,0x10(%rsp)
 57b:	48 8b 17             	mov    (%rdi),%rdx
 57e:	ff 52 08             	callq  *0x8(%rdx)
 581:	48 8b 44 24 10       	mov    0x10(%rsp),%rax
 586:	48 8b 4c 24 18       	mov    0x18(%rsp),%rcx
 58b:	48 8b 93 80 00 00 00 	mov    0x80(%rbx),%rdx
 592:	48 89 43 78          	mov    %rax,0x78(%rbx)
 596:	48 89 4b 70          	mov    %rcx,0x70(%rbx)
 59a:	48 8d 4a 01          	lea    0x1(%rdx),%rcx
 59e:	44 8b 4c 24 24       	mov    0x24(%rsp),%r9d
 5a3:	48 89 8b 80 00 00 00 	mov    %rcx,0x80(%rbx)
 5aa:	44 88 3c 10          	mov    %r15b,(%rax,%rdx,1)
 5ae:	8b 54 24 08          	mov    0x8(%rsp),%edx
 5b2:	89 e8                	mov    %ebp,%eax
 5b4:	0c 80                	or     $0x80,%al
 5b6:	4c 8b 7b 70          	mov    0x70(%rbx),%r15
 5ba:	85 d2                	test   %edx,%edx
 5bc:	48 8b 93 80 00 00 00 	mov    0x80(%rbx),%rdx
 5c3:	0f 45 e8             	cmovne %eax,%ebp
 5c6:	41 c1 e1 03          	shl    $0x3,%r9d
 5ca:	41 83 e1 78          	and    $0x78,%r9d
 5ce:	44 09 cd             	or     %r9d,%ebp
 5d1:	83 cd 04             	or     $0x4,%ebp
 5d4:	4c 39 fa             	cmp    %r15,%rdx
 5d7:	0f 82 63 02 00 00    	jb     840 <_ZN5Xbyak13CodeGenerator4evexERKNS_3RegES3_PKNS_7OperandEiibbijb+0x840>
 5dd:	83 7b 20 03          	cmpl   $0x3,0x20(%rbx)
 5e1:	0f 85 36 04 00 00    	jne    a1d <_ZN5Xbyak13CodeGenerator4evexERKNS_3RegES3_PKNS_7OperandEiibbijb+0xa1d>
 5e7:	4d 01 ff             	add    %r15,%r15
 5ea:	48 8b 7b 68          	mov    0x68(%rbx),%rdi
 5ee:	b8 00 10 00 00       	mov    $0x1000,%eax
 5f3:	49 81 ff 00 10 00 00 	cmp    $0x1000,%r15
 5fa:	4c 0f 42 f8          	cmovb  %rax,%r15
 5fe:	48 8b 07             	mov    (%rdi),%rax
 601:	4c 89 fe             	mov    %r15,%rsi
 604:	ff 10                	callq  *(%rax)
 606:	48 85 c0             	test   %rax,%rax
 609:	0f 84 13 04 00 00    	je     a22 <_ZN5Xbyak13CodeGenerator4evexERKNS_3RegES3_PKNS_7OperandEiibbijb+0xa22>
 60f:	31 d2                	xor    %edx,%edx
 611:	48 83 bb 80 00 00 00 	cmpq   $0x0,0x80(%rbx)
 618:	00 
 619:	74 1d                	je     638 <_ZN5Xbyak13CodeGenerator4evexERKNS_3RegES3_PKNS_7OperandEiibbijb+0x638>
 61b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
 620:	48 8b 4b 78          	mov    0x78(%rbx),%rcx
 624:	0f b6 0c 11          	movzbl (%rcx,%rdx,1),%ecx
 628:	88 0c 10             	mov    %cl,(%rax,%rdx,1)
 62b:	48 83 c2 01          	add    $0x1,%rdx
 62f:	48 39 93 80 00 00 00 	cmp    %rdx,0x80(%rbx)
 636:	77 e8                	ja     620 <_ZN5Xbyak13CodeGenerator4evexERKNS_3RegES3_PKNS_7OperandEiibbijb+0x620>
 638:	48 8b 7b 68          	mov    0x68(%rbx),%rdi
 63c:	48 8b 73 78          	mov    0x78(%rbx),%rsi
 640:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
 645:	48 8b 17             	mov    (%rdi),%rdx
 648:	ff 52 08             	callq  *0x8(%rdx)
 64b:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
 650:	4c 89 7b 70          	mov    %r15,0x70(%rbx)
 654:	48 8b 93 80 00 00 00 	mov    0x80(%rbx),%rdx
 65b:	48 89 43 78          	mov    %rax,0x78(%rbx)
 65f:	48 8d 4a 01          	lea    0x1(%rdx),%rcx
 663:	45 31 db             	xor    %r11d,%r11d
 666:	45 84 f6             	test   %r14b,%r14b
 669:	44 8b b4 24 90 00 00 	mov    0x90(%rsp),%r14d
 670:	00 
 671:	48 89 8b 80 00 00 00 	mov    %rcx,0x80(%rbx)
 678:	41 0f 95 c3          	setne  %r11b
 67c:	45 31 d2             	xor    %r10d,%r10d
 67f:	40 88 2c 10          	mov    %bpl,(%rax,%rdx,1)
 683:	8b 44 24 04          	mov    0x4(%rsp),%eax
 687:	41 c1 e3 07          	shl    $0x7,%r11d
 68b:	ba 08 00 00 00       	mov    $0x8,%edx
 690:	89 d6                	mov    %edx,%esi
 692:	48 8b 6b 70          	mov    0x70(%rbx),%rbp
 696:	c1 e0 05             	shl    $0x5,%eax
 699:	83 e0 60             	and    $0x60,%eax
 69c:	80 7c 24 29 00       	cmpb   $0x0,0x29(%rsp)
 6a1:	41 0f 95 c2          	setne  %r10b
 6a5:	41 c1 e2 04          	shl    $0x4,%r10d
 6a9:	45 85 ed             	test   %r13d,%r13d
 6ac:	0f 45 74 24 20       	cmovne 0x20(%rsp),%esi
 6b1:	41 83 e6 07          	and    $0x7,%r14d
 6b5:	41 09 c6             	or     %eax,%r14d
 6b8:	48 8b 83 80 00 00 00 	mov    0x80(%rbx),%rax
 6bf:	45 09 de             	or     %r11d,%r14d
 6c2:	45 09 d6             	or     %r10d,%r14d
 6c5:	41 09 f6             	or     %esi,%r14d
 6c8:	48 39 e8             	cmp    %rbp,%rax
 6cb:	0f 82 5f 01 00 00    	jb     830 <_ZN5Xbyak13CodeGenerator4evexERKNS_3RegES3_PKNS_7OperandEiibbijb+0x830>
 6d1:	83 7b 20 03          	cmpl   $0x3,0x20(%rbx)
 6d5:	0f 85 42 03 00 00    	jne    a1d <_ZN5Xbyak13CodeGenerator4evexERKNS_3RegES3_PKNS_7OperandEiibbijb+0xa1d>
 6db:	48 8b 7b 68          	mov    0x68(%rbx),%rdi
 6df:	48 01 ed             	add    %rbp,%rbp
 6e2:	b8 00 10 00 00       	mov    $0x1000,%eax
 6e7:	48 81 fd 00 10 00 00 	cmp    $0x1000,%rbp
 6ee:	48 0f 42 e8          	cmovb  %rax,%rbp
 6f2:	48 8b 07             	mov    (%rdi),%rax
 6f5:	48 89 ee             	mov    %rbp,%rsi
 6f8:	ff 10                	callq  *(%rax)
 6fa:	49 89 c5             	mov    %rax,%r13
 6fd:	48 85 c0             	test   %rax,%rax
 700:	0f 84 1c 03 00 00    	je     a22 <_ZN5Xbyak13CodeGenerator4evexERKNS_3RegES3_PKNS_7OperandEiibbijb+0xa22>
 706:	31 d2                	xor    %edx,%edx
 708:	48 83 bb 80 00 00 00 	cmpq   $0x0,0x80(%rbx)
 70f:	00 
 710:	74 20                	je     732 <_ZN5Xbyak13CodeGenerator4evexERKNS_3RegES3_PKNS_7OperandEiibbijb+0x732>
 712:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
 718:	48 8b 43 78          	mov    0x78(%rbx),%rax
 71c:	0f b6 04 10          	movzbl (%rax,%rdx,1),%eax
 720:	41 88 44 15 00       	mov    %al,0x0(%r13,%rdx,1)
 725:	48 83 c2 01          	add    $0x1,%rdx
 729:	48 39 93 80 00 00 00 	cmp    %rdx,0x80(%rbx)
 730:	77 e6                	ja     718 <_ZN5Xbyak13CodeGenerator4evexERKNS_3RegES3_PKNS_7OperandEiibbijb+0x718>
 732:	48 8b 7b 68          	mov    0x68(%rbx),%rdi
 736:	48 8b 73 78          	mov    0x78(%rbx),%rsi
 73a:	48 8b 07             	mov    (%rdi),%rax
 73d:	ff 50 08             	callq  *0x8(%rax)
 740:	4c 89 6b 78          	mov    %r13,0x78(%rbx)
 744:	48 8b 83 80 00 00 00 	mov    0x80(%rbx),%rax
 74b:	48 89 6b 70          	mov    %rbp,0x70(%rbx)
 74f:	48 8d 50 01          	lea    0x1(%rax),%rdx
 753:	48 89 93 80 00 00 00 	mov    %rdx,0x80(%rbx)
 75a:	45 88 74 05 00       	mov    %r14b,0x0(%r13,%rax,1)
 75f:	48 8b 83 80 00 00 00 	mov    0x80(%rbx),%rax
 766:	48 8b 6b 70          	mov    0x70(%rbx),%rbp
 76a:	48 39 e8             	cmp    %rbp,%rax
 76d:	0f 82 ad 00 00 00    	jb     820 <_ZN5Xbyak13CodeGenerator4evexERKNS_3RegES3_PKNS_7OperandEiibbijb+0x820>
 773:	83 7b 20 03          	cmpl   $0x3,0x20(%rbx)
 777:	0f 85 a0 02 00 00    	jne    a1d <_ZN5Xbyak13CodeGenerator4evexERKNS_3RegES3_PKNS_7OperandEiibbijb+0xa1d>
 77d:	48 8b 7b 68          	mov    0x68(%rbx),%rdi
 781:	48 01 ed             	add    %rbp,%rbp
 784:	b8 00 10 00 00       	mov    $0x1000,%eax
 789:	48 81 fd 00 10 00 00 	cmp    $0x1000,%rbp
 790:	48 0f 42 e8          	cmovb  %rax,%rbp
 794:	48 8b 07             	mov    (%rdi),%rax
 797:	48 89 ee             	mov    %rbp,%rsi
 79a:	ff 10                	callq  *(%rax)
 79c:	49 89 c5             	mov    %rax,%r13
 79f:	48 85 c0             	test   %rax,%rax
 7a2:	0f 84 7a 02 00 00    	je     a22 <_ZN5Xbyak13CodeGenerator4evexERKNS_3RegES3_PKNS_7OperandEiibbijb+0xa22>
 7a8:	31 d2                	xor    %edx,%edx
 7aa:	48 83 bb 80 00 00 00 	cmpq   $0x0,0x80(%rbx)
 7b1:	00 
 7b2:	74 1e                	je     7d2 <_ZN5Xbyak13CodeGenerator4evexERKNS_3RegES3_PKNS_7OperandEiibbijb+0x7d2>
 7b4:	0f 1f 40 00          	nopl   0x0(%rax)
 7b8:	48 8b 43 78          	mov    0x78(%rbx),%rax
 7bc:	0f b6 04 10          	movzbl (%rax,%rdx,1),%eax
 7c0:	41 88 44 15 00       	mov    %al,0x0(%r13,%rdx,1)
 7c5:	48 83 c2 01          	add    $0x1,%rdx
 7c9:	48 39 93 80 00 00 00 	cmp    %rdx,0x80(%rbx)
 7d0:	77 e6                	ja     7b8 <_ZN5Xbyak13CodeGenerator4evexERKNS_3RegES3_PKNS_7OperandEiibbijb+0x7b8>
 7d2:	48 8b 7b 68          	mov    0x68(%rbx),%rdi
 7d6:	48 8b 73 78          	mov    0x78(%rbx),%rsi
 7da:	48 8b 07             	mov    (%rdi),%rax
 7dd:	ff 50 08             	callq  *0x8(%rax)
 7e0:	4c 89 6b 78          	mov    %r13,0x78(%rbx)
 7e4:	48 8b 83 80 00 00 00 	mov    0x80(%rbx),%rax
 7eb:	48 89 6b 70          	mov    %rbp,0x70(%rbx)
 7ef:	0f b6 74 24 2c       	movzbl 0x2c(%rsp),%esi
 7f4:	48 8d 50 01          	lea    0x1(%rax),%rdx
 7f8:	48 89 93 80 00 00 00 	mov    %rdx,0x80(%rbx)
 7ff:	41 88 74 05 00       	mov    %sil,0x0(%r13,%rax,1)
 804:	48 83 c4 48          	add    $0x48,%rsp
 808:	44 89 e0             	mov    %r12d,%eax
 80b:	5b                   	pop    %rbx
 80c:	5d                   	pop    %rbp
 80d:	41 5c                	pop    %r12
 80f:	41 5d                	pop    %r13
 811:	41 5e                	pop    %r14
 813:	41 5f                	pop    %r15
 815:	c3                   	retq   
 816:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 81d:	00 00 00 
 820:	4c 8b 6b 78          	mov    0x78(%rbx),%r13
 824:	eb c9                	jmp    7ef <_ZN5Xbyak13CodeGenerator4evexERKNS_3RegES3_PKNS_7OperandEiibbijb+0x7ef>
 826:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 82d:	00 00 00 
 830:	4c 8b 6b 78          	mov    0x78(%rbx),%r13
 834:	e9 16 ff ff ff       	jmpq   74f <_ZN5Xbyak13CodeGenerator4evexERKNS_3RegES3_PKNS_7OperandEiibbijb+0x74f>
 839:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
 840:	48 8b 43 78          	mov    0x78(%rbx),%rax
 844:	e9 16 fe ff ff       	jmpq   65f <_ZN5Xbyak13CodeGenerator4evexERKNS_3RegES3_PKNS_7OperandEiibbijb+0x65f>
 849:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
 850:	48 8b 43 78          	mov    0x78(%rbx),%rax
 854:	e9 41 fd ff ff       	jmpq   59a <_ZN5Xbyak13CodeGenerator4evexERKNS_3RegES3_PKNS_7OperandEiibbijb+0x59a>
 859:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
 860:	48 8b 43 78          	mov    0x78(%rbx),%rax
 864:	e9 41 fc ff ff       	jmpq   4aa <_ZN5Xbyak13CodeGenerator4evexERKNS_3RegES3_PKNS_7OperandEiibbijb+0x4aa>
 869:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
 870:	41 be 01 00 00 00    	mov    $0x1,%r14d
 876:	e9 84 fb ff ff       	jmpq   3ff <_ZN5Xbyak13CodeGenerator4evexERKNS_3RegES3_PKNS_7OperandEiibbijb+0x3ff>
 87b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
 880:	84 c9                	test   %cl,%cl
 882:	74 4c                	je     8d0 <_ZN5Xbyak13CodeGenerator4evexERKNS_3RegES3_PKNS_7OperandEiibbijb+0x8d0>
 884:	c7 44 24 24 ff ff ff 	movl   $0xffffffff,0x24(%rsp)
 88b:	ff 
 88c:	45 31 e4             	xor    %r12d,%r12d
 88f:	31 c9                	xor    %ecx,%ecx
 891:	c6 44 24 2a 00       	movb   $0x0,0x2a(%rsp)
 896:	e9 7d f8 ff ff       	jmpq   118 <_ZN5Xbyak13CodeGenerator4evexERKNS_3RegES3_PKNS_7OperandEiibbijb+0x118>
 89b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
 8a0:	41 f6 c0 10          	test   $0x10,%r8b
 8a4:	74 4a                	je     8f0 <_ZN5Xbyak13CodeGenerator4evexERKNS_3RegES3_PKNS_7OperandEiibbijb+0x8f0>
 8a6:	41 bc 08 00 00 00    	mov    $0x8,%r12d
 8ac:	3d 80 00 00 00       	cmp    $0x80,%eax
 8b1:	0f 84 23 f9 ff ff    	je     1da <_ZN5Xbyak13CodeGenerator4evexERKNS_3RegES3_PKNS_7OperandEiibbijb+0x1da>
 8b7:	3d 00 01 00 00       	cmp    $0x100,%eax
 8bc:	41 bc 20 00 00 00    	mov    $0x20,%r12d
 8c2:	b8 40 00 00 00       	mov    $0x40,%eax
 8c7:	44 0f 45 e0          	cmovne %eax,%r12d
 8cb:	e9 0a f9 ff ff       	jmpq   1da <_ZN5Xbyak13CodeGenerator4evexERKNS_3RegES3_PKNS_7OperandEiibbijb+0x1da>
 8d0:	c0 e8 04             	shr    $0x4,%al
 8d3:	c7 44 24 24 ff ff ff 	movl   $0xffffffff,0x24(%rsp)
 8da:	ff 
 8db:	31 c9                	xor    %ecx,%ecx
 8dd:	83 f0 01             	xor    $0x1,%eax
 8e0:	83 e0 01             	and    $0x1,%eax
 8e3:	88 44 24 2a          	mov    %al,0x2a(%rsp)
 8e7:	e9 2c f8 ff ff       	jmpq   118 <_ZN5Xbyak13CodeGenerator4evexERKNS_3RegES3_PKNS_7OperandEiibbijb+0x118>
 8ec:	0f 1f 40 00          	nopl   0x0(%rax)
 8f0:	44 89 c1             	mov    %r8d,%ecx
 8f3:	41 bc 01 00 00 00    	mov    $0x1,%r12d
 8f9:	83 c9 0d             	or     $0xd,%ecx
 8fc:	41 f6 c0 0f          	test   $0xf,%r8b
 900:	44 0f 44 c1          	cmove  %ecx,%r8d
 904:	44 89 c1             	mov    %r8d,%ecx
 907:	83 e1 07             	and    $0x7,%ecx
 90a:	0f 84 ca f8 ff ff    	je     1da <_ZN5Xbyak13CodeGenerator4evexERKNS_3RegES3_PKNS_7OperandEiibbijb+0x1da>
 910:	83 e9 01             	sub    $0x1,%ecx
 913:	41 d3 e4             	shl    %cl,%r12d
 916:	41 83 e0 08          	and    $0x8,%r8d
 91a:	0f 84 ba f8 ff ff    	je     1da <_ZN5Xbyak13CodeGenerator4evexERKNS_3RegES3_PKNS_7OperandEiibbijb+0x1da>
 920:	3d 00 02 00 00       	cmp    $0x200,%eax
 925:	0f 84 a5 00 00 00    	je     9d0 <_ZN5Xbyak13CodeGenerator4evexERKNS_3RegES3_PKNS_7OperandEiibbijb+0x9d0>
 92b:	41 b8 02 00 00 00    	mov    $0x2,%r8d
 931:	41 d3 e0             	shl    %cl,%r8d
 934:	3d 00 01 00 00       	cmp    $0x100,%eax
 939:	45 0f 44 e0          	cmove  %r8d,%r12d
 93d:	e9 98 f8 ff ff       	jmpq   1da <_ZN5Xbyak13CodeGenerator4evexERKNS_3RegES3_PKNS_7OperandEiibbijb+0x1da>
 942:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
 948:	8b 84 24 90 00 00 00 	mov    0x90(%rsp),%eax
 94f:	45 31 f6             	xor    %r14d,%r14d
 952:	85 c0                	test   %eax,%eax
 954:	0f 85 a5 fa ff ff    	jne    3ff <_ZN5Xbyak13CodeGenerator4evexERKNS_3RegES3_PKNS_7OperandEiibbijb+0x3ff>
 95a:	31 c9                	xor    %ecx,%ecx
 95c:	31 f6                	xor    %esi,%esi
 95e:	45 31 f6             	xor    %r14d,%r14d
 961:	e9 2b fa ff ff       	jmpq   391 <_ZN5Xbyak13CodeGenerator4evexERKNS_3RegES3_PKNS_7OperandEiibbijb+0x391>
 966:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 96d:	00 00 00 
 970:	41 f7 c0 00 00 40 00 	test   $0x400000,%r8d
 977:	74 07                	je     980 <_ZN5Xbyak13CodeGenerator4evexERKNS_3RegES3_PKNS_7OperandEiibbijb+0x980>
 979:	66 f7 02 00 04       	testw  $0x400,(%rdx)
 97e:	75 28                	jne    9a8 <_ZN5Xbyak13CodeGenerator4evexERKNS_3RegES3_PKNS_7OperandEiibbijb+0x9a8>
 980:	41 f7 c0 00 00 80 00 	test   $0x800000,%r8d
 987:	74 07                	je     990 <_ZN5Xbyak13CodeGenerator4evexERKNS_3RegES3_PKNS_7OperandEiibbijb+0x990>
 989:	66 f7 02 00 08       	testw  $0x800,(%rdx)
 98e:	75 18                	jne    9a8 <_ZN5Xbyak13CodeGenerator4evexERKNS_3RegES3_PKNS_7OperandEiibbijb+0x9a8>
 990:	41 81 e0 00 00 00 01 	and    $0x1000000,%r8d
 997:	0f 84 94 00 00 00    	je     a31 <_ZN5Xbyak13CodeGenerator4evexERKNS_3RegES3_PKNS_7OperandEiibbijb+0xa31>
 99d:	66 f7 02 00 10       	testw  $0x1000,(%rdx)
 9a2:	0f 84 89 00 00 00    	je     a31 <_ZN5Xbyak13CodeGenerator4evexERKNS_3RegES3_PKNS_7OperandEiibbijb+0xa31>
 9a8:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%rsp)
 9af:	00 
 9b0:	41 bc 01 00 00 00    	mov    $0x1,%r12d
 9b6:	c6 44 24 29 01       	movb   $0x1,0x29(%rsp)
 9bb:	e9 1a f8 ff ff       	jmpq   1da <_ZN5Xbyak13CodeGenerator4evexERKNS_3RegES3_PKNS_7OperandEiibbijb+0x1da>
 9c0:	31 c9                	xor    %ecx,%ecx
 9c2:	31 f6                	xor    %esi,%esi
 9c4:	41 be 01 00 00 00    	mov    $0x1,%r14d
 9ca:	e9 c2 f9 ff ff       	jmpq   391 <_ZN5Xbyak13CodeGenerator4evexERKNS_3RegES3_PKNS_7OperandEiibbijb+0x391>
 9cf:	90                   	nop
 9d0:	41 bc 04 00 00 00    	mov    $0x4,%r12d
 9d6:	41 d3 e4             	shl    %cl,%r12d
 9d9:	e9 fc f7 ff ff       	jmpq   1da <_ZN5Xbyak13CodeGenerator4evexERKNS_3RegES3_PKNS_7OperandEiibbijb+0x1da>
 9de:	bf 10 00 00 00       	mov    $0x10,%edi
 9e3:	e8 00 00 00 00       	callq  9e8 <_ZN5Xbyak13CodeGenerator4evexERKNS_3RegES3_PKNS_7OperandEiibbijb+0x9e8>
 9e8:	48 8b 15 00 00 00 00 	mov    0x0(%rip),%rdx        # 9ef <_ZN5Xbyak13CodeGenerator4evexERKNS_3RegES3_PKNS_7OperandEiibbijb+0x9ef>
 9ef:	48 8b 35 00 00 00 00 	mov    0x0(%rip),%rsi        # 9f6 <_ZN5Xbyak13CodeGenerator4evexERKNS_3RegES3_PKNS_7OperandEiibbijb+0x9f6>
 9f6:	48 89 c7             	mov    %rax,%rdi
 9f9:	48 8b 05 00 00 00 00 	mov    0x0(%rip),%rax        # a00 <_ZN5Xbyak13CodeGenerator4evexERKNS_3RegES3_PKNS_7OperandEiibbijb+0xa00>
 a00:	c7 47 08 24 00 00 00 	movl   $0x24,0x8(%rdi)
 a07:	48 83 c0 10          	add    $0x10,%rax
 a0b:	48 89 07             	mov    %rax,(%rdi)
 a0e:	e8 00 00 00 00       	callq  a13 <_ZN5Xbyak13CodeGenerator4evexERKNS_3RegES3_PKNS_7OperandEiibbijb+0xa13>
 a13:	bf 22 00 00 00       	mov    $0x22,%edi
 a18:	e8 00 00 00 00       	callq  a1d <_ZN5Xbyak13CodeGenerator4evexERKNS_3RegES3_PKNS_7OperandEiibbijb+0xa1d>
 a1d:	e8 00 00 00 00       	callq  a22 <_ZN5Xbyak13CodeGenerator4evexERKNS_3RegES3_PKNS_7OperandEiibbijb+0xa22>
 a22:	e8 00 00 00 00       	callq  a27 <_ZN5Xbyak13CodeGenerator4evexERKNS_3RegES3_PKNS_7OperandEiibbijb+0xa27>
 a27:	bf 21 00 00 00       	mov    $0x21,%edi
 a2c:	e8 00 00 00 00       	callq  a31 <_ZN5Xbyak13CodeGenerator4evexERKNS_3RegES3_PKNS_7OperandEiibbijb+0xa31>
 a31:	bf 10 00 00 00       	mov    $0x10,%edi
 a36:	e8 00 00 00 00       	callq  a3b <_ZN5Xbyak13CodeGenerator4evexERKNS_3RegES3_PKNS_7OperandEiibbijb+0xa3b>
 a3b:	48 8b 15 00 00 00 00 	mov    0x0(%rip),%rdx        # a42 <_ZN5Xbyak13CodeGenerator4evexERKNS_3RegES3_PKNS_7OperandEiibbijb+0xa42>
 a42:	48 8b 35 00 00 00 00 	mov    0x0(%rip),%rsi        # a49 <_ZN5Xbyak13CodeGenerator4evexERKNS_3RegES3_PKNS_7OperandEiibbijb+0xa49>
 a49:	48 89 c7             	mov    %rax,%rdi
 a4c:	48 8b 05 00 00 00 00 	mov    0x0(%rip),%rax        # a53 <_ZN5Xbyak13CodeGenerator4evexERKNS_3RegES3_PKNS_7OperandEiibbijb+0xa53>
 a53:	c7 47 08 25 00 00 00 	movl   $0x25,0x8(%rdi)
 a5a:	48 83 c0 10          	add    $0x10,%rax
 a5e:	48 89 07             	mov    %rax,(%rdi)
 a61:	e8 00 00 00 00       	callq  a66 <_GLOBAL__sub_I_mcl.cpp.cold+0x736>

Disassembly of section .text._ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N5Xbyak12LabelManager9SlabelValEESaISB_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb1ELb0ELb1EEEED2Ev:

0000000000000000 <_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N5Xbyak12LabelManager9SlabelValEESaISB_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb1ELb0ELb1EEEED1Ev>:
   0:	f3 0f 1e fa          	endbr64 
   4:	41 54                	push   %r12
   6:	55                   	push   %rbp
   7:	53                   	push   %rbx
   8:	48 8b 6f 10          	mov    0x10(%rdi),%rbp
   c:	48 89 fb             	mov    %rdi,%rbx
   f:	48 85 ed             	test   %rbp,%rbp
  12:	75 21                	jne    35 <_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N5Xbyak12LabelManager9SlabelValEESaISB_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb1ELb0ELb1EEEED1Ev+0x35>
  14:	eb 3d                	jmp    53 <_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N5Xbyak12LabelManager9SlabelValEESaISB_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb1ELb0ELb1EEEED1Ev+0x53>
  16:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  1d:	00 00 00 
  20:	e8 00 00 00 00       	callq  25 <_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N5Xbyak12LabelManager9SlabelValEESaISB_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb1ELb0ELb1EEEED1Ev+0x25>
  25:	48 89 ef             	mov    %rbp,%rdi
  28:	e8 00 00 00 00       	callq  2d <_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N5Xbyak12LabelManager9SlabelValEESaISB_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb1ELb0ELb1EEEED1Ev+0x2d>
  2d:	4d 85 e4             	test   %r12,%r12
  30:	74 21                	je     53 <_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N5Xbyak12LabelManager9SlabelValEESaISB_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb1ELb0ELb1EEEED1Ev+0x53>
  32:	4c 89 e5             	mov    %r12,%rbp
  35:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
  39:	48 8d 45 18          	lea    0x18(%rbp),%rax
  3d:	4c 8b 65 00          	mov    0x0(%rbp),%r12
  41:	48 39 c7             	cmp    %rax,%rdi
  44:	75 da                	jne    20 <_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N5Xbyak12LabelManager9SlabelValEESaISB_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb1ELb0ELb1EEEED1Ev+0x20>
  46:	48 89 ef             	mov    %rbp,%rdi
  49:	e8 00 00 00 00       	callq  4e <_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N5Xbyak12LabelManager9SlabelValEESaISB_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb1ELb0ELb1EEEED1Ev+0x4e>
  4e:	4d 85 e4             	test   %r12,%r12
  51:	75 df                	jne    32 <_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N5Xbyak12LabelManager9SlabelValEESaISB_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb1ELb0ELb1EEEED1Ev+0x32>
  53:	48 8b 43 08          	mov    0x8(%rbx),%rax
  57:	48 8b 3b             	mov    (%rbx),%rdi
  5a:	31 f6                	xor    %esi,%esi
  5c:	48 83 c3 30          	add    $0x30,%rbx
  60:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
  67:	00 
  68:	e8 00 00 00 00       	callq  6d <_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N5Xbyak12LabelManager9SlabelValEESaISB_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb1ELb0ELb1EEEED1Ev+0x6d>
  6d:	48 8b 7b d0          	mov    -0x30(%rbx),%rdi
  71:	48 c7 43 e8 00 00 00 	movq   $0x0,-0x18(%rbx)
  78:	00 
  79:	48 c7 43 e0 00 00 00 	movq   $0x0,-0x20(%rbx)
  80:	00 
  81:	48 39 df             	cmp    %rbx,%rdi
  84:	74 0a                	je     90 <_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N5Xbyak12LabelManager9SlabelValEESaISB_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb1ELb0ELb1EEEED1Ev+0x90>
  86:	5b                   	pop    %rbx
  87:	5d                   	pop    %rbp
  88:	41 5c                	pop    %r12
  8a:	e9 00 00 00 00       	jmpq   8f <_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N5Xbyak12LabelManager9SlabelValEESaISB_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb1ELb0ELb1EEEED1Ev+0x8f>
  8f:	90                   	nop
  90:	5b                   	pop    %rbx
  91:	5d                   	pop    %rbp
  92:	41 5c                	pop    %r12
  94:	c3                   	retq   

Disassembly of section .text._ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_KN5Xbyak8JmpLabelEESaISB_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb1ELb0ELb0EEEED2Ev:

0000000000000000 <_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_KN5Xbyak8JmpLabelEESaISB_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb1ELb0ELb0EEEED1Ev>:
   0:	f3 0f 1e fa          	endbr64 
   4:	41 54                	push   %r12
   6:	55                   	push   %rbp
   7:	53                   	push   %rbx
   8:	48 8b 6f 10          	mov    0x10(%rdi),%rbp
   c:	48 89 fb             	mov    %rdi,%rbx
   f:	48 85 ed             	test   %rbp,%rbp
  12:	75 21                	jne    35 <_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_KN5Xbyak8JmpLabelEESaISB_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb1ELb0ELb0EEEED1Ev+0x35>
  14:	eb 3d                	jmp    53 <_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_KN5Xbyak8JmpLabelEESaISB_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb1ELb0ELb0EEEED1Ev+0x53>
  16:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  1d:	00 00 00 
  20:	e8 00 00 00 00       	callq  25 <_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_KN5Xbyak8JmpLabelEESaISB_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb1ELb0ELb0EEEED1Ev+0x25>
  25:	48 89 ef             	mov    %rbp,%rdi
  28:	e8 00 00 00 00       	callq  2d <_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_KN5Xbyak8JmpLabelEESaISB_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb1ELb0ELb0EEEED1Ev+0x2d>
  2d:	4d 85 e4             	test   %r12,%r12
  30:	74 21                	je     53 <_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_KN5Xbyak8JmpLabelEESaISB_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb1ELb0ELb0EEEED1Ev+0x53>
  32:	4c 89 e5             	mov    %r12,%rbp
  35:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
  39:	48 8d 45 18          	lea    0x18(%rbp),%rax
  3d:	4c 8b 65 00          	mov    0x0(%rbp),%r12
  41:	48 39 c7             	cmp    %rax,%rdi
  44:	75 da                	jne    20 <_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_KN5Xbyak8JmpLabelEESaISB_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb1ELb0ELb0EEEED1Ev+0x20>
  46:	48 89 ef             	mov    %rbp,%rdi
  49:	e8 00 00 00 00       	callq  4e <_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_KN5Xbyak8JmpLabelEESaISB_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb1ELb0ELb0EEEED1Ev+0x4e>
  4e:	4d 85 e4             	test   %r12,%r12
  51:	75 df                	jne    32 <_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_KN5Xbyak8JmpLabelEESaISB_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb1ELb0ELb0EEEED1Ev+0x32>
  53:	48 8b 43 08          	mov    0x8(%rbx),%rax
  57:	48 8b 3b             	mov    (%rbx),%rdi
  5a:	31 f6                	xor    %esi,%esi
  5c:	48 83 c3 30          	add    $0x30,%rbx
  60:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
  67:	00 
  68:	e8 00 00 00 00       	callq  6d <_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_KN5Xbyak8JmpLabelEESaISB_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb1ELb0ELb0EEEED1Ev+0x6d>
  6d:	48 8b 7b d0          	mov    -0x30(%rbx),%rdi
  71:	48 c7 43 e8 00 00 00 	movq   $0x0,-0x18(%rbx)
  78:	00 
  79:	48 c7 43 e0 00 00 00 	movq   $0x0,-0x20(%rbx)
  80:	00 
  81:	48 39 df             	cmp    %rbx,%rdi
  84:	74 0a                	je     90 <_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_KN5Xbyak8JmpLabelEESaISB_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb1ELb0ELb0EEEED1Ev+0x90>
  86:	5b                   	pop    %rbx
  87:	5d                   	pop    %rbp
  88:	41 5c                	pop    %r12
  8a:	e9 00 00 00 00       	jmpq   8f <_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_KN5Xbyak8JmpLabelEESaISB_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb1ELb0ELb0EEEED1Ev+0x8f>
  8f:	90                   	nop
  90:	5b                   	pop    %rbx
  91:	5d                   	pop    %rbp
  92:	41 5c                	pop    %r12
  94:	c3                   	retq   

Disassembly of section .text._ZN3mcl2fp10strToArrayImEEmPbPT_mPKcmi:

0000000000000000 <_ZN3mcl2fp10strToArrayImEEmPbPT_mPKcmi>:
   0:	f3 0f 1e fa          	endbr64 
   4:	4d 85 c0             	test   %r8,%r8
   7:	0f 84 6b 08 00 00    	je     878 <_ZN3mcl2fp10strToArrayImEEmPbPT_mPKcmi+0x878>
   d:	44 89 c8             	mov    %r9d,%eax
  10:	41 54                	push   %r12
  12:	49 89 fa             	mov    %rdi,%r10
  15:	48 89 f7             	mov    %rsi,%rdi
  18:	55                   	push   %rbp
  19:	83 e0 1f             	and    $0x1f,%eax
  1c:	48 89 d6             	mov    %rdx,%rsi
  1f:	48 89 ca             	mov    %rcx,%rdx
  22:	53                   	push   %rbx
  23:	80 39 2d             	cmpb   $0x2d,(%rcx)
  26:	74 30                	je     58 <_ZN3mcl2fp10strToArrayImEEmPbPT_mPKcmi+0x58>
  28:	41 c6 02 00          	movb   $0x0,(%r10)
  2c:	80 39 30             	cmpb   $0x30,(%rcx)
  2f:	0f 84 f3 07 00 00    	je     828 <_ZN3mcl2fp10strToArrayImEEmPbPT_mPKcmi+0x828>
  35:	45 31 db             	xor    %r11d,%r11d
  38:	31 c9                	xor    %ecx,%ecx
  3a:	85 c0                	test   %eax,%eax
  3c:	0f 85 ce 09 00 00    	jne    a10 <_ZN3mcl2fp10strToArrayImEEmPbPT_mPKcmi+0xa10>
  42:	4c 89 c1             	mov    %r8,%rcx
  45:	5b                   	pop    %rbx
  46:	5d                   	pop    %rbp
  47:	4c 29 d9             	sub    %r11,%rcx
  4a:	41 5c                	pop    %r12
  4c:	e9 00 00 00 00       	jmpq   51 <_ZN3mcl2fp10strToArrayImEEmPbPT_mPKcmi+0x51>
  51:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  58:	49 83 f8 01          	cmp    $0x1,%r8
  5c:	0f 84 06 08 00 00    	je     868 <_ZN3mcl2fp10strToArrayImEEmPbPT_mPKcmi+0x868>
  62:	41 c6 02 01          	movb   $0x1,(%r10)
  66:	80 79 01 30          	cmpb   $0x30,0x1(%rcx)
  6a:	4c 8d 51 01          	lea    0x1(%rcx),%r10
  6e:	0f 84 ec 09 00 00    	je     a60 <_ZN3mcl2fp10strToArrayImEEmPbPT_mPKcmi+0xa60>
  74:	85 c0                	test   %eax,%eax
  76:	0f 84 a8 0a 00 00    	je     b24 <_ZN3mcl2fp10strToArrayImEEmPbPT_mPKcmi+0xb24>
  7c:	b9 01 00 00 00       	mov    $0x1,%ecx
  81:	83 f8 02             	cmp    $0x2,%eax
  84:	0f 84 06 08 00 00    	je     890 <_ZN3mcl2fp10strToArrayImEEmPbPT_mPKcmi+0x890>
  8a:	41 83 e1 1e          	and    $0x1e,%r9d
  8e:	0f 84 d4 07 00 00    	je     868 <_ZN3mcl2fp10strToArrayImEEmPbPT_mPKcmi+0x868>
  94:	83 f8 0a             	cmp    $0xa,%eax
  97:	0f 84 7c 0a 00 00    	je     b19 <_ZN3mcl2fp10strToArrayImEEmPbPT_mPKcmi+0xb19>
  9d:	83 f8 10             	cmp    $0x10,%eax
  a0:	0f 85 c2 07 00 00    	jne    868 <_ZN3mcl2fp10strToArrayImEEmPbPT_mPKcmi+0x868>
  a6:	49 29 c8             	sub    %rcx,%r8
  a9:	0f 84 b9 07 00 00    	je     868 <_ZN3mcl2fp10strToArrayImEEmPbPT_mPKcmi+0x868>
  af:	4d 89 c3             	mov    %r8,%r11
  b2:	4c 89 c3             	mov    %r8,%rbx
  b5:	45 31 c9             	xor    %r9d,%r9d
  b8:	49 c1 eb 04          	shr    $0x4,%r11
  bc:	83 e3 0f             	and    $0xf,%ebx
  bf:	41 0f 95 c1          	setne  %r9b
  c3:	4d 01 d9             	add    %r11,%r9
  c6:	4c 39 ce             	cmp    %r9,%rsi
  c9:	0f 82 99 07 00 00    	jb     868 <_ZN3mcl2fp10strToArrayImEEmPbPT_mPKcmi+0x868>
  cf:	4d 85 db             	test   %r11,%r11
  d2:	0f 84 0c 04 00 00    	je     4e4 <_ZN3mcl2fp10strToArrayImEEmPbPT_mPKcmi+0x4e4>
  d8:	49 8d 43 ff          	lea    -0x1(%r11),%rax
  dc:	48 89 fe             	mov    %rdi,%rsi
  df:	49 8d 6c 1a f0       	lea    -0x10(%r10,%rbx,1),%rbp
  e4:	48 c1 e0 04          	shl    $0x4,%rax
  e8:	48 01 d8             	add    %rbx,%rax
  eb:	4c 01 d0             	add    %r10,%rax
  ee:	66 90                	xchg   %ax,%ax
  f0:	0f b6 08             	movzbl (%rax),%ecx
  f3:	8d 51 d0             	lea    -0x30(%rcx),%edx
  f6:	83 fa 09             	cmp    $0x9,%edx
  f9:	76 25                	jbe    120 <_ZN3mcl2fp10strToArrayImEEmPbPT_mPKcmi+0x120>
  fb:	8d 51 9f             	lea    -0x61(%rcx),%edx
  fe:	83 fa 05             	cmp    $0x5,%edx
 101:	0f 86 49 08 00 00    	jbe    950 <_ZN3mcl2fp10strToArrayImEEmPbPT_mPKcmi+0x950>
 107:	8d 51 bf             	lea    -0x41(%rcx),%edx
 10a:	83 fa 05             	cmp    $0x5,%edx
 10d:	0f 87 55 07 00 00    	ja     868 <_ZN3mcl2fp10strToArrayImEEmPbPT_mPKcmi+0x868>
 113:	8d 51 c9             	lea    -0x37(%rcx),%edx
 116:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 11d:	00 00 00 
 120:	44 0f b6 60 01       	movzbl 0x1(%rax),%r12d
 125:	41 8d 4c 24 d0       	lea    -0x30(%r12),%ecx
 12a:	83 f9 09             	cmp    $0x9,%ecx
 12d:	76 21                	jbe    150 <_ZN3mcl2fp10strToArrayImEEmPbPT_mPKcmi+0x150>
 12f:	41 8d 4c 24 9f       	lea    -0x61(%r12),%ecx
 134:	83 f9 05             	cmp    $0x5,%ecx
 137:	0f 86 23 08 00 00    	jbe    960 <_ZN3mcl2fp10strToArrayImEEmPbPT_mPKcmi+0x960>
 13d:	41 8d 4c 24 bf       	lea    -0x41(%r12),%ecx
 142:	83 f9 05             	cmp    $0x5,%ecx
 145:	0f 87 1d 07 00 00    	ja     868 <_ZN3mcl2fp10strToArrayImEEmPbPT_mPKcmi+0x868>
 14b:	41 8d 4c 24 c9       	lea    -0x37(%r12),%ecx
 150:	44 0f b6 60 02       	movzbl 0x2(%rax),%r12d
 155:	48 c1 e2 04          	shl    $0x4,%rdx
 159:	48 01 ca             	add    %rcx,%rdx
 15c:	41 8d 4c 24 d0       	lea    -0x30(%r12),%ecx
 161:	83 f9 09             	cmp    $0x9,%ecx
 164:	76 2a                	jbe    190 <_ZN3mcl2fp10strToArrayImEEmPbPT_mPKcmi+0x190>
 166:	41 8d 4c 24 9f       	lea    -0x61(%r12),%ecx
 16b:	83 f9 05             	cmp    $0x5,%ecx
 16e:	0f 86 fc 07 00 00    	jbe    970 <_ZN3mcl2fp10strToArrayImEEmPbPT_mPKcmi+0x970>
 174:	41 8d 4c 24 bf       	lea    -0x41(%r12),%ecx
 179:	83 f9 05             	cmp    $0x5,%ecx
 17c:	0f 87 e6 06 00 00    	ja     868 <_ZN3mcl2fp10strToArrayImEEmPbPT_mPKcmi+0x868>
 182:	41 8d 4c 24 c9       	lea    -0x37(%r12),%ecx
 187:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
 18e:	00 00 
 190:	44 0f b6 60 03       	movzbl 0x3(%rax),%r12d
 195:	48 c1 e2 04          	shl    $0x4,%rdx
 199:	48 01 ca             	add    %rcx,%rdx
 19c:	41 8d 4c 24 d0       	lea    -0x30(%r12),%ecx
 1a1:	83 f9 09             	cmp    $0x9,%ecx
 1a4:	76 2a                	jbe    1d0 <_ZN3mcl2fp10strToArrayImEEmPbPT_mPKcmi+0x1d0>
 1a6:	41 8d 4c 24 9f       	lea    -0x61(%r12),%ecx
 1ab:	83 f9 05             	cmp    $0x5,%ecx
 1ae:	0f 86 cc 07 00 00    	jbe    980 <_ZN3mcl2fp10strToArrayImEEmPbPT_mPKcmi+0x980>
 1b4:	41 8d 4c 24 bf       	lea    -0x41(%r12),%ecx
 1b9:	83 f9 05             	cmp    $0x5,%ecx
 1bc:	0f 87 a6 06 00 00    	ja     868 <_ZN3mcl2fp10strToArrayImEEmPbPT_mPKcmi+0x868>
 1c2:	41 8d 4c 24 c9       	lea    -0x37(%r12),%ecx
 1c7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
 1ce:	00 00 
 1d0:	44 0f b6 60 04       	movzbl 0x4(%rax),%r12d
 1d5:	48 c1 e2 04          	shl    $0x4,%rdx
 1d9:	48 01 ca             	add    %rcx,%rdx
 1dc:	41 8d 4c 24 d0       	lea    -0x30(%r12),%ecx
 1e1:	83 f9 09             	cmp    $0x9,%ecx
 1e4:	76 2a                	jbe    210 <_ZN3mcl2fp10strToArrayImEEmPbPT_mPKcmi+0x210>
 1e6:	41 8d 4c 24 9f       	lea    -0x61(%r12),%ecx
 1eb:	83 f9 05             	cmp    $0x5,%ecx
 1ee:	0f 86 9c 07 00 00    	jbe    990 <_ZN3mcl2fp10strToArrayImEEmPbPT_mPKcmi+0x990>
 1f4:	41 8d 4c 24 bf       	lea    -0x41(%r12),%ecx
 1f9:	83 f9 05             	cmp    $0x5,%ecx
 1fc:	0f 87 66 06 00 00    	ja     868 <_ZN3mcl2fp10strToArrayImEEmPbPT_mPKcmi+0x868>
 202:	41 8d 4c 24 c9       	lea    -0x37(%r12),%ecx
 207:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
 20e:	00 00 
 210:	44 0f b6 60 05       	movzbl 0x5(%rax),%r12d
 215:	48 c1 e2 04          	shl    $0x4,%rdx
 219:	48 01 d1             	add    %rdx,%rcx
 21c:	41 8d 54 24 d0       	lea    -0x30(%r12),%edx
 221:	83 fa 09             	cmp    $0x9,%edx
 224:	76 2a                	jbe    250 <_ZN3mcl2fp10strToArrayImEEmPbPT_mPKcmi+0x250>
 226:	41 8d 54 24 9f       	lea    -0x61(%r12),%edx
 22b:	83 fa 05             	cmp    $0x5,%edx
 22e:	0f 86 6c 07 00 00    	jbe    9a0 <_ZN3mcl2fp10strToArrayImEEmPbPT_mPKcmi+0x9a0>
 234:	41 8d 54 24 bf       	lea    -0x41(%r12),%edx
 239:	83 fa 05             	cmp    $0x5,%edx
 23c:	0f 87 26 06 00 00    	ja     868 <_ZN3mcl2fp10strToArrayImEEmPbPT_mPKcmi+0x868>
 242:	41 8d 54 24 c9       	lea    -0x37(%r12),%edx
 247:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
 24e:	00 00 
 250:	44 0f b6 60 06       	movzbl 0x6(%rax),%r12d
 255:	48 c1 e1 04          	shl    $0x4,%rcx
 259:	48 01 d1             	add    %rdx,%rcx
 25c:	41 8d 54 24 d0       	lea    -0x30(%r12),%edx
 261:	83 fa 09             	cmp    $0x9,%edx
 264:	76 2a                	jbe    290 <_ZN3mcl2fp10strToArrayImEEmPbPT_mPKcmi+0x290>
 266:	41 8d 54 24 9f       	lea    -0x61(%r12),%edx
 26b:	83 fa 05             	cmp    $0x5,%edx
 26e:	0f 86 3c 07 00 00    	jbe    9b0 <_ZN3mcl2fp10strToArrayImEEmPbPT_mPKcmi+0x9b0>
 274:	41 8d 54 24 bf       	lea    -0x41(%r12),%edx
 279:	83 fa 05             	cmp    $0x5,%edx
 27c:	0f 87 e6 05 00 00    	ja     868 <_ZN3mcl2fp10strToArrayImEEmPbPT_mPKcmi+0x868>
 282:	41 8d 54 24 c9       	lea    -0x37(%r12),%edx
 287:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
 28e:	00 00 
 290:	44 0f b6 60 07       	movzbl 0x7(%rax),%r12d
 295:	48 c1 e1 04          	shl    $0x4,%rcx
 299:	48 01 d1             	add    %rdx,%rcx
 29c:	41 8d 54 24 d0       	lea    -0x30(%r12),%edx
 2a1:	83 fa 09             	cmp    $0x9,%edx
 2a4:	76 2a                	jbe    2d0 <_ZN3mcl2fp10strToArrayImEEmPbPT_mPKcmi+0x2d0>
 2a6:	41 8d 54 24 9f       	lea    -0x61(%r12),%edx
 2ab:	83 fa 05             	cmp    $0x5,%edx
 2ae:	0f 86 0c 07 00 00    	jbe    9c0 <_ZN3mcl2fp10strToArrayImEEmPbPT_mPKcmi+0x9c0>
 2b4:	41 8d 54 24 bf       	lea    -0x41(%r12),%edx
 2b9:	83 fa 05             	cmp    $0x5,%edx
 2bc:	0f 87 a6 05 00 00    	ja     868 <_ZN3mcl2fp10strToArrayImEEmPbPT_mPKcmi+0x868>
 2c2:	41 8d 54 24 c9       	lea    -0x37(%r12),%edx
 2c7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
 2ce:	00 00 
 2d0:	44 0f b6 60 08       	movzbl 0x8(%rax),%r12d
 2d5:	48 c1 e1 04          	shl    $0x4,%rcx
 2d9:	48 01 ca             	add    %rcx,%rdx
 2dc:	41 8d 4c 24 d0       	lea    -0x30(%r12),%ecx
 2e1:	83 f9 09             	cmp    $0x9,%ecx
 2e4:	76 2a                	jbe    310 <_ZN3mcl2fp10strToArrayImEEmPbPT_mPKcmi+0x310>
 2e6:	41 8d 4c 24 9f       	lea    -0x61(%r12),%ecx
 2eb:	83 f9 05             	cmp    $0x5,%ecx
 2ee:	0f 86 dc 06 00 00    	jbe    9d0 <_ZN3mcl2fp10strToArrayImEEmPbPT_mPKcmi+0x9d0>
 2f4:	41 8d 4c 24 bf       	lea    -0x41(%r12),%ecx
 2f9:	83 f9 05             	cmp    $0x5,%ecx
 2fc:	0f 87 66 05 00 00    	ja     868 <_ZN3mcl2fp10strToArrayImEEmPbPT_mPKcmi+0x868>
 302:	41 8d 4c 24 c9       	lea    -0x37(%r12),%ecx
 307:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
 30e:	00 00 
 310:	44 0f b6 60 09       	movzbl 0x9(%rax),%r12d
 315:	48 c1 e2 04          	shl    $0x4,%rdx
 319:	48 01 ca             	add    %rcx,%rdx
 31c:	41 8d 4c 24 d0       	lea    -0x30(%r12),%ecx
 321:	83 f9 09             	cmp    $0x9,%ecx
 324:	76 2a                	jbe    350 <_ZN3mcl2fp10strToArrayImEEmPbPT_mPKcmi+0x350>
 326:	41 8d 4c 24 9f       	lea    -0x61(%r12),%ecx
 32b:	83 f9 05             	cmp    $0x5,%ecx
 32e:	0f 86 ac 06 00 00    	jbe    9e0 <_ZN3mcl2fp10strToArrayImEEmPbPT_mPKcmi+0x9e0>
 334:	41 8d 4c 24 bf       	lea    -0x41(%r12),%ecx
 339:	83 f9 05             	cmp    $0x5,%ecx
 33c:	0f 87 26 05 00 00    	ja     868 <_ZN3mcl2fp10strToArrayImEEmPbPT_mPKcmi+0x868>
 342:	41 8d 4c 24 c9       	lea    -0x37(%r12),%ecx
 347:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
 34e:	00 00 
 350:	44 0f b6 60 0a       	movzbl 0xa(%rax),%r12d
 355:	48 c1 e2 04          	shl    $0x4,%rdx
 359:	48 01 ca             	add    %rcx,%rdx
 35c:	41 8d 4c 24 d0       	lea    -0x30(%r12),%ecx
 361:	83 f9 09             	cmp    $0x9,%ecx
 364:	76 2a                	jbe    390 <_ZN3mcl2fp10strToArrayImEEmPbPT_mPKcmi+0x390>
 366:	41 8d 4c 24 9f       	lea    -0x61(%r12),%ecx
 36b:	83 f9 05             	cmp    $0x5,%ecx
 36e:	0f 86 7c 06 00 00    	jbe    9f0 <_ZN3mcl2fp10strToArrayImEEmPbPT_mPKcmi+0x9f0>
 374:	41 8d 4c 24 bf       	lea    -0x41(%r12),%ecx
 379:	83 f9 05             	cmp    $0x5,%ecx
 37c:	0f 87 e6 04 00 00    	ja     868 <_ZN3mcl2fp10strToArrayImEEmPbPT_mPKcmi+0x868>
 382:	41 8d 4c 24 c9       	lea    -0x37(%r12),%ecx
 387:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
 38e:	00 00 
 390:	44 0f b6 60 0b       	movzbl 0xb(%rax),%r12d
 395:	48 c1 e2 04          	shl    $0x4,%rdx
 399:	48 01 d1             	add    %rdx,%rcx
 39c:	41 8d 54 24 d0       	lea    -0x30(%r12),%edx
 3a1:	83 fa 09             	cmp    $0x9,%edx
 3a4:	76 2a                	jbe    3d0 <_ZN3mcl2fp10strToArrayImEEmPbPT_mPKcmi+0x3d0>
 3a6:	41 8d 54 24 9f       	lea    -0x61(%r12),%edx
 3ab:	83 fa 05             	cmp    $0x5,%edx
 3ae:	0f 86 4c 06 00 00    	jbe    a00 <_ZN3mcl2fp10strToArrayImEEmPbPT_mPKcmi+0xa00>
 3b4:	41 8d 54 24 bf       	lea    -0x41(%r12),%edx
 3b9:	83 fa 05             	cmp    $0x5,%edx
 3bc:	0f 87 a6 04 00 00    	ja     868 <_ZN3mcl2fp10strToArrayImEEmPbPT_mPKcmi+0x868>
 3c2:	41 8d 54 24 c9       	lea    -0x37(%r12),%edx
 3c7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
 3ce:	00 00 
 3d0:	44 0f b6 60 0c       	movzbl 0xc(%rax),%r12d
 3d5:	48 c1 e1 04          	shl    $0x4,%rcx
 3d9:	48 01 d1             	add    %rdx,%rcx
 3dc:	41 8d 54 24 d0       	lea    -0x30(%r12),%edx
 3e1:	83 fa 09             	cmp    $0x9,%edx
 3e4:	76 2a                	jbe    410 <_ZN3mcl2fp10strToArrayImEEmPbPT_mPKcmi+0x410>
 3e6:	41 8d 54 24 9f       	lea    -0x61(%r12),%edx
 3eb:	83 fa 05             	cmp    $0x5,%edx
 3ee:	0f 86 2c 06 00 00    	jbe    a20 <_ZN3mcl2fp10strToArrayImEEmPbPT_mPKcmi+0xa20>
 3f4:	41 8d 54 24 bf       	lea    -0x41(%r12),%edx
 3f9:	83 fa 05             	cmp    $0x5,%edx
 3fc:	0f 87 66 04 00 00    	ja     868 <_ZN3mcl2fp10strToArrayImEEmPbPT_mPKcmi+0x868>
 402:	41 8d 54 24 c9       	lea    -0x37(%r12),%edx
 407:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
 40e:	00 00 
 410:	44 0f b6 60 0d       	movzbl 0xd(%rax),%r12d
 415:	48 c1 e1 04          	shl    $0x4,%rcx
 419:	48 01 d1             	add    %rdx,%rcx
 41c:	41 8d 54 24 d0       	lea    -0x30(%r12),%edx
 421:	83 fa 09             	cmp    $0x9,%edx
 424:	76 2a                	jbe    450 <_ZN3mcl2fp10strToArrayImEEmPbPT_mPKcmi+0x450>
 426:	41 8d 54 24 9f       	lea    -0x61(%r12),%edx
 42b:	83 fa 05             	cmp    $0x5,%edx
 42e:	0f 86 fc 05 00 00    	jbe    a30 <_ZN3mcl2fp10strToArrayImEEmPbPT_mPKcmi+0xa30>
 434:	41 8d 54 24 bf       	lea    -0x41(%r12),%edx
 439:	83 fa 05             	cmp    $0x5,%edx
 43c:	0f 87 26 04 00 00    	ja     868 <_ZN3mcl2fp10strToArrayImEEmPbPT_mPKcmi+0x868>
 442:	41 8d 54 24 c9       	lea    -0x37(%r12),%edx
 447:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
 44e:	00 00 
 450:	48 c1 e1 04          	shl    $0x4,%rcx
 454:	48 01 d1             	add    %rdx,%rcx
 457:	0f b6 50 0e          	movzbl 0xe(%rax),%edx
 45b:	44 8d 62 d0          	lea    -0x30(%rdx),%r12d
 45f:	41 83 fc 09          	cmp    $0x9,%r12d
 463:	76 23                	jbe    488 <_ZN3mcl2fp10strToArrayImEEmPbPT_mPKcmi+0x488>
 465:	44 8d 62 9f          	lea    -0x61(%rdx),%r12d
 469:	41 83 fc 05          	cmp    $0x5,%r12d
 46d:	0f 86 cd 05 00 00    	jbe    a40 <_ZN3mcl2fp10strToArrayImEEmPbPT_mPKcmi+0xa40>
 473:	44 8d 62 bf          	lea    -0x41(%rdx),%r12d
 477:	41 83 fc 05          	cmp    $0x5,%r12d
 47b:	0f 87 e7 03 00 00    	ja     868 <_ZN3mcl2fp10strToArrayImEEmPbPT_mPKcmi+0x868>
 481:	44 8d 62 c9          	lea    -0x37(%rdx),%r12d
 485:	0f 1f 00             	nopl   (%rax)
 488:	48 c1 e1 04          	shl    $0x4,%rcx
 48c:	48 89 ca             	mov    %rcx,%rdx
 48f:	44 89 e1             	mov    %r12d,%ecx
 492:	44 0f b6 60 0f       	movzbl 0xf(%rax),%r12d
 497:	48 01 d1             	add    %rdx,%rcx
 49a:	41 8d 54 24 d0       	lea    -0x30(%r12),%edx
 49f:	83 fa 09             	cmp    $0x9,%edx
 4a2:	76 24                	jbe    4c8 <_ZN3mcl2fp10strToArrayImEEmPbPT_mPKcmi+0x4c8>
 4a4:	41 8d 54 24 9f       	lea    -0x61(%r12),%edx
 4a9:	83 fa 05             	cmp    $0x5,%edx
 4ac:	0f 86 9e 05 00 00    	jbe    a50 <_ZN3mcl2fp10strToArrayImEEmPbPT_mPKcmi+0xa50>
 4b2:	41 8d 54 24 bf       	lea    -0x41(%r12),%edx
 4b7:	83 fa 05             	cmp    $0x5,%edx
 4ba:	0f 87 a8 03 00 00    	ja     868 <_ZN3mcl2fp10strToArrayImEEmPbPT_mPKcmi+0x868>
 4c0:	41 8d 54 24 c9       	lea    -0x37(%r12),%edx
 4c5:	0f 1f 00             	nopl   (%rax)
 4c8:	48 c1 e1 04          	shl    $0x4,%rcx
 4cc:	48 83 e8 10          	sub    $0x10,%rax
 4d0:	48 83 c6 08          	add    $0x8,%rsi
 4d4:	48 01 ca             	add    %rcx,%rdx
 4d7:	48 89 56 f8          	mov    %rdx,-0x8(%rsi)
 4db:	48 39 e8             	cmp    %rbp,%rax
 4de:	0f 85 0c fc ff ff    	jne    f0 <_ZN3mcl2fp10strToArrayImEEmPbPT_mPKcmi+0xf0>
 4e4:	48 85 db             	test   %rbx,%rbx
 4e7:	0f 84 7e 03 00 00    	je     86b <_ZN3mcl2fp10strToArrayImEEmPbPT_mPKcmi+0x86b>
 4ed:	41 0f b6 12          	movzbl (%r10),%edx
 4f1:	8d 42 d0             	lea    -0x30(%rdx),%eax
 4f4:	83 f8 09             	cmp    $0x9,%eax
 4f7:	76 1f                	jbe    518 <_ZN3mcl2fp10strToArrayImEEmPbPT_mPKcmi+0x518>
 4f9:	8d 42 9f             	lea    -0x61(%rdx),%eax
 4fc:	83 f8 05             	cmp    $0x5,%eax
 4ff:	0f 86 87 05 00 00    	jbe    a8c <_ZN3mcl2fp10strToArrayImEEmPbPT_mPKcmi+0xa8c>
 505:	8d 42 bf             	lea    -0x41(%rdx),%eax
 508:	83 f8 05             	cmp    $0x5,%eax
 50b:	0f 87 57 03 00 00    	ja     868 <_ZN3mcl2fp10strToArrayImEEmPbPT_mPKcmi+0x868>
 511:	8d 42 c9             	lea    -0x37(%rdx),%eax
 514:	0f 1f 40 00          	nopl   0x0(%rax)
 518:	41 83 e0 0e          	and    $0xe,%r8d
 51c:	0f 84 fc 02 00 00    	je     81e <_ZN3mcl2fp10strToArrayImEEmPbPT_mPKcmi+0x81e>
 522:	41 0f b6 4a 01       	movzbl 0x1(%r10),%ecx
 527:	8d 51 d0             	lea    -0x30(%rcx),%edx
 52a:	83 fa 09             	cmp    $0x9,%edx
 52d:	76 1b                	jbe    54a <_ZN3mcl2fp10strToArrayImEEmPbPT_mPKcmi+0x54a>
 52f:	8d 51 9f             	lea    -0x61(%rcx),%edx
 532:	83 fa 05             	cmp    $0x5,%edx
 535:	0f 86 62 05 00 00    	jbe    a9d <_ZN3mcl2fp10strToArrayImEEmPbPT_mPKcmi+0xa9d>
 53b:	8d 51 bf             	lea    -0x41(%rcx),%edx
 53e:	83 fa 05             	cmp    $0x5,%edx
 541:	0f 87 21 03 00 00    	ja     868 <_ZN3mcl2fp10strToArrayImEEmPbPT_mPKcmi+0x868>
 547:	8d 51 c9             	lea    -0x37(%rcx),%edx
 54a:	48 c1 e0 04          	shl    $0x4,%rax
 54e:	48 01 d0             	add    %rdx,%rax
 551:	48 83 fb 02          	cmp    $0x2,%rbx
 555:	0f 84 c3 02 00 00    	je     81e <_ZN3mcl2fp10strToArrayImEEmPbPT_mPKcmi+0x81e>
 55b:	41 0f b6 4a 02       	movzbl 0x2(%r10),%ecx
 560:	8d 51 d0             	lea    -0x30(%rcx),%edx
 563:	83 fa 09             	cmp    $0x9,%edx
 566:	76 1b                	jbe    583 <_ZN3mcl2fp10strToArrayImEEmPbPT_mPKcmi+0x583>
 568:	8d 51 9f             	lea    -0x61(%rcx),%edx
 56b:	83 fa 05             	cmp    $0x5,%edx
 56e:	0f 86 31 05 00 00    	jbe    aa5 <_ZN3mcl2fp10strToArrayImEEmPbPT_mPKcmi+0xaa5>
 574:	8d 51 bf             	lea    -0x41(%rcx),%edx
 577:	83 fa 05             	cmp    $0x5,%edx
 57a:	0f 87 e8 02 00 00    	ja     868 <_ZN3mcl2fp10strToArrayImEEmPbPT_mPKcmi+0x868>
 580:	8d 51 c9             	lea    -0x37(%rcx),%edx
 583:	48 c1 e0 04          	shl    $0x4,%rax
 587:	48 01 d0             	add    %rdx,%rax
 58a:	48 83 fb 03          	cmp    $0x3,%rbx
 58e:	0f 84 8a 02 00 00    	je     81e <_ZN3mcl2fp10strToArrayImEEmPbPT_mPKcmi+0x81e>
 594:	41 0f b6 4a 03       	movzbl 0x3(%r10),%ecx
 599:	8d 51 d0             	lea    -0x30(%rcx),%edx
 59c:	83 fa 09             	cmp    $0x9,%edx
 59f:	76 1b                	jbe    5bc <_ZN3mcl2fp10strToArrayImEEmPbPT_mPKcmi+0x5bc>
 5a1:	8d 51 9f             	lea    -0x61(%rcx),%edx
 5a4:	83 fa 05             	cmp    $0x5,%edx
 5a7:	0f 86 00 05 00 00    	jbe    aad <_ZN3mcl2fp10strToArrayImEEmPbPT_mPKcmi+0xaad>
 5ad:	8d 51 bf             	lea    -0x41(%rcx),%edx
 5b0:	83 fa 05             	cmp    $0x5,%edx
 5b3:	0f 87 af 02 00 00    	ja     868 <_ZN3mcl2fp10strToArrayImEEmPbPT_mPKcmi+0x868>
 5b9:	8d 51 c9             	lea    -0x37(%rcx),%edx
 5bc:	48 c1 e0 04          	shl    $0x4,%rax
 5c0:	48 01 d0             	add    %rdx,%rax
 5c3:	48 83 fb 04          	cmp    $0x4,%rbx
 5c7:	0f 84 51 02 00 00    	je     81e <_ZN3mcl2fp10strToArrayImEEmPbPT_mPKcmi+0x81e>
 5cd:	41 0f b6 4a 04       	movzbl 0x4(%r10),%ecx
 5d2:	8d 51 d0             	lea    -0x30(%rcx),%edx
 5d5:	83 fa 09             	cmp    $0x9,%edx
 5d8:	76 1b                	jbe    5f5 <_ZN3mcl2fp10strToArrayImEEmPbPT_mPKcmi+0x5f5>
 5da:	8d 51 9f             	lea    -0x61(%rcx),%edx
 5dd:	83 fa 05             	cmp    $0x5,%edx
 5e0:	0f 86 cf 04 00 00    	jbe    ab5 <_ZN3mcl2fp10strToArrayImEEmPbPT_mPKcmi+0xab5>
 5e6:	8d 51 bf             	lea    -0x41(%rcx),%edx
 5e9:	83 fa 05             	cmp    $0x5,%edx
 5ec:	0f 87 76 02 00 00    	ja     868 <_ZN3mcl2fp10strToArrayImEEmPbPT_mPKcmi+0x868>
 5f2:	8d 51 c9             	lea    -0x37(%rcx),%edx
 5f5:	48 c1 e0 04          	shl    $0x4,%rax
 5f9:	48 01 d0             	add    %rdx,%rax
 5fc:	48 83 fb 05          	cmp    $0x5,%rbx
 600:	0f 84 18 02 00 00    	je     81e <_ZN3mcl2fp10strToArrayImEEmPbPT_mPKcmi+0x81e>
 606:	41 0f b6 4a 05       	movzbl 0x5(%r10),%ecx
 60b:	8d 51 d0             	lea    -0x30(%rcx),%edx
 60e:	83 fa 09             	cmp    $0x9,%edx
 611:	76 1b                	jbe    62e <_ZN3mcl2fp10strToArrayImEEmPbPT_mPKcmi+0x62e>
 613:	8d 51 9f             	lea    -0x61(%rcx),%edx
 616:	83 fa 05             	cmp    $0x5,%edx
 619:	0f 86 9e 04 00 00    	jbe    abd <_ZN3mcl2fp10strToArrayImEEmPbPT_mPKcmi+0xabd>
 61f:	8d 51 bf             	lea    -0x41(%rcx),%edx
 622:	83 fa 05             	cmp    $0x5,%edx
 625:	0f 87 3d 02 00 00    	ja     868 <_ZN3mcl2fp10strToArrayImEEmPbPT_mPKcmi+0x868>
 62b:	8d 51 c9             	lea    -0x37(%rcx),%edx
 62e:	48 c1 e0 04          	shl    $0x4,%rax
 632:	48 01 d0             	add    %rdx,%rax
 635:	48 83 fb 06          	cmp    $0x6,%rbx
 639:	0f 84 df 01 00 00    	je     81e <_ZN3mcl2fp10strToArrayImEEmPbPT_mPKcmi+0x81e>
 63f:	41 0f b6 4a 06       	movzbl 0x6(%r10),%ecx
 644:	8d 51 d0             	lea    -0x30(%rcx),%edx
 647:	83 fa 09             	cmp    $0x9,%edx
 64a:	76 1b                	jbe    667 <_ZN3mcl2fp10strToArrayImEEmPbPT_mPKcmi+0x667>
 64c:	8d 51 9f             	lea    -0x61(%rcx),%edx
 64f:	83 fa 05             	cmp    $0x5,%edx
 652:	0f 86 6d 04 00 00    	jbe    ac5 <_ZN3mcl2fp10strToArrayImEEmPbPT_mPKcmi+0xac5>
 658:	8d 51 bf             	lea    -0x41(%rcx),%edx
 65b:	83 fa 05             	cmp    $0x5,%edx
 65e:	0f 87 04 02 00 00    	ja     868 <_ZN3mcl2fp10strToArrayImEEmPbPT_mPKcmi+0x868>
 664:	8d 51 c9             	lea    -0x37(%rcx),%edx
 667:	48 c1 e0 04          	shl    $0x4,%rax
 66b:	48 01 d0             	add    %rdx,%rax
 66e:	48 83 fb 07          	cmp    $0x7,%rbx
 672:	0f 84 a6 01 00 00    	je     81e <_ZN3mcl2fp10strToArrayImEEmPbPT_mPKcmi+0x81e>
 678:	41 0f b6 4a 07       	movzbl 0x7(%r10),%ecx
 67d:	8d 51 d0             	lea    -0x30(%rcx),%edx
 680:	83 fa 09             	cmp    $0x9,%edx
 683:	76 1b                	jbe    6a0 <_ZN3mcl2fp10strToArrayImEEmPbPT_mPKcmi+0x6a0>
 685:	8d 51 9f             	lea    -0x61(%rcx),%edx
 688:	83 fa 05             	cmp    $0x5,%edx
 68b:	0f 86 3c 04 00 00    	jbe    acd <_ZN3mcl2fp10strToArrayImEEmPbPT_mPKcmi+0xacd>
 691:	8d 51 bf             	lea    -0x41(%rcx),%edx
 694:	83 fa 05             	cmp    $0x5,%edx
 697:	0f 87 cb 01 00 00    	ja     868 <_ZN3mcl2fp10strToArrayImEEmPbPT_mPKcmi+0x868>
 69d:	8d 51 c9             	lea    -0x37(%rcx),%edx
 6a0:	48 c1 e0 04          	shl    $0x4,%rax
 6a4:	48 01 d0             	add    %rdx,%rax
 6a7:	48 83 fb 08          	cmp    $0x8,%rbx
 6ab:	0f 84 6d 01 00 00    	je     81e <_ZN3mcl2fp10strToArrayImEEmPbPT_mPKcmi+0x81e>
 6b1:	41 0f b6 4a 08       	movzbl 0x8(%r10),%ecx
 6b6:	8d 51 d0             	lea    -0x30(%rcx),%edx
 6b9:	83 fa 09             	cmp    $0x9,%edx
 6bc:	76 1b                	jbe    6d9 <_ZN3mcl2fp10strToArrayImEEmPbPT_mPKcmi+0x6d9>
 6be:	8d 51 9f             	lea    -0x61(%rcx),%edx
 6c1:	83 fa 05             	cmp    $0x5,%edx
 6c4:	0f 86 0b 04 00 00    	jbe    ad5 <_ZN3mcl2fp10strToArrayImEEmPbPT_mPKcmi+0xad5>
 6ca:	8d 51 bf             	lea    -0x41(%rcx),%edx
 6cd:	83 fa 05             	cmp    $0x5,%edx
 6d0:	0f 87 92 01 00 00    	ja     868 <_ZN3mcl2fp10strToArrayImEEmPbPT_mPKcmi+0x868>
 6d6:	8d 51 c9             	lea    -0x37(%rcx),%edx
 6d9:	48 c1 e0 04          	shl    $0x4,%rax
 6dd:	48 01 d0             	add    %rdx,%rax
 6e0:	48 83 fb 09          	cmp    $0x9,%rbx
 6e4:	0f 84 34 01 00 00    	je     81e <_ZN3mcl2fp10strToArrayImEEmPbPT_mPKcmi+0x81e>
 6ea:	41 0f b6 4a 09       	movzbl 0x9(%r10),%ecx
 6ef:	8d 51 d0             	lea    -0x30(%rcx),%edx
 6f2:	83 fa 09             	cmp    $0x9,%edx
 6f5:	76 1b                	jbe    712 <_ZN3mcl2fp10strToArrayImEEmPbPT_mPKcmi+0x712>
 6f7:	8d 51 9f             	lea    -0x61(%rcx),%edx
 6fa:	83 fa 05             	cmp    $0x5,%edx
 6fd:	0f 86 da 03 00 00    	jbe    add <_ZN3mcl2fp10strToArrayImEEmPbPT_mPKcmi+0xadd>
 703:	8d 51 bf             	lea    -0x41(%rcx),%edx
 706:	83 fa 05             	cmp    $0x5,%edx
 709:	0f 87 59 01 00 00    	ja     868 <_ZN3mcl2fp10strToArrayImEEmPbPT_mPKcmi+0x868>
 70f:	8d 51 c9             	lea    -0x37(%rcx),%edx
 712:	48 c1 e0 04          	shl    $0x4,%rax
 716:	48 01 d0             	add    %rdx,%rax
 719:	48 83 fb 0a          	cmp    $0xa,%rbx
 71d:	0f 84 fb 00 00 00    	je     81e <_ZN3mcl2fp10strToArrayImEEmPbPT_mPKcmi+0x81e>
 723:	41 0f b6 4a 0a       	movzbl 0xa(%r10),%ecx
 728:	8d 51 d0             	lea    -0x30(%rcx),%edx
 72b:	83 fa 09             	cmp    $0x9,%edx
 72e:	76 1b                	jbe    74b <_ZN3mcl2fp10strToArrayImEEmPbPT_mPKcmi+0x74b>
 730:	8d 51 9f             	lea    -0x61(%rcx),%edx
 733:	83 fa 05             	cmp    $0x5,%edx
 736:	0f 86 a9 03 00 00    	jbe    ae5 <_ZN3mcl2fp10strToArrayImEEmPbPT_mPKcmi+0xae5>
 73c:	8d 51 bf             	lea    -0x41(%rcx),%edx
 73f:	83 fa 05             	cmp    $0x5,%edx
 742:	0f 87 20 01 00 00    	ja     868 <_ZN3mcl2fp10strToArrayImEEmPbPT_mPKcmi+0x868>
 748:	8d 51 c9             	lea    -0x37(%rcx),%edx
 74b:	48 c1 e0 04          	shl    $0x4,%rax
 74f:	48 01 d0             	add    %rdx,%rax
 752:	48 83 fb 0b          	cmp    $0xb,%rbx
 756:	0f 84 c2 00 00 00    	je     81e <_ZN3mcl2fp10strToArrayImEEmPbPT_mPKcmi+0x81e>
 75c:	41 0f b6 4a 0b       	movzbl 0xb(%r10),%ecx
 761:	8d 51 d0             	lea    -0x30(%rcx),%edx
 764:	83 fa 09             	cmp    $0x9,%edx
 767:	76 1b                	jbe    784 <_ZN3mcl2fp10strToArrayImEEmPbPT_mPKcmi+0x784>
 769:	8d 51 9f             	lea    -0x61(%rcx),%edx
 76c:	83 fa 05             	cmp    $0x5,%edx
 76f:	0f 86 78 03 00 00    	jbe    aed <_ZN3mcl2fp10strToArrayImEEmPbPT_mPKcmi+0xaed>
 775:	8d 51 bf             	lea    -0x41(%rcx),%edx
 778:	83 fa 05             	cmp    $0x5,%edx
 77b:	0f 87 e7 00 00 00    	ja     868 <_ZN3mcl2fp10strToArrayImEEmPbPT_mPKcmi+0x868>
 781:	8d 51 c9             	lea    -0x37(%rcx),%edx
 784:	48 c1 e0 04          	shl    $0x4,%rax
 788:	48 01 d0             	add    %rdx,%rax
 78b:	48 83 fb 0c          	cmp    $0xc,%rbx
 78f:	0f 84 89 00 00 00    	je     81e <_ZN3mcl2fp10strToArrayImEEmPbPT_mPKcmi+0x81e>
 795:	41 0f b6 4a 0c       	movzbl 0xc(%r10),%ecx
 79a:	8d 51 d0             	lea    -0x30(%rcx),%edx
 79d:	83 fa 09             	cmp    $0x9,%edx
 7a0:	76 1b                	jbe    7bd <_ZN3mcl2fp10strToArrayImEEmPbPT_mPKcmi+0x7bd>
 7a2:	8d 51 9f             	lea    -0x61(%rcx),%edx
 7a5:	83 fa 05             	cmp    $0x5,%edx
 7a8:	0f 86 47 03 00 00    	jbe    af5 <_ZN3mcl2fp10strToArrayImEEmPbPT_mPKcmi+0xaf5>
 7ae:	8d 51 bf             	lea    -0x41(%rcx),%edx
 7b1:	83 fa 05             	cmp    $0x5,%edx
 7b4:	0f 87 ae 00 00 00    	ja     868 <_ZN3mcl2fp10strToArrayImEEmPbPT_mPKcmi+0x868>
 7ba:	8d 51 c9             	lea    -0x37(%rcx),%edx
 7bd:	48 c1 e0 04          	shl    $0x4,%rax
 7c1:	48 01 d0             	add    %rdx,%rax
 7c4:	48 83 fb 0d          	cmp    $0xd,%rbx
 7c8:	74 54                	je     81e <_ZN3mcl2fp10strToArrayImEEmPbPT_mPKcmi+0x81e>
 7ca:	41 0f b6 4a 0d       	movzbl 0xd(%r10),%ecx
 7cf:	8d 51 d0             	lea    -0x30(%rcx),%edx
 7d2:	83 fa 09             	cmp    $0x9,%edx
 7d5:	76 17                	jbe    7ee <_ZN3mcl2fp10strToArrayImEEmPbPT_mPKcmi+0x7ee>
 7d7:	8d 51 9f             	lea    -0x61(%rcx),%edx
 7da:	83 fa 05             	cmp    $0x5,%edx
 7dd:	0f 86 1a 03 00 00    	jbe    afd <_ZN3mcl2fp10strToArrayImEEmPbPT_mPKcmi+0xafd>
 7e3:	8d 51 bf             	lea    -0x41(%rcx),%edx
 7e6:	83 fa 05             	cmp    $0x5,%edx
 7e9:	77 7d                	ja     868 <_ZN3mcl2fp10strToArrayImEEmPbPT_mPKcmi+0x868>
 7eb:	8d 51 c9             	lea    -0x37(%rcx),%edx
 7ee:	48 c1 e0 04          	shl    $0x4,%rax
 7f2:	48 01 d0             	add    %rdx,%rax
 7f5:	48 83 fb 0e          	cmp    $0xe,%rbx
 7f9:	74 23                	je     81e <_ZN3mcl2fp10strToArrayImEEmPbPT_mPKcmi+0x81e>
 7fb:	41 0f b6 4a 0e       	movzbl 0xe(%r10),%ecx
 800:	8d 51 d0             	lea    -0x30(%rcx),%edx
 803:	83 fa 09             	cmp    $0x9,%edx
 806:	76 0f                	jbe    817 <_ZN3mcl2fp10strToArrayImEEmPbPT_mPKcmi+0x817>
 808:	8d 51 9f             	lea    -0x61(%rcx),%edx
 80b:	83 fa 05             	cmp    $0x5,%edx
 80e:	0f 87 f1 02 00 00    	ja     b05 <_ZN3mcl2fp10strToArrayImEEmPbPT_mPKcmi+0xb05>
 814:	8d 51 a9             	lea    -0x57(%rcx),%edx
 817:	48 c1 e0 04          	shl    $0x4,%rax
 81b:	48 01 d0             	add    %rdx,%rax
 81e:	4a 89 04 df          	mov    %rax,(%rdi,%r11,8)
 822:	eb 47                	jmp    86b <_ZN3mcl2fp10strToArrayImEEmPbPT_mPKcmi+0x86b>
 824:	0f 1f 40 00          	nopl   0x0(%rax)
 828:	49 83 f8 01          	cmp    $0x1,%r8
 82c:	0f 86 03 f8 ff ff    	jbe    35 <_ZN3mcl2fp10strToArrayImEEmPbPT_mPKcmi+0x35>
 832:	49 89 ca             	mov    %rcx,%r10
 835:	45 31 db             	xor    %r11d,%r11d
 838:	b9 02 00 00 00       	mov    $0x2,%ecx
 83d:	41 0f b6 5a 01       	movzbl 0x1(%r10),%ebx
 842:	80 fb 78             	cmp    $0x78,%bl
 845:	0f 84 25 02 00 00    	je     a70 <_ZN3mcl2fp10strToArrayImEEmPbPT_mPKcmi+0xa70>
 84b:	80 fb 62             	cmp    $0x62,%bl
 84e:	74 30                	je     880 <_ZN3mcl2fp10strToArrayImEEmPbPT_mPKcmi+0x880>
 850:	4c 89 d2             	mov    %r10,%rdx
 853:	85 c0                	test   %eax,%eax
 855:	0f 84 e7 f7 ff ff    	je     42 <_ZN3mcl2fp10strToArrayImEEmPbPT_mPKcmi+0x42>
 85b:	4d 39 d8             	cmp    %r11,%r8
 85e:	0f 85 a6 01 00 00    	jne    a0a <_ZN3mcl2fp10strToArrayImEEmPbPT_mPKcmi+0xa0a>
 864:	0f 1f 40 00          	nopl   0x0(%rax)
 868:	45 31 c9             	xor    %r9d,%r9d
 86b:	5b                   	pop    %rbx
 86c:	4c 89 c8             	mov    %r9,%rax
 86f:	5d                   	pop    %rbp
 870:	41 5c                	pop    %r12
 872:	c3                   	retq   
 873:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
 878:	45 31 c9             	xor    %r9d,%r9d
 87b:	4c 89 c8             	mov    %r9,%rax
 87e:	c3                   	retq   
 87f:	90                   	nop
 880:	41 f6 c1 1d          	test   $0x1d,%r9b
 884:	75 d5                	jne    85b <_ZN3mcl2fp10strToArrayImEEmPbPT_mPKcmi+0x85b>
 886:	4c 8d 14 0a          	lea    (%rdx,%rcx,1),%r10
 88a:	49 39 c8             	cmp    %rcx,%r8
 88d:	74 d9                	je     868 <_ZN3mcl2fp10strToArrayImEEmPbPT_mPKcmi+0x868>
 88f:	90                   	nop
 890:	49 29 c8             	sub    %rcx,%r8
 893:	74 d3                	je     868 <_ZN3mcl2fp10strToArrayImEEmPbPT_mPKcmi+0x868>
 895:	4c 89 c5             	mov    %r8,%rbp
 898:	45 31 c9             	xor    %r9d,%r9d
 89b:	48 c1 ed 06          	shr    $0x6,%rbp
 89f:	41 83 e0 3f          	and    $0x3f,%r8d
 8a3:	41 0f 95 c1          	setne  %r9b
 8a7:	49 01 e9             	add    %rbp,%r9
 8aa:	4c 39 ce             	cmp    %r9,%rsi
 8ad:	72 b9                	jb     868 <_ZN3mcl2fp10strToArrayImEEmPbPT_mPKcmi+0x868>
 8af:	48 85 ed             	test   %rbp,%rbp
 8b2:	74 52                	je     906 <_ZN3mcl2fp10strToArrayImEEmPbPT_mPKcmi+0x906>
 8b4:	48 89 ee             	mov    %rbp,%rsi
 8b7:	4f 8d 24 02          	lea    (%r10,%r8,1),%r12
 8bb:	48 89 fb             	mov    %rdi,%rbx
 8be:	48 c1 e6 06          	shl    $0x6,%rsi
 8c2:	4c 01 e6             	add    %r12,%rsi
 8c5:	4c 8d 5e c0          	lea    -0x40(%rsi),%r11
 8c9:	31 d2                	xor    %edx,%edx
 8cb:	4c 89 d8             	mov    %r11,%rax
 8ce:	eb 13                	jmp    8e3 <_ZN3mcl2fp10strToArrayImEEmPbPT_mPKcmi+0x8e3>
 8d0:	80 f9 31             	cmp    $0x31,%cl
 8d3:	75 93                	jne    868 <_ZN3mcl2fp10strToArrayImEEmPbPT_mPKcmi+0x868>
 8d5:	48 83 c0 01          	add    $0x1,%rax
 8d9:	48 8d 54 12 01       	lea    0x1(%rdx,%rdx,1),%rdx
 8de:	48 39 f0             	cmp    %rsi,%rax
 8e1:	74 14                	je     8f7 <_ZN3mcl2fp10strToArrayImEEmPbPT_mPKcmi+0x8f7>
 8e3:	0f b6 08             	movzbl (%rax),%ecx
 8e6:	80 f9 30             	cmp    $0x30,%cl
 8e9:	75 e5                	jne    8d0 <_ZN3mcl2fp10strToArrayImEEmPbPT_mPKcmi+0x8d0>
 8eb:	48 83 c0 01          	add    $0x1,%rax
 8ef:	48 01 d2             	add    %rdx,%rdx
 8f2:	48 39 f0             	cmp    %rsi,%rax
 8f5:	75 ec                	jne    8e3 <_ZN3mcl2fp10strToArrayImEEmPbPT_mPKcmi+0x8e3>
 8f7:	48 89 13             	mov    %rdx,(%rbx)
 8fa:	4c 89 de             	mov    %r11,%rsi
 8fd:	48 83 c3 08          	add    $0x8,%rbx
 901:	4d 39 dc             	cmp    %r11,%r12
 904:	75 bf                	jne    8c5 <_ZN3mcl2fp10strToArrayImEEmPbPT_mPKcmi+0x8c5>
 906:	4d 85 c0             	test   %r8,%r8
 909:	0f 84 5c ff ff ff    	je     86b <_ZN3mcl2fp10strToArrayImEEmPbPT_mPKcmi+0x86b>
 90f:	4d 01 d0             	add    %r10,%r8
 912:	31 d2                	xor    %edx,%edx
 914:	eb 24                	jmp    93a <_ZN3mcl2fp10strToArrayImEEmPbPT_mPKcmi+0x93a>
 916:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 91d:	00 00 00 
 920:	3c 31                	cmp    $0x31,%al
 922:	0f 85 40 ff ff ff    	jne    868 <_ZN3mcl2fp10strToArrayImEEmPbPT_mPKcmi+0x868>
 928:	48 8d 54 12 01       	lea    0x1(%rdx,%rdx,1),%rdx
 92d:	49 83 c2 01          	add    $0x1,%r10
 931:	4d 39 c2             	cmp    %r8,%r10
 934:	0f 84 5a 01 00 00    	je     a94 <_ZN3mcl2fp10strToArrayImEEmPbPT_mPKcmi+0xa94>
 93a:	41 0f b6 02          	movzbl (%r10),%eax
 93e:	3c 30                	cmp    $0x30,%al
 940:	75 de                	jne    920 <_ZN3mcl2fp10strToArrayImEEmPbPT_mPKcmi+0x920>
 942:	48 01 d2             	add    %rdx,%rdx
 945:	eb e6                	jmp    92d <_ZN3mcl2fp10strToArrayImEEmPbPT_mPKcmi+0x92d>
 947:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
 94e:	00 00 
 950:	8d 51 a9             	lea    -0x57(%rcx),%edx
 953:	e9 c8 f7 ff ff       	jmpq   120 <_ZN3mcl2fp10strToArrayImEEmPbPT_mPKcmi+0x120>
 958:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
 95f:	00 
 960:	41 8d 4c 24 a9       	lea    -0x57(%r12),%ecx
 965:	e9 e6 f7 ff ff       	jmpq   150 <_ZN3mcl2fp10strToArrayImEEmPbPT_mPKcmi+0x150>
 96a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
 970:	41 8d 4c 24 a9       	lea    -0x57(%r12),%ecx
 975:	e9 16 f8 ff ff       	jmpq   190 <_ZN3mcl2fp10strToArrayImEEmPbPT_mPKcmi+0x190>
 97a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
 980:	41 8d 4c 24 a9       	lea    -0x57(%r12),%ecx
 985:	e9 46 f8 ff ff       	jmpq   1d0 <_ZN3mcl2fp10strToArrayImEEmPbPT_mPKcmi+0x1d0>
 98a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
 990:	41 8d 4c 24 a9       	lea    -0x57(%r12),%ecx
 995:	e9 76 f8 ff ff       	jmpq   210 <_ZN3mcl2fp10strToArrayImEEmPbPT_mPKcmi+0x210>
 99a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
 9a0:	41 8d 54 24 a9       	lea    -0x57(%r12),%edx
 9a5:	e9 a6 f8 ff ff       	jmpq   250 <_ZN3mcl2fp10strToArrayImEEmPbPT_mPKcmi+0x250>
 9aa:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
 9b0:	41 8d 54 24 a9       	lea    -0x57(%r12),%edx
 9b5:	e9 d6 f8 ff ff       	jmpq   290 <_ZN3mcl2fp10strToArrayImEEmPbPT_mPKcmi+0x290>
 9ba:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
 9c0:	41 8d 54 24 a9       	lea    -0x57(%r12),%edx
 9c5:	e9 06 f9 ff ff       	jmpq   2d0 <_ZN3mcl2fp10strToArrayImEEmPbPT_mPKcmi+0x2d0>
 9ca:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
 9d0:	41 8d 4c 24 a9       	lea    -0x57(%r12),%ecx
 9d5:	e9 36 f9 ff ff       	jmpq   310 <_ZN3mcl2fp10strToArrayImEEmPbPT_mPKcmi+0x310>
 9da:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
 9e0:	41 8d 4c 24 a9       	lea    -0x57(%r12),%ecx
 9e5:	e9 66 f9 ff ff       	jmpq   350 <_ZN3mcl2fp10strToArrayImEEmPbPT_mPKcmi+0x350>
 9ea:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
 9f0:	41 8d 4c 24 a9       	lea    -0x57(%r12),%ecx
 9f5:	e9 96 f9 ff ff       	jmpq   390 <_ZN3mcl2fp10strToArrayImEEmPbPT_mPKcmi+0x390>
 9fa:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
 a00:	41 8d 54 24 a9       	lea    -0x57(%r12),%edx
 a05:	e9 c6 f9 ff ff       	jmpq   3d0 <_ZN3mcl2fp10strToArrayImEEmPbPT_mPKcmi+0x3d0>
 a0a:	4c 89 d9             	mov    %r11,%rcx
 a0d:	4c 89 d2             	mov    %r10,%rdx
 a10:	49 89 d2             	mov    %rdx,%r10
 a13:	e9 69 f6 ff ff       	jmpq   81 <_ZN3mcl2fp10strToArrayImEEmPbPT_mPKcmi+0x81>
 a18:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
 a1f:	00 
 a20:	41 8d 54 24 a9       	lea    -0x57(%r12),%edx
 a25:	e9 e6 f9 ff ff       	jmpq   410 <_ZN3mcl2fp10strToArrayImEEmPbPT_mPKcmi+0x410>
 a2a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
 a30:	41 8d 54 24 a9       	lea    -0x57(%r12),%edx
 a35:	e9 16 fa ff ff       	jmpq   450 <_ZN3mcl2fp10strToArrayImEEmPbPT_mPKcmi+0x450>
 a3a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
 a40:	44 8d 62 a9          	lea    -0x57(%rdx),%r12d
 a44:	e9 3f fa ff ff       	jmpq   488 <_ZN3mcl2fp10strToArrayImEEmPbPT_mPKcmi+0x488>
 a49:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
 a50:	41 8d 54 24 a9       	lea    -0x57(%r12),%edx
 a55:	e9 6e fa ff ff       	jmpq   4c8 <_ZN3mcl2fp10strToArrayImEEmPbPT_mPKcmi+0x4c8>
 a5a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
 a60:	b9 03 00 00 00       	mov    $0x3,%ecx
 a65:	41 bb 01 00 00 00    	mov    $0x1,%r11d
 a6b:	e9 cd fd ff ff       	jmpq   83d <_ZN3mcl2fp10strToArrayImEEmPbPT_mPKcmi+0x83d>
 a70:	41 83 e1 0f          	and    $0xf,%r9d
 a74:	0f 85 ee fd ff ff    	jne    868 <_ZN3mcl2fp10strToArrayImEEmPbPT_mPKcmi+0x868>
 a7a:	4c 8d 14 0a          	lea    (%rdx,%rcx,1),%r10
 a7e:	49 39 c8             	cmp    %rcx,%r8
 a81:	0f 85 1f f6 ff ff    	jne    a6 <_ZN3mcl2fp10strToArrayImEEmPbPT_mPKcmi+0xa6>
 a87:	e9 dc fd ff ff       	jmpq   868 <_ZN3mcl2fp10strToArrayImEEmPbPT_mPKcmi+0x868>
 a8c:	8d 42 a9             	lea    -0x57(%rdx),%eax
 a8f:	e9 84 fa ff ff       	jmpq   518 <_ZN3mcl2fp10strToArrayImEEmPbPT_mPKcmi+0x518>
 a94:	48 89 14 ef          	mov    %rdx,(%rdi,%rbp,8)
 a98:	e9 ce fd ff ff       	jmpq   86b <_ZN3mcl2fp10strToArrayImEEmPbPT_mPKcmi+0x86b>
 a9d:	8d 51 a9             	lea    -0x57(%rcx),%edx
 aa0:	e9 a5 fa ff ff       	jmpq   54a <_ZN3mcl2fp10strToArrayImEEmPbPT_mPKcmi+0x54a>
 aa5:	8d 51 a9             	lea    -0x57(%rcx),%edx
 aa8:	e9 d6 fa ff ff       	jmpq   583 <_ZN3mcl2fp10strToArrayImEEmPbPT_mPKcmi+0x583>
 aad:	8d 51 a9             	lea    -0x57(%rcx),%edx
 ab0:	e9 07 fb ff ff       	jmpq   5bc <_ZN3mcl2fp10strToArrayImEEmPbPT_mPKcmi+0x5bc>
 ab5:	8d 51 a9             	lea    -0x57(%rcx),%edx
 ab8:	e9 38 fb ff ff       	jmpq   5f5 <_ZN3mcl2fp10strToArrayImEEmPbPT_mPKcmi+0x5f5>
 abd:	8d 51 a9             	lea    -0x57(%rcx),%edx
 ac0:	e9 69 fb ff ff       	jmpq   62e <_ZN3mcl2fp10strToArrayImEEmPbPT_mPKcmi+0x62e>
 ac5:	8d 51 a9             	lea    -0x57(%rcx),%edx
 ac8:	e9 9a fb ff ff       	jmpq   667 <_ZN3mcl2fp10strToArrayImEEmPbPT_mPKcmi+0x667>
 acd:	8d 51 a9             	lea    -0x57(%rcx),%edx
 ad0:	e9 cb fb ff ff       	jmpq   6a0 <_ZN3mcl2fp10strToArrayImEEmPbPT_mPKcmi+0x6a0>
 ad5:	8d 51 a9             	lea    -0x57(%rcx),%edx
 ad8:	e9 fc fb ff ff       	jmpq   6d9 <_ZN3mcl2fp10strToArrayImEEmPbPT_mPKcmi+0x6d9>
 add:	8d 51 a9             	lea    -0x57(%rcx),%edx
 ae0:	e9 2d fc ff ff       	jmpq   712 <_ZN3mcl2fp10strToArrayImEEmPbPT_mPKcmi+0x712>
 ae5:	8d 51 a9             	lea    -0x57(%rcx),%edx
 ae8:	e9 5e fc ff ff       	jmpq   74b <_ZN3mcl2fp10strToArrayImEEmPbPT_mPKcmi+0x74b>
 aed:	8d 51 a9             	lea    -0x57(%rcx),%edx
 af0:	e9 8f fc ff ff       	jmpq   784 <_ZN3mcl2fp10strToArrayImEEmPbPT_mPKcmi+0x784>
 af5:	8d 51 a9             	lea    -0x57(%rcx),%edx
 af8:	e9 c0 fc ff ff       	jmpq   7bd <_ZN3mcl2fp10strToArrayImEEmPbPT_mPKcmi+0x7bd>
 afd:	8d 51 a9             	lea    -0x57(%rcx),%edx
 b00:	e9 e9 fc ff ff       	jmpq   7ee <_ZN3mcl2fp10strToArrayImEEmPbPT_mPKcmi+0x7ee>
 b05:	8d 51 bf             	lea    -0x41(%rcx),%edx
 b08:	83 fa 05             	cmp    $0x5,%edx
 b0b:	0f 87 57 fd ff ff    	ja     868 <_ZN3mcl2fp10strToArrayImEEmPbPT_mPKcmi+0x868>
 b11:	8d 51 c9             	lea    -0x37(%rcx),%edx
 b14:	e9 fe fc ff ff       	jmpq   817 <_ZN3mcl2fp10strToArrayImEEmPbPT_mPKcmi+0x817>
 b19:	4c 89 d2             	mov    %r10,%rdx
 b1c:	49 89 cb             	mov    %rcx,%r11
 b1f:	e9 1e f5 ff ff       	jmpq   42 <_ZN3mcl2fp10strToArrayImEEmPbPT_mPKcmi+0x42>
 b24:	4c 89 d2             	mov    %r10,%rdx
 b27:	41 bb 01 00 00 00    	mov    $0x1,%r11d
 b2d:	e9 10 f5 ff ff       	jmpq   42 <_ZN3mcl2fp10strToArrayImEEmPbPT_mPKcmi+0x42>

Disassembly of section .text._ZNSt7__cxx1110_List_baseIN5Xbyak12LabelManager11SlabelStateESaIS3_EE8_M_clearEv:

0000000000000000 <_ZNSt7__cxx1110_List_baseIN5Xbyak12LabelManager11SlabelStateESaIS3_EE8_M_clearEv>:
   0:	f3 0f 1e fa          	endbr64 
   4:	41 56                	push   %r14
   6:	41 55                	push   %r13
   8:	41 54                	push   %r12
   a:	55                   	push   %rbp
   b:	53                   	push   %rbx
   c:	48 8b 2f             	mov    (%rdi),%rbp
   f:	48 39 fd             	cmp    %rdi,%rbp
  12:	0f 84 2d 01 00 00    	je     145 <_ZNSt7__cxx1110_List_baseIN5Xbyak12LabelManager11SlabelStateESaIS3_EE8_M_clearEv+0x145>
  18:	49 89 fe             	mov    %rdi,%r14
  1b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  20:	4c 8b 65 58          	mov    0x58(%rbp),%r12
  24:	4c 8b 6d 00          	mov    0x0(%rbp),%r13
  28:	4d 85 e4             	test   %r12,%r12
  2b:	75 18                	jne    45 <_ZNSt7__cxx1110_List_baseIN5Xbyak12LabelManager11SlabelStateESaIS3_EE8_M_clearEv+0x45>
  2d:	eb 36                	jmp    65 <_ZNSt7__cxx1110_List_baseIN5Xbyak12LabelManager11SlabelStateESaIS3_EE8_M_clearEv+0x65>
  2f:	90                   	nop
  30:	e8 00 00 00 00       	callq  35 <_ZNSt7__cxx1110_List_baseIN5Xbyak12LabelManager11SlabelStateESaIS3_EE8_M_clearEv+0x35>
  35:	4c 89 e7             	mov    %r12,%rdi
  38:	e8 00 00 00 00       	callq  3d <_ZNSt7__cxx1110_List_baseIN5Xbyak12LabelManager11SlabelStateESaIS3_EE8_M_clearEv+0x3d>
  3d:	48 85 db             	test   %rbx,%rbx
  40:	74 23                	je     65 <_ZNSt7__cxx1110_List_baseIN5Xbyak12LabelManager11SlabelStateESaIS3_EE8_M_clearEv+0x65>
  42:	49 89 dc             	mov    %rbx,%r12
  45:	49 8b 7c 24 08       	mov    0x8(%r12),%rdi
  4a:	49 8d 44 24 18       	lea    0x18(%r12),%rax
  4f:	49 8b 1c 24          	mov    (%r12),%rbx
  53:	48 39 c7             	cmp    %rax,%rdi
  56:	75 d8                	jne    30 <_ZNSt7__cxx1110_List_baseIN5Xbyak12LabelManager11SlabelStateESaIS3_EE8_M_clearEv+0x30>
  58:	4c 89 e7             	mov    %r12,%rdi
  5b:	e8 00 00 00 00       	callq  60 <_ZNSt7__cxx1110_List_baseIN5Xbyak12LabelManager11SlabelStateESaIS3_EE8_M_clearEv+0x60>
  60:	48 85 db             	test   %rbx,%rbx
  63:	75 dd                	jne    42 <_ZNSt7__cxx1110_List_baseIN5Xbyak12LabelManager11SlabelStateESaIS3_EE8_M_clearEv+0x42>
  65:	48 8b 45 50          	mov    0x50(%rbp),%rax
  69:	48 8b 7d 48          	mov    0x48(%rbp),%rdi
  6d:	31 f6                	xor    %esi,%esi
  6f:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
  76:	00 
  77:	e8 00 00 00 00       	callq  7c <_ZNSt7__cxx1110_List_baseIN5Xbyak12LabelManager11SlabelStateESaIS3_EE8_M_clearEv+0x7c>
  7c:	48 8b 7d 48          	mov    0x48(%rbp),%rdi
  80:	48 8d 45 78          	lea    0x78(%rbp),%rax
  84:	48 c7 45 60 00 00 00 	movq   $0x0,0x60(%rbp)
  8b:	00 
  8c:	48 c7 45 58 00 00 00 	movq   $0x0,0x58(%rbp)
  93:	00 
  94:	48 39 c7             	cmp    %rax,%rdi
  97:	74 05                	je     9e <_ZNSt7__cxx1110_List_baseIN5Xbyak12LabelManager11SlabelStateESaIS3_EE8_M_clearEv+0x9e>
  99:	e8 00 00 00 00       	callq  9e <_ZNSt7__cxx1110_List_baseIN5Xbyak12LabelManager11SlabelStateESaIS3_EE8_M_clearEv+0x9e>
  9e:	4c 8b 65 20          	mov    0x20(%rbp),%r12
  a2:	4d 85 e4             	test   %r12,%r12
  a5:	75 1e                	jne    c5 <_ZNSt7__cxx1110_List_baseIN5Xbyak12LabelManager11SlabelStateESaIS3_EE8_M_clearEv+0xc5>
  a7:	eb 3c                	jmp    e5 <_ZNSt7__cxx1110_List_baseIN5Xbyak12LabelManager11SlabelStateESaIS3_EE8_M_clearEv+0xe5>
  a9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  b0:	e8 00 00 00 00       	callq  b5 <_ZNSt7__cxx1110_List_baseIN5Xbyak12LabelManager11SlabelStateESaIS3_EE8_M_clearEv+0xb5>
  b5:	4c 89 e7             	mov    %r12,%rdi
  b8:	e8 00 00 00 00       	callq  bd <_ZNSt7__cxx1110_List_baseIN5Xbyak12LabelManager11SlabelStateESaIS3_EE8_M_clearEv+0xbd>
  bd:	48 85 db             	test   %rbx,%rbx
  c0:	74 23                	je     e5 <_ZNSt7__cxx1110_List_baseIN5Xbyak12LabelManager11SlabelStateESaIS3_EE8_M_clearEv+0xe5>
  c2:	49 89 dc             	mov    %rbx,%r12
  c5:	49 8b 7c 24 08       	mov    0x8(%r12),%rdi
  ca:	49 8d 44 24 18       	lea    0x18(%r12),%rax
  cf:	49 8b 1c 24          	mov    (%r12),%rbx
  d3:	48 39 c7             	cmp    %rax,%rdi
  d6:	75 d8                	jne    b0 <_ZNSt7__cxx1110_List_baseIN5Xbyak12LabelManager11SlabelStateESaIS3_EE8_M_clearEv+0xb0>
  d8:	4c 89 e7             	mov    %r12,%rdi
  db:	e8 00 00 00 00       	callq  e0 <_ZNSt7__cxx1110_List_baseIN5Xbyak12LabelManager11SlabelStateESaIS3_EE8_M_clearEv+0xe0>
  e0:	48 85 db             	test   %rbx,%rbx
  e3:	75 dd                	jne    c2 <_ZNSt7__cxx1110_List_baseIN5Xbyak12LabelManager11SlabelStateESaIS3_EE8_M_clearEv+0xc2>
  e5:	48 8b 45 18          	mov    0x18(%rbp),%rax
  e9:	48 8b 7d 10          	mov    0x10(%rbp),%rdi
  ed:	31 f6                	xor    %esi,%esi
  ef:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
  f6:	00 
  f7:	e8 00 00 00 00       	callq  fc <_ZNSt7__cxx1110_List_baseIN5Xbyak12LabelManager11SlabelStateESaIS3_EE8_M_clearEv+0xfc>
  fc:	48 8b 7d 10          	mov    0x10(%rbp),%rdi
 100:	48 8d 45 40          	lea    0x40(%rbp),%rax
 104:	48 c7 45 28 00 00 00 	movq   $0x0,0x28(%rbp)
 10b:	00 
 10c:	48 c7 45 20 00 00 00 	movq   $0x0,0x20(%rbp)
 113:	00 
 114:	48 39 c7             	cmp    %rax,%rdi
 117:	74 1f                	je     138 <_ZNSt7__cxx1110_List_baseIN5Xbyak12LabelManager11SlabelStateESaIS3_EE8_M_clearEv+0x138>
 119:	e8 00 00 00 00       	callq  11e <_ZNSt7__cxx1110_List_baseIN5Xbyak12LabelManager11SlabelStateESaIS3_EE8_M_clearEv+0x11e>
 11e:	48 89 ef             	mov    %rbp,%rdi
 121:	e8 00 00 00 00       	callq  126 <_ZNSt7__cxx1110_List_baseIN5Xbyak12LabelManager11SlabelStateESaIS3_EE8_M_clearEv+0x126>
 126:	4d 39 f5             	cmp    %r14,%r13
 129:	74 1a                	je     145 <_ZNSt7__cxx1110_List_baseIN5Xbyak12LabelManager11SlabelStateESaIS3_EE8_M_clearEv+0x145>
 12b:	4c 89 ed             	mov    %r13,%rbp
 12e:	e9 ed fe ff ff       	jmpq   20 <_ZNSt7__cxx1110_List_baseIN5Xbyak12LabelManager11SlabelStateESaIS3_EE8_M_clearEv+0x20>
 133:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
 138:	48 89 ef             	mov    %rbp,%rdi
 13b:	e8 00 00 00 00       	callq  140 <_ZNSt7__cxx1110_List_baseIN5Xbyak12LabelManager11SlabelStateESaIS3_EE8_M_clearEv+0x140>
 140:	4d 39 f5             	cmp    %r14,%r13
 143:	75 e6                	jne    12b <_ZNSt7__cxx1110_List_baseIN5Xbyak12LabelManager11SlabelStateESaIS3_EE8_M_clearEv+0x12b>
 145:	5b                   	pop    %rbx
 146:	5d                   	pop    %rbp
 147:	41 5c                	pop    %r12
 149:	41 5d                	pop    %r13
 14b:	41 5e                	pop    %r14
 14d:	c3                   	retq   

Disassembly of section .text._ZN4CodeD0Ev:

0000000000000000 <_ZN4CodeD0Ev>:
   0:	f3 0f 1e fa          	endbr64 
   4:	48 8b 05 00 00 00 00 	mov    0x0(%rip),%rax        # b <_ZN4CodeD0Ev+0xb>
   b:	41 54                	push   %r12
   d:	55                   	push   %rbp
   e:	48 89 fd             	mov    %rdi,%rbp
  11:	53                   	push   %rbx
  12:	48 8b 9f 38 01 00 00 	mov    0x138(%rdi),%rbx
  19:	48 83 c0 10          	add    $0x10,%rax
  1d:	48 89 07             	mov    %rax,(%rdi)
  20:	48 85 db             	test   %rbx,%rbx
  23:	74 3b                	je     60 <_ZN4CodeD0Ev+0x60>
  25:	48 89 d8             	mov    %rbx,%rax
  28:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  2f:	00 
  30:	48 8b 50 08          	mov    0x8(%rax),%rdx
  34:	48 8b 00             	mov    (%rax),%rax
  37:	48 c7 02 00 00 00 00 	movq   $0x0,(%rdx)
  3e:	c7 42 08 00 00 00 00 	movl   $0x0,0x8(%rdx)
  45:	48 85 c0             	test   %rax,%rax
  48:	75 e6                	jne    30 <_ZN4CodeD0Ev+0x30>
  4a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  50:	48 89 df             	mov    %rbx,%rdi
  53:	48 8b 1b             	mov    (%rbx),%rbx
  56:	e8 00 00 00 00       	callq  5b <_ZN4CodeD0Ev+0x5b>
  5b:	48 85 db             	test   %rbx,%rbx
  5e:	75 f0                	jne    50 <_ZN4CodeD0Ev+0x50>
  60:	48 8b 85 30 01 00 00 	mov    0x130(%rbp),%rax
  67:	48 8b bd 28 01 00 00 	mov    0x128(%rbp),%rdi
  6e:	31 f6                	xor    %esi,%esi
  70:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
  77:	00 
  78:	e8 00 00 00 00       	callq  7d <_ZN4CodeD0Ev+0x7d>
  7d:	48 8b 85 30 01 00 00 	mov    0x130(%rbp),%rax
  84:	48 8b bd 28 01 00 00 	mov    0x128(%rbp),%rdi
  8b:	31 f6                	xor    %esi,%esi
  8d:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
  94:	00 
  95:	e8 00 00 00 00       	callq  9a <_ZN4CodeD0Ev+0x9a>
  9a:	48 8b bd 28 01 00 00 	mov    0x128(%rbp),%rdi
  a1:	48 8d 85 58 01 00 00 	lea    0x158(%rbp),%rax
  a8:	48 c7 85 40 01 00 00 	movq   $0x0,0x140(%rbp)
  af:	00 00 00 00 
  b3:	48 c7 85 38 01 00 00 	movq   $0x0,0x138(%rbp)
  ba:	00 00 00 00 
  be:	48 39 c7             	cmp    %rax,%rdi
  c1:	74 05                	je     c8 <_ZN4CodeD0Ev+0xc8>
  c3:	e8 00 00 00 00       	callq  c8 <_ZN4CodeD0Ev+0xc8>
  c8:	48 8b 9d 00 01 00 00 	mov    0x100(%rbp),%rbx
  cf:	48 85 db             	test   %rbx,%rbx
  d2:	74 14                	je     e8 <_ZN4CodeD0Ev+0xe8>
  d4:	0f 1f 40 00          	nopl   0x0(%rax)
  d8:	48 89 df             	mov    %rbx,%rdi
  db:	48 8b 1b             	mov    (%rbx),%rbx
  de:	e8 00 00 00 00       	callq  e3 <_ZN4CodeD0Ev+0xe3>
  e3:	48 85 db             	test   %rbx,%rbx
  e6:	75 f0                	jne    d8 <_ZN4CodeD0Ev+0xd8>
  e8:	48 8b 85 f8 00 00 00 	mov    0xf8(%rbp),%rax
  ef:	48 8b bd f0 00 00 00 	mov    0xf0(%rbp),%rdi
  f6:	31 f6                	xor    %esi,%esi
  f8:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
  ff:	00 
 100:	e8 00 00 00 00       	callq  105 <_ZN4CodeD0Ev+0x105>
 105:	48 8b bd f0 00 00 00 	mov    0xf0(%rbp),%rdi
 10c:	48 8d 85 20 01 00 00 	lea    0x120(%rbp),%rax
 113:	48 c7 85 08 01 00 00 	movq   $0x0,0x108(%rbp)
 11a:	00 00 00 00 
 11e:	48 c7 85 00 01 00 00 	movq   $0x0,0x100(%rbp)
 125:	00 00 00 00 
 129:	48 39 c7             	cmp    %rax,%rdi
 12c:	74 05                	je     133 <_ZN4CodeD0Ev+0x133>
 12e:	e8 00 00 00 00       	callq  133 <_ZN4CodeD0Ev+0x133>
 133:	48 8b 9d c8 00 00 00 	mov    0xc8(%rbp),%rbx
 13a:	48 85 db             	test   %rbx,%rbx
 13d:	74 11                	je     150 <_ZN4CodeD0Ev+0x150>
 13f:	90                   	nop
 140:	48 89 df             	mov    %rbx,%rdi
 143:	48 8b 1b             	mov    (%rbx),%rbx
 146:	e8 00 00 00 00       	callq  14b <_ZN4CodeD0Ev+0x14b>
 14b:	48 85 db             	test   %rbx,%rbx
 14e:	75 f0                	jne    140 <_ZN4CodeD0Ev+0x140>
 150:	48 8b 85 c0 00 00 00 	mov    0xc0(%rbp),%rax
 157:	48 8b bd b8 00 00 00 	mov    0xb8(%rbp),%rdi
 15e:	31 f6                	xor    %esi,%esi
 160:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
 167:	00 
 168:	e8 00 00 00 00       	callq  16d <_ZN4CodeD0Ev+0x16d>
 16d:	48 8b bd b8 00 00 00 	mov    0xb8(%rbp),%rdi
 174:	48 8d 85 e8 00 00 00 	lea    0xe8(%rbp),%rax
 17b:	48 c7 85 d0 00 00 00 	movq   $0x0,0xd0(%rbp)
 182:	00 00 00 00 
 186:	48 c7 85 c8 00 00 00 	movq   $0x0,0xc8(%rbp)
 18d:	00 00 00 00 
 191:	48 39 c7             	cmp    %rax,%rdi
 194:	74 05                	je     19b <_ZN4CodeD0Ev+0x19b>
 196:	e8 00 00 00 00       	callq  19b <_ZN4CodeD0Ev+0x19b>
 19b:	48 8d bd 98 00 00 00 	lea    0x98(%rbp),%rdi
 1a2:	e8 00 00 00 00       	callq  1a7 <_ZN4CodeD0Ev+0x1a7>
 1a7:	48 8b 05 00 00 00 00 	mov    0x0(%rip),%rax        # 1ae <_ZN4CodeD0Ev+0x1ae>
 1ae:	48 83 c0 10          	add    $0x10,%rax
 1b2:	48 89 45 00          	mov    %rax,0x0(%rbp)
 1b6:	8b 45 20             	mov    0x20(%rbp),%eax
 1b9:	83 e8 02             	sub    $0x2,%eax
 1bc:	83 f8 01             	cmp    $0x1,%eax
 1bf:	0f 86 a3 00 00 00    	jbe    268 <_ZN4CodeD0Ev+0x268>
 1c5:	48 8b 05 00 00 00 00 	mov    0x0(%rip),%rax        # 1cc <_ZN4CodeD0Ev+0x1cc>
 1cc:	48 8b 5d 40          	mov    0x40(%rbp),%rbx
 1d0:	48 83 c0 10          	add    $0x10,%rax
 1d4:	48 89 45 28          	mov    %rax,0x28(%rbp)
 1d8:	48 85 db             	test   %rbx,%rbx
 1db:	74 13                	je     1f0 <_ZN4CodeD0Ev+0x1f0>
 1dd:	0f 1f 00             	nopl   (%rax)
 1e0:	48 89 df             	mov    %rbx,%rdi
 1e3:	48 8b 1b             	mov    (%rbx),%rbx
 1e6:	e8 00 00 00 00       	callq  1eb <_ZN4CodeD0Ev+0x1eb>
 1eb:	48 85 db             	test   %rbx,%rbx
 1ee:	75 f0                	jne    1e0 <_ZN4CodeD0Ev+0x1e0>
 1f0:	48 8b 45 38          	mov    0x38(%rbp),%rax
 1f4:	48 8b 7d 30          	mov    0x30(%rbp),%rdi
 1f8:	31 f6                	xor    %esi,%esi
 1fa:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
 201:	00 
 202:	e8 00 00 00 00       	callq  207 <_ZN4CodeD0Ev+0x207>
 207:	48 8b 7d 30          	mov    0x30(%rbp),%rdi
 20b:	48 8d 45 60          	lea    0x60(%rbp),%rax
 20f:	48 c7 45 48 00 00 00 	movq   $0x0,0x48(%rbp)
 216:	00 
 217:	48 c7 45 40 00 00 00 	movq   $0x0,0x40(%rbp)
 21e:	00 
 21f:	48 39 c7             	cmp    %rax,%rdi
 222:	74 05                	je     229 <_ZN4CodeD0Ev+0x229>
 224:	e8 00 00 00 00       	callq  229 <_ZN4CodeD0Ev+0x229>
 229:	48 8b 5d 08          	mov    0x8(%rbp),%rbx
 22d:	4c 8d 65 08          	lea    0x8(%rbp),%r12
 231:	4c 39 e3             	cmp    %r12,%rbx
 234:	74 1a                	je     250 <_ZN4CodeD0Ev+0x250>
 236:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 23d:	00 00 00 
 240:	48 89 df             	mov    %rbx,%rdi
 243:	48 8b 1b             	mov    (%rbx),%rbx
 246:	e8 00 00 00 00       	callq  24b <_ZN4CodeD0Ev+0x24b>
 24b:	4c 39 e3             	cmp    %r12,%rbx
 24e:	75 f0                	jne    240 <_ZN4CodeD0Ev+0x240>
 250:	5b                   	pop    %rbx
 251:	48 89 ef             	mov    %rbp,%rdi
 254:	be 20 0c 00 00       	mov    $0xc20,%esi
 259:	5d                   	pop    %rbp
 25a:	41 5c                	pop    %r12
 25c:	e9 00 00 00 00       	jmpq   261 <_ZN4CodeD0Ev+0x261>
 261:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
 268:	48 8b 7d 68          	mov    0x68(%rbp),%rdi
 26c:	48 8b 07             	mov    (%rdi),%rax
 26f:	48 8b 40 20          	mov    0x20(%rax),%rax
 273:	48 3b 05 00 00 00 00 	cmp    0x0(%rip),%rax        # 27a <_ZN4CodeD0Ev+0x27a>
 27a:	75 44                	jne    2c0 <_ZN4CodeD0Ev+0x2c0>
 27c:	bf 1e 00 00 00       	mov    $0x1e,%edi
 281:	4c 8b 65 78          	mov    0x78(%rbp),%r12
 285:	48 8b 5d 70          	mov    0x70(%rbp),%rbx
 289:	e8 00 00 00 00       	callq  28e <_ZN4CodeD0Ev+0x28e>
 28e:	ba 03 00 00 00       	mov    $0x3,%edx
 293:	48 f7 d8             	neg    %rax
 296:	4a 8d 34 23          	lea    (%rbx,%r12,1),%rsi
 29a:	48 89 c7             	mov    %rax,%rdi
 29d:	4c 21 e7             	and    %r12,%rdi
 2a0:	48 29 fe             	sub    %rdi,%rsi
 2a3:	e8 00 00 00 00       	callq  2a8 <_ZN4CodeD0Ev+0x2a8>
 2a8:	48 8b 7d 68          	mov    0x68(%rbp),%rdi
 2ac:	48 8b 75 78          	mov    0x78(%rbp),%rsi
 2b0:	48 8b 07             	mov    (%rdi),%rax
 2b3:	ff 50 08             	callq  *0x8(%rax)
 2b6:	e9 0a ff ff ff       	jmpq   1c5 <_ZN4CodeD0Ev+0x1c5>
 2bb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
 2c0:	ff d0                	callq  *%rax
 2c2:	84 c0                	test   %al,%al
 2c4:	74 e2                	je     2a8 <_ZN4CodeD0Ev+0x2a8>
 2c6:	eb b4                	jmp    27c <_ZN4CodeD0Ev+0x27c>

Disassembly of section .text._ZN5Xbyak12LabelManager5resetEv:

0000000000000000 <_ZN5Xbyak12LabelManager5resetEv>:
   0:	f3 0f 1e fa          	endbr64 
   4:	41 57                	push   %r15
   6:	41 56                	push   %r14
   8:	4c 8d 77 08          	lea    0x8(%rdi),%r14
   c:	41 55                	push   %r13
   e:	41 54                	push   %r12
  10:	55                   	push   %rbp
  11:	53                   	push   %rbx
  12:	48 89 fb             	mov    %rdi,%rbx
  15:	48 83 ec 78          	sub    $0x78,%rsp
  19:	48 c7 07 00 00 00 00 	movq   $0x0,(%rdi)
  20:	c7 47 20 01 00 00 00 	movl   $0x1,0x20(%rdi)
  27:	4c 89 f7             	mov    %r14,%rdi
  2a:	4c 8d 64 24 30       	lea    0x30(%rsp),%r12
  2f:	4c 8d 6c 24 68       	lea    0x68(%rsp),%r13
  34:	e8 00 00 00 00       	callq  39 <_ZN5Xbyak12LabelManager5resetEv+0x39>
  39:	66 49 0f 6e c6       	movq   %r14,%xmm0
  3e:	bf 80 00 00 00       	mov    $0x80,%edi
  43:	48 c7 43 18 00 00 00 	movq   $0x0,0x18(%rbx)
  4a:	00 
  4b:	66 0f 6c c0          	punpcklqdq %xmm0,%xmm0
  4f:	4c 89 24 24          	mov    %r12,(%rsp)
  53:	0f 11 43 08          	movups %xmm0,0x8(%rbx)
  57:	48 c7 44 24 08 01 00 	movq   $0x1,0x8(%rsp)
  5e:	00 00 
  60:	48 c7 44 24 10 00 00 	movq   $0x0,0x10(%rsp)
  67:	00 00 
  69:	48 c7 44 24 18 00 00 	movq   $0x0,0x18(%rsp)
  70:	00 00 
  72:	c7 44 24 20 00 00 80 	movl   $0x3f800000,0x20(%rsp)
  79:	3f 
  7a:	48 c7 44 24 28 00 00 	movq   $0x0,0x28(%rsp)
  81:	00 00 
  83:	48 c7 44 24 30 00 00 	movq   $0x0,0x30(%rsp)
  8a:	00 00 
  8c:	4c 89 6c 24 38       	mov    %r13,0x38(%rsp)
  91:	48 c7 44 24 40 01 00 	movq   $0x1,0x40(%rsp)
  98:	00 00 
  9a:	48 c7 44 24 48 00 00 	movq   $0x0,0x48(%rsp)
  a1:	00 00 
  a3:	48 c7 44 24 50 00 00 	movq   $0x0,0x50(%rsp)
  aa:	00 00 
  ac:	c7 44 24 58 00 00 80 	movl   $0x3f800000,0x58(%rsp)
  b3:	3f 
  b4:	48 c7 44 24 60 00 00 	movq   $0x0,0x60(%rsp)
  bb:	00 00 
  bd:	48 c7 44 24 68 00 00 	movq   $0x0,0x68(%rsp)
  c4:	00 00 
  c6:	e8 00 00 00 00       	callq  cb <_ZN5Xbyak12LabelManager5resetEv+0xcb>
  cb:	48 8b 0c 24          	mov    (%rsp),%rcx
  cf:	48 8b 74 24 08       	mov    0x8(%rsp),%rsi
  d4:	48 89 c7             	mov    %rax,%rdi
  d7:	48 8b 54 24 18       	mov    0x18(%rsp),%rdx
  dc:	66 0f 6f 4c 24 20    	movdqa 0x20(%rsp),%xmm1
  e2:	48 89 48 10          	mov    %rcx,0x10(%rax)
  e6:	48 89 70 18          	mov    %rsi,0x18(%rax)
  ea:	48 8b 44 24 10       	mov    0x10(%rsp),%rax
  ef:	48 89 57 28          	mov    %rdx,0x28(%rdi)
  f3:	48 89 47 20          	mov    %rax,0x20(%rdi)
  f7:	48 c7 47 40 00 00 00 	movq   $0x0,0x40(%rdi)
  fe:	00 
  ff:	0f 11 4f 30          	movups %xmm1,0x30(%rdi)
 103:	4c 39 e1             	cmp    %r12,%rcx
 106:	0f 84 8c 05 00 00    	je     698 <_ZN5Xbyak12LabelManager5resetEv+0x698>
 10c:	48 85 c0             	test   %rax,%rax
 10f:	74 11                	je     122 <_ZN5Xbyak12LabelManager5resetEv+0x122>
 111:	48 8b 40 30          	mov    0x30(%rax),%rax
 115:	31 d2                	xor    %edx,%edx
 117:	48 f7 f6             	div    %rsi
 11a:	48 8d 47 20          	lea    0x20(%rdi),%rax
 11e:	48 89 04 d1          	mov    %rax,(%rcx,%rdx,8)
 122:	48 8b 4c 24 38       	mov    0x38(%rsp),%rcx
 127:	48 8b 74 24 40       	mov    0x40(%rsp),%rsi
 12c:	4c 89 24 24          	mov    %r12,(%rsp)
 130:	48 8b 44 24 48       	mov    0x48(%rsp),%rax
 135:	48 8b 54 24 50       	mov    0x50(%rsp),%rdx
 13a:	48 c7 44 24 28 00 00 	movq   $0x0,0x28(%rsp)
 141:	00 00 
 143:	f3 0f 6f 54 24 58    	movdqu 0x58(%rsp),%xmm2
 149:	48 89 4f 48          	mov    %rcx,0x48(%rdi)
 14d:	48 c7 44 24 08 01 00 	movq   $0x1,0x8(%rsp)
 154:	00 00 
 156:	48 c7 44 24 30 00 00 	movq   $0x0,0x30(%rsp)
 15d:	00 00 
 15f:	48 c7 44 24 10 00 00 	movq   $0x0,0x10(%rsp)
 166:	00 00 
 168:	48 c7 44 24 18 00 00 	movq   $0x0,0x18(%rsp)
 16f:	00 00 
 171:	48 89 77 50          	mov    %rsi,0x50(%rdi)
 175:	48 89 47 58          	mov    %rax,0x58(%rdi)
 179:	48 89 57 60          	mov    %rdx,0x60(%rdi)
 17d:	48 c7 47 78 00 00 00 	movq   $0x0,0x78(%rdi)
 184:	00 
 185:	0f 11 57 68          	movups %xmm2,0x68(%rdi)
 189:	4c 39 e9             	cmp    %r13,%rcx
 18c:	0f 84 1e 05 00 00    	je     6b0 <_ZN5Xbyak12LabelManager5resetEv+0x6b0>
 192:	48 85 c0             	test   %rax,%rax
 195:	74 11                	je     1a8 <_ZN5Xbyak12LabelManager5resetEv+0x1a8>
 197:	48 8b 40 40          	mov    0x40(%rax),%rax
 19b:	31 d2                	xor    %edx,%edx
 19d:	48 f7 f6             	div    %rsi
 1a0:	48 8d 47 58          	lea    0x58(%rdi),%rax
 1a4:	48 89 04 d1          	mov    %rax,(%rcx,%rdx,8)
 1a8:	4c 89 f6             	mov    %r14,%rsi
 1ab:	4c 89 6c 24 38       	mov    %r13,0x38(%rsp)
 1b0:	48 c7 44 24 60 00 00 	movq   $0x0,0x60(%rsp)
 1b7:	00 00 
 1b9:	48 c7 44 24 40 01 00 	movq   $0x1,0x40(%rsp)
 1c0:	00 00 
 1c2:	48 c7 44 24 68 00 00 	movq   $0x0,0x68(%rsp)
 1c9:	00 00 
 1cb:	48 c7 44 24 48 00 00 	movq   $0x0,0x48(%rsp)
 1d2:	00 00 
 1d4:	48 c7 44 24 50 00 00 	movq   $0x0,0x50(%rsp)
 1db:	00 00 
 1dd:	e8 00 00 00 00       	callq  1e2 <_ZN5Xbyak12LabelManager5resetEv+0x1e2>
 1e2:	48 8b 6c 24 48       	mov    0x48(%rsp),%rbp
 1e7:	48 83 43 18 01       	addq   $0x1,0x18(%rbx)
 1ec:	48 85 ed             	test   %rbp,%rbp
 1ef:	75 1c                	jne    20d <_ZN5Xbyak12LabelManager5resetEv+0x20d>
 1f1:	eb 38                	jmp    22b <_ZN5Xbyak12LabelManager5resetEv+0x22b>
 1f3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
 1f8:	e8 00 00 00 00       	callq  1fd <_ZN5Xbyak12LabelManager5resetEv+0x1fd>
 1fd:	48 89 ef             	mov    %rbp,%rdi
 200:	e8 00 00 00 00       	callq  205 <_ZN5Xbyak12LabelManager5resetEv+0x205>
 205:	4d 85 ff             	test   %r15,%r15
 208:	74 21                	je     22b <_ZN5Xbyak12LabelManager5resetEv+0x22b>
 20a:	4c 89 fd             	mov    %r15,%rbp
 20d:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
 211:	48 8d 45 18          	lea    0x18(%rbp),%rax
 215:	4c 8b 7d 00          	mov    0x0(%rbp),%r15
 219:	48 39 c7             	cmp    %rax,%rdi
 21c:	75 da                	jne    1f8 <_ZN5Xbyak12LabelManager5resetEv+0x1f8>
 21e:	48 89 ef             	mov    %rbp,%rdi
 221:	e8 00 00 00 00       	callq  226 <_ZN5Xbyak12LabelManager5resetEv+0x226>
 226:	4d 85 ff             	test   %r15,%r15
 229:	75 df                	jne    20a <_ZN5Xbyak12LabelManager5resetEv+0x20a>
 22b:	48 8b 44 24 40       	mov    0x40(%rsp),%rax
 230:	48 8b 7c 24 38       	mov    0x38(%rsp),%rdi
 235:	31 f6                	xor    %esi,%esi
 237:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
 23e:	00 
 23f:	e8 00 00 00 00       	callq  244 <_ZN5Xbyak12LabelManager5resetEv+0x244>
 244:	48 8b 7c 24 38       	mov    0x38(%rsp),%rdi
 249:	48 c7 44 24 50 00 00 	movq   $0x0,0x50(%rsp)
 250:	00 00 
 252:	48 c7 44 24 48 00 00 	movq   $0x0,0x48(%rsp)
 259:	00 00 
 25b:	4c 39 ef             	cmp    %r13,%rdi
 25e:	74 05                	je     265 <_ZN5Xbyak12LabelManager5resetEv+0x265>
 260:	e8 00 00 00 00       	callq  265 <_ZN5Xbyak12LabelManager5resetEv+0x265>
 265:	48 8b 6c 24 10       	mov    0x10(%rsp),%rbp
 26a:	48 85 ed             	test   %rbp,%rbp
 26d:	75 1e                	jne    28d <_ZN5Xbyak12LabelManager5resetEv+0x28d>
 26f:	eb 3a                	jmp    2ab <_ZN5Xbyak12LabelManager5resetEv+0x2ab>
 271:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
 278:	e8 00 00 00 00       	callq  27d <_ZN5Xbyak12LabelManager5resetEv+0x27d>
 27d:	48 89 ef             	mov    %rbp,%rdi
 280:	e8 00 00 00 00       	callq  285 <_ZN5Xbyak12LabelManager5resetEv+0x285>
 285:	4d 85 ff             	test   %r15,%r15
 288:	74 21                	je     2ab <_ZN5Xbyak12LabelManager5resetEv+0x2ab>
 28a:	4c 89 fd             	mov    %r15,%rbp
 28d:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
 291:	48 8d 45 18          	lea    0x18(%rbp),%rax
 295:	4c 8b 7d 00          	mov    0x0(%rbp),%r15
 299:	48 39 c7             	cmp    %rax,%rdi
 29c:	75 da                	jne    278 <_ZN5Xbyak12LabelManager5resetEv+0x278>
 29e:	48 89 ef             	mov    %rbp,%rdi
 2a1:	e8 00 00 00 00       	callq  2a6 <_ZN5Xbyak12LabelManager5resetEv+0x2a6>
 2a6:	4d 85 ff             	test   %r15,%r15
 2a9:	75 df                	jne    28a <_ZN5Xbyak12LabelManager5resetEv+0x28a>
 2ab:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
 2b0:	48 8b 3c 24          	mov    (%rsp),%rdi
 2b4:	31 f6                	xor    %esi,%esi
 2b6:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
 2bd:	00 
 2be:	e8 00 00 00 00       	callq  2c3 <_ZN5Xbyak12LabelManager5resetEv+0x2c3>
 2c3:	48 8b 3c 24          	mov    (%rsp),%rdi
 2c7:	48 c7 44 24 18 00 00 	movq   $0x0,0x18(%rsp)
 2ce:	00 00 
 2d0:	48 c7 44 24 10 00 00 	movq   $0x0,0x10(%rsp)
 2d7:	00 00 
 2d9:	4c 39 e7             	cmp    %r12,%rdi
 2dc:	74 05                	je     2e3 <_ZN5Xbyak12LabelManager5resetEv+0x2e3>
 2de:	e8 00 00 00 00       	callq  2e3 <_ZN5Xbyak12LabelManager5resetEv+0x2e3>
 2e3:	bf 80 00 00 00       	mov    $0x80,%edi
 2e8:	4c 89 24 24          	mov    %r12,(%rsp)
 2ec:	48 c7 44 24 08 01 00 	movq   $0x1,0x8(%rsp)
 2f3:	00 00 
 2f5:	48 c7 44 24 10 00 00 	movq   $0x0,0x10(%rsp)
 2fc:	00 00 
 2fe:	48 c7 44 24 18 00 00 	movq   $0x0,0x18(%rsp)
 305:	00 00 
 307:	c7 44 24 20 00 00 80 	movl   $0x3f800000,0x20(%rsp)
 30e:	3f 
 30f:	48 c7 44 24 28 00 00 	movq   $0x0,0x28(%rsp)
 316:	00 00 
 318:	48 c7 44 24 30 00 00 	movq   $0x0,0x30(%rsp)
 31f:	00 00 
 321:	4c 89 6c 24 38       	mov    %r13,0x38(%rsp)
 326:	48 c7 44 24 40 01 00 	movq   $0x1,0x40(%rsp)
 32d:	00 00 
 32f:	48 c7 44 24 48 00 00 	movq   $0x0,0x48(%rsp)
 336:	00 00 
 338:	48 c7 44 24 50 00 00 	movq   $0x0,0x50(%rsp)
 33f:	00 00 
 341:	c7 44 24 58 00 00 80 	movl   $0x3f800000,0x58(%rsp)
 348:	3f 
 349:	48 c7 44 24 60 00 00 	movq   $0x0,0x60(%rsp)
 350:	00 00 
 352:	48 c7 44 24 68 00 00 	movq   $0x0,0x68(%rsp)
 359:	00 00 
 35b:	e8 00 00 00 00       	callq  360 <_ZN5Xbyak12LabelManager5resetEv+0x360>
 360:	48 8b 0c 24          	mov    (%rsp),%rcx
 364:	48 8b 74 24 08       	mov    0x8(%rsp),%rsi
 369:	48 89 c7             	mov    %rax,%rdi
 36c:	48 8b 54 24 18       	mov    0x18(%rsp),%rdx
 371:	66 0f 6f 5c 24 20    	movdqa 0x20(%rsp),%xmm3
 377:	48 89 48 10          	mov    %rcx,0x10(%rax)
 37b:	48 89 70 18          	mov    %rsi,0x18(%rax)
 37f:	48 8b 44 24 10       	mov    0x10(%rsp),%rax
 384:	48 89 57 28          	mov    %rdx,0x28(%rdi)
 388:	48 89 47 20          	mov    %rax,0x20(%rdi)
 38c:	48 c7 47 40 00 00 00 	movq   $0x0,0x40(%rdi)
 393:	00 
 394:	0f 11 5f 30          	movups %xmm3,0x30(%rdi)
 398:	4c 39 e1             	cmp    %r12,%rcx
 39b:	0f 84 2f 03 00 00    	je     6d0 <_ZN5Xbyak12LabelManager5resetEv+0x6d0>
 3a1:	48 85 c0             	test   %rax,%rax
 3a4:	74 11                	je     3b7 <_ZN5Xbyak12LabelManager5resetEv+0x3b7>
 3a6:	48 8b 40 30          	mov    0x30(%rax),%rax
 3aa:	31 d2                	xor    %edx,%edx
 3ac:	48 f7 f6             	div    %rsi
 3af:	48 8d 47 20          	lea    0x20(%rdi),%rax
 3b3:	48 89 04 d1          	mov    %rax,(%rcx,%rdx,8)
 3b7:	48 8b 4c 24 38       	mov    0x38(%rsp),%rcx
 3bc:	48 8b 74 24 40       	mov    0x40(%rsp),%rsi
 3c1:	4c 89 24 24          	mov    %r12,(%rsp)
 3c5:	48 8b 44 24 48       	mov    0x48(%rsp),%rax
 3ca:	48 8b 54 24 50       	mov    0x50(%rsp),%rdx
 3cf:	48 c7 44 24 28 00 00 	movq   $0x0,0x28(%rsp)
 3d6:	00 00 
 3d8:	f3 0f 6f 64 24 58    	movdqu 0x58(%rsp),%xmm4
 3de:	48 89 4f 48          	mov    %rcx,0x48(%rdi)
 3e2:	48 c7 44 24 08 01 00 	movq   $0x1,0x8(%rsp)
 3e9:	00 00 
 3eb:	48 c7 44 24 30 00 00 	movq   $0x0,0x30(%rsp)
 3f2:	00 00 
 3f4:	48 c7 44 24 10 00 00 	movq   $0x0,0x10(%rsp)
 3fb:	00 00 
 3fd:	48 c7 44 24 18 00 00 	movq   $0x0,0x18(%rsp)
 404:	00 00 
 406:	48 89 77 50          	mov    %rsi,0x50(%rdi)
 40a:	48 89 47 58          	mov    %rax,0x58(%rdi)
 40e:	48 89 57 60          	mov    %rdx,0x60(%rdi)
 412:	48 c7 47 78 00 00 00 	movq   $0x0,0x78(%rdi)
 419:	00 
 41a:	0f 11 67 68          	movups %xmm4,0x68(%rdi)
 41e:	4c 39 e9             	cmp    %r13,%rcx
 421:	0f 84 c9 02 00 00    	je     6f0 <_ZN5Xbyak12LabelManager5resetEv+0x6f0>
 427:	48 85 c0             	test   %rax,%rax
 42a:	74 11                	je     43d <_ZN5Xbyak12LabelManager5resetEv+0x43d>
 42c:	48 8b 40 40          	mov    0x40(%rax),%rax
 430:	31 d2                	xor    %edx,%edx
 432:	48 f7 f6             	div    %rsi
 435:	48 8d 47 58          	lea    0x58(%rdi),%rax
 439:	48 89 04 d1          	mov    %rax,(%rcx,%rdx,8)
 43d:	4c 89 f6             	mov    %r14,%rsi
 440:	4c 89 6c 24 38       	mov    %r13,0x38(%rsp)
 445:	48 c7 44 24 60 00 00 	movq   $0x0,0x60(%rsp)
 44c:	00 00 
 44e:	48 c7 44 24 40 01 00 	movq   $0x1,0x40(%rsp)
 455:	00 00 
 457:	48 c7 44 24 68 00 00 	movq   $0x0,0x68(%rsp)
 45e:	00 00 
 460:	48 c7 44 24 48 00 00 	movq   $0x0,0x48(%rsp)
 467:	00 00 
 469:	48 c7 44 24 50 00 00 	movq   $0x0,0x50(%rsp)
 470:	00 00 
 472:	e8 00 00 00 00       	callq  477 <_ZN5Xbyak12LabelManager5resetEv+0x477>
 477:	48 8b 6c 24 48       	mov    0x48(%rsp),%rbp
 47c:	48 83 43 18 01       	addq   $0x1,0x18(%rbx)
 481:	48 85 ed             	test   %rbp,%rbp
 484:	75 1f                	jne    4a5 <_ZN5Xbyak12LabelManager5resetEv+0x4a5>
 486:	eb 3b                	jmp    4c3 <_ZN5Xbyak12LabelManager5resetEv+0x4c3>
 488:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
 48f:	00 
 490:	e8 00 00 00 00       	callq  495 <_ZN5Xbyak12LabelManager5resetEv+0x495>
 495:	48 89 ef             	mov    %rbp,%rdi
 498:	e8 00 00 00 00       	callq  49d <_ZN5Xbyak12LabelManager5resetEv+0x49d>
 49d:	4d 85 f6             	test   %r14,%r14
 4a0:	74 21                	je     4c3 <_ZN5Xbyak12LabelManager5resetEv+0x4c3>
 4a2:	4c 89 f5             	mov    %r14,%rbp
 4a5:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
 4a9:	48 8d 45 18          	lea    0x18(%rbp),%rax
 4ad:	4c 8b 75 00          	mov    0x0(%rbp),%r14
 4b1:	48 39 c7             	cmp    %rax,%rdi
 4b4:	75 da                	jne    490 <_ZN5Xbyak12LabelManager5resetEv+0x490>
 4b6:	48 89 ef             	mov    %rbp,%rdi
 4b9:	e8 00 00 00 00       	callq  4be <_ZN5Xbyak12LabelManager5resetEv+0x4be>
 4be:	4d 85 f6             	test   %r14,%r14
 4c1:	75 df                	jne    4a2 <_ZN5Xbyak12LabelManager5resetEv+0x4a2>
 4c3:	48 8b 44 24 40       	mov    0x40(%rsp),%rax
 4c8:	48 8b 7c 24 38       	mov    0x38(%rsp),%rdi
 4cd:	31 f6                	xor    %esi,%esi
 4cf:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
 4d6:	00 
 4d7:	e8 00 00 00 00       	callq  4dc <_ZN5Xbyak12LabelManager5resetEv+0x4dc>
 4dc:	48 8b 7c 24 38       	mov    0x38(%rsp),%rdi
 4e1:	48 c7 44 24 50 00 00 	movq   $0x0,0x50(%rsp)
 4e8:	00 00 
 4ea:	48 c7 44 24 48 00 00 	movq   $0x0,0x48(%rsp)
 4f1:	00 00 
 4f3:	4c 39 ef             	cmp    %r13,%rdi
 4f6:	74 05                	je     4fd <_ZN5Xbyak12LabelManager5resetEv+0x4fd>
 4f8:	e8 00 00 00 00       	callq  4fd <_ZN5Xbyak12LabelManager5resetEv+0x4fd>
 4fd:	48 8b 6c 24 10       	mov    0x10(%rsp),%rbp
 502:	48 85 ed             	test   %rbp,%rbp
 505:	75 1e                	jne    525 <_ZN5Xbyak12LabelManager5resetEv+0x525>
 507:	eb 3a                	jmp    543 <_ZN5Xbyak12LabelManager5resetEv+0x543>
 509:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
 510:	e8 00 00 00 00       	callq  515 <_ZN5Xbyak12LabelManager5resetEv+0x515>
 515:	48 89 ef             	mov    %rbp,%rdi
 518:	e8 00 00 00 00       	callq  51d <_ZN5Xbyak12LabelManager5resetEv+0x51d>
 51d:	4d 85 ed             	test   %r13,%r13
 520:	74 21                	je     543 <_ZN5Xbyak12LabelManager5resetEv+0x543>
 522:	4c 89 ed             	mov    %r13,%rbp
 525:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
 529:	48 8d 45 18          	lea    0x18(%rbp),%rax
 52d:	4c 8b 6d 00          	mov    0x0(%rbp),%r13
 531:	48 39 c7             	cmp    %rax,%rdi
 534:	75 da                	jne    510 <_ZN5Xbyak12LabelManager5resetEv+0x510>
 536:	48 89 ef             	mov    %rbp,%rdi
 539:	e8 00 00 00 00       	callq  53e <_ZN5Xbyak12LabelManager5resetEv+0x53e>
 53e:	4d 85 ed             	test   %r13,%r13
 541:	75 df                	jne    522 <_ZN5Xbyak12LabelManager5resetEv+0x522>
 543:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
 548:	48 8b 3c 24          	mov    (%rsp),%rdi
 54c:	31 f6                	xor    %esi,%esi
 54e:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
 555:	00 
 556:	e8 00 00 00 00       	callq  55b <_ZN5Xbyak12LabelManager5resetEv+0x55b>
 55b:	48 8b 3c 24          	mov    (%rsp),%rdi
 55f:	48 c7 44 24 18 00 00 	movq   $0x0,0x18(%rsp)
 566:	00 00 
 568:	48 c7 44 24 10 00 00 	movq   $0x0,0x10(%rsp)
 56f:	00 00 
 571:	4c 39 e7             	cmp    %r12,%rdi
 574:	74 05                	je     57b <_ZN5Xbyak12LabelManager5resetEv+0x57b>
 576:	e8 00 00 00 00       	callq  57b <_ZN5Xbyak12LabelManager5resetEv+0x57b>
 57b:	48 8b 6b 38          	mov    0x38(%rbx),%rbp
 57f:	48 85 ed             	test   %rbp,%rbp
 582:	74 15                	je     599 <_ZN5Xbyak12LabelManager5resetEv+0x599>
 584:	0f 1f 40 00          	nopl   0x0(%rax)
 588:	48 89 ef             	mov    %rbp,%rdi
 58b:	48 8b 6d 00          	mov    0x0(%rbp),%rbp
 58f:	e8 00 00 00 00       	callq  594 <_ZN5Xbyak12LabelManager5resetEv+0x594>
 594:	48 85 ed             	test   %rbp,%rbp
 597:	75 ef                	jne    588 <_ZN5Xbyak12LabelManager5resetEv+0x588>
 599:	48 8b 43 30          	mov    0x30(%rbx),%rax
 59d:	48 8b 7b 28          	mov    0x28(%rbx),%rdi
 5a1:	31 f6                	xor    %esi,%esi
 5a3:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
 5aa:	00 
 5ab:	e8 00 00 00 00       	callq  5b0 <_ZN5Xbyak12LabelManager5resetEv+0x5b0>
 5b0:	48 8b 6b 70          	mov    0x70(%rbx),%rbp
 5b4:	48 c7 43 40 00 00 00 	movq   $0x0,0x40(%rbx)
 5bb:	00 
 5bc:	48 c7 43 38 00 00 00 	movq   $0x0,0x38(%rbx)
 5c3:	00 
 5c4:	48 85 ed             	test   %rbp,%rbp
 5c7:	74 18                	je     5e1 <_ZN5Xbyak12LabelManager5resetEv+0x5e1>
 5c9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
 5d0:	48 89 ef             	mov    %rbp,%rdi
 5d3:	48 8b 6d 00          	mov    0x0(%rbp),%rbp
 5d7:	e8 00 00 00 00       	callq  5dc <_ZN5Xbyak12LabelManager5resetEv+0x5dc>
 5dc:	48 85 ed             	test   %rbp,%rbp
 5df:	75 ef                	jne    5d0 <_ZN5Xbyak12LabelManager5resetEv+0x5d0>
 5e1:	48 8b 43 68          	mov    0x68(%rbx),%rax
 5e5:	48 8b 7b 60          	mov    0x60(%rbx),%rdi
 5e9:	31 f6                	xor    %esi,%esi
 5eb:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
 5f2:	00 
 5f3:	e8 00 00 00 00       	callq  5f8 <_ZN5Xbyak12LabelManager5resetEv+0x5f8>
 5f8:	48 8b ab a8 00 00 00 	mov    0xa8(%rbx),%rbp
 5ff:	48 c7 43 78 00 00 00 	movq   $0x0,0x78(%rbx)
 606:	00 
 607:	48 c7 43 70 00 00 00 	movq   $0x0,0x70(%rbx)
 60e:	00 
 60f:	48 89 e8             	mov    %rbp,%rax
 612:	48 85 ed             	test   %rbp,%rbp
 615:	74 3a                	je     651 <_ZN5Xbyak12LabelManager5resetEv+0x651>
 617:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
 61e:	00 00 
 620:	48 8b 50 08          	mov    0x8(%rax),%rdx
 624:	48 8b 00             	mov    (%rax),%rax
 627:	48 c7 02 00 00 00 00 	movq   $0x0,(%rdx)
 62e:	c7 42 08 00 00 00 00 	movl   $0x0,0x8(%rdx)
 635:	48 85 c0             	test   %rax,%rax
 638:	75 e6                	jne    620 <_ZN5Xbyak12LabelManager5resetEv+0x620>
 63a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
 640:	48 89 ef             	mov    %rbp,%rdi
 643:	48 8b 6d 00          	mov    0x0(%rbp),%rbp
 647:	e8 00 00 00 00       	callq  64c <_ZN5Xbyak12LabelManager5resetEv+0x64c>
 64c:	48 85 ed             	test   %rbp,%rbp
 64f:	75 ef                	jne    640 <_ZN5Xbyak12LabelManager5resetEv+0x640>
 651:	48 8b 83 a0 00 00 00 	mov    0xa0(%rbx),%rax
 658:	48 8b bb 98 00 00 00 	mov    0x98(%rbx),%rdi
 65f:	31 f6                	xor    %esi,%esi
 661:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
 668:	00 
 669:	e8 00 00 00 00       	callq  66e <_ZN5Xbyak12LabelManager5resetEv+0x66e>
 66e:	48 c7 83 b0 00 00 00 	movq   $0x0,0xb0(%rbx)
 675:	00 00 00 00 
 679:	48 c7 83 a8 00 00 00 	movq   $0x0,0xa8(%rbx)
 680:	00 00 00 00 
 684:	48 83 c4 78          	add    $0x78,%rsp
 688:	5b                   	pop    %rbx
 689:	5d                   	pop    %rbp
 68a:	41 5c                	pop    %r12
 68c:	41 5d                	pop    %r13
 68e:	41 5e                	pop    %r14
 690:	41 5f                	pop    %r15
 692:	c3                   	retq   
 693:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
 698:	48 8b 54 24 30       	mov    0x30(%rsp),%rdx
 69d:	48 8d 4f 40          	lea    0x40(%rdi),%rcx
 6a1:	48 89 4f 10          	mov    %rcx,0x10(%rdi)
 6a5:	48 89 57 40          	mov    %rdx,0x40(%rdi)
 6a9:	e9 5e fa ff ff       	jmpq   10c <_ZN5Xbyak12LabelManager5resetEv+0x10c>
 6ae:	66 90                	xchg   %ax,%ax
 6b0:	48 8b 54 24 68       	mov    0x68(%rsp),%rdx
 6b5:	48 8d 4f 78          	lea    0x78(%rdi),%rcx
 6b9:	48 89 4f 48          	mov    %rcx,0x48(%rdi)
 6bd:	48 89 57 78          	mov    %rdx,0x78(%rdi)
 6c1:	e9 cc fa ff ff       	jmpq   192 <_ZN5Xbyak12LabelManager5resetEv+0x192>
 6c6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 6cd:	00 00 00 
 6d0:	48 8b 54 24 30       	mov    0x30(%rsp),%rdx
 6d5:	48 8d 4f 40          	lea    0x40(%rdi),%rcx
 6d9:	48 89 4f 10          	mov    %rcx,0x10(%rdi)
 6dd:	48 89 57 40          	mov    %rdx,0x40(%rdi)
 6e1:	e9 bb fc ff ff       	jmpq   3a1 <_ZN5Xbyak12LabelManager5resetEv+0x3a1>
 6e6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 6ed:	00 00 00 
 6f0:	48 8b 54 24 68       	mov    0x68(%rsp),%rdx
 6f5:	48 8d 4f 78          	lea    0x78(%rdi),%rcx
 6f9:	48 89 4f 48          	mov    %rcx,0x48(%rdi)
 6fd:	48 89 57 78          	mov    %rdx,0x78(%rdi)
 701:	e9 21 fd ff ff       	jmpq   427 <_ZN5Xbyak12LabelManager5resetEv+0x427>
 706:	f3 0f 1e fa          	endbr64 
 70a:	48 89 c5             	mov    %rax,%rbp
 70d:	eb 06                	jmp    715 <_ZN5Xbyak12LabelManager5resetEv+0x715>
 70f:	f3 0f 1e fa          	endbr64 
 713:	eb f5                	jmp    70a <_ZN5Xbyak12LabelManager5resetEv+0x70a>
 715:	48 8d 7c 24 38       	lea    0x38(%rsp),%rdi
 71a:	49 89 e4             	mov    %rsp,%r12
 71d:	e8 00 00 00 00       	callq  722 <_ZN5Xbyak12LabelManager5resetEv+0x722>
 722:	4c 89 e7             	mov    %r12,%rdi
 725:	e8 00 00 00 00       	callq  72a <_ZN5Xbyak12LabelManager5resetEv+0x72a>
 72a:	48 89 ef             	mov    %rbp,%rdi
 72d:	e8 00 00 00 00       	callq  732 <_GLOBAL__sub_I_mcl.cpp.cold+0x402>

Disassembly of section .text._ZN5Xbyak13CodeGeneratorD2Ev:

0000000000000000 <_ZN5Xbyak13CodeGeneratorD1Ev>:
   0:	f3 0f 1e fa          	endbr64 
   4:	48 8b 05 00 00 00 00 	mov    0x0(%rip),%rax        # b <_ZN5Xbyak13CodeGeneratorD1Ev+0xb>
   b:	41 54                	push   %r12
   d:	55                   	push   %rbp
   e:	53                   	push   %rbx
   f:	48 8b af 38 01 00 00 	mov    0x138(%rdi),%rbp
  16:	48 83 c0 10          	add    $0x10,%rax
  1a:	48 89 fb             	mov    %rdi,%rbx
  1d:	48 89 07             	mov    %rax,(%rdi)
  20:	48 85 ed             	test   %rbp,%rbp
  23:	74 3c                	je     61 <_ZN5Xbyak13CodeGeneratorD1Ev+0x61>
  25:	48 89 e8             	mov    %rbp,%rax
  28:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  2f:	00 
  30:	48 8b 50 08          	mov    0x8(%rax),%rdx
  34:	48 8b 00             	mov    (%rax),%rax
  37:	48 c7 02 00 00 00 00 	movq   $0x0,(%rdx)
  3e:	c7 42 08 00 00 00 00 	movl   $0x0,0x8(%rdx)
  45:	48 85 c0             	test   %rax,%rax
  48:	75 e6                	jne    30 <_ZN5Xbyak13CodeGeneratorD1Ev+0x30>
  4a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  50:	48 89 ef             	mov    %rbp,%rdi
  53:	48 8b 6d 00          	mov    0x0(%rbp),%rbp
  57:	e8 00 00 00 00       	callq  5c <_ZN5Xbyak13CodeGeneratorD1Ev+0x5c>
  5c:	48 85 ed             	test   %rbp,%rbp
  5f:	75 ef                	jne    50 <_ZN5Xbyak13CodeGeneratorD1Ev+0x50>
  61:	48 8b 83 30 01 00 00 	mov    0x130(%rbx),%rax
  68:	48 8b bb 28 01 00 00 	mov    0x128(%rbx),%rdi
  6f:	31 f6                	xor    %esi,%esi
  71:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
  78:	00 
  79:	e8 00 00 00 00       	callq  7e <_ZN5Xbyak13CodeGeneratorD1Ev+0x7e>
  7e:	48 8b 83 30 01 00 00 	mov    0x130(%rbx),%rax
  85:	48 8b bb 28 01 00 00 	mov    0x128(%rbx),%rdi
  8c:	31 f6                	xor    %esi,%esi
  8e:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
  95:	00 
  96:	e8 00 00 00 00       	callq  9b <_ZN5Xbyak13CodeGeneratorD1Ev+0x9b>
  9b:	48 8b bb 28 01 00 00 	mov    0x128(%rbx),%rdi
  a2:	48 8d 83 58 01 00 00 	lea    0x158(%rbx),%rax
  a9:	48 c7 83 40 01 00 00 	movq   $0x0,0x140(%rbx)
  b0:	00 00 00 00 
  b4:	48 c7 83 38 01 00 00 	movq   $0x0,0x138(%rbx)
  bb:	00 00 00 00 
  bf:	48 39 c7             	cmp    %rax,%rdi
  c2:	74 05                	je     c9 <_ZN5Xbyak13CodeGeneratorD1Ev+0xc9>
  c4:	e8 00 00 00 00       	callq  c9 <_ZN5Xbyak13CodeGeneratorD1Ev+0xc9>
  c9:	48 8b ab 00 01 00 00 	mov    0x100(%rbx),%rbp
  d0:	48 85 ed             	test   %rbp,%rbp
  d3:	74 14                	je     e9 <_ZN5Xbyak13CodeGeneratorD1Ev+0xe9>
  d5:	0f 1f 00             	nopl   (%rax)
  d8:	48 89 ef             	mov    %rbp,%rdi
  db:	48 8b 6d 00          	mov    0x0(%rbp),%rbp
  df:	e8 00 00 00 00       	callq  e4 <_ZN5Xbyak13CodeGeneratorD1Ev+0xe4>
  e4:	48 85 ed             	test   %rbp,%rbp
  e7:	75 ef                	jne    d8 <_ZN5Xbyak13CodeGeneratorD1Ev+0xd8>
  e9:	48 8b 83 f8 00 00 00 	mov    0xf8(%rbx),%rax
  f0:	48 8b bb f0 00 00 00 	mov    0xf0(%rbx),%rdi
  f7:	31 f6                	xor    %esi,%esi
  f9:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
 100:	00 
 101:	e8 00 00 00 00       	callq  106 <_ZN5Xbyak13CodeGeneratorD1Ev+0x106>
 106:	48 8b bb f0 00 00 00 	mov    0xf0(%rbx),%rdi
 10d:	48 8d 83 20 01 00 00 	lea    0x120(%rbx),%rax
 114:	48 c7 83 08 01 00 00 	movq   $0x0,0x108(%rbx)
 11b:	00 00 00 00 
 11f:	48 c7 83 00 01 00 00 	movq   $0x0,0x100(%rbx)
 126:	00 00 00 00 
 12a:	48 39 c7             	cmp    %rax,%rdi
 12d:	74 05                	je     134 <_ZN5Xbyak13CodeGeneratorD1Ev+0x134>
 12f:	e8 00 00 00 00       	callq  134 <_ZN5Xbyak13CodeGeneratorD1Ev+0x134>
 134:	48 8b ab c8 00 00 00 	mov    0xc8(%rbx),%rbp
 13b:	48 85 ed             	test   %rbp,%rbp
 13e:	74 11                	je     151 <_ZN5Xbyak13CodeGeneratorD1Ev+0x151>
 140:	48 89 ef             	mov    %rbp,%rdi
 143:	48 8b 6d 00          	mov    0x0(%rbp),%rbp
 147:	e8 00 00 00 00       	callq  14c <_ZN5Xbyak13CodeGeneratorD1Ev+0x14c>
 14c:	48 85 ed             	test   %rbp,%rbp
 14f:	75 ef                	jne    140 <_ZN5Xbyak13CodeGeneratorD1Ev+0x140>
 151:	48 8b 83 c0 00 00 00 	mov    0xc0(%rbx),%rax
 158:	48 8b bb b8 00 00 00 	mov    0xb8(%rbx),%rdi
 15f:	31 f6                	xor    %esi,%esi
 161:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
 168:	00 
 169:	e8 00 00 00 00       	callq  16e <_ZN5Xbyak13CodeGeneratorD1Ev+0x16e>
 16e:	48 8b bb b8 00 00 00 	mov    0xb8(%rbx),%rdi
 175:	48 8d 83 e8 00 00 00 	lea    0xe8(%rbx),%rax
 17c:	48 c7 83 d0 00 00 00 	movq   $0x0,0xd0(%rbx)
 183:	00 00 00 00 
 187:	48 c7 83 c8 00 00 00 	movq   $0x0,0xc8(%rbx)
 18e:	00 00 00 00 
 192:	48 39 c7             	cmp    %rax,%rdi
 195:	74 05                	je     19c <_ZN5Xbyak13CodeGeneratorD1Ev+0x19c>
 197:	e8 00 00 00 00       	callq  19c <_ZN5Xbyak13CodeGeneratorD1Ev+0x19c>
 19c:	48 8d bb 98 00 00 00 	lea    0x98(%rbx),%rdi
 1a3:	e8 00 00 00 00       	callq  1a8 <_ZN5Xbyak13CodeGeneratorD1Ev+0x1a8>
 1a8:	48 8b 05 00 00 00 00 	mov    0x0(%rip),%rax        # 1af <_ZN5Xbyak13CodeGeneratorD1Ev+0x1af>
 1af:	48 83 c0 10          	add    $0x10,%rax
 1b3:	48 89 03             	mov    %rax,(%rbx)
 1b6:	8b 43 20             	mov    0x20(%rbx),%eax
 1b9:	83 e8 02             	sub    $0x2,%eax
 1bc:	83 f8 01             	cmp    $0x1,%eax
 1bf:	0f 86 9b 00 00 00    	jbe    260 <_ZN5Xbyak13CodeGeneratorD1Ev+0x260>
 1c5:	48 8b 05 00 00 00 00 	mov    0x0(%rip),%rax        # 1cc <_ZN5Xbyak13CodeGeneratorD1Ev+0x1cc>
 1cc:	48 8b 6b 40          	mov    0x40(%rbx),%rbp
 1d0:	48 83 c0 10          	add    $0x10,%rax
 1d4:	48 89 43 28          	mov    %rax,0x28(%rbx)
 1d8:	48 85 ed             	test   %rbp,%rbp
 1db:	74 14                	je     1f1 <_ZN5Xbyak13CodeGeneratorD1Ev+0x1f1>
 1dd:	0f 1f 00             	nopl   (%rax)
 1e0:	48 89 ef             	mov    %rbp,%rdi
 1e3:	48 8b 6d 00          	mov    0x0(%rbp),%rbp
 1e7:	e8 00 00 00 00       	callq  1ec <_ZN5Xbyak13CodeGeneratorD1Ev+0x1ec>
 1ec:	48 85 ed             	test   %rbp,%rbp
 1ef:	75 ef                	jne    1e0 <_ZN5Xbyak13CodeGeneratorD1Ev+0x1e0>
 1f1:	48 8b 43 38          	mov    0x38(%rbx),%rax
 1f5:	48 8b 7b 30          	mov    0x30(%rbx),%rdi
 1f9:	31 f6                	xor    %esi,%esi
 1fb:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
 202:	00 
 203:	e8 00 00 00 00       	callq  208 <_ZN5Xbyak13CodeGeneratorD1Ev+0x208>
 208:	48 8b 7b 30          	mov    0x30(%rbx),%rdi
 20c:	48 8d 43 60          	lea    0x60(%rbx),%rax
 210:	48 c7 43 48 00 00 00 	movq   $0x0,0x48(%rbx)
 217:	00 
 218:	48 c7 43 40 00 00 00 	movq   $0x0,0x40(%rbx)
 21f:	00 
 220:	48 39 c7             	cmp    %rax,%rdi
 223:	74 05                	je     22a <_ZN5Xbyak13CodeGeneratorD1Ev+0x22a>
 225:	e8 00 00 00 00       	callq  22a <_ZN5Xbyak13CodeGeneratorD1Ev+0x22a>
 22a:	48 8b 6b 08          	mov    0x8(%rbx),%rbp
 22e:	48 83 c3 08          	add    $0x8,%rbx
 232:	48 39 dd             	cmp    %rbx,%rbp
 235:	74 1a                	je     251 <_ZN5Xbyak13CodeGeneratorD1Ev+0x251>
 237:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
 23e:	00 00 
 240:	48 89 ef             	mov    %rbp,%rdi
 243:	48 8b 6d 00          	mov    0x0(%rbp),%rbp
 247:	e8 00 00 00 00       	callq  24c <_ZN5Xbyak13CodeGeneratorD1Ev+0x24c>
 24c:	48 39 dd             	cmp    %rbx,%rbp
 24f:	75 ef                	jne    240 <_ZN5Xbyak13CodeGeneratorD1Ev+0x240>
 251:	5b                   	pop    %rbx
 252:	5d                   	pop    %rbp
 253:	41 5c                	pop    %r12
 255:	c3                   	retq   
 256:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 25d:	00 00 00 
 260:	48 8b 7b 68          	mov    0x68(%rbx),%rdi
 264:	48 8b 07             	mov    (%rdi),%rax
 267:	48 8b 40 20          	mov    0x20(%rax),%rax
 26b:	48 3b 05 00 00 00 00 	cmp    0x0(%rip),%rax        # 272 <_ZN5Xbyak13CodeGeneratorD1Ev+0x272>
 272:	75 44                	jne    2b8 <_ZN5Xbyak13CodeGeneratorD1Ev+0x2b8>
 274:	bf 1e 00 00 00       	mov    $0x1e,%edi
 279:	4c 8b 63 78          	mov    0x78(%rbx),%r12
 27d:	48 8b 6b 70          	mov    0x70(%rbx),%rbp
 281:	e8 00 00 00 00       	callq  286 <_ZN5Xbyak13CodeGeneratorD1Ev+0x286>
 286:	ba 03 00 00 00       	mov    $0x3,%edx
 28b:	48 f7 d8             	neg    %rax
 28e:	4a 8d 74 25 00       	lea    0x0(%rbp,%r12,1),%rsi
 293:	48 89 c7             	mov    %rax,%rdi
 296:	4c 21 e7             	and    %r12,%rdi
 299:	48 29 fe             	sub    %rdi,%rsi
 29c:	e8 00 00 00 00       	callq  2a1 <_ZN5Xbyak13CodeGeneratorD1Ev+0x2a1>
 2a1:	48 8b 7b 68          	mov    0x68(%rbx),%rdi
 2a5:	48 8b 73 78          	mov    0x78(%rbx),%rsi
 2a9:	48 8b 07             	mov    (%rdi),%rax
 2ac:	ff 50 08             	callq  *0x8(%rax)
 2af:	e9 11 ff ff ff       	jmpq   1c5 <_ZN5Xbyak13CodeGeneratorD1Ev+0x1c5>
 2b4:	0f 1f 40 00          	nopl   0x0(%rax)
 2b8:	ff d0                	callq  *%rax
 2ba:	84 c0                	test   %al,%al
 2bc:	74 e3                	je     2a1 <_ZN5Xbyak13CodeGeneratorD1Ev+0x2a1>
 2be:	eb b4                	jmp    274 <_ZN5Xbyak13CodeGeneratorD1Ev+0x274>

Disassembly of section .text._ZN4CodeD2Ev:

0000000000000000 <_ZN4CodeD1Ev>:
   0:	f3 0f 1e fa          	endbr64 
   4:	48 8b 05 00 00 00 00 	mov    0x0(%rip),%rax        # b <_ZN4CodeD1Ev+0xb>
   b:	41 54                	push   %r12
   d:	55                   	push   %rbp
   e:	53                   	push   %rbx
   f:	48 8b af 38 01 00 00 	mov    0x138(%rdi),%rbp
  16:	48 83 c0 10          	add    $0x10,%rax
  1a:	48 89 fb             	mov    %rdi,%rbx
  1d:	48 89 07             	mov    %rax,(%rdi)
  20:	48 85 ed             	test   %rbp,%rbp
  23:	74 3c                	je     61 <_ZN4CodeD1Ev+0x61>
  25:	48 89 e8             	mov    %rbp,%rax
  28:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  2f:	00 
  30:	48 8b 50 08          	mov    0x8(%rax),%rdx
  34:	48 8b 00             	mov    (%rax),%rax
  37:	48 c7 02 00 00 00 00 	movq   $0x0,(%rdx)
  3e:	c7 42 08 00 00 00 00 	movl   $0x0,0x8(%rdx)
  45:	48 85 c0             	test   %rax,%rax
  48:	75 e6                	jne    30 <_ZN4CodeD1Ev+0x30>
  4a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  50:	48 89 ef             	mov    %rbp,%rdi
  53:	48 8b 6d 00          	mov    0x0(%rbp),%rbp
  57:	e8 00 00 00 00       	callq  5c <_ZN4CodeD1Ev+0x5c>
  5c:	48 85 ed             	test   %rbp,%rbp
  5f:	75 ef                	jne    50 <_ZN4CodeD1Ev+0x50>
  61:	48 8b 83 30 01 00 00 	mov    0x130(%rbx),%rax
  68:	48 8b bb 28 01 00 00 	mov    0x128(%rbx),%rdi
  6f:	31 f6                	xor    %esi,%esi
  71:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
  78:	00 
  79:	e8 00 00 00 00       	callq  7e <_ZN4CodeD1Ev+0x7e>
  7e:	48 8b 83 30 01 00 00 	mov    0x130(%rbx),%rax
  85:	48 8b bb 28 01 00 00 	mov    0x128(%rbx),%rdi
  8c:	31 f6                	xor    %esi,%esi
  8e:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
  95:	00 
  96:	e8 00 00 00 00       	callq  9b <_ZN4CodeD1Ev+0x9b>
  9b:	48 8b bb 28 01 00 00 	mov    0x128(%rbx),%rdi
  a2:	48 8d 83 58 01 00 00 	lea    0x158(%rbx),%rax
  a9:	48 c7 83 40 01 00 00 	movq   $0x0,0x140(%rbx)
  b0:	00 00 00 00 
  b4:	48 c7 83 38 01 00 00 	movq   $0x0,0x138(%rbx)
  bb:	00 00 00 00 
  bf:	48 39 c7             	cmp    %rax,%rdi
  c2:	74 05                	je     c9 <_ZN4CodeD1Ev+0xc9>
  c4:	e8 00 00 00 00       	callq  c9 <_ZN4CodeD1Ev+0xc9>
  c9:	48 8b ab 00 01 00 00 	mov    0x100(%rbx),%rbp
  d0:	48 85 ed             	test   %rbp,%rbp
  d3:	74 14                	je     e9 <_ZN4CodeD1Ev+0xe9>
  d5:	0f 1f 00             	nopl   (%rax)
  d8:	48 89 ef             	mov    %rbp,%rdi
  db:	48 8b 6d 00          	mov    0x0(%rbp),%rbp
  df:	e8 00 00 00 00       	callq  e4 <_ZN4CodeD1Ev+0xe4>
  e4:	48 85 ed             	test   %rbp,%rbp
  e7:	75 ef                	jne    d8 <_ZN4CodeD1Ev+0xd8>
  e9:	48 8b 83 f8 00 00 00 	mov    0xf8(%rbx),%rax
  f0:	48 8b bb f0 00 00 00 	mov    0xf0(%rbx),%rdi
  f7:	31 f6                	xor    %esi,%esi
  f9:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
 100:	00 
 101:	e8 00 00 00 00       	callq  106 <_ZN4CodeD1Ev+0x106>
 106:	48 8b bb f0 00 00 00 	mov    0xf0(%rbx),%rdi
 10d:	48 8d 83 20 01 00 00 	lea    0x120(%rbx),%rax
 114:	48 c7 83 08 01 00 00 	movq   $0x0,0x108(%rbx)
 11b:	00 00 00 00 
 11f:	48 c7 83 00 01 00 00 	movq   $0x0,0x100(%rbx)
 126:	00 00 00 00 
 12a:	48 39 c7             	cmp    %rax,%rdi
 12d:	74 05                	je     134 <_ZN4CodeD1Ev+0x134>
 12f:	e8 00 00 00 00       	callq  134 <_ZN4CodeD1Ev+0x134>
 134:	48 8b ab c8 00 00 00 	mov    0xc8(%rbx),%rbp
 13b:	48 85 ed             	test   %rbp,%rbp
 13e:	74 11                	je     151 <_ZN4CodeD1Ev+0x151>
 140:	48 89 ef             	mov    %rbp,%rdi
 143:	48 8b 6d 00          	mov    0x0(%rbp),%rbp
 147:	e8 00 00 00 00       	callq  14c <_ZN4CodeD1Ev+0x14c>
 14c:	48 85 ed             	test   %rbp,%rbp
 14f:	75 ef                	jne    140 <_ZN4CodeD1Ev+0x140>
 151:	48 8b 83 c0 00 00 00 	mov    0xc0(%rbx),%rax
 158:	48 8b bb b8 00 00 00 	mov    0xb8(%rbx),%rdi
 15f:	31 f6                	xor    %esi,%esi
 161:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
 168:	00 
 169:	e8 00 00 00 00       	callq  16e <_ZN4CodeD1Ev+0x16e>
 16e:	48 8b bb b8 00 00 00 	mov    0xb8(%rbx),%rdi
 175:	48 8d 83 e8 00 00 00 	lea    0xe8(%rbx),%rax
 17c:	48 c7 83 d0 00 00 00 	movq   $0x0,0xd0(%rbx)
 183:	00 00 00 00 
 187:	48 c7 83 c8 00 00 00 	movq   $0x0,0xc8(%rbx)
 18e:	00 00 00 00 
 192:	48 39 c7             	cmp    %rax,%rdi
 195:	74 05                	je     19c <_ZN4CodeD1Ev+0x19c>
 197:	e8 00 00 00 00       	callq  19c <_ZN4CodeD1Ev+0x19c>
 19c:	48 8d bb 98 00 00 00 	lea    0x98(%rbx),%rdi
 1a3:	e8 00 00 00 00       	callq  1a8 <_ZN4CodeD1Ev+0x1a8>
 1a8:	48 8b 05 00 00 00 00 	mov    0x0(%rip),%rax        # 1af <_ZN4CodeD1Ev+0x1af>
 1af:	48 83 c0 10          	add    $0x10,%rax
 1b3:	48 89 03             	mov    %rax,(%rbx)
 1b6:	8b 43 20             	mov    0x20(%rbx),%eax
 1b9:	83 e8 02             	sub    $0x2,%eax
 1bc:	83 f8 01             	cmp    $0x1,%eax
 1bf:	0f 86 9b 00 00 00    	jbe    260 <_ZN4CodeD1Ev+0x260>
 1c5:	48 8b 05 00 00 00 00 	mov    0x0(%rip),%rax        # 1cc <_ZN4CodeD1Ev+0x1cc>
 1cc:	48 8b 6b 40          	mov    0x40(%rbx),%rbp
 1d0:	48 83 c0 10          	add    $0x10,%rax
 1d4:	48 89 43 28          	mov    %rax,0x28(%rbx)
 1d8:	48 85 ed             	test   %rbp,%rbp
 1db:	74 14                	je     1f1 <_ZN4CodeD1Ev+0x1f1>
 1dd:	0f 1f 00             	nopl   (%rax)
 1e0:	48 89 ef             	mov    %rbp,%rdi
 1e3:	48 8b 6d 00          	mov    0x0(%rbp),%rbp
 1e7:	e8 00 00 00 00       	callq  1ec <_ZN4CodeD1Ev+0x1ec>
 1ec:	48 85 ed             	test   %rbp,%rbp
 1ef:	75 ef                	jne    1e0 <_ZN4CodeD1Ev+0x1e0>
 1f1:	48 8b 43 38          	mov    0x38(%rbx),%rax
 1f5:	48 8b 7b 30          	mov    0x30(%rbx),%rdi
 1f9:	31 f6                	xor    %esi,%esi
 1fb:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
 202:	00 
 203:	e8 00 00 00 00       	callq  208 <_ZN4CodeD1Ev+0x208>
 208:	48 8b 7b 30          	mov    0x30(%rbx),%rdi
 20c:	48 8d 43 60          	lea    0x60(%rbx),%rax
 210:	48 c7 43 48 00 00 00 	movq   $0x0,0x48(%rbx)
 217:	00 
 218:	48 c7 43 40 00 00 00 	movq   $0x0,0x40(%rbx)
 21f:	00 
 220:	48 39 c7             	cmp    %rax,%rdi
 223:	74 05                	je     22a <_ZN4CodeD1Ev+0x22a>
 225:	e8 00 00 00 00       	callq  22a <_ZN4CodeD1Ev+0x22a>
 22a:	48 8b 6b 08          	mov    0x8(%rbx),%rbp
 22e:	48 83 c3 08          	add    $0x8,%rbx
 232:	48 39 dd             	cmp    %rbx,%rbp
 235:	74 1a                	je     251 <_ZN4CodeD1Ev+0x251>
 237:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
 23e:	00 00 
 240:	48 89 ef             	mov    %rbp,%rdi
 243:	48 8b 6d 00          	mov    0x0(%rbp),%rbp
 247:	e8 00 00 00 00       	callq  24c <_ZN4CodeD1Ev+0x24c>
 24c:	48 39 dd             	cmp    %rbx,%rbp
 24f:	75 ef                	jne    240 <_ZN4CodeD1Ev+0x240>
 251:	5b                   	pop    %rbx
 252:	5d                   	pop    %rbp
 253:	41 5c                	pop    %r12
 255:	c3                   	retq   
 256:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 25d:	00 00 00 
 260:	48 8b 7b 68          	mov    0x68(%rbx),%rdi
 264:	48 8b 07             	mov    (%rdi),%rax
 267:	48 8b 40 20          	mov    0x20(%rax),%rax
 26b:	48 3b 05 00 00 00 00 	cmp    0x0(%rip),%rax        # 272 <_ZN4CodeD1Ev+0x272>
 272:	75 44                	jne    2b8 <_ZN4CodeD1Ev+0x2b8>
 274:	bf 1e 00 00 00       	mov    $0x1e,%edi
 279:	4c 8b 63 78          	mov    0x78(%rbx),%r12
 27d:	48 8b 6b 70          	mov    0x70(%rbx),%rbp
 281:	e8 00 00 00 00       	callq  286 <_ZN4CodeD1Ev+0x286>
 286:	ba 03 00 00 00       	mov    $0x3,%edx
 28b:	48 f7 d8             	neg    %rax
 28e:	4a 8d 74 25 00       	lea    0x0(%rbp,%r12,1),%rsi
 293:	48 89 c7             	mov    %rax,%rdi
 296:	4c 21 e7             	and    %r12,%rdi
 299:	48 29 fe             	sub    %rdi,%rsi
 29c:	e8 00 00 00 00       	callq  2a1 <_ZN4CodeD1Ev+0x2a1>
 2a1:	48 8b 7b 68          	mov    0x68(%rbx),%rdi
 2a5:	48 8b 73 78          	mov    0x78(%rbx),%rsi
 2a9:	48 8b 07             	mov    (%rdi),%rax
 2ac:	ff 50 08             	callq  *0x8(%rax)
 2af:	e9 11 ff ff ff       	jmpq   1c5 <_ZN4CodeD1Ev+0x1c5>
 2b4:	0f 1f 40 00          	nopl   0x0(%rax)
 2b8:	ff d0                	callq  *%rax
 2ba:	84 c0                	test   %al,%al
 2bc:	74 e3                	je     2a1 <_ZN4CodeD1Ev+0x2a1>
 2be:	eb b4                	jmp    274 <_ZN4CodeD1Ev+0x274>

Disassembly of section .text._ZN5Xbyak13CodeGeneratorD0Ev:

0000000000000000 <_ZN5Xbyak13CodeGeneratorD0Ev>:
   0:	f3 0f 1e fa          	endbr64 
   4:	48 8b 05 00 00 00 00 	mov    0x0(%rip),%rax        # b <_ZN5Xbyak13CodeGeneratorD0Ev+0xb>
   b:	41 54                	push   %r12
   d:	55                   	push   %rbp
   e:	48 89 fd             	mov    %rdi,%rbp
  11:	53                   	push   %rbx
  12:	48 8b 9f 38 01 00 00 	mov    0x138(%rdi),%rbx
  19:	48 83 c0 10          	add    $0x10,%rax
  1d:	48 89 07             	mov    %rax,(%rdi)
  20:	48 85 db             	test   %rbx,%rbx
  23:	74 3b                	je     60 <_ZN5Xbyak13CodeGeneratorD0Ev+0x60>
  25:	48 89 d8             	mov    %rbx,%rax
  28:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  2f:	00 
  30:	48 8b 50 08          	mov    0x8(%rax),%rdx
  34:	48 8b 00             	mov    (%rax),%rax
  37:	48 c7 02 00 00 00 00 	movq   $0x0,(%rdx)
  3e:	c7 42 08 00 00 00 00 	movl   $0x0,0x8(%rdx)
  45:	48 85 c0             	test   %rax,%rax
  48:	75 e6                	jne    30 <_ZN5Xbyak13CodeGeneratorD0Ev+0x30>
  4a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  50:	48 89 df             	mov    %rbx,%rdi
  53:	48 8b 1b             	mov    (%rbx),%rbx
  56:	e8 00 00 00 00       	callq  5b <_ZN5Xbyak13CodeGeneratorD0Ev+0x5b>
  5b:	48 85 db             	test   %rbx,%rbx
  5e:	75 f0                	jne    50 <_ZN5Xbyak13CodeGeneratorD0Ev+0x50>
  60:	48 8b 85 30 01 00 00 	mov    0x130(%rbp),%rax
  67:	48 8b bd 28 01 00 00 	mov    0x128(%rbp),%rdi
  6e:	31 f6                	xor    %esi,%esi
  70:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
  77:	00 
  78:	e8 00 00 00 00       	callq  7d <_ZN5Xbyak13CodeGeneratorD0Ev+0x7d>
  7d:	48 8b 85 30 01 00 00 	mov    0x130(%rbp),%rax
  84:	48 8b bd 28 01 00 00 	mov    0x128(%rbp),%rdi
  8b:	31 f6                	xor    %esi,%esi
  8d:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
  94:	00 
  95:	e8 00 00 00 00       	callq  9a <_ZN5Xbyak13CodeGeneratorD0Ev+0x9a>
  9a:	48 8b bd 28 01 00 00 	mov    0x128(%rbp),%rdi
  a1:	48 8d 85 58 01 00 00 	lea    0x158(%rbp),%rax
  a8:	48 c7 85 40 01 00 00 	movq   $0x0,0x140(%rbp)
  af:	00 00 00 00 
  b3:	48 c7 85 38 01 00 00 	movq   $0x0,0x138(%rbp)
  ba:	00 00 00 00 
  be:	48 39 c7             	cmp    %rax,%rdi
  c1:	74 05                	je     c8 <_ZN5Xbyak13CodeGeneratorD0Ev+0xc8>
  c3:	e8 00 00 00 00       	callq  c8 <_ZN5Xbyak13CodeGeneratorD0Ev+0xc8>
  c8:	48 8b 9d 00 01 00 00 	mov    0x100(%rbp),%rbx
  cf:	48 85 db             	test   %rbx,%rbx
  d2:	74 14                	je     e8 <_ZN5Xbyak13CodeGeneratorD0Ev+0xe8>
  d4:	0f 1f 40 00          	nopl   0x0(%rax)
  d8:	48 89 df             	mov    %rbx,%rdi
  db:	48 8b 1b             	mov    (%rbx),%rbx
  de:	e8 00 00 00 00       	callq  e3 <_ZN5Xbyak13CodeGeneratorD0Ev+0xe3>
  e3:	48 85 db             	test   %rbx,%rbx
  e6:	75 f0                	jne    d8 <_ZN5Xbyak13CodeGeneratorD0Ev+0xd8>
  e8:	48 8b 85 f8 00 00 00 	mov    0xf8(%rbp),%rax
  ef:	48 8b bd f0 00 00 00 	mov    0xf0(%rbp),%rdi
  f6:	31 f6                	xor    %esi,%esi
  f8:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
  ff:	00 
 100:	e8 00 00 00 00       	callq  105 <_ZN5Xbyak13CodeGeneratorD0Ev+0x105>
 105:	48 8b bd f0 00 00 00 	mov    0xf0(%rbp),%rdi
 10c:	48 8d 85 20 01 00 00 	lea    0x120(%rbp),%rax
 113:	48 c7 85 08 01 00 00 	movq   $0x0,0x108(%rbp)
 11a:	00 00 00 00 
 11e:	48 c7 85 00 01 00 00 	movq   $0x0,0x100(%rbp)
 125:	00 00 00 00 
 129:	48 39 c7             	cmp    %rax,%rdi
 12c:	74 05                	je     133 <_ZN5Xbyak13CodeGeneratorD0Ev+0x133>
 12e:	e8 00 00 00 00       	callq  133 <_ZN5Xbyak13CodeGeneratorD0Ev+0x133>
 133:	48 8b 9d c8 00 00 00 	mov    0xc8(%rbp),%rbx
 13a:	48 85 db             	test   %rbx,%rbx
 13d:	74 11                	je     150 <_ZN5Xbyak13CodeGeneratorD0Ev+0x150>
 13f:	90                   	nop
 140:	48 89 df             	mov    %rbx,%rdi
 143:	48 8b 1b             	mov    (%rbx),%rbx
 146:	e8 00 00 00 00       	callq  14b <_ZN5Xbyak13CodeGeneratorD0Ev+0x14b>
 14b:	48 85 db             	test   %rbx,%rbx
 14e:	75 f0                	jne    140 <_ZN5Xbyak13CodeGeneratorD0Ev+0x140>
 150:	48 8b 85 c0 00 00 00 	mov    0xc0(%rbp),%rax
 157:	48 8b bd b8 00 00 00 	mov    0xb8(%rbp),%rdi
 15e:	31 f6                	xor    %esi,%esi
 160:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
 167:	00 
 168:	e8 00 00 00 00       	callq  16d <_ZN5Xbyak13CodeGeneratorD0Ev+0x16d>
 16d:	48 8b bd b8 00 00 00 	mov    0xb8(%rbp),%rdi
 174:	48 8d 85 e8 00 00 00 	lea    0xe8(%rbp),%rax
 17b:	48 c7 85 d0 00 00 00 	movq   $0x0,0xd0(%rbp)
 182:	00 00 00 00 
 186:	48 c7 85 c8 00 00 00 	movq   $0x0,0xc8(%rbp)
 18d:	00 00 00 00 
 191:	48 39 c7             	cmp    %rax,%rdi
 194:	74 05                	je     19b <_ZN5Xbyak13CodeGeneratorD0Ev+0x19b>
 196:	e8 00 00 00 00       	callq  19b <_ZN5Xbyak13CodeGeneratorD0Ev+0x19b>
 19b:	48 8d bd 98 00 00 00 	lea    0x98(%rbp),%rdi
 1a2:	e8 00 00 00 00       	callq  1a7 <_ZN5Xbyak13CodeGeneratorD0Ev+0x1a7>
 1a7:	48 8b 05 00 00 00 00 	mov    0x0(%rip),%rax        # 1ae <_ZN5Xbyak13CodeGeneratorD0Ev+0x1ae>
 1ae:	48 83 c0 10          	add    $0x10,%rax
 1b2:	48 89 45 00          	mov    %rax,0x0(%rbp)
 1b6:	8b 45 20             	mov    0x20(%rbp),%eax
 1b9:	83 e8 02             	sub    $0x2,%eax
 1bc:	83 f8 01             	cmp    $0x1,%eax
 1bf:	0f 86 a3 00 00 00    	jbe    268 <_ZN5Xbyak13CodeGeneratorD0Ev+0x268>
 1c5:	48 8b 05 00 00 00 00 	mov    0x0(%rip),%rax        # 1cc <_ZN5Xbyak13CodeGeneratorD0Ev+0x1cc>
 1cc:	48 8b 5d 40          	mov    0x40(%rbp),%rbx
 1d0:	48 83 c0 10          	add    $0x10,%rax
 1d4:	48 89 45 28          	mov    %rax,0x28(%rbp)
 1d8:	48 85 db             	test   %rbx,%rbx
 1db:	74 13                	je     1f0 <_ZN5Xbyak13CodeGeneratorD0Ev+0x1f0>
 1dd:	0f 1f 00             	nopl   (%rax)
 1e0:	48 89 df             	mov    %rbx,%rdi
 1e3:	48 8b 1b             	mov    (%rbx),%rbx
 1e6:	e8 00 00 00 00       	callq  1eb <_ZN5Xbyak13CodeGeneratorD0Ev+0x1eb>
 1eb:	48 85 db             	test   %rbx,%rbx
 1ee:	75 f0                	jne    1e0 <_ZN5Xbyak13CodeGeneratorD0Ev+0x1e0>
 1f0:	48 8b 45 38          	mov    0x38(%rbp),%rax
 1f4:	48 8b 7d 30          	mov    0x30(%rbp),%rdi
 1f8:	31 f6                	xor    %esi,%esi
 1fa:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
 201:	00 
 202:	e8 00 00 00 00       	callq  207 <_ZN5Xbyak13CodeGeneratorD0Ev+0x207>
 207:	48 8b 7d 30          	mov    0x30(%rbp),%rdi
 20b:	48 8d 45 60          	lea    0x60(%rbp),%rax
 20f:	48 c7 45 48 00 00 00 	movq   $0x0,0x48(%rbp)
 216:	00 
 217:	48 c7 45 40 00 00 00 	movq   $0x0,0x40(%rbp)
 21e:	00 
 21f:	48 39 c7             	cmp    %rax,%rdi
 222:	74 05                	je     229 <_ZN5Xbyak13CodeGeneratorD0Ev+0x229>
 224:	e8 00 00 00 00       	callq  229 <_ZN5Xbyak13CodeGeneratorD0Ev+0x229>
 229:	48 8b 5d 08          	mov    0x8(%rbp),%rbx
 22d:	4c 8d 65 08          	lea    0x8(%rbp),%r12
 231:	4c 39 e3             	cmp    %r12,%rbx
 234:	74 1a                	je     250 <_ZN5Xbyak13CodeGeneratorD0Ev+0x250>
 236:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 23d:	00 00 00 
 240:	48 89 df             	mov    %rbx,%rdi
 243:	48 8b 1b             	mov    (%rbx),%rbx
 246:	e8 00 00 00 00       	callq  24b <_ZN5Xbyak13CodeGeneratorD0Ev+0x24b>
 24b:	4c 39 e3             	cmp    %r12,%rbx
 24e:	75 f0                	jne    240 <_ZN5Xbyak13CodeGeneratorD0Ev+0x240>
 250:	5b                   	pop    %rbx
 251:	48 89 ef             	mov    %rbp,%rdi
 254:	be 50 0b 00 00       	mov    $0xb50,%esi
 259:	5d                   	pop    %rbp
 25a:	41 5c                	pop    %r12
 25c:	e9 00 00 00 00       	jmpq   261 <_ZN5Xbyak13CodeGeneratorD0Ev+0x261>
 261:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
 268:	48 8b 7d 68          	mov    0x68(%rbp),%rdi
 26c:	48 8b 07             	mov    (%rdi),%rax
 26f:	48 8b 40 20          	mov    0x20(%rax),%rax
 273:	48 3b 05 00 00 00 00 	cmp    0x0(%rip),%rax        # 27a <_ZN5Xbyak13CodeGeneratorD0Ev+0x27a>
 27a:	75 44                	jne    2c0 <_ZN5Xbyak13CodeGeneratorD0Ev+0x2c0>
 27c:	bf 1e 00 00 00       	mov    $0x1e,%edi
 281:	4c 8b 65 78          	mov    0x78(%rbp),%r12
 285:	48 8b 5d 70          	mov    0x70(%rbp),%rbx
 289:	e8 00 00 00 00       	callq  28e <_ZN5Xbyak13CodeGeneratorD0Ev+0x28e>
 28e:	ba 03 00 00 00       	mov    $0x3,%edx
 293:	48 f7 d8             	neg    %rax
 296:	4a 8d 34 23          	lea    (%rbx,%r12,1),%rsi
 29a:	48 89 c7             	mov    %rax,%rdi
 29d:	4c 21 e7             	and    %r12,%rdi
 2a0:	48 29 fe             	sub    %rdi,%rsi
 2a3:	e8 00 00 00 00       	callq  2a8 <_ZN5Xbyak13CodeGeneratorD0Ev+0x2a8>
 2a8:	48 8b 7d 68          	mov    0x68(%rbp),%rdi
 2ac:	48 8b 75 78          	mov    0x78(%rbp),%rsi
 2b0:	48 8b 07             	mov    (%rdi),%rax
 2b3:	ff 50 08             	callq  *0x8(%rax)
 2b6:	e9 0a ff ff ff       	jmpq   1c5 <_ZN5Xbyak13CodeGeneratorD0Ev+0x1c5>
 2bb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
 2c0:	ff d0                	callq  *%rax
 2c2:	84 c0                	test   %al,%al
 2c4:	74 e2                	je     2a8 <_ZN5Xbyak13CodeGeneratorD0Ev+0x2a8>
 2c6:	eb b4                	jmp    27c <_ZN5Xbyak13CodeGeneratorD0Ev+0x27c>

Disassembly of section .text._ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRS1_:

0000000000000000 <_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRS1_>:
   0:	f3 0f 1e fa          	endbr64 
   4:	41 55                	push   %r13
   6:	41 54                	push   %r12
   8:	55                   	push   %rbp
   9:	48 89 f5             	mov    %rsi,%rbp
   c:	53                   	push   %rbx
   d:	48 89 fb             	mov    %rdi,%rbx
  10:	48 83 ec 08          	sub    $0x8,%rsp
  14:	48 83 fe 01          	cmp    $0x1,%rsi
  18:	0f 84 da 00 00 00    	je     f8 <_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRS1_+0xf8>
  1e:	48 b8 ff ff ff ff ff 	movabs $0xfffffffffffffff,%rax
  25:	ff ff 0f 
  28:	49 89 d4             	mov    %rdx,%r12
  2b:	48 39 c6             	cmp    %rax,%rsi
  2e:	0f 87 d8 00 00 00    	ja     10c <_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRS1_+0x10c>
  34:	4c 8d 2c f5 00 00 00 	lea    0x0(,%rsi,8),%r13
  3b:	00 
  3c:	4c 89 ef             	mov    %r13,%rdi
  3f:	e8 00 00 00 00       	callq  44 <_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRS1_+0x44>
  44:	4c 89 ea             	mov    %r13,%rdx
  47:	31 f6                	xor    %esi,%esi
  49:	48 89 c7             	mov    %rax,%rdi
  4c:	49 89 c4             	mov    %rax,%r12
  4f:	e8 00 00 00 00       	callq  54 <_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRS1_+0x54>
  54:	4c 8d 4b 30          	lea    0x30(%rbx),%r9
  58:	48 8b 73 10          	mov    0x10(%rbx),%rsi
  5c:	48 c7 43 10 00 00 00 	movq   $0x0,0x10(%rbx)
  63:	00 
  64:	48 85 f6             	test   %rsi,%rsi
  67:	74 5f                	je     c8 <_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRS1_+0xc8>
  69:	45 31 c0             	xor    %r8d,%r8d
  6c:	4c 8d 53 10          	lea    0x10(%rbx),%r10
  70:	eb 17                	jmp    89 <_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRS1_+0x89>
  72:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  78:	48 8b 00             	mov    (%rax),%rax
  7b:	48 89 01             	mov    %rax,(%rcx)
  7e:	48 8b 07             	mov    (%rdi),%rax
  81:	48 89 08             	mov    %rcx,(%rax)
  84:	48 85 f6             	test   %rsi,%rsi
  87:	74 3f                	je     c8 <_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRS1_+0xc8>
  89:	48 89 f1             	mov    %rsi,%rcx
  8c:	31 d2                	xor    %edx,%edx
  8e:	48 8b 36             	mov    (%rsi),%rsi
  91:	48 8b 41 08          	mov    0x8(%rcx),%rax
  95:	48 f7 f5             	div    %rbp
  98:	49 8d 3c d4          	lea    (%r12,%rdx,8),%rdi
  9c:	48 8b 07             	mov    (%rdi),%rax
  9f:	48 85 c0             	test   %rax,%rax
  a2:	75 d4                	jne    78 <_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRS1_+0x78>
  a4:	48 8b 43 10          	mov    0x10(%rbx),%rax
  a8:	48 89 01             	mov    %rax,(%rcx)
  ab:	48 89 4b 10          	mov    %rcx,0x10(%rbx)
  af:	4c 89 17             	mov    %r10,(%rdi)
  b2:	48 83 39 00          	cmpq   $0x0,(%rcx)
  b6:	74 38                	je     f0 <_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRS1_+0xf0>
  b8:	4b 89 0c c4          	mov    %rcx,(%r12,%r8,8)
  bc:	49 89 d0             	mov    %rdx,%r8
  bf:	48 85 f6             	test   %rsi,%rsi
  c2:	75 c5                	jne    89 <_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRS1_+0x89>
  c4:	0f 1f 40 00          	nopl   0x0(%rax)
  c8:	48 8b 3b             	mov    (%rbx),%rdi
  cb:	4c 39 cf             	cmp    %r9,%rdi
  ce:	74 05                	je     d5 <_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRS1_+0xd5>
  d0:	e8 00 00 00 00       	callq  d5 <_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRS1_+0xd5>
  d5:	48 89 6b 08          	mov    %rbp,0x8(%rbx)
  d9:	4c 89 23             	mov    %r12,(%rbx)
  dc:	48 83 c4 08          	add    $0x8,%rsp
  e0:	5b                   	pop    %rbx
  e1:	5d                   	pop    %rbp
  e2:	41 5c                	pop    %r12
  e4:	41 5d                	pop    %r13
  e6:	c3                   	retq   
  e7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  ee:	00 00 
  f0:	49 89 d0             	mov    %rdx,%r8
  f3:	eb 8f                	jmp    84 <_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRS1_+0x84>
  f5:	0f 1f 00             	nopl   (%rax)
  f8:	4c 8d 67 30          	lea    0x30(%rdi),%r12
  fc:	48 c7 47 30 00 00 00 	movq   $0x0,0x30(%rdi)
 103:	00 
 104:	4d 89 e1             	mov    %r12,%r9
 107:	e9 4c ff ff ff       	jmpq   58 <_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRS1_+0x58>
 10c:	e8 00 00 00 00       	callq  111 <_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRS1_+0x111>
 111:	f3 0f 1e fa          	endbr64 
 115:	48 89 c7             	mov    %rax,%rdi
 118:	e8 00 00 00 00       	callq  11d <_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRS1_+0x11d>
 11d:	49 8b 04 24          	mov    (%r12),%rax
 121:	48 89 43 28          	mov    %rax,0x28(%rbx)
 125:	e8 00 00 00 00       	callq  12a <_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRS1_+0x12a>
 12a:	f3 0f 1e fa          	endbr64 
 12e:	48 89 c5             	mov    %rax,%rbp
 131:	e8 00 00 00 00       	callq  136 <_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRS1_+0x136>
 136:	48 89 ef             	mov    %rbp,%rdi
 139:	e8 00 00 00 00       	callq  13e <_ZN5Xbyak9CodeArray14setProtectModeENS0_11ProtectModeEb.part.0+0x26>

Disassembly of section .text._ZN5Xbyak13MmapAllocator5allocEm:

0000000000000000 <_ZN5Xbyak13MmapAllocator5allocEm>:
   0:	f3 0f 1e fa          	endbr64 
   4:	41 57                	push   %r15
   6:	45 31 c9             	xor    %r9d,%r9d
   9:	41 b8 ff ff ff ff    	mov    $0xffffffff,%r8d
   f:	b9 22 00 00 00       	mov    $0x22,%ecx
  14:	41 56                	push   %r14
  16:	ba 03 00 00 00       	mov    $0x3,%edx
  1b:	41 55                	push   %r13
  1d:	49 89 fd             	mov    %rdi,%r13
  20:	31 ff                	xor    %edi,%edi
  22:	41 54                	push   %r12
  24:	55                   	push   %rbp
  25:	53                   	push   %rbx
  26:	48 8d 9e ff 0f 00 00 	lea    0xfff(%rsi),%rbx
  2d:	48 81 e3 00 f0 ff ff 	and    $0xfffffffffffff000,%rbx
  34:	48 89 de             	mov    %rbx,%rsi
  37:	48 83 ec 18          	sub    $0x18,%rsp
  3b:	e8 00 00 00 00       	callq  40 <_ZN5Xbyak13MmapAllocator5allocEm+0x40>
  40:	48 83 f8 ff          	cmp    $0xffffffffffffffff,%rax
  44:	0f 84 3f 01 00 00    	je     189 <_ZN5Xbyak13MmapAllocator5allocEm+0x189>
  4a:	49 8b 75 10          	mov    0x10(%r13),%rsi
  4e:	31 d2                	xor    %edx,%edx
  50:	49 89 c4             	mov    %rax,%r12
  53:	48 f7 f6             	div    %rsi
  56:	49 8b 45 08          	mov    0x8(%r13),%rax
  5a:	48 8b 04 d0          	mov    (%rax,%rdx,8),%rax
  5e:	49 89 d0             	mov    %rdx,%r8
  61:	4c 8d 34 d5 00 00 00 	lea    0x0(,%rdx,8),%r14
  68:	00 
  69:	48 85 c0             	test   %rax,%rax
  6c:	74 52                	je     c0 <_ZN5Xbyak13MmapAllocator5allocEm+0xc0>
  6e:	48 8b 08             	mov    (%rax),%rcx
  71:	48 8b 79 08          	mov    0x8(%rcx),%rdi
  75:	eb 22                	jmp    99 <_ZN5Xbyak13MmapAllocator5allocEm+0x99>
  77:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  7e:	00 00 
  80:	48 8b 09             	mov    (%rcx),%rcx
  83:	48 85 c9             	test   %rcx,%rcx
  86:	74 38                	je     c0 <_ZN5Xbyak13MmapAllocator5allocEm+0xc0>
  88:	48 8b 79 08          	mov    0x8(%rcx),%rdi
  8c:	31 d2                	xor    %edx,%edx
  8e:	48 89 f8             	mov    %rdi,%rax
  91:	48 f7 f6             	div    %rsi
  94:	49 39 d0             	cmp    %rdx,%r8
  97:	75 27                	jne    c0 <_ZN5Xbyak13MmapAllocator5allocEm+0xc0>
  99:	49 39 fc             	cmp    %rdi,%r12
  9c:	75 e2                	jne    80 <_ZN5Xbyak13MmapAllocator5allocEm+0x80>
  9e:	48 83 c1 10          	add    $0x10,%rcx
  a2:	48 89 19             	mov    %rbx,(%rcx)
  a5:	48 83 c4 18          	add    $0x18,%rsp
  a9:	4c 89 e0             	mov    %r12,%rax
  ac:	5b                   	pop    %rbx
  ad:	5d                   	pop    %rbp
  ae:	41 5c                	pop    %r12
  b0:	41 5d                	pop    %r13
  b2:	41 5e                	pop    %r14
  b4:	41 5f                	pop    %r15
  b6:	c3                   	retq   
  b7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  be:	00 00 
  c0:	bf 18 00 00 00       	mov    $0x18,%edi
  c5:	4d 8d 7d 08          	lea    0x8(%r13),%r15
  c9:	e8 00 00 00 00       	callq  ce <_ZN5Xbyak13MmapAllocator5allocEm+0xce>
  ce:	49 8b 55 20          	mov    0x20(%r13),%rdx
  d2:	49 8b 75 10          	mov    0x10(%r13),%rsi
  d6:	49 8d 7d 28          	lea    0x28(%r13),%rdi
  da:	48 c7 00 00 00 00 00 	movq   $0x0,(%rax)
  e1:	48 89 c5             	mov    %rax,%rbp
  e4:	b9 01 00 00 00       	mov    $0x1,%ecx
  e9:	4c 89 60 08          	mov    %r12,0x8(%rax)
  ed:	48 c7 40 10 00 00 00 	movq   $0x0,0x10(%rax)
  f4:	00 
  f5:	49 8b 45 30          	mov    0x30(%r13),%rax
  f9:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
  fe:	e8 00 00 00 00       	callq  103 <_ZN5Xbyak13MmapAllocator5allocEm+0x103>
 103:	48 89 d6             	mov    %rdx,%rsi
 106:	84 c0                	test   %al,%al
 108:	74 1e                	je     128 <_ZN5Xbyak13MmapAllocator5allocEm+0x128>
 10a:	48 8d 54 24 08       	lea    0x8(%rsp),%rdx
 10f:	4c 89 ff             	mov    %r15,%rdi
 112:	e8 00 00 00 00       	callq  117 <_ZN5Xbyak13MmapAllocator5allocEm+0x117>
 117:	4c 89 e0             	mov    %r12,%rax
 11a:	31 d2                	xor    %edx,%edx
 11c:	49 f7 75 10          	divq   0x10(%r13)
 120:	4c 8d 34 d5 00 00 00 	lea    0x0(,%rdx,8),%r14
 127:	00 
 128:	49 8b 4d 08          	mov    0x8(%r13),%rcx
 12c:	49 01 ce             	add    %rcx,%r14
 12f:	49 8b 06             	mov    (%r14),%rax
 132:	48 85 c0             	test   %rax,%rax
 135:	74 21                	je     158 <_ZN5Xbyak13MmapAllocator5allocEm+0x158>
 137:	48 8b 00             	mov    (%rax),%rax
 13a:	48 89 45 00          	mov    %rax,0x0(%rbp)
 13e:	49 8b 06             	mov    (%r14),%rax
 141:	48 89 28             	mov    %rbp,(%rax)
 144:	49 83 45 20 01       	addq   $0x1,0x20(%r13)
 149:	48 8d 4d 10          	lea    0x10(%rbp),%rcx
 14d:	e9 50 ff ff ff       	jmpq   a2 <_ZN5Xbyak13MmapAllocator5allocEm+0xa2>
 152:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
 158:	49 8b 45 18          	mov    0x18(%r13),%rax
 15c:	49 89 6d 18          	mov    %rbp,0x18(%r13)
 160:	48 89 45 00          	mov    %rax,0x0(%rbp)
 164:	48 85 c0             	test   %rax,%rax
 167:	74 0e                	je     177 <_ZN5Xbyak13MmapAllocator5allocEm+0x177>
 169:	48 8b 40 08          	mov    0x8(%rax),%rax
 16d:	31 d2                	xor    %edx,%edx
 16f:	49 f7 75 10          	divq   0x10(%r13)
 173:	48 89 2c d1          	mov    %rbp,(%rcx,%rdx,8)
 177:	49 8d 45 18          	lea    0x18(%r13),%rax
 17b:	49 89 06             	mov    %rax,(%r14)
 17e:	eb c4                	jmp    144 <_ZN5Xbyak13MmapAllocator5allocEm+0x144>
 180:	f3 0f 1e fa          	endbr64 
 184:	48 89 c7             	mov    %rax,%rdi
 187:	eb 05                	jmp    18e <_ZN5Xbyak13MmapAllocator5allocEm+0x18e>
 189:	e8 00 00 00 00       	callq  18e <_ZN5Xbyak13MmapAllocator5allocEm+0x18e>
 18e:	e8 00 00 00 00       	callq  193 <_ZN5Xbyak13MmapAllocator5allocEm+0x193>
 193:	48 89 ef             	mov    %rbp,%rdi
 196:	e8 00 00 00 00       	callq  19b <_ZN5Xbyak13MmapAllocator5allocEm+0x19b>
 19b:	e8 00 00 00 00       	callq  1a0 <_ZN5Xbyak13MmapAllocator5allocEm+0x1a0>
 1a0:	f3 0f 1e fa          	endbr64 
 1a4:	48 89 c5             	mov    %rax,%rbp
 1a7:	e8 00 00 00 00       	callq  1ac <_ZN5Xbyak13MmapAllocator5allocEm+0x1ac>
 1ac:	48 89 ef             	mov    %rbp,%rdi
 1af:	e8 00 00 00 00       	callq  1b4 <_ZN5Xbyak13CodeGenerator15verifyDuplicateEiiii.isra.0.part.0+0x2c>

Disassembly of section .text._ZNSt10_HashtableIiSt4pairIKiKN5Xbyak8JmpLabelEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb0EEEE13_M_rehash_auxEmSt17integral_constantIbLb0EE:

0000000000000000 <_ZNSt10_HashtableIiSt4pairIKiKN5Xbyak8JmpLabelEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb0EEEE13_M_rehash_auxEmSt17integral_constantIbLb0EE>:
   0:	f3 0f 1e fa          	endbr64 
   4:	41 57                	push   %r15
   6:	41 56                	push   %r14
   8:	41 55                	push   %r13
   a:	41 54                	push   %r12
   c:	49 89 fc             	mov    %rdi,%r12
   f:	55                   	push   %rbp
  10:	53                   	push   %rbx
  11:	48 89 f3             	mov    %rsi,%rbx
  14:	48 83 ec 18          	sub    $0x18,%rsp
  18:	48 83 fe 01          	cmp    $0x1,%rsi
  1c:	0f 84 76 01 00 00    	je     198 <_ZNSt10_HashtableIiSt4pairIKiKN5Xbyak8JmpLabelEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb0EEEE13_M_rehash_auxEmSt17integral_constantIbLb0EE+0x198>
  22:	48 b8 ff ff ff ff ff 	movabs $0xfffffffffffffff,%rax
  29:	ff ff 0f 
  2c:	48 39 c6             	cmp    %rax,%rsi
  2f:	0f 87 79 01 00 00    	ja     1ae <_ZNSt10_HashtableIiSt4pairIKiKN5Xbyak8JmpLabelEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb0EEEE13_M_rehash_auxEmSt17integral_constantIbLb0EE+0x1ae>
  35:	4c 8d 34 f5 00 00 00 	lea    0x0(,%rsi,8),%r14
  3c:	00 
  3d:	4c 89 f7             	mov    %r14,%rdi
  40:	e8 00 00 00 00       	callq  45 <_ZNSt10_HashtableIiSt4pairIKiKN5Xbyak8JmpLabelEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb0EEEE13_M_rehash_auxEmSt17integral_constantIbLb0EE+0x45>
  45:	4c 89 f2             	mov    %r14,%rdx
  48:	31 f6                	xor    %esi,%esi
  4a:	48 89 c7             	mov    %rax,%rdi
  4d:	49 89 c5             	mov    %rax,%r13
  50:	e8 00 00 00 00       	callq  55 <_ZNSt10_HashtableIiSt4pairIKiKN5Xbyak8JmpLabelEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb0EEEE13_M_rehash_auxEmSt17integral_constantIbLb0EE+0x55>
  55:	49 8d 44 24 30       	lea    0x30(%r12),%rax
  5a:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
  5f:	49 8b 4c 24 10       	mov    0x10(%r12),%rcx
  64:	49 c7 44 24 10 00 00 	movq   $0x0,0x10(%r12)
  6b:	00 00 
  6d:	48 85 c9             	test   %rcx,%rcx
  70:	0f 84 ba 00 00 00    	je     130 <_ZNSt10_HashtableIiSt4pairIKiKN5Xbyak8JmpLabelEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb0EEEE13_M_rehash_auxEmSt17integral_constantIbLb0EE+0x130>
  76:	31 ed                	xor    %ebp,%ebp
  78:	31 ff                	xor    %edi,%edi
  7a:	45 31 c0             	xor    %r8d,%r8d
  7d:	45 31 f6             	xor    %r14d,%r14d
  80:	4d 8d 7c 24 10       	lea    0x10(%r12),%r15
  85:	eb 1f                	jmp    a6 <_ZNSt10_HashtableIiSt4pairIKiKN5Xbyak8JmpLabelEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb0EEEE13_M_rehash_auxEmSt17integral_constantIbLb0EE+0xa6>
  87:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  8e:	00 00 
  90:	48 8b 07             	mov    (%rdi),%rax
  93:	89 f5                	mov    %esi,%ebp
  95:	48 89 01             	mov    %rax,(%rcx)
  98:	48 89 0f             	mov    %rcx,(%rdi)
  9b:	48 89 cf             	mov    %rcx,%rdi
  9e:	4d 85 c9             	test   %r9,%r9
  a1:	74 6d                	je     110 <_ZNSt10_HashtableIiSt4pairIKiKN5Xbyak8JmpLabelEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb0EEEE13_M_rehash_auxEmSt17integral_constantIbLb0EE+0x110>
  a3:	4c 89 c9             	mov    %r9,%rcx
  a6:	48 63 41 08          	movslq 0x8(%rcx),%rax
  aa:	31 d2                	xor    %edx,%edx
  ac:	4d 89 c3             	mov    %r8,%r11
  af:	4c 8b 09             	mov    (%rcx),%r9
  b2:	48 f7 f3             	div    %rbx
  b5:	48 85 ff             	test   %rdi,%rdi
  b8:	40 0f 95 c6          	setne  %sil
  bc:	4c 39 da             	cmp    %r11,%rdx
  bf:	49 89 d2             	mov    %rdx,%r10
  c2:	49 89 d0             	mov    %rdx,%r8
  c5:	0f 94 c0             	sete   %al
  c8:	40 20 c6             	and    %al,%sil
  cb:	75 c3                	jne    90 <_ZNSt10_HashtableIiSt4pairIKiKN5Xbyak8JmpLabelEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb0EEEE13_M_rehash_auxEmSt17integral_constantIbLb0EE+0x90>
  cd:	40 84 ed             	test   %bpl,%bpl
  d0:	74 1b                	je     ed <_ZNSt10_HashtableIiSt4pairIKiKN5Xbyak8JmpLabelEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb0EEEE13_M_rehash_auxEmSt17integral_constantIbLb0EE+0xed>
  d2:	48 8b 07             	mov    (%rdi),%rax
  d5:	48 85 c0             	test   %rax,%rax
  d8:	74 13                	je     ed <_ZNSt10_HashtableIiSt4pairIKiKN5Xbyak8JmpLabelEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb0EEEE13_M_rehash_auxEmSt17integral_constantIbLb0EE+0xed>
  da:	48 63 40 08          	movslq 0x8(%rax),%rax
  de:	31 d2                	xor    %edx,%edx
  e0:	48 f7 f3             	div    %rbx
  e3:	4c 39 da             	cmp    %r11,%rdx
  e6:	74 05                	je     ed <_ZNSt10_HashtableIiSt4pairIKiKN5Xbyak8JmpLabelEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb0EEEE13_M_rehash_auxEmSt17integral_constantIbLb0EE+0xed>
  e8:	49 89 7c d5 00       	mov    %rdi,0x0(%r13,%rdx,8)
  ed:	4b 8d 44 d5 00       	lea    0x0(%r13,%r10,8),%rax
  f2:	48 8b 10             	mov    (%rax),%rdx
  f5:	48 85 d2             	test   %rdx,%rdx
  f8:	74 66                	je     160 <_ZNSt10_HashtableIiSt4pairIKiKN5Xbyak8JmpLabelEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb0EEEE13_M_rehash_auxEmSt17integral_constantIbLb0EE+0x160>
  fa:	48 8b 12             	mov    (%rdx),%rdx
  fd:	31 ed                	xor    %ebp,%ebp
  ff:	48 89 cf             	mov    %rcx,%rdi
 102:	48 89 11             	mov    %rdx,(%rcx)
 105:	48 8b 00             	mov    (%rax),%rax
 108:	48 89 08             	mov    %rcx,(%rax)
 10b:	4d 85 c9             	test   %r9,%r9
 10e:	75 93                	jne    a3 <_ZNSt10_HashtableIiSt4pairIKiKN5Xbyak8JmpLabelEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb0EEEE13_M_rehash_auxEmSt17integral_constantIbLb0EE+0xa3>
 110:	40 84 f6             	test   %sil,%sil
 113:	74 1b                	je     130 <_ZNSt10_HashtableIiSt4pairIKiKN5Xbyak8JmpLabelEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb0EEEE13_M_rehash_auxEmSt17integral_constantIbLb0EE+0x130>
 115:	48 8b 01             	mov    (%rcx),%rax
 118:	48 85 c0             	test   %rax,%rax
 11b:	74 13                	je     130 <_ZNSt10_HashtableIiSt4pairIKiKN5Xbyak8JmpLabelEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb0EEEE13_M_rehash_auxEmSt17integral_constantIbLb0EE+0x130>
 11d:	48 63 40 08          	movslq 0x8(%rax),%rax
 121:	31 d2                	xor    %edx,%edx
 123:	48 f7 f3             	div    %rbx
 126:	49 39 d2             	cmp    %rdx,%r10
 129:	74 05                	je     130 <_ZNSt10_HashtableIiSt4pairIKiKN5Xbyak8JmpLabelEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb0EEEE13_M_rehash_auxEmSt17integral_constantIbLb0EE+0x130>
 12b:	49 89 4c d5 00       	mov    %rcx,0x0(%r13,%rdx,8)
 130:	49 8b 3c 24          	mov    (%r12),%rdi
 134:	48 3b 7c 24 08       	cmp    0x8(%rsp),%rdi
 139:	74 05                	je     140 <_ZNSt10_HashtableIiSt4pairIKiKN5Xbyak8JmpLabelEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb0EEEE13_M_rehash_auxEmSt17integral_constantIbLb0EE+0x140>
 13b:	e8 00 00 00 00       	callq  140 <_ZNSt10_HashtableIiSt4pairIKiKN5Xbyak8JmpLabelEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb0EEEE13_M_rehash_auxEmSt17integral_constantIbLb0EE+0x140>
 140:	49 89 5c 24 08       	mov    %rbx,0x8(%r12)
 145:	4d 89 2c 24          	mov    %r13,(%r12)
 149:	48 83 c4 18          	add    $0x18,%rsp
 14d:	5b                   	pop    %rbx
 14e:	5d                   	pop    %rbp
 14f:	41 5c                	pop    %r12
 151:	41 5d                	pop    %r13
 153:	41 5e                	pop    %r14
 155:	41 5f                	pop    %r15
 157:	c3                   	retq   
 158:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
 15f:	00 
 160:	49 8b 54 24 10       	mov    0x10(%r12),%rdx
 165:	48 89 11             	mov    %rdx,(%rcx)
 168:	49 89 4c 24 10       	mov    %rcx,0x10(%r12)
 16d:	4c 89 38             	mov    %r15,(%rax)
 170:	48 83 39 00          	cmpq   $0x0,(%rcx)
 174:	74 12                	je     188 <_ZNSt10_HashtableIiSt4pairIKiKN5Xbyak8JmpLabelEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb0EEEE13_M_rehash_auxEmSt17integral_constantIbLb0EE+0x188>
 176:	4b 89 4c f5 00       	mov    %rcx,0x0(%r13,%r14,8)
 17b:	31 ed                	xor    %ebp,%ebp
 17d:	4d 89 d6             	mov    %r10,%r14
 180:	e9 16 ff ff ff       	jmpq   9b <_ZNSt10_HashtableIiSt4pairIKiKN5Xbyak8JmpLabelEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb0EEEE13_M_rehash_auxEmSt17integral_constantIbLb0EE+0x9b>
 185:	0f 1f 00             	nopl   (%rax)
 188:	31 ed                	xor    %ebp,%ebp
 18a:	4d 89 d6             	mov    %r10,%r14
 18d:	e9 09 ff ff ff       	jmpq   9b <_ZNSt10_HashtableIiSt4pairIKiKN5Xbyak8JmpLabelEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb0EEEE13_M_rehash_auxEmSt17integral_constantIbLb0EE+0x9b>
 192:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
 198:	4c 8d 6f 30          	lea    0x30(%rdi),%r13
 19c:	48 c7 47 30 00 00 00 	movq   $0x0,0x30(%rdi)
 1a3:	00 
 1a4:	4c 89 6c 24 08       	mov    %r13,0x8(%rsp)
 1a9:	e9 b1 fe ff ff       	jmpq   5f <_ZNSt10_HashtableIiSt4pairIKiKN5Xbyak8JmpLabelEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb0EEEE13_M_rehash_auxEmSt17integral_constantIbLb0EE+0x5f>
 1ae:	e8 00 00 00 00       	callq  1b3 <_ZN5Xbyak13CodeGenerator15verifyDuplicateEiiii.isra.0.part.0+0x2b>

Disassembly of section .text._ZNSt10_HashtableIiSt4pairIKiKN5Xbyak8JmpLabelEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb0EEEE20_M_insert_multi_nodeEPNS7_10_Hash_nodeIS5_Lb0EEEmSL_:

0000000000000000 <_ZNSt10_HashtableIiSt4pairIKiKN5Xbyak8JmpLabelEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb0EEEE20_M_insert_multi_nodeEPNS7_10_Hash_nodeIS5_Lb0EEEmSL_>:
   0:	f3 0f 1e fa          	endbr64 
   4:	41 56                	push   %r14
   6:	41 55                	push   %r13
   8:	49 89 d5             	mov    %rdx,%r13
   b:	41 54                	push   %r12
   d:	49 89 cc             	mov    %rcx,%r12
  10:	b9 01 00 00 00       	mov    $0x1,%ecx
  15:	55                   	push   %rbp
  16:	48 89 f5             	mov    %rsi,%rbp
  19:	53                   	push   %rbx
  1a:	48 8b 57 18          	mov    0x18(%rdi),%rdx
  1e:	48 89 fb             	mov    %rdi,%rbx
  21:	48 83 c7 20          	add    $0x20,%rdi
  25:	48 8b 77 e8          	mov    -0x18(%rdi),%rsi
  29:	4c 8b 77 08          	mov    0x8(%rdi),%r14
  2d:	e8 00 00 00 00       	callq  32 <_ZNSt10_HashtableIiSt4pairIKiKN5Xbyak8JmpLabelEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb0EEEE20_M_insert_multi_nodeEPNS7_10_Hash_nodeIS5_Lb0EEEmSL_+0x32>
  32:	84 c0                	test   %al,%al
  34:	75 7a                	jne    b0 <_ZNSt10_HashtableIiSt4pairIKiKN5Xbyak8JmpLabelEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb0EEEE20_M_insert_multi_nodeEPNS7_10_Hash_nodeIS5_Lb0EEEmSL_+0xb0>
  36:	48 8b 7b 08          	mov    0x8(%rbx),%rdi
  3a:	4c 89 e8             	mov    %r13,%rax
  3d:	31 d2                	xor    %edx,%edx
  3f:	48 f7 f7             	div    %rdi
  42:	49 89 d1             	mov    %rdx,%r9
  45:	48 85 ed             	test   %rbp,%rbp
  48:	0f 85 b2 00 00 00    	jne    100 <_ZNSt10_HashtableIiSt4pairIKiKN5Xbyak8JmpLabelEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb0EEEE20_M_insert_multi_nodeEPNS7_10_Hash_nodeIS5_Lb0EEEmSL_+0x100>
  4e:	48 8b 0b             	mov    (%rbx),%rcx
  51:	4e 8d 2c c9          	lea    (%rcx,%r9,8),%r13
  55:	4d 8b 45 00          	mov    0x0(%r13),%r8
  59:	4d 85 c0             	test   %r8,%r8
  5c:	74 6f                	je     cd <_ZNSt10_HashtableIiSt4pairIKiKN5Xbyak8JmpLabelEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb0EEEE20_M_insert_multi_nodeEPNS7_10_Hash_nodeIS5_Lb0EEEmSL_+0xcd>
  5e:	4d 8b 18             	mov    (%r8),%r11
  61:	45 8b 54 24 08       	mov    0x8(%r12),%r10d
  66:	41 8b 73 08          	mov    0x8(%r11),%esi
  6a:	4c 89 d8             	mov    %r11,%rax
  6d:	eb 1f                	jmp    8e <_ZNSt10_HashtableIiSt4pairIKiKN5Xbyak8JmpLabelEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb0EEEE20_M_insert_multi_nodeEPNS7_10_Hash_nodeIS5_Lb0EEEmSL_+0x8e>
  6f:	90                   	nop
  70:	48 8b 08             	mov    (%rax),%rcx
  73:	48 85 c9             	test   %rcx,%rcx
  76:	74 48                	je     c0 <_ZNSt10_HashtableIiSt4pairIKiKN5Xbyak8JmpLabelEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb0EEEE20_M_insert_multi_nodeEPNS7_10_Hash_nodeIS5_Lb0EEEmSL_+0xc0>
  78:	8b 71 08             	mov    0x8(%rcx),%esi
  7b:	49 89 c0             	mov    %rax,%r8
  7e:	31 d2                	xor    %edx,%edx
  80:	48 63 c6             	movslq %esi,%rax
  83:	48 f7 f7             	div    %rdi
  86:	49 39 d1             	cmp    %rdx,%r9
  89:	75 35                	jne    c0 <_ZNSt10_HashtableIiSt4pairIKiKN5Xbyak8JmpLabelEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb0EEEE20_M_insert_multi_nodeEPNS7_10_Hash_nodeIS5_Lb0EEEmSL_+0xc0>
  8b:	48 89 c8             	mov    %rcx,%rax
  8e:	41 39 f2             	cmp    %esi,%r10d
  91:	75 dd                	jne    70 <_ZNSt10_HashtableIiSt4pairIKiKN5Xbyak8JmpLabelEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb0EEEE20_M_insert_multi_nodeEPNS7_10_Hash_nodeIS5_Lb0EEEmSL_+0x70>
  93:	49 89 04 24          	mov    %rax,(%r12)
  97:	4d 89 20             	mov    %r12,(%r8)
  9a:	4c 39 c5             	cmp    %r8,%rbp
  9d:	74 7c                	je     11b <_ZNSt10_HashtableIiSt4pairIKiKN5Xbyak8JmpLabelEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb0EEEE20_M_insert_multi_nodeEPNS7_10_Hash_nodeIS5_Lb0EEEmSL_+0x11b>
  9f:	4c 89 e0             	mov    %r12,%rax
  a2:	48 83 43 18 01       	addq   $0x1,0x18(%rbx)
  a7:	5b                   	pop    %rbx
  a8:	5d                   	pop    %rbp
  a9:	41 5c                	pop    %r12
  ab:	41 5d                	pop    %r13
  ad:	41 5e                	pop    %r14
  af:	c3                   	retq   
  b0:	48 89 d6             	mov    %rdx,%rsi
  b3:	48 89 df             	mov    %rbx,%rdi
  b6:	e8 00 00 00 00       	callq  bb <_ZNSt10_HashtableIiSt4pairIKiKN5Xbyak8JmpLabelEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb0EEEE20_M_insert_multi_nodeEPNS7_10_Hash_nodeIS5_Lb0EEEmSL_+0xbb>
  bb:	e9 76 ff ff ff       	jmpq   36 <_ZNSt10_HashtableIiSt4pairIKiKN5Xbyak8JmpLabelEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb0EEEE20_M_insert_multi_nodeEPNS7_10_Hash_nodeIS5_Lb0EEEmSL_+0x36>
  c0:	4d 89 1c 24          	mov    %r11,(%r12)
  c4:	49 8b 45 00          	mov    0x0(%r13),%rax
  c8:	4c 89 20             	mov    %r12,(%rax)
  cb:	eb d2                	jmp    9f <_ZNSt10_HashtableIiSt4pairIKiKN5Xbyak8JmpLabelEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb0EEEE20_M_insert_multi_nodeEPNS7_10_Hash_nodeIS5_Lb0EEEmSL_+0x9f>
  cd:	48 8b 43 10          	mov    0x10(%rbx),%rax
  d1:	49 89 04 24          	mov    %rax,(%r12)
  d5:	4c 89 63 10          	mov    %r12,0x10(%rbx)
  d9:	49 8b 04 24          	mov    (%r12),%rax
  dd:	48 85 c0             	test   %rax,%rax
  e0:	74 0d                	je     ef <_ZNSt10_HashtableIiSt4pairIKiKN5Xbyak8JmpLabelEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb0EEEE20_M_insert_multi_nodeEPNS7_10_Hash_nodeIS5_Lb0EEEmSL_+0xef>
  e2:	48 63 40 08          	movslq 0x8(%rax),%rax
  e6:	31 d2                	xor    %edx,%edx
  e8:	48 f7 f7             	div    %rdi
  eb:	4c 89 24 d1          	mov    %r12,(%rcx,%rdx,8)
  ef:	48 8d 43 10          	lea    0x10(%rbx),%rax
  f3:	49 89 45 00          	mov    %rax,0x0(%r13)
  f7:	eb a6                	jmp    9f <_ZNSt10_HashtableIiSt4pairIKiKN5Xbyak8JmpLabelEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb0EEEE20_M_insert_multi_nodeEPNS7_10_Hash_nodeIS5_Lb0EEEmSL_+0x9f>
  f9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
 100:	45 8b 54 24 08       	mov    0x8(%r12),%r10d
 105:	44 39 55 08          	cmp    %r10d,0x8(%rbp)
 109:	0f 85 3f ff ff ff    	jne    4e <_ZNSt10_HashtableIiSt4pairIKiKN5Xbyak8JmpLabelEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb0EEEE20_M_insert_multi_nodeEPNS7_10_Hash_nodeIS5_Lb0EEEmSL_+0x4e>
 10f:	48 8b 45 00          	mov    0x0(%rbp),%rax
 113:	49 89 04 24          	mov    %rax,(%r12)
 117:	4c 89 65 00          	mov    %r12,0x0(%rbp)
 11b:	49 8b 04 24          	mov    (%r12),%rax
 11f:	48 85 c0             	test   %rax,%rax
 122:	0f 84 77 ff ff ff    	je     9f <_ZNSt10_HashtableIiSt4pairIKiKN5Xbyak8JmpLabelEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb0EEEE20_M_insert_multi_nodeEPNS7_10_Hash_nodeIS5_Lb0EEEmSL_+0x9f>
 128:	48 63 40 08          	movslq 0x8(%rax),%rax
 12c:	44 39 d0             	cmp    %r10d,%eax
 12f:	0f 84 6a ff ff ff    	je     9f <_ZNSt10_HashtableIiSt4pairIKiKN5Xbyak8JmpLabelEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb0EEEE20_M_insert_multi_nodeEPNS7_10_Hash_nodeIS5_Lb0EEEmSL_+0x9f>
 135:	31 d2                	xor    %edx,%edx
 137:	48 f7 f7             	div    %rdi
 13a:	49 39 d1             	cmp    %rdx,%r9
 13d:	0f 84 5c ff ff ff    	je     9f <_ZNSt10_HashtableIiSt4pairIKiKN5Xbyak8JmpLabelEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb0EEEE20_M_insert_multi_nodeEPNS7_10_Hash_nodeIS5_Lb0EEEmSL_+0x9f>
 143:	48 8b 03             	mov    (%rbx),%rax
 146:	4c 89 24 d0          	mov    %r12,(%rax,%rdx,8)
 14a:	e9 50 ff ff ff       	jmpq   9f <_ZNSt10_HashtableIiSt4pairIKiKN5Xbyak8JmpLabelEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb0EEEE20_M_insert_multi_nodeEPNS7_10_Hash_nodeIS5_Lb0EEEmSL_+0x9f>
 14f:	f3 0f 1e fa          	endbr64 
 153:	48 89 c7             	mov    %rax,%rdi
 156:	e8 00 00 00 00       	callq  15b <_ZNSt10_HashtableIiSt4pairIKiKN5Xbyak8JmpLabelEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb0EEEE20_M_insert_multi_nodeEPNS7_10_Hash_nodeIS5_Lb0EEEmSL_+0x15b>
 15b:	4c 89 73 28          	mov    %r14,0x28(%rbx)
 15f:	e8 00 00 00 00       	callq  164 <_ZNSt10_HashtableIiSt4pairIKiKN5Xbyak8JmpLabelEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb0EEEE20_M_insert_multi_nodeEPNS7_10_Hash_nodeIS5_Lb0EEEmSL_+0x164>
 164:	f3 0f 1e fa          	endbr64 
 168:	48 89 c5             	mov    %rax,%rbp
 16b:	e8 00 00 00 00       	callq  170 <_ZNSt10_HashtableIiSt4pairIKiKN5Xbyak8JmpLabelEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb0EEEE20_M_insert_multi_nodeEPNS7_10_Hash_nodeIS5_Lb0EEEmSL_+0x170>
 170:	48 89 ef             	mov    %rbp,%rdi
 173:	e8 00 00 00 00       	callq  178 <_ZNSt10_HashtableIiSt4pairIKiKN5Xbyak8JmpLabelEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb0EEEE20_M_insert_multi_nodeEPNS7_10_Hash_nodeIS5_Lb0EEEmSL_+0x178>
 178:	4c 89 e7             	mov    %r12,%rdi
 17b:	e8 00 00 00 00       	callq  180 <_ZNSt10_HashtableIiSt4pairIKiKN5Xbyak8JmpLabelEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb0EEEE20_M_insert_multi_nodeEPNS7_10_Hash_nodeIS5_Lb0EEEmSL_+0x180>
 180:	e8 00 00 00 00       	callq  185 <_ZNSt10_HashtableIiSt4pairIKiKN5Xbyak8JmpLabelEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb0EEEE20_M_insert_multi_nodeEPNS7_10_Hash_nodeIS5_Lb0EEEmSL_+0x185>
 185:	f3 0f 1e fa          	endbr64 
 189:	48 89 c5             	mov    %rax,%rbp
 18c:	e8 00 00 00 00       	callq  191 <_ZNSt10_HashtableIiSt4pairIKiKN5Xbyak8JmpLabelEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb0EEEE20_M_insert_multi_nodeEPNS7_10_Hash_nodeIS5_Lb0EEEmSL_+0x191>
 191:	48 89 ef             	mov    %rbp,%rdi
 194:	e8 00 00 00 00       	callq  199 <_ZN5Xbyak13CodeGenerator15verifyDuplicateEiiii.isra.0.part.0+0x11>

Disassembly of section .text._ZN5Xbyak13CodeGenerator6opAddrERKNS_7AddressEiiib:

0000000000000000 <_ZN5Xbyak13CodeGenerator6opAddrERKNS_7AddressEiiib>:
   0:	f3 0f 1e fa          	endbr64 
   4:	41 57                	push   %r15
   6:	4c 63 f9             	movslq %ecx,%r15
   9:	41 56                	push   %r14
   b:	49 89 f6             	mov    %rsi,%r14
   e:	41 55                	push   %r13
  10:	41 54                	push   %r12
  12:	55                   	push   %rbp
  13:	53                   	push   %rbx
  14:	48 89 fb             	mov    %rdi,%rbx
  17:	48 83 ec 28          	sub    $0x28,%rsp
  1b:	45 84 c9             	test   %r9b,%r9b
  1e:	75 0c                	jne    2c <_ZN5Xbyak13CodeGenerator6opAddrERKNS_7AddressEiiib+0x2c>
  20:	66 f7 46 12 80 03    	testw  $0x380,0x12(%rsi)
  26:	0f 85 69 0b 00 00    	jne    b95 <_ZN5Xbyak13CodeGenerator6opAddrERKNS_7AddressEiiib+0xb95>
  2c:	41 8b 6e 30          	mov    0x30(%r14),%ebp
  30:	85 ed                	test   %ebp,%ebp
  32:	0f 84 d8 01 00 00    	je     210 <_ZN5Xbyak13CodeGenerator6opAddrERKNS_7AddressEiiib+0x210>
  38:	83 ed 02             	sub    $0x2,%ebp
  3b:	83 fd 01             	cmp    $0x1,%ebp
  3e:	76 10                	jbe    50 <_ZN5Xbyak13CodeGenerator6opAddrERKNS_7AddressEiiib+0x50>
  40:	48 83 c4 28          	add    $0x28,%rsp
  44:	5b                   	pop    %rbx
  45:	5d                   	pop    %rbp
  46:	41 5c                	pop    %r12
  48:	41 5d                	pop    %r13
  4a:	41 5e                	pop    %r14
  4c:	41 5f                	pop    %r15
  4e:	c3                   	retq   
  4f:	90                   	nop
  50:	c1 e2 03             	shl    $0x3,%edx
  53:	48 8b 83 80 00 00 00 	mov    0x80(%rbx),%rax
  5a:	4c 8b 63 70          	mov    0x70(%rbx),%r12
  5e:	83 e2 38             	and    $0x38,%edx
  61:	83 ca 05             	or     $0x5,%edx
  64:	41 89 d5             	mov    %edx,%r13d
  67:	4c 39 e0             	cmp    %r12,%rax
  6a:	0f 83 40 05 00 00    	jae    5b0 <_ZN5Xbyak13CodeGenerator6opAddrERKNS_7AddressEiiib+0x5b0>
  70:	48 8b 6b 78          	mov    0x78(%rbx),%rbp
  74:	48 8d 50 01          	lea    0x1(%rax),%rdx
  78:	48 89 93 80 00 00 00 	mov    %rdx,0x80(%rbx)
  7f:	44 88 6c 05 00       	mov    %r13b,0x0(%rbp,%rax,1)
  84:	4d 8b 66 28          	mov    0x28(%r14),%r12
  88:	4d 85 e4             	test   %r12,%r12
  8b:	0f 84 bf 06 00 00    	je     750 <_ZN5Xbyak13CodeGenerator6opAddrERKNS_7AddressEiiib+0x750>
  91:	49 8b 6e 20          	mov    0x20(%r14),%rbp
  95:	48 8b bb 80 00 00 00 	mov    0x80(%rbx),%rdi
  9c:	4c 29 fd             	sub    %r15,%rbp
  9f:	83 7b 20 03          	cmpl   $0x3,0x20(%rbx)
  a3:	0f 84 bf 08 00 00    	je     968 <_ZN5Xbyak13CodeGenerator6opAddrERKNS_7AddressEiiib+0x968>
  a9:	45 8b 4c 24 08       	mov    0x8(%r12),%r9d
  ae:	4c 8b 83 c0 00 00 00 	mov    0xc0(%rbx),%r8
  b5:	48 8b 8b b8 00 00 00 	mov    0xb8(%rbx),%rcx
  bc:	45 85 c9             	test   %r9d,%r9d
  bf:	75 16                	jne    d7 <_ZN5Xbyak13CodeGenerator6opAddrERKNS_7AddressEiiib+0xd7>
  c1:	44 8b 8b b0 00 00 00 	mov    0xb0(%rbx),%r9d
  c8:	41 8d 41 01          	lea    0x1(%r9),%eax
  cc:	89 83 b0 00 00 00    	mov    %eax,0xb0(%rbx)
  d2:	45 89 4c 24 08       	mov    %r9d,0x8(%r12)
  d7:	49 63 c1             	movslq %r9d,%rax
  da:	31 d2                	xor    %edx,%edx
  dc:	49 f7 f0             	div    %r8
  df:	48 8b 04 d1          	mov    (%rcx,%rdx,8),%rax
  e3:	49 89 d2             	mov    %rdx,%r10
  e6:	48 85 c0             	test   %rax,%rax
  e9:	0f 84 99 05 00 00    	je     688 <_ZN5Xbyak13CodeGenerator6opAddrERKNS_7AddressEiiib+0x688>
  ef:	48 8b 08             	mov    (%rax),%rcx
  f2:	8b 71 08             	mov    0x8(%rcx),%esi
  f5:	eb 2a                	jmp    121 <_ZN5Xbyak13CodeGenerator6opAddrERKNS_7AddressEiiib+0x121>
  f7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  fe:	00 00 
 100:	48 8b 09             	mov    (%rcx),%rcx
 103:	48 85 c9             	test   %rcx,%rcx
 106:	0f 84 7c 05 00 00    	je     688 <_ZN5Xbyak13CodeGenerator6opAddrERKNS_7AddressEiiib+0x688>
 10c:	48 63 41 08          	movslq 0x8(%rcx),%rax
 110:	31 d2                	xor    %edx,%edx
 112:	48 89 c6             	mov    %rax,%rsi
 115:	49 f7 f0             	div    %r8
 118:	4c 39 d2             	cmp    %r10,%rdx
 11b:	0f 85 67 05 00 00    	jne    688 <_ZN5Xbyak13CodeGenerator6opAddrERKNS_7AddressEiiib+0x688>
 121:	44 39 ce             	cmp    %r9d,%esi
 124:	75 da                	jne    100 <_ZN5Xbyak13CodeGenerator6opAddrERKNS_7AddressEiiib+0x100>
 126:	48 b8 fc ff ff 7f ff 	movabs $0xffffffff7ffffffc,%rax
 12d:	ff ff ff 
 130:	48 29 fd             	sub    %rdi,%rbp
 133:	48 03 69 10          	add    0x10(%rcx),%rbp
 137:	4c 8d 6d fc          	lea    -0x4(%rbp),%r13
 13b:	48 01 c5             	add    %rax,%rbp
 13e:	48 2d fd ff ff 7f    	sub    $0x7ffffffd,%rax
 144:	48 39 c5             	cmp    %rax,%rbp
 147:	0f 86 7d 0a 00 00    	jbe    bca <_ZN5Xbyak13CodeGenerator6opAddrERKNS_7AddressEiiib+0xbca>
 14d:	45 89 ed             	mov    %r13d,%r13d
 150:	45 31 f6             	xor    %r14d,%r14d
 153:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
 158:	48 8b 6b 70          	mov    0x70(%rbx),%rbp
 15c:	4d 89 ec             	mov    %r13,%r12
 15f:	44 89 f1             	mov    %r14d,%ecx
 162:	49 d3 ec             	shr    %cl,%r12
 165:	48 39 fd             	cmp    %rdi,%rbp
 168:	0f 87 0a 05 00 00    	ja     678 <_ZN5Xbyak13CodeGenerator6opAddrERKNS_7AddressEiiib+0x678>
 16e:	83 7b 20 03          	cmpl   $0x3,0x20(%rbx)
 172:	0f 85 e3 09 00 00    	jne    b5b <_ZN5Xbyak13CodeGenerator6opAddrERKNS_7AddressEiiib+0xb5b>
 178:	48 8b 7b 68          	mov    0x68(%rbx),%rdi
 17c:	48 01 ed             	add    %rbp,%rbp
 17f:	b8 00 10 00 00       	mov    $0x1000,%eax
 184:	48 81 fd 00 10 00 00 	cmp    $0x1000,%rbp
 18b:	48 0f 42 e8          	cmovb  %rax,%rbp
 18f:	48 8b 07             	mov    (%rdi),%rax
 192:	48 89 ee             	mov    %rbp,%rsi
 195:	ff 10                	callq  *(%rax)
 197:	49 89 c7             	mov    %rax,%r15
 19a:	48 85 c0             	test   %rax,%rax
 19d:	0f 84 2c 0a 00 00    	je     bcf <_ZN5Xbyak13CodeGenerator6opAddrERKNS_7AddressEiiib+0xbcf>
 1a3:	31 d2                	xor    %edx,%edx
 1a5:	48 83 bb 80 00 00 00 	cmpq   $0x0,0x80(%rbx)
 1ac:	00 
 1ad:	74 1a                	je     1c9 <_ZN5Xbyak13CodeGenerator6opAddrERKNS_7AddressEiiib+0x1c9>
 1af:	90                   	nop
 1b0:	48 8b 43 78          	mov    0x78(%rbx),%rax
 1b4:	0f b6 04 10          	movzbl (%rax,%rdx,1),%eax
 1b8:	41 88 04 17          	mov    %al,(%r15,%rdx,1)
 1bc:	48 83 c2 01          	add    $0x1,%rdx
 1c0:	48 39 93 80 00 00 00 	cmp    %rdx,0x80(%rbx)
 1c7:	77 e7                	ja     1b0 <_ZN5Xbyak13CodeGenerator6opAddrERKNS_7AddressEiiib+0x1b0>
 1c9:	48 8b 7b 68          	mov    0x68(%rbx),%rdi
 1cd:	48 8b 73 78          	mov    0x78(%rbx),%rsi
 1d1:	48 8b 07             	mov    (%rdi),%rax
 1d4:	ff 50 08             	callq  *0x8(%rax)
 1d7:	4c 89 7b 78          	mov    %r15,0x78(%rbx)
 1db:	48 8b bb 80 00 00 00 	mov    0x80(%rbx),%rdi
 1e2:	48 89 6b 70          	mov    %rbp,0x70(%rbx)
 1e6:	48 8d 47 01          	lea    0x1(%rdi),%rax
 1ea:	41 83 c6 08          	add    $0x8,%r14d
 1ee:	48 89 83 80 00 00 00 	mov    %rax,0x80(%rbx)
 1f5:	45 88 24 3f          	mov    %r12b,(%r15,%rdi,1)
 1f9:	41 83 fe 20          	cmp    $0x20,%r14d
 1fd:	0f 84 3d fe ff ff    	je     40 <_ZN5Xbyak13CodeGenerator6opAddrERKNS_7AddressEiiib+0x40>
 203:	48 8b bb 80 00 00 00 	mov    0x80(%rbx),%rdi
 20a:	e9 49 ff ff ff       	jmpq   158 <_ZN5Xbyak13CodeGenerator6opAddrERKNS_7AddressEiiib+0x158>
 20f:	90                   	nop
 210:	41 0f b7 46 12       	movzwl 0x12(%r14),%eax
 215:	41 0f b6 7e 08       	movzbl 0x8(%r14),%edi
 21a:	45 0f b7 7e 0a       	movzwl 0xa(%r14),%r15d
 21f:	41 0f b6 4e 10       	movzbl 0x10(%r14),%ecx
 224:	41 89 c2             	mov    %eax,%r10d
 227:	45 8b 66 18          	mov    0x18(%r14),%r12d
 22b:	4d 8b 5e 20          	mov    0x20(%r14),%r11
 22f:	83 e7 3f             	and    $0x3f,%edi
 232:	66 41 81 e7 ff 3f    	and    $0x3fff,%r15w
 238:	83 e1 3f             	and    $0x3f,%ecx
 23b:	66 41 81 e2 ff 3f    	and    $0x3fff,%r10w
 241:	a8 60                	test   $0x60,%al
 243:	74 4b                	je     290 <_ZN5Xbyak13CodeGenerator6opAddrERKNS_7AddressEiiib+0x290>
 245:	66 45 85 ff          	test   %r15w,%r15w
 249:	75 45                	jne    290 <_ZN5Xbyak13CodeGenerator6opAddrERKNS_7AddressEiiib+0x290>
 24b:	41 83 fc 02          	cmp    $0x2,%r12d
 24f:	0f 84 b3 08 00 00    	je     b08 <_ZN5Xbyak13CodeGenerator6opAddrERKNS_7AddressEiiib+0xb08>
 255:	4c 89 d8             	mov    %r11,%rax
 258:	48 c1 e8 20          	shr    $0x20,%rax
 25c:	0f 85 8e 08 00 00    	jne    af0 <_ZN5Xbyak13CodeGenerator6opAddrERKNS_7AddressEiiib+0xaf0>
 262:	45 89 de             	mov    %r11d,%r14d
 265:	45 0f b7 d2          	movzwl %r10w,%r10d
 269:	45 31 ff             	xor    %r15d,%r15d
 26c:	41 b8 05 00 00 00    	mov    $0x5,%r8d
 272:	44 8d 2c d5 00 00 00 	lea    0x0(,%rdx,8),%r13d
 279:	00 
 27a:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%rsp)
 281:	00 
 282:	41 83 e5 38          	and    $0x38,%r13d
 286:	eb 6a                	jmp    2f2 <_ZN5Xbyak13CodeGenerator6opAddrERKNS_7AddressEiiib+0x2f2>
 288:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
 28f:	00 
 290:	4c 89 d8             	mov    %r11,%rax
 293:	48 c1 e8 20          	shr    $0x20,%rax
 297:	0f 85 9b 03 00 00    	jne    638 <_ZN5Xbyak13CodeGenerator6opAddrERKNS_7AddressEiiib+0x638>
 29d:	44 8d 2c d5 00 00 00 	lea    0x0(,%rdx,8),%r13d
 2a4:	00 
 2a5:	45 0f b7 ff          	movzwl %r15w,%r15d
 2a9:	45 89 de             	mov    %r11d,%r14d
 2ac:	45 0f b7 d2          	movzwl %r10w,%r10d
 2b0:	41 83 e5 38          	and    $0x38,%r13d
 2b4:	45 85 ff             	test   %r15d,%r15d
 2b7:	0f 84 93 03 00 00    	je     650 <_ZN5Xbyak13CodeGenerator6opAddrERKNS_7AddressEiiib+0x650>
 2bd:	83 e7 07             	and    $0x7,%edi
 2c0:	40 80 ff 05          	cmp    $0x5,%dil
 2c4:	0f 84 a6 05 00 00    	je     870 <_ZN5Xbyak13CodeGenerator6opAddrERKNS_7AddressEiiib+0x870>
 2ca:	45 85 f6             	test   %r14d,%r14d
 2cd:	0f 85 9d 05 00 00    	jne    870 <_ZN5Xbyak13CodeGenerator6opAddrERKNS_7AddressEiiib+0x870>
 2d3:	45 31 f6             	xor    %r14d,%r14d
 2d6:	31 f6                	xor    %esi,%esi
 2d8:	31 c0                	xor    %eax,%eax
 2da:	44 0f b6 c7          	movzbl %dil,%r8d
 2de:	45 85 d2             	test   %r10d,%r10d
 2e1:	0f 84 b9 05 00 00    	je     8a0 <_ZN5Xbyak13CodeGenerator6opAddrERKNS_7AddressEiiib+0x8a0>
 2e7:	44 89 7c 24 08       	mov    %r15d,0x8(%rsp)
 2ec:	41 09 f5             	or     %esi,%r13d
 2ef:	41 89 c7             	mov    %eax,%r15d
 2f2:	48 8b 93 80 00 00 00 	mov    0x80(%rbx),%rdx
 2f9:	4c 8b 5b 70          	mov    0x70(%rbx),%r11
 2fd:	41 83 cd 04          	or     $0x4,%r13d
 301:	4c 39 da             	cmp    %r11,%rdx
 304:	0f 82 56 05 00 00    	jb     860 <_ZN5Xbyak13CodeGenerator6opAddrERKNS_7AddressEiiib+0x860>
 30a:	83 7b 20 03          	cmpl   $0x3,0x20(%rbx)
 30e:	88 4c 24 10          	mov    %cl,0x10(%rsp)
 312:	44 89 44 24 18       	mov    %r8d,0x18(%rsp)
 317:	44 89 54 24 0c       	mov    %r10d,0xc(%rsp)
 31c:	0f 85 39 08 00 00    	jne    b5b <_ZN5Xbyak13CodeGenerator6opAddrERKNS_7AddressEiiib+0xb5b>
 322:	48 8b 7b 68          	mov    0x68(%rbx),%rdi
 326:	4d 01 db             	add    %r11,%r11
 329:	b8 00 10 00 00       	mov    $0x1000,%eax
 32e:	49 81 fb 00 10 00 00 	cmp    $0x1000,%r11
 335:	4c 0f 42 d8          	cmovb  %rax,%r11
 339:	48 8b 07             	mov    (%rdi),%rax
 33c:	4c 89 1c 24          	mov    %r11,(%rsp)
 340:	4c 89 de             	mov    %r11,%rsi
 343:	ff 10                	callq  *(%rax)
 345:	4c 8b 1c 24          	mov    (%rsp),%r11
 349:	44 8b 54 24 0c       	mov    0xc(%rsp),%r10d
 34e:	48 85 c0             	test   %rax,%rax
 351:	44 8b 44 24 18       	mov    0x18(%rsp),%r8d
 356:	0f b6 4c 24 10       	movzbl 0x10(%rsp),%ecx
 35b:	0f 84 6e 08 00 00    	je     bcf <_ZN5Xbyak13CodeGenerator6opAddrERKNS_7AddressEiiib+0xbcf>
 361:	31 d2                	xor    %edx,%edx
 363:	48 83 bb 80 00 00 00 	cmpq   $0x0,0x80(%rbx)
 36a:	00 
 36b:	74 1c                	je     389 <_ZN5Xbyak13CodeGenerator6opAddrERKNS_7AddressEiiib+0x389>
 36d:	0f 1f 00             	nopl   (%rax)
 370:	48 8b 73 78          	mov    0x78(%rbx),%rsi
 374:	0f b6 34 16          	movzbl (%rsi,%rdx,1),%esi
 378:	40 88 34 10          	mov    %sil,(%rax,%rdx,1)
 37c:	48 83 c2 01          	add    $0x1,%rdx
 380:	48 39 93 80 00 00 00 	cmp    %rdx,0x80(%rbx)
 387:	77 e7                	ja     370 <_ZN5Xbyak13CodeGenerator6opAddrERKNS_7AddressEiiib+0x370>
 389:	48 8b 7b 68          	mov    0x68(%rbx),%rdi
 38d:	88 4c 24 1f          	mov    %cl,0x1f(%rsp)
 391:	48 89 44 24 10       	mov    %rax,0x10(%rsp)
 396:	48 8b 73 78          	mov    0x78(%rbx),%rsi
 39a:	48 8b 17             	mov    (%rdi),%rdx
 39d:	44 89 44 24 18       	mov    %r8d,0x18(%rsp)
 3a2:	44 89 54 24 0c       	mov    %r10d,0xc(%rsp)
 3a7:	4c 89 1c 24          	mov    %r11,(%rsp)
 3ab:	ff 52 08             	callq  *0x8(%rdx)
 3ae:	48 8b 44 24 10       	mov    0x10(%rsp),%rax
 3b3:	4c 8b 1c 24          	mov    (%rsp),%r11
 3b7:	48 8b 93 80 00 00 00 	mov    0x80(%rbx),%rdx
 3be:	44 8b 54 24 0c       	mov    0xc(%rsp),%r10d
 3c3:	44 8b 44 24 18       	mov    0x18(%rsp),%r8d
 3c8:	0f b6 4c 24 1f       	movzbl 0x1f(%rsp),%ecx
 3cd:	48 89 43 78          	mov    %rax,0x78(%rbx)
 3d1:	4c 89 5b 70          	mov    %r11,0x70(%rbx)
 3d5:	83 e1 07             	and    $0x7,%ecx
 3d8:	48 8d 72 01          	lea    0x1(%rdx),%rsi
 3dc:	45 85 d2             	test   %r10d,%r10d
 3df:	48 89 b3 80 00 00 00 	mov    %rsi,0x80(%rbx)
 3e6:	44 88 2c 10          	mov    %r13b,(%rax,%rdx,1)
 3ea:	8d 04 cd 00 00 00 00 	lea    0x0(,%rcx,8),%eax
 3f1:	b9 20 00 00 00       	mov    $0x20,%ecx
 3f6:	41 bd c0 ff ff ff    	mov    $0xffffffc0,%r13d
 3fc:	0f 44 c1             	cmove  %ecx,%eax
 3ff:	41 83 fc 08          	cmp    $0x8,%r12d
 403:	74 1b                	je     420 <_ZN5Xbyak13CodeGenerator6opAddrERKNS_7AddressEiiib+0x420>
 405:	41 bd 80 ff ff ff    	mov    $0xffffff80,%r13d
 40b:	41 83 fc 04          	cmp    $0x4,%r12d
 40f:	74 0f                	je     420 <_ZN5Xbyak13CodeGenerator6opAddrERKNS_7AddressEiiib+0x420>
 411:	45 31 ed             	xor    %r13d,%r13d
 414:	41 83 fc 02          	cmp    $0x2,%r12d
 418:	41 0f 94 c5          	sete   %r13b
 41c:	41 c1 e5 06          	shl    $0x6,%r13d
 420:	44 09 c0             	or     %r8d,%eax
 423:	48 8b 93 80 00 00 00 	mov    0x80(%rbx),%rdx
 42a:	4c 8b 43 70          	mov    0x70(%rbx),%r8
 42e:	41 09 c5             	or     %eax,%r13d
 431:	4c 39 c2             	cmp    %r8,%rdx
 434:	0f 82 16 04 00 00    	jb     850 <_ZN5Xbyak13CodeGenerator6opAddrERKNS_7AddressEiiib+0x850>
 43a:	83 7b 20 03          	cmpl   $0x3,0x20(%rbx)
 43e:	0f 85 17 07 00 00    	jne    b5b <_ZN5Xbyak13CodeGenerator6opAddrERKNS_7AddressEiiib+0xb5b>
 444:	48 8b 7b 68          	mov    0x68(%rbx),%rdi
 448:	4d 01 c0             	add    %r8,%r8
 44b:	b8 00 10 00 00       	mov    $0x1000,%eax
 450:	49 81 f8 00 10 00 00 	cmp    $0x1000,%r8
 457:	4c 0f 42 c0          	cmovb  %rax,%r8
 45b:	48 8b 07             	mov    (%rdi),%rax
 45e:	4c 89 04 24          	mov    %r8,(%rsp)
 462:	4c 89 c6             	mov    %r8,%rsi
 465:	ff 10                	callq  *(%rax)
 467:	49 89 c4             	mov    %rax,%r12
 46a:	48 85 c0             	test   %rax,%rax
 46d:	0f 84 5c 07 00 00    	je     bcf <_ZN5Xbyak13CodeGenerator6opAddrERKNS_7AddressEiiib+0xbcf>
 473:	31 d2                	xor    %edx,%edx
 475:	48 83 bb 80 00 00 00 	cmpq   $0x0,0x80(%rbx)
 47c:	00 
 47d:	4c 8b 04 24          	mov    (%rsp),%r8
 481:	74 1e                	je     4a1 <_ZN5Xbyak13CodeGenerator6opAddrERKNS_7AddressEiiib+0x4a1>
 483:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
 488:	48 8b 4b 78          	mov    0x78(%rbx),%rcx
 48c:	0f b6 0c 11          	movzbl (%rcx,%rdx,1),%ecx
 490:	41 88 0c 14          	mov    %cl,(%r12,%rdx,1)
 494:	48 83 c2 01          	add    $0x1,%rdx
 498:	48 39 93 80 00 00 00 	cmp    %rdx,0x80(%rbx)
 49f:	77 e7                	ja     488 <_ZN5Xbyak13CodeGenerator6opAddrERKNS_7AddressEiiib+0x488>
 4a1:	48 8b 7b 68          	mov    0x68(%rbx),%rdi
 4a5:	48 8b 73 78          	mov    0x78(%rbx),%rsi
 4a9:	4c 89 04 24          	mov    %r8,(%rsp)
 4ad:	48 8b 17             	mov    (%rdi),%rdx
 4b0:	ff 52 08             	callq  *0x8(%rdx)
 4b3:	4c 8b 04 24          	mov    (%rsp),%r8
 4b7:	4c 89 63 78          	mov    %r12,0x78(%rbx)
 4bb:	48 8b 93 80 00 00 00 	mov    0x80(%rbx),%rdx
 4c2:	4c 89 43 70          	mov    %r8,0x70(%rbx)
 4c6:	48 8d 4a 01          	lea    0x1(%rdx),%rcx
 4ca:	48 89 8b 80 00 00 00 	mov    %rcx,0x80(%rbx)
 4d1:	45 88 2c 14          	mov    %r13b,(%r12,%rdx,1)
 4d5:	41 83 ff 01          	cmp    $0x1,%r15d
 4d9:	0f 84 f1 03 00 00    	je     8d0 <_ZN5Xbyak13CodeGenerator6opAddrERKNS_7AddressEiiib+0x8d0>
 4df:	41 83 ff 02          	cmp    $0x2,%r15d
 4e3:	74 0d                	je     4f2 <_ZN5Xbyak13CodeGenerator6opAddrERKNS_7AddressEiiib+0x4f2>
 4e5:	8b 44 24 08          	mov    0x8(%rsp),%eax
 4e9:	44 09 f8             	or     %r15d,%eax
 4ec:	0f 85 4e fb ff ff    	jne    40 <_ZN5Xbyak13CodeGenerator6opAddrERKNS_7AddressEiiib+0x40>
 4f2:	45 89 f6             	mov    %r14d,%r14d
 4f5:	0f 1f 00             	nopl   (%rax)
 4f8:	48 8b 93 80 00 00 00 	mov    0x80(%rbx),%rdx
 4ff:	4c 8b 63 70          	mov    0x70(%rbx),%r12
 503:	4d 89 f5             	mov    %r14,%r13
 506:	89 e9                	mov    %ebp,%ecx
 508:	49 d3 ed             	shr    %cl,%r13
 50b:	4c 39 e2             	cmp    %r12,%rdx
 50e:	0f 82 54 01 00 00    	jb     668 <_ZN5Xbyak13CodeGenerator6opAddrERKNS_7AddressEiiib+0x668>
 514:	83 7b 20 03          	cmpl   $0x3,0x20(%rbx)
 518:	0f 85 3d 06 00 00    	jne    b5b <_ZN5Xbyak13CodeGenerator6opAddrERKNS_7AddressEiiib+0xb5b>
 51e:	48 8b 7b 68          	mov    0x68(%rbx),%rdi
 522:	4d 01 e4             	add    %r12,%r12
 525:	b8 00 10 00 00       	mov    $0x1000,%eax
 52a:	49 81 fc 00 10 00 00 	cmp    $0x1000,%r12
 531:	4c 0f 42 e0          	cmovb  %rax,%r12
 535:	48 8b 07             	mov    (%rdi),%rax
 538:	4c 89 e6             	mov    %r12,%rsi
 53b:	ff 10                	callq  *(%rax)
 53d:	49 89 c7             	mov    %rax,%r15
 540:	48 85 c0             	test   %rax,%rax
 543:	0f 84 86 06 00 00    	je     bcf <_ZN5Xbyak13CodeGenerator6opAddrERKNS_7AddressEiiib+0xbcf>
 549:	31 d2                	xor    %edx,%edx
 54b:	48 83 bb 80 00 00 00 	cmpq   $0x0,0x80(%rbx)
 552:	00 
 553:	74 1c                	je     571 <_ZN5Xbyak13CodeGenerator6opAddrERKNS_7AddressEiiib+0x571>
 555:	0f 1f 00             	nopl   (%rax)
 558:	48 8b 4b 78          	mov    0x78(%rbx),%rcx
 55c:	0f b6 0c 11          	movzbl (%rcx,%rdx,1),%ecx
 560:	41 88 0c 17          	mov    %cl,(%r15,%rdx,1)
 564:	48 83 c2 01          	add    $0x1,%rdx
 568:	48 39 93 80 00 00 00 	cmp    %rdx,0x80(%rbx)
 56f:	77 e7                	ja     558 <_ZN5Xbyak13CodeGenerator6opAddrERKNS_7AddressEiiib+0x558>
 571:	48 8b 7b 68          	mov    0x68(%rbx),%rdi
 575:	48 8b 73 78          	mov    0x78(%rbx),%rsi
 579:	48 8b 17             	mov    (%rdi),%rdx
 57c:	ff 52 08             	callq  *0x8(%rdx)
 57f:	4c 89 7b 78          	mov    %r15,0x78(%rbx)
 583:	48 8b 93 80 00 00 00 	mov    0x80(%rbx),%rdx
 58a:	4c 89 63 70          	mov    %r12,0x70(%rbx)
 58e:	48 8d 4a 01          	lea    0x1(%rdx),%rcx
 592:	83 c5 08             	add    $0x8,%ebp
 595:	48 89 8b 80 00 00 00 	mov    %rcx,0x80(%rbx)
 59c:	45 88 2c 17          	mov    %r13b,(%r15,%rdx,1)
 5a0:	83 fd 20             	cmp    $0x20,%ebp
 5a3:	0f 85 4f ff ff ff    	jne    4f8 <_ZN5Xbyak13CodeGenerator6opAddrERKNS_7AddressEiiib+0x4f8>
 5a9:	e9 92 fa ff ff       	jmpq   40 <_ZN5Xbyak13CodeGenerator6opAddrERKNS_7AddressEiiib+0x40>
 5ae:	66 90                	xchg   %ax,%ax
 5b0:	83 7b 20 03          	cmpl   $0x3,0x20(%rbx)
 5b4:	0f 85 a1 05 00 00    	jne    b5b <_ZN5Xbyak13CodeGenerator6opAddrERKNS_7AddressEiiib+0xb5b>
 5ba:	48 8b 7b 68          	mov    0x68(%rbx),%rdi
 5be:	4d 01 e4             	add    %r12,%r12
 5c1:	b8 00 10 00 00       	mov    $0x1000,%eax
 5c6:	49 81 fc 00 10 00 00 	cmp    $0x1000,%r12
 5cd:	4c 0f 42 e0          	cmovb  %rax,%r12
 5d1:	48 8b 07             	mov    (%rdi),%rax
 5d4:	4c 89 e6             	mov    %r12,%rsi
 5d7:	ff 10                	callq  *(%rax)
 5d9:	48 89 c5             	mov    %rax,%rbp
 5dc:	48 85 c0             	test   %rax,%rax
 5df:	0f 84 ea 05 00 00    	je     bcf <_ZN5Xbyak13CodeGenerator6opAddrERKNS_7AddressEiiib+0xbcf>
 5e5:	31 d2                	xor    %edx,%edx
 5e7:	48 83 bb 80 00 00 00 	cmpq   $0x0,0x80(%rbx)
 5ee:	00 
 5ef:	74 21                	je     612 <_ZN5Xbyak13CodeGenerator6opAddrERKNS_7AddressEiiib+0x612>
 5f1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
 5f8:	48 8b 73 78          	mov    0x78(%rbx),%rsi
 5fc:	0f b6 34 16          	movzbl (%rsi,%rdx,1),%esi
 600:	40 88 74 15 00       	mov    %sil,0x0(%rbp,%rdx,1)
 605:	48 83 c2 01          	add    $0x1,%rdx
 609:	48 39 93 80 00 00 00 	cmp    %rdx,0x80(%rbx)
 610:	77 e6                	ja     5f8 <_ZN5Xbyak13CodeGenerator6opAddrERKNS_7AddressEiiib+0x5f8>
 612:	48 8b 7b 68          	mov    0x68(%rbx),%rdi
 616:	48 8b 73 78          	mov    0x78(%rbx),%rsi
 61a:	48 8b 07             	mov    (%rdi),%rax
 61d:	ff 50 08             	callq  *0x8(%rax)
 620:	48 89 6b 78          	mov    %rbp,0x78(%rbx)
 624:	48 8b 83 80 00 00 00 	mov    0x80(%rbx),%rax
 62b:	4c 89 63 70          	mov    %r12,0x70(%rbx)
 62f:	e9 40 fa ff ff       	jmpq   74 <_ZN5Xbyak13CodeGenerator6opAddrERKNS_7AddressEiiib+0x74>
 634:	0f 1f 40 00          	nopl   0x0(%rax)
 638:	be ff ff ff ff       	mov    $0xffffffff,%esi
 63d:	48 39 f0             	cmp    %rsi,%rax
 640:	0f 84 57 fc ff ff    	je     29d <_ZN5Xbyak13CodeGenerator6opAddrERKNS_7AddressEiiib+0x29d>
 646:	e8 00 00 00 00       	callq  64b <_ZN5Xbyak13CodeGenerator6opAddrERKNS_7AddressEiiib+0x64b>
 64b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
 650:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%rsp)
 657:	00 
 658:	41 b8 05 00 00 00    	mov    $0x5,%r8d
 65e:	e9 8f fc ff ff       	jmpq   2f2 <_ZN5Xbyak13CodeGenerator6opAddrERKNS_7AddressEiiib+0x2f2>
 663:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
 668:	4c 8b 7b 78          	mov    0x78(%rbx),%r15
 66c:	e9 1d ff ff ff       	jmpq   58e <_ZN5Xbyak13CodeGenerator6opAddrERKNS_7AddressEiiib+0x58e>
 671:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
 678:	4c 8b 7b 78          	mov    0x78(%rbx),%r15
 67c:	e9 65 fb ff ff       	jmpq   1e6 <_ZN5Xbyak13CodeGenerator6opAddrERKNS_7AddressEiiib+0x1e6>
 681:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
 688:	4c 8b 7b 70          	mov    0x70(%rbx),%r15
 68c:	41 bd 04 00 00 00    	mov    $0x4,%r13d
 692:	49 39 ff             	cmp    %rdi,%r15
 695:	0f 87 a9 00 00 00    	ja     744 <_ZN5Xbyak13CodeGenerator6opAddrERKNS_7AddressEiiib+0x744>
 69b:	83 7b 20 03          	cmpl   $0x3,0x20(%rbx)
 69f:	0f 85 b6 04 00 00    	jne    b5b <_ZN5Xbyak13CodeGenerator6opAddrERKNS_7AddressEiiib+0xb5b>
 6a5:	48 8b 7b 68          	mov    0x68(%rbx),%rdi
 6a9:	4d 01 ff             	add    %r15,%r15
 6ac:	b8 00 10 00 00       	mov    $0x1000,%eax
 6b1:	49 81 ff 00 10 00 00 	cmp    $0x1000,%r15
 6b8:	4c 0f 42 f8          	cmovb  %rax,%r15
 6bc:	48 8b 07             	mov    (%rdi),%rax
 6bf:	4c 89 fe             	mov    %r15,%rsi
 6c2:	ff 10                	callq  *(%rax)
 6c4:	49 89 c6             	mov    %rax,%r14
 6c7:	48 85 c0             	test   %rax,%rax
 6ca:	0f 84 ff 04 00 00    	je     bcf <_ZN5Xbyak13CodeGenerator6opAddrERKNS_7AddressEiiib+0xbcf>
 6d0:	31 d2                	xor    %edx,%edx
 6d2:	48 83 bb 80 00 00 00 	cmpq   $0x0,0x80(%rbx)
 6d9:	00 
 6da:	74 1d                	je     6f9 <_ZN5Xbyak13CodeGenerator6opAddrERKNS_7AddressEiiib+0x6f9>
 6dc:	0f 1f 40 00          	nopl   0x0(%rax)
 6e0:	48 8b 43 78          	mov    0x78(%rbx),%rax
 6e4:	0f b6 04 10          	movzbl (%rax,%rdx,1),%eax
 6e8:	41 88 04 16          	mov    %al,(%r14,%rdx,1)
 6ec:	48 83 c2 01          	add    $0x1,%rdx
 6f0:	48 39 93 80 00 00 00 	cmp    %rdx,0x80(%rbx)
 6f7:	77 e7                	ja     6e0 <_ZN5Xbyak13CodeGenerator6opAddrERKNS_7AddressEiiib+0x6e0>
 6f9:	48 8b 7b 68          	mov    0x68(%rbx),%rdi
 6fd:	48 8b 73 78          	mov    0x78(%rbx),%rsi
 701:	48 8b 07             	mov    (%rdi),%rax
 704:	ff 50 08             	callq  *0x8(%rax)
 707:	4c 89 73 78          	mov    %r14,0x78(%rbx)
 70b:	48 8b bb 80 00 00 00 	mov    0x80(%rbx),%rdi
 712:	4c 89 7b 70          	mov    %r15,0x70(%rbx)
 716:	48 8d 47 01          	lea    0x1(%rdi),%rax
 71a:	48 89 83 80 00 00 00 	mov    %rax,0x80(%rbx)
 721:	41 c6 04 3e 00       	movb   $0x0,(%r14,%rdi,1)
 726:	49 83 ed 01          	sub    $0x1,%r13
 72a:	0f 84 c8 02 00 00    	je     9f8 <_ZN5Xbyak13CodeGenerator6opAddrERKNS_7AddressEiiib+0x9f8>
 730:	48 8b bb 80 00 00 00 	mov    0x80(%rbx),%rdi
 737:	4c 8b 7b 70          	mov    0x70(%rbx),%r15
 73b:	49 39 ff             	cmp    %rdi,%r15
 73e:	0f 86 57 ff ff ff    	jbe    69b <_ZN5Xbyak13CodeGenerator6opAddrERKNS_7AddressEiiib+0x69b>
 744:	4c 8b 73 78          	mov    0x78(%rbx),%r14
 748:	eb cc                	jmp    716 <_ZN5Xbyak13CodeGenerator6opAddrERKNS_7AddressEiiib+0x716>
 74a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
 750:	41 83 7e 30 03       	cmpl   $0x3,0x30(%r14)
 755:	4d 8b 6e 20          	mov    0x20(%r14),%r13
 759:	0f 84 31 03 00 00    	je     a90 <_ZN5Xbyak13CodeGenerator6opAddrERKNS_7AddressEiiib+0xa90>
 75f:	49 8d 95 00 00 00 80 	lea    -0x80000000(%r13),%rdx
 766:	48 b8 ff ff ff ff fe 	movabs $0xfffffffeffffffff,%rax
 76d:	ff ff ff 
 770:	48 39 c2             	cmp    %rax,%rdx
 773:	0f 86 51 04 00 00    	jbe    bca <_ZN5Xbyak13CodeGenerator6opAddrERKNS_7AddressEiiib+0xbca>
 779:	45 89 ed             	mov    %r13d,%r13d
 77c:	45 31 f6             	xor    %r14d,%r14d
 77f:	90                   	nop
 780:	48 8b 83 80 00 00 00 	mov    0x80(%rbx),%rax
 787:	48 8b 6b 70          	mov    0x70(%rbx),%rbp
 78b:	4d 89 ec             	mov    %r13,%r12
 78e:	44 89 f1             	mov    %r14d,%ecx
 791:	49 d3 ec             	shr    %cl,%r12
 794:	48 39 e8             	cmp    %rbp,%rax
 797:	0f 82 a3 00 00 00    	jb     840 <_ZN5Xbyak13CodeGenerator6opAddrERKNS_7AddressEiiib+0x840>
 79d:	83 7b 20 03          	cmpl   $0x3,0x20(%rbx)
 7a1:	0f 85 b4 03 00 00    	jne    b5b <_ZN5Xbyak13CodeGenerator6opAddrERKNS_7AddressEiiib+0xb5b>
 7a7:	48 8b 7b 68          	mov    0x68(%rbx),%rdi
 7ab:	48 01 ed             	add    %rbp,%rbp
 7ae:	b8 00 10 00 00       	mov    $0x1000,%eax
 7b3:	48 81 fd 00 10 00 00 	cmp    $0x1000,%rbp
 7ba:	48 0f 42 e8          	cmovb  %rax,%rbp
 7be:	48 8b 07             	mov    (%rdi),%rax
 7c1:	48 89 ee             	mov    %rbp,%rsi
 7c4:	ff 10                	callq  *(%rax)
 7c6:	49 89 c7             	mov    %rax,%r15
 7c9:	48 85 c0             	test   %rax,%rax
 7cc:	0f 84 fd 03 00 00    	je     bcf <_ZN5Xbyak13CodeGenerator6opAddrERKNS_7AddressEiiib+0xbcf>
 7d2:	31 d2                	xor    %edx,%edx
 7d4:	48 83 bb 80 00 00 00 	cmpq   $0x0,0x80(%rbx)
 7db:	00 
 7dc:	74 1b                	je     7f9 <_ZN5Xbyak13CodeGenerator6opAddrERKNS_7AddressEiiib+0x7f9>
 7de:	66 90                	xchg   %ax,%ax
 7e0:	48 8b 43 78          	mov    0x78(%rbx),%rax
 7e4:	0f b6 04 10          	movzbl (%rax,%rdx,1),%eax
 7e8:	41 88 04 17          	mov    %al,(%r15,%rdx,1)
 7ec:	48 83 c2 01          	add    $0x1,%rdx
 7f0:	48 39 93 80 00 00 00 	cmp    %rdx,0x80(%rbx)
 7f7:	77 e7                	ja     7e0 <_ZN5Xbyak13CodeGenerator6opAddrERKNS_7AddressEiiib+0x7e0>
 7f9:	48 8b 7b 68          	mov    0x68(%rbx),%rdi
 7fd:	48 8b 73 78          	mov    0x78(%rbx),%rsi
 801:	48 8b 07             	mov    (%rdi),%rax
 804:	ff 50 08             	callq  *0x8(%rax)
 807:	4c 89 7b 78          	mov    %r15,0x78(%rbx)
 80b:	48 8b 83 80 00 00 00 	mov    0x80(%rbx),%rax
 812:	48 89 6b 70          	mov    %rbp,0x70(%rbx)
 816:	48 8d 50 01          	lea    0x1(%rax),%rdx
 81a:	41 83 c6 08          	add    $0x8,%r14d
 81e:	48 89 93 80 00 00 00 	mov    %rdx,0x80(%rbx)
 825:	45 88 24 07          	mov    %r12b,(%r15,%rax,1)
 829:	41 83 fe 20          	cmp    $0x20,%r14d
 82d:	0f 85 4d ff ff ff    	jne    780 <_ZN5Xbyak13CodeGenerator6opAddrERKNS_7AddressEiiib+0x780>
 833:	e9 08 f8 ff ff       	jmpq   40 <_ZN5Xbyak13CodeGenerator6opAddrERKNS_7AddressEiiib+0x40>
 838:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
 83f:	00 
 840:	4c 8b 7b 78          	mov    0x78(%rbx),%r15
 844:	eb d0                	jmp    816 <_ZN5Xbyak13CodeGenerator6opAddrERKNS_7AddressEiiib+0x816>
 846:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 84d:	00 00 00 
 850:	4c 8b 63 78          	mov    0x78(%rbx),%r12
 854:	e9 6d fc ff ff       	jmpq   4c6 <_ZN5Xbyak13CodeGenerator6opAddrERKNS_7AddressEiiib+0x4c6>
 859:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
 860:	48 8b 43 78          	mov    0x78(%rbx),%rax
 864:	e9 6c fb ff ff       	jmpq   3d5 <_ZN5Xbyak13CodeGenerator6opAddrERKNS_7AddressEiiib+0x3d5>
 869:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
 870:	45 85 c0             	test   %r8d,%r8d
 873:	0f 85 d7 01 00 00    	jne    a50 <_ZN5Xbyak13CodeGenerator6opAddrERKNS_7AddressEiiib+0xa50>
 879:	41 8d 46 80          	lea    -0x80(%r14),%eax
 87d:	3d 00 ff ff ff       	cmp    $0xffffff00,%eax
 882:	19 f6                	sbb    %esi,%esi
 884:	83 e6 40             	and    $0x40,%esi
 887:	83 c6 40             	add    $0x40,%esi
 88a:	3d 00 ff ff ff       	cmp    $0xffffff00,%eax
 88f:	19 c0                	sbb    %eax,%eax
 891:	f7 d0                	not    %eax
 893:	83 c0 02             	add    $0x2,%eax
 896:	e9 3f fa ff ff       	jmpq   2da <_ZN5Xbyak13CodeGenerator6opAddrERKNS_7AddressEiiib+0x2da>
 89b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
 8a0:	40 80 ff 04          	cmp    $0x4,%dil
 8a4:	0f 84 9b 02 00 00    	je     b45 <_ZN5Xbyak13CodeGenerator6opAddrERKNS_7AddressEiiib+0xb45>
 8aa:	41 09 fd             	or     %edi,%r13d
 8ad:	48 89 df             	mov    %rbx,%rdi
 8b0:	89 04 24             	mov    %eax,(%rsp)
 8b3:	44 09 ee             	or     %r13d,%esi
 8b6:	40 0f b6 f6          	movzbl %sil,%esi
 8ba:	e8 00 00 00 00       	callq  8bf <_ZN5Xbyak13CodeGenerator6opAddrERKNS_7AddressEiiib+0x8bf>
 8bf:	8b 04 24             	mov    (%rsp),%eax
 8c2:	44 89 7c 24 08       	mov    %r15d,0x8(%rsp)
 8c7:	41 89 c7             	mov    %eax,%r15d
 8ca:	e9 06 fc ff ff       	jmpq   4d5 <_ZN5Xbyak13CodeGenerator6opAddrERKNS_7AddressEiiib+0x4d5>
 8cf:	90                   	nop
 8d0:	48 8b 83 80 00 00 00 	mov    0x80(%rbx),%rax
 8d7:	4c 8b 63 70          	mov    0x70(%rbx),%r12
 8db:	4c 39 e0             	cmp    %r12,%rax
 8de:	0f 82 d4 01 00 00    	jb     ab8 <_ZN5Xbyak13CodeGenerator6opAddrERKNS_7AddressEiiib+0xab8>
 8e4:	83 7b 20 03          	cmpl   $0x3,0x20(%rbx)
 8e8:	0f 85 6d 02 00 00    	jne    b5b <_ZN5Xbyak13CodeGenerator6opAddrERKNS_7AddressEiiib+0xb5b>
 8ee:	48 8b 7b 68          	mov    0x68(%rbx),%rdi
 8f2:	4d 01 e4             	add    %r12,%r12
 8f5:	b8 00 10 00 00       	mov    $0x1000,%eax
 8fa:	49 81 fc 00 10 00 00 	cmp    $0x1000,%r12
 901:	4c 0f 42 e0          	cmovb  %rax,%r12
 905:	48 8b 07             	mov    (%rdi),%rax
 908:	4c 89 e6             	mov    %r12,%rsi
 90b:	ff 10                	callq  *(%rax)
 90d:	48 89 c5             	mov    %rax,%rbp
 910:	48 85 c0             	test   %rax,%rax
 913:	0f 84 b6 02 00 00    	je     bcf <_ZN5Xbyak13CodeGenerator6opAddrERKNS_7AddressEiiib+0xbcf>
 919:	31 d2                	xor    %edx,%edx
 91b:	48 83 bb 80 00 00 00 	cmpq   $0x0,0x80(%rbx)
 922:	00 
 923:	74 1c                	je     941 <_ZN5Xbyak13CodeGenerator6opAddrERKNS_7AddressEiiib+0x941>
 925:	0f 1f 00             	nopl   (%rax)
 928:	48 8b 4b 78          	mov    0x78(%rbx),%rcx
 92c:	0f b6 0c 11          	movzbl (%rcx,%rdx,1),%ecx
 930:	88 4c 15 00          	mov    %cl,0x0(%rbp,%rdx,1)
 934:	48 83 c2 01          	add    $0x1,%rdx
 938:	48 39 93 80 00 00 00 	cmp    %rdx,0x80(%rbx)
 93f:	77 e7                	ja     928 <_ZN5Xbyak13CodeGenerator6opAddrERKNS_7AddressEiiib+0x928>
 941:	48 8b 7b 68          	mov    0x68(%rbx),%rdi
 945:	48 8b 73 78          	mov    0x78(%rbx),%rsi
 949:	48 8b 07             	mov    (%rdi),%rax
 94c:	ff 50 08             	callq  *0x8(%rax)
 94f:	48 89 6b 78          	mov    %rbp,0x78(%rbx)
 953:	48 8b 83 80 00 00 00 	mov    0x80(%rbx),%rax
 95a:	4c 89 63 70          	mov    %r12,0x70(%rbx)
 95e:	e9 59 01 00 00       	jmpq   abc <_ZN5Xbyak13CodeGenerator6opAddrERKNS_7AddressEiiib+0xabc>
 963:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
 968:	48 8b 43 70          	mov    0x70(%rbx),%rax
 96c:	48 8d 57 10          	lea    0x10(%rdi),%rdx
 970:	48 39 c2             	cmp    %rax,%rdx
 973:	0f 82 30 f7 ff ff    	jb     a9 <_ZN5Xbyak13CodeGenerator6opAddrERKNS_7AddressEiiib+0xa9>
 979:	4c 8d 34 00          	lea    (%rax,%rax,1),%r14
 97d:	48 8b 7b 68          	mov    0x68(%rbx),%rdi
 981:	b8 00 10 00 00       	mov    $0x1000,%eax
 986:	49 81 fe 00 10 00 00 	cmp    $0x1000,%r14
 98d:	4c 0f 42 f0          	cmovb  %rax,%r14
 991:	48 8b 07             	mov    (%rdi),%rax
 994:	4c 89 f6             	mov    %r14,%rsi
 997:	ff 10                	callq  *(%rax)
 999:	49 89 c5             	mov    %rax,%r13
 99c:	48 85 c0             	test   %rax,%rax
 99f:	0f 84 2a 02 00 00    	je     bcf <_ZN5Xbyak13CodeGenerator6opAddrERKNS_7AddressEiiib+0xbcf>
 9a5:	31 d2                	xor    %edx,%edx
 9a7:	48 83 bb 80 00 00 00 	cmpq   $0x0,0x80(%rbx)
 9ae:	00 
 9af:	74 21                	je     9d2 <_ZN5Xbyak13CodeGenerator6opAddrERKNS_7AddressEiiib+0x9d2>
 9b1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
 9b8:	48 8b 4b 78          	mov    0x78(%rbx),%rcx
 9bc:	0f b6 0c 11          	movzbl (%rcx,%rdx,1),%ecx
 9c0:	41 88 4c 15 00       	mov    %cl,0x0(%r13,%rdx,1)
 9c5:	48 83 c2 01          	add    $0x1,%rdx
 9c9:	48 39 93 80 00 00 00 	cmp    %rdx,0x80(%rbx)
 9d0:	77 e6                	ja     9b8 <_ZN5Xbyak13CodeGenerator6opAddrERKNS_7AddressEiiib+0x9b8>
 9d2:	48 8b 7b 68          	mov    0x68(%rbx),%rdi
 9d6:	48 8b 73 78          	mov    0x78(%rbx),%rsi
 9da:	48 8b 07             	mov    (%rdi),%rax
 9dd:	ff 50 08             	callq  *0x8(%rax)
 9e0:	4c 89 6b 78          	mov    %r13,0x78(%rbx)
 9e4:	48 8b bb 80 00 00 00 	mov    0x80(%rbx),%rdi
 9eb:	4c 89 73 70          	mov    %r14,0x70(%rbx)
 9ef:	e9 b5 f6 ff ff       	jmpq   a9 <_ZN5Xbyak13CodeGenerator6opAddrERKNS_7AddressEiiib+0xa9>
 9f4:	0f 1f 40 00          	nopl   0x0(%rax)
 9f8:	4c 8b ab 80 00 00 00 	mov    0x80(%rbx),%r13
 9ff:	45 8b 64 24 08       	mov    0x8(%r12),%r12d
 a04:	bf 28 00 00 00       	mov    $0x28,%edi
 a09:	e8 00 00 00 00       	callq  a0e <_ZN5Xbyak13CodeGenerator6opAddrERKNS_7AddressEiiib+0xa0e>
 a0e:	48 8d bb f0 00 00 00 	lea    0xf0(%rbx),%rdi
 a15:	31 f6                	xor    %esi,%esi
 a17:	48 c7 00 00 00 00 00 	movq   $0x0,(%rax)
 a1e:	49 63 d4             	movslq %r12d,%rdx
 a21:	48 89 c1             	mov    %rax,%rcx
 a24:	44 89 60 08          	mov    %r12d,0x8(%rax)
 a28:	4c 89 68 10          	mov    %r13,0x10(%rax)
 a2c:	48 c7 40 18 04 00 00 	movq   $0x4,0x18(%rax)
 a33:	00 
 a34:	48 89 68 20          	mov    %rbp,0x20(%rax)
 a38:	48 83 c4 28          	add    $0x28,%rsp
 a3c:	5b                   	pop    %rbx
 a3d:	5d                   	pop    %rbp
 a3e:	41 5c                	pop    %r12
 a40:	41 5d                	pop    %r13
 a42:	41 5e                	pop    %r14
 a44:	41 5f                	pop    %r15
 a46:	e9 00 00 00 00       	jmpq   a4b <_ZN5Xbyak13CodeGenerator6opAddrERKNS_7AddressEiiib+0xa4b>
 a4b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
 a50:	44 89 f0             	mov    %r14d,%eax
 a53:	31 d2                	xor    %edx,%edx
 a55:	41 f7 f0             	div    %r8d
 a58:	85 d2                	test   %edx,%edx
 a5a:	75 7c                	jne    ad8 <_ZN5Xbyak13CodeGenerator6opAddrERKNS_7AddressEiiib+0xad8>
 a5c:	44 89 d8             	mov    %r11d,%eax
 a5f:	99                   	cltd   
 a60:	41 f7 f8             	idiv   %r8d
 a63:	8d 50 80             	lea    -0x80(%rax),%edx
 a66:	81 fa ff fe ff ff    	cmp    $0xfffffeff,%edx
 a6c:	44 0f 47 f0          	cmova  %eax,%r14d
 a70:	81 fa 00 ff ff ff    	cmp    $0xffffff00,%edx
 a76:	19 f6                	sbb    %esi,%esi
 a78:	83 e6 40             	and    $0x40,%esi
 a7b:	83 c6 40             	add    $0x40,%esi
 a7e:	81 fa 00 ff ff ff    	cmp    $0xffffff00,%edx
 a84:	19 c0                	sbb    %eax,%eax
 a86:	f7 d0                	not    %eax
 a88:	83 c0 02             	add    $0x2,%eax
 a8b:	e9 4a f8 ff ff       	jmpq   2da <_ZN5Xbyak13CodeGenerator6opAddrERKNS_7AddressEiiib+0x2da>
 a90:	83 7b 20 03          	cmpl   $0x3,0x20(%rbx)
 a94:	0f 84 c6 00 00 00    	je     b60 <_ZN5Xbyak13CodeGenerator6opAddrERKNS_7AddressEiiib+0xb60>
 a9a:	4d 29 fd             	sub    %r15,%r13
 a9d:	49 83 ed 04          	sub    $0x4,%r13
 aa1:	4c 2b 6b 78          	sub    0x78(%rbx),%r13
 aa5:	4c 2b ab 80 00 00 00 	sub    0x80(%rbx),%r13
 aac:	e9 ae fc ff ff       	jmpq   75f <_ZN5Xbyak13CodeGenerator6opAddrERKNS_7AddressEiiib+0x75f>
 ab1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
 ab8:	48 8b 6b 78          	mov    0x78(%rbx),%rbp
 abc:	48 8d 50 01          	lea    0x1(%rax),%rdx
 ac0:	48 89 93 80 00 00 00 	mov    %rdx,0x80(%rbx)
 ac7:	44 88 74 05 00       	mov    %r14b,0x0(%rbp,%rax,1)
 acc:	e9 6f f5 ff ff       	jmpq   40 <_ZN5Xbyak13CodeGenerator6opAddrERKNS_7AddressEiiib+0x40>
 ad1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
 ad8:	be 80 ff ff ff       	mov    $0xffffff80,%esi
 add:	b8 02 00 00 00       	mov    $0x2,%eax
 ae2:	e9 f3 f7 ff ff       	jmpq   2da <_ZN5Xbyak13CodeGenerator6opAddrERKNS_7AddressEiiib+0x2da>
 ae7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
 aee:	00 00 
 af0:	be ff ff ff ff       	mov    $0xffffffff,%esi
 af5:	48 39 f0             	cmp    %rsi,%rax
 af8:	0f 84 64 f7 ff ff    	je     262 <_ZN5Xbyak13CodeGenerator6opAddrERKNS_7AddressEiiib+0x262>
 afe:	e9 43 fb ff ff       	jmpq   646 <_ZN5Xbyak13CodeGenerator6opAddrERKNS_7AddressEiiib+0x646>
 b03:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
 b08:	4c 89 d8             	mov    %r11,%rax
 b0b:	be ff ff ff ff       	mov    $0xffffffff,%esi
 b10:	48 c1 e8 20          	shr    $0x20,%rax
 b14:	48 39 f0             	cmp    %rsi,%rax
 b17:	74 09                	je     b22 <_ZN5Xbyak13CodeGenerator6opAddrERKNS_7AddressEiiib+0xb22>
 b19:	48 85 c0             	test   %rax,%rax
 b1c:	0f 85 24 fb ff ff    	jne    646 <_ZN5Xbyak13CodeGenerator6opAddrERKNS_7AddressEiiib+0x646>
 b22:	45 0f b7 fa          	movzwl %r10w,%r15d
 b26:	45 89 de             	mov    %r11d,%r14d
 b29:	89 cf                	mov    %ecx,%edi
 b2b:	41 bc 01 00 00 00    	mov    $0x1,%r12d
 b31:	44 8d 2c d5 00 00 00 	lea    0x0(,%rdx,8),%r13d
 b38:	00 
 b39:	45 89 fa             	mov    %r15d,%r10d
 b3c:	41 83 e5 38          	and    $0x38,%r13d
 b40:	e9 78 f7 ff ff       	jmpq   2bd <_ZN5Xbyak13CodeGenerator6opAddrERKNS_7AddressEiiib+0x2bd>
 b45:	44 89 7c 24 08       	mov    %r15d,0x8(%rsp)
 b4a:	41 09 f5             	or     %esi,%r13d
 b4d:	41 89 c7             	mov    %eax,%r15d
 b50:	41 b8 04 00 00 00    	mov    $0x4,%r8d
 b56:	e9 97 f7 ff ff       	jmpq   2f2 <_ZN5Xbyak13CodeGenerator6opAddrERKNS_7AddressEiiib+0x2f2>
 b5b:	e8 00 00 00 00       	callq  b60 <_ZN5Xbyak13CodeGenerator6opAddrERKNS_7AddressEiiib+0xb60>
 b60:	bf 10 00 00 00       	mov    $0x10,%edi
 b65:	e8 00 00 00 00       	callq  b6a <_ZN5Xbyak13CodeGenerator6opAddrERKNS_7AddressEiiib+0xb6a>
 b6a:	48 8b 15 00 00 00 00 	mov    0x0(%rip),%rdx        # b71 <_ZN5Xbyak13CodeGenerator6opAddrERKNS_7AddressEiiib+0xb71>
 b71:	48 8b 35 00 00 00 00 	mov    0x0(%rip),%rsi        # b78 <_ZN5Xbyak13CodeGenerator6opAddrERKNS_7AddressEiiib+0xb78>
 b78:	48 89 c7             	mov    %rax,%rdi
 b7b:	48 8b 05 00 00 00 00 	mov    0x0(%rip),%rax        # b82 <_ZN5Xbyak13CodeGenerator6opAddrERKNS_7AddressEiiib+0xb82>
 b82:	c7 47 08 2a 00 00 00 	movl   $0x2a,0x8(%rdi)
 b89:	48 83 c0 10          	add    $0x10,%rax
 b8d:	48 89 07             	mov    %rax,(%rdi)
 b90:	e8 00 00 00 00       	callq  b95 <_ZN5Xbyak13CodeGenerator6opAddrERKNS_7AddressEiiib+0xb95>
 b95:	bf 10 00 00 00       	mov    $0x10,%edi
 b9a:	e8 00 00 00 00       	callq  b9f <_ZN5Xbyak13CodeGenerator6opAddrERKNS_7AddressEiiib+0xb9f>
 b9f:	48 8b 15 00 00 00 00 	mov    0x0(%rip),%rdx        # ba6 <_ZN5Xbyak13CodeGenerator6opAddrERKNS_7AddressEiiib+0xba6>
 ba6:	48 8b 35 00 00 00 00 	mov    0x0(%rip),%rsi        # bad <_ZN5Xbyak13CodeGenerator6opAddrERKNS_7AddressEiiib+0xbad>
 bad:	48 89 c7             	mov    %rax,%rdi
 bb0:	48 8b 05 00 00 00 00 	mov    0x0(%rip),%rax        # bb7 <_ZN5Xbyak13CodeGenerator6opAddrERKNS_7AddressEiiib+0xbb7>
 bb7:	c7 47 08 1b 00 00 00 	movl   $0x1b,0x8(%rdi)
 bbe:	48 83 c0 10          	add    $0x10,%rax
 bc2:	48 89 07             	mov    %rax,(%rdi)
 bc5:	e8 00 00 00 00       	callq  bca <_ZN5Xbyak13CodeGenerator6opAddrERKNS_7AddressEiiib+0xbca>
 bca:	e8 00 00 00 00       	callq  bcf <_ZN5Xbyak13CodeGenerator6opAddrERKNS_7AddressEiiib+0xbcf>
 bcf:	e8 00 00 00 00       	callq  bd4 <_GLOBAL__sub_I_mcl.cpp.cold+0x8a4>

Disassembly of section .text._ZN5Xbyak13CodeGenerator6opRM_IERKNS_7OperandEjii:

0000000000000000 <_ZN5Xbyak13CodeGenerator6opRM_IERKNS_7OperandEjii>:
   0:	f3 0f 1e fa          	endbr64 
   4:	41 57                	push   %r15
   6:	41 56                	push   %r14
   8:	41 55                	push   %r13
   a:	41 89 cd             	mov    %ecx,%r13d
   d:	41 54                	push   %r12
   f:	41 89 d4             	mov    %edx,%r12d
  12:	55                   	push   %rbp
  13:	48 89 f5             	mov    %rsi,%rbp
  16:	53                   	push   %rbx
  17:	48 89 fb             	mov    %rdi,%rbx
  1a:	48 83 ec 38          	sub    $0x38,%rsp
  1e:	0f b7 3e             	movzwl (%rsi),%edi
  21:	0f b7 46 02          	movzwl 0x2(%rsi),%eax
  25:	66 c1 ef 06          	shr    $0x6,%di
  29:	66 25 ff 3f          	and    $0x3fff,%ax
  2d:	89 fe                	mov    %edi,%esi
  2f:	66 83 e6 01          	and    $0x1,%si
  33:	74 09                	je     3e <_ZN5Xbyak13CodeGenerator6opRM_IERKNS_7OperandEjii+0x3e>
  35:	66 85 c0             	test   %ax,%ax
  38:	0f 84 0a 07 00 00    	je     748 <_ZN5Xbyak13CodeGenerator6opRM_IERKNS_7OperandEjii+0x748>
  3e:	41 8d 54 24 80       	lea    -0x80(%r12),%edx
  43:	81 fa ff fe ff ff    	cmp    $0xfffffeff,%edx
  49:	0f 87 81 02 00 00    	ja     2d0 <_ZN5Xbyak13CodeGenerator6opRM_IERKNS_7OperandEjii+0x2d0>
  4f:	41 8d 94 24 00 80 ff 	lea    -0x8000(%r12),%edx
  56:	ff 
  57:	81 fa 00 00 ff ff    	cmp    $0xffff0000,%edx
  5d:	19 c9                	sbb    %ecx,%ecx
  5f:	83 c1 01             	add    $0x1,%ecx
  62:	81 fa 00 00 ff ff    	cmp    $0xffff0000,%edx
  68:	0f b7 d0             	movzwl %ax,%edx
  6b:	45 19 ff             	sbb    %r15d,%r15d
  6e:	41 83 e7 10          	and    $0x10,%r15d
  72:	41 83 c7 10          	add    $0x10,%r15d
  76:	a8 08                	test   $0x8,%al
  78:	0f 84 65 02 00 00    	je     2e3 <_ZN5Xbyak13CodeGenerator6opRM_IERKNS_7OperandEjii+0x2e3>
  7e:	83 fa 07             	cmp    $0x7,%edx
  81:	0f 86 bc 06 00 00    	jbe    743 <_ZN5Xbyak13CodeGenerator6opRM_IERKNS_7OperandEjii+0x743>
  87:	41 bf 08 00 00 00    	mov    $0x8,%r15d
  8d:	40 f6 c7 02          	test   $0x2,%dil
  91:	0f 85 89 02 00 00    	jne    320 <_ZN5Xbyak13CodeGenerator6opRM_IERKNS_7OperandEjii+0x320>
  97:	45 89 fd             	mov    %r15d,%r13d
  9a:	b8 20 00 00 00       	mov    $0x20,%eax
  9f:	41 c1 ed 03          	shr    $0x3,%r13d
  a3:	83 fa 20             	cmp    $0x20,%edx
  a6:	0f 46 c2             	cmovbe %edx,%eax
  a9:	45 89 ee             	mov    %r13d,%r14d
  ac:	41 39 c7             	cmp    %eax,%r15d
  af:	19 c0                	sbb    %eax,%eax
  b1:	83 e0 02             	and    $0x2,%eax
  b4:	83 e8 80             	sub    $0xffffff80,%eax
  b7:	66 85 f6             	test   %si,%si
  ba:	0f 84 6f 06 00 00    	je     72f <_ZN5Xbyak13CodeGenerator6opRM_IERKNS_7OperandEjii+0x72f>
  c0:	41 83 e0 3f          	and    $0x3f,%r8d
  c4:	c1 e2 10             	shl    $0x10,%edx
  c7:	80 64 24 1c c0       	andb   $0xc0,0x1c(%rsp)
  cc:	41 80 c8 80          	or     $0x80,%r8b
  d0:	41 09 d0             	or     %edx,%r8d
  d3:	8b 54 24 18          	mov    0x18(%rsp),%edx
  d7:	81 e2 00 00 00 80    	and    $0x80000000,%edx
  dd:	41 09 d0             	or     %edx,%r8d
  e0:	83 7d 30 01          	cmpl   $0x1,0x30(%rbp)
  e4:	44 89 44 24 18       	mov    %r8d,0x18(%rsp)
  e9:	0f 84 45 06 00 00    	je     734 <_ZN5Xbyak13CodeGenerator6opRM_IERKNS_7OperandEjii+0x734>
  ef:	48 8d 54 24 18       	lea    0x18(%rsp),%rdx
  f4:	48 89 ee             	mov    %rbp,%rsi
  f7:	48 89 df             	mov    %rbx,%rdi
  fa:	89 04 24             	mov    %eax,(%rsp)
  fd:	e8 00 00 00 00       	callq  102 <_ZN5Xbyak13CodeGenerator6opRM_IERKNS_7OperandEjii+0x102>
 102:	44 0f b7 7c 24 1a    	movzwl 0x1a(%rsp),%r15d
 108:	8b 04 24             	mov    (%rsp),%eax
 10b:	48 8b 93 80 00 00 00 	mov    0x80(%rbx),%rdx
 112:	48 8b 4b 70          	mov    0x70(%rbx),%rcx
 116:	66 41 81 e7 ff 3f    	and    $0x3fff,%r15w
 11c:	66 41 c1 ef 03       	shr    $0x3,%r15w
 121:	41 83 f7 01          	xor    $0x1,%r15d
 125:	41 83 e7 01          	and    $0x1,%r15d
 129:	41 09 c7             	or     %eax,%r15d
 12c:	48 39 ca             	cmp    %rcx,%rdx
 12f:	0f 82 53 05 00 00    	jb     688 <_ZN5Xbyak13CodeGenerator6opRM_IERKNS_7OperandEjii+0x688>
 135:	83 7b 20 03          	cmpl   $0x3,0x20(%rbx)
 139:	0f 85 fa 05 00 00    	jne    739 <_ZN5Xbyak13CodeGenerator6opRM_IERKNS_7OperandEjii+0x739>
 13f:	48 01 c9             	add    %rcx,%rcx
 142:	48 8b 7b 68          	mov    0x68(%rbx),%rdi
 146:	b8 00 10 00 00       	mov    $0x1000,%eax
 14b:	48 81 f9 00 10 00 00 	cmp    $0x1000,%rcx
 152:	48 0f 42 c8          	cmovb  %rax,%rcx
 156:	48 8b 07             	mov    (%rdi),%rax
 159:	48 89 0c 24          	mov    %rcx,(%rsp)
 15d:	48 89 ce             	mov    %rcx,%rsi
 160:	ff 10                	callq  *(%rax)
 162:	48 85 c0             	test   %rax,%rax
 165:	0f 84 d3 05 00 00    	je     73e <_ZN5Xbyak13CodeGenerator6opRM_IERKNS_7OperandEjii+0x73e>
 16b:	31 d2                	xor    %edx,%edx
 16d:	48 83 bb 80 00 00 00 	cmpq   $0x0,0x80(%rbx)
 174:	00 
 175:	48 8b 0c 24          	mov    (%rsp),%rcx
 179:	74 1e                	je     199 <_ZN5Xbyak13CodeGenerator6opRM_IERKNS_7OperandEjii+0x199>
 17b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
 180:	48 8b 73 78          	mov    0x78(%rbx),%rsi
 184:	0f b6 34 16          	movzbl (%rsi,%rdx,1),%esi
 188:	40 88 34 10          	mov    %sil,(%rax,%rdx,1)
 18c:	48 83 c2 01          	add    $0x1,%rdx
 190:	48 39 93 80 00 00 00 	cmp    %rdx,0x80(%rbx)
 197:	77 e7                	ja     180 <_ZN5Xbyak13CodeGenerator6opRM_IERKNS_7OperandEjii+0x180>
 199:	48 8b 7b 68          	mov    0x68(%rbx),%rdi
 19d:	48 8b 73 78          	mov    0x78(%rbx),%rsi
 1a1:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
 1a6:	48 89 0c 24          	mov    %rcx,(%rsp)
 1aa:	48 8b 17             	mov    (%rdi),%rdx
 1ad:	ff 52 08             	callq  *0x8(%rdx)
 1b0:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
 1b5:	48 8b 0c 24          	mov    (%rsp),%rcx
 1b9:	48 8b 93 80 00 00 00 	mov    0x80(%rbx),%rdx
 1c0:	48 89 43 78          	mov    %rax,0x78(%rbx)
 1c4:	48 89 4b 70          	mov    %rcx,0x70(%rbx)
 1c8:	48 8d 4a 01          	lea    0x1(%rdx),%rcx
 1cc:	45 31 c9             	xor    %r9d,%r9d
 1cf:	45 31 c0             	xor    %r8d,%r8d
 1d2:	48 89 ee             	mov    %rbp,%rsi
 1d5:	48 89 8b 80 00 00 00 	mov    %rcx,0x80(%rbx)
 1dc:	48 89 df             	mov    %rbx,%rdi
 1df:	44 89 f1             	mov    %r14d,%ecx
 1e2:	44 88 3c 10          	mov    %r15b,(%rax,%rdx,1)
 1e6:	0f b6 54 24 18       	movzbl 0x18(%rsp),%edx
 1eb:	83 e2 1f             	and    $0x1f,%edx
 1ee:	e8 00 00 00 00       	callq  1f3 <_ZN5Xbyak13CodeGenerator6opRM_IERKNS_7OperandEjii+0x1f3>
 1f3:	45 31 f6             	xor    %r14d,%r14d
 1f6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 1fd:	00 00 00 
 200:	48 8b 93 80 00 00 00 	mov    0x80(%rbx),%rdx
 207:	48 8b 6b 70          	mov    0x70(%rbx),%rbp
 20b:	42 8d 0c f5 00 00 00 	lea    0x0(,%r14,8),%ecx
 212:	00 
 213:	4d 89 e7             	mov    %r12,%r15
 216:	49 d3 ef             	shr    %cl,%r15
 219:	48 39 ea             	cmp    %rbp,%rdx
 21c:	0f 82 56 04 00 00    	jb     678 <_ZN5Xbyak13CodeGenerator6opRM_IERKNS_7OperandEjii+0x678>
 222:	83 7b 20 03          	cmpl   $0x3,0x20(%rbx)
 226:	0f 85 0d 05 00 00    	jne    739 <_ZN5Xbyak13CodeGenerator6opRM_IERKNS_7OperandEjii+0x739>
 22c:	48 01 ed             	add    %rbp,%rbp
 22f:	48 8b 7b 68          	mov    0x68(%rbx),%rdi
 233:	b8 00 10 00 00       	mov    $0x1000,%eax
 238:	48 81 fd 00 10 00 00 	cmp    $0x1000,%rbp
 23f:	48 0f 42 e8          	cmovb  %rax,%rbp
 243:	48 8b 07             	mov    (%rdi),%rax
 246:	48 89 ee             	mov    %rbp,%rsi
 249:	ff 10                	callq  *(%rax)
 24b:	48 85 c0             	test   %rax,%rax
 24e:	0f 84 ea 04 00 00    	je     73e <_ZN5Xbyak13CodeGenerator6opRM_IERKNS_7OperandEjii+0x73e>
 254:	31 d2                	xor    %edx,%edx
 256:	48 83 bb 80 00 00 00 	cmpq   $0x0,0x80(%rbx)
 25d:	00 
 25e:	74 18                	je     278 <_ZN5Xbyak13CodeGenerator6opRM_IERKNS_7OperandEjii+0x278>
 260:	48 8b 4b 78          	mov    0x78(%rbx),%rcx
 264:	0f b6 0c 11          	movzbl (%rcx,%rdx,1),%ecx
 268:	88 0c 10             	mov    %cl,(%rax,%rdx,1)
 26b:	48 83 c2 01          	add    $0x1,%rdx
 26f:	48 39 93 80 00 00 00 	cmp    %rdx,0x80(%rbx)
 276:	77 e8                	ja     260 <_ZN5Xbyak13CodeGenerator6opRM_IERKNS_7OperandEjii+0x260>
 278:	48 8b 7b 68          	mov    0x68(%rbx),%rdi
 27c:	48 8b 73 78          	mov    0x78(%rbx),%rsi
 280:	48 89 04 24          	mov    %rax,(%rsp)
 284:	48 8b 17             	mov    (%rdi),%rdx
 287:	ff 52 08             	callq  *0x8(%rdx)
 28a:	48 8b 04 24          	mov    (%rsp),%rax
 28e:	48 89 6b 70          	mov    %rbp,0x70(%rbx)
 292:	48 8b 93 80 00 00 00 	mov    0x80(%rbx),%rdx
 299:	48 89 43 78          	mov    %rax,0x78(%rbx)
 29d:	48 8d 4a 01          	lea    0x1(%rdx),%rcx
 2a1:	49 83 c6 01          	add    $0x1,%r14
 2a5:	48 89 8b 80 00 00 00 	mov    %rcx,0x80(%rbx)
 2ac:	44 88 3c 10          	mov    %r15b,(%rax,%rdx,1)
 2b0:	4d 39 f5             	cmp    %r14,%r13
 2b3:	0f 85 47 ff ff ff    	jne    200 <_ZN5Xbyak13CodeGenerator6opRM_IERKNS_7OperandEjii+0x200>
 2b9:	48 83 c4 38          	add    $0x38,%rsp
 2bd:	5b                   	pop    %rbx
 2be:	5d                   	pop    %rbp
 2bf:	41 5c                	pop    %r12
 2c1:	41 5d                	pop    %r13
 2c3:	41 5e                	pop    %r14
 2c5:	41 5f                	pop    %r15
 2c7:	c3                   	retq   
 2c8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
 2cf:	00 
 2d0:	31 c9                	xor    %ecx,%ecx
 2d2:	41 bf 08 00 00 00    	mov    $0x8,%r15d
 2d8:	0f b7 d0             	movzwl %ax,%edx
 2db:	a8 08                	test   $0x8,%al
 2dd:	0f 85 9b fd ff ff    	jne    7e <_ZN5Xbyak13CodeGenerator6opRM_IERKNS_7OperandEjii+0x7e>
 2e3:	41 39 d7             	cmp    %edx,%r15d
 2e6:	0f 87 57 04 00 00    	ja     743 <_ZN5Xbyak13CodeGenerator6opRM_IERKNS_7OperandEjii+0x743>
 2ec:	a8 60                	test   $0x60,%al
 2ee:	0f 84 99 fd ff ff    	je     8d <_ZN5Xbyak13CodeGenerator6opRM_IERKNS_7OperandEjii+0x8d>
 2f4:	84 c9                	test   %cl,%cl
 2f6:	0f 84 91 fd ff ff    	je     8d <_ZN5Xbyak13CodeGenerator6opRM_IERKNS_7OperandEjii+0x8d>
 2fc:	41 bf 20 00 00 00    	mov    $0x20,%r15d
 302:	40 f6 c7 02          	test   $0x2,%dil
 306:	75 18                	jne    320 <_ZN5Xbyak13CodeGenerator6opRM_IERKNS_7OperandEjii+0x320>
 308:	41 bd 04 00 00 00    	mov    $0x4,%r13d
 30e:	b8 80 00 00 00       	mov    $0x80,%eax
 313:	41 be 04 00 00 00    	mov    $0x4,%r14d
 319:	e9 99 fd ff ff       	jmpq   b7 <_ZN5Xbyak13CodeGenerator6opRM_IERKNS_7OperandEjii+0xb7>
 31e:	66 90                	xchg   %ax,%ax
 320:	0f b6 4d 00          	movzbl 0x0(%rbp),%ecx
 324:	41 89 c9             	mov    %ecx,%r9d
 327:	41 83 e1 3f          	and    $0x3f,%r9d
 32b:	83 e1 1f             	and    $0x1f,%ecx
 32e:	75 20                	jne    350 <_ZN5Xbyak13CodeGenerator6opRM_IERKNS_7OperandEjii+0x350>
 330:	44 39 fa             	cmp    %r15d,%edx
 333:	0f 84 87 03 00 00    	je     6c0 <_ZN5Xbyak13CodeGenerator6opRM_IERKNS_7OperandEjii+0x6c0>
 339:	a8 40                	test   $0x40,%al
 33b:	74 13                	je     350 <_ZN5Xbyak13CodeGenerator6opRM_IERKNS_7OperandEjii+0x350>
 33d:	41 83 ff 20          	cmp    $0x20,%r15d
 341:	0f 84 79 03 00 00    	je     6c0 <_ZN5Xbyak13CodeGenerator6opRM_IERKNS_7OperandEjii+0x6c0>
 347:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
 34e:	00 00 
 350:	83 fa 20             	cmp    $0x20,%edx
 353:	b9 20 00 00 00       	mov    $0x20,%ecx
 358:	41 bd 82 00 00 00    	mov    $0x82,%r13d
 35e:	0f 46 ca             	cmovbe %edx,%ecx
 361:	44 39 f9             	cmp    %r15d,%ecx
 364:	77 0f                	ja     375 <_ZN5Xbyak13CodeGenerator6opRM_IERKNS_7OperandEjii+0x375>
 366:	44 0f b6 4d 00       	movzbl 0x0(%rbp),%r9d
 36b:	41 bd 80 00 00 00    	mov    $0x80,%r13d
 371:	41 83 e1 3f          	and    $0x3f,%r9d
 375:	48 8b 4d 00          	mov    0x0(%rbp),%rcx
 379:	0f b6 75 04          	movzbl 0x4(%rbp),%esi
 37d:	48 89 4c 24 28       	mov    %rcx,0x28(%rsp)
 382:	41 89 f2             	mov    %esi,%r10d
 385:	8d 4a f8             	lea    -0x8(%rdx),%ecx
 388:	40 c0 ee 03          	shr    $0x3,%sil
 38c:	41 83 e2 07          	and    $0x7,%r10d
 390:	83 e6 07             	and    $0x7,%esi
 393:	83 e1 f7             	and    $0xfffffff7,%ecx
 396:	74 28                	je     3c0 <_ZN5Xbyak13CodeGenerator6opRM_IERKNS_7OperandEjii+0x3c0>
 398:	8d 4a e0             	lea    -0x20(%rdx),%ecx
 39b:	83 e1 df             	and    $0xffffffdf,%ecx
 39e:	74 20                	je     3c0 <_ZN5Xbyak13CodeGenerator6opRM_IERKNS_7OperandEjii+0x3c0>
 3a0:	8d 4a 80             	lea    -0x80(%rdx),%ecx
 3a3:	81 e1 7f ff ff ff    	and    $0xffffff7f,%ecx
 3a9:	74 15                	je     3c0 <_ZN5Xbyak13CodeGenerator6opRM_IERKNS_7OperandEjii+0x3c0>
 3ab:	81 fa 00 02 00 00    	cmp    $0x200,%edx
 3b1:	74 0d                	je     3c0 <_ZN5Xbyak13CodeGenerator6opRM_IERKNS_7OperandEjii+0x3c0>
 3b3:	81 fa 00 20 00 00    	cmp    $0x2000,%edx
 3b9:	0f 85 8e 03 00 00    	jne    74d <_ZN5Xbyak13CodeGenerator6opRM_IERKNS_7OperandEjii+0x74d>
 3bf:	90                   	nop
 3c0:	66 85 c0             	test   %ax,%ax
 3c3:	0f 85 5f 03 00 00    	jne    728 <_ZN5Xbyak13CodeGenerator6opRM_IERKNS_7OperandEjii+0x728>
 3c9:	40 f6 c7 81          	test   $0x81,%dil
 3cd:	0f 84 c5 02 00 00    	je     698 <_ZN5Xbyak13CodeGenerator6opRM_IERKNS_7OperandEjii+0x698>
 3d3:	31 c9                	xor    %ecx,%ecx
 3d5:	0f b6 44 24 28       	movzbl 0x28(%rsp),%eax
 3da:	c1 e7 06             	shl    $0x6,%edi
 3dd:	83 e6 07             	and    $0x7,%esi
 3e0:	41 83 e0 3f          	and    $0x3f,%r8d
 3e4:	c1 e6 03             	shl    $0x3,%esi
 3e7:	41 80 c8 80          	or     $0x80,%r8b
 3eb:	83 e0 c0             	and    $0xffffffc0,%eax
 3ee:	44 09 c8             	or     %r9d,%eax
 3f1:	88 44 24 28          	mov    %al,0x28(%rsp)
 3f5:	0f b7 44 24 28       	movzwl 0x28(%rsp),%eax
 3fa:	83 e0 3f             	and    $0x3f,%eax
 3fd:	09 f8                	or     %edi,%eax
 3ff:	66 89 44 24 28       	mov    %ax,0x28(%rsp)
 404:	0f b7 44 24 2a       	movzwl 0x2a(%rsp),%eax
 409:	66 25 00 c0          	and    $0xc000,%ax
 40d:	09 c8                	or     %ecx,%eax
 40f:	66 89 44 24 2a       	mov    %ax,0x2a(%rsp)
 414:	0f b6 44 24 2c       	movzbl 0x2c(%rsp),%eax
 419:	83 e0 c0             	and    $0xffffffc0,%eax
 41c:	44 09 d0             	or     %r10d,%eax
 41f:	09 f0                	or     %esi,%eax
 421:	88 44 24 2c          	mov    %al,0x2c(%rsp)
 425:	48 8b 44 24 28       	mov    0x28(%rsp),%rax
 42a:	48 89 44 24 10       	mov    %rax,0x10(%rsp)
 42f:	83 e0 c0             	and    $0xffffffc0,%eax
 432:	44 09 c8             	or     %r9d,%eax
 435:	88 44 24 10          	mov    %al,0x10(%rsp)
 439:	0f b7 44 24 10       	movzwl 0x10(%rsp),%eax
 43e:	83 e0 3f             	and    $0x3f,%eax
 441:	09 f8                	or     %edi,%eax
 443:	66 89 44 24 10       	mov    %ax,0x10(%rsp)
 448:	0f b7 44 24 12       	movzwl 0x12(%rsp),%eax
 44d:	66 25 00 c0          	and    $0xc000,%ax
 451:	09 c8                	or     %ecx,%eax
 453:	66 89 44 24 12       	mov    %ax,0x12(%rsp)
 458:	0f b6 44 24 14       	movzbl 0x14(%rsp),%eax
 45d:	83 e0 c0             	and    $0xffffffc0,%eax
 460:	44 09 d0             	or     %r10d,%eax
 463:	09 f0                	or     %esi,%eax
 465:	88 44 24 14          	mov    %al,0x14(%rsp)
 469:	48 8b 44 24 10       	mov    0x10(%rsp),%rax
 46e:	48 89 44 24 20       	mov    %rax,0x20(%rsp)
 473:	83 e0 c0             	and    $0xffffffc0,%eax
 476:	41 09 c1             	or     %eax,%r9d
 479:	44 88 4c 24 20       	mov    %r9b,0x20(%rsp)
 47e:	0f b7 44 24 20       	movzwl 0x20(%rsp),%eax
 483:	83 e0 3f             	and    $0x3f,%eax
 486:	09 c7                	or     %eax,%edi
 488:	0f b7 44 24 22       	movzwl 0x22(%rsp),%eax
 48d:	66 89 7c 24 20       	mov    %di,0x20(%rsp)
 492:	48 89 df             	mov    %rbx,%rdi
 495:	66 25 00 c0          	and    $0xc000,%ax
 499:	09 c8                	or     %ecx,%eax
 49b:	66 89 44 24 22       	mov    %ax,0x22(%rsp)
 4a0:	0f b6 44 24 24       	movzbl 0x24(%rsp),%eax
 4a5:	83 e0 c0             	and    $0xffffffc0,%eax
 4a8:	44 09 d0             	or     %r10d,%eax
 4ab:	09 f0                	or     %esi,%eax
 4ad:	c1 e2 10             	shl    $0x10,%edx
 4b0:	48 8d 74 24 28       	lea    0x28(%rsp),%rsi
 4b5:	44 09 c2             	or     %r8d,%edx
 4b8:	44 8b 44 24 20       	mov    0x20(%rsp),%r8d
 4bd:	88 44 24 24          	mov    %al,0x24(%rsp)
 4c1:	83 e0 c0             	and    $0xffffffc0,%eax
 4c4:	48 8b 4c 24 20       	mov    0x20(%rsp),%rcx
 4c9:	88 44 24 24          	mov    %al,0x24(%rsp)
 4cd:	41 81 e0 00 00 00 80 	and    $0x80000000,%r8d
 4d4:	44 09 c2             	or     %r8d,%edx
 4d7:	48 89 4c 24 28       	mov    %rcx,0x28(%rsp)
 4dc:	89 54 24 20          	mov    %edx,0x20(%rsp)
 4e0:	48 8d 54 24 20       	lea    0x20(%rsp),%rdx
 4e5:	e8 00 00 00 00       	callq  4ea <_ZN5Xbyak13CodeGenerator6opRM_IERKNS_7OperandEjii+0x4ea>
 4ea:	0f b7 6c 24 22       	movzwl 0x22(%rsp),%ebp
 4ef:	48 8b 83 80 00 00 00 	mov    0x80(%rbx),%rax
 4f6:	4c 8b 73 70          	mov    0x70(%rbx),%r14
 4fa:	66 81 e5 ff 3f       	and    $0x3fff,%bp
 4ff:	66 c1 ed 03          	shr    $0x3,%bp
 503:	83 f5 01             	xor    $0x1,%ebp
 506:	83 e5 01             	and    $0x1,%ebp
 509:	44 09 ed             	or     %r13d,%ebp
 50c:	4c 39 f0             	cmp    %r14,%rax
 50f:	0f 82 f3 01 00 00    	jb     708 <_ZN5Xbyak13CodeGenerator6opRM_IERKNS_7OperandEjii+0x708>
 515:	83 7b 20 03          	cmpl   $0x3,0x20(%rbx)
 519:	0f 85 1a 02 00 00    	jne    739 <_ZN5Xbyak13CodeGenerator6opRM_IERKNS_7OperandEjii+0x739>
 51f:	48 8b 7b 68          	mov    0x68(%rbx),%rdi
 523:	4d 01 f6             	add    %r14,%r14
 526:	b8 00 10 00 00       	mov    $0x1000,%eax
 52b:	49 81 fe 00 10 00 00 	cmp    $0x1000,%r14
 532:	4c 0f 42 f0          	cmovb  %rax,%r14
 536:	48 8b 07             	mov    (%rdi),%rax
 539:	4c 89 f6             	mov    %r14,%rsi
 53c:	ff 10                	callq  *(%rax)
 53e:	49 89 c5             	mov    %rax,%r13
 541:	48 85 c0             	test   %rax,%rax
 544:	0f 84 f4 01 00 00    	je     73e <_ZN5Xbyak13CodeGenerator6opRM_IERKNS_7OperandEjii+0x73e>
 54a:	31 d2                	xor    %edx,%edx
 54c:	48 83 bb 80 00 00 00 	cmpq   $0x0,0x80(%rbx)
 553:	00 
 554:	74 24                	je     57a <_ZN5Xbyak13CodeGenerator6opRM_IERKNS_7OperandEjii+0x57a>
 556:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 55d:	00 00 00 
 560:	48 8b 43 78          	mov    0x78(%rbx),%rax
 564:	0f b6 04 10          	movzbl (%rax,%rdx,1),%eax
 568:	41 88 44 15 00       	mov    %al,0x0(%r13,%rdx,1)
 56d:	48 83 c2 01          	add    $0x1,%rdx
 571:	48 39 93 80 00 00 00 	cmp    %rdx,0x80(%rbx)
 578:	77 e6                	ja     560 <_ZN5Xbyak13CodeGenerator6opRM_IERKNS_7OperandEjii+0x560>
 57a:	48 8b 7b 68          	mov    0x68(%rbx),%rdi
 57e:	48 8b 73 78          	mov    0x78(%rbx),%rsi
 582:	48 8b 07             	mov    (%rdi),%rax
 585:	ff 50 08             	callq  *0x8(%rax)
 588:	4c 89 6b 78          	mov    %r13,0x78(%rbx)
 58c:	48 8b 83 80 00 00 00 	mov    0x80(%rbx),%rax
 593:	4c 89 73 70          	mov    %r14,0x70(%rbx)
 597:	48 8d 50 01          	lea    0x1(%rax),%rdx
 59b:	48 89 93 80 00 00 00 	mov    %rdx,0x80(%rbx)
 5a2:	41 88 6c 05 00       	mov    %bpl,0x0(%r13,%rax,1)
 5a7:	0f b6 44 24 20       	movzbl 0x20(%rsp),%eax
 5ac:	4c 8b 73 70          	mov    0x70(%rbx),%r14
 5b0:	8d 2c c5 00 00 00 00 	lea    0x0(,%rax,8),%ebp
 5b7:	0f b6 44 24 28       	movzbl 0x28(%rsp),%eax
 5bc:	83 e5 38             	and    $0x38,%ebp
 5bf:	83 e0 07             	and    $0x7,%eax
 5c2:	09 c5                	or     %eax,%ebp
 5c4:	48 8b 83 80 00 00 00 	mov    0x80(%rbx),%rax
 5cb:	83 cd c0             	or     $0xffffffc0,%ebp
 5ce:	4c 39 f0             	cmp    %r14,%rax
 5d1:	0f 82 41 01 00 00    	jb     718 <_ZN5Xbyak13CodeGenerator6opRM_IERKNS_7OperandEjii+0x718>
 5d7:	83 7b 20 03          	cmpl   $0x3,0x20(%rbx)
 5db:	0f 85 58 01 00 00    	jne    739 <_ZN5Xbyak13CodeGenerator6opRM_IERKNS_7OperandEjii+0x739>
 5e1:	48 8b 7b 68          	mov    0x68(%rbx),%rdi
 5e5:	4d 01 f6             	add    %r14,%r14
 5e8:	b8 00 10 00 00       	mov    $0x1000,%eax
 5ed:	49 81 fe 00 10 00 00 	cmp    $0x1000,%r14
 5f4:	4c 0f 42 f0          	cmovb  %rax,%r14
 5f8:	48 8b 07             	mov    (%rdi),%rax
 5fb:	4c 89 f6             	mov    %r14,%rsi
 5fe:	ff 10                	callq  *(%rax)
 600:	49 89 c5             	mov    %rax,%r13
 603:	48 85 c0             	test   %rax,%rax
 606:	0f 84 32 01 00 00    	je     73e <_ZN5Xbyak13CodeGenerator6opRM_IERKNS_7OperandEjii+0x73e>
 60c:	31 d2                	xor    %edx,%edx
 60e:	48 83 bb 80 00 00 00 	cmpq   $0x0,0x80(%rbx)
 615:	00 
 616:	74 22                	je     63a <_ZN5Xbyak13CodeGenerator6opRM_IERKNS_7OperandEjii+0x63a>
 618:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
 61f:	00 
 620:	48 8b 43 78          	mov    0x78(%rbx),%rax
 624:	0f b6 04 10          	movzbl (%rax,%rdx,1),%eax
 628:	41 88 44 15 00       	mov    %al,0x0(%r13,%rdx,1)
 62d:	48 83 c2 01          	add    $0x1,%rdx
 631:	48 39 93 80 00 00 00 	cmp    %rdx,0x80(%rbx)
 638:	77 e6                	ja     620 <_ZN5Xbyak13CodeGenerator6opRM_IERKNS_7OperandEjii+0x620>
 63a:	48 8b 7b 68          	mov    0x68(%rbx),%rdi
 63e:	48 8b 73 78          	mov    0x78(%rbx),%rsi
 642:	48 8b 07             	mov    (%rdi),%rax
 645:	ff 50 08             	callq  *0x8(%rax)
 648:	4c 89 6b 78          	mov    %r13,0x78(%rbx)
 64c:	48 8b 83 80 00 00 00 	mov    0x80(%rbx),%rax
 653:	4c 89 73 70          	mov    %r14,0x70(%rbx)
 657:	48 8d 50 01          	lea    0x1(%rax),%rdx
 65b:	41 c1 ef 03          	shr    $0x3,%r15d
 65f:	48 89 93 80 00 00 00 	mov    %rdx,0x80(%rbx)
 666:	41 88 6c 05 00       	mov    %bpl,0x0(%r13,%rax,1)
 66b:	45 89 fd             	mov    %r15d,%r13d
 66e:	e9 80 fb ff ff       	jmpq   1f3 <_ZN5Xbyak13CodeGenerator6opRM_IERKNS_7OperandEjii+0x1f3>
 673:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
 678:	48 8b 43 78          	mov    0x78(%rbx),%rax
 67c:	e9 1c fc ff ff       	jmpq   29d <_ZN5Xbyak13CodeGenerator6opRM_IERKNS_7OperandEjii+0x29d>
 681:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
 688:	48 8b 43 78          	mov    0x78(%rbx),%rax
 68c:	e9 37 fb ff ff       	jmpq   1c8 <_ZN5Xbyak13CodeGenerator6opRM_IERKNS_7OperandEjii+0x1c8>
 691:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
 698:	66 f7 c7 72 02       	test   $0x272,%di
 69d:	0f 84 aa 00 00 00    	je     74d <_ZN5Xbyak13CodeGenerator6opRM_IERKNS_7OperandEjii+0x74d>
 6a3:	41 83 e1 1f          	and    $0x1f,%r9d
 6a7:	31 c9                	xor    %ecx,%ecx
 6a9:	31 f6                	xor    %esi,%esi
 6ab:	45 31 d2             	xor    %r10d,%r10d
 6ae:	bf 02 00 00 00       	mov    $0x2,%edi
 6b3:	e9 1d fd ff ff       	jmpq   3d5 <_ZN5Xbyak13CodeGenerator6opRM_IERKNS_7OperandEjii+0x3d5>
 6b8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
 6bf:	00 
 6c0:	48 8d 54 24 28       	lea    0x28(%rsp),%rdx
 6c5:	48 89 ee             	mov    %rbp,%rsi
 6c8:	48 89 df             	mov    %rbx,%rdi
 6cb:	80 64 24 2c c0       	andb   $0xc0,0x2c(%rsp)
 6d0:	81 64 24 28 00 00 00 	andl   $0x80000000,0x28(%rsp)
 6d7:	80 
 6d8:	e8 00 00 00 00       	callq  6dd <_ZN5Xbyak13CodeGenerator6opRM_IERKNS_7OperandEjii+0x6dd>
 6dd:	31 f6                	xor    %esi,%esi
 6df:	41 83 ff 08          	cmp    $0x8,%r15d
 6e3:	48 89 df             	mov    %rbx,%rdi
 6e6:	40 0f 95 c6          	setne  %sil
 6ea:	41 c1 ef 03          	shr    $0x3,%r15d
 6ee:	44 09 ee             	or     %r13d,%esi
 6f1:	45 89 fd             	mov    %r15d,%r13d
 6f4:	83 ce 04             	or     $0x4,%esi
 6f7:	e8 00 00 00 00       	callq  6fc <_ZN5Xbyak13CodeGenerator6opRM_IERKNS_7OperandEjii+0x6fc>
 6fc:	e9 f2 fa ff ff       	jmpq   1f3 <_ZN5Xbyak13CodeGenerator6opRM_IERKNS_7OperandEjii+0x1f3>
 701:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
 708:	4c 8b 6b 78          	mov    0x78(%rbx),%r13
 70c:	e9 86 fe ff ff       	jmpq   597 <_ZN5Xbyak13CodeGenerator6opRM_IERKNS_7OperandEjii+0x597>
 711:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
 718:	4c 8b 6b 78          	mov    0x78(%rbx),%r13
 71c:	e9 36 ff ff ff       	jmpq   657 <_ZN5Xbyak13CodeGenerator6opRM_IERKNS_7OperandEjii+0x657>
 721:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
 728:	89 c1                	mov    %eax,%ecx
 72a:	e9 a6 fc ff ff       	jmpq   3d5 <_ZN5Xbyak13CodeGenerator6opRM_IERKNS_7OperandEjii+0x3d5>
 72f:	e8 00 00 00 00       	callq  734 <_ZN5Xbyak13CodeGenerator6opRM_IERKNS_7OperandEjii+0x734>
 734:	e8 00 00 00 00       	callq  739 <_ZN5Xbyak13CodeGenerator6opRM_IERKNS_7OperandEjii+0x739>
 739:	e8 00 00 00 00       	callq  73e <_ZN5Xbyak13CodeGenerator6opRM_IERKNS_7OperandEjii+0x73e>
 73e:	e8 00 00 00 00       	callq  743 <_ZN5Xbyak13CodeGenerator6opRM_IERKNS_7OperandEjii+0x743>
 743:	e8 00 00 00 00       	callq  748 <_ZN5Xbyak13CodeGenerator6opRM_IERKNS_7OperandEjii+0x748>
 748:	e8 00 00 00 00       	callq  74d <_ZN5Xbyak13CodeGenerator6opRM_IERKNS_7OperandEjii+0x74d>
 74d:	bf 10 00 00 00       	mov    $0x10,%edi
 752:	e8 00 00 00 00       	callq  757 <_ZN5Xbyak13CodeGenerator6opRM_IERKNS_7OperandEjii+0x757>
 757:	48 8b 15 00 00 00 00 	mov    0x0(%rip),%rdx        # 75e <_ZN5Xbyak13CodeGenerator6opRM_IERKNS_7OperandEjii+0x75e>
 75e:	48 8b 35 00 00 00 00 	mov    0x0(%rip),%rsi        # 765 <_ZN5Xbyak13CodeGenerator6opRM_IERKNS_7OperandEjii+0x765>
 765:	48 89 c7             	mov    %rax,%rdi
 768:	48 8b 05 00 00 00 00 	mov    0x0(%rip),%rax        # 76f <_ZN5Xbyak13CodeGenerator6opRM_IERKNS_7OperandEjii+0x76f>
 76f:	c7 47 08 1c 00 00 00 	movl   $0x1c,0x8(%rdi)
 776:	48 83 c0 10          	add    $0x10,%rax
 77a:	48 89 07             	mov    %rax,(%rdi)
 77d:	e8 00 00 00 00       	callq  782 <_GLOBAL__sub_I_mcl.cpp.cold+0x452>

Disassembly of section .text._ZN5Xbyak4util10StackFrame5closeEb:

0000000000000000 <_ZN5Xbyak4util10StackFrame5closeEb>:
   0:	f3 0f 1e fa          	endbr64 
   4:	41 57                	push   %r15
   6:	41 56                	push   %r14
   8:	49 89 fe             	mov    %rdi,%r14
   b:	41 55                	push   %r13
   d:	41 54                	push   %r12
   f:	55                   	push   %rbp
  10:	53                   	push   %rbx
  11:	48 83 ec 18          	sub    $0x18,%rsp
  15:	8b 57 18             	mov    0x18(%rdi),%edx
  18:	89 74 24 0c          	mov    %esi,0xc(%rsp)
  1c:	85 d2                	test   %edx,%edx
  1e:	7e 14                	jle    34 <_ZN5Xbyak4util10StackFrame5closeEb+0x34>
  20:	48 8b 3f             	mov    (%rdi),%rdi
  23:	45 31 c0             	xor    %r8d,%r8d
  26:	31 c9                	xor    %ecx,%ecx
  28:	48 8d b7 18 05 00 00 	lea    0x518(%rdi),%rsi
  2f:	e8 00 00 00 00       	callq  34 <_ZN5Xbyak4util10StackFrame5closeEb+0x34>
  34:	41 8b 46 14          	mov    0x14(%r14),%eax
  38:	45 31 ff             	xor    %r15d,%r15d
  3b:	85 c0                	test   %eax,%eax
  3d:	0f 8e e3 00 00 00    	jle    126 <_ZN5Xbyak4util10StackFrame5closeEb+0x126>
  43:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  48:	83 e8 01             	sub    $0x1,%eax
  4b:	48 8b 3d 00 00 00 00 	mov    0x0(%rip),%rdi        # 52 <_ZN5Xbyak4util10StackFrame5closeEb+0x52>
  52:	49 8b 1e             	mov    (%r14),%rbx
  55:	44 29 f8             	sub    %r15d,%eax
  58:	48 98                	cltq   
  5a:	48 8b 93 80 00 00 00 	mov    0x80(%rbx),%rdx
  61:	48 8b 4b 70          	mov    0x70(%rbx),%rcx
  65:	8b 6c 87 20          	mov    0x20(%rdi,%rax,4),%ebp
  69:	40 f6 c5 18          	test   $0x18,%bpl
  6d:	0f 85 dd 00 00 00    	jne    150 <_ZN5Xbyak4util10StackFrame5closeEb+0x150>
  73:	89 e8                	mov    %ebp,%eax
  75:	83 e0 07             	and    $0x7,%eax
  78:	83 c8 58             	or     $0x58,%eax
  7b:	41 89 c5             	mov    %eax,%r13d
  7e:	48 39 d1             	cmp    %rdx,%rcx
  81:	0f 87 b9 00 00 00    	ja     140 <_ZN5Xbyak4util10StackFrame5closeEb+0x140>
  87:	83 7b 20 03          	cmpl   $0x3,0x20(%rbx)
  8b:	0f 85 32 02 00 00    	jne    2c3 <_ZN5Xbyak4util10StackFrame5closeEb+0x2c3>
  91:	48 8d 2c 09          	lea    (%rcx,%rcx,1),%rbp
  95:	48 8b 7b 68          	mov    0x68(%rbx),%rdi
  99:	b8 00 10 00 00       	mov    $0x1000,%eax
  9e:	48 81 fd 00 10 00 00 	cmp    $0x1000,%rbp
  a5:	48 0f 42 e8          	cmovb  %rax,%rbp
  a9:	48 8b 07             	mov    (%rdi),%rax
  ac:	48 89 ee             	mov    %rbp,%rsi
  af:	ff 10                	callq  *(%rax)
  b1:	49 89 c4             	mov    %rax,%r12
  b4:	48 85 c0             	test   %rax,%rax
  b7:	0f 84 0b 02 00 00    	je     2c8 <_ZN5Xbyak4util10StackFrame5closeEb+0x2c8>
  bd:	31 d2                	xor    %edx,%edx
  bf:	48 83 bb 80 00 00 00 	cmpq   $0x0,0x80(%rbx)
  c6:	00 
  c7:	74 20                	je     e9 <_ZN5Xbyak4util10StackFrame5closeEb+0xe9>
  c9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  d0:	48 8b 73 78          	mov    0x78(%rbx),%rsi
  d4:	0f b6 34 16          	movzbl (%rsi,%rdx,1),%esi
  d8:	41 88 34 14          	mov    %sil,(%r12,%rdx,1)
  dc:	48 83 c2 01          	add    $0x1,%rdx
  e0:	48 39 93 80 00 00 00 	cmp    %rdx,0x80(%rbx)
  e7:	77 e7                	ja     d0 <_ZN5Xbyak4util10StackFrame5closeEb+0xd0>
  e9:	48 8b 7b 68          	mov    0x68(%rbx),%rdi
  ed:	48 8b 73 78          	mov    0x78(%rbx),%rsi
  f1:	48 8b 17             	mov    (%rdi),%rdx
  f4:	ff 52 08             	callq  *0x8(%rdx)
  f7:	4c 89 63 78          	mov    %r12,0x78(%rbx)
  fb:	48 8b 93 80 00 00 00 	mov    0x80(%rbx),%rdx
 102:	48 89 6b 70          	mov    %rbp,0x70(%rbx)
 106:	48 8d 4a 01          	lea    0x1(%rdx),%rcx
 10a:	41 83 c7 01          	add    $0x1,%r15d
 10e:	48 89 8b 80 00 00 00 	mov    %rcx,0x80(%rbx)
 115:	45 88 2c 14          	mov    %r13b,(%r12,%rdx,1)
 119:	41 8b 46 14          	mov    0x14(%r14),%eax
 11d:	44 39 f8             	cmp    %r15d,%eax
 120:	0f 8f 22 ff ff ff    	jg     48 <_ZN5Xbyak4util10StackFrame5closeEb+0x48>
 126:	80 7c 24 0c 00       	cmpb   $0x0,0xc(%rsp)
 12b:	0f 85 df 00 00 00    	jne    210 <_ZN5Xbyak4util10StackFrame5closeEb+0x210>
 131:	48 83 c4 18          	add    $0x18,%rsp
 135:	5b                   	pop    %rbx
 136:	5d                   	pop    %rbp
 137:	41 5c                	pop    %r12
 139:	41 5d                	pop    %r13
 13b:	41 5e                	pop    %r14
 13d:	41 5f                	pop    %r15
 13f:	c3                   	retq   
 140:	4c 8b 63 78          	mov    0x78(%rbx),%r12
 144:	eb c0                	jmp    106 <_ZN5Xbyak4util10StackFrame5closeEb+0x106>
 146:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 14d:	00 00 00 
 150:	48 39 ca             	cmp    %rcx,%rdx
 153:	0f 82 a7 00 00 00    	jb     200 <_ZN5Xbyak4util10StackFrame5closeEb+0x200>
 159:	83 7b 20 03          	cmpl   $0x3,0x20(%rbx)
 15d:	0f 85 60 01 00 00    	jne    2c3 <_ZN5Xbyak4util10StackFrame5closeEb+0x2c3>
 163:	4c 8d 2c 09          	lea    (%rcx,%rcx,1),%r13
 167:	48 8b 7b 68          	mov    0x68(%rbx),%rdi
 16b:	b8 00 10 00 00       	mov    $0x1000,%eax
 170:	49 81 fd 00 10 00 00 	cmp    $0x1000,%r13
 177:	4c 0f 42 e8          	cmovb  %rax,%r13
 17b:	48 8b 07             	mov    (%rdi),%rax
 17e:	4c 89 ee             	mov    %r13,%rsi
 181:	ff 10                	callq  *(%rax)
 183:	49 89 c4             	mov    %rax,%r12
 186:	48 85 c0             	test   %rax,%rax
 189:	0f 84 39 01 00 00    	je     2c8 <_ZN5Xbyak4util10StackFrame5closeEb+0x2c8>
 18f:	31 d2                	xor    %edx,%edx
 191:	48 83 bb 80 00 00 00 	cmpq   $0x0,0x80(%rbx)
 198:	00 
 199:	74 1e                	je     1b9 <_ZN5Xbyak4util10StackFrame5closeEb+0x1b9>
 19b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
 1a0:	48 8b 73 78          	mov    0x78(%rbx),%rsi
 1a4:	0f b6 34 16          	movzbl (%rsi,%rdx,1),%esi
 1a8:	41 88 34 14          	mov    %sil,(%r12,%rdx,1)
 1ac:	48 83 c2 01          	add    $0x1,%rdx
 1b0:	48 39 93 80 00 00 00 	cmp    %rdx,0x80(%rbx)
 1b7:	77 e7                	ja     1a0 <_ZN5Xbyak4util10StackFrame5closeEb+0x1a0>
 1b9:	48 8b 7b 68          	mov    0x68(%rbx),%rdi
 1bd:	48 8b 73 78          	mov    0x78(%rbx),%rsi
 1c1:	48 8b 17             	mov    (%rdi),%rdx
 1c4:	ff 52 08             	callq  *0x8(%rdx)
 1c7:	4c 89 63 78          	mov    %r12,0x78(%rbx)
 1cb:	48 8b 93 80 00 00 00 	mov    0x80(%rbx),%rdx
 1d2:	4c 89 6b 70          	mov    %r13,0x70(%rbx)
 1d6:	48 8d 4a 01          	lea    0x1(%rdx),%rcx
 1da:	48 89 8b 80 00 00 00 	mov    %rcx,0x80(%rbx)
 1e1:	41 c6 04 14 41       	movb   $0x41,(%r12,%rdx,1)
 1e6:	48 8b 93 80 00 00 00 	mov    0x80(%rbx),%rdx
 1ed:	48 8b 4b 70          	mov    0x70(%rbx),%rcx
 1f1:	e9 7d fe ff ff       	jmpq   73 <_ZN5Xbyak4util10StackFrame5closeEb+0x73>
 1f6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 1fd:	00 00 00 
 200:	4c 8b 63 78          	mov    0x78(%rbx),%r12
 204:	eb d0                	jmp    1d6 <_ZN5Xbyak4util10StackFrame5closeEb+0x1d6>
 206:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 20d:	00 00 00 
 210:	49 8b 1e             	mov    (%r14),%rbx
 213:	48 8b 83 80 00 00 00 	mov    0x80(%rbx),%rax
 21a:	4c 8b 63 70          	mov    0x70(%rbx),%r12
 21e:	4c 39 e0             	cmp    %r12,%rax
 221:	72 7d                	jb     2a0 <_ZN5Xbyak4util10StackFrame5closeEb+0x2a0>
 223:	83 7b 20 03          	cmpl   $0x3,0x20(%rbx)
 227:	0f 85 96 00 00 00    	jne    2c3 <_ZN5Xbyak4util10StackFrame5closeEb+0x2c3>
 22d:	48 8b 7b 68          	mov    0x68(%rbx),%rdi
 231:	4d 01 e4             	add    %r12,%r12
 234:	b8 00 10 00 00       	mov    $0x1000,%eax
 239:	49 81 fc 00 10 00 00 	cmp    $0x1000,%r12
 240:	4c 0f 42 e0          	cmovb  %rax,%r12
 244:	48 8b 07             	mov    (%rdi),%rax
 247:	4c 89 e6             	mov    %r12,%rsi
 24a:	ff 10                	callq  *(%rax)
 24c:	48 89 c5             	mov    %rax,%rbp
 24f:	48 85 c0             	test   %rax,%rax
 252:	74 74                	je     2c8 <_ZN5Xbyak4util10StackFrame5closeEb+0x2c8>
 254:	31 d2                	xor    %edx,%edx
 256:	48 83 bb 80 00 00 00 	cmpq   $0x0,0x80(%rbx)
 25d:	00 
 25e:	74 19                	je     279 <_ZN5Xbyak4util10StackFrame5closeEb+0x279>
 260:	48 8b 4b 78          	mov    0x78(%rbx),%rcx
 264:	0f b6 0c 11          	movzbl (%rcx,%rdx,1),%ecx
 268:	88 4c 15 00          	mov    %cl,0x0(%rbp,%rdx,1)
 26c:	48 83 c2 01          	add    $0x1,%rdx
 270:	48 39 93 80 00 00 00 	cmp    %rdx,0x80(%rbx)
 277:	77 e7                	ja     260 <_ZN5Xbyak4util10StackFrame5closeEb+0x260>
 279:	48 8b 7b 68          	mov    0x68(%rbx),%rdi
 27d:	48 8b 73 78          	mov    0x78(%rbx),%rsi
 281:	48 8b 07             	mov    (%rdi),%rax
 284:	ff 50 08             	callq  *0x8(%rax)
 287:	48 89 6b 78          	mov    %rbp,0x78(%rbx)
 28b:	48 8b 83 80 00 00 00 	mov    0x80(%rbx),%rax
 292:	4c 89 63 70          	mov    %r12,0x70(%rbx)
 296:	eb 0c                	jmp    2a4 <_ZN5Xbyak4util10StackFrame5closeEb+0x2a4>
 298:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
 29f:	00 
 2a0:	48 8b 6b 78          	mov    0x78(%rbx),%rbp
 2a4:	48 8d 50 01          	lea    0x1(%rax),%rdx
 2a8:	48 89 93 80 00 00 00 	mov    %rdx,0x80(%rbx)
 2af:	c6 44 05 00 c3       	movb   $0xc3,0x0(%rbp,%rax,1)
 2b4:	48 83 c4 18          	add    $0x18,%rsp
 2b8:	5b                   	pop    %rbx
 2b9:	5d                   	pop    %rbp
 2ba:	41 5c                	pop    %r12
 2bc:	41 5d                	pop    %r13
 2be:	41 5e                	pop    %r14
 2c0:	41 5f                	pop    %r15
 2c2:	c3                   	retq   
 2c3:	e8 00 00 00 00       	callq  2c8 <_ZN5Xbyak4util10StackFrame5closeEb+0x2c8>
 2c8:	e8 00 00 00 00       	callq  2cd <_ZN5Xbyak13CodeGenerator5opVexERKNS_3RegEPKNS_7OperandERS5_iii.part.0+0x31>

Disassembly of section .text._ZN5Xbyak13CodeGenerator3movERKNS_7OperandES3_:

0000000000000000 <_ZN5Xbyak13CodeGenerator3movERKNS_7OperandES3_>:
   0:	f3 0f 1e fa          	endbr64 
   4:	41 57                	push   %r15
   6:	41 56                	push   %r14
   8:	41 55                	push   %r13
   a:	49 89 d5             	mov    %rdx,%r13
   d:	41 54                	push   %r12
   f:	49 89 f4             	mov    %rsi,%r12
  12:	55                   	push   %rbp
  13:	48 89 fd             	mov    %rdi,%rbp
  16:	53                   	push   %rbx
  17:	48 83 ec 18          	sub    $0x18,%rsp
  1b:	0f b7 06             	movzwl (%rsi),%eax
  1e:	66 c1 e8 06          	shr    $0x6,%ax
  22:	89 c1                	mov    %eax,%ecx
  24:	66 83 e1 02          	and    $0x2,%cx
  28:	0f 84 82 00 00 00    	je     b0 <_ZN5Xbyak13CodeGenerator3movERKNS_7OperandES3_+0xb0>
  2e:	0f b7 12             	movzwl (%rdx),%edx
  31:	89 d6                	mov    %edx,%esi
  33:	66 c1 ee 06          	shr    $0x6,%si
  37:	41 f6 04 24 1f       	testb  $0x1f,(%r12)
  3c:	0f 85 8e 01 00 00    	jne    1d0 <_ZN5Xbyak13CodeGenerator3movERKNS_7OperandES3_+0x1d0>
  42:	83 e6 01             	and    $0x1,%esi
  45:	74 69                	je     b0 <_ZN5Xbyak13CodeGenerator3movERKNS_7OperandES3_+0xb0>
  47:	41 83 7d 30 01       	cmpl   $0x1,0x30(%r13)
  4c:	0f 84 66 04 00 00    	je     4b8 <_ZN5Xbyak13CodeGenerator3movERKNS_7OperandES3_+0x4b8>
  52:	4c 89 e2             	mov    %r12,%rdx
  55:	4c 89 ee             	mov    %r13,%rsi
  58:	48 89 ef             	mov    %rbp,%rdi
  5b:	e8 00 00 00 00       	callq  60 <_ZN5Xbyak13CodeGenerator3movERKNS_7OperandES3_+0x60>
  60:	41 0f b7 74 24 02    	movzwl 0x2(%r12),%esi
  66:	48 89 ef             	mov    %rbp,%rdi
  69:	66 81 e6 ff 3f       	and    $0x3fff,%si
  6e:	66 c1 ee 03          	shr    $0x3,%si
  72:	83 f6 01             	xor    $0x1,%esi
  75:	83 e6 01             	and    $0x1,%esi
  78:	40 80 ce 8a          	or     $0x8a,%sil
  7c:	e8 00 00 00 00       	callq  81 <_ZN5Xbyak13CodeGenerator3movERKNS_7OperandES3_+0x81>
  81:	41 0f b6 14 24       	movzbl (%r12),%edx
  86:	4c 89 ee             	mov    %r13,%rsi
  89:	48 89 ef             	mov    %rbp,%rdi
  8c:	45 31 c9             	xor    %r9d,%r9d
  8f:	45 31 c0             	xor    %r8d,%r8d
  92:	31 c9                	xor    %ecx,%ecx
  94:	83 e2 1f             	and    $0x1f,%edx
  97:	e8 00 00 00 00       	callq  9c <_ZN5Xbyak13CodeGenerator3movERKNS_7OperandES3_+0x9c>
  9c:	48 83 c4 18          	add    $0x18,%rsp
  a0:	5b                   	pop    %rbx
  a1:	5d                   	pop    %rbp
  a2:	41 5c                	pop    %r12
  a4:	41 5d                	pop    %r13
  a6:	41 5e                	pop    %r14
  a8:	41 5f                	pop    %r15
  aa:	c3                   	retq   
  ab:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  b0:	a8 01                	test   $0x1,%al
  b2:	0f 84 f0 00 00 00    	je     1a8 <_ZN5Xbyak13CodeGenerator3movERKNS_7OperandES3_+0x1a8>
  b8:	41 0f b7 55 00       	movzwl 0x0(%r13),%edx
  bd:	f6 c2 80             	test   $0x80,%dl
  c0:	0f 85 1b 01 00 00    	jne    1e1 <_ZN5Xbyak13CodeGenerator3movERKNS_7OperandES3_+0x1e1>
  c6:	66 85 c9             	test   %cx,%cx
  c9:	0f 85 33 03 00 00    	jne    402 <_ZN5Xbyak13CodeGenerator3movERKNS_7OperandES3_+0x402>
  cf:	81 e2 80 00 00 00    	and    $0x80,%edx
  d5:	0f 84 ef 00 00 00    	je     1ca <_ZN5Xbyak13CodeGenerator3movERKNS_7OperandES3_+0x1ca>
  db:	41 83 7c 24 30 01    	cmpl   $0x1,0x30(%r12)
  e1:	0f 84 16 03 00 00    	je     3fd <_ZN5Xbyak13CodeGenerator3movERKNS_7OperandES3_+0x3fd>
  e7:	4c 89 ea             	mov    %r13,%rdx
  ea:	4c 89 e6             	mov    %r12,%rsi
  ed:	48 89 ef             	mov    %rbp,%rdi
  f0:	e8 00 00 00 00       	callq  f5 <_ZN5Xbyak13CodeGenerator3movERKNS_7OperandES3_+0xf5>
  f5:	41 0f b7 5d 02       	movzwl 0x2(%r13),%ebx
  fa:	48 8b 85 80 00 00 00 	mov    0x80(%rbp),%rax
 101:	4c 8b 7d 70          	mov    0x70(%rbp),%r15
 105:	66 81 e3 ff 3f       	and    $0x3fff,%bx
 10a:	66 c1 eb 03          	shr    $0x3,%bx
 10e:	83 f3 01             	xor    $0x1,%ebx
 111:	83 e3 01             	and    $0x1,%ebx
 114:	80 cb 88             	or     $0x88,%bl
 117:	4c 39 f8             	cmp    %r15,%rax
 11a:	0f 82 88 02 00 00    	jb     3a8 <_ZN5Xbyak13CodeGenerator3movERKNS_7OperandES3_+0x3a8>
 120:	83 7d 20 03          	cmpl   $0x3,0x20(%rbp)
 124:	0f 85 b5 03 00 00    	jne    4df <_ZN5Xbyak13CodeGenerator3movERKNS_7OperandES3_+0x4df>
 12a:	48 8b 7d 68          	mov    0x68(%rbp),%rdi
 12e:	4d 01 ff             	add    %r15,%r15
 131:	b8 00 10 00 00       	mov    $0x1000,%eax
 136:	49 81 ff 00 10 00 00 	cmp    $0x1000,%r15
 13d:	4c 0f 42 f8          	cmovb  %rax,%r15
 141:	48 8b 07             	mov    (%rdi),%rax
 144:	4c 89 fe             	mov    %r15,%rsi
 147:	ff 10                	callq  *(%rax)
 149:	49 89 c6             	mov    %rax,%r14
 14c:	48 85 c0             	test   %rax,%rax
 14f:	0f 84 85 03 00 00    	je     4da <_ZN5Xbyak13CodeGenerator3movERKNS_7OperandES3_+0x4da>
 155:	31 d2                	xor    %edx,%edx
 157:	48 83 bd 80 00 00 00 	cmpq   $0x0,0x80(%rbp)
 15e:	00 
 15f:	74 20                	je     181 <_ZN5Xbyak13CodeGenerator3movERKNS_7OperandES3_+0x181>
 161:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
 168:	48 8b 4d 78          	mov    0x78(%rbp),%rcx
 16c:	0f b6 0c 11          	movzbl (%rcx,%rdx,1),%ecx
 170:	41 88 0c 16          	mov    %cl,(%r14,%rdx,1)
 174:	48 83 c2 01          	add    $0x1,%rdx
 178:	48 39 95 80 00 00 00 	cmp    %rdx,0x80(%rbp)
 17f:	77 e7                	ja     168 <_ZN5Xbyak13CodeGenerator3movERKNS_7OperandES3_+0x168>
 181:	48 8b 7d 68          	mov    0x68(%rbp),%rdi
 185:	48 8b 75 78          	mov    0x78(%rbp),%rsi
 189:	48 8b 07             	mov    (%rdi),%rax
 18c:	ff 50 08             	callq  *0x8(%rax)
 18f:	4c 89 75 78          	mov    %r14,0x78(%rbp)
 193:	48 8b 85 80 00 00 00 	mov    0x80(%rbp),%rax
 19a:	4c 89 7d 70          	mov    %r15,0x70(%rbp)
 19e:	e9 09 02 00 00       	jmpq   3ac <_ZN5Xbyak13CodeGenerator3movERKNS_7OperandES3_+0x3ac>
 1a3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
 1a8:	66 85 c9             	test   %cx,%cx
 1ab:	74 1d                	je     1ca <_ZN5Xbyak13CodeGenerator3movERKNS_7OperandES3_+0x1ca>
 1ad:	41 0f b7 55 00       	movzwl 0x0(%r13),%edx
 1b2:	89 d6                	mov    %edx,%esi
 1b4:	66 c1 ee 06          	shr    $0x6,%si
 1b8:	83 e2 40             	and    $0x40,%edx
 1bb:	0f 85 31 02 00 00    	jne    3f2 <_ZN5Xbyak13CodeGenerator3movERKNS_7OperandES3_+0x3f2>
 1c1:	66 39 f0             	cmp    %si,%ax
 1c4:	0f 84 55 02 00 00    	je     41f <_ZN5Xbyak13CodeGenerator3movERKNS_7OperandES3_+0x41f>
 1ca:	e8 00 00 00 00       	callq  1cf <_ZN5Xbyak13CodeGenerator3movERKNS_7OperandES3_+0x1cf>
 1cf:	90                   	nop
 1d0:	a8 01                	test   $0x1,%al
 1d2:	0f 84 10 02 00 00    	je     3e8 <_ZN5Xbyak13CodeGenerator3movERKNS_7OperandES3_+0x3e8>
 1d8:	83 e6 02             	and    $0x2,%esi
 1db:	0f 84 21 02 00 00    	je     402 <_ZN5Xbyak13CodeGenerator3movERKNS_7OperandES3_+0x402>
 1e1:	41 f6 45 00 1f       	testb  $0x1f,0x0(%r13)
 1e6:	0f 85 da fe ff ff    	jne    c6 <_ZN5Xbyak13CodeGenerator3movERKNS_7OperandES3_+0xc6>
 1ec:	41 83 7c 24 30 01    	cmpl   $0x1,0x30(%r12)
 1f2:	0f 85 ce fe ff ff    	jne    c6 <_ZN5Xbyak13CodeGenerator3movERKNS_7OperandES3_+0xc6>
 1f8:	4c 89 e3             	mov    %r12,%rbx
 1fb:	4c 89 ee             	mov    %r13,%rsi
 1fe:	48 8d 54 24 08       	lea    0x8(%rsp),%rdx
 203:	48 89 ef             	mov    %rbp,%rdi
 206:	80 64 24 0c c0       	andb   $0xc0,0xc(%rsp)
 20b:	81 64 24 08 00 00 00 	andl   $0x80000000,0x8(%rsp)
 212:	80 
 213:	e8 00 00 00 00       	callq  218 <_ZN5Xbyak13CodeGenerator3movERKNS_7OperandES3_+0x218>
 218:	41 f6 04 24 80       	testb  $0x80,(%r12)
 21d:	0f 85 7d 02 00 00    	jne    4a0 <_ZN5Xbyak13CodeGenerator3movERKNS_7OperandES3_+0x4a0>
 223:	41 bc a3 ff ff ff    	mov    $0xffffffa3,%r12d
 229:	41 f6 45 00 80       	testb  $0x80,0x0(%r13)
 22e:	74 0d                	je     23d <_ZN5Xbyak13CodeGenerator3movERKNS_7OperandES3_+0x23d>
 230:	41 f6 45 02 08       	testb  $0x8,0x2(%r13)
 235:	41 0f 94 c4          	sete   %r12b
 239:	41 83 ec 5e          	sub    $0x5e,%r12d
 23d:	48 8b 85 80 00 00 00 	mov    0x80(%rbp),%rax
 244:	4c 8b 75 70          	mov    0x70(%rbp),%r14
 248:	4c 39 f0             	cmp    %r14,%rax
 24b:	0f 82 3f 02 00 00    	jb     490 <_ZN5Xbyak13CodeGenerator3movERKNS_7OperandES3_+0x490>
 251:	83 7d 20 03          	cmpl   $0x3,0x20(%rbp)
 255:	0f 85 84 02 00 00    	jne    4df <_ZN5Xbyak13CodeGenerator3movERKNS_7OperandES3_+0x4df>
 25b:	48 8b 7d 68          	mov    0x68(%rbp),%rdi
 25f:	4d 01 f6             	add    %r14,%r14
 262:	b8 00 10 00 00       	mov    $0x1000,%eax
 267:	49 81 fe 00 10 00 00 	cmp    $0x1000,%r14
 26e:	4c 0f 42 f0          	cmovb  %rax,%r14
 272:	48 8b 07             	mov    (%rdi),%rax
 275:	4c 89 f6             	mov    %r14,%rsi
 278:	ff 10                	callq  *(%rax)
 27a:	49 89 c5             	mov    %rax,%r13
 27d:	48 85 c0             	test   %rax,%rax
 280:	0f 84 54 02 00 00    	je     4da <_ZN5Xbyak13CodeGenerator3movERKNS_7OperandES3_+0x4da>
 286:	31 d2                	xor    %edx,%edx
 288:	48 83 bd 80 00 00 00 	cmpq   $0x0,0x80(%rbp)
 28f:	00 
 290:	74 20                	je     2b2 <_ZN5Xbyak13CodeGenerator3movERKNS_7OperandES3_+0x2b2>
 292:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
 298:	48 8b 4d 78          	mov    0x78(%rbp),%rcx
 29c:	0f b6 0c 11          	movzbl (%rcx,%rdx,1),%ecx
 2a0:	41 88 4c 15 00       	mov    %cl,0x0(%r13,%rdx,1)
 2a5:	48 83 c2 01          	add    $0x1,%rdx
 2a9:	48 39 95 80 00 00 00 	cmp    %rdx,0x80(%rbp)
 2b0:	77 e6                	ja     298 <_ZN5Xbyak13CodeGenerator3movERKNS_7OperandES3_+0x298>
 2b2:	48 8b 7d 68          	mov    0x68(%rbp),%rdi
 2b6:	48 8b 75 78          	mov    0x78(%rbp),%rsi
 2ba:	48 8b 07             	mov    (%rdi),%rax
 2bd:	ff 50 08             	callq  *0x8(%rax)
 2c0:	4c 89 6d 78          	mov    %r13,0x78(%rbp)
 2c4:	48 8b 85 80 00 00 00 	mov    0x80(%rbp),%rax
 2cb:	4c 89 75 70          	mov    %r14,0x70(%rbp)
 2cf:	48 8d 50 01          	lea    0x1(%rax),%rdx
 2d3:	45 31 f6             	xor    %r14d,%r14d
 2d6:	48 89 95 80 00 00 00 	mov    %rdx,0x80(%rbp)
 2dd:	45 88 64 05 00       	mov    %r12b,0x0(%r13,%rax,1)
 2e2:	4c 8b 6b 20          	mov    0x20(%rbx),%r13
 2e6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 2ed:	00 00 00 
 2f0:	48 8b 85 80 00 00 00 	mov    0x80(%rbp),%rax
 2f7:	48 8b 5d 70          	mov    0x70(%rbp),%rbx
 2fb:	4d 89 ec             	mov    %r13,%r12
 2fe:	44 89 f1             	mov    %r14d,%ecx
 301:	49 d3 ec             	shr    %cl,%r12
 304:	48 39 d8             	cmp    %rbx,%rax
 307:	0f 82 73 01 00 00    	jb     480 <_ZN5Xbyak13CodeGenerator3movERKNS_7OperandES3_+0x480>
 30d:	83 7d 20 03          	cmpl   $0x3,0x20(%rbp)
 311:	0f 85 c8 01 00 00    	jne    4df <_ZN5Xbyak13CodeGenerator3movERKNS_7OperandES3_+0x4df>
 317:	48 8b 7d 68          	mov    0x68(%rbp),%rdi
 31b:	48 01 db             	add    %rbx,%rbx
 31e:	b8 00 10 00 00       	mov    $0x1000,%eax
 323:	48 81 fb 00 10 00 00 	cmp    $0x1000,%rbx
 32a:	48 0f 42 d8          	cmovb  %rax,%rbx
 32e:	48 8b 07             	mov    (%rdi),%rax
 331:	48 89 de             	mov    %rbx,%rsi
 334:	ff 10                	callq  *(%rax)
 336:	49 89 c7             	mov    %rax,%r15
 339:	48 85 c0             	test   %rax,%rax
 33c:	0f 84 98 01 00 00    	je     4da <_ZN5Xbyak13CodeGenerator3movERKNS_7OperandES3_+0x4da>
 342:	31 d2                	xor    %edx,%edx
 344:	48 83 bd 80 00 00 00 	cmpq   $0x0,0x80(%rbp)
 34b:	00 
 34c:	74 1b                	je     369 <_ZN5Xbyak13CodeGenerator3movERKNS_7OperandES3_+0x369>
 34e:	66 90                	xchg   %ax,%ax
 350:	48 8b 45 78          	mov    0x78(%rbp),%rax
 354:	0f b6 04 10          	movzbl (%rax,%rdx,1),%eax
 358:	41 88 04 17          	mov    %al,(%r15,%rdx,1)
 35c:	48 83 c2 01          	add    $0x1,%rdx
 360:	48 39 95 80 00 00 00 	cmp    %rdx,0x80(%rbp)
 367:	77 e7                	ja     350 <_ZN5Xbyak13CodeGenerator3movERKNS_7OperandES3_+0x350>
 369:	48 8b 7d 68          	mov    0x68(%rbp),%rdi
 36d:	48 8b 75 78          	mov    0x78(%rbp),%rsi
 371:	48 8b 07             	mov    (%rdi),%rax
 374:	ff 50 08             	callq  *0x8(%rax)
 377:	4c 89 7d 78          	mov    %r15,0x78(%rbp)
 37b:	48 8b 85 80 00 00 00 	mov    0x80(%rbp),%rax
 382:	48 89 5d 70          	mov    %rbx,0x70(%rbp)
 386:	48 8d 50 01          	lea    0x1(%rax),%rdx
 38a:	41 83 c6 08          	add    $0x8,%r14d
 38e:	48 89 95 80 00 00 00 	mov    %rdx,0x80(%rbp)
 395:	45 88 24 07          	mov    %r12b,(%r15,%rax,1)
 399:	41 83 fe 40          	cmp    $0x40,%r14d
 39d:	0f 85 4d ff ff ff    	jne    2f0 <_ZN5Xbyak13CodeGenerator3movERKNS_7OperandES3_+0x2f0>
 3a3:	eb 31                	jmp    3d6 <_ZN5Xbyak13CodeGenerator3movERKNS_7OperandES3_+0x3d6>
 3a5:	0f 1f 00             	nopl   (%rax)
 3a8:	4c 8b 75 78          	mov    0x78(%rbp),%r14
 3ac:	48 8d 50 01          	lea    0x1(%rax),%rdx
 3b0:	45 31 c9             	xor    %r9d,%r9d
 3b3:	45 31 c0             	xor    %r8d,%r8d
 3b6:	31 c9                	xor    %ecx,%ecx
 3b8:	48 89 95 80 00 00 00 	mov    %rdx,0x80(%rbp)
 3bf:	4c 89 e6             	mov    %r12,%rsi
 3c2:	48 89 ef             	mov    %rbp,%rdi
 3c5:	41 88 1c 06          	mov    %bl,(%r14,%rax,1)
 3c9:	41 0f b6 55 00       	movzbl 0x0(%r13),%edx
 3ce:	83 e2 1f             	and    $0x1f,%edx
 3d1:	e8 00 00 00 00       	callq  3d6 <_ZN5Xbyak13CodeGenerator3movERKNS_7OperandES3_+0x3d6>
 3d6:	48 83 c4 18          	add    $0x18,%rsp
 3da:	5b                   	pop    %rbx
 3db:	5d                   	pop    %rbp
 3dc:	41 5c                	pop    %r12
 3de:	41 5d                	pop    %r13
 3e0:	41 5e                	pop    %r14
 3e2:	41 5f                	pop    %r15
 3e4:	c3                   	retq   
 3e5:	0f 1f 00             	nopl   (%rax)
 3e8:	40 f6 c6 01          	test   $0x1,%sil
 3ec:	0f 84 cf fd ff ff    	je     1c1 <_ZN5Xbyak13CodeGenerator3movERKNS_7OperandES3_+0x1c1>
 3f2:	41 83 7d 30 01       	cmpl   $0x1,0x30(%r13)
 3f7:	0f 85 55 fc ff ff    	jne    52 <_ZN5Xbyak13CodeGenerator3movERKNS_7OperandES3_+0x52>
 3fd:	e8 00 00 00 00       	callq  402 <_ZN5Xbyak13CodeGenerator3movERKNS_7OperandES3_+0x402>
 402:	f6 c2 40             	test   $0x40,%dl
 405:	75 eb                	jne    3f2 <_ZN5Xbyak13CodeGenerator3movERKNS_7OperandES3_+0x3f2>
 407:	89 d6                	mov    %edx,%esi
 409:	66 c1 ee 06          	shr    $0x6,%si
 40d:	80 e2 80             	and    $0x80,%dl
 410:	0f 84 ad 00 00 00    	je     4c3 <_ZN5Xbyak13CodeGenerator3movERKNS_7OperandES3_+0x4c3>
 416:	66 39 f0             	cmp    %si,%ax
 419:	0f 85 bc fc ff ff    	jne    db <_ZN5Xbyak13CodeGenerator3movERKNS_7OperandES3_+0xdb>
 41f:	4c 89 ea             	mov    %r13,%rdx
 422:	4c 89 e6             	mov    %r12,%rsi
 425:	48 89 ef             	mov    %rbp,%rdi
 428:	e8 00 00 00 00       	callq  42d <_ZN5Xbyak13CodeGenerator3movERKNS_7OperandES3_+0x42d>
 42d:	41 0f b7 75 02       	movzwl 0x2(%r13),%esi
 432:	48 89 ef             	mov    %rbp,%rdi
 435:	66 81 e6 ff 3f       	and    $0x3fff,%si
 43a:	66 c1 ee 03          	shr    $0x3,%si
 43e:	83 f6 01             	xor    $0x1,%esi
 441:	83 e6 01             	and    $0x1,%esi
 444:	40 80 ce 88          	or     $0x88,%sil
 448:	e8 00 00 00 00       	callq  44d <_ZN5Xbyak13CodeGenerator3movERKNS_7OperandES3_+0x44d>
 44d:	41 0f b6 75 00       	movzbl 0x0(%r13),%esi
 452:	41 0f b6 04 24       	movzbl (%r12),%eax
 457:	48 89 ef             	mov    %rbp,%rdi
 45a:	c1 e6 03             	shl    $0x3,%esi
 45d:	83 e0 07             	and    $0x7,%eax
 460:	83 e6 38             	and    $0x38,%esi
 463:	09 c6                	or     %eax,%esi
 465:	83 ce c0             	or     $0xffffffc0,%esi
 468:	40 0f b6 f6          	movzbl %sil,%esi
 46c:	e8 00 00 00 00       	callq  471 <_ZN5Xbyak13CodeGenerator3movERKNS_7OperandES3_+0x471>
 471:	48 83 c4 18          	add    $0x18,%rsp
 475:	5b                   	pop    %rbx
 476:	5d                   	pop    %rbp
 477:	41 5c                	pop    %r12
 479:	41 5d                	pop    %r13
 47b:	41 5e                	pop    %r14
 47d:	41 5f                	pop    %r15
 47f:	c3                   	retq   
 480:	4c 8b 7d 78          	mov    0x78(%rbp),%r15
 484:	e9 fd fe ff ff       	jmpq   386 <_ZN5Xbyak13CodeGenerator3movERKNS_7OperandES3_+0x386>
 489:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
 490:	4c 8b 6d 78          	mov    0x78(%rbp),%r13
 494:	e9 36 fe ff ff       	jmpq   2cf <_ZN5Xbyak13CodeGenerator3movERKNS_7OperandES3_+0x2cf>
 499:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
 4a0:	41 f6 44 24 02 08    	testb  $0x8,0x2(%r12)
 4a6:	41 0f 94 c4          	sete   %r12b
 4aa:	41 83 ec 60          	sub    $0x60,%r12d
 4ae:	e9 8a fd ff ff       	jmpq   23d <_ZN5Xbyak13CodeGenerator3movERKNS_7OperandES3_+0x23d>
 4b3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
 4b8:	4c 89 eb             	mov    %r13,%rbx
 4bb:	4c 89 e6             	mov    %r12,%rsi
 4be:	e9 3b fd ff ff       	jmpq   1fe <_ZN5Xbyak13CodeGenerator3movERKNS_7OperandES3_+0x1fe>
 4c3:	66 85 c9             	test   %cx,%cx
 4c6:	0f 84 fe fc ff ff    	je     1ca <_ZN5Xbyak13CodeGenerator3movERKNS_7OperandES3_+0x1ca>
 4cc:	66 39 f0             	cmp    %si,%ax
 4cf:	0f 85 f5 fc ff ff    	jne    1ca <_ZN5Xbyak13CodeGenerator3movERKNS_7OperandES3_+0x1ca>
 4d5:	e9 45 ff ff ff       	jmpq   41f <_ZN5Xbyak13CodeGenerator3movERKNS_7OperandES3_+0x41f>
 4da:	e8 00 00 00 00       	callq  4df <_ZN5Xbyak13CodeGenerator3movERKNS_7OperandES3_+0x4df>
 4df:	e8 00 00 00 00       	callq  4e4 <_GLOBAL__sub_I_mcl.cpp.cold+0x1b4>

Disassembly of section .text._ZN5Xbyak4util10StackFrameC2EPNS_13CodeGeneratorEiiib:

0000000000000000 <_ZN5Xbyak4util10StackFrameC1EPNS_13CodeGeneratorEiiib>:
   0:	f3 0f 1e fa          	endbr64 
   4:	41 57                	push   %r15
   6:	4c 8d 9f b0 00 00 00 	lea    0xb0(%rdi),%r11
   d:	41 56                	push   %r14
   f:	66 49 0f 6e c3       	movq   %r11,%xmm0
  14:	41 55                	push   %r13
  16:	41 54                	push   %r12
  18:	41 89 d4             	mov    %edx,%r12d
  1b:	89 ca                	mov    %ecx,%edx
  1d:	55                   	push   %rbp
  1e:	48 89 f5             	mov    %rsi,%rbp
  21:	c0 ea 07             	shr    $0x7,%dl
  24:	53                   	push   %rbx
  25:	48 89 fb             	mov    %rdi,%rbx
  28:	48 83 ec 28          	sub    $0x28,%rsp
  2c:	8b 47 20             	mov    0x20(%rdi),%eax
  2f:	48 89 37             	mov    %rsi,(%rdi)
  32:	89 ce                	mov    %ecx,%esi
  34:	44 89 44 24 14       	mov    %r8d,0x14(%rsp)
  39:	c1 ee 06             	shr    $0x6,%esi
  3c:	41 89 c8             	mov    %ecx,%r8d
  3f:	4c 89 d9             	mov    %r11,%rcx
  42:	25 00 00 00 80       	and    $0x80000000,%eax
  47:	41 80 e0 3f          	and    $0x3f,%r8b
  4b:	83 e6 01             	and    $0x1,%esi
  4e:	44 88 4f 1c          	mov    %r9b,0x1c(%rdi)
  52:	0d 80 00 40 00       	or     $0x400080,%eax
  57:	44 89 67 08          	mov    %r12d,0x8(%rdi)
  5b:	4c 8d 8f 30 01 00 00 	lea    0x130(%rdi),%r9
  62:	89 47 20             	mov    %eax,0x20(%rdi)
  65:	8b 47 28             	mov    0x28(%rdi),%eax
  68:	66 49 0f 6e c9       	movq   %r9,%xmm1
  6d:	44 89 47 0c          	mov    %r8d,0xc(%rdi)
  71:	66 0f 6c c1          	punpcklqdq %xmm1,%xmm0
  75:	25 00 00 00 80       	and    $0x80000000,%eax
  7a:	40 88 77 10          	mov    %sil,0x10(%rdi)
  7e:	0d 80 00 40 00       	or     $0x400080,%eax
  83:	88 57 11             	mov    %dl,0x11(%rdi)
  86:	89 47 28             	mov    %eax,0x28(%rdi)
  89:	8b 47 30             	mov    0x30(%rdi),%eax
  8c:	48 c7 47 14 00 00 00 	movq   $0x0,0x14(%rdi)
  93:	00 
  94:	25 00 00 00 80       	and    $0x80000000,%eax
  99:	80 67 24 c0          	andb   $0xc0,0x24(%rdi)
  9d:	0d 80 00 40 00       	or     $0x400080,%eax
  a2:	80 67 2c c0          	andb   $0xc0,0x2c(%rdi)
  a6:	89 47 30             	mov    %eax,0x30(%rdi)
  a9:	8b 47 38             	mov    0x38(%rdi),%eax
  ac:	80 67 34 c0          	andb   $0xc0,0x34(%rdi)
  b0:	25 00 00 00 80       	and    $0x80000000,%eax
  b5:	80 67 3c c0          	andb   $0xc0,0x3c(%rdi)
  b9:	0d 80 00 40 00       	or     $0x400080,%eax
  be:	89 47 38             	mov    %eax,0x38(%rdi)
  c1:	8b 47 40             	mov    0x40(%rdi),%eax
  c4:	25 00 00 00 80       	and    $0x80000000,%eax
  c9:	0d 80 00 40 00       	or     $0x400080,%eax
  ce:	89 47 40             	mov    %eax,0x40(%rdi)
  d1:	8b 47 48             	mov    0x48(%rdi),%eax
  d4:	80 67 44 c0          	andb   $0xc0,0x44(%rdi)
  d8:	25 00 00 00 80       	and    $0x80000000,%eax
  dd:	80 67 4c c0          	andb   $0xc0,0x4c(%rdi)
  e1:	0d 80 00 40 00       	or     $0x400080,%eax
  e6:	80 67 54 c0          	andb   $0xc0,0x54(%rdi)
  ea:	89 47 48             	mov    %eax,0x48(%rdi)
  ed:	8b 47 50             	mov    0x50(%rdi),%eax
  f0:	80 67 5c c0          	andb   $0xc0,0x5c(%rdi)
  f4:	25 00 00 00 80       	and    $0x80000000,%eax
  f9:	80 67 64 c0          	andb   $0xc0,0x64(%rdi)
  fd:	0d 80 00 40 00       	or     $0x400080,%eax
 102:	89 47 50             	mov    %eax,0x50(%rdi)
 105:	8b 47 58             	mov    0x58(%rdi),%eax
 108:	25 00 00 00 80       	and    $0x80000000,%eax
 10d:	0d 80 00 40 00       	or     $0x400080,%eax
 112:	89 47 58             	mov    %eax,0x58(%rdi)
 115:	8b 47 60             	mov    0x60(%rdi),%eax
 118:	25 00 00 00 80       	and    $0x80000000,%eax
 11d:	0d 80 00 40 00       	or     $0x400080,%eax
 122:	89 47 60             	mov    %eax,0x60(%rdi)
 125:	8b 47 68             	mov    0x68(%rdi),%eax
 128:	25 00 00 00 80       	and    $0x80000000,%eax
 12d:	80 67 6c c0          	andb   $0xc0,0x6c(%rdi)
 131:	0d 80 00 40 00       	or     $0x400080,%eax
 136:	80 67 74 c0          	andb   $0xc0,0x74(%rdi)
 13a:	89 47 68             	mov    %eax,0x68(%rdi)
 13d:	8b 47 70             	mov    0x70(%rdi),%eax
 140:	80 67 7c c0          	andb   $0xc0,0x7c(%rdi)
 144:	25 00 00 00 80       	and    $0x80000000,%eax
 149:	0d 80 00 40 00       	or     $0x400080,%eax
 14e:	89 47 70             	mov    %eax,0x70(%rdi)
 151:	8b 47 78             	mov    0x78(%rdi),%eax
 154:	25 00 00 00 80       	and    $0x80000000,%eax
 159:	0d 80 00 40 00       	or     $0x400080,%eax
 15e:	89 47 78             	mov    %eax,0x78(%rdi)
 161:	8b 87 80 00 00 00    	mov    0x80(%rdi),%eax
 167:	25 00 00 00 80       	and    $0x80000000,%eax
 16c:	0d 80 00 40 00       	or     $0x400080,%eax
 171:	89 87 80 00 00 00    	mov    %eax,0x80(%rdi)
 177:	80 a7 84 00 00 00 c0 	andb   $0xc0,0x84(%rdi)
 17e:	8b 87 88 00 00 00    	mov    0x88(%rdi),%eax
 184:	80 a7 8c 00 00 00 c0 	andb   $0xc0,0x8c(%rdi)
 18b:	25 00 00 00 80       	and    $0x80000000,%eax
 190:	80 a7 94 00 00 00 c0 	andb   $0xc0,0x94(%rdi)
 197:	0d 80 00 40 00       	or     $0x400080,%eax
 19c:	80 a7 9c 00 00 00 c0 	andb   $0xc0,0x9c(%rdi)
 1a3:	89 87 88 00 00 00    	mov    %eax,0x88(%rdi)
 1a9:	8b 87 90 00 00 00    	mov    0x90(%rdi),%eax
 1af:	80 a7 a4 00 00 00 c0 	andb   $0xc0,0xa4(%rdi)
 1b6:	25 00 00 00 80       	and    $0x80000000,%eax
 1bb:	80 a7 ac 00 00 00 c0 	andb   $0xc0,0xac(%rdi)
 1c2:	48 81 c7 b8 00 00 00 	add    $0xb8,%rdi
 1c9:	0d 80 00 40 00       	or     $0x400080,%eax
 1ce:	4c 89 5c 24 18       	mov    %r11,0x18(%rsp)
 1d3:	89 47 d8             	mov    %eax,-0x28(%rdi)
 1d6:	8b 47 e0             	mov    -0x20(%rdi),%eax
 1d9:	48 c7 47 f8 00 00 00 	movq   $0x0,-0x8(%rdi)
 1e0:	00 
 1e1:	25 00 00 00 80       	and    $0x80000000,%eax
 1e6:	48 c7 47 68 00 00 00 	movq   $0x0,0x68(%rdi)
 1ed:	00 
 1ee:	0d 80 00 40 00       	or     $0x400080,%eax
 1f3:	89 47 e0             	mov    %eax,-0x20(%rdi)
 1f6:	8b 47 e8             	mov    -0x18(%rdi),%eax
 1f9:	25 00 00 00 80       	and    $0x80000000,%eax
 1fe:	0d 80 00 40 00       	or     $0x400080,%eax
 203:	89 47 e8             	mov    %eax,-0x18(%rdi)
 206:	8b 47 f0             	mov    -0x10(%rdi),%eax
 209:	25 00 00 00 80       	and    $0x80000000,%eax
 20e:	0d 80 00 40 00       	or     $0x400080,%eax
 213:	89 47 f0             	mov    %eax,-0x10(%rdi)
 216:	48 83 e7 f8          	and    $0xfffffffffffffff8,%rdi
 21a:	31 c0                	xor    %eax,%eax
 21c:	48 29 f9             	sub    %rdi,%rcx
 21f:	83 c1 78             	add    $0x78,%ecx
 222:	c1 e9 03             	shr    $0x3,%ecx
 225:	f3 48 ab             	rep stos %rax,%es:(%rdi)
 228:	48 8d bb 38 01 00 00 	lea    0x138(%rbx),%rdi
 22f:	4c 89 c9             	mov    %r9,%rcx
 232:	48 c7 83 28 01 00 00 	movq   $0x0,0x128(%rbx)
 239:	00 00 00 00 
 23d:	48 c7 83 30 01 00 00 	movq   $0x0,0x130(%rbx)
 244:	00 00 00 00 
 248:	48 83 e7 f8          	and    $0xfffffffffffffff8,%rdi
 24c:	48 c7 83 a0 01 00 00 	movq   $0x0,0x1a0(%rbx)
 253:	00 00 00 00 
 257:	48 29 f9             	sub    %rdi,%rcx
 25a:	83 c1 78             	add    $0x78,%ecx
 25d:	c1 e9 03             	shr    $0x3,%ecx
 260:	f3 48 ab             	rep stos %rax,%es:(%rdi)
 263:	0f 11 83 b0 01 00 00 	movups %xmm0,0x1b0(%rbx)
 26a:	48 c7 83 a8 01 00 00 	movq   $0x0,0x1a8(%rbx)
 271:	00 00 00 00 
 275:	41 83 fc 04          	cmp    $0x4,%r12d
 279:	0f 87 03 09 00 00    	ja     b82 <_ZN5Xbyak4util10StackFrameC1EPNS_13CodeGeneratorEiiib+0xb82>
 27f:	43 8d 04 20          	lea    (%r8,%r12,1),%eax
 283:	40 0f b6 f6          	movzbl %sil,%esi
 287:	0f b6 d2             	movzbl %dl,%edx
 28a:	01 c6                	add    %eax,%esi
 28c:	01 f2                	add    %esi,%edx
 28e:	45 85 c0             	test   %r8d,%r8d
 291:	0f 88 2a 09 00 00    	js     bc1 <_ZN5Xbyak4util10StackFrameC1EPNS_13CodeGeneratorEiiib+0xbc1>
 297:	83 fa 0e             	cmp    $0xe,%edx
 29a:	0f 8f 21 09 00 00    	jg     bc1 <_ZN5Xbyak4util10StackFrameC1EPNS_13CodeGeneratorEiiib+0xbc1>
 2a0:	89 d0                	mov    %edx,%eax
 2a2:	b9 00 00 00 00       	mov    $0x0,%ecx
 2a7:	83 e8 08             	sub    $0x8,%eax
 2aa:	0f 48 c1             	cmovs  %ecx,%eax
 2ad:	89 43 14             	mov    %eax,0x14(%rbx)
 2b0:	83 fa 08             	cmp    $0x8,%edx
 2b3:	0f 8e df 01 00 00    	jle    498 <_ZN5Xbyak4util10StackFrameC1EPNS_13CodeGeneratorEiiib+0x498>
 2b9:	41 b8 03 00 00 00    	mov    $0x3,%r8d
 2bf:	48 8b 45 70          	mov    0x70(%rbp),%rax
 2c3:	48 8b 95 80 00 00 00 	mov    0x80(%rbp),%rdx
 2ca:	41 bf 01 00 00 00    	mov    $0x1,%r15d
 2d0:	41 83 e0 07          	and    $0x7,%r8d
 2d4:	41 83 c8 50          	or     $0x50,%r8d
 2d8:	45 89 c5             	mov    %r8d,%r13d
 2db:	48 39 d0             	cmp    %rdx,%rax
 2de:	0f 87 ea 00 00 00    	ja     3ce <_ZN5Xbyak4util10StackFrameC1EPNS_13CodeGeneratorEiiib+0x3ce>
 2e4:	0f 1f 40 00          	nopl   0x0(%rax)
 2e8:	83 7d 20 03          	cmpl   $0x3,0x20(%rbp)
 2ec:	0f 85 ca 08 00 00    	jne    bbc <_ZN5Xbyak4util10StackFrameC1EPNS_13CodeGeneratorEiiib+0xbbc>
 2f2:	4c 8d 0c 00          	lea    (%rax,%rax,1),%r9
 2f6:	48 8b 7d 68          	mov    0x68(%rbp),%rdi
 2fa:	b8 00 10 00 00       	mov    $0x1000,%eax
 2ff:	49 81 f9 00 10 00 00 	cmp    $0x1000,%r9
 306:	4c 0f 42 c8          	cmovb  %rax,%r9
 30a:	48 8b 07             	mov    (%rdi),%rax
 30d:	4c 89 4c 24 08       	mov    %r9,0x8(%rsp)
 312:	4c 89 ce             	mov    %r9,%rsi
 315:	ff 10                	callq  *(%rax)
 317:	49 89 c6             	mov    %rax,%r14
 31a:	48 85 c0             	test   %rax,%rax
 31d:	0f 84 94 08 00 00    	je     bb7 <_ZN5Xbyak4util10StackFrameC1EPNS_13CodeGeneratorEiiib+0xbb7>
 323:	31 d2                	xor    %edx,%edx
 325:	48 83 bd 80 00 00 00 	cmpq   $0x0,0x80(%rbp)
 32c:	00 
 32d:	4c 8b 4c 24 08       	mov    0x8(%rsp),%r9
 332:	74 1d                	je     351 <_ZN5Xbyak4util10StackFrameC1EPNS_13CodeGeneratorEiiib+0x351>
 334:	0f 1f 40 00          	nopl   0x0(%rax)
 338:	48 8b 75 78          	mov    0x78(%rbp),%rsi
 33c:	0f b6 34 16          	movzbl (%rsi,%rdx,1),%esi
 340:	41 88 34 16          	mov    %sil,(%r14,%rdx,1)
 344:	48 83 c2 01          	add    $0x1,%rdx
 348:	48 39 95 80 00 00 00 	cmp    %rdx,0x80(%rbp)
 34f:	77 e7                	ja     338 <_ZN5Xbyak4util10StackFrameC1EPNS_13CodeGeneratorEiiib+0x338>
 351:	48 8b 7d 68          	mov    0x68(%rbp),%rdi
 355:	48 8b 75 78          	mov    0x78(%rbp),%rsi
 359:	4c 89 4c 24 08       	mov    %r9,0x8(%rsp)
 35e:	48 8b 17             	mov    (%rdi),%rdx
 361:	ff 52 08             	callq  *0x8(%rdx)
 364:	4c 8b 4c 24 08       	mov    0x8(%rsp),%r9
 369:	4c 89 75 78          	mov    %r14,0x78(%rbp)
 36d:	48 8b 95 80 00 00 00 	mov    0x80(%rbp),%rdx
 374:	4c 89 4d 70          	mov    %r9,0x70(%rbp)
 378:	48 8d 72 01          	lea    0x1(%rdx),%rsi
 37c:	48 89 b5 80 00 00 00 	mov    %rsi,0x80(%rbp)
 383:	45 88 2c 16          	mov    %r13b,(%r14,%rdx,1)
 387:	8b 43 14             	mov    0x14(%rbx),%eax
 38a:	44 39 f8             	cmp    %r15d,%eax
 38d:	0f 8e 05 01 00 00    	jle    498 <_ZN5Xbyak4util10StackFrameC1EPNS_13CodeGeneratorEiiib+0x498>
 393:	48 8b 15 00 00 00 00 	mov    0x0(%rip),%rdx        # 39a <_ZN5Xbyak4util10StackFrameC1EPNS_13CodeGeneratorEiiib+0x39a>
 39a:	48 8b 45 70          	mov    0x70(%rbp),%rax
 39e:	42 8b 74 ba 20       	mov    0x20(%rdx,%r15,4),%esi
 3a3:	48 8b 95 80 00 00 00 	mov    0x80(%rbp),%rdx
 3aa:	41 89 f0             	mov    %esi,%r8d
 3ad:	41 83 e0 3f          	and    $0x3f,%r8d
 3b1:	83 e6 18             	and    $0x18,%esi
 3b4:	75 22                	jne    3d8 <_ZN5Xbyak4util10StackFrameC1EPNS_13CodeGeneratorEiiib+0x3d8>
 3b6:	41 83 e0 07          	and    $0x7,%r8d
 3ba:	49 83 c7 01          	add    $0x1,%r15
 3be:	41 83 c8 50          	or     $0x50,%r8d
 3c2:	45 89 c5             	mov    %r8d,%r13d
 3c5:	48 39 d0             	cmp    %rdx,%rax
 3c8:	0f 86 1a ff ff ff    	jbe    2e8 <_ZN5Xbyak4util10StackFrameC1EPNS_13CodeGeneratorEiiib+0x2e8>
 3ce:	4c 8b 75 78          	mov    0x78(%rbp),%r14
 3d2:	eb a4                	jmp    378 <_ZN5Xbyak4util10StackFrameC1EPNS_13CodeGeneratorEiiib+0x378>
 3d4:	0f 1f 40 00          	nopl   0x0(%rax)
 3d8:	48 39 c2             	cmp    %rax,%rdx
 3db:	0f 82 97 01 00 00    	jb     578 <_ZN5Xbyak4util10StackFrameC1EPNS_13CodeGeneratorEiiib+0x578>
 3e1:	83 7d 20 03          	cmpl   $0x3,0x20(%rbp)
 3e5:	44 88 44 24 08       	mov    %r8b,0x8(%rsp)
 3ea:	0f 85 cc 07 00 00    	jne    bbc <_ZN5Xbyak4util10StackFrameC1EPNS_13CodeGeneratorEiiib+0xbbc>
 3f0:	4c 8d 34 00          	lea    (%rax,%rax,1),%r14
 3f4:	48 8b 7d 68          	mov    0x68(%rbp),%rdi
 3f8:	b8 00 10 00 00       	mov    $0x1000,%eax
 3fd:	49 81 fe 00 10 00 00 	cmp    $0x1000,%r14
 404:	4c 0f 42 f0          	cmovb  %rax,%r14
 408:	48 8b 07             	mov    (%rdi),%rax
 40b:	4c 89 f6             	mov    %r14,%rsi
 40e:	ff 10                	callq  *(%rax)
 410:	44 0f b6 44 24 08    	movzbl 0x8(%rsp),%r8d
 416:	48 85 c0             	test   %rax,%rax
 419:	49 89 c5             	mov    %rax,%r13
 41c:	0f 84 95 07 00 00    	je     bb7 <_ZN5Xbyak4util10StackFrameC1EPNS_13CodeGeneratorEiiib+0xbb7>
 422:	31 f6                	xor    %esi,%esi
 424:	48 83 bd 80 00 00 00 	cmpq   $0x0,0x80(%rbp)
 42b:	00 
 42c:	74 1c                	je     44a <_ZN5Xbyak4util10StackFrameC1EPNS_13CodeGeneratorEiiib+0x44a>
 42e:	66 90                	xchg   %ax,%ax
 430:	48 8b 7d 78          	mov    0x78(%rbp),%rdi
 434:	0f b6 3c 37          	movzbl (%rdi,%rsi,1),%edi
 438:	41 88 7c 35 00       	mov    %dil,0x0(%r13,%rsi,1)
 43d:	48 83 c6 01          	add    $0x1,%rsi
 441:	48 39 b5 80 00 00 00 	cmp    %rsi,0x80(%rbp)
 448:	77 e6                	ja     430 <_ZN5Xbyak4util10StackFrameC1EPNS_13CodeGeneratorEiiib+0x430>
 44a:	48 8b 7d 68          	mov    0x68(%rbp),%rdi
 44e:	48 8b 75 78          	mov    0x78(%rbp),%rsi
 452:	44 88 44 24 08       	mov    %r8b,0x8(%rsp)
 457:	4c 8b 0f             	mov    (%rdi),%r9
 45a:	41 ff 51 08          	callq  *0x8(%r9)
 45e:	4c 89 6d 78          	mov    %r13,0x78(%rbp)
 462:	44 0f b6 44 24 08    	movzbl 0x8(%rsp),%r8d
 468:	4c 89 75 70          	mov    %r14,0x70(%rbp)
 46c:	48 8b 95 80 00 00 00 	mov    0x80(%rbp),%rdx
 473:	48 8d 72 01          	lea    0x1(%rdx),%rsi
 477:	48 89 b5 80 00 00 00 	mov    %rsi,0x80(%rbp)
 47e:	41 c6 44 15 00 41    	movb   $0x41,0x0(%r13,%rdx,1)
 484:	48 8b 95 80 00 00 00 	mov    0x80(%rbp),%rdx
 48b:	48 8b 45 70          	mov    0x70(%rbp),%rax
 48f:	e9 22 ff ff ff       	jmpq   3b6 <_ZN5Xbyak4util10StackFrameC1EPNS_13CodeGeneratorEiiib+0x3b6>
 494:	0f 1f 40 00          	nopl   0x0(%rax)
 498:	8b 7c 24 14          	mov    0x14(%rsp),%edi
 49c:	89 f9                	mov    %edi,%ecx
 49e:	8d 57 0e             	lea    0xe(%rdi),%edx
 4a1:	83 c1 07             	add    $0x7,%ecx
 4a4:	0f 49 d1             	cmovns %ecx,%edx
 4a7:	c1 fa 03             	sar    $0x3,%edx
 4aa:	85 ff                	test   %edi,%edi
 4ac:	7e 0a                	jle    4b8 <_ZN5Xbyak4util10StackFrameC1EPNS_13CodeGeneratorEiiib+0x4b8>
 4ae:	31 d0                	xor    %edx,%eax
 4b0:	a8 01                	test   $0x1,%al
 4b2:	0f 84 f8 01 00 00    	je     6b0 <_ZN5Xbyak4util10StackFrameC1EPNS_13CodeGeneratorEiiib+0x6b0>
 4b8:	c1 e2 03             	shl    $0x3,%edx
 4bb:	89 53 18             	mov    %edx,0x18(%rbx)
 4be:	85 d2                	test   %edx,%edx
 4c0:	0f 8f f4 01 00 00    	jg     6ba <_ZN5Xbyak4util10StackFrameC1EPNS_13CodeGeneratorEiiib+0x6ba>
 4c6:	44 0f b6 4b 10       	movzbl 0x10(%rbx),%r9d
 4cb:	45 85 e4             	test   %r12d,%r12d
 4ce:	0f 84 0e 02 00 00    	je     6e2 <_ZN5Xbyak4util10StackFrameC1EPNS_13CodeGeneratorEiiib+0x6e2>
 4d4:	45 84 c9             	test   %r9b,%r9b
 4d7:	0f 85 ab 00 00 00    	jne    588 <_ZN5Xbyak4util10StackFrameC1EPNS_13CodeGeneratorEiiib+0x588>
 4dd:	80 7b 11 00          	cmpb   $0x0,0x11(%rbx)
 4e1:	0f 84 c9 04 00 00    	je     9b0 <_ZN5Xbyak4util10StackFrameC1EPNS_13CodeGeneratorEiiib+0x9b0>
 4e7:	8b 43 20             	mov    0x20(%rbx),%eax
 4ea:	80 63 24 c0          	andb   $0xc0,0x24(%rbx)
 4ee:	25 00 00 00 80       	and    $0x80000000,%eax
 4f3:	0d 87 00 40 00       	or     $0x400087,%eax
 4f8:	89 43 20             	mov    %eax,0x20(%rbx)
 4fb:	41 83 fc 01          	cmp    $0x1,%r12d
 4ff:	0f 84 e7 05 00 00    	je     aec <_ZN5Xbyak4util10StackFrameC1EPNS_13CodeGeneratorEiiib+0xaec>
 505:	8b 43 28             	mov    0x28(%rbx),%eax
 508:	80 63 2c c0          	andb   $0xc0,0x2c(%rbx)
 50c:	25 00 00 00 80       	and    $0x80000000,%eax
 511:	0d 86 00 40 00       	or     $0x400086,%eax
 516:	89 43 28             	mov    %eax,0x28(%rbx)
 519:	41 83 fc 02          	cmp    $0x2,%r12d
 51d:	0f 84 dd 05 00 00    	je     b00 <_ZN5Xbyak4util10StackFrameC1EPNS_13CodeGeneratorEiiib+0xb00>
 523:	8b 43 30             	mov    0x30(%rbx),%eax
 526:	80 63 34 c0          	andb   $0xc0,0x34(%rbx)
 52a:	25 00 00 00 80       	and    $0x80000000,%eax
 52f:	0d 8b 00 40 00       	or     $0x40008b,%eax
 534:	89 43 30             	mov    %eax,0x30(%rbx)
 537:	41 83 fc 03          	cmp    $0x3,%r12d
 53b:	0f 85 c9 04 00 00    	jne    a0a <_ZN5Xbyak4util10StackFrameC1EPNS_13CodeGeneratorEiiib+0xa0a>
 541:	bf 03 00 00 00       	mov    $0x3,%edi
 546:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 54d:	00 00 00 
 550:	8b 4b 0c             	mov    0xc(%rbx),%ecx
 553:	85 c9                	test   %ecx,%ecx
 555:	0f 8f a5 01 00 00    	jg     700 <_ZN5Xbyak4util10StackFrameC1EPNS_13CodeGeneratorEiiib+0x700>
 55b:	41 83 fc 02          	cmp    $0x2,%r12d
 55f:	4c 8d 6b 20          	lea    0x20(%rbx),%r13
 563:	48 8d 6b 40          	lea    0x40(%rbx),%rbp
 567:	4d 63 f4             	movslq %r12d,%r14
 56a:	0f 9f c0             	setg   %al
 56d:	e9 5b 02 00 00       	jmpq   7cd <_ZN5Xbyak4util10StackFrameC1EPNS_13CodeGeneratorEiiib+0x7cd>
 572:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
 578:	4c 8b 6d 78          	mov    0x78(%rbp),%r13
 57c:	e9 f2 fe ff ff       	jmpq   473 <_ZN5Xbyak4util10StackFrameC1EPNS_13CodeGeneratorEiiib+0x473>
 581:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
 588:	80 7b 11 00          	cmpb   $0x0,0x11(%rbx)
 58c:	0f 84 9e 04 00 00    	je     a30 <_ZN5Xbyak4util10StackFrameC1EPNS_13CodeGeneratorEiiib+0xa30>
 592:	8b 43 20             	mov    0x20(%rbx),%eax
 595:	80 63 24 c0          	andb   $0xc0,0x24(%rbx)
 599:	25 00 00 00 80       	and    $0x80000000,%eax
 59e:	0d 87 00 40 00       	or     $0x400087,%eax
 5a3:	89 43 20             	mov    %eax,0x20(%rbx)
 5a6:	41 83 fc 01          	cmp    $0x1,%r12d
 5aa:	0f 84 46 05 00 00    	je     af6 <_ZN5Xbyak4util10StackFrameC1EPNS_13CodeGeneratorEiiib+0xaf6>
 5b0:	8b 43 28             	mov    0x28(%rbx),%eax
 5b3:	80 63 2c c0          	andb   $0xc0,0x2c(%rbx)
 5b7:	25 00 00 00 80       	and    $0x80000000,%eax
 5bc:	0d 86 00 40 00       	or     $0x400086,%eax
 5c1:	89 43 28             	mov    %eax,0x28(%rbx)
 5c4:	41 83 fc 02          	cmp    $0x2,%r12d
 5c8:	0f 84 3c 05 00 00    	je     b0a <_ZN5Xbyak4util10StackFrameC1EPNS_13CodeGeneratorEiiib+0xb0a>
 5ce:	ba 0b 00 00 00       	mov    $0xb,%edx
 5d3:	8b 43 30             	mov    0x30(%rbx),%eax
 5d6:	81 ca 80 00 40 00    	or     $0x400080,%edx
 5dc:	80 63 34 c0          	andb   $0xc0,0x34(%rbx)
 5e0:	25 00 00 00 80       	and    $0x80000000,%eax
 5e5:	09 d0                	or     %edx,%eax
 5e7:	89 43 30             	mov    %eax,0x30(%rbx)
 5ea:	41 83 fc 03          	cmp    $0x3,%r12d
 5ee:	0f 84 20 05 00 00    	je     b14 <_ZN5Xbyak4util10StackFrameC1EPNS_13CodeGeneratorEiiib+0xb14>
 5f4:	8b 43 38             	mov    0x38(%rbx),%eax
 5f7:	80 63 3c c0          	andb   $0xc0,0x3c(%rbx)
 5fb:	bf 04 00 00 00       	mov    $0x4,%edi
 600:	25 00 00 00 80       	and    $0x80000000,%eax
 605:	0d 8a 00 40 00       	or     $0x40008a,%eax
 60a:	89 43 38             	mov    %eax,0x38(%rbx)
 60d:	8b 4b 0c             	mov    0xc(%rbx),%ecx
 610:	48 8d 6b 40          	lea    0x40(%rbx),%rbp
 614:	85 c9                	test   %ecx,%ecx
 616:	0f 8e 94 01 00 00    	jle    7b0 <_ZN5Xbyak4util10StackFrameC1EPNS_13CodeGeneratorEiiib+0x7b0>
 61c:	48 8d 6b 40          	lea    0x40(%rbx),%rbp
 620:	8d 41 ff             	lea    -0x1(%rcx),%eax
 623:	48 8b 15 00 00 00 00 	mov    0x0(%rip),%rdx        # 62a <_ZN5Xbyak4util10StackFrameC1EPNS_13CodeGeneratorEiiib+0x62a>
 62a:	48 89 ee             	mov    %rbp,%rsi
 62d:	4c 8d 44 c3 48       	lea    0x48(%rbx,%rax,8),%r8
 632:	eb 4b                	jmp    67f <_ZN5Xbyak4util10StackFrameC1EPNS_13CodeGeneratorEiiib+0x67f>
 634:	0f 1f 40 00          	nopl   0x0(%rax)
 638:	44 89 d7             	mov    %r10d,%edi
 63b:	80 7b 11 00          	cmpb   $0x0,0x11(%rbx)
 63f:	74 12                	je     653 <_ZN5Xbyak4util10StackFrameC1EPNS_13CodeGeneratorEiiib+0x653>
 641:	83 f8 02             	cmp    $0x2,%eax
 644:	0f 84 56 03 00 00    	je     9a0 <_ZN5Xbyak4util10StackFrameC1EPNS_13CodeGeneratorEiiib+0x9a0>
 64a:	83 f8 0b             	cmp    $0xb,%eax
 64d:	0f 84 35 01 00 00    	je     788 <_ZN5Xbyak4util10StackFrameC1EPNS_13CodeGeneratorEiiib+0x788>
 653:	83 e0 3f             	and    $0x3f,%eax
 656:	44 8b 16             	mov    (%rsi),%r10d
 659:	0f b6 c0             	movzbl %al,%eax
 65c:	80 66 04 c0          	andb   $0xc0,0x4(%rsi)
 660:	48 83 c6 08          	add    $0x8,%rsi
 664:	0d 80 00 40 00       	or     $0x400080,%eax
 669:	41 81 e2 00 00 00 80 	and    $0x80000000,%r10d
 670:	44 09 d0             	or     %r10d,%eax
 673:	89 46 f8             	mov    %eax,-0x8(%rsi)
 676:	49 39 f0             	cmp    %rsi,%r8
 679:	0f 84 31 01 00 00    	je     7b0 <_ZN5Xbyak4util10StackFrameC1EPNS_13CodeGeneratorEiiib+0x7b0>
 67f:	48 63 c7             	movslq %edi,%rax
 682:	44 8d 57 01          	lea    0x1(%rdi),%r10d
 686:	4c 8d 1c 85 00 00 00 	lea    0x0(,%rax,4),%r11
 68d:	00 
 68e:	8b 04 82             	mov    (%rdx,%rax,4),%eax
 691:	83 f8 01             	cmp    $0x1,%eax
 694:	0f 84 06 01 00 00    	je     7a0 <_ZN5Xbyak4util10StackFrameC1EPNS_13CodeGeneratorEiiib+0x7a0>
 69a:	83 f8 0a             	cmp    $0xa,%eax
 69d:	75 99                	jne    638 <_ZN5Xbyak4util10StackFrameC1EPNS_13CodeGeneratorEiiib+0x638>
 69f:	41 8b 44 13 04       	mov    0x4(%r11,%rdx,1),%eax
 6a4:	83 c7 02             	add    $0x2,%edi
 6a7:	eb 92                	jmp    63b <_ZN5Xbyak4util10StackFrameC1EPNS_13CodeGeneratorEiiib+0x63b>
 6a9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
 6b0:	8d 14 d5 08 00 00 00 	lea    0x8(,%rdx,8),%edx
 6b7:	89 53 18             	mov    %edx,0x18(%rbx)
 6ba:	48 8d b5 18 05 00 00 	lea    0x518(%rbp),%rsi
 6c1:	41 b8 05 00 00 00    	mov    $0x5,%r8d
 6c7:	b9 28 00 00 00       	mov    $0x28,%ecx
 6cc:	48 89 ef             	mov    %rbp,%rdi
 6cf:	e8 00 00 00 00       	callq  6d4 <_ZN5Xbyak4util10StackFrameC1EPNS_13CodeGeneratorEiiib+0x6d4>
 6d4:	44 0f b6 4b 10       	movzbl 0x10(%rbx),%r9d
 6d9:	45 85 e4             	test   %r12d,%r12d
 6dc:	0f 85 f2 fd ff ff    	jne    4d4 <_ZN5Xbyak4util10StackFrameC1EPNS_13CodeGeneratorEiiib+0x4d4>
 6e2:	8b 4b 0c             	mov    0xc(%rbx),%ecx
 6e5:	85 c9                	test   %ecx,%ecx
 6e7:	0f 8e 31 04 00 00    	jle    b1e <_ZN5Xbyak4util10StackFrameC1EPNS_13CodeGeneratorEiiib+0xb1e>
 6ed:	31 ff                	xor    %edi,%edi
 6ef:	45 84 c9             	test   %r9b,%r9b
 6f2:	0f 85 24 ff ff ff    	jne    61c <_ZN5Xbyak4util10StackFrameC1EPNS_13CodeGeneratorEiiib+0x61c>
 6f8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
 6ff:	00 
 700:	48 8d 6b 40          	lea    0x40(%rbx),%rbp
 704:	8d 41 ff             	lea    -0x1(%rcx),%eax
 707:	44 0f b6 43 11       	movzbl 0x11(%rbx),%r8d
 70c:	48 8b 15 00 00 00 00 	mov    0x0(%rip),%rdx        # 713 <_ZN5Xbyak4util10StackFrameC1EPNS_13CodeGeneratorEiiib+0x713>
 713:	48 89 ee             	mov    %rbp,%rsi
 716:	4c 8d 4c c3 48       	lea    0x48(%rbx,%rax,8),%r9
 71b:	eb 32                	jmp    74f <_ZN5Xbyak4util10StackFrameC1EPNS_13CodeGeneratorEiiib+0x74f>
 71d:	0f 1f 00             	nopl   (%rax)
 720:	83 e0 3f             	and    $0x3f,%eax
 723:	44 89 d7             	mov    %r10d,%edi
 726:	44 8b 16             	mov    (%rsi),%r10d
 729:	0f b6 c0             	movzbl %al,%eax
 72c:	80 66 04 c0          	andb   $0xc0,0x4(%rsi)
 730:	48 83 c6 08          	add    $0x8,%rsi
 734:	0d 80 00 40 00       	or     $0x400080,%eax
 739:	41 81 e2 00 00 00 80 	and    $0x80000000,%r10d
 740:	44 09 d0             	or     %r10d,%eax
 743:	89 46 f8             	mov    %eax,-0x8(%rsi)
 746:	4c 39 ce             	cmp    %r9,%rsi
 749:	0f 84 29 02 00 00    	je     978 <_ZN5Xbyak4util10StackFrameC1EPNS_13CodeGeneratorEiiib+0x978>
 74f:	48 63 c7             	movslq %edi,%rax
 752:	44 8d 57 01          	lea    0x1(%rdi),%r10d
 756:	4c 8d 1c 85 00 00 00 	lea    0x0(,%rax,4),%r11
 75d:	00 
 75e:	8b 04 82             	mov    (%rdx,%rax,4),%eax
 761:	45 84 c0             	test   %r8b,%r8b
 764:	74 ba                	je     720 <_ZN5Xbyak4util10StackFrameC1EPNS_13CodeGeneratorEiiib+0x720>
 766:	83 f8 02             	cmp    $0x2,%eax
 769:	0f 84 21 02 00 00    	je     990 <_ZN5Xbyak4util10StackFrameC1EPNS_13CodeGeneratorEiiib+0x990>
 76f:	83 f8 0b             	cmp    $0xb,%eax
 772:	75 ac                	jne    720 <_ZN5Xbyak4util10StackFrameC1EPNS_13CodeGeneratorEiiib+0x720>
 774:	41 8b 44 13 04       	mov    0x4(%r11,%rdx,1),%eax
 779:	83 c7 02             	add    $0x2,%edi
 77c:	83 e0 3f             	and    $0x3f,%eax
 77f:	eb a5                	jmp    726 <_ZN5Xbyak4util10StackFrameC1EPNS_13CodeGeneratorEiiib+0x726>
 781:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
 788:	48 63 c7             	movslq %edi,%rax
 78b:	83 c7 01             	add    $0x1,%edi
 78e:	8b 04 82             	mov    (%rdx,%rax,4),%eax
 791:	83 e0 3f             	and    $0x3f,%eax
 794:	e9 bd fe ff ff       	jmpq   656 <_ZN5Xbyak4util10StackFrameC1EPNS_13CodeGeneratorEiiib+0x656>
 799:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
 7a0:	44 89 d7             	mov    %r10d,%edi
 7a3:	b8 0a 00 00 00       	mov    $0xa,%eax
 7a8:	e9 a9 fe ff ff       	jmpq   656 <_ZN5Xbyak4util10StackFrameC1EPNS_13CodeGeneratorEiiib+0x656>
 7ad:	0f 1f 00             	nopl   (%rax)
 7b0:	41 83 fc 02          	cmp    $0x2,%r12d
 7b4:	4d 63 f4             	movslq %r12d,%r14
 7b7:	4c 8d 6b 20          	lea    0x20(%rbx),%r13
 7bb:	0f 9f c0             	setg   %al
 7be:	41 83 fc 04          	cmp    $0x4,%r12d
 7c2:	75 09                	jne    7cd <_ZN5Xbyak4util10StackFrameC1EPNS_13CodeGeneratorEiiib+0x7cd>
 7c4:	45 84 c9             	test   %r9b,%r9b
 7c7:	0f 85 d8 02 00 00    	jne    aa5 <_ZN5Xbyak4util10StackFrameC1EPNS_13CodeGeneratorEiiib+0xaa5>
 7cd:	80 7b 11 00          	cmpb   $0x0,0x11(%rbx)
 7d1:	74 08                	je     7db <_ZN5Xbyak4util10StackFrameC1EPNS_13CodeGeneratorEiiib+0x7db>
 7d3:	84 c0                	test   %al,%al
 7d5:	0f 85 a5 02 00 00    	jne    a80 <_ZN5Xbyak4util10StackFrameC1EPNS_13CodeGeneratorEiiib+0xa80>
 7db:	4c 89 b3 28 01 00 00 	mov    %r14,0x128(%rbx)
 7e2:	4d 85 f6             	test   %r14,%r14
 7e5:	74 3a                	je     821 <_ZN5Xbyak4util10StackFrameC1EPNS_13CodeGeneratorEiiib+0x821>
 7e7:	4c 89 ab b0 00 00 00 	mov    %r13,0xb0(%rbx)
 7ee:	49 83 fe 01          	cmp    $0x1,%r14
 7f2:	76 2d                	jbe    821 <_ZN5Xbyak4util10StackFrameC1EPNS_13CodeGeneratorEiiib+0x821>
 7f4:	49 8d 45 08          	lea    0x8(%r13),%rax
 7f8:	48 89 83 b8 00 00 00 	mov    %rax,0xb8(%rbx)
 7ff:	49 83 fe 02          	cmp    $0x2,%r14
 803:	74 1c                	je     821 <_ZN5Xbyak4util10StackFrameC1EPNS_13CodeGeneratorEiiib+0x821>
 805:	49 8d 45 10          	lea    0x10(%r13),%rax
 809:	48 89 83 c0 00 00 00 	mov    %rax,0xc0(%rbx)
 810:	49 83 fe 03          	cmp    $0x3,%r14
 814:	74 0b                	je     821 <_ZN5Xbyak4util10StackFrameC1EPNS_13CodeGeneratorEiiib+0x821>
 816:	49 83 c5 18          	add    $0x18,%r13
 81a:	4c 89 ab c8 00 00 00 	mov    %r13,0xc8(%rbx)
 821:	48 63 c1             	movslq %ecx,%rax
 824:	48 83 f8 0f          	cmp    $0xf,%rax
 828:	0f 87 02 03 00 00    	ja     b30 <_ZN5Xbyak4util10StackFrameC1EPNS_13CodeGeneratorEiiib+0xb30>
 82e:	48 89 83 a8 01 00 00 	mov    %rax,0x1a8(%rbx)
 835:	48 85 c0             	test   %rax,%rax
 838:	0f 84 28 01 00 00    	je     966 <_ZN5Xbyak4util10StackFrameC1EPNS_13CodeGeneratorEiiib+0x966>
 83e:	48 89 ab 30 01 00 00 	mov    %rbp,0x130(%rbx)
 845:	48 83 f8 01          	cmp    $0x1,%rax
 849:	0f 84 17 01 00 00    	je     966 <_ZN5Xbyak4util10StackFrameC1EPNS_13CodeGeneratorEiiib+0x966>
 84f:	48 8d 53 48          	lea    0x48(%rbx),%rdx
 853:	48 89 93 38 01 00 00 	mov    %rdx,0x138(%rbx)
 85a:	48 83 f8 02          	cmp    $0x2,%rax
 85e:	0f 84 02 01 00 00    	je     966 <_ZN5Xbyak4util10StackFrameC1EPNS_13CodeGeneratorEiiib+0x966>
 864:	48 8d 53 50          	lea    0x50(%rbx),%rdx
 868:	48 89 93 40 01 00 00 	mov    %rdx,0x140(%rbx)
 86f:	48 83 f8 03          	cmp    $0x3,%rax
 873:	0f 84 ed 00 00 00    	je     966 <_ZN5Xbyak4util10StackFrameC1EPNS_13CodeGeneratorEiiib+0x966>
 879:	48 8d 53 58          	lea    0x58(%rbx),%rdx
 87d:	48 89 93 48 01 00 00 	mov    %rdx,0x148(%rbx)
 884:	48 83 f8 04          	cmp    $0x4,%rax
 888:	0f 84 d8 00 00 00    	je     966 <_ZN5Xbyak4util10StackFrameC1EPNS_13CodeGeneratorEiiib+0x966>
 88e:	48 8d 53 60          	lea    0x60(%rbx),%rdx
 892:	48 89 93 50 01 00 00 	mov    %rdx,0x150(%rbx)
 899:	48 83 f8 05          	cmp    $0x5,%rax
 89d:	0f 84 c3 00 00 00    	je     966 <_ZN5Xbyak4util10StackFrameC1EPNS_13CodeGeneratorEiiib+0x966>
 8a3:	48 8d 53 68          	lea    0x68(%rbx),%rdx
 8a7:	48 89 93 58 01 00 00 	mov    %rdx,0x158(%rbx)
 8ae:	48 83 f8 06          	cmp    $0x6,%rax
 8b2:	0f 84 ae 00 00 00    	je     966 <_ZN5Xbyak4util10StackFrameC1EPNS_13CodeGeneratorEiiib+0x966>
 8b8:	48 8d 53 70          	lea    0x70(%rbx),%rdx
 8bc:	48 89 93 60 01 00 00 	mov    %rdx,0x160(%rbx)
 8c3:	48 83 f8 07          	cmp    $0x7,%rax
 8c7:	0f 84 99 00 00 00    	je     966 <_ZN5Xbyak4util10StackFrameC1EPNS_13CodeGeneratorEiiib+0x966>
 8cd:	48 8d 53 78          	lea    0x78(%rbx),%rdx
 8d1:	48 89 93 68 01 00 00 	mov    %rdx,0x168(%rbx)
 8d8:	48 83 f8 08          	cmp    $0x8,%rax
 8dc:	0f 84 84 00 00 00    	je     966 <_ZN5Xbyak4util10StackFrameC1EPNS_13CodeGeneratorEiiib+0x966>
 8e2:	48 8d 93 80 00 00 00 	lea    0x80(%rbx),%rdx
 8e9:	48 89 93 70 01 00 00 	mov    %rdx,0x170(%rbx)
 8f0:	48 83 f8 09          	cmp    $0x9,%rax
 8f4:	74 70                	je     966 <_ZN5Xbyak4util10StackFrameC1EPNS_13CodeGeneratorEiiib+0x966>
 8f6:	48 8d 93 88 00 00 00 	lea    0x88(%rbx),%rdx
 8fd:	48 89 93 78 01 00 00 	mov    %rdx,0x178(%rbx)
 904:	48 83 f8 0a          	cmp    $0xa,%rax
 908:	74 5c                	je     966 <_ZN5Xbyak4util10StackFrameC1EPNS_13CodeGeneratorEiiib+0x966>
 90a:	48 8d 93 90 00 00 00 	lea    0x90(%rbx),%rdx
 911:	48 89 93 80 01 00 00 	mov    %rdx,0x180(%rbx)
 918:	48 83 f8 0b          	cmp    $0xb,%rax
 91c:	74 48                	je     966 <_ZN5Xbyak4util10StackFrameC1EPNS_13CodeGeneratorEiiib+0x966>
 91e:	48 8d 93 98 00 00 00 	lea    0x98(%rbx),%rdx
 925:	48 89 93 88 01 00 00 	mov    %rdx,0x188(%rbx)
 92c:	48 83 f8 0c          	cmp    $0xc,%rax
 930:	74 34                	je     966 <_ZN5Xbyak4util10StackFrameC1EPNS_13CodeGeneratorEiiib+0x966>
 932:	48 8d 93 a0 00 00 00 	lea    0xa0(%rbx),%rdx
 939:	48 89 93 90 01 00 00 	mov    %rdx,0x190(%rbx)
 940:	48 83 f8 0d          	cmp    $0xd,%rax
 944:	74 20                	je     966 <_ZN5Xbyak4util10StackFrameC1EPNS_13CodeGeneratorEiiib+0x966>
 946:	48 8d 93 a8 00 00 00 	lea    0xa8(%rbx),%rdx
 94d:	48 89 93 98 01 00 00 	mov    %rdx,0x198(%rbx)
 954:	48 83 f8 0e          	cmp    $0xe,%rax
 958:	74 0c                	je     966 <_ZN5Xbyak4util10StackFrameC1EPNS_13CodeGeneratorEiiib+0x966>
 95a:	48 8b 44 24 18       	mov    0x18(%rsp),%rax
 95f:	48 89 83 a0 01 00 00 	mov    %rax,0x1a0(%rbx)
 966:	48 83 c4 28          	add    $0x28,%rsp
 96a:	5b                   	pop    %rbx
 96b:	5d                   	pop    %rbp
 96c:	41 5c                	pop    %r12
 96e:	41 5d                	pop    %r13
 970:	41 5e                	pop    %r14
 972:	41 5f                	pop    %r15
 974:	c3                   	retq   
 975:	0f 1f 00             	nopl   (%rax)
 978:	41 83 fc 02          	cmp    $0x2,%r12d
 97c:	4d 63 f4             	movslq %r12d,%r14
 97f:	4c 8d 6b 20          	lea    0x20(%rbx),%r13
 983:	0f 9f c0             	setg   %al
 986:	e9 42 fe ff ff       	jmpq   7cd <_ZN5Xbyak4util10StackFrameC1EPNS_13CodeGeneratorEiiib+0x7cd>
 98b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
 990:	44 89 d7             	mov    %r10d,%edi
 993:	b8 0b 00 00 00       	mov    $0xb,%eax
 998:	e9 89 fd ff ff       	jmpq   726 <_ZN5Xbyak4util10StackFrameC1EPNS_13CodeGeneratorEiiib+0x726>
 99d:	0f 1f 00             	nopl   (%rax)
 9a0:	b8 0b 00 00 00       	mov    $0xb,%eax
 9a5:	e9 ac fc ff ff       	jmpq   656 <_ZN5Xbyak4util10StackFrameC1EPNS_13CodeGeneratorEiiib+0x656>
 9aa:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
 9b0:	8b 43 20             	mov    0x20(%rbx),%eax
 9b3:	80 63 24 c0          	andb   $0xc0,0x24(%rbx)
 9b7:	25 00 00 00 80       	and    $0x80000000,%eax
 9bc:	0d 87 00 40 00       	or     $0x400087,%eax
 9c1:	89 43 20             	mov    %eax,0x20(%rbx)
 9c4:	41 83 fc 01          	cmp    $0x1,%r12d
 9c8:	0f 84 1e 01 00 00    	je     aec <_ZN5Xbyak4util10StackFrameC1EPNS_13CodeGeneratorEiiib+0xaec>
 9ce:	8b 43 28             	mov    0x28(%rbx),%eax
 9d1:	80 63 2c c0          	andb   $0xc0,0x2c(%rbx)
 9d5:	25 00 00 00 80       	and    $0x80000000,%eax
 9da:	0d 86 00 40 00       	or     $0x400086,%eax
 9df:	89 43 28             	mov    %eax,0x28(%rbx)
 9e2:	41 83 fc 02          	cmp    $0x2,%r12d
 9e6:	0f 84 14 01 00 00    	je     b00 <_ZN5Xbyak4util10StackFrameC1EPNS_13CodeGeneratorEiiib+0xb00>
 9ec:	8b 43 30             	mov    0x30(%rbx),%eax
 9ef:	80 63 34 c0          	andb   $0xc0,0x34(%rbx)
 9f3:	25 00 00 00 80       	and    $0x80000000,%eax
 9f8:	0d 82 00 40 00       	or     $0x400082,%eax
 9fd:	89 43 30             	mov    %eax,0x30(%rbx)
 a00:	41 83 fc 03          	cmp    $0x3,%r12d
 a04:	0f 84 37 fb ff ff    	je     541 <_ZN5Xbyak4util10StackFrameC1EPNS_13CodeGeneratorEiiib+0x541>
 a0a:	8b 43 38             	mov    0x38(%rbx),%eax
 a0d:	80 63 3c c0          	andb   $0xc0,0x3c(%rbx)
 a11:	bf 04 00 00 00       	mov    $0x4,%edi
 a16:	25 00 00 00 80       	and    $0x80000000,%eax
 a1b:	0d 81 00 40 00       	or     $0x400081,%eax
 a20:	89 43 38             	mov    %eax,0x38(%rbx)
 a23:	e9 28 fb ff ff       	jmpq   550 <_ZN5Xbyak4util10StackFrameC1EPNS_13CodeGeneratorEiiib+0x550>
 a28:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
 a2f:	00 
 a30:	8b 43 20             	mov    0x20(%rbx),%eax
 a33:	80 63 24 c0          	andb   $0xc0,0x24(%rbx)
 a37:	25 00 00 00 80       	and    $0x80000000,%eax
 a3c:	0d 87 00 40 00       	or     $0x400087,%eax
 a41:	89 43 20             	mov    %eax,0x20(%rbx)
 a44:	41 83 fc 01          	cmp    $0x1,%r12d
 a48:	0f 84 a8 00 00 00    	je     af6 <_ZN5Xbyak4util10StackFrameC1EPNS_13CodeGeneratorEiiib+0xaf6>
 a4e:	8b 43 28             	mov    0x28(%rbx),%eax
 a51:	80 63 2c c0          	andb   $0xc0,0x2c(%rbx)
 a55:	25 00 00 00 80       	and    $0x80000000,%eax
 a5a:	0d 86 00 40 00       	or     $0x400086,%eax
 a5f:	89 43 28             	mov    %eax,0x28(%rbx)
 a62:	41 83 fc 02          	cmp    $0x2,%r12d
 a66:	0f 84 9e 00 00 00    	je     b0a <_ZN5Xbyak4util10StackFrameC1EPNS_13CodeGeneratorEiiib+0xb0a>
 a6c:	ba 02 00 00 00       	mov    $0x2,%edx
 a71:	e9 5d fb ff ff       	jmpq   5d3 <_ZN5Xbyak4util10StackFrameC1EPNS_13CodeGeneratorEiiib+0x5d3>
 a76:	41 be 04 00 00 00    	mov    $0x4,%r14d
 a7c:	0f 1f 40 00          	nopl   0x0(%rax)
 a80:	48 8b 3b             	mov    (%rbx),%rdi
 a83:	48 8d 97 08 05 00 00 	lea    0x508(%rdi),%rdx
 a8a:	48 8d b7 50 05 00 00 	lea    0x550(%rdi),%rsi
 a91:	e8 00 00 00 00       	callq  a96 <_ZN5Xbyak4util10StackFrameC1EPNS_13CodeGeneratorEiiib+0xa96>
 a96:	4c 89 b3 28 01 00 00 	mov    %r14,0x128(%rbx)
 a9d:	8b 4b 0c             	mov    0xc(%rbx),%ecx
 aa0:	e9 42 fd ff ff       	jmpq   7e7 <_ZN5Xbyak4util10StackFrameC1EPNS_13CodeGeneratorEiiib+0x7e7>
 aa5:	48 8b 3b             	mov    (%rbx),%rdi
 aa8:	48 8d 97 00 05 00 00 	lea    0x500(%rdi),%rdx
 aaf:	48 8d b7 48 05 00 00 	lea    0x548(%rdi),%rsi
 ab6:	e8 00 00 00 00       	callq  abb <_ZN5Xbyak4util10StackFrameC1EPNS_13CodeGeneratorEiiib+0xabb>
 abb:	80 7b 11 00          	cmpb   $0x0,0x11(%rbx)
 abf:	75 b5                	jne    a76 <_ZN5Xbyak4util10StackFrameC1EPNS_13CodeGeneratorEiiib+0xa76>
 ac1:	48 8d 43 28          	lea    0x28(%rbx),%rax
 ac5:	4c 89 ab b0 00 00 00 	mov    %r13,0xb0(%rbx)
 acc:	8b 4b 0c             	mov    0xc(%rbx),%ecx
 acf:	41 be 04 00 00 00    	mov    $0x4,%r14d
 ad5:	48 c7 83 28 01 00 00 	movq   $0x4,0x128(%rbx)
 adc:	04 00 00 00 
 ae0:	48 89 83 b8 00 00 00 	mov    %rax,0xb8(%rbx)
 ae7:	e9 19 fd ff ff       	jmpq   805 <_ZN5Xbyak4util10StackFrameC1EPNS_13CodeGeneratorEiiib+0x805>
 aec:	bf 01 00 00 00       	mov    $0x1,%edi
 af1:	e9 5a fa ff ff       	jmpq   550 <_ZN5Xbyak4util10StackFrameC1EPNS_13CodeGeneratorEiiib+0x550>
 af6:	bf 01 00 00 00       	mov    $0x1,%edi
 afb:	e9 0d fb ff ff       	jmpq   60d <_ZN5Xbyak4util10StackFrameC1EPNS_13CodeGeneratorEiiib+0x60d>
 b00:	bf 02 00 00 00       	mov    $0x2,%edi
 b05:	e9 46 fa ff ff       	jmpq   550 <_ZN5Xbyak4util10StackFrameC1EPNS_13CodeGeneratorEiiib+0x550>
 b0a:	bf 02 00 00 00       	mov    $0x2,%edi
 b0f:	e9 f9 fa ff ff       	jmpq   60d <_ZN5Xbyak4util10StackFrameC1EPNS_13CodeGeneratorEiiib+0x60d>
 b14:	bf 03 00 00 00       	mov    $0x3,%edi
 b19:	e9 ef fa ff ff       	jmpq   60d <_ZN5Xbyak4util10StackFrameC1EPNS_13CodeGeneratorEiiib+0x60d>
 b1e:	31 c0                	xor    %eax,%eax
 b20:	4c 8d 6b 20          	lea    0x20(%rbx),%r13
 b24:	48 8d 6b 40          	lea    0x40(%rbx),%rbp
 b28:	45 31 f6             	xor    %r14d,%r14d
 b2b:	e9 9d fc ff ff       	jmpq   7cd <_ZN5Xbyak4util10StackFrameC1EPNS_13CodeGeneratorEiiib+0x7cd>
 b30:	48 8b 05 00 00 00 00 	mov    0x0(%rip),%rax        # b37 <_ZN5Xbyak4util10StackFrameC1EPNS_13CodeGeneratorEiiib+0xb37>
 b37:	48 8d 15 00 00 00 00 	lea    0x0(%rip),%rdx        # b3e <_ZN5Xbyak4util10StackFrameC1EPNS_13CodeGeneratorEiiib+0xb3e>
 b3e:	be 01 00 00 00       	mov    $0x1,%esi
 b43:	48 8b 38             	mov    (%rax),%rdi
 b46:	31 c0                	xor    %eax,%eax
 b48:	e8 00 00 00 00       	callq  b4d <_ZN5Xbyak4util10StackFrameC1EPNS_13CodeGeneratorEiiib+0xb4d>
 b4d:	bf 10 00 00 00       	mov    $0x10,%edi
 b52:	e8 00 00 00 00       	callq  b57 <_ZN5Xbyak4util10StackFrameC1EPNS_13CodeGeneratorEiiib+0xb57>
 b57:	48 8b 15 00 00 00 00 	mov    0x0(%rip),%rdx        # b5e <_ZN5Xbyak4util10StackFrameC1EPNS_13CodeGeneratorEiiib+0xb5e>
 b5e:	48 8b 35 00 00 00 00 	mov    0x0(%rip),%rsi        # b65 <_ZN5Xbyak4util10StackFrameC1EPNS_13CodeGeneratorEiiib+0xb65>
 b65:	48 89 c7             	mov    %rax,%rdi
 b68:	48 8b 05 00 00 00 00 	mov    0x0(%rip),%rax        # b6f <_ZN5Xbyak4util10StackFrameC1EPNS_13CodeGeneratorEiiib+0xb6f>
 b6f:	c7 47 08 0d 00 00 00 	movl   $0xd,0x8(%rdi)
 b76:	48 83 c0 10          	add    $0x10,%rax
 b7a:	48 89 07             	mov    %rax,(%rdi)
 b7d:	e8 00 00 00 00       	callq  b82 <_ZN5Xbyak4util10StackFrameC1EPNS_13CodeGeneratorEiiib+0xb82>
 b82:	bf 10 00 00 00       	mov    $0x10,%edi
 b87:	e8 00 00 00 00       	callq  b8c <_ZN5Xbyak4util10StackFrameC1EPNS_13CodeGeneratorEiiib+0xb8c>
 b8c:	48 8b 15 00 00 00 00 	mov    0x0(%rip),%rdx        # b93 <_ZN5Xbyak4util10StackFrameC1EPNS_13CodeGeneratorEiiib+0xb93>
 b93:	48 8b 35 00 00 00 00 	mov    0x0(%rip),%rsi        # b9a <_ZN5Xbyak4util10StackFrameC1EPNS_13CodeGeneratorEiiib+0xb9a>
 b9a:	48 89 c7             	mov    %rax,%rdi
 b9d:	48 8b 05 00 00 00 00 	mov    0x0(%rip),%rax        # ba4 <_ZN5Xbyak4util10StackFrameC1EPNS_13CodeGeneratorEiiib+0xba4>
 ba4:	c7 47 08 19 00 00 00 	movl   $0x19,0x8(%rdi)
 bab:	48 83 c0 10          	add    $0x10,%rax
 baf:	48 89 07             	mov    %rax,(%rdi)
 bb2:	e8 00 00 00 00       	callq  bb7 <_ZN5Xbyak4util10StackFrameC1EPNS_13CodeGeneratorEiiib+0xbb7>
 bb7:	e8 00 00 00 00       	callq  bbc <_ZN5Xbyak4util10StackFrameC1EPNS_13CodeGeneratorEiiib+0xbbc>
 bbc:	e8 00 00 00 00       	callq  bc1 <_ZN5Xbyak4util10StackFrameC1EPNS_13CodeGeneratorEiiib+0xbc1>
 bc1:	bf 10 00 00 00       	mov    $0x10,%edi
 bc6:	e8 00 00 00 00       	callq  bcb <_ZN5Xbyak4util10StackFrameC1EPNS_13CodeGeneratorEiiib+0xbcb>
 bcb:	48 8b 15 00 00 00 00 	mov    0x0(%rip),%rdx        # bd2 <_ZN5Xbyak4util10StackFrameC1EPNS_13CodeGeneratorEiiib+0xbd2>
 bd2:	48 8b 35 00 00 00 00 	mov    0x0(%rip),%rsi        # bd9 <_ZN5Xbyak4util10StackFrameC1EPNS_13CodeGeneratorEiiib+0xbd9>
 bd9:	48 89 c7             	mov    %rax,%rdi
 bdc:	48 8b 05 00 00 00 00 	mov    0x0(%rip),%rax        # be3 <_ZN5Xbyak4util10StackFrameC1EPNS_13CodeGeneratorEiiib+0xbe3>
 be3:	c7 47 08 1a 00 00 00 	movl   $0x1a,0x8(%rdi)
 bea:	48 83 c0 10          	add    $0x10,%rax
 bee:	48 89 07             	mov    %rax,(%rdi)
 bf1:	e8 00 00 00 00       	callq  bf6 <_GLOBAL__sub_I_mcl.cpp.cold+0x8c6>

Disassembly of section .text._ZN4Code7mulPackERKN5Xbyak5Reg64ERKNS0_3XmmEiRKNS0_6RegExpERKNS0_4util4PackE:

0000000000000000 <_ZN4Code7mulPackERKN5Xbyak5Reg64ERKNS0_3XmmEiRKNS0_6RegExpERKNS0_4util4PackE>:
       0:	f3 0f 1e fa          	endbr64 
       4:	41 57                	push   %r15
       6:	49 89 f7             	mov    %rsi,%r15
       9:	41 56                	push   %r14
       b:	41 55                	push   %r13
       d:	41 54                	push   %r12
       f:	49 89 d4             	mov    %rdx,%r12
      12:	55                   	push   %rbp
      13:	48 89 fd             	mov    %rdi,%rbp
      16:	53                   	push   %rbx
      17:	4c 89 c3             	mov    %r8,%rbx
      1a:	48 81 ec f8 01 00 00 	sub    $0x1f8,%rsp
      21:	89 4c 24 08          	mov    %ecx,0x8(%rsp)
      25:	4c 89 4c 24 20       	mov    %r9,0x20(%rsp)
      2a:	66 f7 02 00 04       	testw  $0x400,(%rdx)
      2f:	74 0a                	je     3b <_ZN4Code7mulPackERKN5Xbyak5Reg64ERKNS0_3XmmEiRKNS0_6RegExpERKNS0_4util4PackE+0x3b>
      31:	be 66 00 00 00       	mov    $0x66,%esi
      36:	e8 00 00 00 00       	callq  3b <_ZN4Code7mulPackERKN5Xbyak5Reg64ERKNS0_3XmmEiRKNS0_6RegExpERKNS0_4util4PackE+0x3b>
      3b:	4c 8d ad 08 05 00 00 	lea    0x508(%rbp),%r13
      42:	4c 89 e2             	mov    %r12,%rdx
      45:	48 89 ef             	mov    %rbp,%rdi
      48:	4c 89 ee             	mov    %r13,%rsi
      4b:	e8 00 00 00 00       	callq  50 <_ZN4Code7mulPackERKN5Xbyak5Reg64ERKNS0_3XmmEiRKNS0_6RegExpERKNS0_4util4PackE+0x50>
      50:	48 8b 95 80 00 00 00 	mov    0x80(%rbp),%rdx
      57:	4c 8b 45 70          	mov    0x70(%rbp),%r8
      5b:	4c 39 c2             	cmp    %r8,%rdx
      5e:	0f 82 64 05 00 00    	jb     5c8 <_ZN4Code7mulPackERKN5Xbyak5Reg64ERKNS0_3XmmEiRKNS0_6RegExpERKNS0_4util4PackE+0x5c8>
      64:	83 7d 20 03          	cmpl   $0x3,0x20(%rbp)
      68:	0f 85 f9 1e 00 00    	jne    1f67 <_ZN4Code7mulPackERKN5Xbyak5Reg64ERKNS0_3XmmEiRKNS0_6RegExpERKNS0_4util4PackE+0x1f67>
      6e:	48 8b 7d 68          	mov    0x68(%rbp),%rdi
      72:	4d 01 c0             	add    %r8,%r8
      75:	b8 00 10 00 00       	mov    $0x1000,%eax
      7a:	49 81 f8 00 10 00 00 	cmp    $0x1000,%r8
      81:	4c 0f 42 c0          	cmovb  %rax,%r8
      85:	48 8b 07             	mov    (%rdi),%rax
      88:	4c 89 44 24 10       	mov    %r8,0x10(%rsp)
      8d:	4c 89 c6             	mov    %r8,%rsi
      90:	ff 10                	callq  *(%rax)
      92:	4c 8b 44 24 10       	mov    0x10(%rsp),%r8
      97:	48 85 c0             	test   %rax,%rax
      9a:	49 89 c6             	mov    %rax,%r14
      9d:	0f 84 d8 1e 00 00    	je     1f7b <_ZN4Code7mulPackERKN5Xbyak5Reg64ERKNS0_3XmmEiRKNS0_6RegExpERKNS0_4util4PackE+0x1f7b>
      a3:	31 d2                	xor    %edx,%edx
      a5:	48 83 bd 80 00 00 00 	cmpq   $0x0,0x80(%rbp)
      ac:	00 
      ad:	74 1a                	je     c9 <_ZN4Code7mulPackERKN5Xbyak5Reg64ERKNS0_3XmmEiRKNS0_6RegExpERKNS0_4util4PackE+0xc9>
      af:	90                   	nop
      b0:	48 8b 45 78          	mov    0x78(%rbp),%rax
      b4:	0f b6 04 10          	movzbl (%rax,%rdx,1),%eax
      b8:	41 88 04 16          	mov    %al,(%r14,%rdx,1)
      bc:	48 83 c2 01          	add    $0x1,%rdx
      c0:	48 39 95 80 00 00 00 	cmp    %rdx,0x80(%rbp)
      c7:	77 e7                	ja     b0 <_ZN4Code7mulPackERKN5Xbyak5Reg64ERKNS0_3XmmEiRKNS0_6RegExpERKNS0_4util4PackE+0xb0>
      c9:	48 8b 7d 68          	mov    0x68(%rbp),%rdi
      cd:	48 8b 75 78          	mov    0x78(%rbp),%rsi
      d1:	4c 89 44 24 10       	mov    %r8,0x10(%rsp)
      d6:	48 8b 17             	mov    (%rdi),%rdx
      d9:	ff 52 08             	callq  *0x8(%rdx)
      dc:	4c 8b 44 24 10       	mov    0x10(%rsp),%r8
      e1:	4c 89 75 78          	mov    %r14,0x78(%rbp)
      e5:	48 8b 95 80 00 00 00 	mov    0x80(%rbp),%rdx
      ec:	4c 89 45 70          	mov    %r8,0x70(%rbp)
      f0:	48 8d 4a 01          	lea    0x1(%rdx),%rcx
      f4:	be 7e 00 00 00       	mov    $0x7e,%esi
      f9:	48 89 ef             	mov    %rbp,%rdi
      fc:	48 89 8d 80 00 00 00 	mov    %rcx,0x80(%rbp)
     103:	41 c6 04 16 0f       	movb   $0xf,(%r14,%rdx,1)
     108:	e8 00 00 00 00       	callq  10d <_ZN4Code7mulPackERKN5Xbyak5Reg64ERKNS0_3XmmEiRKNS0_6RegExpERKNS0_4util4PackE+0x10d>
     10d:	45 0f b6 24 24       	movzbl (%r12),%r12d
     112:	0f b6 85 08 05 00 00 	movzbl 0x508(%rbp),%eax
     119:	48 8b 95 80 00 00 00 	mov    0x80(%rbp),%rdx
     120:	4c 8b 45 70          	mov    0x70(%rbp),%r8
     124:	41 c1 e4 03          	shl    $0x3,%r12d
     128:	83 e0 07             	and    $0x7,%eax
     12b:	41 83 e4 38          	and    $0x38,%r12d
     12f:	41 09 c4             	or     %eax,%r12d
     132:	41 83 cc c0          	or     $0xffffffc0,%r12d
     136:	4c 39 c2             	cmp    %r8,%rdx
     139:	0f 82 79 04 00 00    	jb     5b8 <_ZN4Code7mulPackERKN5Xbyak5Reg64ERKNS0_3XmmEiRKNS0_6RegExpERKNS0_4util4PackE+0x5b8>
     13f:	83 7d 20 03          	cmpl   $0x3,0x20(%rbp)
     143:	0f 85 1e 1e 00 00    	jne    1f67 <_ZN4Code7mulPackERKN5Xbyak5Reg64ERKNS0_3XmmEiRKNS0_6RegExpERKNS0_4util4PackE+0x1f67>
     149:	4f 8d 34 00          	lea    (%r8,%r8,1),%r14
     14d:	48 8b 7d 68          	mov    0x68(%rbp),%rdi
     151:	b8 00 10 00 00       	mov    $0x1000,%eax
     156:	49 81 fe 00 10 00 00 	cmp    $0x1000,%r14
     15d:	4c 0f 42 f0          	cmovb  %rax,%r14
     161:	48 8b 07             	mov    (%rdi),%rax
     164:	4c 89 f6             	mov    %r14,%rsi
     167:	ff 10                	callq  *(%rax)
     169:	48 85 c0             	test   %rax,%rax
     16c:	0f 84 09 1e 00 00    	je     1f7b <_ZN4Code7mulPackERKN5Xbyak5Reg64ERKNS0_3XmmEiRKNS0_6RegExpERKNS0_4util4PackE+0x1f7b>
     172:	31 d2                	xor    %edx,%edx
     174:	48 83 bd 80 00 00 00 	cmpq   $0x0,0x80(%rbp)
     17b:	00 
     17c:	74 1a                	je     198 <_ZN4Code7mulPackERKN5Xbyak5Reg64ERKNS0_3XmmEiRKNS0_6RegExpERKNS0_4util4PackE+0x198>
     17e:	66 90                	xchg   %ax,%ax
     180:	48 8b 4d 78          	mov    0x78(%rbp),%rcx
     184:	0f b6 0c 11          	movzbl (%rcx,%rdx,1),%ecx
     188:	88 0c 10             	mov    %cl,(%rax,%rdx,1)
     18b:	48 83 c2 01          	add    $0x1,%rdx
     18f:	48 39 95 80 00 00 00 	cmp    %rdx,0x80(%rbp)
     196:	77 e8                	ja     180 <_ZN4Code7mulPackERKN5Xbyak5Reg64ERKNS0_3XmmEiRKNS0_6RegExpERKNS0_4util4PackE+0x180>
     198:	48 8b 7d 68          	mov    0x68(%rbp),%rdi
     19c:	48 8b 75 78          	mov    0x78(%rbp),%rsi
     1a0:	48 89 44 24 10       	mov    %rax,0x10(%rsp)
     1a5:	48 8b 17             	mov    (%rdi),%rdx
     1a8:	ff 52 08             	callq  *0x8(%rdx)
     1ab:	48 8b 44 24 10       	mov    0x10(%rsp),%rax
     1b0:	4c 89 75 70          	mov    %r14,0x70(%rbp)
     1b4:	48 8b 95 80 00 00 00 	mov    0x80(%rbp),%rdx
     1bb:	48 89 45 78          	mov    %rax,0x78(%rbp)
     1bf:	48 8d 4a 01          	lea    0x1(%rdx),%rcx
     1c3:	48 8d 7c 24 30       	lea    0x30(%rsp),%rdi
     1c8:	4c 89 ee             	mov    %r13,%rsi
     1cb:	4c 63 74 24 08       	movslq 0x8(%rsp),%r14
     1d0:	48 89 8d 80 00 00 00 	mov    %rcx,0x80(%rbp)
     1d7:	44 88 24 10          	mov    %r12b,(%rax,%rdx,1)
     1db:	ba 01 00 00 00       	mov    $0x1,%edx
     1e0:	e8 00 00 00 00       	callq  1e5 <_ZN4Code7mulPackERKN5Xbyak5Reg64ERKNS0_3XmmEiRKNS0_6RegExpERKNS0_4util4PackE+0x1e5>
     1e5:	0f b6 54 24 3c       	movzbl 0x3c(%rsp),%edx
     1ea:	0f b6 74 24 3b       	movzbl 0x3b(%rsp),%esi
     1ef:	66 0f 6f 74 24 30    	movdqa 0x30(%rsp),%xmm6
     1f5:	66 0f 6f 7c 24 40    	movdqa 0x40(%rsp),%xmm7
     1fb:	0f b6 7c 24 38       	movzbl 0x38(%rsp),%edi
     200:	0f b7 44 24 38       	movzwl 0x38(%rsp),%eax
     205:	41 89 d3             	mov    %edx,%r11d
     208:	40 c0 ee 06          	shr    $0x6,%sil
     20c:	c0 ea 03             	shr    $0x3,%dl
     20f:	44 8b 54 24 40       	mov    0x40(%rsp),%r10d
     214:	4c 8b 44 24 48       	mov    0x48(%rsp),%r8
     219:	83 e6 01             	and    $0x1,%esi
     21c:	44 0f b7 64 24 3a    	movzwl 0x3a(%rsp),%r12d
     222:	83 e7 3f             	and    $0x3f,%edi
     225:	66 c1 e8 06          	shr    $0x6,%ax
     229:	83 e2 07             	and    $0x7,%edx
     22c:	0f 29 74 24 50       	movaps %xmm6,0x50(%rsp)
     231:	41 83 e3 07          	and    $0x7,%r11d
     235:	0f 29 7c 24 60       	movaps %xmm7,0x60(%rsp)
     23a:	66 41 81 e4 ff 3f    	and    $0x3fff,%r12w
     240:	75 0e                	jne    250 <_ZN4Code7mulPackERKN5Xbyak5Reg64ERKNS0_3XmmEiRKNS0_6RegExpERKNS0_4util4PackE+0x250>
     242:	45 31 d2             	xor    %r10d,%r10d
     245:	31 d2                	xor    %edx,%edx
     247:	45 31 db             	xor    %r11d,%r11d
     24a:	31 f6                	xor    %esi,%esi
     24c:	31 c0                	xor    %eax,%eax
     24e:	31 ff                	xor    %edi,%edi
     250:	0f b7 c0             	movzwl %ax,%eax
     253:	40 0f b6 ff          	movzbl %dil,%edi
     257:	c1 e2 03             	shl    $0x3,%edx
     25a:	8b 8d e0 03 00 00    	mov    0x3e0(%rbp),%ecx
     260:	c1 e0 06             	shl    $0x6,%eax
     263:	41 c1 e4 10          	shl    $0x10,%r12d
     267:	41 09 d3             	or     %edx,%r11d
     26a:	0f b6 54 24 5c       	movzbl 0x5c(%rsp),%edx
     26f:	09 c7                	or     %eax,%edi
     271:	c1 e6 1e             	shl    $0x1e,%esi
     274:	8b 44 24 58          	mov    0x58(%rsp),%eax
     278:	41 83 e3 3f          	and    $0x3f,%r11d
     27c:	41 09 fc             	or     %edi,%r12d
     27f:	83 e2 c0             	and    $0xffffffc0,%edx
     282:	c1 e1 10             	shl    $0x10,%ecx
     285:	4d 01 f0             	add    %r14,%r8
     288:	44 09 e6             	or     %r12d,%esi
     28b:	25 00 00 00 80       	and    $0x80000000,%eax
     290:	41 09 d3             	or     %edx,%r11d
     293:	44 89 54 24 60       	mov    %r10d,0x60(%rsp)
     298:	81 e6 ff ff ff 7f    	and    $0x7fffffff,%esi
     29e:	44 88 5c 24 5c       	mov    %r11b,0x5c(%rsp)
     2a3:	44 8b 8c 24 f0 00 00 	mov    0xf0(%rsp),%r9d
     2aa:	00 
     2ab:	81 e1 00 00 ff 3f    	and    $0x3fff0000,%ecx
     2b1:	09 c6                	or     %eax,%esi
     2b3:	4c 89 44 24 68       	mov    %r8,0x68(%rsp)
     2b8:	0f b6 85 e4 03 00 00 	movzbl 0x3e4(%rbp),%eax
     2bf:	83 c9 40             	or     $0x40,%ecx
     2c2:	89 74 24 58          	mov    %esi,0x58(%rsp)
     2c6:	66 0f 6f 74 24 50    	movdqa 0x50(%rsp),%xmm6
     2cc:	41 81 e1 00 00 00 80 	and    $0x80000000,%r9d
     2d3:	88 84 24 24 01 00 00 	mov    %al,0x124(%rsp)
     2da:	66 0f 6f 7c 24 60    	movdqa 0x60(%rsp),%xmm7
     2e0:	44 09 c9             	or     %r9d,%ecx
     2e3:	0f 11 b4 24 f8 00 00 	movups %xmm6,0xf8(%rsp)
     2ea:	00 
     2eb:	0f b7 84 24 fa 00 00 	movzwl 0xfa(%rsp),%eax
     2f2:	00 
     2f3:	80 a4 24 f4 00 00 00 	andb   $0xc0,0xf4(%rsp)
     2fa:	c0 
     2fb:	25 ff 3f 00 00       	and    $0x3fff,%eax
     300:	89 8c 24 f0 00 00 00 	mov    %ecx,0xf0(%rsp)
     307:	48 c7 84 24 18 01 00 	movq   $0x0,0x118(%rsp)
     30e:	00 00 00 00 00 
     313:	c7 84 24 20 01 00 00 	movl   $0x0,0x120(%rsp)
     31a:	00 00 00 00 
     31e:	0f 11 bc 24 08 01 00 	movups %xmm7,0x108(%rsp)
     325:	00 
     326:	83 f8 7f             	cmp    $0x7f,%eax
     329:	0f 87 47 1c 00 00    	ja     1f76 <_ZN4Code7mulPackERKN5Xbyak5Reg64ERKNS0_3XmmEiRKNS0_6RegExpERKNS0_4util4PackE+0x1f76>
     32f:	0f b7 94 24 02 01 00 	movzwl 0x102(%rsp),%edx
     336:	00 
     337:	81 e2 ff 3f 00 00    	and    $0x3fff,%edx
     33d:	8d 4a ff             	lea    -0x1(%rdx),%ecx
     340:	83 f9 3f             	cmp    $0x3f,%ecx
     343:	0f 86 e7 1a 00 00    	jbe    1e30 <_ZN4Code7mulPackERKN5Xbyak5Reg64ERKNS0_3XmmEiRKNS0_6RegExpERKNS0_4util4PackE+0x1e30>
     349:	4c 8d a4 24 f0 00 00 	lea    0xf0(%rsp),%r12
     350:	00 
     351:	4c 89 ee             	mov    %r13,%rsi
     354:	48 89 ef             	mov    %rbp,%rdi
     357:	4c 89 e2             	mov    %r12,%rdx
     35a:	e8 00 00 00 00       	callq  35f <_ZN4Code7mulPackERKN5Xbyak5Reg64ERKNS0_3XmmEiRKNS0_6RegExpERKNS0_4util4PackE+0x35f>
     35f:	0f b6 53 0c          	movzbl 0xc(%rbx),%edx
     363:	0f b6 73 0b          	movzbl 0xb(%rbx),%esi
     367:	f3 0f 6f 33          	movdqu (%rbx),%xmm6
     36b:	f3 0f 6f 7b 10       	movdqu 0x10(%rbx),%xmm7
     370:	44 0f b6 43 08       	movzbl 0x8(%rbx),%r8d
     375:	0f b7 43 08          	movzwl 0x8(%rbx),%eax
     379:	41 89 d5             	mov    %edx,%r13d
     37c:	40 c0 ee 06          	shr    $0x6,%sil
     380:	0f b7 7b 0a          	movzwl 0xa(%rbx),%edi
     384:	c0 ea 03             	shr    $0x3,%dl
     387:	44 8b 5b 10          	mov    0x10(%rbx),%r11d
     38b:	0f 29 74 24 70       	movaps %xmm6,0x70(%rsp)
     390:	41 83 e0 3f          	and    $0x3f,%r8d
     394:	66 c1 e8 06          	shr    $0x6,%ax
     398:	83 e6 01             	and    $0x1,%esi
     39b:	41 83 e5 07          	and    $0x7,%r13d
     39f:	0f 29 bc 24 80 00 00 	movaps %xmm7,0x80(%rsp)
     3a6:	00 
     3a7:	83 e2 07             	and    $0x7,%edx
     3aa:	66 81 e7 ff 3f       	and    $0x3fff,%di
     3af:	75 0f                	jne    3c0 <_ZN4Code7mulPackERKN5Xbyak5Reg64ERKNS0_3XmmEiRKNS0_6RegExpERKNS0_4util4PackE+0x3c0>
     3b1:	45 31 db             	xor    %r11d,%r11d
     3b4:	31 d2                	xor    %edx,%edx
     3b6:	45 31 ed             	xor    %r13d,%r13d
     3b9:	31 f6                	xor    %esi,%esi
     3bb:	31 c0                	xor    %eax,%eax
     3bd:	45 31 c0             	xor    %r8d,%r8d
     3c0:	0f b7 c0             	movzwl %ax,%eax
     3c3:	45 0f b6 c0          	movzbl %r8b,%r8d
     3c7:	c1 e2 03             	shl    $0x3,%edx
     3ca:	8b 8d e0 03 00 00    	mov    0x3e0(%rbp),%ecx
     3d0:	c1 e0 06             	shl    $0x6,%eax
     3d3:	c1 e7 10             	shl    $0x10,%edi
     3d6:	41 09 d5             	or     %edx,%r13d
     3d9:	0f b6 54 24 7c       	movzbl 0x7c(%rsp),%edx
     3de:	c1 e6 1e             	shl    $0x1e,%esi
     3e1:	41 09 c0             	or     %eax,%r8d
     3e4:	8b 44 24 78          	mov    0x78(%rsp),%eax
     3e8:	41 83 e5 3f          	and    $0x3f,%r13d
     3ec:	44 09 c7             	or     %r8d,%edi
     3ef:	83 e2 c0             	and    $0xffffffc0,%edx
     3f2:	c1 e1 10             	shl    $0x10,%ecx
     3f5:	44 8b 8c 24 30 01 00 	mov    0x130(%rsp),%r9d
     3fc:	00 
     3fd:	09 fe                	or     %edi,%esi
     3ff:	25 00 00 00 80       	and    $0x80000000,%eax
     404:	41 09 d5             	or     %edx,%r13d
     407:	81 e1 00 00 ff 3f    	and    $0x3fff0000,%ecx
     40d:	81 e6 ff ff ff 7f    	and    $0x7fffffff,%esi
     413:	44 88 6c 24 7c       	mov    %r13b,0x7c(%rsp)
     418:	83 c9 40             	or     $0x40,%ecx
     41b:	41 81 e1 00 00 00 80 	and    $0x80000000,%r9d
     422:	09 c6                	or     %eax,%esi
     424:	44 09 c9             	or     %r9d,%ecx
     427:	44 89 9c 24 80 00 00 	mov    %r11d,0x80(%rsp)
     42e:	00 
     42f:	44 0f b6 95 e4 03 00 	movzbl 0x3e4(%rbp),%r10d
     436:	00 
     437:	66 0f 6f bc 24 80 00 	movdqa 0x80(%rsp),%xmm7
     43e:	00 00 
     440:	89 74 24 78          	mov    %esi,0x78(%rsp)
     444:	66 0f 6f 74 24 70    	movdqa 0x70(%rsp),%xmm6
     44a:	89 8c 24 30 01 00 00 	mov    %ecx,0x130(%rsp)
     451:	80 a4 24 34 01 00 00 	andb   $0xc0,0x134(%rsp)
     458:	c0 
     459:	0f 11 b4 24 38 01 00 	movups %xmm6,0x138(%rsp)
     460:	00 
     461:	0f b7 84 24 3a 01 00 	movzwl 0x13a(%rsp),%eax
     468:	00 
     469:	48 c7 84 24 58 01 00 	movq   $0x0,0x158(%rsp)
     470:	00 00 00 00 00 
     475:	89 c1                	mov    %eax,%ecx
     477:	25 ff 3f 00 00       	and    $0x3fff,%eax
     47c:	c7 84 24 60 01 00 00 	movl   $0x0,0x160(%rsp)
     483:	00 00 00 00 
     487:	44 88 94 24 64 01 00 	mov    %r10b,0x164(%rsp)
     48e:	00 
     48f:	66 81 e1 ff 3f       	and    $0x3fff,%cx
     494:	0f 11 bc 24 48 01 00 	movups %xmm7,0x148(%rsp)
     49b:	00 
     49c:	83 f8 7f             	cmp    $0x7f,%eax
     49f:	0f 87 d1 1a 00 00    	ja     1f76 <_ZN4Code7mulPackERKN5Xbyak5Reg64ERKNS0_3XmmEiRKNS0_6RegExpERKNS0_4util4PackE+0x1f76>
     4a5:	0f b7 94 24 42 01 00 	movzwl 0x142(%rsp),%edx
     4ac:	00 
     4ad:	89 d6                	mov    %edx,%esi
     4af:	81 e2 ff 3f 00 00    	and    $0x3fff,%edx
     4b5:	8d 7a ff             	lea    -0x1(%rdx),%edi
     4b8:	66 81 e6 ff 3f       	and    $0x3fff,%si
     4bd:	83 ff 3f             	cmp    $0x3f,%edi
     4c0:	0f 86 3a 19 00 00    	jbe    1e00 <_ZN4Code7mulPackERKN5Xbyak5Reg64ERKNS0_3XmmEiRKNS0_6RegExpERKNS0_4util4PackE+0x1e00>
     4c6:	48 8b 44 24 20       	mov    0x20(%rsp),%rax
     4cb:	48 83 78 78 00       	cmpq   $0x0,0x78(%rax)
     4d0:	0f 84 87 1a 00 00    	je     1f5d <_ZN4Code7mulPackERKN5Xbyak5Reg64ERKNS0_3XmmEiRKNS0_6RegExpERKNS0_4util4PackE+0x1f5d>
     4d6:	4c 8b 28             	mov    (%rax),%r13
     4d9:	0f b7 95 fa 04 00 00 	movzwl 0x4fa(%rbp),%edx
     4e0:	41 0f b7 45 02       	movzwl 0x2(%r13),%eax
     4e5:	81 e2 ff 3f 00 00    	and    $0x3fff,%edx
     4eb:	25 ff 3f 00 00       	and    $0x3fff,%eax
     4f0:	39 d0                	cmp    %edx,%eax
     4f2:	0f 85 79 1a 00 00    	jne    1f71 <_ZN4Code7mulPackERKN5Xbyak5Reg64ERKNS0_3XmmEiRKNS0_6RegExpERKNS0_4util4PackE+0x1f71>
     4f8:	f3 0f 6f b4 24 38 01 	movdqu 0x138(%rsp),%xmm6
     4ff:	00 00 
     501:	83 f8 40             	cmp    $0x40,%eax
     504:	41 b8 60 22 00 00    	mov    $0x2260,%r8d
     50a:	f3 0f 6f bc 24 48 01 	movdqu 0x148(%rsp),%xmm7
     511:	00 00 
     513:	b8 60 42 00 00       	mov    $0x4260,%eax
     518:	44 0f 44 c0          	cmove  %eax,%r8d
     51c:	0f 29 b4 24 f0 00 00 	movaps %xmm6,0xf0(%rsp)
     523:	00 
     524:	0f 29 bc 24 00 01 00 	movaps %xmm7,0x100(%rsp)
     52b:	00 
     52c:	40 f6 c6 60          	test   $0x60,%sil
     530:	74 09                	je     53b <_ZN4Code7mulPackERKN5Xbyak5Reg64ERKNS0_3XmmEiRKNS0_6RegExpERKNS0_4util4PackE+0x53b>
     532:	66 85 c9             	test   %cx,%cx
     535:	0f 84 85 19 00 00    	je     1ec0 <_ZN4Code7mulPackERKN5Xbyak5Reg64ERKNS0_3XmmEiRKNS0_6RegExpERKNS0_4util4PackE+0x1ec0>
     53b:	48 8d 85 f8 04 00 00 	lea    0x4f8(%rbp),%rax
     542:	48 89 44 24 10       	mov    %rax,0x10(%rsp)
     547:	66 83 fe 20          	cmp    $0x20,%si
     54b:	0f 84 9f 17 00 00    	je     1cf0 <_ZN4Code7mulPackERKN5Xbyak5Reg64ERKNS0_3XmmEiRKNS0_6RegExpERKNS0_4util4PackE+0x1cf0>
     551:	66 83 f9 20          	cmp    $0x20,%cx
     555:	0f 84 95 17 00 00    	je     1cf0 <_ZN4Code7mulPackERKN5Xbyak5Reg64ERKNS0_3XmmEiRKNS0_6RegExpERKNS0_4util4PackE+0x1cf0>
     55b:	0f b6 84 24 f8 00 00 	movzbl 0xf8(%rsp),%eax
     562:	00 
     563:	83 e0 3f             	and    $0x3f,%eax
     566:	89 c1                	mov    %eax,%ecx
     568:	c0 e9 03             	shr    $0x3,%cl
     56b:	83 e1 01             	and    $0x1,%ecx
     56e:	66 41 f7 45 00 00 10 	testw  $0x1000,0x0(%r13)
     575:	0f 84 85 19 00 00    	je     1f00 <_ZN4Code7mulPackERKN5Xbyak5Reg64ERKNS0_3XmmEiRKNS0_6RegExpERKNS0_4util4PackE+0x1f00>
     57b:	45 84 d2             	test   %r10b,%r10b
     57e:	74 58                	je     5d8 <_ZN4Code7mulPackERKN5Xbyak5Reg64ERKNS0_3XmmEiRKNS0_6RegExpERKNS0_4util4PackE+0x5d8>
     580:	bf 10 00 00 00       	mov    $0x10,%edi
     585:	e8 00 00 00 00       	callq  58a <_ZN4Code7mulPackERKN5Xbyak5Reg64ERKNS0_3XmmEiRKNS0_6RegExpERKNS0_4util4PackE+0x58a>
     58a:	48 8b 15 00 00 00 00 	mov    0x0(%rip),%rdx        # 591 <_ZN4Code7mulPackERKN5Xbyak5Reg64ERKNS0_3XmmEiRKNS0_6RegExpERKNS0_4util4PackE+0x591>
     591:	48 8b 35 00 00 00 00 	mov    0x0(%rip),%rsi        # 598 <_ZN4Code7mulPackERKN5Xbyak5Reg64ERKNS0_3XmmEiRKNS0_6RegExpERKNS0_4util4PackE+0x598>
     598:	48 89 c7             	mov    %rax,%rdi
     59b:	48 8b 05 00 00 00 00 	mov    0x0(%rip),%rax        # 5a2 <_ZN4Code7mulPackERKN5Xbyak5Reg64ERKNS0_3XmmEiRKNS0_6RegExpERKNS0_4util4PackE+0x5a2>
     5a2:	c7 47 08 27 00 00 00 	movl   $0x27,0x8(%rdi)
     5a9:	48 83 c0 10          	add    $0x10,%rax
     5ad:	48 89 07             	mov    %rax,(%rdi)
     5b0:	e8 00 00 00 00       	callq  5b5 <_ZN4Code7mulPackERKN5Xbyak5Reg64ERKNS0_3XmmEiRKNS0_6RegExpERKNS0_4util4PackE+0x5b5>
     5b5:	0f 1f 00             	nopl   (%rax)
     5b8:	48 8b 45 78          	mov    0x78(%rbp),%rax
     5bc:	e9 fe fb ff ff       	jmpq   1bf <_ZN4Code7mulPackERKN5Xbyak5Reg64ERKNS0_3XmmEiRKNS0_6RegExpERKNS0_4util4PackE+0x1bf>
     5c1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
     5c8:	4c 8b 75 78          	mov    0x78(%rbp),%r14
     5cc:	e9 1f fb ff ff       	jmpq   f0 <_ZN4Code7mulPackERKN5Xbyak5Reg64ERKNS0_3XmmEiRKNS0_6RegExpERKNS0_4util4PackE+0xf0>
     5d1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
     5d8:	0f b7 b4 24 fa 00 00 	movzwl 0xfa(%rsp),%esi
     5df:	00 
     5e0:	0f b6 c9             	movzbl %cl,%ecx
     5e3:	41 b9 f6 00 00 00    	mov    $0xf6,%r9d
     5e9:	48 89 ef             	mov    %rbp,%rdi
     5ec:	89 f2                	mov    %esi,%edx
     5ee:	66 81 e2 ff 3f       	and    $0x3fff,%dx
     5f3:	66 f7 c6 80 03       	test   $0x380,%si
     5f8:	be 00 00 00 00       	mov    $0x0,%esi
     5fd:	0f 44 d6             	cmove  %esi,%edx
     600:	c0 e8 04             	shr    $0x4,%al
     603:	48 83 ec 08          	sub    $0x8,%rsp
     607:	4c 89 ee             	mov    %r13,%rsi
     60a:	83 e0 01             	and    $0x1,%eax
     60d:	50                   	push   %rax
     60e:	0f b7 c2             	movzwl %dx,%eax
     611:	4c 89 e2             	mov    %r12,%rdx
     614:	50                   	push   %rax
     615:	6a 00                	pushq  $0x0
     617:	6a 00                	pushq  $0x0
     619:	51                   	push   %rcx
     61a:	48 8d 8d f8 04 00 00 	lea    0x4f8(%rbp),%rcx
     621:	e8 00 00 00 00       	callq  626 <_ZN4Code7mulPackERKN5Xbyak5Reg64ERKNS0_3XmmEiRKNS0_6RegExpERKNS0_4util4PackE+0x626>
     626:	48 83 c4 30          	add    $0x30,%rsp
     62a:	41 89 c0             	mov    %eax,%r8d
     62d:	41 0f b6 55 00       	movzbl 0x0(%r13),%edx
     632:	45 31 c9             	xor    %r9d,%r9d
     635:	31 c9                	xor    %ecx,%ecx
     637:	48 89 ef             	mov    %rbp,%rdi
     63a:	48 8d b4 24 30 01 00 	lea    0x130(%rsp),%rsi
     641:	00 
     642:	83 e2 1f             	and    $0x1f,%edx
     645:	e8 00 00 00 00       	callq  64a <_ZN4Code7mulPackERKN5Xbyak5Reg64ERKNS0_3XmmEiRKNS0_6RegExpERKNS0_4util4PackE+0x64a>
     64a:	48 8d bc 24 90 00 00 	lea    0x90(%rsp),%rdi
     651:	00 
     652:	ba 01 00 00 00       	mov    $0x1,%edx
     657:	4c 89 fe             	mov    %r15,%rsi
     65a:	e8 00 00 00 00       	callq  65f <_ZN4Code7mulPackERKN5Xbyak5Reg64ERKNS0_3XmmEiRKNS0_6RegExpERKNS0_4util4PackE+0x65f>
     65f:	0f b6 94 24 9c 00 00 	movzbl 0x9c(%rsp),%edx
     666:	00 
     667:	0f b6 b4 24 9b 00 00 	movzbl 0x9b(%rsp),%esi
     66e:	00 
     66f:	0f b7 84 24 98 00 00 	movzwl 0x98(%rsp),%eax
     676:	00 
     677:	0f b7 bc 24 9a 00 00 	movzwl 0x9a(%rsp),%edi
     67e:	00 
     67f:	66 0f 6f b4 24 90 00 	movdqa 0x90(%rsp),%xmm6
     686:	00 00 
     688:	41 89 d4             	mov    %edx,%r12d
     68b:	40 c0 ee 06          	shr    $0x6,%sil
     68f:	66 0f 6f bc 24 a0 00 	movdqa 0xa0(%rsp),%xmm7
     696:	00 00 
     698:	c0 ea 03             	shr    $0x3,%dl
     69b:	66 c1 e8 06          	shr    $0x6,%ax
     69f:	83 e6 01             	and    $0x1,%esi
     6a2:	41 83 e4 07          	and    $0x7,%r12d
     6a6:	44 0f b6 84 24 98 00 	movzbl 0x98(%rsp),%r8d
     6ad:	00 00 
     6af:	44 8b 9c 24 a0 00 00 	mov    0xa0(%rsp),%r11d
     6b6:	00 
     6b7:	0f 29 b4 24 b0 00 00 	movaps %xmm6,0xb0(%rsp)
     6be:	00 
     6bf:	83 e2 07             	and    $0x7,%edx
     6c2:	4c 8b 8c 24 a8 00 00 	mov    0xa8(%rsp),%r9
     6c9:	00 
     6ca:	0f 29 bc 24 c0 00 00 	movaps %xmm7,0xc0(%rsp)
     6d1:	00 
     6d2:	41 83 e0 3f          	and    $0x3f,%r8d
     6d6:	66 81 e7 ff 3f       	and    $0x3fff,%di
     6db:	75 0f                	jne    6ec <_ZN4Code7mulPackERKN5Xbyak5Reg64ERKNS0_3XmmEiRKNS0_6RegExpERKNS0_4util4PackE+0x6ec>
     6dd:	45 31 db             	xor    %r11d,%r11d
     6e0:	31 d2                	xor    %edx,%edx
     6e2:	45 31 e4             	xor    %r12d,%r12d
     6e5:	31 f6                	xor    %esi,%esi
     6e7:	31 c0                	xor    %eax,%eax
     6e9:	45 31 c0             	xor    %r8d,%r8d
     6ec:	0f b7 c0             	movzwl %ax,%eax
     6ef:	45 0f b6 c0          	movzbl %r8b,%r8d
     6f3:	c1 e2 03             	shl    $0x3,%edx
     6f6:	8b 8d e0 03 00 00    	mov    0x3e0(%rbp),%ecx
     6fc:	c1 e0 06             	shl    $0x6,%eax
     6ff:	c1 e7 10             	shl    $0x10,%edi
     702:	41 09 d4             	or     %edx,%r12d
     705:	4d 01 ce             	add    %r9,%r14
     708:	c1 e6 1e             	shl    $0x1e,%esi
     70b:	41 09 c0             	or     %eax,%r8d
     70e:	8b 84 24 b8 00 00 00 	mov    0xb8(%rsp),%eax
     715:	c1 e1 10             	shl    $0x10,%ecx
     718:	0f b6 94 24 bc 00 00 	movzbl 0xbc(%rsp),%edx
     71f:	00 
     720:	44 09 c7             	or     %r8d,%edi
     723:	41 83 e4 3f          	and    $0x3f,%r12d
     727:	44 8b 94 24 70 01 00 	mov    0x170(%rsp),%r10d
     72e:	00 
     72f:	09 fe                	or     %edi,%esi
     731:	25 00 00 00 80       	and    $0x80000000,%eax
     736:	81 e1 00 00 ff 3f    	and    $0x3fff0000,%ecx
     73c:	44 89 9c 24 c0 00 00 	mov    %r11d,0xc0(%rsp)
     743:	00 
     744:	81 e6 ff ff ff 7f    	and    $0x7fffffff,%esi
     74a:	83 e2 c0             	and    $0xffffffc0,%edx
     74d:	83 c9 40             	or     $0x40,%ecx
     750:	4c 89 b4 24 c8 00 00 	mov    %r14,0xc8(%rsp)
     757:	00 
     758:	09 c6                	or     %eax,%esi
     75a:	41 09 d4             	or     %edx,%r12d
     75d:	44 0f b6 ad e4 03 00 	movzbl 0x3e4(%rbp),%r13d
     764:	00 
     765:	66 0f 6f bc 24 c0 00 	movdqa 0xc0(%rsp),%xmm7
     76c:	00 00 
     76e:	89 b4 24 b8 00 00 00 	mov    %esi,0xb8(%rsp)
     775:	41 81 e2 00 00 00 80 	and    $0x80000000,%r10d
     77c:	44 88 a4 24 bc 00 00 	mov    %r12b,0xbc(%rsp)
     783:	00 
     784:	44 09 d1             	or     %r10d,%ecx
     787:	66 0f 6f b4 24 b0 00 	movdqa 0xb0(%rsp),%xmm6
     78e:	00 00 
     790:	80 a4 24 74 01 00 00 	andb   $0xc0,0x174(%rsp)
     797:	c0 
     798:	0f 11 b4 24 78 01 00 	movups %xmm6,0x178(%rsp)
     79f:	00 
     7a0:	0f b7 84 24 7a 01 00 	movzwl 0x17a(%rsp),%eax
     7a7:	00 
     7a8:	89 8c 24 70 01 00 00 	mov    %ecx,0x170(%rsp)
     7af:	25 ff 3f 00 00       	and    $0x3fff,%eax
     7b4:	44 88 ac 24 a4 01 00 	mov    %r13b,0x1a4(%rsp)
     7bb:	00 
     7bc:	48 c7 84 24 98 01 00 	movq   $0x0,0x198(%rsp)
     7c3:	00 00 00 00 00 
     7c8:	c7 84 24 a0 01 00 00 	movl   $0x0,0x1a0(%rsp)
     7cf:	00 00 00 00 
     7d3:	0f 11 bc 24 88 01 00 	movups %xmm7,0x188(%rsp)
     7da:	00 
     7db:	83 f8 7f             	cmp    $0x7f,%eax
     7de:	0f 87 92 17 00 00    	ja     1f76 <_ZN4Code7mulPackERKN5Xbyak5Reg64ERKNS0_3XmmEiRKNS0_6RegExpERKNS0_4util4PackE+0x1f76>
     7e4:	0f b7 94 24 82 01 00 	movzwl 0x182(%rsp),%edx
     7eb:	00 
     7ec:	81 e2 ff 3f 00 00    	and    $0x3fff,%edx
     7f2:	8d 4a ff             	lea    -0x1(%rdx),%ecx
     7f5:	83 f9 3f             	cmp    $0x3f,%ecx
     7f8:	0f 86 d2 15 00 00    	jbe    1dd0 <_ZN4Code7mulPackERKN5Xbyak5Reg64ERKNS0_3XmmEiRKNS0_6RegExpERKNS0_4util4PackE+0x1dd0>
     7fe:	48 8d 84 24 70 01 00 	lea    0x170(%rsp),%rax
     805:	00 
     806:	48 8d 95 f8 04 00 00 	lea    0x4f8(%rbp),%rdx
     80d:	48 89 ef             	mov    %rbp,%rdi
     810:	48 89 c6             	mov    %rax,%rsi
     813:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
     818:	e8 00 00 00 00       	callq  81d <_ZN4Code7mulPackERKN5Xbyak5Reg64ERKNS0_3XmmEiRKNS0_6RegExpERKNS0_4util4PackE+0x81d>
     81d:	0f b7 85 f8 04 00 00 	movzwl 0x4f8(%rbp),%eax
     824:	89 c2                	mov    %eax,%edx
     826:	66 c1 ea 06          	shr    $0x6,%dx
     82a:	a8 80                	test   $0x80,%al
     82c:	75 0a                	jne    838 <_ZN4Code7mulPackERKN5Xbyak5Reg64ERKNS0_3XmmEiRKNS0_6RegExpERKNS0_4util4PackE+0x838>
     82e:	e8 00 00 00 00       	callq  833 <_ZN4Code7mulPackERKN5Xbyak5Reg64ERKNS0_3XmmEiRKNS0_6RegExpERKNS0_4util4PackE+0x833>
     833:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
     838:	83 e2 01             	and    $0x1,%edx
     83b:	0f 84 1f 16 00 00    	je     1e60 <_ZN4Code7mulPackERKN5Xbyak5Reg64ERKNS0_3XmmEiRKNS0_6RegExpERKNS0_4util4PackE+0x1e60>
     841:	83 bd 28 05 00 00 01 	cmpl   $0x1,0x528(%rbp)
     848:	0f 84 67 17 00 00    	je     1fb5 <_ZN4Code7mulPackERKN5Xbyak5Reg64ERKNS0_3XmmEiRKNS0_6RegExpERKNS0_4util4PackE+0x1fb5>
     84e:	4c 8d b5 f8 04 00 00 	lea    0x4f8(%rbp),%r14
     855:	48 89 ef             	mov    %rbp,%rdi
     858:	4c 89 f2             	mov    %r14,%rdx
     85b:	4c 89 f6             	mov    %r14,%rsi
     85e:	e8 00 00 00 00       	callq  863 <_ZN4Code7mulPackERKN5Xbyak5Reg64ERKNS0_3XmmEiRKNS0_6RegExpERKNS0_4util4PackE+0x863>
     863:	0f b7 b5 fa 04 00 00 	movzwl 0x4fa(%rbp),%esi
     86a:	48 89 ef             	mov    %rbp,%rdi
     86d:	66 81 e6 ff 3f       	and    $0x3fff,%si
     872:	66 c1 ee 03          	shr    $0x3,%si
     876:	83 f6 01             	xor    $0x1,%esi
     879:	83 e6 01             	and    $0x1,%esi
     87c:	83 ce 32             	or     $0x32,%esi
     87f:	e8 00 00 00 00       	callq  884 <_ZN4Code7mulPackERKN5Xbyak5Reg64ERKNS0_3XmmEiRKNS0_6RegExpERKNS0_4util4PackE+0x884>
     884:	45 31 c9             	xor    %r9d,%r9d
     887:	45 31 c0             	xor    %r8d,%r8d
     88a:	31 c9                	xor    %ecx,%ecx
     88c:	0f b6 95 f8 04 00 00 	movzbl 0x4f8(%rbp),%edx
     893:	4c 89 f6             	mov    %r14,%rsi
     896:	48 89 ef             	mov    %rbp,%rdi
     899:	83 e2 1f             	and    $0x1f,%edx
     89c:	e8 00 00 00 00       	callq  8a1 <_ZN4Code7mulPackERKN5Xbyak5Reg64ERKNS0_3XmmEiRKNS0_6RegExpERKNS0_4util4PackE+0x8a1>
     8a1:	4c 8b 6c 24 20       	mov    0x20(%rsp),%r13
     8a6:	49 8b 45 78          	mov    0x78(%r13),%rax
     8aa:	48 83 f8 01          	cmp    $0x1,%rax
     8ae:	0f 86 ab 08 00 00    	jbe    115f <_ZN4Code7mulPackERKN5Xbyak5Reg64ERKNS0_3XmmEiRKNS0_6RegExpERKNS0_4util4PackE+0x115f>
     8b4:	41 bc 01 00 00 00    	mov    $0x1,%r12d
     8ba:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
     8c0:	0f b6 53 0c          	movzbl 0xc(%rbx),%edx
     8c4:	0f b6 73 0b          	movzbl 0xb(%rbx),%esi
     8c8:	4e 8d 3c e5 00 00 00 	lea    0x0(,%r12,8),%r15
     8cf:	00 
     8d0:	0f b6 43 08          	movzbl 0x8(%rbx),%eax
     8d4:	0f b7 7b 08          	movzwl 0x8(%rbx),%edi
     8d8:	0f b7 4b 0a          	movzwl 0xa(%rbx),%ecx
     8dc:	40 c0 ee 06          	shr    $0x6,%sil
     8e0:	41 89 d6             	mov    %edx,%r14d
     8e3:	f3 0f 6f 03          	movdqu (%rbx),%xmm0
     8e7:	c0 ea 03             	shr    $0x3,%dl
     8ea:	f3 0f 6f 4b 10       	movdqu 0x10(%rbx),%xmm1
     8ef:	83 e0 3f             	and    $0x3f,%eax
     8f2:	66 c1 ef 06          	shr    $0x6,%di
     8f6:	83 e6 01             	and    $0x1,%esi
     8f9:	41 83 e6 07          	and    $0x7,%r14d
     8fd:	83 e2 07             	and    $0x7,%edx
     900:	66 81 e1 ff 3f       	and    $0x3fff,%cx
     905:	44 8b 5b 10          	mov    0x10(%rbx),%r11d
     909:	66 89 4c 24 08       	mov    %cx,0x8(%rsp)
     90e:	4c 8b 43 18          	mov    0x18(%rbx),%r8
     912:	0f 29 84 24 d0 00 00 	movaps %xmm0,0xd0(%rsp)
     919:	00 
     91a:	0f 29 8c 24 e0 00 00 	movaps %xmm1,0xe0(%rsp)
     921:	00 
     922:	75 0e                	jne    932 <_ZN4Code7mulPackERKN5Xbyak5Reg64ERKNS0_3XmmEiRKNS0_6RegExpERKNS0_4util4PackE+0x932>
     924:	45 31 db             	xor    %r11d,%r11d
     927:	31 d2                	xor    %edx,%edx
     929:	45 31 f6             	xor    %r14d,%r14d
     92c:	31 f6                	xor    %esi,%esi
     92e:	31 ff                	xor    %edi,%edi
     930:	31 c0                	xor    %eax,%eax
     932:	0f b7 ff             	movzwl %di,%edi
     935:	0f b6 c0             	movzbl %al,%eax
     938:	c1 e2 03             	shl    $0x3,%edx
     93b:	8b 8d e0 03 00 00    	mov    0x3e0(%rbp),%ecx
     941:	c1 e7 06             	shl    $0x6,%edi
     944:	c1 e6 1e             	shl    $0x1e,%esi
     947:	41 09 d6             	or     %edx,%r14d
     94a:	4d 01 f8             	add    %r15,%r8
     94d:	09 f8                	or     %edi,%eax
     94f:	8b 7c 24 08          	mov    0x8(%rsp),%edi
     953:	0f b6 94 24 dc 00 00 	movzbl 0xdc(%rsp),%edx
     95a:	00 
     95b:	41 83 e6 3f          	and    $0x3f,%r14d
     95f:	44 8b 8c 24 b0 01 00 	mov    0x1b0(%rsp),%r9d
     966:	00 
     967:	c1 e1 10             	shl    $0x10,%ecx
     96a:	44 89 9c 24 e0 00 00 	mov    %r11d,0xe0(%rsp)
     971:	00 
     972:	c1 e7 10             	shl    $0x10,%edi
     975:	83 e2 c0             	and    $0xffffffc0,%edx
     978:	81 e1 00 00 ff 3f    	and    $0x3fff0000,%ecx
     97e:	4c 89 84 24 e8 00 00 	mov    %r8,0xe8(%rsp)
     985:	00 
     986:	09 f8                	or     %edi,%eax
     988:	41 09 d6             	or     %edx,%r14d
     98b:	83 c9 40             	or     $0x40,%ecx
     98e:	41 81 e1 00 00 00 80 	and    $0x80000000,%r9d
     995:	09 c6                	or     %eax,%esi
     997:	8b 84 24 d8 00 00 00 	mov    0xd8(%rsp),%eax
     99e:	44 88 b4 24 dc 00 00 	mov    %r14b,0xdc(%rsp)
     9a5:	00 
     9a6:	44 09 c9             	or     %r9d,%ecx
     9a9:	81 e6 ff ff ff 7f    	and    $0x7fffffff,%esi
     9af:	44 0f b6 95 e4 03 00 	movzbl 0x3e4(%rbp),%r10d
     9b6:	00 
     9b7:	66 0f 6f 9c 24 e0 00 	movdqa 0xe0(%rsp),%xmm3
     9be:	00 00 
     9c0:	89 8c 24 b0 01 00 00 	mov    %ecx,0x1b0(%rsp)
     9c7:	25 00 00 00 80       	and    $0x80000000,%eax
     9cc:	80 a4 24 b4 01 00 00 	andb   $0xc0,0x1b4(%rsp)
     9d3:	c0 
     9d4:	09 c6                	or     %eax,%esi
     9d6:	44 88 94 24 e4 01 00 	mov    %r10b,0x1e4(%rsp)
     9dd:	00 
     9de:	89 b4 24 d8 00 00 00 	mov    %esi,0xd8(%rsp)
     9e5:	66 0f 6f 94 24 d0 00 	movdqa 0xd0(%rsp),%xmm2
     9ec:	00 00 
     9ee:	48 c7 84 24 d8 01 00 	movq   $0x0,0x1d8(%rsp)
     9f5:	00 00 00 00 00 
     9fa:	0f 11 94 24 b8 01 00 	movups %xmm2,0x1b8(%rsp)
     a01:	00 
     a02:	0f b7 84 24 ba 01 00 	movzwl 0x1ba(%rsp),%eax
     a09:	00 
     a0a:	c7 84 24 e0 01 00 00 	movl   $0x0,0x1e0(%rsp)
     a11:	00 00 00 00 
     a15:	89 c1                	mov    %eax,%ecx
     a17:	25 ff 3f 00 00       	and    $0x3fff,%eax
     a1c:	0f 11 9c 24 c8 01 00 	movups %xmm3,0x1c8(%rsp)
     a23:	00 
     a24:	66 81 e1 ff 3f       	and    $0x3fff,%cx
     a29:	83 f8 7f             	cmp    $0x7f,%eax
     a2c:	0f 87 44 15 00 00    	ja     1f76 <_ZN4Code7mulPackERKN5Xbyak5Reg64ERKNS0_3XmmEiRKNS0_6RegExpERKNS0_4util4PackE+0x1f76>
     a32:	0f b7 94 24 c2 01 00 	movzwl 0x1c2(%rsp),%edx
     a39:	00 
     a3a:	89 d6                	mov    %edx,%esi
     a3c:	81 e2 ff 3f 00 00    	and    $0x3fff,%edx
     a42:	8d 7a ff             	lea    -0x1(%rdx),%edi
     a45:	66 81 e6 ff 3f       	and    $0x3fff,%si
     a4a:	83 ff 3f             	cmp    $0x3f,%edi
     a4d:	0f 86 ad 0c 00 00    	jbe    1700 <_ZN4Code7mulPackERKN5Xbyak5Reg64ERKNS0_3XmmEiRKNS0_6RegExpERKNS0_4util4PackE+0x1700>
     a53:	4f 8b 74 e5 00       	mov    0x0(%r13,%r12,8),%r14
     a58:	0f b7 95 fa 04 00 00 	movzwl 0x4fa(%rbp),%edx
     a5f:	41 0f b7 46 02       	movzwl 0x2(%r14),%eax
     a64:	81 e2 ff 3f 00 00    	and    $0x3fff,%edx
     a6a:	25 ff 3f 00 00       	and    $0x3fff,%eax
     a6f:	39 d0                	cmp    %edx,%eax
     a71:	0f 85 fa 14 00 00    	jne    1f71 <_ZN4Code7mulPackERKN5Xbyak5Reg64ERKNS0_3XmmEiRKNS0_6RegExpERKNS0_4util4PackE+0x1f71>
     a77:	83 f8 40             	cmp    $0x40,%eax
     a7a:	41 bf 60 42 00 00    	mov    $0x4260,%r15d
     a80:	f3 0f 6f a4 24 b8 01 	movdqu 0x1b8(%rsp),%xmm4
     a87:	00 00 
     a89:	f3 0f 6f ac 24 c8 01 	movdqu 0x1c8(%rsp),%xmm5
     a90:	00 00 
     a92:	41 b8 60 22 00 00    	mov    $0x2260,%r8d
     a98:	45 0f 45 f8          	cmovne %r8d,%r15d
     a9c:	0f 29 a4 24 70 01 00 	movaps %xmm4,0x170(%rsp)
     aa3:	00 
     aa4:	0f 29 ac 24 80 01 00 	movaps %xmm5,0x180(%rsp)
     aab:	00 
     aac:	40 f6 c6 60          	test   $0x60,%sil
     ab0:	74 09                	je     abb <_ZN4Code7mulPackERKN5Xbyak5Reg64ERKNS0_3XmmEiRKNS0_6RegExpERKNS0_4util4PackE+0xabb>
     ab2:	66 85 c9             	test   %cx,%cx
     ab5:	0f 84 3d 11 00 00    	je     1bf8 <_ZN4Code7mulPackERKN5Xbyak5Reg64ERKNS0_3XmmEiRKNS0_6RegExpERKNS0_4util4PackE+0x1bf8>
     abb:	66 83 fe 20          	cmp    $0x20,%si
     abf:	0f 84 3b 0b 00 00    	je     1600 <_ZN4Code7mulPackERKN5Xbyak5Reg64ERKNS0_3XmmEiRKNS0_6RegExpERKNS0_4util4PackE+0x1600>
     ac5:	66 83 f9 20          	cmp    $0x20,%cx
     ac9:	0f 84 31 0b 00 00    	je     1600 <_ZN4Code7mulPackERKN5Xbyak5Reg64ERKNS0_3XmmEiRKNS0_6RegExpERKNS0_4util4PackE+0x1600>
     acf:	0f b6 84 24 78 01 00 	movzbl 0x178(%rsp),%eax
     ad6:	00 
     ad7:	83 e0 3f             	and    $0x3f,%eax
     ada:	89 c1                	mov    %eax,%ecx
     adc:	c0 e9 03             	shr    $0x3,%cl
     adf:	83 e1 01             	and    $0x1,%ecx
     ae2:	66 41 f7 06 00 10    	testw  $0x1000,(%r14)
     ae8:	0f 85 a3 00 00 00    	jne    b91 <_ZN4Code7mulPackERKN5Xbyak5Reg64ERKNS0_3XmmEiRKNS0_6RegExpERKNS0_4util4PackE+0xb91>
     aee:	41 f6 06 10          	testb  $0x10,(%r14)
     af2:	0f 85 90 00 00 00    	jne    b88 <_ZN4Code7mulPackERKN5Xbyak5Reg64ERKNS0_3XmmEiRKNS0_6RegExpERKNS0_4util4PackE+0xb88>
     af8:	41 0f b6 76 04       	movzbl 0x4(%r14),%esi
     afd:	89 f2                	mov    %esi,%edx
     aff:	83 e2 07             	and    $0x7,%edx
     b02:	0f 85 80 00 00 00    	jne    b88 <_ZN4Code7mulPackERKN5Xbyak5Reg64ERKNS0_3XmmEiRKNS0_6RegExpERKNS0_4util4PackE+0xb88>
     b08:	83 e6 38             	and    $0x38,%esi
     b0b:	74 13                	je     b20 <_ZN4Code7mulPackERKN5Xbyak5Reg64ERKNS0_3XmmEiRKNS0_6RegExpERKNS0_4util4PackE+0xb20>
     b0d:	0f 1f 00             	nopl   (%rax)
     b10:	84 d2                	test   %dl,%dl
     b12:	74 74                	je     b88 <_ZN4Code7mulPackERKN5Xbyak5Reg64ERKNS0_3XmmEiRKNS0_6RegExpERKNS0_4util4PackE+0xb88>
     b14:	e8 00 00 00 00       	callq  b19 <_ZN4Code7mulPackERKN5Xbyak5Reg64ERKNS0_3XmmEiRKNS0_6RegExpERKNS0_4util4PackE+0xb19>
     b19:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
     b20:	f6 85 f9 04 00 00 10 	testb  $0x10,0x4f9(%rbp)
     b27:	75 e7                	jne    b10 <_ZN4Code7mulPackERKN5Xbyak5Reg64ERKNS0_3XmmEiRKNS0_6RegExpERKNS0_4util4PackE+0xb10>
     b29:	f6 85 f8 04 00 00 10 	testb  $0x10,0x4f8(%rbp)
     b30:	75 de                	jne    b10 <_ZN4Code7mulPackERKN5Xbyak5Reg64ERKNS0_3XmmEiRKNS0_6RegExpERKNS0_4util4PackE+0xb10>
     b32:	0f b6 b5 fc 04 00 00 	movzbl 0x4fc(%rbp),%esi
     b39:	40 f6 c6 07          	test   $0x7,%sil
     b3d:	75 d1                	jne    b10 <_ZN4Code7mulPackERKN5Xbyak5Reg64ERKNS0_3XmmEiRKNS0_6RegExpERKNS0_4util4PackE+0xb10>
     b3f:	83 e6 38             	and    $0x38,%esi
     b42:	75 cc                	jne    b10 <_ZN4Code7mulPackERKN5Xbyak5Reg64ERKNS0_3XmmEiRKNS0_6RegExpERKNS0_4util4PackE+0xb10>
     b44:	80 bc 24 e4 01 00 00 	cmpb   $0x0,0x1e4(%rsp)
     b4b:	00 
     b4c:	0f 85 ce 13 00 00    	jne    1f20 <_ZN4Code7mulPackERKN5Xbyak5Reg64ERKNS0_3XmmEiRKNS0_6RegExpERKNS0_4util4PackE+0x1f20>
     b52:	84 d2                	test   %dl,%dl
     b54:	75 be                	jne    b14 <_ZN4Code7mulPackERKN5Xbyak5Reg64ERKNS0_3XmmEiRKNS0_6RegExpERKNS0_4util4PackE+0xb14>
     b56:	48 83 ec 08          	sub    $0x8,%rsp
     b5a:	0f b6 c9             	movzbl %cl,%ecx
     b5d:	45 89 f8             	mov    %r15d,%r8d
     b60:	4c 89 f6             	mov    %r14,%rsi
     b63:	51                   	push   %rcx
     b64:	48 8b 4c 24 20       	mov    0x20(%rsp),%rcx
     b69:	41 b9 f6 00 00 00    	mov    $0xf6,%r9d
     b6f:	48 89 ef             	mov    %rbp,%rdi
     b72:	48 8b 54 24 28       	mov    0x28(%rsp),%rdx
     b77:	e8 00 00 00 00       	callq  b7c <_ZN4Code7mulPackERKN5Xbyak5Reg64ERKNS0_3XmmEiRKNS0_6RegExpERKNS0_4util4PackE+0xb7c>
     b7c:	59                   	pop    %rcx
     b7d:	45 31 c0             	xor    %r8d,%r8d
     b80:	5e                   	pop    %rsi
     b81:	eb 6f                	jmp    bf2 <_ZN4Code7mulPackERKN5Xbyak5Reg64ERKNS0_3XmmEiRKNS0_6RegExpERKNS0_4util4PackE+0xbf2>
     b83:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
     b88:	44 0f b6 94 24 e4 01 	movzbl 0x1e4(%rsp),%r10d
     b8f:	00 00 
     b91:	45 84 d2             	test   %r10b,%r10b
     b94:	0f 85 e6 f9 ff ff    	jne    580 <_ZN4Code7mulPackERKN5Xbyak5Reg64ERKNS0_3XmmEiRKNS0_6RegExpERKNS0_4util4PackE+0x580>
     b9a:	0f b6 c9             	movzbl %cl,%ecx
     b9d:	45 89 f8             	mov    %r15d,%r8d
     ba0:	41 b9 f6 00 00 00    	mov    $0xf6,%r9d
     ba6:	48 89 ef             	mov    %rbp,%rdi
     ba9:	0f b7 b4 24 7a 01 00 	movzwl 0x17a(%rsp),%esi
     bb0:	00 
     bb1:	89 f2                	mov    %esi,%edx
     bb3:	66 81 e2 ff 3f       	and    $0x3fff,%dx
     bb8:	66 f7 c6 80 03       	test   $0x380,%si
     bbd:	be 00 00 00 00       	mov    $0x0,%esi
     bc2:	0f 44 d6             	cmove  %esi,%edx
     bc5:	c0 e8 04             	shr    $0x4,%al
     bc8:	48 83 ec 08          	sub    $0x8,%rsp
     bcc:	4c 89 f6             	mov    %r14,%rsi
     bcf:	83 e0 01             	and    $0x1,%eax
     bd2:	50                   	push   %rax
     bd3:	0f b7 c2             	movzwl %dx,%eax
     bd6:	50                   	push   %rax
     bd7:	6a 00                	pushq  $0x0
     bd9:	6a 00                	pushq  $0x0
     bdb:	51                   	push   %rcx
     bdc:	48 8b 4c 24 40       	mov    0x40(%rsp),%rcx
     be1:	48 8b 54 24 48       	mov    0x48(%rsp),%rdx
     be6:	e8 00 00 00 00       	callq  beb <_ZN4Code7mulPackERKN5Xbyak5Reg64ERKNS0_3XmmEiRKNS0_6RegExpERKNS0_4util4PackE+0xbeb>
     beb:	48 83 c4 30          	add    $0x30,%rsp
     bef:	41 89 c0             	mov    %eax,%r8d
     bf2:	41 0f b6 16          	movzbl (%r14),%edx
     bf6:	31 c9                	xor    %ecx,%ecx
     bf8:	45 31 c9             	xor    %r9d,%r9d
     bfb:	48 89 ef             	mov    %rbp,%rdi
     bfe:	48 8d b4 24 b0 01 00 	lea    0x1b0(%rsp),%rsi
     c05:	00 
     c06:	83 e2 1f             	and    $0x1f,%edx
     c09:	e8 00 00 00 00       	callq  c0e <_ZN4Code7mulPackERKN5Xbyak5Reg64ERKNS0_3XmmEiRKNS0_6RegExpERKNS0_4util4PackE+0xc0e>
     c0e:	4d 8b 45 78          	mov    0x78(%r13),%r8
     c12:	49 8d 4c 24 ff       	lea    -0x1(%r12),%rcx
     c17:	49 39 c8             	cmp    %rcx,%r8
     c1a:	0f 86 51 05 00 00    	jbe    1171 <_ZN4Code7mulPackERKN5Xbyak5Reg64ERKNS0_3XmmEiRKNS0_6RegExpERKNS0_4util4PackE+0x1171>
     c20:	4f 8b 74 e5 f8       	mov    -0x8(%r13,%r12,8),%r14
     c25:	41 f6 06 80          	testb  $0x80,(%r14)
     c29:	75 05                	jne    c30 <_ZN4Code7mulPackERKN5Xbyak5Reg64ERKNS0_3XmmEiRKNS0_6RegExpERKNS0_4util4PackE+0xc30>
     c2b:	e8 00 00 00 00       	callq  c30 <_ZN4Code7mulPackERKN5Xbyak5Reg64ERKNS0_3XmmEiRKNS0_6RegExpERKNS0_4util4PackE+0xc30>
     c30:	41 0f b7 46 02       	movzwl 0x2(%r14),%eax
     c35:	89 c2                	mov    %eax,%edx
     c37:	66 81 e2 ff 3f       	and    $0x3fff,%dx
     c3c:	a8 60                	test   $0x60,%al
     c3e:	74 eb                	je     c2b <_ZN4Code7mulPackERKN5Xbyak5Reg64ERKNS0_3XmmEiRKNS0_6RegExpERKNS0_4util4PackE+0xc2b>
     c40:	0f b7 85 f8 04 00 00 	movzwl 0x4f8(%rbp),%eax
     c47:	89 c1                	mov    %eax,%ecx
     c49:	66 c1 e9 06          	shr    $0x6,%cx
     c4d:	a8 80                	test   $0x80,%al
     c4f:	74 17                	je     c68 <_ZN4Code7mulPackERKN5Xbyak5Reg64ERKNS0_3XmmEiRKNS0_6RegExpERKNS0_4util4PackE+0xc68>
     c51:	0f b7 85 fa 04 00 00 	movzwl 0x4fa(%rbp),%eax
     c58:	89 c6                	mov    %eax,%esi
     c5a:	66 81 e6 ff 3f       	and    $0x3fff,%si
     c5f:	a8 60                	test   $0x60,%al
     c61:	74 05                	je     c68 <_ZN4Code7mulPackERKN5Xbyak5Reg64ERKNS0_3XmmEiRKNS0_6RegExpERKNS0_4util4PackE+0xc68>
     c63:	66 39 f2             	cmp    %si,%dx
     c66:	74 05                	je     c6d <_ZN4Code7mulPackERKN5Xbyak5Reg64ERKNS0_3XmmEiRKNS0_6RegExpERKNS0_4util4PackE+0xc6d>
     c68:	83 e1 01             	and    $0x1,%ecx
     c6b:	74 be                	je     c2b <_ZN4Code7mulPackERKN5Xbyak5Reg64ERKNS0_3XmmEiRKNS0_6RegExpERKNS0_4util4PackE+0xc2b>
     c6d:	48 8b 95 80 00 00 00 	mov    0x80(%rbp),%rdx
     c74:	4c 8b 7d 70          	mov    0x70(%rbp),%r15
     c78:	4c 39 fa             	cmp    %r15,%rdx
     c7b:	0f 82 0f 09 00 00    	jb     1590 <_ZN4Code7mulPackERKN5Xbyak5Reg64ERKNS0_3XmmEiRKNS0_6RegExpERKNS0_4util4PackE+0x1590>
     c81:	83 7d 20 03          	cmpl   $0x3,0x20(%rbp)
     c85:	0f 85 dc 12 00 00    	jne    1f67 <_ZN4Code7mulPackERKN5Xbyak5Reg64ERKNS0_3XmmEiRKNS0_6RegExpERKNS0_4util4PackE+0x1f67>
     c8b:	4d 01 ff             	add    %r15,%r15
     c8e:	48 8b 7d 68          	mov    0x68(%rbp),%rdi
     c92:	b8 00 10 00 00       	mov    $0x1000,%eax
     c97:	49 81 ff 00 10 00 00 	cmp    $0x1000,%r15
     c9e:	4c 0f 42 f8          	cmovb  %rax,%r15
     ca2:	48 8b 07             	mov    (%rdi),%rax
     ca5:	4c 89 fe             	mov    %r15,%rsi
     ca8:	ff 10                	callq  *(%rax)
     caa:	48 85 c0             	test   %rax,%rax
     cad:	0f 84 c8 12 00 00    	je     1f7b <_ZN4Code7mulPackERKN5Xbyak5Reg64ERKNS0_3XmmEiRKNS0_6RegExpERKNS0_4util4PackE+0x1f7b>
     cb3:	31 d2                	xor    %edx,%edx
     cb5:	48 83 bd 80 00 00 00 	cmpq   $0x0,0x80(%rbp)
     cbc:	00 
     cbd:	74 19                	je     cd8 <_ZN4Code7mulPackERKN5Xbyak5Reg64ERKNS0_3XmmEiRKNS0_6RegExpERKNS0_4util4PackE+0xcd8>
     cbf:	90                   	nop
     cc0:	48 8b 4d 78          	mov    0x78(%rbp),%rcx
     cc4:	0f b6 0c 11          	movzbl (%rcx,%rdx,1),%ecx
     cc8:	88 0c 10             	mov    %cl,(%rax,%rdx,1)
     ccb:	48 83 c2 01          	add    $0x1,%rdx
     ccf:	48 39 95 80 00 00 00 	cmp    %rdx,0x80(%rbp)
     cd6:	77 e8                	ja     cc0 <_ZN4Code7mulPackERKN5Xbyak5Reg64ERKNS0_3XmmEiRKNS0_6RegExpERKNS0_4util4PackE+0xcc0>
     cd8:	48 8b 7d 68          	mov    0x68(%rbp),%rdi
     cdc:	48 8b 75 78          	mov    0x78(%rbp),%rsi
     ce0:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
     ce5:	48 8b 17             	mov    (%rdi),%rdx
     ce8:	ff 52 08             	callq  *0x8(%rdx)
     ceb:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
     cf0:	4c 89 7d 70          	mov    %r15,0x70(%rbp)
     cf4:	48 8b 95 80 00 00 00 	mov    0x80(%rbp),%rdx
     cfb:	48 89 45 78          	mov    %rax,0x78(%rbp)
     cff:	48 8d 4a 01          	lea    0x1(%rdx),%rcx
     d03:	48 89 8d 80 00 00 00 	mov    %rcx,0x80(%rbp)
     d0a:	c6 04 10 66          	movb   $0x66,(%rax,%rdx,1)
     d0e:	0f b7 95 f8 04 00 00 	movzwl 0x4f8(%rbp),%edx
     d15:	89 d0                	mov    %edx,%eax
     d17:	66 c1 e8 06          	shr    $0x6,%ax
     d1b:	83 e2 40             	and    $0x40,%edx
     d1e:	0f 85 a4 04 00 00    	jne    11c8 <_ZN4Code7mulPackERKN5Xbyak5Reg64ERKNS0_3XmmEiRKNS0_6RegExpERKNS0_4util4PackE+0x11c8>
     d24:	41 0f b7 16          	movzwl (%r14),%edx
     d28:	89 d6                	mov    %edx,%esi
     d2a:	66 c1 ee 06          	shr    $0x6,%si
     d2e:	83 e2 40             	and    $0x40,%edx
     d31:	0f 85 99 0a 00 00    	jne    17d0 <_ZN4Code7mulPackERKN5Xbyak5Reg64ERKNS0_3XmmEiRKNS0_6RegExpERKNS0_4util4PackE+0x17d0>
     d37:	41 0f b7 4e 02       	movzwl 0x2(%r14),%ecx
     d3c:	89 ca                	mov    %ecx,%edx
     d3e:	66 81 e2 ff 3f       	and    $0x3fff,%dx
     d43:	83 e6 02             	and    $0x2,%esi
     d46:	0f 84 ec 0e 00 00    	je     1c38 <_ZN4Code7mulPackERKN5Xbyak5Reg64ERKNS0_3XmmEiRKNS0_6RegExpERKNS0_4util4PackE+0x1c38>
     d4c:	83 e1 40             	and    $0x40,%ecx
     d4f:	66 83 f9 01          	cmp    $0x1,%cx
     d53:	45 19 d2             	sbb    %r10d,%r10d
     d56:	41 83 e2 f8          	and    $0xfffffff8,%r10d
     d5a:	41 83 c2 0c          	add    $0xc,%r10d
     d5e:	66 83 f9 01          	cmp    $0x1,%cx
     d62:	19 ff                	sbb    %edi,%edi
     d64:	f7 d7                	not    %edi
     d66:	83 e7 08             	and    $0x8,%edi
     d69:	0f b6 b5 f8 04 00 00 	movzbl 0x4f8(%rbp),%esi
     d70:	45 0f b6 1e          	movzbl (%r14),%r11d
     d74:	83 e0 02             	and    $0x2,%eax
     d77:	44 0f b7 8d fa 04 00 	movzwl 0x4fa(%rbp),%r9d
     d7e:	00 
     d7f:	83 e6 3f             	and    $0x3f,%esi
     d82:	45 89 d8             	mov    %r11d,%r8d
     d85:	41 89 f7             	mov    %esi,%r15d
     d88:	44 89 c9             	mov    %r9d,%ecx
     d8b:	41 83 e0 3f          	and    $0x3f,%r8d
     d8f:	41 c0 ef 03          	shr    $0x3,%r15b
     d93:	66 81 e1 ff 3f       	and    $0x3fff,%cx
     d98:	41 83 e7 01          	and    $0x1,%r15d
     d9c:	41 83 e3 08          	and    $0x8,%r11d
     da0:	0f 85 a2 0e 00 00    	jne    1c48 <_ZN4Code7mulPackERKN5Xbyak5Reg64ERKNS0_3XmmEiRKNS0_6RegExpERKNS0_4util4PackE+0x1c48>
     da6:	41 09 ff             	or     %edi,%r15d
     da9:	66 85 c0             	test   %ax,%ax
     dac:	74 0a                	je     db8 <_ZN4Code7mulPackERKN5Xbyak5Reg64ERKNS0_3XmmEiRKNS0_6RegExpERKNS0_4util4PackE+0xdb8>
     dae:	41 83 e1 40          	and    $0x40,%r9d
     db2:	0f 85 a6 0e 00 00    	jne    1c5e <_ZN4Code7mulPackERKN5Xbyak5Reg64ERKNS0_3XmmEiRKNS0_6RegExpERKNS0_4util4PackE+0x1c5e>
     db8:	45 84 ff             	test   %r15b,%r15b
     dbb:	75 08                	jne    dc5 <_ZN4Code7mulPackERKN5Xbyak5Reg64ERKNS0_3XmmEiRKNS0_6RegExpERKNS0_4util4PackE+0xdc5>
     dbd:	44 09 c6             	or     %r8d,%esi
     dc0:	83 e6 20             	and    $0x20,%esi
     dc3:	74 04                	je     dc9 <_ZN4Code7mulPackERKN5Xbyak5Reg64ERKNS0_3XmmEiRKNS0_6RegExpERKNS0_4util4PackE+0xdc9>
     dc5:	41 83 cf 40          	or     $0x40,%r15d
     dc9:	f6 c1 10             	test   $0x10,%cl
     dcc:	0f 84 fe 07 00 00    	je     15d0 <_ZN4Code7mulPackERKN5Xbyak5Reg64ERKNS0_3XmmEiRKNS0_6RegExpERKNS0_4util4PackE+0x15d0>
     dd2:	f6 c2 60             	test   $0x60,%dl
     dd5:	0f 85 f5 07 00 00    	jne    15d0 <_ZN4Code7mulPackERKN5Xbyak5Reg64ERKNS0_3XmmEiRKNS0_6RegExpERKNS0_4util4PackE+0x15d0>
     ddb:	48 8b 95 80 00 00 00 	mov    0x80(%rbp),%rdx
     de2:	4c 8b 45 70          	mov    0x70(%rbp),%r8
     de6:	4c 39 c2             	cmp    %r8,%rdx
     de9:	0f 82 07 08 00 00    	jb     15f6 <_ZN4Code7mulPackERKN5Xbyak5Reg64ERKNS0_3XmmEiRKNS0_6RegExpERKNS0_4util4PackE+0x15f6>
     def:	83 7d 20 03          	cmpl   $0x3,0x20(%rbp)
     df3:	0f 85 6e 11 00 00    	jne    1f67 <_ZN4Code7mulPackERKN5Xbyak5Reg64ERKNS0_3XmmEiRKNS0_6RegExpERKNS0_4util4PackE+0x1f67>
     df9:	4d 01 c0             	add    %r8,%r8
     dfc:	48 8b 7d 68          	mov    0x68(%rbp),%rdi
     e00:	b8 00 10 00 00       	mov    $0x1000,%eax
     e05:	49 81 f8 00 10 00 00 	cmp    $0x1000,%r8
     e0c:	4c 0f 42 c0          	cmovb  %rax,%r8
     e10:	48 8b 07             	mov    (%rdi),%rax
     e13:	4c 89 44 24 08       	mov    %r8,0x8(%rsp)
     e18:	4c 89 c6             	mov    %r8,%rsi
     e1b:	ff 10                	callq  *(%rax)
     e1d:	48 85 c0             	test   %rax,%rax
     e20:	0f 84 55 11 00 00    	je     1f7b <_ZN4Code7mulPackERKN5Xbyak5Reg64ERKNS0_3XmmEiRKNS0_6RegExpERKNS0_4util4PackE+0x1f7b>
     e26:	31 d2                	xor    %edx,%edx
     e28:	48 83 bd 80 00 00 00 	cmpq   $0x0,0x80(%rbp)
     e2f:	00 
     e30:	4c 8b 44 24 08       	mov    0x8(%rsp),%r8
     e35:	74 21                	je     e58 <_ZN4Code7mulPackERKN5Xbyak5Reg64ERKNS0_3XmmEiRKNS0_6RegExpERKNS0_4util4PackE+0xe58>
     e37:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
     e3e:	00 00 
     e40:	48 8b 4d 78          	mov    0x78(%rbp),%rcx
     e44:	0f b6 0c 11          	movzbl (%rcx,%rdx,1),%ecx
     e48:	88 0c 10             	mov    %cl,(%rax,%rdx,1)
     e4b:	48 83 c2 01          	add    $0x1,%rdx
     e4f:	48 39 95 80 00 00 00 	cmp    %rdx,0x80(%rbp)
     e56:	77 e8                	ja     e40 <_ZN4Code7mulPackERKN5Xbyak5Reg64ERKNS0_3XmmEiRKNS0_6RegExpERKNS0_4util4PackE+0xe40>
     e58:	48 8b 7d 68          	mov    0x68(%rbp),%rdi
     e5c:	48 8b 75 78          	mov    0x78(%rbp),%rsi
     e60:	48 89 44 24 28       	mov    %rax,0x28(%rsp)
     e65:	4c 89 44 24 08       	mov    %r8,0x8(%rsp)
     e6a:	48 8b 17             	mov    (%rdi),%rdx
     e6d:	ff 52 08             	callq  *0x8(%rdx)
     e70:	48 8b 44 24 28       	mov    0x28(%rsp),%rax
     e75:	4c 8b 44 24 08       	mov    0x8(%rsp),%r8
     e7a:	48 8b 95 80 00 00 00 	mov    0x80(%rbp),%rdx
     e81:	48 89 45 78          	mov    %rax,0x78(%rbp)
     e85:	4c 89 45 70          	mov    %r8,0x70(%rbp)
     e89:	48 8d 4a 01          	lea    0x1(%rdx),%rcx
     e8d:	48 89 8d 80 00 00 00 	mov    %rcx,0x80(%rbp)
     e94:	c6 04 10 66          	movb   $0x66,(%rax,%rdx,1)
     e98:	48 8b 95 80 00 00 00 	mov    0x80(%rbp),%rdx
     e9f:	48 8b 45 70          	mov    0x70(%rbp),%rax
     ea3:	45 84 ff             	test   %r15b,%r15b
     ea6:	0f 85 1c 0a 00 00    	jne    18c8 <_ZN4Code7mulPackERKN5Xbyak5Reg64ERKNS0_3XmmEiRKNS0_6RegExpERKNS0_4util4PackE+0x18c8>
     eac:	48 39 c2             	cmp    %rax,%rdx
     eaf:	0f 82 eb 08 00 00    	jb     17a0 <_ZN4Code7mulPackERKN5Xbyak5Reg64ERKNS0_3XmmEiRKNS0_6RegExpERKNS0_4util4PackE+0x17a0>
     eb5:	83 7d 20 03          	cmpl   $0x3,0x20(%rbp)
     eb9:	0f 85 a8 10 00 00    	jne    1f67 <_ZN4Code7mulPackERKN5Xbyak5Reg64ERKNS0_3XmmEiRKNS0_6RegExpERKNS0_4util4PackE+0x1f67>
     ebf:	4c 8d 3c 00          	lea    (%rax,%rax,1),%r15
     ec3:	48 8b 7d 68          	mov    0x68(%rbp),%rdi
     ec7:	b8 00 10 00 00       	mov    $0x1000,%eax
     ecc:	49 81 ff 00 10 00 00 	cmp    $0x1000,%r15
     ed3:	4c 0f 42 f8          	cmovb  %rax,%r15
     ed7:	48 8b 07             	mov    (%rdi),%rax
     eda:	4c 89 fe             	mov    %r15,%rsi
     edd:	ff 10                	callq  *(%rax)
     edf:	48 85 c0             	test   %rax,%rax
     ee2:	0f 84 93 10 00 00    	je     1f7b <_ZN4Code7mulPackERKN5Xbyak5Reg64ERKNS0_3XmmEiRKNS0_6RegExpERKNS0_4util4PackE+0x1f7b>
     ee8:	31 d2                	xor    %edx,%edx
     eea:	48 83 bd 80 00 00 00 	cmpq   $0x0,0x80(%rbp)
     ef1:	00 
     ef2:	74 1c                	je     f10 <_ZN4Code7mulPackERKN5Xbyak5Reg64ERKNS0_3XmmEiRKNS0_6RegExpERKNS0_4util4PackE+0xf10>
     ef4:	0f 1f 40 00          	nopl   0x0(%rax)
     ef8:	48 8b 4d 78          	mov    0x78(%rbp),%rcx
     efc:	0f b6 0c 11          	movzbl (%rcx,%rdx,1),%ecx
     f00:	88 0c 10             	mov    %cl,(%rax,%rdx,1)
     f03:	48 83 c2 01          	add    $0x1,%rdx
     f07:	48 39 95 80 00 00 00 	cmp    %rdx,0x80(%rbp)
     f0e:	77 e8                	ja     ef8 <_ZN4Code7mulPackERKN5Xbyak5Reg64ERKNS0_3XmmEiRKNS0_6RegExpERKNS0_4util4PackE+0xef8>
     f10:	48 8b 7d 68          	mov    0x68(%rbp),%rdi
     f14:	48 8b 75 78          	mov    0x78(%rbp),%rsi
     f18:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
     f1d:	48 8b 17             	mov    (%rdi),%rdx
     f20:	ff 52 08             	callq  *0x8(%rdx)
     f23:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
     f28:	4c 89 7d 70          	mov    %r15,0x70(%rbp)
     f2c:	48 8b 95 80 00 00 00 	mov    0x80(%rbp),%rdx
     f33:	48 89 45 78          	mov    %rax,0x78(%rbp)
     f37:	48 8d 4a 01          	lea    0x1(%rdx),%rcx
     f3b:	48 89 8d 80 00 00 00 	mov    %rcx,0x80(%rbp)
     f42:	c6 04 10 0f          	movb   $0xf,(%rax,%rdx,1)
     f46:	48 8b 95 80 00 00 00 	mov    0x80(%rbp),%rdx
     f4d:	4c 8b 7d 70          	mov    0x70(%rbp),%r15
     f51:	4c 39 fa             	cmp    %r15,%rdx
     f54:	0f 82 36 08 00 00    	jb     1790 <_ZN4Code7mulPackERKN5Xbyak5Reg64ERKNS0_3XmmEiRKNS0_6RegExpERKNS0_4util4PackE+0x1790>
     f5a:	83 7d 20 03          	cmpl   $0x3,0x20(%rbp)
     f5e:	0f 85 03 10 00 00    	jne    1f67 <_ZN4Code7mulPackERKN5Xbyak5Reg64ERKNS0_3XmmEiRKNS0_6RegExpERKNS0_4util4PackE+0x1f67>
     f64:	4d 01 ff             	add    %r15,%r15
     f67:	48 8b 7d 68          	mov    0x68(%rbp),%rdi
     f6b:	b8 00 10 00 00       	mov    $0x1000,%eax
     f70:	49 81 ff 00 10 00 00 	cmp    $0x1000,%r15
     f77:	4c 0f 42 f8          	cmovb  %rax,%r15
     f7b:	48 8b 07             	mov    (%rdi),%rax
     f7e:	4c 89 fe             	mov    %r15,%rsi
     f81:	ff 10                	callq  *(%rax)
     f83:	48 85 c0             	test   %rax,%rax
     f86:	0f 84 ef 0f 00 00    	je     1f7b <_ZN4Code7mulPackERKN5Xbyak5Reg64ERKNS0_3XmmEiRKNS0_6RegExpERKNS0_4util4PackE+0x1f7b>
     f8c:	31 d2                	xor    %edx,%edx
     f8e:	48 83 bd 80 00 00 00 	cmpq   $0x0,0x80(%rbp)
     f95:	00 
     f96:	74 20                	je     fb8 <_ZN4Code7mulPackERKN5Xbyak5Reg64ERKNS0_3XmmEiRKNS0_6RegExpERKNS0_4util4PackE+0xfb8>
     f98:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
     f9f:	00 
     fa0:	48 8b 4d 78          	mov    0x78(%rbp),%rcx
     fa4:	0f b6 0c 11          	movzbl (%rcx,%rdx,1),%ecx
     fa8:	88 0c 10             	mov    %cl,(%rax,%rdx,1)
     fab:	48 83 c2 01          	add    $0x1,%rdx
     faf:	48 39 95 80 00 00 00 	cmp    %rdx,0x80(%rbp)
     fb6:	77 e8                	ja     fa0 <_ZN4Code7mulPackERKN5Xbyak5Reg64ERKNS0_3XmmEiRKNS0_6RegExpERKNS0_4util4PackE+0xfa0>
     fb8:	48 8b 7d 68          	mov    0x68(%rbp),%rdi
     fbc:	48 8b 75 78          	mov    0x78(%rbp),%rsi
     fc0:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
     fc5:	48 8b 17             	mov    (%rdi),%rdx
     fc8:	ff 52 08             	callq  *0x8(%rdx)
     fcb:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
     fd0:	4c 89 7d 70          	mov    %r15,0x70(%rbp)
     fd4:	48 8b 95 80 00 00 00 	mov    0x80(%rbp),%rdx
     fdb:	48 89 45 78          	mov    %rax,0x78(%rbp)
     fdf:	48 8d 4a 01          	lea    0x1(%rdx),%rcx
     fe3:	48 89 8d 80 00 00 00 	mov    %rcx,0x80(%rbp)
     fea:	c6 04 10 38          	movb   $0x38,(%rax,%rdx,1)
     fee:	48 8b 95 80 00 00 00 	mov    0x80(%rbp),%rdx
     ff5:	4c 8b 7d 70          	mov    0x70(%rbp),%r15
     ff9:	4c 39 fa             	cmp    %r15,%rdx
     ffc:	0f 82 7e 07 00 00    	jb     1780 <_ZN4Code7mulPackERKN5Xbyak5Reg64ERKNS0_3XmmEiRKNS0_6RegExpERKNS0_4util4PackE+0x1780>
    1002:	83 7d 20 03          	cmpl   $0x3,0x20(%rbp)
    1006:	0f 85 5b 0f 00 00    	jne    1f67 <_ZN4Code7mulPackERKN5Xbyak5Reg64ERKNS0_3XmmEiRKNS0_6RegExpERKNS0_4util4PackE+0x1f67>
    100c:	4d 01 ff             	add    %r15,%r15
    100f:	48 8b 7d 68          	mov    0x68(%rbp),%rdi
    1013:	b8 00 10 00 00       	mov    $0x1000,%eax
    1018:	49 81 ff 00 10 00 00 	cmp    $0x1000,%r15
    101f:	4c 0f 42 f8          	cmovb  %rax,%r15
    1023:	48 8b 07             	mov    (%rdi),%rax
    1026:	4c 89 fe             	mov    %r15,%rsi
    1029:	ff 10                	callq  *(%rax)
    102b:	48 85 c0             	test   %rax,%rax
    102e:	0f 84 47 0f 00 00    	je     1f7b <_ZN4Code7mulPackERKN5Xbyak5Reg64ERKNS0_3XmmEiRKNS0_6RegExpERKNS0_4util4PackE+0x1f7b>
    1034:	31 d2                	xor    %edx,%edx
    1036:	48 83 bd 80 00 00 00 	cmpq   $0x0,0x80(%rbp)
    103d:	00 
    103e:	74 18                	je     1058 <_ZN4Code7mulPackERKN5Xbyak5Reg64ERKNS0_3XmmEiRKNS0_6RegExpERKNS0_4util4PackE+0x1058>
    1040:	48 8b 4d 78          	mov    0x78(%rbp),%rcx
    1044:	0f b6 0c 11          	movzbl (%rcx,%rdx,1),%ecx
    1048:	88 0c 10             	mov    %cl,(%rax,%rdx,1)
    104b:	48 83 c2 01          	add    $0x1,%rdx
    104f:	48 39 95 80 00 00 00 	cmp    %rdx,0x80(%rbp)
    1056:	77 e8                	ja     1040 <_ZN4Code7mulPackERKN5Xbyak5Reg64ERKNS0_3XmmEiRKNS0_6RegExpERKNS0_4util4PackE+0x1040>
    1058:	48 8b 7d 68          	mov    0x68(%rbp),%rdi
    105c:	48 8b 75 78          	mov    0x78(%rbp),%rsi
    1060:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
    1065:	48 8b 17             	mov    (%rdi),%rdx
    1068:	ff 52 08             	callq  *0x8(%rdx)
    106b:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
    1070:	4c 89 7d 70          	mov    %r15,0x70(%rbp)
    1074:	48 8b 95 80 00 00 00 	mov    0x80(%rbp),%rdx
    107b:	48 89 45 78          	mov    %rax,0x78(%rbp)
    107f:	48 8d 4a 01          	lea    0x1(%rdx),%rcx
    1083:	48 89 8d 80 00 00 00 	mov    %rcx,0x80(%rbp)
    108a:	c6 04 10 f6          	movb   $0xf6,(%rax,%rdx,1)
    108e:	41 0f b6 06          	movzbl (%r14),%eax
    1092:	0f b6 95 f8 04 00 00 	movzbl 0x4f8(%rbp),%edx
    1099:	4c 8b 7d 70          	mov    0x70(%rbp),%r15
    109d:	c1 e0 03             	shl    $0x3,%eax
    10a0:	83 e2 07             	and    $0x7,%edx
    10a3:	83 e0 38             	and    $0x38,%eax
    10a6:	09 d0                	or     %edx,%eax
    10a8:	48 8b 95 80 00 00 00 	mov    0x80(%rbp),%rdx
    10af:	83 c8 c0             	or     $0xffffffc0,%eax
    10b2:	41 89 c6             	mov    %eax,%r14d
    10b5:	4c 39 fa             	cmp    %r15,%rdx
    10b8:	0f 82 02 07 00 00    	jb     17c0 <_ZN4Code7mulPackERKN5Xbyak5Reg64ERKNS0_3XmmEiRKNS0_6RegExpERKNS0_4util4PackE+0x17c0>
    10be:	83 7d 20 03          	cmpl   $0x3,0x20(%rbp)
    10c2:	0f 85 9f 0e 00 00    	jne    1f67 <_ZN4Code7mulPackERKN5Xbyak5Reg64ERKNS0_3XmmEiRKNS0_6RegExpERKNS0_4util4PackE+0x1f67>
    10c8:	4d 01 ff             	add    %r15,%r15
    10cb:	48 8b 7d 68          	mov    0x68(%rbp),%rdi
    10cf:	b8 00 10 00 00       	mov    $0x1000,%eax
    10d4:	49 81 ff 00 10 00 00 	cmp    $0x1000,%r15
    10db:	4c 0f 42 f8          	cmovb  %rax,%r15
    10df:	48 8b 07             	mov    (%rdi),%rax
    10e2:	4c 89 fe             	mov    %r15,%rsi
    10e5:	ff 10                	callq  *(%rax)
    10e7:	48 85 c0             	test   %rax,%rax
    10ea:	0f 84 8b 0e 00 00    	je     1f7b <_ZN4Code7mulPackERKN5Xbyak5Reg64ERKNS0_3XmmEiRKNS0_6RegExpERKNS0_4util4PackE+0x1f7b>
    10f0:	31 d2                	xor    %edx,%edx
    10f2:	48 83 bd 80 00 00 00 	cmpq   $0x0,0x80(%rbp)
    10f9:	00 
    10fa:	74 1c                	je     1118 <_ZN4Code7mulPackERKN5Xbyak5Reg64ERKNS0_3XmmEiRKNS0_6RegExpERKNS0_4util4PackE+0x1118>
    10fc:	0f 1f 40 00          	nopl   0x0(%rax)
    1100:	48 8b 4d 78          	mov    0x78(%rbp),%rcx
    1104:	0f b6 0c 11          	movzbl (%rcx,%rdx,1),%ecx
    1108:	88 0c 10             	mov    %cl,(%rax,%rdx,1)
    110b:	48 83 c2 01          	add    $0x1,%rdx
    110f:	48 39 95 80 00 00 00 	cmp    %rdx,0x80(%rbp)
    1116:	77 e8                	ja     1100 <_ZN4Code7mulPackERKN5Xbyak5Reg64ERKNS0_3XmmEiRKNS0_6RegExpERKNS0_4util4PackE+0x1100>
    1118:	48 8b 7d 68          	mov    0x68(%rbp),%rdi
    111c:	48 8b 75 78          	mov    0x78(%rbp),%rsi
    1120:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
    1125:	48 8b 17             	mov    (%rdi),%rdx
    1128:	ff 52 08             	callq  *0x8(%rdx)
    112b:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
    1130:	4c 89 7d 70          	mov    %r15,0x70(%rbp)
    1134:	48 8b 95 80 00 00 00 	mov    0x80(%rbp),%rdx
    113b:	48 89 45 78          	mov    %rax,0x78(%rbp)
    113f:	48 8d 4a 01          	lea    0x1(%rdx),%rcx
    1143:	48 89 8d 80 00 00 00 	mov    %rcx,0x80(%rbp)
    114a:	44 88 34 10          	mov    %r14b,(%rax,%rdx,1)
    114e:	49 8b 45 78          	mov    0x78(%r13),%rax
    1152:	49 83 c4 01          	add    $0x1,%r12
    1156:	49 39 c4             	cmp    %rax,%r12
    1159:	0f 82 61 f7 ff ff    	jb     8c0 <_ZN4Code7mulPackERKN5Xbyak5Reg64ERKNS0_3XmmEiRKNS0_6RegExpERKNS0_4util4PackE+0x8c0>
    115f:	48 83 c0 ff          	add    $0xffffffffffffffff,%rax
    1163:	0f 82 c4 0d 00 00    	jb     1f2d <_ZN4Code7mulPackERKN5Xbyak5Reg64ERKNS0_3XmmEiRKNS0_6RegExpERKNS0_4util4PackE+0x1f2d>
    1169:	45 31 c0             	xor    %r8d,%r8d
    116c:	b9 ff ff ff ff       	mov    $0xffffffff,%ecx
    1171:	48 8b 05 00 00 00 00 	mov    0x0(%rip),%rax        # 1178 <_ZN4Code7mulPackERKN5Xbyak5Reg64ERKNS0_3XmmEiRKNS0_6RegExpERKNS0_4util4PackE+0x1178>
    1178:	48 8d 15 00 00 00 00 	lea    0x0(%rip),%rdx        # 117f <_ZN4Code7mulPackERKN5Xbyak5Reg64ERKNS0_3XmmEiRKNS0_6RegExpERKNS0_4util4PackE+0x117f>
    117f:	be 01 00 00 00       	mov    $0x1,%esi
    1184:	48 8b 38             	mov    (%rax),%rdi
    1187:	31 c0                	xor    %eax,%eax
    1189:	e8 00 00 00 00       	callq  118e <_ZN4Code7mulPackERKN5Xbyak5Reg64ERKNS0_3XmmEiRKNS0_6RegExpERKNS0_4util4PackE+0x118e>
    118e:	bf 10 00 00 00       	mov    $0x10,%edi
    1193:	e8 00 00 00 00       	callq  1198 <_ZN4Code7mulPackERKN5Xbyak5Reg64ERKNS0_3XmmEiRKNS0_6RegExpERKNS0_4util4PackE+0x1198>
    1198:	48 8b 15 00 00 00 00 	mov    0x0(%rip),%rdx        # 119f <_ZN4Code7mulPackERKN5Xbyak5Reg64ERKNS0_3XmmEiRKNS0_6RegExpERKNS0_4util4PackE+0x119f>
    119f:	48 8b 35 00 00 00 00 	mov    0x0(%rip),%rsi        # 11a6 <_ZN4Code7mulPackERKN5Xbyak5Reg64ERKNS0_3XmmEiRKNS0_6RegExpERKNS0_4util4PackE+0x11a6>
    11a6:	48 89 c7             	mov    %rax,%rdi
    11a9:	48 8b 05 00 00 00 00 	mov    0x0(%rip),%rax        # 11b0 <_ZN4Code7mulPackERKN5Xbyak5Reg64ERKNS0_3XmmEiRKNS0_6RegExpERKNS0_4util4PackE+0x11b0>
    11b0:	c7 47 08 0d 00 00 00 	movl   $0xd,0x8(%rdi)
    11b7:	48 83 c0 10          	add    $0x10,%rax
    11bb:	48 89 07             	mov    %rax,(%rdi)
    11be:	e8 00 00 00 00       	callq  11c3 <_ZN4Code7mulPackERKN5Xbyak5Reg64ERKNS0_3XmmEiRKNS0_6RegExpERKNS0_4util4PackE+0x11c3>
    11c3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    11c8:	8b 95 28 05 00 00    	mov    0x528(%rbp),%edx
    11ce:	83 fa 01             	cmp    $0x1,%edx
    11d1:	0f 84 de 0d 00 00    	je     1fb5 <_ZN4Code7mulPackERKN5Xbyak5Reg64ERKNS0_3XmmEiRKNS0_6RegExpERKNS0_4util4PackE+0x1fb5>
    11d7:	41 0f b7 06          	movzwl (%r14),%eax
    11db:	89 c1                	mov    %eax,%ecx
    11dd:	66 c1 e9 06          	shr    $0x6,%cx
    11e1:	a8 40                	test   $0x40,%al
    11e3:	0f 85 83 0d 00 00    	jne    1f6c <_ZN4Code7mulPackERKN5Xbyak5Reg64ERKNS0_3XmmEiRKNS0_6RegExpERKNS0_4util4PackE+0x1f6c>
    11e9:	0f b7 85 02 05 00 00 	movzwl 0x502(%rbp),%eax
    11f0:	66 25 ff 3f          	and    $0x3fff,%ax
    11f4:	66 83 f8 20          	cmp    $0x20,%ax
    11f8:	0f 84 32 09 00 00    	je     1b30 <_ZN4Code7mulPackERKN5Xbyak5Reg64ERKNS0_3XmmEiRKNS0_6RegExpERKNS0_4util4PackE+0x1b30>
    11fe:	0f b7 85 0a 05 00 00 	movzwl 0x50a(%rbp),%eax
    1205:	66 25 ff 3f          	and    $0x3fff,%ax
    1209:	66 83 f8 20          	cmp    $0x20,%ax
    120d:	0f 84 1d 09 00 00    	je     1b30 <_ZN4Code7mulPackERKN5Xbyak5Reg64ERKNS0_3XmmEiRKNS0_6RegExpERKNS0_4util4PackE+0x1b30>
    1213:	45 31 ff             	xor    %r15d,%r15d
    1216:	85 d2                	test   %edx,%edx
    1218:	75 4a                	jne    1264 <_ZN4Code7mulPackERKN5Xbyak5Reg64ERKNS0_3XmmEiRKNS0_6RegExpERKNS0_4util4PackE+0x1264>
    121a:	0f b6 85 00 05 00 00 	movzbl 0x500(%rbp),%eax
    1221:	0f b6 95 08 05 00 00 	movzbl 0x508(%rbp),%edx
    1228:	83 e0 3f             	and    $0x3f,%eax
    122b:	83 e2 3f             	and    $0x3f,%edx
    122e:	f6 85 0a 05 00 00 60 	testb  $0x60,0x50a(%rbp)
    1235:	74 15                	je     124c <_ZN4Code7mulPackERKN5Xbyak5Reg64ERKNS0_3XmmEiRKNS0_6RegExpERKNS0_4util4PackE+0x124c>
    1237:	66 f7 85 02 05 00 00 	testw  $0x3fff,0x502(%rbp)
    123e:	ff 3f 
    1240:	75 0a                	jne    124c <_ZN4Code7mulPackERKN5Xbyak5Reg64ERKNS0_3XmmEiRKNS0_6RegExpERKNS0_4util4PackE+0x124c>
    1242:	83 bd 10 05 00 00 02 	cmpl   $0x2,0x510(%rbp)
    1249:	0f 44 c2             	cmove  %edx,%eax
    124c:	83 e0 08             	and    $0x8,%eax
    124f:	83 e2 08             	and    $0x8,%edx
    1252:	0f 85 88 0a 00 00    	jne    1ce0 <_ZN4Code7mulPackERKN5Xbyak5Reg64ERKNS0_3XmmEiRKNS0_6RegExpERKNS0_4util4PackE+0x1ce0>
    1258:	3c 01                	cmp    $0x1,%al
    125a:	45 19 ff             	sbb    %r15d,%r15d
    125d:	41 f7 d7             	not    %r15d
    1260:	41 83 e7 41          	and    $0x41,%r15d
    1264:	41 0f b6 06          	movzbl (%r14),%eax
    1268:	41 0f b7 76 02       	movzwl 0x2(%r14),%esi
    126d:	89 c7                	mov    %eax,%edi
    126f:	89 f2                	mov    %esi,%edx
    1271:	83 e0 08             	and    $0x8,%eax
    1274:	66 81 e2 ff 3f       	and    $0x3fff,%dx
    1279:	83 e7 3f             	and    $0x3f,%edi
    127c:	83 e1 02             	and    $0x2,%ecx
    127f:	0f 84 03 06 00 00    	je     1888 <_ZN4Code7mulPackERKN5Xbyak5Reg64ERKNS0_3XmmEiRKNS0_6RegExpERKNS0_4util4PackE+0x1888>
    1285:	83 e6 40             	and    $0x40,%esi
    1288:	0f 84 fa 05 00 00    	je     1888 <_ZN4Code7mulPackERKN5Xbyak5Reg64ERKNS0_3XmmEiRKNS0_6RegExpERKNS0_4util4PackE+0x1888>
    128e:	3c 01                	cmp    $0x1,%al
    1290:	19 c0                	sbb    %eax,%eax
    1292:	83 e0 fc             	and    $0xfffffffc,%eax
    1295:	83 c0 4c             	add    $0x4c,%eax
    1298:	41 09 c7             	or     %eax,%r15d
    129b:	0f b7 85 fa 04 00 00 	movzwl 0x4fa(%rbp),%eax
    12a2:	89 c1                	mov    %eax,%ecx
    12a4:	66 81 e1 ff 3f       	and    $0x3fff,%cx
    12a9:	a8 10                	test   $0x10,%al
    12ab:	0f 84 ef 02 00 00    	je     15a0 <_ZN4Code7mulPackERKN5Xbyak5Reg64ERKNS0_3XmmEiRKNS0_6RegExpERKNS0_4util4PackE+0x15a0>
    12b1:	f6 c2 60             	test   $0x60,%dl
    12b4:	0f 85 e6 02 00 00    	jne    15a0 <_ZN4Code7mulPackERKN5Xbyak5Reg64ERKNS0_3XmmEiRKNS0_6RegExpERKNS0_4util4PackE+0x15a0>
    12ba:	48 8b 95 80 00 00 00 	mov    0x80(%rbp),%rdx
    12c1:	4c 8b 45 70          	mov    0x70(%rbp),%r8
    12c5:	4c 39 c2             	cmp    %r8,%rdx
    12c8:	0f 82 f8 02 00 00    	jb     15c6 <_ZN4Code7mulPackERKN5Xbyak5Reg64ERKNS0_3XmmEiRKNS0_6RegExpERKNS0_4util4PackE+0x15c6>
    12ce:	83 7d 20 03          	cmpl   $0x3,0x20(%rbp)
    12d2:	0f 85 8f 0c 00 00    	jne    1f67 <_ZN4Code7mulPackERKN5Xbyak5Reg64ERKNS0_3XmmEiRKNS0_6RegExpERKNS0_4util4PackE+0x1f67>
    12d8:	4d 01 c0             	add    %r8,%r8
    12db:	48 8b 7d 68          	mov    0x68(%rbp),%rdi
    12df:	b8 00 10 00 00       	mov    $0x1000,%eax
    12e4:	49 81 f8 00 10 00 00 	cmp    $0x1000,%r8
    12eb:	4c 0f 42 c0          	cmovb  %rax,%r8
    12ef:	48 8b 07             	mov    (%rdi),%rax
    12f2:	4c 89 44 24 08       	mov    %r8,0x8(%rsp)
    12f7:	4c 89 c6             	mov    %r8,%rsi
    12fa:	ff 10                	callq  *(%rax)
    12fc:	48 85 c0             	test   %rax,%rax
    12ff:	0f 84 76 0c 00 00    	je     1f7b <_ZN4Code7mulPackERKN5Xbyak5Reg64ERKNS0_3XmmEiRKNS0_6RegExpERKNS0_4util4PackE+0x1f7b>
    1305:	31 d2                	xor    %edx,%edx
    1307:	48 83 bd 80 00 00 00 	cmpq   $0x0,0x80(%rbp)
    130e:	00 
    130f:	4c 8b 44 24 08       	mov    0x8(%rsp),%r8
    1314:	74 22                	je     1338 <_ZN4Code7mulPackERKN5Xbyak5Reg64ERKNS0_3XmmEiRKNS0_6RegExpERKNS0_4util4PackE+0x1338>
    1316:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    131d:	00 00 00 
    1320:	48 8b 4d 78          	mov    0x78(%rbp),%rcx
    1324:	0f b6 0c 11          	movzbl (%rcx,%rdx,1),%ecx
    1328:	88 0c 10             	mov    %cl,(%rax,%rdx,1)
    132b:	48 83 c2 01          	add    $0x1,%rdx
    132f:	48 39 95 80 00 00 00 	cmp    %rdx,0x80(%rbp)
    1336:	77 e8                	ja     1320 <_ZN4Code7mulPackERKN5Xbyak5Reg64ERKNS0_3XmmEiRKNS0_6RegExpERKNS0_4util4PackE+0x1320>
    1338:	48 8b 7d 68          	mov    0x68(%rbp),%rdi
    133c:	48 8b 75 78          	mov    0x78(%rbp),%rsi
    1340:	48 89 44 24 28       	mov    %rax,0x28(%rsp)
    1345:	4c 89 44 24 08       	mov    %r8,0x8(%rsp)
    134a:	48 8b 17             	mov    (%rdi),%rdx
    134d:	ff 52 08             	callq  *0x8(%rdx)
    1350:	48 8b 44 24 28       	mov    0x28(%rsp),%rax
    1355:	4c 8b 44 24 08       	mov    0x8(%rsp),%r8
    135a:	48 8b 95 80 00 00 00 	mov    0x80(%rbp),%rdx
    1361:	48 89 45 78          	mov    %rax,0x78(%rbp)
    1365:	4c 89 45 70          	mov    %r8,0x70(%rbp)
    1369:	48 8d 4a 01          	lea    0x1(%rdx),%rcx
    136d:	48 89 8d 80 00 00 00 	mov    %rcx,0x80(%rbp)
    1374:	c6 04 10 66          	movb   $0x66,(%rax,%rdx,1)
    1378:	48 8b 95 80 00 00 00 	mov    0x80(%rbp),%rdx
    137f:	48 8b 45 70          	mov    0x70(%rbp),%rax
    1383:	45 84 ff             	test   %r15b,%r15b
    1386:	0f 85 04 06 00 00    	jne    1990 <_ZN4Code7mulPackERKN5Xbyak5Reg64ERKNS0_3XmmEiRKNS0_6RegExpERKNS0_4util4PackE+0x1990>
    138c:	48 39 d0             	cmp    %rdx,%rax
    138f:	0f 87 db 03 00 00    	ja     1770 <_ZN4Code7mulPackERKN5Xbyak5Reg64ERKNS0_3XmmEiRKNS0_6RegExpERKNS0_4util4PackE+0x1770>
    1395:	83 7d 20 03          	cmpl   $0x3,0x20(%rbp)
    1399:	0f 85 c8 0b 00 00    	jne    1f67 <_ZN4Code7mulPackERKN5Xbyak5Reg64ERKNS0_3XmmEiRKNS0_6RegExpERKNS0_4util4PackE+0x1f67>
    139f:	4c 8d 3c 00          	lea    (%rax,%rax,1),%r15
    13a3:	48 8b 7d 68          	mov    0x68(%rbp),%rdi
    13a7:	b8 00 10 00 00       	mov    $0x1000,%eax
    13ac:	49 81 ff 00 10 00 00 	cmp    $0x1000,%r15
    13b3:	4c 0f 42 f8          	cmovb  %rax,%r15
    13b7:	48 8b 07             	mov    (%rdi),%rax
    13ba:	4c 89 fe             	mov    %r15,%rsi
    13bd:	ff 10                	callq  *(%rax)
    13bf:	48 85 c0             	test   %rax,%rax
    13c2:	0f 84 b3 0b 00 00    	je     1f7b <_ZN4Code7mulPackERKN5Xbyak5Reg64ERKNS0_3XmmEiRKNS0_6RegExpERKNS0_4util4PackE+0x1f7b>
    13c8:	31 d2                	xor    %edx,%edx
    13ca:	48 83 bd 80 00 00 00 	cmpq   $0x0,0x80(%rbp)
    13d1:	00 
    13d2:	74 1c                	je     13f0 <_ZN4Code7mulPackERKN5Xbyak5Reg64ERKNS0_3XmmEiRKNS0_6RegExpERKNS0_4util4PackE+0x13f0>
    13d4:	0f 1f 40 00          	nopl   0x0(%rax)
    13d8:	48 8b 4d 78          	mov    0x78(%rbp),%rcx
    13dc:	0f b6 0c 11          	movzbl (%rcx,%rdx,1),%ecx
    13e0:	88 0c 10             	mov    %cl,(%rax,%rdx,1)
    13e3:	48 83 c2 01          	add    $0x1,%rdx
    13e7:	48 39 95 80 00 00 00 	cmp    %rdx,0x80(%rbp)
    13ee:	77 e8                	ja     13d8 <_ZN4Code7mulPackERKN5Xbyak5Reg64ERKNS0_3XmmEiRKNS0_6RegExpERKNS0_4util4PackE+0x13d8>
    13f0:	48 8b 7d 68          	mov    0x68(%rbp),%rdi
    13f4:	48 8b 75 78          	mov    0x78(%rbp),%rsi
    13f8:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
    13fd:	48 8b 17             	mov    (%rdi),%rdx
    1400:	ff 52 08             	callq  *0x8(%rdx)
    1403:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
    1408:	4c 89 7d 70          	mov    %r15,0x70(%rbp)
    140c:	48 8b 95 80 00 00 00 	mov    0x80(%rbp),%rdx
    1413:	48 89 45 78          	mov    %rax,0x78(%rbp)
    1417:	48 8d 4a 01          	lea    0x1(%rdx),%rcx
    141b:	48 89 8d 80 00 00 00 	mov    %rcx,0x80(%rbp)
    1422:	c6 04 10 0f          	movb   $0xf,(%rax,%rdx,1)
    1426:	48 8b 95 80 00 00 00 	mov    0x80(%rbp),%rdx
    142d:	4c 8b 7d 70          	mov    0x70(%rbp),%r15
    1431:	4c 39 fa             	cmp    %r15,%rdx
    1434:	0f 82 26 03 00 00    	jb     1760 <_ZN4Code7mulPackERKN5Xbyak5Reg64ERKNS0_3XmmEiRKNS0_6RegExpERKNS0_4util4PackE+0x1760>
    143a:	83 7d 20 03          	cmpl   $0x3,0x20(%rbp)
    143e:	0f 85 23 0b 00 00    	jne    1f67 <_ZN4Code7mulPackERKN5Xbyak5Reg64ERKNS0_3XmmEiRKNS0_6RegExpERKNS0_4util4PackE+0x1f67>
    1444:	4d 01 ff             	add    %r15,%r15
    1447:	48 8b 7d 68          	mov    0x68(%rbp),%rdi
    144b:	b8 00 10 00 00       	mov    $0x1000,%eax
    1450:	49 81 ff 00 10 00 00 	cmp    $0x1000,%r15
    1457:	4c 0f 42 f8          	cmovb  %rax,%r15
    145b:	48 8b 07             	mov    (%rdi),%rax
    145e:	4c 89 fe             	mov    %r15,%rsi
    1461:	ff 10                	callq  *(%rax)
    1463:	48 85 c0             	test   %rax,%rax
    1466:	0f 84 0f 0b 00 00    	je     1f7b <_ZN4Code7mulPackERKN5Xbyak5Reg64ERKNS0_3XmmEiRKNS0_6RegExpERKNS0_4util4PackE+0x1f7b>
    146c:	31 d2                	xor    %edx,%edx
    146e:	48 83 bd 80 00 00 00 	cmpq   $0x0,0x80(%rbp)
    1475:	00 
    1476:	74 20                	je     1498 <_ZN4Code7mulPackERKN5Xbyak5Reg64ERKNS0_3XmmEiRKNS0_6RegExpERKNS0_4util4PackE+0x1498>
    1478:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    147f:	00 
    1480:	48 8b 4d 78          	mov    0x78(%rbp),%rcx
    1484:	0f b6 0c 11          	movzbl (%rcx,%rdx,1),%ecx
    1488:	88 0c 10             	mov    %cl,(%rax,%rdx,1)
    148b:	48 83 c2 01          	add    $0x1,%rdx
    148f:	48 39 95 80 00 00 00 	cmp    %rdx,0x80(%rbp)
    1496:	77 e8                	ja     1480 <_ZN4Code7mulPackERKN5Xbyak5Reg64ERKNS0_3XmmEiRKNS0_6RegExpERKNS0_4util4PackE+0x1480>
    1498:	48 8b 7d 68          	mov    0x68(%rbp),%rdi
    149c:	48 8b 75 78          	mov    0x78(%rbp),%rsi
    14a0:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
    14a5:	48 8b 17             	mov    (%rdi),%rdx
    14a8:	ff 52 08             	callq  *0x8(%rdx)
    14ab:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
    14b0:	4c 89 7d 70          	mov    %r15,0x70(%rbp)
    14b4:	48 8b 95 80 00 00 00 	mov    0x80(%rbp),%rdx
    14bb:	48 89 45 78          	mov    %rax,0x78(%rbp)
    14bf:	48 8d 4a 01          	lea    0x1(%rdx),%rcx
    14c3:	48 89 8d 80 00 00 00 	mov    %rcx,0x80(%rbp)
    14ca:	c6 04 10 38          	movb   $0x38,(%rax,%rdx,1)
    14ce:	48 8b 95 80 00 00 00 	mov    0x80(%rbp),%rdx
    14d5:	4c 8b 7d 70          	mov    0x70(%rbp),%r15
    14d9:	4c 39 fa             	cmp    %r15,%rdx
    14dc:	0f 82 ce 02 00 00    	jb     17b0 <_ZN4Code7mulPackERKN5Xbyak5Reg64ERKNS0_3XmmEiRKNS0_6RegExpERKNS0_4util4PackE+0x17b0>
    14e2:	83 7d 20 03          	cmpl   $0x3,0x20(%rbp)
    14e6:	0f 85 7b 0a 00 00    	jne    1f67 <_ZN4Code7mulPackERKN5Xbyak5Reg64ERKNS0_3XmmEiRKNS0_6RegExpERKNS0_4util4PackE+0x1f67>
    14ec:	4d 01 ff             	add    %r15,%r15
    14ef:	48 8b 7d 68          	mov    0x68(%rbp),%rdi
    14f3:	b8 00 10 00 00       	mov    $0x1000,%eax
    14f8:	49 81 ff 00 10 00 00 	cmp    $0x1000,%r15
    14ff:	4c 0f 42 f8          	cmovb  %rax,%r15
    1503:	48 8b 07             	mov    (%rdi),%rax
    1506:	4c 89 fe             	mov    %r15,%rsi
    1509:	ff 10                	callq  *(%rax)
    150b:	48 85 c0             	test   %rax,%rax
    150e:	0f 84 67 0a 00 00    	je     1f7b <_ZN4Code7mulPackERKN5Xbyak5Reg64ERKNS0_3XmmEiRKNS0_6RegExpERKNS0_4util4PackE+0x1f7b>
    1514:	31 d2                	xor    %edx,%edx
    1516:	48 83 bd 80 00 00 00 	cmpq   $0x0,0x80(%rbp)
    151d:	00 
    151e:	74 18                	je     1538 <_ZN4Code7mulPackERKN5Xbyak5Reg64ERKNS0_3XmmEiRKNS0_6RegExpERKNS0_4util4PackE+0x1538>
    1520:	48 8b 4d 78          	mov    0x78(%rbp),%rcx
    1524:	0f b6 0c 11          	movzbl (%rcx,%rdx,1),%ecx
    1528:	88 0c 10             	mov    %cl,(%rax,%rdx,1)
    152b:	48 83 c2 01          	add    $0x1,%rdx
    152f:	48 39 95 80 00 00 00 	cmp    %rdx,0x80(%rbp)
    1536:	77 e8                	ja     1520 <_ZN4Code7mulPackERKN5Xbyak5Reg64ERKNS0_3XmmEiRKNS0_6RegExpERKNS0_4util4PackE+0x1520>
    1538:	48 8b 7d 68          	mov    0x68(%rbp),%rdi
    153c:	48 8b 75 78          	mov    0x78(%rbp),%rsi
    1540:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
    1545:	48 8b 17             	mov    (%rdi),%rdx
    1548:	ff 52 08             	callq  *0x8(%rdx)
    154b:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
    1550:	4c 89 7d 70          	mov    %r15,0x70(%rbp)
    1554:	48 8b 95 80 00 00 00 	mov    0x80(%rbp),%rdx
    155b:	48 89 45 78          	mov    %rax,0x78(%rbp)
    155f:	48 8d 4a 01          	lea    0x1(%rdx),%rcx
    1563:	48 8b 74 24 10       	mov    0x10(%rsp),%rsi
    1568:	45 31 c9             	xor    %r9d,%r9d
    156b:	45 31 c0             	xor    %r8d,%r8d
    156e:	48 89 8d 80 00 00 00 	mov    %rcx,0x80(%rbp)
    1575:	48 89 ef             	mov    %rbp,%rdi
    1578:	31 c9                	xor    %ecx,%ecx
    157a:	c6 04 10 f6          	movb   $0xf6,(%rax,%rdx,1)
    157e:	41 0f b6 16          	movzbl (%r14),%edx
    1582:	83 e2 1f             	and    $0x1f,%edx
    1585:	e8 00 00 00 00       	callq  158a <_ZN4Code7mulPackERKN5Xbyak5Reg64ERKNS0_3XmmEiRKNS0_6RegExpERKNS0_4util4PackE+0x158a>
    158a:	e9 bf fb ff ff       	jmpq   114e <_ZN4Code7mulPackERKN5Xbyak5Reg64ERKNS0_3XmmEiRKNS0_6RegExpERKNS0_4util4PackE+0x114e>
    158f:	90                   	nop
    1590:	48 8b 45 78          	mov    0x78(%rbp),%rax
    1594:	e9 66 f7 ff ff       	jmpq   cff <_ZN4Code7mulPackERKN5Xbyak5Reg64ERKNS0_3XmmEiRKNS0_6RegExpERKNS0_4util4PackE+0xcff>
    1599:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    15a0:	83 e2 10             	and    $0x10,%edx
    15a3:	0f 84 cf fd ff ff    	je     1378 <_ZN4Code7mulPackERKN5Xbyak5Reg64ERKNS0_3XmmEiRKNS0_6RegExpERKNS0_4util4PackE+0x1378>
    15a9:	83 e1 60             	and    $0x60,%ecx
    15ac:	0f 85 c6 fd ff ff    	jne    1378 <_ZN4Code7mulPackERKN5Xbyak5Reg64ERKNS0_3XmmEiRKNS0_6RegExpERKNS0_4util4PackE+0x1378>
    15b2:	48 8b 95 80 00 00 00 	mov    0x80(%rbp),%rdx
    15b9:	4c 8b 45 70          	mov    0x70(%rbp),%r8
    15bd:	4c 39 c2             	cmp    %r8,%rdx
    15c0:	0f 83 08 fd ff ff    	jae    12ce <_ZN4Code7mulPackERKN5Xbyak5Reg64ERKNS0_3XmmEiRKNS0_6RegExpERKNS0_4util4PackE+0x12ce>
    15c6:	48 8b 45 78          	mov    0x78(%rbp),%rax
    15ca:	e9 9a fd ff ff       	jmpq   1369 <_ZN4Code7mulPackERKN5Xbyak5Reg64ERKNS0_3XmmEiRKNS0_6RegExpERKNS0_4util4PackE+0x1369>
    15cf:	90                   	nop
    15d0:	83 e2 10             	and    $0x10,%edx
    15d3:	0f 84 bf f8 ff ff    	je     e98 <_ZN4Code7mulPackERKN5Xbyak5Reg64ERKNS0_3XmmEiRKNS0_6RegExpERKNS0_4util4PackE+0xe98>
    15d9:	83 e1 60             	and    $0x60,%ecx
    15dc:	0f 85 b6 f8 ff ff    	jne    e98 <_ZN4Code7mulPackERKN5Xbyak5Reg64ERKNS0_3XmmEiRKNS0_6RegExpERKNS0_4util4PackE+0xe98>
    15e2:	48 8b 95 80 00 00 00 	mov    0x80(%rbp),%rdx
    15e9:	4c 8b 45 70          	mov    0x70(%rbp),%r8
    15ed:	4c 39 c2             	cmp    %r8,%rdx
    15f0:	0f 83 f9 f7 ff ff    	jae    def <_ZN4Code7mulPackERKN5Xbyak5Reg64ERKNS0_3XmmEiRKNS0_6RegExpERKNS0_4util4PackE+0xdef>
    15f6:	48 8b 45 78          	mov    0x78(%rbp),%rax
    15fa:	e9 8a f8 ff ff       	jmpq   e89 <_ZN4Code7mulPackERKN5Xbyak5Reg64ERKNS0_3XmmEiRKNS0_6RegExpERKNS0_4util4PackE+0xe89>
    15ff:	90                   	nop
    1600:	48 8b 95 80 00 00 00 	mov    0x80(%rbp),%rdx
    1607:	4c 8b 45 70          	mov    0x70(%rbp),%r8
    160b:	4c 39 c2             	cmp    %r8,%rdx
    160e:	0f 82 44 04 00 00    	jb     1a58 <_ZN4Code7mulPackERKN5Xbyak5Reg64ERKNS0_3XmmEiRKNS0_6RegExpERKNS0_4util4PackE+0x1a58>
    1614:	83 7d 20 03          	cmpl   $0x3,0x20(%rbp)
    1618:	0f 85 49 09 00 00    	jne    1f67 <_ZN4Code7mulPackERKN5Xbyak5Reg64ERKNS0_3XmmEiRKNS0_6RegExpERKNS0_4util4PackE+0x1f67>
    161e:	4d 01 c0             	add    %r8,%r8
    1621:	48 8b 7d 68          	mov    0x68(%rbp),%rdi
    1625:	b8 00 10 00 00       	mov    $0x1000,%eax
    162a:	49 81 f8 00 10 00 00 	cmp    $0x1000,%r8
    1631:	4c 0f 42 c0          	cmovb  %rax,%r8
    1635:	48 8b 07             	mov    (%rdi),%rax
    1638:	4c 89 44 24 08       	mov    %r8,0x8(%rsp)
    163d:	4c 89 c6             	mov    %r8,%rsi
    1640:	ff 10                	callq  *(%rax)
    1642:	48 85 c0             	test   %rax,%rax
    1645:	0f 84 30 09 00 00    	je     1f7b <_ZN4Code7mulPackERKN5Xbyak5Reg64ERKNS0_3XmmEiRKNS0_6RegExpERKNS0_4util4PackE+0x1f7b>
    164b:	31 d2                	xor    %edx,%edx
    164d:	48 83 bd 80 00 00 00 	cmpq   $0x0,0x80(%rbp)
    1654:	00 
    1655:	4c 8b 44 24 08       	mov    0x8(%rsp),%r8
    165a:	74 1c                	je     1678 <_ZN4Code7mulPackERKN5Xbyak5Reg64ERKNS0_3XmmEiRKNS0_6RegExpERKNS0_4util4PackE+0x1678>
    165c:	0f 1f 40 00          	nopl   0x0(%rax)
    1660:	48 8b 4d 78          	mov    0x78(%rbp),%rcx
    1664:	0f b6 0c 11          	movzbl (%rcx,%rdx,1),%ecx
    1668:	88 0c 10             	mov    %cl,(%rax,%rdx,1)
    166b:	48 83 c2 01          	add    $0x1,%rdx
    166f:	48 39 95 80 00 00 00 	cmp    %rdx,0x80(%rbp)
    1676:	77 e8                	ja     1660 <_ZN4Code7mulPackERKN5Xbyak5Reg64ERKNS0_3XmmEiRKNS0_6RegExpERKNS0_4util4PackE+0x1660>
    1678:	48 8b 7d 68          	mov    0x68(%rbp),%rdi
    167c:	48 8b 75 78          	mov    0x78(%rbp),%rsi
    1680:	48 89 44 24 28       	mov    %rax,0x28(%rsp)
    1685:	4c 89 44 24 08       	mov    %r8,0x8(%rsp)
    168a:	48 8b 17             	mov    (%rdi),%rdx
    168d:	ff 52 08             	callq  *0x8(%rdx)
    1690:	48 8b 44 24 28       	mov    0x28(%rsp),%rax
    1695:	4c 8b 44 24 08       	mov    0x8(%rsp),%r8
    169a:	48 8b 95 80 00 00 00 	mov    0x80(%rbp),%rdx
    16a1:	48 89 45 78          	mov    %rax,0x78(%rbp)
    16a5:	4c 89 45 70          	mov    %r8,0x70(%rbp)
    16a9:	48 8d 4a 01          	lea    0x1(%rdx),%rcx
    16ad:	48 89 8d 80 00 00 00 	mov    %rcx,0x80(%rbp)
    16b4:	c6 04 10 67          	movb   $0x67,(%rax,%rdx,1)
    16b8:	0f b6 84 24 78 01 00 	movzbl 0x178(%rsp),%eax
    16bf:	00 
    16c0:	0f b6 94 24 b4 01 00 	movzbl 0x1b4(%rsp),%edx
    16c7:	00 
    16c8:	83 e0 3f             	and    $0x3f,%eax
    16cb:	89 c1                	mov    %eax,%ecx
    16cd:	83 e2 07             	and    $0x7,%edx
    16d0:	c0 e9 03             	shr    $0x3,%cl
    16d3:	83 e1 01             	and    $0x1,%ecx
    16d6:	66 41 f7 06 00 10    	testw  $0x1000,(%r14)
    16dc:	0f 85 2e f4 ff ff    	jne    b10 <_ZN4Code7mulPackERKN5Xbyak5Reg64ERKNS0_3XmmEiRKNS0_6RegExpERKNS0_4util4PackE+0xb10>
    16e2:	41 f6 06 10          	testb  $0x10,(%r14)
    16e6:	0f 85 24 f4 ff ff    	jne    b10 <_ZN4Code7mulPackERKN5Xbyak5Reg64ERKNS0_3XmmEiRKNS0_6RegExpERKNS0_4util4PackE+0xb10>
    16ec:	41 0f b6 76 04       	movzbl 0x4(%r14),%esi
    16f1:	40 f6 c6 07          	test   $0x7,%sil
    16f5:	0f 85 15 f4 ff ff    	jne    b10 <_ZN4Code7mulPackERKN5Xbyak5Reg64ERKNS0_3XmmEiRKNS0_6RegExpERKNS0_4util4PackE+0xb10>
    16fb:	e9 08 f4 ff ff       	jmpq   b08 <_ZN4Code7mulPackERKN5Xbyak5Reg64ERKNS0_3XmmEiRKNS0_6RegExpERKNS0_4util4PackE+0xb08>
    1700:	0f b6 bc 24 c0 01 00 	movzbl 0x1c0(%rsp),%edi
    1707:	00 
    1708:	83 e7 1f             	and    $0x1f,%edi
    170b:	40 80 ff 04          	cmp    $0x4,%dil
    170f:	0f 84 6b 08 00 00    	je     1f80 <_ZN4Code7mulPackERKN5Xbyak5Reg64ERKNS0_3XmmEiRKNS0_6RegExpERKNS0_4util4PackE+0x1f80>
    1715:	39 d0                	cmp    %edx,%eax
    1717:	0f 84 36 f3 ff ff    	je     a53 <_ZN4Code7mulPackERKN5Xbyak5Reg64ERKNS0_3XmmEiRKNS0_6RegExpERKNS0_4util4PackE+0xa53>
    171d:	85 c0                	test   %eax,%eax
    171f:	0f 84 2e f3 ff ff    	je     a53 <_ZN4Code7mulPackERKN5Xbyak5Reg64ERKNS0_3XmmEiRKNS0_6RegExpERKNS0_4util4PackE+0xa53>
    1725:	bf 10 00 00 00       	mov    $0x10,%edi
    172a:	e8 00 00 00 00       	callq  172f <_ZN4Code7mulPackERKN5Xbyak5Reg64ERKNS0_3XmmEiRKNS0_6RegExpERKNS0_4util4PackE+0x172f>
    172f:	48 8b 15 00 00 00 00 	mov    0x0(%rip),%rdx        # 1736 <_ZN4Code7mulPackERKN5Xbyak5Reg64ERKNS0_3XmmEiRKNS0_6RegExpERKNS0_4util4PackE+0x1736>
    1736:	48 8b 35 00 00 00 00 	mov    0x0(%rip),%rsi        # 173d <_ZN4Code7mulPackERKN5Xbyak5Reg64ERKNS0_3XmmEiRKNS0_6RegExpERKNS0_4util4PackE+0x173d>
    173d:	48 89 c7             	mov    %rax,%rdi
    1740:	48 8b 05 00 00 00 00 	mov    0x0(%rip),%rax        # 1747 <_ZN4Code7mulPackERKN5Xbyak5Reg64ERKNS0_3XmmEiRKNS0_6RegExpERKNS0_4util4PackE+0x1747>
    1747:	c7 47 08 06 00 00 00 	movl   $0x6,0x8(%rdi)
    174e:	48 83 c0 10          	add    $0x10,%rax
    1752:	48 89 07             	mov    %rax,(%rdi)
    1755:	e8 00 00 00 00       	callq  175a <_ZN4Code7mulPackERKN5Xbyak5Reg64ERKNS0_3XmmEiRKNS0_6RegExpERKNS0_4util4PackE+0x175a>
    175a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    1760:	48 8b 45 78          	mov    0x78(%rbp),%rax
    1764:	e9 56 fd ff ff       	jmpq   14bf <_ZN4Code7mulPackERKN5Xbyak5Reg64ERKNS0_3XmmEiRKNS0_6RegExpERKNS0_4util4PackE+0x14bf>
    1769:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    1770:	48 8b 45 78          	mov    0x78(%rbp),%rax
    1774:	e9 9e fc ff ff       	jmpq   1417 <_ZN4Code7mulPackERKN5Xbyak5Reg64ERKNS0_3XmmEiRKNS0_6RegExpERKNS0_4util4PackE+0x1417>
    1779:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    1780:	48 8b 45 78          	mov    0x78(%rbp),%rax
    1784:	e9 f6 f8 ff ff       	jmpq   107f <_ZN4Code7mulPackERKN5Xbyak5Reg64ERKNS0_3XmmEiRKNS0_6RegExpERKNS0_4util4PackE+0x107f>
    1789:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    1790:	48 8b 45 78          	mov    0x78(%rbp),%rax
    1794:	e9 46 f8 ff ff       	jmpq   fdf <_ZN4Code7mulPackERKN5Xbyak5Reg64ERKNS0_3XmmEiRKNS0_6RegExpERKNS0_4util4PackE+0xfdf>
    1799:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    17a0:	48 8b 45 78          	mov    0x78(%rbp),%rax
    17a4:	e9 8e f7 ff ff       	jmpq   f37 <_ZN4Code7mulPackERKN5Xbyak5Reg64ERKNS0_3XmmEiRKNS0_6RegExpERKNS0_4util4PackE+0xf37>
    17a9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    17b0:	48 8b 45 78          	mov    0x78(%rbp),%rax
    17b4:	e9 a6 fd ff ff       	jmpq   155f <_ZN4Code7mulPackERKN5Xbyak5Reg64ERKNS0_3XmmEiRKNS0_6RegExpERKNS0_4util4PackE+0x155f>
    17b9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    17c0:	48 8b 45 78          	mov    0x78(%rbp),%rax
    17c4:	e9 76 f9 ff ff       	jmpq   113f <_ZN4Code7mulPackERKN5Xbyak5Reg64ERKNS0_3XmmEiRKNS0_6RegExpERKNS0_4util4PackE+0x113f>
    17c9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    17d0:	41 0f b7 56 0a       	movzwl 0xa(%r14),%edx
    17d5:	66 81 e2 ff 3f       	and    $0x3fff,%dx
    17da:	66 83 fa 20          	cmp    $0x20,%dx
    17de:	0f 84 84 02 00 00    	je     1a68 <_ZN4Code7mulPackERKN5Xbyak5Reg64ERKNS0_3XmmEiRKNS0_6RegExpERKNS0_4util4PackE+0x1a68>
    17e4:	41 0f b7 56 12       	movzwl 0x12(%r14),%edx
    17e9:	66 81 e2 ff 3f       	and    $0x3fff,%dx
    17ee:	66 83 fa 20          	cmp    $0x20,%dx
    17f2:	0f 84 70 02 00 00    	je     1a68 <_ZN4Code7mulPackERKN5Xbyak5Reg64ERKNS0_3XmmEiRKNS0_6RegExpERKNS0_4util4PackE+0x1a68>
    17f8:	41 8b 56 30          	mov    0x30(%r14),%edx
    17fc:	45 31 ff             	xor    %r15d,%r15d
    17ff:	85 d2                	test   %edx,%edx
    1801:	75 41                	jne    1844 <_ZN4Code7mulPackERKN5Xbyak5Reg64ERKNS0_3XmmEiRKNS0_6RegExpERKNS0_4util4PackE+0x1844>
    1803:	41 0f b6 56 08       	movzbl 0x8(%r14),%edx
    1808:	41 0f b6 4e 10       	movzbl 0x10(%r14),%ecx
    180d:	83 e2 3f             	and    $0x3f,%edx
    1810:	83 e1 3f             	and    $0x3f,%ecx
    1813:	41 f6 46 12 60       	testb  $0x60,0x12(%r14)
    1818:	74 11                	je     182b <_ZN4Code7mulPackERKN5Xbyak5Reg64ERKNS0_3XmmEiRKNS0_6RegExpERKNS0_4util4PackE+0x182b>
    181a:	66 41 f7 46 0a ff 3f 	testw  $0x3fff,0xa(%r14)
    1821:	75 08                	jne    182b <_ZN4Code7mulPackERKN5Xbyak5Reg64ERKNS0_3XmmEiRKNS0_6RegExpERKNS0_4util4PackE+0x182b>
    1823:	41 83 7e 18 02       	cmpl   $0x2,0x18(%r14)
    1828:	0f 44 d1             	cmove  %ecx,%edx
    182b:	83 e2 08             	and    $0x8,%edx
    182e:	83 e1 08             	and    $0x8,%ecx
    1831:	0f 85 99 04 00 00    	jne    1cd0 <_ZN4Code7mulPackERKN5Xbyak5Reg64ERKNS0_3XmmEiRKNS0_6RegExpERKNS0_4util4PackE+0x1cd0>
    1837:	80 fa 01             	cmp    $0x1,%dl
    183a:	45 19 ff             	sbb    %r15d,%r15d
    183d:	41 f7 d7             	not    %r15d
    1840:	41 83 e7 41          	and    $0x41,%r15d
    1844:	0f b7 95 fa 04 00 00 	movzwl 0x4fa(%rbp),%edx
    184b:	89 d1                	mov    %edx,%ecx
    184d:	66 81 e1 ff 3f       	and    $0x3fff,%cx
    1852:	a8 02                	test   $0x2,%al
    1854:	0f b6 85 f8 04 00 00 	movzbl 0x4f8(%rbp),%eax
    185b:	74 4b                	je     18a8 <_ZN4Code7mulPackERKN5Xbyak5Reg64ERKNS0_3XmmEiRKNS0_6RegExpERKNS0_4util4PackE+0x18a8>
    185d:	83 e2 40             	and    $0x40,%edx
    1860:	74 46                	je     18a8 <_ZN4Code7mulPackERKN5Xbyak5Reg64ERKNS0_3XmmEiRKNS0_6RegExpERKNS0_4util4PackE+0x18a8>
    1862:	83 e0 08             	and    $0x8,%eax
    1865:	3c 01                	cmp    $0x1,%al
    1867:	19 c0                	sbb    %eax,%eax
    1869:	83 e0 fc             	and    $0xfffffffc,%eax
    186c:	83 c0 4c             	add    $0x4c,%eax
    186f:	41 09 c7             	or     %eax,%r15d
    1872:	41 0f b7 56 02       	movzwl 0x2(%r14),%edx
    1877:	66 81 e2 ff 3f       	and    $0x3fff,%dx
    187c:	e9 48 f5 ff ff       	jmpq   dc9 <_ZN4Code7mulPackERKN5Xbyak5Reg64ERKNS0_3XmmEiRKNS0_6RegExpERKNS0_4util4PackE+0xdc9>
    1881:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    1888:	84 c0                	test   %al,%al
    188a:	0f 85 30 04 00 00    	jne    1cc0 <_ZN4Code7mulPackERKN5Xbyak5Reg64ERKNS0_3XmmEiRKNS0_6RegExpERKNS0_4util4PackE+0x1cc0>
    1890:	83 e7 20             	and    $0x20,%edi
    1893:	0f 84 02 fa ff ff    	je     129b <_ZN4Code7mulPackERKN5Xbyak5Reg64ERKNS0_3XmmEiRKNS0_6RegExpERKNS0_4util4PackE+0x129b>
    1899:	b8 40 00 00 00       	mov    $0x40,%eax
    189e:	e9 f5 f9 ff ff       	jmpq   1298 <_ZN4Code7mulPackERKN5Xbyak5Reg64ERKNS0_3XmmEiRKNS0_6RegExpERKNS0_4util4PackE+0x1298>
    18a3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    18a8:	89 c2                	mov    %eax,%edx
    18aa:	83 e2 3f             	and    $0x3f,%edx
    18ad:	a8 08                	test   $0x8,%al
    18af:	0f 85 fb 03 00 00    	jne    1cb0 <_ZN4Code7mulPackERKN5Xbyak5Reg64ERKNS0_3XmmEiRKNS0_6RegExpERKNS0_4util4PackE+0x1cb0>
    18b5:	83 e2 20             	and    $0x20,%edx
    18b8:	b8 40 00 00 00       	mov    $0x40,%eax
    18bd:	75 b0                	jne    186f <_ZN4Code7mulPackERKN5Xbyak5Reg64ERKNS0_3XmmEiRKNS0_6RegExpERKNS0_4util4PackE+0x186f>
    18bf:	eb b1                	jmp    1872 <_ZN4Code7mulPackERKN5Xbyak5Reg64ERKNS0_3XmmEiRKNS0_6RegExpERKNS0_4util4PackE+0x1872>
    18c1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    18c8:	48 39 d0             	cmp    %rdx,%rax
    18cb:	0f 87 af 03 00 00    	ja     1c80 <_ZN4Code7mulPackERKN5Xbyak5Reg64ERKNS0_3XmmEiRKNS0_6RegExpERKNS0_4util4PackE+0x1c80>
    18d1:	83 7d 20 03          	cmpl   $0x3,0x20(%rbp)
    18d5:	0f 85 8c 06 00 00    	jne    1f67 <_ZN4Code7mulPackERKN5Xbyak5Reg64ERKNS0_3XmmEiRKNS0_6RegExpERKNS0_4util4PackE+0x1f67>
    18db:	48 8d 0c 00          	lea    (%rax,%rax,1),%rcx
    18df:	48 8b 7d 68          	mov    0x68(%rbp),%rdi
    18e3:	b8 00 10 00 00       	mov    $0x1000,%eax
    18e8:	48 81 f9 00 10 00 00 	cmp    $0x1000,%rcx
    18ef:	48 0f 42 c8          	cmovb  %rax,%rcx
    18f3:	48 8b 07             	mov    (%rdi),%rax
    18f6:	48 89 4c 24 08       	mov    %rcx,0x8(%rsp)
    18fb:	48 89 ce             	mov    %rcx,%rsi
    18fe:	ff 10                	callq  *(%rax)
    1900:	48 85 c0             	test   %rax,%rax
    1903:	0f 84 72 06 00 00    	je     1f7b <_ZN4Code7mulPackERKN5Xbyak5Reg64ERKNS0_3XmmEiRKNS0_6RegExpERKNS0_4util4PackE+0x1f7b>
    1909:	31 d2                	xor    %edx,%edx
    190b:	48 83 bd 80 00 00 00 	cmpq   $0x0,0x80(%rbp)
    1912:	00 
    1913:	48 8b 4c 24 08       	mov    0x8(%rsp),%rcx
    1918:	74 1f                	je     1939 <_ZN4Code7mulPackERKN5Xbyak5Reg64ERKNS0_3XmmEiRKNS0_6RegExpERKNS0_4util4PackE+0x1939>
    191a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    1920:	48 8b 75 78          	mov    0x78(%rbp),%rsi
    1924:	0f b6 34 16          	movzbl (%rsi,%rdx,1),%esi
    1928:	40 88 34 10          	mov    %sil,(%rax,%rdx,1)
    192c:	48 83 c2 01          	add    $0x1,%rdx
    1930:	48 39 95 80 00 00 00 	cmp    %rdx,0x80(%rbp)
    1937:	77 e7                	ja     1920 <_ZN4Code7mulPackERKN5Xbyak5Reg64ERKNS0_3XmmEiRKNS0_6RegExpERKNS0_4util4PackE+0x1920>
    1939:	48 8b 7d 68          	mov    0x68(%rbp),%rdi
    193d:	48 8b 75 78          	mov    0x78(%rbp),%rsi
    1941:	48 89 44 24 28       	mov    %rax,0x28(%rsp)
    1946:	48 89 4c 24 08       	mov    %rcx,0x8(%rsp)
    194b:	48 8b 17             	mov    (%rdi),%rdx
    194e:	ff 52 08             	callq  *0x8(%rdx)
    1951:	48 8b 44 24 28       	mov    0x28(%rsp),%rax
    1956:	48 8b 4c 24 08       	mov    0x8(%rsp),%rcx
    195b:	48 8b 95 80 00 00 00 	mov    0x80(%rbp),%rdx
    1962:	48 89 45 78          	mov    %rax,0x78(%rbp)
    1966:	48 89 4d 70          	mov    %rcx,0x70(%rbp)
    196a:	48 8d 4a 01          	lea    0x1(%rdx),%rcx
    196e:	48 89 8d 80 00 00 00 	mov    %rcx,0x80(%rbp)
    1975:	44 88 3c 10          	mov    %r15b,(%rax,%rdx,1)
    1979:	48 8b 95 80 00 00 00 	mov    0x80(%rbp),%rdx
    1980:	48 8b 45 70          	mov    0x70(%rbp),%rax
    1984:	e9 23 f5 ff ff       	jmpq   eac <_ZN4Code7mulPackERKN5Xbyak5Reg64ERKNS0_3XmmEiRKNS0_6RegExpERKNS0_4util4PackE+0xeac>
    1989:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    1990:	48 39 c2             	cmp    %rax,%rdx
    1993:	0f 82 d7 02 00 00    	jb     1c70 <_ZN4Code7mulPackERKN5Xbyak5Reg64ERKNS0_3XmmEiRKNS0_6RegExpERKNS0_4util4PackE+0x1c70>
    1999:	83 7d 20 03          	cmpl   $0x3,0x20(%rbp)
    199d:	0f 85 c4 05 00 00    	jne    1f67 <_ZN4Code7mulPackERKN5Xbyak5Reg64ERKNS0_3XmmEiRKNS0_6RegExpERKNS0_4util4PackE+0x1f67>
    19a3:	48 8d 0c 00          	lea    (%rax,%rax,1),%rcx
    19a7:	48 8b 7d 68          	mov    0x68(%rbp),%rdi
    19ab:	b8 00 10 00 00       	mov    $0x1000,%eax
    19b0:	48 81 f9 00 10 00 00 	cmp    $0x1000,%rcx
    19b7:	48 0f 42 c8          	cmovb  %rax,%rcx
    19bb:	48 8b 07             	mov    (%rdi),%rax
    19be:	48 89 4c 24 08       	mov    %rcx,0x8(%rsp)
    19c3:	48 89 ce             	mov    %rcx,%rsi
    19c6:	ff 10                	callq  *(%rax)
    19c8:	48 85 c0             	test   %rax,%rax
    19cb:	0f 84 aa 05 00 00    	je     1f7b <_ZN4Code7mulPackERKN5Xbyak5Reg64ERKNS0_3XmmEiRKNS0_6RegExpERKNS0_4util4PackE+0x1f7b>
    19d1:	31 d2                	xor    %edx,%edx
    19d3:	48 83 bd 80 00 00 00 	cmpq   $0x0,0x80(%rbp)
    19da:	00 
    19db:	48 8b 4c 24 08       	mov    0x8(%rsp),%rcx
    19e0:	74 1f                	je     1a01 <_ZN4Code7mulPackERKN5Xbyak5Reg64ERKNS0_3XmmEiRKNS0_6RegExpERKNS0_4util4PackE+0x1a01>
    19e2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    19e8:	48 8b 75 78          	mov    0x78(%rbp),%rsi
    19ec:	0f b6 34 16          	movzbl (%rsi,%rdx,1),%esi
    19f0:	40 88 34 10          	mov    %sil,(%rax,%rdx,1)
    19f4:	48 83 c2 01          	add    $0x1,%rdx
    19f8:	48 39 95 80 00 00 00 	cmp    %rdx,0x80(%rbp)
    19ff:	77 e7                	ja     19e8 <_ZN4Code7mulPackERKN5Xbyak5Reg64ERKNS0_3XmmEiRKNS0_6RegExpERKNS0_4util4PackE+0x19e8>
    1a01:	48 8b 7d 68          	mov    0x68(%rbp),%rdi
    1a05:	48 8b 75 78          	mov    0x78(%rbp),%rsi
    1a09:	48 89 44 24 28       	mov    %rax,0x28(%rsp)
    1a0e:	48 89 4c 24 08       	mov    %rcx,0x8(%rsp)
    1a13:	48 8b 17             	mov    (%rdi),%rdx
    1a16:	ff 52 08             	callq  *0x8(%rdx)
    1a19:	48 8b 44 24 28       	mov    0x28(%rsp),%rax
    1a1e:	48 8b 4c 24 08       	mov    0x8(%rsp),%rcx
    1a23:	48 8b 95 80 00 00 00 	mov    0x80(%rbp),%rdx
    1a2a:	48 89 45 78          	mov    %rax,0x78(%rbp)
    1a2e:	48 89 4d 70          	mov    %rcx,0x70(%rbp)
    1a32:	48 8d 4a 01          	lea    0x1(%rdx),%rcx
    1a36:	48 89 8d 80 00 00 00 	mov    %rcx,0x80(%rbp)
    1a3d:	44 88 3c 10          	mov    %r15b,(%rax,%rdx,1)
    1a41:	48 8b 95 80 00 00 00 	mov    0x80(%rbp),%rdx
    1a48:	48 8b 45 70          	mov    0x70(%rbp),%rax
    1a4c:	e9 3b f9 ff ff       	jmpq   138c <_ZN4Code7mulPackERKN5Xbyak5Reg64ERKNS0_3XmmEiRKNS0_6RegExpERKNS0_4util4PackE+0x138c>
    1a51:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    1a58:	48 8b 45 78          	mov    0x78(%rbp),%rax
    1a5c:	e9 48 fc ff ff       	jmpq   16a9 <_ZN4Code7mulPackERKN5Xbyak5Reg64ERKNS0_3XmmEiRKNS0_6RegExpERKNS0_4util4PackE+0x16a9>
    1a61:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    1a68:	48 8b 85 80 00 00 00 	mov    0x80(%rbp),%rax
    1a6f:	4c 8b 45 70          	mov    0x70(%rbp),%r8
    1a73:	4c 39 c0             	cmp    %r8,%rax
    1a76:	0f 82 24 02 00 00    	jb     1ca0 <_ZN4Code7mulPackERKN5Xbyak5Reg64ERKNS0_3XmmEiRKNS0_6RegExpERKNS0_4util4PackE+0x1ca0>
    1a7c:	83 7d 20 03          	cmpl   $0x3,0x20(%rbp)
    1a80:	0f 85 e1 04 00 00    	jne    1f67 <_ZN4Code7mulPackERKN5Xbyak5Reg64ERKNS0_3XmmEiRKNS0_6RegExpERKNS0_4util4PackE+0x1f67>
    1a86:	48 8b 7d 68          	mov    0x68(%rbp),%rdi
    1a8a:	4d 01 c0             	add    %r8,%r8
    1a8d:	b8 00 10 00 00       	mov    $0x1000,%eax
    1a92:	49 81 f8 00 10 00 00 	cmp    $0x1000,%r8
    1a99:	4c 0f 42 c0          	cmovb  %rax,%r8
    1a9d:	48 8b 07             	mov    (%rdi),%rax
    1aa0:	4c 89 44 24 08       	mov    %r8,0x8(%rsp)
    1aa5:	4c 89 c6             	mov    %r8,%rsi
    1aa8:	ff 10                	callq  *(%rax)
    1aaa:	49 89 c7             	mov    %rax,%r15
    1aad:	48 85 c0             	test   %rax,%rax
    1ab0:	0f 84 c5 04 00 00    	je     1f7b <_ZN4Code7mulPackERKN5Xbyak5Reg64ERKNS0_3XmmEiRKNS0_6RegExpERKNS0_4util4PackE+0x1f7b>
    1ab6:	31 d2                	xor    %edx,%edx
    1ab8:	48 83 bd 80 00 00 00 	cmpq   $0x0,0x80(%rbp)
    1abf:	00 
    1ac0:	4c 8b 44 24 08       	mov    0x8(%rsp),%r8
    1ac5:	74 22                	je     1ae9 <_ZN4Code7mulPackERKN5Xbyak5Reg64ERKNS0_3XmmEiRKNS0_6RegExpERKNS0_4util4PackE+0x1ae9>
    1ac7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
    1ace:	00 00 
    1ad0:	48 8b 45 78          	mov    0x78(%rbp),%rax
    1ad4:	0f b6 04 10          	movzbl (%rax,%rdx,1),%eax
    1ad8:	41 88 04 17          	mov    %al,(%r15,%rdx,1)
    1adc:	48 83 c2 01          	add    $0x1,%rdx
    1ae0:	48 39 95 80 00 00 00 	cmp    %rdx,0x80(%rbp)
    1ae7:	77 e7                	ja     1ad0 <_ZN4Code7mulPackERKN5Xbyak5Reg64ERKNS0_3XmmEiRKNS0_6RegExpERKNS0_4util4PackE+0x1ad0>
    1ae9:	48 8b 7d 68          	mov    0x68(%rbp),%rdi
    1aed:	48 8b 75 78          	mov    0x78(%rbp),%rsi
    1af1:	4c 89 44 24 08       	mov    %r8,0x8(%rsp)
    1af6:	48 8b 07             	mov    (%rdi),%rax
    1af9:	ff 50 08             	callq  *0x8(%rax)
    1afc:	4c 8b 44 24 08       	mov    0x8(%rsp),%r8
    1b01:	4c 89 7d 78          	mov    %r15,0x78(%rbp)
    1b05:	48 8b 85 80 00 00 00 	mov    0x80(%rbp),%rax
    1b0c:	4c 89 45 70          	mov    %r8,0x70(%rbp)
    1b10:	48 8d 50 01          	lea    0x1(%rax),%rdx
    1b14:	48 89 95 80 00 00 00 	mov    %rdx,0x80(%rbp)
    1b1b:	41 c6 04 07 67       	movb   $0x67,(%r15,%rax,1)
    1b20:	0f b7 85 f8 04 00 00 	movzwl 0x4f8(%rbp),%eax
    1b27:	66 c1 e8 06          	shr    $0x6,%ax
    1b2b:	e9 c8 fc ff ff       	jmpq   17f8 <_ZN4Code7mulPackERKN5Xbyak5Reg64ERKNS0_3XmmEiRKNS0_6RegExpERKNS0_4util4PackE+0x17f8>
    1b30:	48 8b 85 80 00 00 00 	mov    0x80(%rbp),%rax
    1b37:	4c 8b 45 70          	mov    0x70(%rbp),%r8
    1b3b:	4c 39 c0             	cmp    %r8,%rax
    1b3e:	0f 82 4c 01 00 00    	jb     1c90 <_ZN4Code7mulPackERKN5Xbyak5Reg64ERKNS0_3XmmEiRKNS0_6RegExpERKNS0_4util4PackE+0x1c90>
    1b44:	83 7d 20 03          	cmpl   $0x3,0x20(%rbp)
    1b48:	0f 85 19 04 00 00    	jne    1f67 <_ZN4Code7mulPackERKN5Xbyak5Reg64ERKNS0_3XmmEiRKNS0_6RegExpERKNS0_4util4PackE+0x1f67>
    1b4e:	48 8b 7d 68          	mov    0x68(%rbp),%rdi
    1b52:	4d 01 c0             	add    %r8,%r8
    1b55:	b8 00 10 00 00       	mov    $0x1000,%eax
    1b5a:	49 81 f8 00 10 00 00 	cmp    $0x1000,%r8
    1b61:	4c 0f 42 c0          	cmovb  %rax,%r8
    1b65:	48 8b 07             	mov    (%rdi),%rax
    1b68:	4c 89 44 24 08       	mov    %r8,0x8(%rsp)
    1b6d:	4c 89 c6             	mov    %r8,%rsi
    1b70:	ff 10                	callq  *(%rax)
    1b72:	49 89 c7             	mov    %rax,%r15
    1b75:	48 85 c0             	test   %rax,%rax
    1b78:	0f 84 fd 03 00 00    	je     1f7b <_ZN4Code7mulPackERKN5Xbyak5Reg64ERKNS0_3XmmEiRKNS0_6RegExpERKNS0_4util4PackE+0x1f7b>
    1b7e:	31 d2                	xor    %edx,%edx
    1b80:	48 83 bd 80 00 00 00 	cmpq   $0x0,0x80(%rbp)
    1b87:	00 
    1b88:	4c 8b 44 24 08       	mov    0x8(%rsp),%r8
    1b8d:	74 1a                	je     1ba9 <_ZN4Code7mulPackERKN5Xbyak5Reg64ERKNS0_3XmmEiRKNS0_6RegExpERKNS0_4util4PackE+0x1ba9>
    1b8f:	90                   	nop
    1b90:	48 8b 45 78          	mov    0x78(%rbp),%rax
    1b94:	0f b6 04 10          	movzbl (%rax,%rdx,1),%eax
    1b98:	41 88 04 17          	mov    %al,(%r15,%rdx,1)
    1b9c:	48 83 c2 01          	add    $0x1,%rdx
    1ba0:	48 39 95 80 00 00 00 	cmp    %rdx,0x80(%rbp)
    1ba7:	77 e7                	ja     1b90 <_ZN4Code7mulPackERKN5Xbyak5Reg64ERKNS0_3XmmEiRKNS0_6RegExpERKNS0_4util4PackE+0x1b90>
    1ba9:	48 8b 7d 68          	mov    0x68(%rbp),%rdi
    1bad:	48 8b 75 78          	mov    0x78(%rbp),%rsi
    1bb1:	4c 89 44 24 08       	mov    %r8,0x8(%rsp)
    1bb6:	48 8b 07             	mov    (%rdi),%rax
    1bb9:	ff 50 08             	callq  *0x8(%rax)
    1bbc:	4c 8b 44 24 08       	mov    0x8(%rsp),%r8
    1bc1:	4c 89 7d 78          	mov    %r15,0x78(%rbp)
    1bc5:	48 8b 85 80 00 00 00 	mov    0x80(%rbp),%rax
    1bcc:	4c 89 45 70          	mov    %r8,0x70(%rbp)
    1bd0:	48 8d 50 01          	lea    0x1(%rax),%rdx
    1bd4:	48 89 95 80 00 00 00 	mov    %rdx,0x80(%rbp)
    1bdb:	41 c6 04 07 67       	movb   $0x67,(%r15,%rax,1)
    1be0:	41 0f b7 0e          	movzwl (%r14),%ecx
    1be4:	8b 95 28 05 00 00    	mov    0x528(%rbp),%edx
    1bea:	66 c1 e9 06          	shr    $0x6,%cx
    1bee:	e9 20 f6 ff ff       	jmpq   1213 <_ZN4Code7mulPackERKN5Xbyak5Reg64ERKNS0_3XmmEiRKNS0_6RegExpERKNS0_4util4PackE+0x1213>
    1bf3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    1bf8:	83 bc 24 c8 01 00 00 	cmpl   $0x2,0x1c8(%rsp)
    1bff:	02 
    1c00:	0f 85 b5 ee ff ff    	jne    abb <_ZN4Code7mulPackERKN5Xbyak5Reg64ERKNS0_3XmmEiRKNS0_6RegExpERKNS0_4util4PackE+0xabb>
    1c06:	8b 84 24 c0 01 00 00 	mov    0x1c0(%rsp),%eax
    1c0d:	c7 84 24 80 01 00 00 	movl   $0x1,0x180(%rsp)
    1c14:	01 00 00 00 
    1c18:	89 84 24 70 01 00 00 	mov    %eax,0x170(%rsp)
    1c1f:	0f b6 84 24 c4 01 00 	movzbl 0x1c4(%rsp),%eax
    1c26:	00 
    1c27:	88 84 24 74 01 00 00 	mov    %al,0x174(%rsp)
    1c2e:	e9 88 ee ff ff       	jmpq   abb <_ZN4Code7mulPackERKN5Xbyak5Reg64ERKNS0_3XmmEiRKNS0_6RegExpERKNS0_4util4PackE+0xabb>
    1c33:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    1c38:	41 ba 04 00 00 00    	mov    $0x4,%r10d
    1c3e:	31 ff                	xor    %edi,%edi
    1c40:	e9 24 f1 ff ff       	jmpq   d69 <_ZN4Code7mulPackERKN5Xbyak5Reg64ERKNS0_3XmmEiRKNS0_6RegExpERKNS0_4util4PackE+0xd69>
    1c45:	0f 1f 00             	nopl   (%rax)
    1c48:	45 09 d7             	or     %r10d,%r15d
    1c4b:	66 85 c0             	test   %ax,%ax
    1c4e:	0f 84 71 f1 ff ff    	je     dc5 <_ZN4Code7mulPackERKN5Xbyak5Reg64ERKNS0_3XmmEiRKNS0_6RegExpERKNS0_4util4PackE+0xdc5>
    1c54:	41 83 e1 40          	and    $0x40,%r9d
    1c58:	0f 84 67 f1 ff ff    	je     dc5 <_ZN4Code7mulPackERKN5Xbyak5Reg64ERKNS0_3XmmEiRKNS0_6RegExpERKNS0_4util4PackE+0xdc5>
    1c5e:	41 83 cf 08          	or     $0x8,%r15d
    1c62:	e9 5e f1 ff ff       	jmpq   dc5 <_ZN4Code7mulPackERKN5Xbyak5Reg64ERKNS0_3XmmEiRKNS0_6RegExpERKNS0_4util4PackE+0xdc5>
    1c67:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
    1c6e:	00 00 
    1c70:	48 8b 45 78          	mov    0x78(%rbp),%rax
    1c74:	e9 b9 fd ff ff       	jmpq   1a32 <_ZN4Code7mulPackERKN5Xbyak5Reg64ERKNS0_3XmmEiRKNS0_6RegExpERKNS0_4util4PackE+0x1a32>
    1c79:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    1c80:	48 8b 45 78          	mov    0x78(%rbp),%rax
    1c84:	e9 e1 fc ff ff       	jmpq   196a <_ZN4Code7mulPackERKN5Xbyak5Reg64ERKNS0_3XmmEiRKNS0_6RegExpERKNS0_4util4PackE+0x196a>
    1c89:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    1c90:	4c 8b 7d 78          	mov    0x78(%rbp),%r15
    1c94:	e9 37 ff ff ff       	jmpq   1bd0 <_ZN4Code7mulPackERKN5Xbyak5Reg64ERKNS0_3XmmEiRKNS0_6RegExpERKNS0_4util4PackE+0x1bd0>
    1c99:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    1ca0:	4c 8b 7d 78          	mov    0x78(%rbp),%r15
    1ca4:	e9 67 fe ff ff       	jmpq   1b10 <_ZN4Code7mulPackERKN5Xbyak5Reg64ERKNS0_3XmmEiRKNS0_6RegExpERKNS0_4util4PackE+0x1b10>
    1ca9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    1cb0:	b8 44 00 00 00       	mov    $0x44,%eax
    1cb5:	e9 b5 fb ff ff       	jmpq   186f <_ZN4Code7mulPackERKN5Xbyak5Reg64ERKNS0_3XmmEiRKNS0_6RegExpERKNS0_4util4PackE+0x186f>
    1cba:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    1cc0:	b8 44 00 00 00       	mov    $0x44,%eax
    1cc5:	e9 ce f5 ff ff       	jmpq   1298 <_ZN4Code7mulPackERKN5Xbyak5Reg64ERKNS0_3XmmEiRKNS0_6RegExpERKNS0_4util4PackE+0x1298>
    1cca:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    1cd0:	84 d2                	test   %dl,%dl
    1cd2:	41 0f 95 c7          	setne  %r15b
    1cd6:	41 83 c7 42          	add    $0x42,%r15d
    1cda:	e9 65 fb ff ff       	jmpq   1844 <_ZN4Code7mulPackERKN5Xbyak5Reg64ERKNS0_3XmmEiRKNS0_6RegExpERKNS0_4util4PackE+0x1844>
    1cdf:	90                   	nop
    1ce0:	84 c0                	test   %al,%al
    1ce2:	41 0f 95 c7          	setne  %r15b
    1ce6:	41 83 c7 42          	add    $0x42,%r15d
    1cea:	e9 75 f5 ff ff       	jmpq   1264 <_ZN4Code7mulPackERKN5Xbyak5Reg64ERKNS0_3XmmEiRKNS0_6RegExpERKNS0_4util4PackE+0x1264>
    1cef:	90                   	nop
    1cf0:	be 67 00 00 00       	mov    $0x67,%esi
    1cf5:	48 89 ef             	mov    %rbp,%rdi
    1cf8:	44 89 44 24 08       	mov    %r8d,0x8(%rsp)
    1cfd:	e8 00 00 00 00       	callq  1d02 <_ZN4Code7mulPackERKN5Xbyak5Reg64ERKNS0_3XmmEiRKNS0_6RegExpERKNS0_4util4PackE+0x1d02>
    1d02:	0f b6 84 24 f8 00 00 	movzbl 0xf8(%rsp),%eax
    1d09:	00 
    1d0a:	44 8b 44 24 08       	mov    0x8(%rsp),%r8d
    1d0f:	0f b6 94 24 34 01 00 	movzbl 0x134(%rsp),%edx
    1d16:	00 
    1d17:	83 e0 3f             	and    $0x3f,%eax
    1d1a:	89 c1                	mov    %eax,%ecx
    1d1c:	83 e2 07             	and    $0x7,%edx
    1d1f:	c0 e9 03             	shr    $0x3,%cl
    1d22:	83 e1 01             	and    $0x1,%ecx
    1d25:	66 41 f7 45 00 00 10 	testw  $0x1000,0x0(%r13)
    1d2c:	0f 85 86 00 00 00    	jne    1db8 <_ZN4Code7mulPackERKN5Xbyak5Reg64ERKNS0_3XmmEiRKNS0_6RegExpERKNS0_4util4PackE+0x1db8>
    1d32:	41 f6 45 00 10       	testb  $0x10,0x0(%r13)
    1d37:	75 7f                	jne    1db8 <_ZN4Code7mulPackERKN5Xbyak5Reg64ERKNS0_3XmmEiRKNS0_6RegExpERKNS0_4util4PackE+0x1db8>
    1d39:	41 0f b6 75 04       	movzbl 0x4(%r13),%esi
    1d3e:	40 f6 c6 07          	test   $0x7,%sil
    1d42:	75 74                	jne    1db8 <_ZN4Code7mulPackERKN5Xbyak5Reg64ERKNS0_3XmmEiRKNS0_6RegExpERKNS0_4util4PackE+0x1db8>
    1d44:	83 e6 38             	and    $0x38,%esi
    1d47:	75 6f                	jne    1db8 <_ZN4Code7mulPackERKN5Xbyak5Reg64ERKNS0_3XmmEiRKNS0_6RegExpERKNS0_4util4PackE+0x1db8>
    1d49:	f6 85 f9 04 00 00 10 	testb  $0x10,0x4f9(%rbp)
    1d50:	75 66                	jne    1db8 <_ZN4Code7mulPackERKN5Xbyak5Reg64ERKNS0_3XmmEiRKNS0_6RegExpERKNS0_4util4PackE+0x1db8>
    1d52:	f6 85 f8 04 00 00 10 	testb  $0x10,0x4f8(%rbp)
    1d59:	75 5d                	jne    1db8 <_ZN4Code7mulPackERKN5Xbyak5Reg64ERKNS0_3XmmEiRKNS0_6RegExpERKNS0_4util4PackE+0x1db8>
    1d5b:	0f b6 b5 fc 04 00 00 	movzbl 0x4fc(%rbp),%esi
    1d62:	40 f6 c6 07          	test   $0x7,%sil
    1d66:	75 50                	jne    1db8 <_ZN4Code7mulPackERKN5Xbyak5Reg64ERKNS0_3XmmEiRKNS0_6RegExpERKNS0_4util4PackE+0x1db8>
    1d68:	83 e6 38             	and    $0x38,%esi
    1d6b:	75 4b                	jne    1db8 <_ZN4Code7mulPackERKN5Xbyak5Reg64ERKNS0_3XmmEiRKNS0_6RegExpERKNS0_4util4PackE+0x1db8>
    1d6d:	80 bc 24 64 01 00 00 	cmpb   $0x0,0x164(%rsp)
    1d74:	00 
    1d75:	0f 85 a5 01 00 00    	jne    1f20 <_ZN4Code7mulPackERKN5Xbyak5Reg64ERKNS0_3XmmEiRKNS0_6RegExpERKNS0_4util4PackE+0x1f20>
    1d7b:	84 d2                	test   %dl,%dl
    1d7d:	0f 85 91 ed ff ff    	jne    b14 <_ZN4Code7mulPackERKN5Xbyak5Reg64ERKNS0_3XmmEiRKNS0_6RegExpERKNS0_4util4PackE+0xb14>
    1d83:	48 83 ec 08          	sub    $0x8,%rsp
    1d87:	0f b6 c9             	movzbl %cl,%ecx
    1d8a:	48 89 ef             	mov    %rbp,%rdi
    1d8d:	41 b9 f6 00 00 00    	mov    $0xf6,%r9d
    1d93:	51                   	push   %rcx
    1d94:	4c 89 e2             	mov    %r12,%rdx
    1d97:	48 8d 8d f8 04 00 00 	lea    0x4f8(%rbp),%rcx
    1d9e:	4c 89 ee             	mov    %r13,%rsi
    1da1:	e8 00 00 00 00       	callq  1da6 <_ZN4Code7mulPackERKN5Xbyak5Reg64ERKNS0_3XmmEiRKNS0_6RegExpERKNS0_4util4PackE+0x1da6>
    1da6:	5f                   	pop    %rdi
    1da7:	41 58                	pop    %r8
    1da9:	45 31 c0             	xor    %r8d,%r8d
    1dac:	e9 7c e8 ff ff       	jmpq   62d <_ZN4Code7mulPackERKN5Xbyak5Reg64ERKNS0_3XmmEiRKNS0_6RegExpERKNS0_4util4PackE+0x62d>
    1db1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    1db8:	84 d2                	test   %dl,%dl
    1dba:	0f 85 54 ed ff ff    	jne    b14 <_ZN4Code7mulPackERKN5Xbyak5Reg64ERKNS0_3XmmEiRKNS0_6RegExpERKNS0_4util4PackE+0xb14>
    1dc0:	44 0f b6 94 24 64 01 	movzbl 0x164(%rsp),%r10d
    1dc7:	00 00 
    1dc9:	e9 ad e7 ff ff       	jmpq   57b <_ZN4Code7mulPackERKN5Xbyak5Reg64ERKNS0_3XmmEiRKNS0_6RegExpERKNS0_4util4PackE+0x57b>
    1dce:	66 90                	xchg   %ax,%ax
    1dd0:	0f b6 8c 24 80 01 00 	movzbl 0x180(%rsp),%ecx
    1dd7:	00 
    1dd8:	83 e1 1f             	and    $0x1f,%ecx
    1ddb:	80 f9 04             	cmp    $0x4,%cl
    1dde:	0f 84 9c 01 00 00    	je     1f80 <_ZN4Code7mulPackERKN5Xbyak5Reg64ERKNS0_3XmmEiRKNS0_6RegExpERKNS0_4util4PackE+0x1f80>
    1de4:	39 d0                	cmp    %edx,%eax
    1de6:	0f 84 12 ea ff ff    	je     7fe <_ZN4Code7mulPackERKN5Xbyak5Reg64ERKNS0_3XmmEiRKNS0_6RegExpERKNS0_4util4PackE+0x7fe>
    1dec:	85 c0                	test   %eax,%eax
    1dee:	0f 84 0a ea ff ff    	je     7fe <_ZN4Code7mulPackERKN5Xbyak5Reg64ERKNS0_3XmmEiRKNS0_6RegExpERKNS0_4util4PackE+0x7fe>
    1df4:	e9 2c f9 ff ff       	jmpq   1725 <_ZN4Code7mulPackERKN5Xbyak5Reg64ERKNS0_3XmmEiRKNS0_6RegExpERKNS0_4util4PackE+0x1725>
    1df9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    1e00:	0f b6 bc 24 40 01 00 	movzbl 0x140(%rsp),%edi
    1e07:	00 
    1e08:	83 e7 1f             	and    $0x1f,%edi
    1e0b:	40 80 ff 04          	cmp    $0x4,%dil
    1e0f:	0f 84 6b 01 00 00    	je     1f80 <_ZN4Code7mulPackERKN5Xbyak5Reg64ERKNS0_3XmmEiRKNS0_6RegExpERKNS0_4util4PackE+0x1f80>
    1e15:	85 c0                	test   %eax,%eax
    1e17:	0f 84 a9 e6 ff ff    	je     4c6 <_ZN4Code7mulPackERKN5Xbyak5Reg64ERKNS0_3XmmEiRKNS0_6RegExpERKNS0_4util4PackE+0x4c6>
    1e1d:	39 d0                	cmp    %edx,%eax
    1e1f:	0f 84 a1 e6 ff ff    	je     4c6 <_ZN4Code7mulPackERKN5Xbyak5Reg64ERKNS0_3XmmEiRKNS0_6RegExpERKNS0_4util4PackE+0x4c6>
    1e25:	e9 fb f8 ff ff       	jmpq   1725 <_ZN4Code7mulPackERKN5Xbyak5Reg64ERKNS0_3XmmEiRKNS0_6RegExpERKNS0_4util4PackE+0x1725>
    1e2a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    1e30:	0f b6 8c 24 00 01 00 	movzbl 0x100(%rsp),%ecx
    1e37:	00 
    1e38:	83 e1 1f             	and    $0x1f,%ecx
    1e3b:	80 f9 04             	cmp    $0x4,%cl
    1e3e:	0f 84 3c 01 00 00    	je     1f80 <_ZN4Code7mulPackERKN5Xbyak5Reg64ERKNS0_3XmmEiRKNS0_6RegExpERKNS0_4util4PackE+0x1f80>
    1e44:	85 c0                	test   %eax,%eax
    1e46:	0f 84 fd e4 ff ff    	je     349 <_ZN4Code7mulPackERKN5Xbyak5Reg64ERKNS0_3XmmEiRKNS0_6RegExpERKNS0_4util4PackE+0x349>
    1e4c:	39 d0                	cmp    %edx,%eax
    1e4e:	0f 84 f5 e4 ff ff    	je     349 <_ZN4Code7mulPackERKN5Xbyak5Reg64ERKNS0_3XmmEiRKNS0_6RegExpERKNS0_4util4PackE+0x349>
    1e54:	e9 cc f8 ff ff       	jmpq   1725 <_ZN4Code7mulPackERKN5Xbyak5Reg64ERKNS0_3XmmEiRKNS0_6RegExpERKNS0_4util4PackE+0x1725>
    1e59:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    1e60:	48 8d b5 f8 04 00 00 	lea    0x4f8(%rbp),%rsi
    1e67:	48 89 ef             	mov    %rbp,%rdi
    1e6a:	48 89 f2             	mov    %rsi,%rdx
    1e6d:	e8 00 00 00 00       	callq  1e72 <_ZN4Code7mulPackERKN5Xbyak5Reg64ERKNS0_3XmmEiRKNS0_6RegExpERKNS0_4util4PackE+0x1e72>
    1e72:	0f b7 b5 fa 04 00 00 	movzwl 0x4fa(%rbp),%esi
    1e79:	48 89 ef             	mov    %rbp,%rdi
    1e7c:	66 81 e6 ff 3f       	and    $0x3fff,%si
    1e81:	66 c1 ee 03          	shr    $0x3,%si
    1e85:	83 f6 01             	xor    $0x1,%esi
    1e88:	83 e6 01             	and    $0x1,%esi
    1e8b:	83 ce 30             	or     $0x30,%esi
    1e8e:	e8 00 00 00 00       	callq  1e93 <_ZN4Code7mulPackERKN5Xbyak5Reg64ERKNS0_3XmmEiRKNS0_6RegExpERKNS0_4util4PackE+0x1e93>
    1e93:	0f b6 85 f8 04 00 00 	movzbl 0x4f8(%rbp),%eax
    1e9a:	48 89 ef             	mov    %rbp,%rdi
    1e9d:	8d 34 c5 00 00 00 00 	lea    0x0(,%rax,8),%esi
    1ea4:	83 e0 07             	and    $0x7,%eax
    1ea7:	83 e6 38             	and    $0x38,%esi
    1eaa:	09 c6                	or     %eax,%esi
    1eac:	83 ce c0             	or     $0xffffffc0,%esi
    1eaf:	40 0f b6 f6          	movzbl %sil,%esi
    1eb3:	e8 00 00 00 00       	callq  1eb8 <_ZN4Code7mulPackERKN5Xbyak5Reg64ERKNS0_3XmmEiRKNS0_6RegExpERKNS0_4util4PackE+0x1eb8>
    1eb8:	e9 e4 e9 ff ff       	jmpq   8a1 <_ZN4Code7mulPackERKN5Xbyak5Reg64ERKNS0_3XmmEiRKNS0_6RegExpERKNS0_4util4PackE+0x8a1>
    1ebd:	0f 1f 00             	nopl   (%rax)
    1ec0:	83 bc 24 48 01 00 00 	cmpl   $0x2,0x148(%rsp)
    1ec7:	02 
    1ec8:	0f 85 6d e6 ff ff    	jne    53b <_ZN4Code7mulPackERKN5Xbyak5Reg64ERKNS0_3XmmEiRKNS0_6RegExpERKNS0_4util4PackE+0x53b>
    1ece:	8b 84 24 40 01 00 00 	mov    0x140(%rsp),%eax
    1ed5:	c7 84 24 00 01 00 00 	movl   $0x1,0x100(%rsp)
    1edc:	01 00 00 00 
    1ee0:	89 84 24 f0 00 00 00 	mov    %eax,0xf0(%rsp)
    1ee7:	0f b6 84 24 44 01 00 	movzbl 0x144(%rsp),%eax
    1eee:	00 
    1eef:	88 84 24 f4 00 00 00 	mov    %al,0xf4(%rsp)
    1ef6:	e9 40 e6 ff ff       	jmpq   53b <_ZN4Code7mulPackERKN5Xbyak5Reg64ERKNS0_3XmmEiRKNS0_6RegExpERKNS0_4util4PackE+0x53b>
    1efb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    1f00:	41 f6 45 00 10       	testb  $0x10,0x0(%r13)
    1f05:	0f 85 b5 fe ff ff    	jne    1dc0 <_ZN4Code7mulPackERKN5Xbyak5Reg64ERKNS0_3XmmEiRKNS0_6RegExpERKNS0_4util4PackE+0x1dc0>
    1f0b:	41 0f b6 75 04       	movzbl 0x4(%r13),%esi
    1f10:	89 f2                	mov    %esi,%edx
    1f12:	83 e2 07             	and    $0x7,%edx
    1f15:	0f 85 a5 fe ff ff    	jne    1dc0 <_ZN4Code7mulPackERKN5Xbyak5Reg64ERKNS0_3XmmEiRKNS0_6RegExpERKNS0_4util4PackE+0x1dc0>
    1f1b:	e9 24 fe ff ff       	jmpq   1d44 <_ZN4Code7mulPackERKN5Xbyak5Reg64ERKNS0_3XmmEiRKNS0_6RegExpERKNS0_4util4PackE+0x1d44>
    1f20:	84 d2                	test   %dl,%dl
    1f22:	0f 84 58 e6 ff ff    	je     580 <_ZN4Code7mulPackERKN5Xbyak5Reg64ERKNS0_3XmmEiRKNS0_6RegExpERKNS0_4util4PackE+0x580>
    1f28:	e9 e7 eb ff ff       	jmpq   b14 <_ZN4Code7mulPackERKN5Xbyak5Reg64ERKNS0_3XmmEiRKNS0_6RegExpERKNS0_4util4PackE+0xb14>
    1f2d:	48 8b 5c 24 20       	mov    0x20(%rsp),%rbx
    1f32:	48 89 ef             	mov    %rbp,%rdi
    1f35:	41 b8 02 00 00 00    	mov    $0x2,%r8d
    1f3b:	31 d2                	xor    %edx,%edx
    1f3d:	b9 10 00 00 00       	mov    $0x10,%ecx
    1f42:	48 8b 34 c3          	mov    (%rbx,%rax,8),%rsi
    1f46:	e8 00 00 00 00       	callq  1f4b <_ZN4Code7mulPackERKN5Xbyak5Reg64ERKNS0_3XmmEiRKNS0_6RegExpERKNS0_4util4PackE+0x1f4b>
    1f4b:	48 81 c4 f8 01 00 00 	add    $0x1f8,%rsp
    1f52:	5b                   	pop    %rbx
    1f53:	5d                   	pop    %rbp
    1f54:	41 5c                	pop    %r12
    1f56:	41 5d                	pop    %r13
    1f58:	41 5e                	pop    %r14
    1f5a:	41 5f                	pop    %r15
    1f5c:	c3                   	retq   
    1f5d:	45 31 c0             	xor    %r8d,%r8d
    1f60:	31 c9                	xor    %ecx,%ecx
    1f62:	e9 0a f2 ff ff       	jmpq   1171 <_ZN4Code7mulPackERKN5Xbyak5Reg64ERKNS0_3XmmEiRKNS0_6RegExpERKNS0_4util4PackE+0x1171>
    1f67:	e8 00 00 00 00       	callq  1f6c <_ZN4Code7mulPackERKN5Xbyak5Reg64ERKNS0_3XmmEiRKNS0_6RegExpERKNS0_4util4PackE+0x1f6c>
    1f6c:	e8 00 00 00 00       	callq  1f71 <_ZN4Code7mulPackERKN5Xbyak5Reg64ERKNS0_3XmmEiRKNS0_6RegExpERKNS0_4util4PackE+0x1f71>
    1f71:	e8 00 00 00 00       	callq  1f76 <_ZN4Code7mulPackERKN5Xbyak5Reg64ERKNS0_3XmmEiRKNS0_6RegExpERKNS0_4util4PackE+0x1f76>
    1f76:	e8 00 00 00 00       	callq  1f7b <_ZN4Code7mulPackERKN5Xbyak5Reg64ERKNS0_3XmmEiRKNS0_6RegExpERKNS0_4util4PackE+0x1f7b>
    1f7b:	e8 00 00 00 00       	callq  1f80 <_ZN4Code7mulPackERKN5Xbyak5Reg64ERKNS0_3XmmEiRKNS0_6RegExpERKNS0_4util4PackE+0x1f80>
    1f80:	bf 10 00 00 00       	mov    $0x10,%edi
    1f85:	e8 00 00 00 00       	callq  1f8a <_ZN4Code7mulPackERKN5Xbyak5Reg64ERKNS0_3XmmEiRKNS0_6RegExpERKNS0_4util4PackE+0x1f8a>
    1f8a:	48 8b 15 00 00 00 00 	mov    0x0(%rip),%rdx        # 1f91 <_ZN4Code7mulPackERKN5Xbyak5Reg64ERKNS0_3XmmEiRKNS0_6RegExpERKNS0_4util4PackE+0x1f91>
    1f91:	48 8b 35 00 00 00 00 	mov    0x0(%rip),%rsi        # 1f98 <_ZN4Code7mulPackERKN5Xbyak5Reg64ERKNS0_3XmmEiRKNS0_6RegExpERKNS0_4util4PackE+0x1f98>
    1f98:	48 89 c7             	mov    %rax,%rdi
    1f9b:	48 8b 05 00 00 00 00 	mov    0x0(%rip),%rax        # 1fa2 <_ZN4Code7mulPackERKN5Xbyak5Reg64ERKNS0_3XmmEiRKNS0_6RegExpERKNS0_4util4PackE+0x1fa2>
    1fa2:	c7 47 08 04 00 00 00 	movl   $0x4,0x8(%rdi)
    1fa9:	48 83 c0 10          	add    $0x10,%rax
    1fad:	48 89 07             	mov    %rax,(%rdi)
    1fb0:	e8 00 00 00 00       	callq  1fb5 <_ZN4Code7mulPackERKN5Xbyak5Reg64ERKNS0_3XmmEiRKNS0_6RegExpERKNS0_4util4PackE+0x1fb5>
    1fb5:	e8 00 00 00 00       	callq  1fba <_ZStL8__ioinit+0x1392>

Disassembly of section .text._ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE:

0000000000000000 <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE>:
       0:	f3 0f 1e fa          	endbr64 
       4:	41 57                	push   %r15
       6:	41 56                	push   %r14
       8:	41 55                	push   %r13
       a:	49 89 d5             	mov    %rdx,%r13
       d:	41 54                	push   %r12
       f:	4d 89 cc             	mov    %r9,%r12
      12:	55                   	push   %rbp
      13:	48 89 fd             	mov    %rdi,%rbp
      16:	53                   	push   %rbx
      17:	4c 89 c3             	mov    %r8,%rbx
      1a:	48 81 ec 88 01 00 00 	sub    $0x188,%rsp
      21:	48 89 74 24 38       	mov    %rsi,0x38(%rsp)
      26:	89 4c 24 08          	mov    %ecx,0x8(%rsp)
      2a:	66 f7 02 00 04       	testw  $0x400,(%rdx)
      2f:	74 0a                	je     3b <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x3b>
      31:	be 66 00 00 00       	mov    $0x66,%esi
      36:	e8 00 00 00 00       	callq  3b <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x3b>
      3b:	4c 8d b5 08 05 00 00 	lea    0x508(%rbp),%r14
      42:	4c 89 ea             	mov    %r13,%rdx
      45:	48 89 ef             	mov    %rbp,%rdi
      48:	4c 89 f6             	mov    %r14,%rsi
      4b:	e8 00 00 00 00       	callq  50 <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x50>
      50:	48 8b 95 80 00 00 00 	mov    0x80(%rbp),%rdx
      57:	4c 8b 45 70          	mov    0x70(%rbp),%r8
      5b:	4c 39 c2             	cmp    %r8,%rdx
      5e:	0f 82 2c 03 00 00    	jb     390 <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x390>
      64:	83 7d 20 03          	cmpl   $0x3,0x20(%rbp)
      68:	0f 85 d0 27 00 00    	jne    283e <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x283e>
      6e:	48 8b 7d 68          	mov    0x68(%rbp),%rdi
      72:	4d 01 c0             	add    %r8,%r8
      75:	b8 00 10 00 00       	mov    $0x1000,%eax
      7a:	49 81 f8 00 10 00 00 	cmp    $0x1000,%r8
      81:	4c 0f 42 c0          	cmovb  %rax,%r8
      85:	48 8b 07             	mov    (%rdi),%rax
      88:	4c 89 44 24 10       	mov    %r8,0x10(%rsp)
      8d:	4c 89 c6             	mov    %r8,%rsi
      90:	ff 10                	callq  *(%rax)
      92:	4c 8b 44 24 10       	mov    0x10(%rsp),%r8
      97:	48 85 c0             	test   %rax,%rax
      9a:	49 89 c7             	mov    %rax,%r15
      9d:	0f 84 14 28 00 00    	je     28b7 <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x28b7>
      a3:	31 d2                	xor    %edx,%edx
      a5:	48 83 bd 80 00 00 00 	cmpq   $0x0,0x80(%rbp)
      ac:	00 
      ad:	74 1a                	je     c9 <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0xc9>
      af:	90                   	nop
      b0:	48 8b 45 78          	mov    0x78(%rbp),%rax
      b4:	0f b6 04 10          	movzbl (%rax,%rdx,1),%eax
      b8:	41 88 04 17          	mov    %al,(%r15,%rdx,1)
      bc:	48 83 c2 01          	add    $0x1,%rdx
      c0:	48 39 95 80 00 00 00 	cmp    %rdx,0x80(%rbp)
      c7:	77 e7                	ja     b0 <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0xb0>
      c9:	48 8b 7d 68          	mov    0x68(%rbp),%rdi
      cd:	48 8b 75 78          	mov    0x78(%rbp),%rsi
      d1:	4c 89 44 24 10       	mov    %r8,0x10(%rsp)
      d6:	48 8b 17             	mov    (%rdi),%rdx
      d9:	ff 52 08             	callq  *0x8(%rdx)
      dc:	4c 8b 44 24 10       	mov    0x10(%rsp),%r8
      e1:	4c 89 7d 78          	mov    %r15,0x78(%rbp)
      e5:	48 8b 95 80 00 00 00 	mov    0x80(%rbp),%rdx
      ec:	4c 89 45 70          	mov    %r8,0x70(%rbp)
      f0:	48 8d 4a 01          	lea    0x1(%rdx),%rcx
      f4:	be 7e 00 00 00       	mov    $0x7e,%esi
      f9:	48 89 ef             	mov    %rbp,%rdi
      fc:	48 89 8d 80 00 00 00 	mov    %rcx,0x80(%rbp)
     103:	41 c6 04 17 0f       	movb   $0xf,(%r15,%rdx,1)
     108:	e8 00 00 00 00       	callq  10d <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x10d>
     10d:	45 0f b6 6d 00       	movzbl 0x0(%r13),%r13d
     112:	0f b6 85 08 05 00 00 	movzbl 0x508(%rbp),%eax
     119:	48 8b 95 80 00 00 00 	mov    0x80(%rbp),%rdx
     120:	4c 8b 45 70          	mov    0x70(%rbp),%r8
     124:	41 c1 e5 03          	shl    $0x3,%r13d
     128:	83 e0 07             	and    $0x7,%eax
     12b:	41 83 e5 38          	and    $0x38,%r13d
     12f:	41 09 c5             	or     %eax,%r13d
     132:	41 83 cd c0          	or     $0xffffffc0,%r13d
     136:	4c 39 c2             	cmp    %r8,%rdx
     139:	0f 82 41 02 00 00    	jb     380 <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x380>
     13f:	83 7d 20 03          	cmpl   $0x3,0x20(%rbp)
     143:	0f 85 f5 26 00 00    	jne    283e <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x283e>
     149:	4f 8d 3c 00          	lea    (%r8,%r8,1),%r15
     14d:	48 8b 7d 68          	mov    0x68(%rbp),%rdi
     151:	b8 00 10 00 00       	mov    $0x1000,%eax
     156:	49 81 ff 00 10 00 00 	cmp    $0x1000,%r15
     15d:	4c 0f 42 f8          	cmovb  %rax,%r15
     161:	48 8b 07             	mov    (%rdi),%rax
     164:	4c 89 fe             	mov    %r15,%rsi
     167:	ff 10                	callq  *(%rax)
     169:	48 85 c0             	test   %rax,%rax
     16c:	0f 84 45 27 00 00    	je     28b7 <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x28b7>
     172:	31 d2                	xor    %edx,%edx
     174:	48 83 bd 80 00 00 00 	cmpq   $0x0,0x80(%rbp)
     17b:	00 
     17c:	74 1a                	je     198 <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x198>
     17e:	66 90                	xchg   %ax,%ax
     180:	48 8b 4d 78          	mov    0x78(%rbp),%rcx
     184:	0f b6 0c 11          	movzbl (%rcx,%rdx,1),%ecx
     188:	88 0c 10             	mov    %cl,(%rax,%rdx,1)
     18b:	48 83 c2 01          	add    $0x1,%rdx
     18f:	48 39 95 80 00 00 00 	cmp    %rdx,0x80(%rbp)
     196:	77 e8                	ja     180 <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x180>
     198:	48 8b 7d 68          	mov    0x68(%rbp),%rdi
     19c:	48 8b 75 78          	mov    0x78(%rbp),%rsi
     1a0:	48 89 44 24 10       	mov    %rax,0x10(%rsp)
     1a5:	48 8b 17             	mov    (%rdi),%rdx
     1a8:	ff 52 08             	callq  *0x8(%rdx)
     1ab:	48 8b 44 24 10       	mov    0x10(%rsp),%rax
     1b0:	4c 89 7d 70          	mov    %r15,0x70(%rbp)
     1b4:	48 8b 95 80 00 00 00 	mov    0x80(%rbp),%rdx
     1bb:	48 89 45 78          	mov    %rax,0x78(%rbp)
     1bf:	48 8d 4a 01          	lea    0x1(%rdx),%rcx
     1c3:	48 8d 7c 24 40       	lea    0x40(%rsp),%rdi
     1c8:	4c 89 f6             	mov    %r14,%rsi
     1cb:	48 89 8d 80 00 00 00 	mov    %rcx,0x80(%rbp)
     1d2:	44 88 2c 10          	mov    %r13b,(%rax,%rdx,1)
     1d6:	48 63 44 24 08       	movslq 0x8(%rsp),%rax
     1db:	ba 01 00 00 00       	mov    $0x1,%edx
     1e0:	48 89 44 24 30       	mov    %rax,0x30(%rsp)
     1e5:	e8 00 00 00 00       	callq  1ea <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x1ea>
     1ea:	0f b6 54 24 4c       	movzbl 0x4c(%rsp),%edx
     1ef:	0f b6 74 24 4b       	movzbl 0x4b(%rsp),%esi
     1f4:	66 0f 6f 74 24 40    	movdqa 0x40(%rsp),%xmm6
     1fa:	66 0f 6f 7c 24 50    	movdqa 0x50(%rsp),%xmm7
     200:	0f b6 44 24 48       	movzbl 0x48(%rsp),%eax
     205:	0f b7 7c 24 48       	movzwl 0x48(%rsp),%edi
     20a:	41 89 d3             	mov    %edx,%r11d
     20d:	40 c0 ee 06          	shr    $0x6,%sil
     211:	c0 ea 03             	shr    $0x3,%dl
     214:	44 8b 54 24 50       	mov    0x50(%rsp),%r10d
     219:	4c 8b 44 24 58       	mov    0x58(%rsp),%r8
     21e:	83 e6 01             	and    $0x1,%esi
     221:	44 0f b7 6c 24 4a    	movzwl 0x4a(%rsp),%r13d
     227:	83 e0 3f             	and    $0x3f,%eax
     22a:	66 c1 ef 06          	shr    $0x6,%di
     22e:	83 e2 07             	and    $0x7,%edx
     231:	0f 29 74 24 60       	movaps %xmm6,0x60(%rsp)
     236:	41 83 e3 07          	and    $0x7,%r11d
     23a:	0f 29 7c 24 70       	movaps %xmm7,0x70(%rsp)
     23f:	66 41 81 e5 ff 3f    	and    $0x3fff,%r13w
     245:	75 0e                	jne    255 <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x255>
     247:	45 31 d2             	xor    %r10d,%r10d
     24a:	31 d2                	xor    %edx,%edx
     24c:	45 31 db             	xor    %r11d,%r11d
     24f:	31 f6                	xor    %esi,%esi
     251:	31 ff                	xor    %edi,%edi
     253:	31 c0                	xor    %eax,%eax
     255:	0f b7 ff             	movzwl %di,%edi
     258:	0f b6 c0             	movzbl %al,%eax
     25b:	41 c1 e5 10          	shl    $0x10,%r13d
     25f:	8b 8d e0 03 00 00    	mov    0x3e0(%rbp),%ecx
     265:	c1 e7 06             	shl    $0x6,%edi
     268:	c1 e2 03             	shl    $0x3,%edx
     26b:	4c 03 44 24 30       	add    0x30(%rsp),%r8
     270:	44 89 54 24 70       	mov    %r10d,0x70(%rsp)
     275:	09 f8                	or     %edi,%eax
     277:	c1 e6 1e             	shl    $0x1e,%esi
     27a:	41 09 d3             	or     %edx,%r11d
     27d:	0f b6 54 24 6c       	movzbl 0x6c(%rsp),%edx
     282:	44 09 e8             	or     %r13d,%eax
     285:	41 83 e3 3f          	and    $0x3f,%r11d
     289:	c1 e1 10             	shl    $0x10,%ecx
     28c:	4c 89 44 24 78       	mov    %r8,0x78(%rsp)
     291:	09 c6                	or     %eax,%esi
     293:	8b 44 24 68          	mov    0x68(%rsp),%eax
     297:	83 e2 c0             	and    $0xffffffc0,%edx
     29a:	44 8b 8c 24 c0 00 00 	mov    0xc0(%rsp),%r9d
     2a1:	00 
     2a2:	81 e6 ff ff ff 7f    	and    $0x7fffffff,%esi
     2a8:	41 09 d3             	or     %edx,%r11d
     2ab:	81 e1 00 00 ff 3f    	and    $0x3fff0000,%ecx
     2b1:	44 0f b6 bd e4 03 00 	movzbl 0x3e4(%rbp),%r15d
     2b8:	00 
     2b9:	25 00 00 00 80       	and    $0x80000000,%eax
     2be:	44 88 5c 24 6c       	mov    %r11b,0x6c(%rsp)
     2c3:	66 0f 6f 4c 24 70    	movdqa 0x70(%rsp),%xmm1
     2c9:	83 c9 40             	or     $0x40,%ecx
     2cc:	09 c6                	or     %eax,%esi
     2ce:	41 81 e1 00 00 00 80 	and    $0x80000000,%r9d
     2d5:	80 a4 24 c4 00 00 00 	andb   $0xc0,0xc4(%rsp)
     2dc:	c0 
     2dd:	89 74 24 68          	mov    %esi,0x68(%rsp)
     2e1:	44 09 c9             	or     %r9d,%ecx
     2e4:	66 0f 6f 44 24 60    	movdqa 0x60(%rsp),%xmm0
     2ea:	89 8c 24 c0 00 00 00 	mov    %ecx,0xc0(%rsp)
     2f1:	0f 11 84 24 c8 00 00 	movups %xmm0,0xc8(%rsp)
     2f8:	00 
     2f9:	0f b7 84 24 ca 00 00 	movzwl 0xca(%rsp),%eax
     300:	00 
     301:	48 c7 84 24 e8 00 00 	movq   $0x0,0xe8(%rsp)
     308:	00 00 00 00 00 
     30d:	25 ff 3f 00 00       	and    $0x3fff,%eax
     312:	44 88 bc 24 f4 00 00 	mov    %r15b,0xf4(%rsp)
     319:	00 
     31a:	c7 84 24 f0 00 00 00 	movl   $0x0,0xf0(%rsp)
     321:	00 00 00 00 
     325:	0f 11 8c 24 d8 00 00 	movups %xmm1,0xd8(%rsp)
     32c:	00 
     32d:	83 f8 7f             	cmp    $0x7f,%eax
     330:	0f 87 7c 25 00 00    	ja     28b2 <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x28b2>
     336:	0f b7 94 24 d2 00 00 	movzwl 0xd2(%rsp),%edx
     33d:	00 
     33e:	81 e2 ff 3f 00 00    	and    $0x3fff,%edx
     344:	8d 4a ff             	lea    -0x1(%rdx),%ecx
     347:	83 f9 3f             	cmp    $0x3f,%ecx
     34a:	0f 86 a0 23 00 00    	jbe    26f0 <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x26f0>
     350:	48 8d 94 24 c0 00 00 	lea    0xc0(%rsp),%rdx
     357:	00 
     358:	4c 89 f6             	mov    %r14,%rsi
     35b:	48 89 ef             	mov    %rbp,%rdi
     35e:	e8 00 00 00 00       	callq  363 <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x363>
     363:	0f b7 85 f8 04 00 00 	movzwl 0x4f8(%rbp),%eax
     36a:	89 c2                	mov    %eax,%edx
     36c:	66 c1 ea 06          	shr    $0x6,%dx
     370:	a8 80                	test   $0x80,%al
     372:	75 2c                	jne    3a0 <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x3a0>
     374:	e8 00 00 00 00       	callq  379 <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x379>
     379:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
     380:	48 8b 45 78          	mov    0x78(%rbp),%rax
     384:	e9 36 fe ff ff       	jmpq   1bf <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x1bf>
     389:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
     390:	4c 8b 7d 78          	mov    0x78(%rbp),%r15
     394:	e9 57 fd ff ff       	jmpq   f0 <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0xf0>
     399:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
     3a0:	48 8d 85 f8 04 00 00 	lea    0x4f8(%rbp),%rax
     3a7:	83 e2 01             	and    $0x1,%edx
     3aa:	48 89 44 24 10       	mov    %rax,0x10(%rsp)
     3af:	0f 84 eb 02 00 00    	je     6a0 <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x6a0>
     3b5:	83 bd 28 05 00 00 01 	cmpl   $0x1,0x528(%rbp)
     3bc:	0f 84 fa 24 00 00    	je     28bc <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x28bc>
     3c2:	4c 8d bd f8 04 00 00 	lea    0x4f8(%rbp),%r15
     3c9:	48 89 ef             	mov    %rbp,%rdi
     3cc:	4c 89 fa             	mov    %r15,%rdx
     3cf:	4c 89 fe             	mov    %r15,%rsi
     3d2:	e8 00 00 00 00       	callq  3d7 <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x3d7>
     3d7:	0f b7 b5 fa 04 00 00 	movzwl 0x4fa(%rbp),%esi
     3de:	48 89 ef             	mov    %rbp,%rdi
     3e1:	66 81 e6 ff 3f       	and    $0x3fff,%si
     3e6:	66 c1 ee 03          	shr    $0x3,%si
     3ea:	83 f6 01             	xor    $0x1,%esi
     3ed:	83 e6 01             	and    $0x1,%esi
     3f0:	83 ce 32             	or     $0x32,%esi
     3f3:	e8 00 00 00 00       	callq  3f8 <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x3f8>
     3f8:	45 31 c9             	xor    %r9d,%r9d
     3fb:	45 31 c0             	xor    %r8d,%r8d
     3fe:	31 c9                	xor    %ecx,%ecx
     400:	0f b6 95 f8 04 00 00 	movzbl 0x4f8(%rbp),%edx
     407:	4c 89 fe             	mov    %r15,%rsi
     40a:	48 89 ef             	mov    %rbp,%rdi
     40d:	83 e2 1f             	and    $0x1f,%edx
     410:	e8 00 00 00 00       	callq  415 <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x415>
     415:	48 8b 84 24 c0 01 00 	mov    0x1c0(%rsp),%rax
     41c:	00 
     41d:	48 c7 44 24 08 00 00 	movq   $0x0,0x8(%rsp)
     424:	00 00 
     426:	48 83 78 78 00       	cmpq   $0x0,0x78(%rax)
     42b:	0f 84 6b 0d 00 00    	je     119c <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x119c>
     431:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
     438:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
     43d:	0f b6 73 0b          	movzbl 0xb(%rbx),%esi
     441:	f3 0f 6f 03          	movdqu (%rbx),%xmm0
     445:	f3 0f 6f 4b 10       	movdqu 0x10(%rbx),%xmm1
     44a:	4c 8d 0c c5 00 00 00 	lea    0x0(,%rax,8),%r9
     451:	00 
     452:	0f b6 43 0c          	movzbl 0xc(%rbx),%eax
     456:	0f b6 7b 08          	movzbl 0x8(%rbx),%edi
     45a:	40 c0 ee 06          	shr    $0x6,%sil
     45e:	44 0f b7 43 08       	movzwl 0x8(%rbx),%r8d
     463:	0f b7 53 0a          	movzwl 0xa(%rbx),%edx
     467:	83 e6 01             	and    $0x1,%esi
     46a:	0f 29 84 24 80 00 00 	movaps %xmm0,0x80(%rsp)
     471:	00 
     472:	41 89 c6             	mov    %eax,%r14d
     475:	c0 e8 03             	shr    $0x3,%al
     478:	44 8b 6b 10          	mov    0x10(%rbx),%r13d
     47c:	4c 8b 7b 18          	mov    0x18(%rbx),%r15
     480:	83 e7 3f             	and    $0x3f,%edi
     483:	66 41 c1 e8 06       	shr    $0x6,%r8w
     488:	41 83 e6 07          	and    $0x7,%r14d
     48c:	83 e0 07             	and    $0x7,%eax
     48f:	0f 29 8c 24 90 00 00 	movaps %xmm1,0x90(%rsp)
     496:	00 
     497:	66 81 e2 ff 3f       	and    $0x3fff,%dx
     49c:	75 0f                	jne    4ad <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x4ad>
     49e:	45 31 ed             	xor    %r13d,%r13d
     4a1:	31 c0                	xor    %eax,%eax
     4a3:	45 31 f6             	xor    %r14d,%r14d
     4a6:	31 f6                	xor    %esi,%esi
     4a8:	45 31 c0             	xor    %r8d,%r8d
     4ab:	31 ff                	xor    %edi,%edi
     4ad:	45 0f b7 c0          	movzwl %r8w,%r8d
     4b1:	40 0f b6 ff          	movzbl %dil,%edi
     4b5:	c1 e2 10             	shl    $0x10,%edx
     4b8:	4d 01 f9             	add    %r15,%r9
     4bb:	41 c1 e0 06          	shl    $0x6,%r8d
     4bf:	c1 e0 03             	shl    $0x3,%eax
     4c2:	8b 8d e0 03 00 00    	mov    0x3e0(%rbp),%ecx
     4c8:	44 8b 94 24 00 01 00 	mov    0x100(%rsp),%r10d
     4cf:	00 
     4d0:	44 09 c7             	or     %r8d,%edi
     4d3:	41 09 c6             	or     %eax,%r14d
     4d6:	c1 e6 1e             	shl    $0x1e,%esi
     4d9:	0f b6 84 24 8c 00 00 	movzbl 0x8c(%rsp),%eax
     4e0:	00 
     4e1:	09 d7                	or     %edx,%edi
     4e3:	8b 94 24 88 00 00 00 	mov    0x88(%rsp),%edx
     4ea:	41 83 e6 3f          	and    $0x3f,%r14d
     4ee:	c1 e1 10             	shl    $0x10,%ecx
     4f1:	09 f7                	or     %esi,%edi
     4f3:	83 e0 c0             	and    $0xffffffc0,%eax
     4f6:	81 e1 00 00 ff 3f    	and    $0x3fff0000,%ecx
     4fc:	41 81 e2 00 00 00 80 	and    $0x80000000,%r10d
     503:	81 e7 ff ff ff 7f    	and    $0x7fffffff,%edi
     509:	81 e2 00 00 00 80    	and    $0x80000000,%edx
     50f:	41 09 c6             	or     %eax,%r14d
     512:	83 c9 40             	or     $0x40,%ecx
     515:	09 d7                	or     %edx,%edi
     517:	44 88 b4 24 8c 00 00 	mov    %r14b,0x8c(%rsp)
     51e:	00 
     51f:	44 09 d1             	or     %r10d,%ecx
     522:	44 0f b6 9d e4 03 00 	movzbl 0x3e4(%rbp),%r11d
     529:	00 
     52a:	89 bc 24 88 00 00 00 	mov    %edi,0x88(%rsp)
     531:	66 0f 6f 94 24 80 00 	movdqa 0x80(%rsp),%xmm2
     538:	00 00 
     53a:	44 89 ac 24 90 00 00 	mov    %r13d,0x90(%rsp)
     541:	00 
     542:	0f 11 94 24 08 01 00 	movups %xmm2,0x108(%rsp)
     549:	00 
     54a:	0f b7 84 24 0a 01 00 	movzwl 0x10a(%rsp),%eax
     551:	00 
     552:	4c 89 8c 24 98 00 00 	mov    %r9,0x98(%rsp)
     559:	00 
     55a:	66 0f 6f 9c 24 90 00 	movdqa 0x90(%rsp),%xmm3
     561:	00 00 
     563:	89 8c 24 00 01 00 00 	mov    %ecx,0x100(%rsp)
     56a:	89 c1                	mov    %eax,%ecx
     56c:	25 ff 3f 00 00       	and    $0x3fff,%eax
     571:	80 a4 24 04 01 00 00 	andb   $0xc0,0x104(%rsp)
     578:	c0 
     579:	66 81 e1 ff 3f       	and    $0x3fff,%cx
     57e:	48 c7 84 24 28 01 00 	movq   $0x0,0x128(%rsp)
     585:	00 00 00 00 00 
     58a:	c7 84 24 30 01 00 00 	movl   $0x0,0x130(%rsp)
     591:	00 00 00 00 
     595:	44 88 9c 24 34 01 00 	mov    %r11b,0x134(%rsp)
     59c:	00 
     59d:	0f 11 9c 24 18 01 00 	movups %xmm3,0x118(%rsp)
     5a4:	00 
     5a5:	83 f8 7f             	cmp    $0x7f,%eax
     5a8:	0f 87 04 23 00 00    	ja     28b2 <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x28b2>
     5ae:	0f b7 94 24 12 01 00 	movzwl 0x112(%rsp),%edx
     5b5:	00 
     5b6:	89 d6                	mov    %edx,%esi
     5b8:	81 e2 ff 3f 00 00    	and    $0x3fff,%edx
     5be:	8d 7a ff             	lea    -0x1(%rdx),%edi
     5c1:	66 81 e6 ff 3f       	and    $0x3fff,%si
     5c6:	83 ff 3f             	cmp    $0x3f,%edi
     5c9:	0f 86 c1 17 00 00    	jbe    1d90 <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x1d90>
     5cf:	41 0f b7 44 24 02    	movzwl 0x2(%r12),%eax
     5d5:	0f b7 95 fa 04 00 00 	movzwl 0x4fa(%rbp),%edx
     5dc:	25 ff 3f 00 00       	and    $0x3fff,%eax
     5e1:	81 e2 ff 3f 00 00    	and    $0x3fff,%edx
     5e7:	39 d0                	cmp    %edx,%eax
     5e9:	0f 85 d2 22 00 00    	jne    28c1 <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x28c1>
     5ef:	83 f8 40             	cmp    $0x40,%eax
     5f2:	41 bd 60 42 00 00    	mov    $0x4260,%r13d
     5f8:	f3 0f 6f a4 24 08 01 	movdqu 0x108(%rsp),%xmm4
     5ff:	00 00 
     601:	f3 0f 6f ac 24 18 01 	movdqu 0x118(%rsp),%xmm5
     608:	00 00 
     60a:	41 b8 60 22 00 00    	mov    $0x2260,%r8d
     610:	45 0f 45 e8          	cmovne %r8d,%r13d
     614:	0f 29 a4 24 40 01 00 	movaps %xmm4,0x140(%rsp)
     61b:	00 
     61c:	0f 29 ac 24 50 01 00 	movaps %xmm5,0x150(%rsp)
     623:	00 
     624:	40 f6 c6 60          	test   $0x60,%sil
     628:	74 09                	je     633 <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x633>
     62a:	66 85 c9             	test   %cx,%cx
     62d:	0f 84 ed 1c 00 00    	je     2320 <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x2320>
     633:	66 83 f9 20          	cmp    $0x20,%cx
     637:	0f 84 63 16 00 00    	je     1ca0 <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x1ca0>
     63d:	66 83 fe 20          	cmp    $0x20,%si
     641:	0f 84 59 16 00 00    	je     1ca0 <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x1ca0>
     647:	0f b6 84 24 48 01 00 	movzbl 0x148(%rsp),%eax
     64e:	00 
     64f:	83 e0 3f             	and    $0x3f,%eax
     652:	89 c1                	mov    %eax,%ecx
     654:	c0 e9 03             	shr    $0x3,%cl
     657:	83 e1 01             	and    $0x1,%ecx
     65a:	66 41 f7 04 24 00 10 	testw  $0x1000,(%r12)
     661:	0f 85 22 01 00 00    	jne    789 <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x789>
     667:	41 f6 04 24 10       	testb  $0x10,(%r12)
     66c:	0f 85 0e 01 00 00    	jne    780 <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x780>
     672:	41 0f b6 74 24 04    	movzbl 0x4(%r12),%esi
     678:	89 f2                	mov    %esi,%edx
     67a:	83 e2 07             	and    $0x7,%edx
     67d:	0f 85 fd 00 00 00    	jne    780 <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x780>
     683:	83 e6 38             	and    $0x38,%esi
     686:	74 78                	je     700 <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x700>
     688:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
     68f:	00 
     690:	84 d2                	test   %dl,%dl
     692:	0f 84 e8 00 00 00    	je     780 <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x780>
     698:	e8 00 00 00 00       	callq  69d <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x69d>
     69d:	0f 1f 00             	nopl   (%rax)
     6a0:	48 8d b5 f8 04 00 00 	lea    0x4f8(%rbp),%rsi
     6a7:	48 89 ef             	mov    %rbp,%rdi
     6aa:	48 89 f2             	mov    %rsi,%rdx
     6ad:	e8 00 00 00 00       	callq  6b2 <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x6b2>
     6b2:	0f b7 b5 fa 04 00 00 	movzwl 0x4fa(%rbp),%esi
     6b9:	48 89 ef             	mov    %rbp,%rdi
     6bc:	66 81 e6 ff 3f       	and    $0x3fff,%si
     6c1:	66 c1 ee 03          	shr    $0x3,%si
     6c5:	83 f6 01             	xor    $0x1,%esi
     6c8:	83 e6 01             	and    $0x1,%esi
     6cb:	83 ce 30             	or     $0x30,%esi
     6ce:	e8 00 00 00 00       	callq  6d3 <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x6d3>
     6d3:	0f b6 85 f8 04 00 00 	movzbl 0x4f8(%rbp),%eax
     6da:	48 89 ef             	mov    %rbp,%rdi
     6dd:	8d 34 c5 00 00 00 00 	lea    0x0(,%rax,8),%esi
     6e4:	83 e0 07             	and    $0x7,%eax
     6e7:	83 e6 38             	and    $0x38,%esi
     6ea:	09 c6                	or     %eax,%esi
     6ec:	83 ce c0             	or     $0xffffffc0,%esi
     6ef:	40 0f b6 f6          	movzbl %sil,%esi
     6f3:	e8 00 00 00 00       	callq  6f8 <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x6f8>
     6f8:	e9 18 fd ff ff       	jmpq   415 <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x415>
     6fd:	0f 1f 00             	nopl   (%rax)
     700:	f6 85 f9 04 00 00 10 	testb  $0x10,0x4f9(%rbp)
     707:	75 87                	jne    690 <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x690>
     709:	f6 85 f8 04 00 00 10 	testb  $0x10,0x4f8(%rbp)
     710:	0f 85 7a ff ff ff    	jne    690 <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x690>
     716:	0f b6 b5 fc 04 00 00 	movzbl 0x4fc(%rbp),%esi
     71d:	40 f6 c6 07          	test   $0x7,%sil
     721:	0f 85 69 ff ff ff    	jne    690 <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x690>
     727:	83 e6 38             	and    $0x38,%esi
     72a:	0f 85 60 ff ff ff    	jne    690 <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x690>
     730:	80 bc 24 34 01 00 00 	cmpb   $0x0,0x134(%rsp)
     737:	00 
     738:	0f 85 82 20 00 00    	jne    27c0 <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x27c0>
     73e:	84 d2                	test   %dl,%dl
     740:	0f 85 52 ff ff ff    	jne    698 <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x698>
     746:	0f b6 c9             	movzbl %cl,%ecx
     749:	45 89 e8             	mov    %r13d,%r8d
     74c:	4c 89 e6             	mov    %r12,%rsi
     74f:	41 b9 f6 00 00 00    	mov    $0xf6,%r9d
     755:	4c 8d bc 24 40 01 00 	lea    0x140(%rsp),%r15
     75c:	00 
     75d:	48 83 ec 08          	sub    $0x8,%rsp
     761:	48 89 ef             	mov    %rbp,%rdi
     764:	51                   	push   %rcx
     765:	48 8b 4c 24 20       	mov    0x20(%rsp),%rcx
     76a:	4c 89 fa             	mov    %r15,%rdx
     76d:	e8 00 00 00 00       	callq  772 <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x772>
     772:	59                   	pop    %rcx
     773:	45 31 c0             	xor    %r8d,%r8d
     776:	5e                   	pop    %rsi
     777:	e9 aa 00 00 00       	jmpq   826 <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x826>
     77c:	0f 1f 40 00          	nopl   0x0(%rax)
     780:	44 0f b6 9c 24 34 01 	movzbl 0x134(%rsp),%r11d
     787:	00 00 
     789:	45 84 db             	test   %r11b,%r11b
     78c:	74 3a                	je     7c8 <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x7c8>
     78e:	bf 10 00 00 00       	mov    $0x10,%edi
     793:	e8 00 00 00 00       	callq  798 <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x798>
     798:	48 8b 15 00 00 00 00 	mov    0x0(%rip),%rdx        # 79f <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x79f>
     79f:	48 8b 35 00 00 00 00 	mov    0x0(%rip),%rsi        # 7a6 <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x7a6>
     7a6:	48 89 c7             	mov    %rax,%rdi
     7a9:	48 8b 05 00 00 00 00 	mov    0x0(%rip),%rax        # 7b0 <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x7b0>
     7b0:	c7 47 08 27 00 00 00 	movl   $0x27,0x8(%rdi)
     7b7:	48 83 c0 10          	add    $0x10,%rax
     7bb:	48 89 07             	mov    %rax,(%rdi)
     7be:	e8 00 00 00 00       	callq  7c3 <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x7c3>
     7c3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
     7c8:	0f b6 c9             	movzbl %cl,%ecx
     7cb:	45 89 e8             	mov    %r13d,%r8d
     7ce:	41 b9 f6 00 00 00    	mov    $0xf6,%r9d
     7d4:	48 89 ef             	mov    %rbp,%rdi
     7d7:	0f b7 b4 24 4a 01 00 	movzwl 0x14a(%rsp),%esi
     7de:	00 
     7df:	4c 8d bc 24 40 01 00 	lea    0x140(%rsp),%r15
     7e6:	00 
     7e7:	89 f2                	mov    %esi,%edx
     7e9:	66 81 e2 ff 3f       	and    $0x3fff,%dx
     7ee:	66 f7 c6 80 03       	test   $0x380,%si
     7f3:	be 00 00 00 00       	mov    $0x0,%esi
     7f8:	0f 44 d6             	cmove  %esi,%edx
     7fb:	c0 e8 04             	shr    $0x4,%al
     7fe:	48 83 ec 08          	sub    $0x8,%rsp
     802:	4c 89 e6             	mov    %r12,%rsi
     805:	83 e0 01             	and    $0x1,%eax
     808:	50                   	push   %rax
     809:	0f b7 c2             	movzwl %dx,%eax
     80c:	4c 89 fa             	mov    %r15,%rdx
     80f:	50                   	push   %rax
     810:	6a 00                	pushq  $0x0
     812:	6a 00                	pushq  $0x0
     814:	51                   	push   %rcx
     815:	48 8b 4c 24 40       	mov    0x40(%rsp),%rcx
     81a:	e8 00 00 00 00       	callq  81f <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x81f>
     81f:	48 83 c4 30          	add    $0x30,%rsp
     823:	41 89 c0             	mov    %eax,%r8d
     826:	41 0f b6 14 24       	movzbl (%r12),%edx
     82b:	45 31 c9             	xor    %r9d,%r9d
     82e:	31 c9                	xor    %ecx,%ecx
     830:	48 89 ef             	mov    %rbp,%rdi
     833:	48 8d b4 24 00 01 00 	lea    0x100(%rsp),%rsi
     83a:	00 
     83b:	83 e2 1f             	and    $0x1f,%edx
     83e:	e8 00 00 00 00       	callq  843 <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x843>
     843:	48 8b 84 24 c0 01 00 	mov    0x1c0(%rsp),%rax
     84a:	00 
     84b:	4c 8b 40 78          	mov    0x78(%rax),%r8
     84f:	4c 39 44 24 08       	cmp    %r8,0x8(%rsp)
     854:	0f 83 73 1f 00 00    	jae    27cd <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x27cd>
     85a:	48 8b 74 24 08       	mov    0x8(%rsp),%rsi
     85f:	4c 8b 2c f0          	mov    (%rax,%rsi,8),%r13
     863:	41 f6 45 00 80       	testb  $0x80,0x0(%r13)
     868:	75 06                	jne    870 <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x870>
     86a:	e8 00 00 00 00       	callq  86f <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x86f>
     86f:	90                   	nop
     870:	41 0f b7 45 02       	movzwl 0x2(%r13),%eax
     875:	89 c2                	mov    %eax,%edx
     877:	66 81 e2 ff 3f       	and    $0x3fff,%dx
     87c:	a8 60                	test   $0x60,%al
     87e:	74 ea                	je     86a <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x86a>
     880:	0f b7 85 f8 04 00 00 	movzwl 0x4f8(%rbp),%eax
     887:	89 c1                	mov    %eax,%ecx
     889:	66 c1 e9 06          	shr    $0x6,%cx
     88d:	a8 80                	test   $0x80,%al
     88f:	74 17                	je     8a8 <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x8a8>
     891:	0f b7 85 fa 04 00 00 	movzwl 0x4fa(%rbp),%eax
     898:	89 c6                	mov    %eax,%esi
     89a:	66 81 e6 ff 3f       	and    $0x3fff,%si
     89f:	a8 60                	test   $0x60,%al
     8a1:	74 05                	je     8a8 <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x8a8>
     8a3:	66 39 f2             	cmp    %si,%dx
     8a6:	74 05                	je     8ad <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x8ad>
     8a8:	83 e1 01             	and    $0x1,%ecx
     8ab:	74 bd                	je     86a <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x86a>
     8ad:	48 8b 95 80 00 00 00 	mov    0x80(%rbp),%rdx
     8b4:	4c 8b 75 70          	mov    0x70(%rbp),%r14
     8b8:	4c 39 f2             	cmp    %r14,%rdx
     8bb:	0f 82 6f 0f 00 00    	jb     1830 <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x1830>
     8c1:	83 7d 20 03          	cmpl   $0x3,0x20(%rbp)
     8c5:	0f 85 73 1f 00 00    	jne    283e <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x283e>
     8cb:	4d 01 f6             	add    %r14,%r14
     8ce:	48 8b 7d 68          	mov    0x68(%rbp),%rdi
     8d2:	b8 00 10 00 00       	mov    $0x1000,%eax
     8d7:	49 81 fe 00 10 00 00 	cmp    $0x1000,%r14
     8de:	4c 0f 42 f0          	cmovb  %rax,%r14
     8e2:	48 8b 07             	mov    (%rdi),%rax
     8e5:	4c 89 f6             	mov    %r14,%rsi
     8e8:	ff 10                	callq  *(%rax)
     8ea:	48 85 c0             	test   %rax,%rax
     8ed:	0f 84 c4 1f 00 00    	je     28b7 <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x28b7>
     8f3:	31 d2                	xor    %edx,%edx
     8f5:	48 83 bd 80 00 00 00 	cmpq   $0x0,0x80(%rbp)
     8fc:	00 
     8fd:	74 19                	je     918 <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x918>
     8ff:	90                   	nop
     900:	48 8b 4d 78          	mov    0x78(%rbp),%rcx
     904:	0f b6 0c 11          	movzbl (%rcx,%rdx,1),%ecx
     908:	88 0c 10             	mov    %cl,(%rax,%rdx,1)
     90b:	48 83 c2 01          	add    $0x1,%rdx
     90f:	48 39 95 80 00 00 00 	cmp    %rdx,0x80(%rbp)
     916:	77 e8                	ja     900 <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x900>
     918:	48 8b 7d 68          	mov    0x68(%rbp),%rdi
     91c:	48 8b 75 78          	mov    0x78(%rbp),%rsi
     920:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
     925:	48 8b 17             	mov    (%rdi),%rdx
     928:	ff 52 08             	callq  *0x8(%rdx)
     92b:	48 8b 44 24 18       	mov    0x18(%rsp),%rax
     930:	4c 89 75 70          	mov    %r14,0x70(%rbp)
     934:	48 8b 95 80 00 00 00 	mov    0x80(%rbp),%rdx
     93b:	48 89 45 78          	mov    %rax,0x78(%rbp)
     93f:	48 8d 4a 01          	lea    0x1(%rdx),%rcx
     943:	48 89 8d 80 00 00 00 	mov    %rcx,0x80(%rbp)
     94a:	c6 04 10 f3          	movb   $0xf3,(%rax,%rdx,1)
     94e:	0f b7 95 f8 04 00 00 	movzwl 0x4f8(%rbp),%edx
     955:	89 d0                	mov    %edx,%eax
     957:	66 c1 e8 06          	shr    $0x6,%ax
     95b:	83 e2 40             	and    $0x40,%edx
     95e:	0f 85 04 0b 00 00    	jne    1468 <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x1468>
     964:	41 0f b7 55 00       	movzwl 0x0(%r13),%edx
     969:	89 d6                	mov    %edx,%esi
     96b:	66 c1 ee 06          	shr    $0x6,%si
     96f:	83 e2 40             	and    $0x40,%edx
     972:	0f 85 c8 14 00 00    	jne    1e40 <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x1e40>
     978:	41 0f b7 4d 02       	movzwl 0x2(%r13),%ecx
     97d:	89 ca                	mov    %ecx,%edx
     97f:	66 81 e2 ff 3f       	and    $0x3fff,%dx
     984:	83 e6 02             	and    $0x2,%esi
     987:	0f 84 83 19 00 00    	je     2310 <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x2310>
     98d:	83 e1 40             	and    $0x40,%ecx
     990:	66 83 f9 01          	cmp    $0x1,%cx
     994:	45 19 c9             	sbb    %r9d,%r9d
     997:	41 83 e1 f8          	and    $0xfffffff8,%r9d
     99b:	41 83 c1 0c          	add    $0xc,%r9d
     99f:	66 83 f9 01          	cmp    $0x1,%cx
     9a3:	19 ff                	sbb    %edi,%edi
     9a5:	f7 d7                	not    %edi
     9a7:	83 e7 08             	and    $0x8,%edi
     9aa:	0f b6 b5 f8 04 00 00 	movzbl 0x4f8(%rbp),%esi
     9b1:	45 0f b6 55 00       	movzbl 0x0(%r13),%r10d
     9b6:	83 e0 02             	and    $0x2,%eax
     9b9:	44 0f b7 85 fa 04 00 	movzwl 0x4fa(%rbp),%r8d
     9c0:	00 
     9c1:	83 e6 3f             	and    $0x3f,%esi
     9c4:	45 89 d3             	mov    %r10d,%r11d
     9c7:	41 89 f6             	mov    %esi,%r14d
     9ca:	44 89 c1             	mov    %r8d,%ecx
     9cd:	41 83 e3 3f          	and    $0x3f,%r11d
     9d1:	41 c0 ee 03          	shr    $0x3,%r14b
     9d5:	66 81 e1 ff 3f       	and    $0x3fff,%cx
     9da:	41 83 e6 01          	and    $0x1,%r14d
     9de:	41 83 e2 08          	and    $0x8,%r10d
     9e2:	0f 85 78 19 00 00    	jne    2360 <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x2360>
     9e8:	41 09 fe             	or     %edi,%r14d
     9eb:	66 85 c0             	test   %ax,%ax
     9ee:	74 0a                	je     9fa <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x9fa>
     9f0:	41 83 e0 40          	and    $0x40,%r8d
     9f4:	0f 85 7c 19 00 00    	jne    2376 <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x2376>
     9fa:	45 84 f6             	test   %r14b,%r14b
     9fd:	75 08                	jne    a07 <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0xa07>
     9ff:	44 09 de             	or     %r11d,%esi
     a02:	83 e6 20             	and    $0x20,%esi
     a05:	74 04                	je     a0b <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0xa0b>
     a07:	41 83 ce 40          	or     $0x40,%r14d
     a0b:	f6 c1 10             	test   $0x10,%cl
     a0e:	0f 84 8c 10 00 00    	je     1aa0 <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x1aa0>
     a14:	f6 c2 60             	test   $0x60,%dl
     a17:	0f 85 83 10 00 00    	jne    1aa0 <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x1aa0>
     a1d:	48 8b 95 80 00 00 00 	mov    0x80(%rbp),%rdx
     a24:	4c 8b 45 70          	mov    0x70(%rbp),%r8
     a28:	4c 39 c2             	cmp    %r8,%rdx
     a2b:	0f 82 95 10 00 00    	jb     1ac6 <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x1ac6>
     a31:	83 7d 20 03          	cmpl   $0x3,0x20(%rbp)
     a35:	0f 85 03 1e 00 00    	jne    283e <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x283e>
     a3b:	4d 01 c0             	add    %r8,%r8
     a3e:	48 8b 7d 68          	mov    0x68(%rbp),%rdi
     a42:	b8 00 10 00 00       	mov    $0x1000,%eax
     a47:	49 81 f8 00 10 00 00 	cmp    $0x1000,%r8
     a4e:	4c 0f 42 c0          	cmovb  %rax,%r8
     a52:	48 8b 07             	mov    (%rdi),%rax
     a55:	4c 89 44 24 18       	mov    %r8,0x18(%rsp)
     a5a:	4c 89 c6             	mov    %r8,%rsi
     a5d:	ff 10                	callq  *(%rax)
     a5f:	48 85 c0             	test   %rax,%rax
     a62:	0f 84 4f 1e 00 00    	je     28b7 <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x28b7>
     a68:	31 d2                	xor    %edx,%edx
     a6a:	48 83 bd 80 00 00 00 	cmpq   $0x0,0x80(%rbp)
     a71:	00 
     a72:	4c 8b 44 24 18       	mov    0x18(%rsp),%r8
     a77:	74 1f                	je     a98 <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0xa98>
     a79:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
     a80:	48 8b 4d 78          	mov    0x78(%rbp),%rcx
     a84:	0f b6 0c 11          	movzbl (%rcx,%rdx,1),%ecx
     a88:	88 0c 10             	mov    %cl,(%rax,%rdx,1)
     a8b:	48 83 c2 01          	add    $0x1,%rdx
     a8f:	48 39 95 80 00 00 00 	cmp    %rdx,0x80(%rbp)
     a96:	77 e8                	ja     a80 <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0xa80>
     a98:	48 8b 7d 68          	mov    0x68(%rbp),%rdi
     a9c:	48 8b 75 78          	mov    0x78(%rbp),%rsi
     aa0:	4c 89 44 24 20       	mov    %r8,0x20(%rsp)
     aa5:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
     aaa:	48 8b 17             	mov    (%rdi),%rdx
     aad:	ff 52 08             	callq  *0x8(%rdx)
     ab0:	48 8b 44 24 18       	mov    0x18(%rsp),%rax
     ab5:	4c 8b 44 24 20       	mov    0x20(%rsp),%r8
     aba:	48 8b 95 80 00 00 00 	mov    0x80(%rbp),%rdx
     ac1:	48 89 45 78          	mov    %rax,0x78(%rbp)
     ac5:	4c 89 45 70          	mov    %r8,0x70(%rbp)
     ac9:	48 8d 4a 01          	lea    0x1(%rdx),%rcx
     acd:	48 89 8d 80 00 00 00 	mov    %rcx,0x80(%rbp)
     ad4:	c6 04 10 66          	movb   $0x66,(%rax,%rdx,1)
     ad8:	48 8b 95 80 00 00 00 	mov    0x80(%rbp),%rdx
     adf:	48 8b 45 70          	mov    0x70(%rbp),%rax
     ae3:	45 84 f6             	test   %r14b,%r14b
     ae6:	0f 85 bc 15 00 00    	jne    20a8 <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x20a8>
     aec:	48 39 c2             	cmp    %rax,%rdx
     aef:	0f 82 1b 14 00 00    	jb     1f10 <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x1f10>
     af5:	83 7d 20 03          	cmpl   $0x3,0x20(%rbp)
     af9:	0f 85 3f 1d 00 00    	jne    283e <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x283e>
     aff:	4c 8d 34 00          	lea    (%rax,%rax,1),%r14
     b03:	48 8b 7d 68          	mov    0x68(%rbp),%rdi
     b07:	b8 00 10 00 00       	mov    $0x1000,%eax
     b0c:	49 81 fe 00 10 00 00 	cmp    $0x1000,%r14
     b13:	4c 0f 42 f0          	cmovb  %rax,%r14
     b17:	48 8b 07             	mov    (%rdi),%rax
     b1a:	4c 89 f6             	mov    %r14,%rsi
     b1d:	ff 10                	callq  *(%rax)
     b1f:	48 85 c0             	test   %rax,%rax
     b22:	0f 84 8f 1d 00 00    	je     28b7 <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x28b7>
     b28:	31 d2                	xor    %edx,%edx
     b2a:	48 83 bd 80 00 00 00 	cmpq   $0x0,0x80(%rbp)
     b31:	00 
     b32:	74 1c                	je     b50 <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0xb50>
     b34:	0f 1f 40 00          	nopl   0x0(%rax)
     b38:	48 8b 4d 78          	mov    0x78(%rbp),%rcx
     b3c:	0f b6 0c 11          	movzbl (%rcx,%rdx,1),%ecx
     b40:	88 0c 10             	mov    %cl,(%rax,%rdx,1)
     b43:	48 83 c2 01          	add    $0x1,%rdx
     b47:	48 39 95 80 00 00 00 	cmp    %rdx,0x80(%rbp)
     b4e:	77 e8                	ja     b38 <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0xb38>
     b50:	48 8b 7d 68          	mov    0x68(%rbp),%rdi
     b54:	48 8b 75 78          	mov    0x78(%rbp),%rsi
     b58:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
     b5d:	48 8b 17             	mov    (%rdi),%rdx
     b60:	ff 52 08             	callq  *0x8(%rdx)
     b63:	48 8b 44 24 18       	mov    0x18(%rsp),%rax
     b68:	4c 89 75 70          	mov    %r14,0x70(%rbp)
     b6c:	48 8b 95 80 00 00 00 	mov    0x80(%rbp),%rdx
     b73:	48 89 45 78          	mov    %rax,0x78(%rbp)
     b77:	48 8d 4a 01          	lea    0x1(%rdx),%rcx
     b7b:	48 89 8d 80 00 00 00 	mov    %rcx,0x80(%rbp)
     b82:	c6 04 10 0f          	movb   $0xf,(%rax,%rdx,1)
     b86:	48 8b 95 80 00 00 00 	mov    0x80(%rbp),%rdx
     b8d:	4c 8b 75 70          	mov    0x70(%rbp),%r14
     b91:	4c 39 f2             	cmp    %r14,%rdx
     b94:	0f 82 66 13 00 00    	jb     1f00 <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x1f00>
     b9a:	83 7d 20 03          	cmpl   $0x3,0x20(%rbp)
     b9e:	0f 85 9a 1c 00 00    	jne    283e <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x283e>
     ba4:	4d 01 f6             	add    %r14,%r14
     ba7:	48 8b 7d 68          	mov    0x68(%rbp),%rdi
     bab:	b8 00 10 00 00       	mov    $0x1000,%eax
     bb0:	49 81 fe 00 10 00 00 	cmp    $0x1000,%r14
     bb7:	4c 0f 42 f0          	cmovb  %rax,%r14
     bbb:	48 8b 07             	mov    (%rdi),%rax
     bbe:	4c 89 f6             	mov    %r14,%rsi
     bc1:	ff 10                	callq  *(%rax)
     bc3:	48 85 c0             	test   %rax,%rax
     bc6:	0f 84 eb 1c 00 00    	je     28b7 <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x28b7>
     bcc:	31 d2                	xor    %edx,%edx
     bce:	48 83 bd 80 00 00 00 	cmpq   $0x0,0x80(%rbp)
     bd5:	00 
     bd6:	74 20                	je     bf8 <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0xbf8>
     bd8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
     bdf:	00 
     be0:	48 8b 4d 78          	mov    0x78(%rbp),%rcx
     be4:	0f b6 0c 11          	movzbl (%rcx,%rdx,1),%ecx
     be8:	88 0c 10             	mov    %cl,(%rax,%rdx,1)
     beb:	48 83 c2 01          	add    $0x1,%rdx
     bef:	48 39 95 80 00 00 00 	cmp    %rdx,0x80(%rbp)
     bf6:	77 e8                	ja     be0 <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0xbe0>
     bf8:	48 8b 7d 68          	mov    0x68(%rbp),%rdi
     bfc:	48 8b 75 78          	mov    0x78(%rbp),%rsi
     c00:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
     c05:	48 8b 17             	mov    (%rdi),%rdx
     c08:	ff 52 08             	callq  *0x8(%rdx)
     c0b:	48 8b 44 24 18       	mov    0x18(%rsp),%rax
     c10:	4c 89 75 70          	mov    %r14,0x70(%rbp)
     c14:	48 8b 95 80 00 00 00 	mov    0x80(%rbp),%rdx
     c1b:	48 89 45 78          	mov    %rax,0x78(%rbp)
     c1f:	48 8d 4a 01          	lea    0x1(%rdx),%rcx
     c23:	48 89 8d 80 00 00 00 	mov    %rcx,0x80(%rbp)
     c2a:	c6 04 10 38          	movb   $0x38,(%rax,%rdx,1)
     c2e:	48 8b 95 80 00 00 00 	mov    0x80(%rbp),%rdx
     c35:	4c 8b 75 70          	mov    0x70(%rbp),%r14
     c39:	4c 39 f2             	cmp    %r14,%rdx
     c3c:	0f 82 ee 11 00 00    	jb     1e30 <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x1e30>
     c42:	83 7d 20 03          	cmpl   $0x3,0x20(%rbp)
     c46:	0f 85 f2 1b 00 00    	jne    283e <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x283e>
     c4c:	4d 01 f6             	add    %r14,%r14
     c4f:	48 8b 7d 68          	mov    0x68(%rbp),%rdi
     c53:	b8 00 10 00 00       	mov    $0x1000,%eax
     c58:	49 81 fe 00 10 00 00 	cmp    $0x1000,%r14
     c5f:	4c 0f 42 f0          	cmovb  %rax,%r14
     c63:	48 8b 07             	mov    (%rdi),%rax
     c66:	4c 89 f6             	mov    %r14,%rsi
     c69:	ff 10                	callq  *(%rax)
     c6b:	48 85 c0             	test   %rax,%rax
     c6e:	0f 84 43 1c 00 00    	je     28b7 <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x28b7>
     c74:	31 d2                	xor    %edx,%edx
     c76:	48 83 bd 80 00 00 00 	cmpq   $0x0,0x80(%rbp)
     c7d:	00 
     c7e:	74 18                	je     c98 <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0xc98>
     c80:	48 8b 4d 78          	mov    0x78(%rbp),%rcx
     c84:	0f b6 0c 11          	movzbl (%rcx,%rdx,1),%ecx
     c88:	88 0c 10             	mov    %cl,(%rax,%rdx,1)
     c8b:	48 83 c2 01          	add    $0x1,%rdx
     c8f:	48 39 95 80 00 00 00 	cmp    %rdx,0x80(%rbp)
     c96:	77 e8                	ja     c80 <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0xc80>
     c98:	48 8b 7d 68          	mov    0x68(%rbp),%rdi
     c9c:	48 8b 75 78          	mov    0x78(%rbp),%rsi
     ca0:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
     ca5:	48 8b 17             	mov    (%rdi),%rdx
     ca8:	ff 52 08             	callq  *0x8(%rdx)
     cab:	48 8b 44 24 18       	mov    0x18(%rsp),%rax
     cb0:	4c 89 75 70          	mov    %r14,0x70(%rbp)
     cb4:	48 8b 95 80 00 00 00 	mov    0x80(%rbp),%rdx
     cbb:	48 89 45 78          	mov    %rax,0x78(%rbp)
     cbf:	48 8d 4a 01          	lea    0x1(%rdx),%rcx
     cc3:	48 89 8d 80 00 00 00 	mov    %rcx,0x80(%rbp)
     cca:	c6 04 10 f6          	movb   $0xf6,(%rax,%rdx,1)
     cce:	41 0f b6 45 00       	movzbl 0x0(%r13),%eax
     cd3:	0f b6 95 f8 04 00 00 	movzbl 0x4f8(%rbp),%edx
     cda:	48 8b 4d 70          	mov    0x70(%rbp),%rcx
     cde:	c1 e0 03             	shl    $0x3,%eax
     ce1:	83 e2 07             	and    $0x7,%edx
     ce4:	83 e0 38             	and    $0x38,%eax
     ce7:	09 d0                	or     %edx,%eax
     ce9:	48 8b 95 80 00 00 00 	mov    0x80(%rbp),%rdx
     cf0:	83 c8 c0             	or     $0xffffffc0,%eax
     cf3:	41 89 c5             	mov    %eax,%r13d
     cf6:	48 39 ca             	cmp    %rcx,%rdx
     cf9:	0f 82 21 11 00 00    	jb     1e20 <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x1e20>
     cff:	83 7d 20 03          	cmpl   $0x3,0x20(%rbp)
     d03:	0f 85 35 1b 00 00    	jne    283e <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x283e>
     d09:	48 8b 7d 68          	mov    0x68(%rbp),%rdi
     d0d:	48 01 c9             	add    %rcx,%rcx
     d10:	b8 00 10 00 00       	mov    $0x1000,%eax
     d15:	48 81 f9 00 10 00 00 	cmp    $0x1000,%rcx
     d1c:	48 0f 42 c8          	cmovb  %rax,%rcx
     d20:	48 8b 07             	mov    (%rdi),%rax
     d23:	48 89 4c 24 18       	mov    %rcx,0x18(%rsp)
     d28:	48 89 ce             	mov    %rcx,%rsi
     d2b:	ff 10                	callq  *(%rax)
     d2d:	49 89 c6             	mov    %rax,%r14
     d30:	48 85 c0             	test   %rax,%rax
     d33:	0f 84 7e 1b 00 00    	je     28b7 <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x28b7>
     d39:	31 d2                	xor    %edx,%edx
     d3b:	48 83 bd 80 00 00 00 	cmpq   $0x0,0x80(%rbp)
     d42:	00 
     d43:	48 8b 4c 24 18       	mov    0x18(%rsp),%rcx
     d48:	74 1f                	je     d69 <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0xd69>
     d4a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
     d50:	48 8b 45 78          	mov    0x78(%rbp),%rax
     d54:	0f b6 04 10          	movzbl (%rax,%rdx,1),%eax
     d58:	41 88 04 16          	mov    %al,(%r14,%rdx,1)
     d5c:	48 83 c2 01          	add    $0x1,%rdx
     d60:	48 39 95 80 00 00 00 	cmp    %rdx,0x80(%rbp)
     d67:	77 e7                	ja     d50 <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0xd50>
     d69:	48 8b 7d 68          	mov    0x68(%rbp),%rdi
     d6d:	48 8b 75 78          	mov    0x78(%rbp),%rsi
     d71:	48 89 4c 24 18       	mov    %rcx,0x18(%rsp)
     d76:	48 8b 07             	mov    (%rdi),%rax
     d79:	ff 50 08             	callq  *0x8(%rax)
     d7c:	48 8b 4c 24 18       	mov    0x18(%rsp),%rcx
     d81:	4c 89 75 78          	mov    %r14,0x78(%rbp)
     d85:	48 8b 95 80 00 00 00 	mov    0x80(%rbp),%rdx
     d8c:	48 89 4d 70          	mov    %rcx,0x70(%rbp)
     d90:	48 8d 42 01          	lea    0x1(%rdx),%rax
     d94:	48 89 85 80 00 00 00 	mov    %rax,0x80(%rbp)
     d9b:	45 88 2c 16          	mov    %r13b,(%r14,%rdx,1)
     d9f:	48 8b 84 24 c0 01 00 	mov    0x1c0(%rsp),%rax
     da6:	00 
     da7:	48 83 7c 24 08 00    	cmpq   $0x0,0x8(%rsp)
     dad:	4c 8b 40 78          	mov    0x78(%rax),%r8
     db1:	0f 84 19 0d 00 00    	je     1ad0 <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x1ad0>
     db7:	48 8b 74 24 08       	mov    0x8(%rsp),%rsi
     dbc:	49 8d 40 ff          	lea    -0x1(%r8),%rax
     dc0:	48 39 f0             	cmp    %rsi,%rax
     dc3:	0f 84 d3 03 00 00    	je     119c <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x119c>
     dc9:	48 83 c6 01          	add    $0x1,%rsi
     dcd:	48 89 74 24 08       	mov    %rsi,0x8(%rsp)
     dd2:	4c 39 c6             	cmp    %r8,%rsi
     dd5:	0f 83 f2 19 00 00    	jae    27cd <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x27cd>
     ddb:	48 8b 84 24 c0 01 00 	mov    0x1c0(%rsp),%rax
     de2:	00 
     de3:	4c 8b 2c f0          	mov    (%rax,%rsi,8),%r13
     de7:	41 f6 45 00 80       	testb  $0x80,0x0(%r13)
     dec:	0f 84 78 fa ff ff    	je     86a <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x86a>
     df2:	41 0f b7 45 02       	movzwl 0x2(%r13),%eax
     df7:	89 c2                	mov    %eax,%edx
     df9:	66 81 e2 ff 3f       	and    $0x3fff,%dx
     dfe:	a8 60                	test   $0x60,%al
     e00:	0f 84 64 fa ff ff    	je     86a <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x86a>
     e06:	41 0f b7 04 24       	movzwl (%r12),%eax
     e0b:	89 c1                	mov    %eax,%ecx
     e0d:	66 c1 e9 06          	shr    $0x6,%cx
     e11:	a8 80                	test   $0x80,%al
     e13:	74 16                	je     e2b <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0xe2b>
     e15:	41 0f b7 44 24 02    	movzwl 0x2(%r12),%eax
     e1b:	89 c6                	mov    %eax,%esi
     e1d:	66 81 e6 ff 3f       	and    $0x3fff,%si
     e22:	a8 60                	test   $0x60,%al
     e24:	74 05                	je     e2b <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0xe2b>
     e26:	66 39 f2             	cmp    %si,%dx
     e29:	74 09                	je     e34 <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0xe34>
     e2b:	83 e1 01             	and    $0x1,%ecx
     e2e:	0f 84 36 fa ff ff    	je     86a <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x86a>
     e34:	48 8b 95 80 00 00 00 	mov    0x80(%rbp),%rdx
     e3b:	4c 8b 75 70          	mov    0x70(%rbp),%r14
     e3f:	4c 39 f2             	cmp    %r14,%rdx
     e42:	0f 82 18 0c 00 00    	jb     1a60 <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x1a60>
     e48:	83 7d 20 03          	cmpl   $0x3,0x20(%rbp)
     e4c:	0f 85 ec 19 00 00    	jne    283e <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x283e>
     e52:	48 8b 7d 68          	mov    0x68(%rbp),%rdi
     e56:	4d 01 f6             	add    %r14,%r14
     e59:	b8 00 10 00 00       	mov    $0x1000,%eax
     e5e:	49 81 fe 00 10 00 00 	cmp    $0x1000,%r14
     e65:	4c 0f 42 f0          	cmovb  %rax,%r14
     e69:	48 8b 07             	mov    (%rdi),%rax
     e6c:	4c 89 f6             	mov    %r14,%rsi
     e6f:	ff 10                	callq  *(%rax)
     e71:	49 89 c7             	mov    %rax,%r15
     e74:	48 85 c0             	test   %rax,%rax
     e77:	0f 84 3a 1a 00 00    	je     28b7 <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x28b7>
     e7d:	31 d2                	xor    %edx,%edx
     e7f:	48 83 bd 80 00 00 00 	cmpq   $0x0,0x80(%rbp)
     e86:	00 
     e87:	74 20                	je     ea9 <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0xea9>
     e89:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
     e90:	48 8b 45 78          	mov    0x78(%rbp),%rax
     e94:	0f b6 04 10          	movzbl (%rax,%rdx,1),%eax
     e98:	41 88 04 17          	mov    %al,(%r15,%rdx,1)
     e9c:	48 83 c2 01          	add    $0x1,%rdx
     ea0:	48 39 95 80 00 00 00 	cmp    %rdx,0x80(%rbp)
     ea7:	77 e7                	ja     e90 <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0xe90>
     ea9:	48 8b 7d 68          	mov    0x68(%rbp),%rdi
     ead:	48 8b 75 78          	mov    0x78(%rbp),%rsi
     eb1:	48 8b 07             	mov    (%rdi),%rax
     eb4:	ff 50 08             	callq  *0x8(%rax)
     eb7:	4c 89 7d 78          	mov    %r15,0x78(%rbp)
     ebb:	48 8b 95 80 00 00 00 	mov    0x80(%rbp),%rdx
     ec2:	4c 89 75 70          	mov    %r14,0x70(%rbp)
     ec6:	48 8d 42 01          	lea    0x1(%rdx),%rax
     eca:	48 89 85 80 00 00 00 	mov    %rax,0x80(%rbp)
     ed1:	41 c6 04 17 66       	movb   $0x66,(%r15,%rdx,1)
     ed6:	41 f6 04 24 40       	testb  $0x40,(%r12)
     edb:	0f 85 5f 09 00 00    	jne    1840 <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x1840>
     ee1:	4c 89 ea             	mov    %r13,%rdx
     ee4:	4c 89 e6             	mov    %r12,%rsi
     ee7:	48 89 ef             	mov    %rbp,%rdi
     eea:	e8 00 00 00 00       	callq  eef <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0xeef>
     eef:	48 8b 85 80 00 00 00 	mov    0x80(%rbp),%rax
     ef6:	4c 8b 75 70          	mov    0x70(%rbp),%r14
     efa:	4c 39 f0             	cmp    %r14,%rax
     efd:	0f 82 4d 10 00 00    	jb     1f50 <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x1f50>
     f03:	83 7d 20 03          	cmpl   $0x3,0x20(%rbp)
     f07:	0f 85 31 19 00 00    	jne    283e <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x283e>
     f0d:	48 8b 7d 68          	mov    0x68(%rbp),%rdi
     f11:	4d 01 f6             	add    %r14,%r14
     f14:	b8 00 10 00 00       	mov    $0x1000,%eax
     f19:	49 81 fe 00 10 00 00 	cmp    $0x1000,%r14
     f20:	4c 0f 42 f0          	cmovb  %rax,%r14
     f24:	48 8b 07             	mov    (%rdi),%rax
     f27:	4c 89 f6             	mov    %r14,%rsi
     f2a:	ff 10                	callq  *(%rax)
     f2c:	49 89 c7             	mov    %rax,%r15
     f2f:	48 85 c0             	test   %rax,%rax
     f32:	0f 84 7f 19 00 00    	je     28b7 <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x28b7>
     f38:	31 d2                	xor    %edx,%edx
     f3a:	48 83 bd 80 00 00 00 	cmpq   $0x0,0x80(%rbp)
     f41:	00 
     f42:	74 1d                	je     f61 <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0xf61>
     f44:	0f 1f 40 00          	nopl   0x0(%rax)
     f48:	48 8b 45 78          	mov    0x78(%rbp),%rax
     f4c:	0f b6 04 10          	movzbl (%rax,%rdx,1),%eax
     f50:	41 88 04 17          	mov    %al,(%r15,%rdx,1)
     f54:	48 83 c2 01          	add    $0x1,%rdx
     f58:	48 39 95 80 00 00 00 	cmp    %rdx,0x80(%rbp)
     f5f:	77 e7                	ja     f48 <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0xf48>
     f61:	48 8b 7d 68          	mov    0x68(%rbp),%rdi
     f65:	48 8b 75 78          	mov    0x78(%rbp),%rsi
     f69:	48 8b 07             	mov    (%rdi),%rax
     f6c:	ff 50 08             	callq  *0x8(%rax)
     f6f:	4c 89 7d 78          	mov    %r15,0x78(%rbp)
     f73:	48 8b 85 80 00 00 00 	mov    0x80(%rbp),%rax
     f7a:	4c 89 75 70          	mov    %r14,0x70(%rbp)
     f7e:	48 8d 50 01          	lea    0x1(%rax),%rdx
     f82:	48 89 95 80 00 00 00 	mov    %rdx,0x80(%rbp)
     f89:	41 c6 04 07 0f       	movb   $0xf,(%r15,%rax,1)
     f8e:	48 8b 85 80 00 00 00 	mov    0x80(%rbp),%rax
     f95:	4c 8b 75 70          	mov    0x70(%rbp),%r14
     f99:	4c 39 f0             	cmp    %r14,%rax
     f9c:	0f 82 9e 0f 00 00    	jb     1f40 <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x1f40>
     fa2:	83 7d 20 03          	cmpl   $0x3,0x20(%rbp)
     fa6:	0f 85 92 18 00 00    	jne    283e <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x283e>
     fac:	48 8b 7d 68          	mov    0x68(%rbp),%rdi
     fb0:	4d 01 f6             	add    %r14,%r14
     fb3:	b8 00 10 00 00       	mov    $0x1000,%eax
     fb8:	49 81 fe 00 10 00 00 	cmp    $0x1000,%r14
     fbf:	4c 0f 42 f0          	cmovb  %rax,%r14
     fc3:	48 8b 07             	mov    (%rdi),%rax
     fc6:	4c 89 f6             	mov    %r14,%rsi
     fc9:	ff 10                	callq  *(%rax)
     fcb:	49 89 c7             	mov    %rax,%r15
     fce:	48 85 c0             	test   %rax,%rax
     fd1:	0f 84 e0 18 00 00    	je     28b7 <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x28b7>
     fd7:	31 d2                	xor    %edx,%edx
     fd9:	48 83 bd 80 00 00 00 	cmpq   $0x0,0x80(%rbp)
     fe0:	00 
     fe1:	74 1e                	je     1001 <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x1001>
     fe3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
     fe8:	48 8b 45 78          	mov    0x78(%rbp),%rax
     fec:	0f b6 04 10          	movzbl (%rax,%rdx,1),%eax
     ff0:	41 88 04 17          	mov    %al,(%r15,%rdx,1)
     ff4:	48 83 c2 01          	add    $0x1,%rdx
     ff8:	48 39 95 80 00 00 00 	cmp    %rdx,0x80(%rbp)
     fff:	77 e7                	ja     fe8 <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0xfe8>
    1001:	48 8b 7d 68          	mov    0x68(%rbp),%rdi
    1005:	48 8b 75 78          	mov    0x78(%rbp),%rsi
    1009:	48 8b 07             	mov    (%rdi),%rax
    100c:	ff 50 08             	callq  *0x8(%rax)
    100f:	4c 89 7d 78          	mov    %r15,0x78(%rbp)
    1013:	48 8b 85 80 00 00 00 	mov    0x80(%rbp),%rax
    101a:	4c 89 75 70          	mov    %r14,0x70(%rbp)
    101e:	48 8d 50 01          	lea    0x1(%rax),%rdx
    1022:	48 89 95 80 00 00 00 	mov    %rdx,0x80(%rbp)
    1029:	41 c6 04 07 38       	movb   $0x38,(%r15,%rax,1)
    102e:	48 8b 85 80 00 00 00 	mov    0x80(%rbp),%rax
    1035:	4c 8b 75 70          	mov    0x70(%rbp),%r14
    1039:	4c 39 f0             	cmp    %r14,%rax
    103c:	0f 82 ee 0e 00 00    	jb     1f30 <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x1f30>
    1042:	83 7d 20 03          	cmpl   $0x3,0x20(%rbp)
    1046:	0f 85 f2 17 00 00    	jne    283e <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x283e>
    104c:	48 8b 7d 68          	mov    0x68(%rbp),%rdi
    1050:	4d 01 f6             	add    %r14,%r14
    1053:	b8 00 10 00 00       	mov    $0x1000,%eax
    1058:	49 81 fe 00 10 00 00 	cmp    $0x1000,%r14
    105f:	4c 0f 42 f0          	cmovb  %rax,%r14
    1063:	48 8b 07             	mov    (%rdi),%rax
    1066:	4c 89 f6             	mov    %r14,%rsi
    1069:	ff 10                	callq  *(%rax)
    106b:	49 89 c7             	mov    %rax,%r15
    106e:	48 85 c0             	test   %rax,%rax
    1071:	0f 84 40 18 00 00    	je     28b7 <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x28b7>
    1077:	31 d2                	xor    %edx,%edx
    1079:	48 83 bd 80 00 00 00 	cmpq   $0x0,0x80(%rbp)
    1080:	00 
    1081:	74 1e                	je     10a1 <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x10a1>
    1083:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    1088:	48 8b 45 78          	mov    0x78(%rbp),%rax
    108c:	0f b6 04 10          	movzbl (%rax,%rdx,1),%eax
    1090:	41 88 04 17          	mov    %al,(%r15,%rdx,1)
    1094:	48 83 c2 01          	add    $0x1,%rdx
    1098:	48 39 95 80 00 00 00 	cmp    %rdx,0x80(%rbp)
    109f:	77 e7                	ja     1088 <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x1088>
    10a1:	48 8b 7d 68          	mov    0x68(%rbp),%rdi
    10a5:	48 8b 75 78          	mov    0x78(%rbp),%rsi
    10a9:	48 8b 07             	mov    (%rdi),%rax
    10ac:	ff 50 08             	callq  *0x8(%rax)
    10af:	4c 89 7d 78          	mov    %r15,0x78(%rbp)
    10b3:	48 8b 85 80 00 00 00 	mov    0x80(%rbp),%rax
    10ba:	4c 89 75 70          	mov    %r14,0x70(%rbp)
    10be:	48 8d 50 01          	lea    0x1(%rax),%rdx
    10c2:	48 89 95 80 00 00 00 	mov    %rdx,0x80(%rbp)
    10c9:	41 c6 04 07 f6       	movb   $0xf6,(%r15,%rax,1)
    10ce:	41 0f b6 45 00       	movzbl 0x0(%r13),%eax
    10d3:	41 0f b6 14 24       	movzbl (%r12),%edx
    10d8:	4c 8b 7d 70          	mov    0x70(%rbp),%r15
    10dc:	c1 e0 03             	shl    $0x3,%eax
    10df:	83 e0 38             	and    $0x38,%eax
    10e2:	83 e2 07             	and    $0x7,%edx
    10e5:	09 d0                	or     %edx,%eax
    10e7:	83 c8 c0             	or     $0xffffffc0,%eax
    10ea:	41 89 c5             	mov    %eax,%r13d
    10ed:	48 8b 85 80 00 00 00 	mov    0x80(%rbp),%rax
    10f4:	4c 39 f8             	cmp    %r15,%rax
    10f7:	0f 82 83 0e 00 00    	jb     1f80 <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x1f80>
    10fd:	83 7d 20 03          	cmpl   $0x3,0x20(%rbp)
    1101:	0f 85 37 17 00 00    	jne    283e <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x283e>
    1107:	48 8b 7d 68          	mov    0x68(%rbp),%rdi
    110b:	4d 01 ff             	add    %r15,%r15
    110e:	b8 00 10 00 00       	mov    $0x1000,%eax
    1113:	49 81 ff 00 10 00 00 	cmp    $0x1000,%r15
    111a:	4c 0f 42 f8          	cmovb  %rax,%r15
    111e:	48 8b 07             	mov    (%rdi),%rax
    1121:	4c 89 fe             	mov    %r15,%rsi
    1124:	ff 10                	callq  *(%rax)
    1126:	49 89 c6             	mov    %rax,%r14
    1129:	48 85 c0             	test   %rax,%rax
    112c:	0f 84 85 17 00 00    	je     28b7 <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x28b7>
    1132:	31 d2                	xor    %edx,%edx
    1134:	48 83 bd 80 00 00 00 	cmpq   $0x0,0x80(%rbp)
    113b:	00 
    113c:	74 1b                	je     1159 <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x1159>
    113e:	66 90                	xchg   %ax,%ax
    1140:	48 8b 45 78          	mov    0x78(%rbp),%rax
    1144:	0f b6 04 10          	movzbl (%rax,%rdx,1),%eax
    1148:	41 88 04 16          	mov    %al,(%r14,%rdx,1)
    114c:	48 83 c2 01          	add    $0x1,%rdx
    1150:	48 39 95 80 00 00 00 	cmp    %rdx,0x80(%rbp)
    1157:	77 e7                	ja     1140 <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x1140>
    1159:	48 8b 7d 68          	mov    0x68(%rbp),%rdi
    115d:	48 8b 75 78          	mov    0x78(%rbp),%rsi
    1161:	48 8b 07             	mov    (%rdi),%rax
    1164:	ff 50 08             	callq  *0x8(%rax)
    1167:	4c 89 75 78          	mov    %r14,0x78(%rbp)
    116b:	48 8b 85 80 00 00 00 	mov    0x80(%rbp),%rax
    1172:	4c 89 7d 70          	mov    %r15,0x70(%rbp)
    1176:	48 8d 50 01          	lea    0x1(%rax),%rdx
    117a:	48 89 95 80 00 00 00 	mov    %rdx,0x80(%rbp)
    1181:	45 88 2c 06          	mov    %r13b,(%r14,%rax,1)
    1185:	48 8b 84 24 c0 01 00 	mov    0x1c0(%rsp),%rax
    118c:	00 
    118d:	48 8b 74 24 08       	mov    0x8(%rsp),%rsi
    1192:	48 3b 70 78          	cmp    0x78(%rax),%rsi
    1196:	0f 82 9c f2 ff ff    	jb     438 <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x438>
    119c:	0f b7 85 f8 04 00 00 	movzwl 0x4f8(%rbp),%eax
    11a3:	89 c2                	mov    %eax,%edx
    11a5:	66 c1 ea 06          	shr    $0x6,%dx
    11a9:	a8 80                	test   $0x80,%al
    11ab:	0f 84 3f 13 00 00    	je     24f0 <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x24f0>
    11b1:	0f b7 9d fa 04 00 00 	movzwl 0x4fa(%rbp),%ebx
    11b8:	0f b6 85 f8 04 00 00 	movzbl 0x4f8(%rbp),%eax
    11bf:	45 31 ed             	xor    %r13d,%r13d
    11c2:	81 e3 ff 3f 00 00    	and    $0x3fff,%ebx
    11c8:	89 c2                	mov    %eax,%edx
    11ca:	83 fb 08             	cmp    $0x8,%ebx
    11cd:	41 0f 95 c5          	setne  %r13b
    11d1:	83 e2 07             	and    $0x7,%edx
    11d4:	80 a4 24 44 01 00 00 	andb   $0xc0,0x144(%rsp)
    11db:	c0 
    11dc:	81 a4 24 40 01 00 00 	andl   $0x80000000,0x140(%rsp)
    11e3:	00 00 00 80 
    11e7:	41 c1 e5 03          	shl    $0x3,%r13d
    11eb:	41 09 d5             	or     %edx,%r13d
    11ee:	41 80 cd b0          	or     $0xb0,%r13b
    11f2:	83 fb 40             	cmp    $0x40,%ebx
    11f5:	0f 85 8d 14 00 00    	jne    2688 <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x2688>
    11fb:	0f b6 94 24 00 01 00 	movzbl 0x100(%rsp),%edx
    1202:	00 
    1203:	83 e0 1f             	and    $0x1f,%eax
    1206:	48 89 ef             	mov    %rbp,%rdi
    1209:	bb 04 00 00 00       	mov    $0x4,%ebx
    120e:	48 8d b4 24 00 01 00 	lea    0x100(%rsp),%rsi
    1215:	00 
    1216:	80 a4 24 04 01 00 00 	andb   $0xc0,0x104(%rsp)
    121d:	c0 
    121e:	83 e2 c0             	and    $0xffffffc0,%edx
    1221:	09 d0                	or     %edx,%eax
    1223:	48 8d 94 24 40 01 00 	lea    0x140(%rsp),%rdx
    122a:	00 
    122b:	88 84 24 00 01 00 00 	mov    %al,0x100(%rsp)
    1232:	8b 84 24 00 01 00 00 	mov    0x100(%rsp),%eax
    1239:	25 3f 00 00 80       	and    $0x8000003f,%eax
    123e:	0d 80 00 20 00       	or     $0x200080,%eax
    1243:	89 84 24 00 01 00 00 	mov    %eax,0x100(%rsp)
    124a:	e8 00 00 00 00       	callq  124f <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x124f>
    124f:	44 89 ee             	mov    %r13d,%esi
    1252:	48 89 ef             	mov    %rbp,%rdi
    1255:	e8 00 00 00 00       	callq  125a <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x125a>
    125a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    1260:	45 31 ed             	xor    %r13d,%r13d
    1263:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    1268:	48 8b 85 80 00 00 00 	mov    0x80(%rbp),%rax
    126f:	4c 8b 7d 70          	mov    0x70(%rbp),%r15
    1273:	4c 39 f8             	cmp    %r15,%rax
    1276:	0f 82 14 0d 00 00    	jb     1f90 <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x1f90>
    127c:	83 7d 20 03          	cmpl   $0x3,0x20(%rbp)
    1280:	0f 85 b8 15 00 00    	jne    283e <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x283e>
    1286:	48 8b 7d 68          	mov    0x68(%rbp),%rdi
    128a:	4d 01 ff             	add    %r15,%r15
    128d:	b8 00 10 00 00       	mov    $0x1000,%eax
    1292:	49 81 ff 00 10 00 00 	cmp    $0x1000,%r15
    1299:	4c 0f 42 f8          	cmovb  %rax,%r15
    129d:	48 8b 07             	mov    (%rdi),%rax
    12a0:	4c 89 fe             	mov    %r15,%rsi
    12a3:	ff 10                	callq  *(%rax)
    12a5:	49 89 c6             	mov    %rax,%r14
    12a8:	48 85 c0             	test   %rax,%rax
    12ab:	0f 84 06 16 00 00    	je     28b7 <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x28b7>
    12b1:	31 d2                	xor    %edx,%edx
    12b3:	48 83 bd 80 00 00 00 	cmpq   $0x0,0x80(%rbp)
    12ba:	00 
    12bb:	74 1c                	je     12d9 <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x12d9>
    12bd:	0f 1f 00             	nopl   (%rax)
    12c0:	48 8b 45 78          	mov    0x78(%rbp),%rax
    12c4:	0f b6 04 10          	movzbl (%rax,%rdx,1),%eax
    12c8:	41 88 04 16          	mov    %al,(%r14,%rdx,1)
    12cc:	48 83 c2 01          	add    $0x1,%rdx
    12d0:	48 39 95 80 00 00 00 	cmp    %rdx,0x80(%rbp)
    12d7:	77 e7                	ja     12c0 <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x12c0>
    12d9:	48 8b 7d 68          	mov    0x68(%rbp),%rdi
    12dd:	48 8b 75 78          	mov    0x78(%rbp),%rsi
    12e1:	48 8b 07             	mov    (%rdi),%rax
    12e4:	ff 50 08             	callq  *0x8(%rax)
    12e7:	4c 89 75 78          	mov    %r14,0x78(%rbp)
    12eb:	48 8b 85 80 00 00 00 	mov    0x80(%rbp),%rax
    12f2:	4c 89 7d 70          	mov    %r15,0x70(%rbp)
    12f6:	48 8d 50 01          	lea    0x1(%rax),%rdx
    12fa:	49 83 c5 01          	add    $0x1,%r13
    12fe:	48 89 95 80 00 00 00 	mov    %rdx,0x80(%rbp)
    1305:	41 c6 04 06 00       	movb   $0x0,(%r14,%rax,1)
    130a:	4c 39 eb             	cmp    %r13,%rbx
    130d:	0f 87 55 ff ff ff    	ja     1268 <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x1268>
    1313:	41 f6 04 24 80       	testb  $0x80,(%r12)
    1318:	0f 84 4c f5 ff ff    	je     86a <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x86a>
    131e:	41 0f b7 44 24 02    	movzwl 0x2(%r12),%eax
    1324:	89 c2                	mov    %eax,%edx
    1326:	66 81 e2 ff 3f       	and    $0x3fff,%dx
    132b:	a8 60                	test   $0x60,%al
    132d:	0f 84 37 f5 ff ff    	je     86a <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x86a>
    1333:	0f b7 85 f8 04 00 00 	movzwl 0x4f8(%rbp),%eax
    133a:	89 c1                	mov    %eax,%ecx
    133c:	66 c1 e9 06          	shr    $0x6,%cx
    1340:	a8 80                	test   $0x80,%al
    1342:	0f 85 50 14 00 00    	jne    2798 <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x2798>
    1348:	83 e1 01             	and    $0x1,%ecx
    134b:	0f 84 19 f5 ff ff    	je     86a <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x86a>
    1351:	be f3 00 00 00       	mov    $0xf3,%esi
    1356:	48 89 ef             	mov    %rbp,%rdi
    1359:	e8 00 00 00 00       	callq  135e <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x135e>
    135e:	f6 85 f8 04 00 00 40 	testb  $0x40,0x4f8(%rbp)
    1365:	0f 85 1d 11 00 00    	jne    2488 <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x2488>
    136b:	48 8b 74 24 10       	mov    0x10(%rsp),%rsi
    1370:	4c 89 e2             	mov    %r12,%rdx
    1373:	48 89 ef             	mov    %rbp,%rdi
    1376:	e8 00 00 00 00       	callq  137b <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x137b>
    137b:	be 0f 00 00 00       	mov    $0xf,%esi
    1380:	48 89 ef             	mov    %rbp,%rdi
    1383:	e8 00 00 00 00       	callq  1388 <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x1388>
    1388:	be 38 00 00 00       	mov    $0x38,%esi
    138d:	48 89 ef             	mov    %rbp,%rdi
    1390:	e8 00 00 00 00       	callq  1395 <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x1395>
    1395:	be f6 00 00 00       	mov    $0xf6,%esi
    139a:	48 89 ef             	mov    %rbp,%rdi
    139d:	e8 00 00 00 00       	callq  13a2 <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x13a2>
    13a2:	41 0f b6 04 24       	movzbl (%r12),%eax
    13a7:	48 89 ef             	mov    %rbp,%rdi
    13aa:	8d 34 c5 00 00 00 00 	lea    0x0(,%rax,8),%esi
    13b1:	0f b6 85 f8 04 00 00 	movzbl 0x4f8(%rbp),%eax
    13b8:	83 e6 38             	and    $0x38,%esi
    13bb:	83 e0 07             	and    $0x7,%eax
    13be:	09 c6                	or     %eax,%esi
    13c0:	83 ce c0             	or     $0xffffffc0,%esi
    13c3:	40 0f b6 f6          	movzbl %sil,%esi
    13c7:	e8 00 00 00 00       	callq  13cc <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x13cc>
    13cc:	41 0f b7 04 24       	movzwl (%r12),%eax
    13d1:	89 c2                	mov    %eax,%edx
    13d3:	66 c1 ea 06          	shr    $0x6,%dx
    13d7:	a8 80                	test   $0x80,%al
    13d9:	0f 84 31 10 00 00    	je     2410 <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x2410>
    13df:	0f b7 85 f8 04 00 00 	movzwl 0x4f8(%rbp),%eax
    13e6:	89 c1                	mov    %eax,%ecx
    13e8:	66 c1 e9 06          	shr    $0x6,%cx
    13ec:	a8 40                	test   $0x40,%al
    13ee:	0f 84 2c 13 00 00    	je     2720 <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x2720>
    13f4:	83 bd 28 05 00 00 01 	cmpl   $0x1,0x528(%rbp)
    13fb:	0f 84 bb 14 00 00    	je     28bc <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x28bc>
    1401:	48 8b 5c 24 10       	mov    0x10(%rsp),%rbx
    1406:	4c 89 e2             	mov    %r12,%rdx
    1409:	48 89 ef             	mov    %rbp,%rdi
    140c:	48 89 de             	mov    %rbx,%rsi
    140f:	e8 00 00 00 00       	callq  1414 <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x1414>
    1414:	41 0f b7 44 24 02    	movzwl 0x2(%r12),%eax
    141a:	48 89 ef             	mov    %rbp,%rdi
    141d:	66 25 ff 3f          	and    $0x3fff,%ax
    1421:	89 c6                	mov    %eax,%esi
    1423:	66 c1 ee 03          	shr    $0x3,%si
    1427:	83 f6 01             	xor    $0x1,%esi
    142a:	83 e6 01             	and    $0x1,%esi
    142d:	83 ce 12             	or     $0x12,%esi
    1430:	e8 00 00 00 00       	callq  1435 <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x1435>
    1435:	41 0f b6 14 24       	movzbl (%r12),%edx
    143a:	45 31 c9             	xor    %r9d,%r9d
    143d:	45 31 c0             	xor    %r8d,%r8d
    1440:	31 c9                	xor    %ecx,%ecx
    1442:	48 89 de             	mov    %rbx,%rsi
    1445:	48 89 ef             	mov    %rbp,%rdi
    1448:	83 e2 1f             	and    $0x1f,%edx
    144b:	e8 00 00 00 00       	callq  1450 <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x1450>
    1450:	48 81 c4 88 01 00 00 	add    $0x188,%rsp
    1457:	5b                   	pop    %rbx
    1458:	5d                   	pop    %rbp
    1459:	41 5c                	pop    %r12
    145b:	41 5d                	pop    %r13
    145d:	41 5e                	pop    %r14
    145f:	41 5f                	pop    %r15
    1461:	c3                   	retq   
    1462:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    1468:	8b 95 28 05 00 00    	mov    0x528(%rbp),%edx
    146e:	83 fa 01             	cmp    $0x1,%edx
    1471:	0f 84 45 14 00 00    	je     28bc <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x28bc>
    1477:	41 0f b7 45 00       	movzwl 0x0(%r13),%eax
    147c:	89 c1                	mov    %eax,%ecx
    147e:	66 c1 e9 06          	shr    $0x6,%cx
    1482:	a8 40                	test   $0x40,%al
    1484:	0f 85 3c 14 00 00    	jne    28c6 <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x28c6>
    148a:	0f b7 85 02 05 00 00 	movzwl 0x502(%rbp),%eax
    1491:	66 25 ff 3f          	and    $0x3fff,%ax
    1495:	66 83 f8 20          	cmp    $0x20,%ax
    1499:	0f 84 d1 0c 00 00    	je     2170 <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x2170>
    149f:	0f b7 85 0a 05 00 00 	movzwl 0x50a(%rbp),%eax
    14a6:	66 25 ff 3f          	and    $0x3fff,%ax
    14aa:	66 83 f8 20          	cmp    $0x20,%ax
    14ae:	0f 84 bc 0c 00 00    	je     2170 <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x2170>
    14b4:	45 31 f6             	xor    %r14d,%r14d
    14b7:	85 d2                	test   %edx,%edx
    14b9:	75 4a                	jne    1505 <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x1505>
    14bb:	0f b6 85 00 05 00 00 	movzbl 0x500(%rbp),%eax
    14c2:	0f b6 95 08 05 00 00 	movzbl 0x508(%rbp),%edx
    14c9:	83 e0 3f             	and    $0x3f,%eax
    14cc:	83 e2 3f             	and    $0x3f,%edx
    14cf:	f6 85 0a 05 00 00 60 	testb  $0x60,0x50a(%rbp)
    14d6:	74 15                	je     14ed <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x14ed>
    14d8:	66 f7 85 02 05 00 00 	testw  $0x3fff,0x502(%rbp)
    14df:	ff 3f 
    14e1:	75 0a                	jne    14ed <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x14ed>
    14e3:	83 bd 10 05 00 00 02 	cmpl   $0x2,0x510(%rbp)
    14ea:	0f 44 c2             	cmove  %edx,%eax
    14ed:	83 e0 08             	and    $0x8,%eax
    14f0:	83 e2 08             	and    $0x8,%edx
    14f3:	0f 85 d7 11 00 00    	jne    26d0 <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x26d0>
    14f9:	3c 01                	cmp    $0x1,%al
    14fb:	45 19 f6             	sbb    %r14d,%r14d
    14fe:	41 f7 d6             	not    %r14d
    1501:	41 83 e6 41          	and    $0x41,%r14d
    1505:	41 0f b6 45 00       	movzbl 0x0(%r13),%eax
    150a:	41 0f b7 75 02       	movzwl 0x2(%r13),%esi
    150f:	89 c7                	mov    %eax,%edi
    1511:	89 f2                	mov    %esi,%edx
    1513:	83 e0 08             	and    $0x8,%eax
    1516:	83 e7 3f             	and    $0x3f,%edi
    1519:	66 81 e2 ff 3f       	and    $0x3fff,%dx
    151e:	83 e1 02             	and    $0x2,%ecx
    1521:	0f 84 99 0a 00 00    	je     1fc0 <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x1fc0>
    1527:	83 e6 40             	and    $0x40,%esi
    152a:	0f 84 90 0a 00 00    	je     1fc0 <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x1fc0>
    1530:	3c 01                	cmp    $0x1,%al
    1532:	19 c0                	sbb    %eax,%eax
    1534:	83 e0 fc             	and    $0xfffffffc,%eax
    1537:	83 c0 4c             	add    $0x4c,%eax
    153a:	41 09 c6             	or     %eax,%r14d
    153d:	0f b7 85 fa 04 00 00 	movzwl 0x4fa(%rbp),%eax
    1544:	89 c1                	mov    %eax,%ecx
    1546:	66 81 e1 ff 3f       	and    $0x3fff,%cx
    154b:	a8 10                	test   $0x10,%al
    154d:	0f 84 1d 05 00 00    	je     1a70 <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x1a70>
    1553:	f6 c2 60             	test   $0x60,%dl
    1556:	0f 85 14 05 00 00    	jne    1a70 <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x1a70>
    155c:	48 8b 95 80 00 00 00 	mov    0x80(%rbp),%rdx
    1563:	4c 8b 45 70          	mov    0x70(%rbp),%r8
    1567:	4c 39 c2             	cmp    %r8,%rdx
    156a:	0f 82 26 05 00 00    	jb     1a96 <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x1a96>
    1570:	83 7d 20 03          	cmpl   $0x3,0x20(%rbp)
    1574:	0f 85 c4 12 00 00    	jne    283e <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x283e>
    157a:	4d 01 c0             	add    %r8,%r8
    157d:	48 8b 7d 68          	mov    0x68(%rbp),%rdi
    1581:	b8 00 10 00 00       	mov    $0x1000,%eax
    1586:	49 81 f8 00 10 00 00 	cmp    $0x1000,%r8
    158d:	4c 0f 42 c0          	cmovb  %rax,%r8
    1591:	48 8b 07             	mov    (%rdi),%rax
    1594:	4c 89 44 24 18       	mov    %r8,0x18(%rsp)
    1599:	4c 89 c6             	mov    %r8,%rsi
    159c:	ff 10                	callq  *(%rax)
    159e:	48 85 c0             	test   %rax,%rax
    15a1:	0f 84 10 13 00 00    	je     28b7 <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x28b7>
    15a7:	31 d2                	xor    %edx,%edx
    15a9:	48 83 bd 80 00 00 00 	cmpq   $0x0,0x80(%rbp)
    15b0:	00 
    15b1:	4c 8b 44 24 18       	mov    0x18(%rsp),%r8
    15b6:	74 20                	je     15d8 <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x15d8>
    15b8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    15bf:	00 
    15c0:	48 8b 4d 78          	mov    0x78(%rbp),%rcx
    15c4:	0f b6 0c 11          	movzbl (%rcx,%rdx,1),%ecx
    15c8:	88 0c 10             	mov    %cl,(%rax,%rdx,1)
    15cb:	48 83 c2 01          	add    $0x1,%rdx
    15cf:	48 39 95 80 00 00 00 	cmp    %rdx,0x80(%rbp)
    15d6:	77 e8                	ja     15c0 <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x15c0>
    15d8:	48 8b 7d 68          	mov    0x68(%rbp),%rdi
    15dc:	48 8b 75 78          	mov    0x78(%rbp),%rsi
    15e0:	48 89 44 24 20       	mov    %rax,0x20(%rsp)
    15e5:	4c 89 44 24 18       	mov    %r8,0x18(%rsp)
    15ea:	48 8b 17             	mov    (%rdi),%rdx
    15ed:	ff 52 08             	callq  *0x8(%rdx)
    15f0:	48 8b 44 24 20       	mov    0x20(%rsp),%rax
    15f5:	4c 8b 44 24 18       	mov    0x18(%rsp),%r8
    15fa:	48 8b 95 80 00 00 00 	mov    0x80(%rbp),%rdx
    1601:	48 89 45 78          	mov    %rax,0x78(%rbp)
    1605:	4c 89 45 70          	mov    %r8,0x70(%rbp)
    1609:	48 8d 4a 01          	lea    0x1(%rdx),%rcx
    160d:	48 89 8d 80 00 00 00 	mov    %rcx,0x80(%rbp)
    1614:	c6 04 10 66          	movb   $0x66,(%rax,%rdx,1)
    1618:	48 8b 95 80 00 00 00 	mov    0x80(%rbp),%rdx
    161f:	48 8b 45 70          	mov    0x70(%rbp),%rax
    1623:	45 84 f6             	test   %r14b,%r14b
    1626:	0f 85 b4 09 00 00    	jne    1fe0 <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x1fe0>
    162c:	48 39 c2             	cmp    %rax,%rdx
    162f:	0f 82 db 07 00 00    	jb     1e10 <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x1e10>
    1635:	83 7d 20 03          	cmpl   $0x3,0x20(%rbp)
    1639:	0f 85 ff 11 00 00    	jne    283e <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x283e>
    163f:	4c 8d 34 00          	lea    (%rax,%rax,1),%r14
    1643:	48 8b 7d 68          	mov    0x68(%rbp),%rdi
    1647:	b8 00 10 00 00       	mov    $0x1000,%eax
    164c:	49 81 fe 00 10 00 00 	cmp    $0x1000,%r14
    1653:	4c 0f 42 f0          	cmovb  %rax,%r14
    1657:	48 8b 07             	mov    (%rdi),%rax
    165a:	4c 89 f6             	mov    %r14,%rsi
    165d:	ff 10                	callq  *(%rax)
    165f:	48 85 c0             	test   %rax,%rax
    1662:	0f 84 4f 12 00 00    	je     28b7 <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x28b7>
    1668:	31 d2                	xor    %edx,%edx
    166a:	48 83 bd 80 00 00 00 	cmpq   $0x0,0x80(%rbp)
    1671:	00 
    1672:	74 1c                	je     1690 <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x1690>
    1674:	0f 1f 40 00          	nopl   0x0(%rax)
    1678:	48 8b 4d 78          	mov    0x78(%rbp),%rcx
    167c:	0f b6 0c 11          	movzbl (%rcx,%rdx,1),%ecx
    1680:	88 0c 10             	mov    %cl,(%rax,%rdx,1)
    1683:	48 83 c2 01          	add    $0x1,%rdx
    1687:	48 39 95 80 00 00 00 	cmp    %rdx,0x80(%rbp)
    168e:	77 e8                	ja     1678 <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x1678>
    1690:	48 8b 7d 68          	mov    0x68(%rbp),%rdi
    1694:	48 8b 75 78          	mov    0x78(%rbp),%rsi
    1698:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
    169d:	48 8b 17             	mov    (%rdi),%rdx
    16a0:	ff 52 08             	callq  *0x8(%rdx)
    16a3:	48 8b 44 24 18       	mov    0x18(%rsp),%rax
    16a8:	4c 89 75 70          	mov    %r14,0x70(%rbp)
    16ac:	48 8b 95 80 00 00 00 	mov    0x80(%rbp),%rdx
    16b3:	48 89 45 78          	mov    %rax,0x78(%rbp)
    16b7:	48 8d 4a 01          	lea    0x1(%rdx),%rcx
    16bb:	48 89 8d 80 00 00 00 	mov    %rcx,0x80(%rbp)
    16c2:	c6 04 10 0f          	movb   $0xf,(%rax,%rdx,1)
    16c6:	48 8b 95 80 00 00 00 	mov    0x80(%rbp),%rdx
    16cd:	4c 8b 75 70          	mov    0x70(%rbp),%r14
    16d1:	4c 39 f2             	cmp    %r14,%rdx
    16d4:	0f 82 26 07 00 00    	jb     1e00 <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x1e00>
    16da:	83 7d 20 03          	cmpl   $0x3,0x20(%rbp)
    16de:	0f 85 5a 11 00 00    	jne    283e <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x283e>
    16e4:	4d 01 f6             	add    %r14,%r14
    16e7:	48 8b 7d 68          	mov    0x68(%rbp),%rdi
    16eb:	b8 00 10 00 00       	mov    $0x1000,%eax
    16f0:	49 81 fe 00 10 00 00 	cmp    $0x1000,%r14
    16f7:	4c 0f 42 f0          	cmovb  %rax,%r14
    16fb:	48 8b 07             	mov    (%rdi),%rax
    16fe:	4c 89 f6             	mov    %r14,%rsi
    1701:	ff 10                	callq  *(%rax)
    1703:	48 85 c0             	test   %rax,%rax
    1706:	0f 84 ab 11 00 00    	je     28b7 <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x28b7>
    170c:	31 d2                	xor    %edx,%edx
    170e:	48 83 bd 80 00 00 00 	cmpq   $0x0,0x80(%rbp)
    1715:	00 
    1716:	74 20                	je     1738 <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x1738>
    1718:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    171f:	00 
    1720:	48 8b 4d 78          	mov    0x78(%rbp),%rcx
    1724:	0f b6 0c 11          	movzbl (%rcx,%rdx,1),%ecx
    1728:	88 0c 10             	mov    %cl,(%rax,%rdx,1)
    172b:	48 83 c2 01          	add    $0x1,%rdx
    172f:	48 39 95 80 00 00 00 	cmp    %rdx,0x80(%rbp)
    1736:	77 e8                	ja     1720 <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x1720>
    1738:	48 8b 7d 68          	mov    0x68(%rbp),%rdi
    173c:	48 8b 75 78          	mov    0x78(%rbp),%rsi
    1740:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
    1745:	48 8b 17             	mov    (%rdi),%rdx
    1748:	ff 52 08             	callq  *0x8(%rdx)
    174b:	48 8b 44 24 18       	mov    0x18(%rsp),%rax
    1750:	4c 89 75 70          	mov    %r14,0x70(%rbp)
    1754:	48 8b 95 80 00 00 00 	mov    0x80(%rbp),%rdx
    175b:	48 89 45 78          	mov    %rax,0x78(%rbp)
    175f:	48 8d 4a 01          	lea    0x1(%rdx),%rcx
    1763:	48 89 8d 80 00 00 00 	mov    %rcx,0x80(%rbp)
    176a:	c6 04 10 38          	movb   $0x38,(%rax,%rdx,1)
    176e:	48 8b 95 80 00 00 00 	mov    0x80(%rbp),%rdx
    1775:	4c 8b 75 70          	mov    0x70(%rbp),%r14
    1779:	4c 39 f2             	cmp    %r14,%rdx
    177c:	0f 82 6e 06 00 00    	jb     1df0 <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x1df0>
    1782:	83 7d 20 03          	cmpl   $0x3,0x20(%rbp)
    1786:	0f 85 b2 10 00 00    	jne    283e <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x283e>
    178c:	4d 01 f6             	add    %r14,%r14
    178f:	48 8b 7d 68          	mov    0x68(%rbp),%rdi
    1793:	b8 00 10 00 00       	mov    $0x1000,%eax
    1798:	49 81 fe 00 10 00 00 	cmp    $0x1000,%r14
    179f:	4c 0f 42 f0          	cmovb  %rax,%r14
    17a3:	48 8b 07             	mov    (%rdi),%rax
    17a6:	4c 89 f6             	mov    %r14,%rsi
    17a9:	ff 10                	callq  *(%rax)
    17ab:	48 85 c0             	test   %rax,%rax
    17ae:	0f 84 03 11 00 00    	je     28b7 <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x28b7>
    17b4:	31 d2                	xor    %edx,%edx
    17b6:	48 83 bd 80 00 00 00 	cmpq   $0x0,0x80(%rbp)
    17bd:	00 
    17be:	74 18                	je     17d8 <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x17d8>
    17c0:	48 8b 4d 78          	mov    0x78(%rbp),%rcx
    17c4:	0f b6 0c 11          	movzbl (%rcx,%rdx,1),%ecx
    17c8:	88 0c 10             	mov    %cl,(%rax,%rdx,1)
    17cb:	48 83 c2 01          	add    $0x1,%rdx
    17cf:	48 39 95 80 00 00 00 	cmp    %rdx,0x80(%rbp)
    17d6:	77 e8                	ja     17c0 <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x17c0>
    17d8:	48 8b 7d 68          	mov    0x68(%rbp),%rdi
    17dc:	48 8b 75 78          	mov    0x78(%rbp),%rsi
    17e0:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
    17e5:	48 8b 17             	mov    (%rdi),%rdx
    17e8:	ff 52 08             	callq  *0x8(%rdx)
    17eb:	48 8b 44 24 18       	mov    0x18(%rsp),%rax
    17f0:	4c 89 75 70          	mov    %r14,0x70(%rbp)
    17f4:	48 8b 95 80 00 00 00 	mov    0x80(%rbp),%rdx
    17fb:	48 89 45 78          	mov    %rax,0x78(%rbp)
    17ff:	48 8d 4a 01          	lea    0x1(%rdx),%rcx
    1803:	48 8b 74 24 10       	mov    0x10(%rsp),%rsi
    1808:	45 31 c9             	xor    %r9d,%r9d
    180b:	45 31 c0             	xor    %r8d,%r8d
    180e:	48 89 8d 80 00 00 00 	mov    %rcx,0x80(%rbp)
    1815:	48 89 ef             	mov    %rbp,%rdi
    1818:	31 c9                	xor    %ecx,%ecx
    181a:	c6 04 10 f6          	movb   $0xf6,(%rax,%rdx,1)
    181e:	41 0f b6 55 00       	movzbl 0x0(%r13),%edx
    1823:	83 e2 1f             	and    $0x1f,%edx
    1826:	e8 00 00 00 00       	callq  182b <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x182b>
    182b:	e9 6f f5 ff ff       	jmpq   d9f <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0xd9f>
    1830:	48 8b 45 78          	mov    0x78(%rbp),%rax
    1834:	e9 06 f1 ff ff       	jmpq   93f <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x93f>
    1839:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    1840:	41 83 7c 24 30 01    	cmpl   $0x1,0x30(%r12)
    1846:	0f 84 70 10 00 00    	je     28bc <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x28bc>
    184c:	4c 89 ea             	mov    %r13,%rdx
    184f:	4c 89 e6             	mov    %r12,%rsi
    1852:	48 89 ef             	mov    %rbp,%rdi
    1855:	e8 00 00 00 00       	callq  185a <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x185a>
    185a:	48 8b 85 80 00 00 00 	mov    0x80(%rbp),%rax
    1861:	4c 8b 75 70          	mov    0x70(%rbp),%r14
    1865:	4c 39 f0             	cmp    %r14,%rax
    1868:	0f 82 02 07 00 00    	jb     1f70 <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x1f70>
    186e:	83 7d 20 03          	cmpl   $0x3,0x20(%rbp)
    1872:	0f 85 c6 0f 00 00    	jne    283e <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x283e>
    1878:	48 8b 7d 68          	mov    0x68(%rbp),%rdi
    187c:	4d 01 f6             	add    %r14,%r14
    187f:	b8 00 10 00 00       	mov    $0x1000,%eax
    1884:	49 81 fe 00 10 00 00 	cmp    $0x1000,%r14
    188b:	4c 0f 42 f0          	cmovb  %rax,%r14
    188f:	48 8b 07             	mov    (%rdi),%rax
    1892:	4c 89 f6             	mov    %r14,%rsi
    1895:	ff 10                	callq  *(%rax)
    1897:	49 89 c7             	mov    %rax,%r15
    189a:	48 85 c0             	test   %rax,%rax
    189d:	0f 84 14 10 00 00    	je     28b7 <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x28b7>
    18a3:	31 d2                	xor    %edx,%edx
    18a5:	48 83 bd 80 00 00 00 	cmpq   $0x0,0x80(%rbp)
    18ac:	00 
    18ad:	74 1a                	je     18c9 <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x18c9>
    18af:	90                   	nop
    18b0:	48 8b 45 78          	mov    0x78(%rbp),%rax
    18b4:	0f b6 04 10          	movzbl (%rax,%rdx,1),%eax
    18b8:	41 88 04 17          	mov    %al,(%r15,%rdx,1)
    18bc:	48 83 c2 01          	add    $0x1,%rdx
    18c0:	48 39 95 80 00 00 00 	cmp    %rdx,0x80(%rbp)
    18c7:	77 e7                	ja     18b0 <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x18b0>
    18c9:	48 8b 7d 68          	mov    0x68(%rbp),%rdi
    18cd:	48 8b 75 78          	mov    0x78(%rbp),%rsi
    18d1:	48 8b 07             	mov    (%rdi),%rax
    18d4:	ff 50 08             	callq  *0x8(%rax)
    18d7:	4c 89 7d 78          	mov    %r15,0x78(%rbp)
    18db:	48 8b 85 80 00 00 00 	mov    0x80(%rbp),%rax
    18e2:	4c 89 75 70          	mov    %r14,0x70(%rbp)
    18e6:	48 8d 50 01          	lea    0x1(%rax),%rdx
    18ea:	48 89 95 80 00 00 00 	mov    %rdx,0x80(%rbp)
    18f1:	41 c6 04 07 0f       	movb   $0xf,(%r15,%rax,1)
    18f6:	48 8b 85 80 00 00 00 	mov    0x80(%rbp),%rax
    18fd:	4c 8b 75 70          	mov    0x70(%rbp),%r14
    1901:	4c 39 f0             	cmp    %r14,%rax
    1904:	0f 82 56 06 00 00    	jb     1f60 <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x1f60>
    190a:	83 7d 20 03          	cmpl   $0x3,0x20(%rbp)
    190e:	0f 85 2a 0f 00 00    	jne    283e <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x283e>
    1914:	48 8b 7d 68          	mov    0x68(%rbp),%rdi
    1918:	4d 01 f6             	add    %r14,%r14
    191b:	b8 00 10 00 00       	mov    $0x1000,%eax
    1920:	49 81 fe 00 10 00 00 	cmp    $0x1000,%r14
    1927:	4c 0f 42 f0          	cmovb  %rax,%r14
    192b:	48 8b 07             	mov    (%rdi),%rax
    192e:	4c 89 f6             	mov    %r14,%rsi
    1931:	ff 10                	callq  *(%rax)
    1933:	49 89 c7             	mov    %rax,%r15
    1936:	48 85 c0             	test   %rax,%rax
    1939:	0f 84 78 0f 00 00    	je     28b7 <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x28b7>
    193f:	31 d2                	xor    %edx,%edx
    1941:	48 83 bd 80 00 00 00 	cmpq   $0x0,0x80(%rbp)
    1948:	00 
    1949:	74 1e                	je     1969 <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x1969>
    194b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    1950:	48 8b 45 78          	mov    0x78(%rbp),%rax
    1954:	0f b6 04 10          	movzbl (%rax,%rdx,1),%eax
    1958:	41 88 04 17          	mov    %al,(%r15,%rdx,1)
    195c:	48 83 c2 01          	add    $0x1,%rdx
    1960:	48 39 95 80 00 00 00 	cmp    %rdx,0x80(%rbp)
    1967:	77 e7                	ja     1950 <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x1950>
    1969:	48 8b 7d 68          	mov    0x68(%rbp),%rdi
    196d:	48 8b 75 78          	mov    0x78(%rbp),%rsi
    1971:	48 8b 07             	mov    (%rdi),%rax
    1974:	ff 50 08             	callq  *0x8(%rax)
    1977:	4c 89 7d 78          	mov    %r15,0x78(%rbp)
    197b:	48 8b 85 80 00 00 00 	mov    0x80(%rbp),%rax
    1982:	4c 89 75 70          	mov    %r14,0x70(%rbp)
    1986:	48 8d 50 01          	lea    0x1(%rax),%rdx
    198a:	48 89 95 80 00 00 00 	mov    %rdx,0x80(%rbp)
    1991:	41 c6 04 07 38       	movb   $0x38,(%r15,%rax,1)
    1996:	48 8b 85 80 00 00 00 	mov    0x80(%rbp),%rax
    199d:	4c 8b 75 70          	mov    0x70(%rbp),%r14
    19a1:	4c 39 f0             	cmp    %r14,%rax
    19a4:	0f 82 76 05 00 00    	jb     1f20 <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x1f20>
    19aa:	83 7d 20 03          	cmpl   $0x3,0x20(%rbp)
    19ae:	0f 85 8a 0e 00 00    	jne    283e <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x283e>
    19b4:	48 8b 7d 68          	mov    0x68(%rbp),%rdi
    19b8:	4d 01 f6             	add    %r14,%r14
    19bb:	b8 00 10 00 00       	mov    $0x1000,%eax
    19c0:	49 81 fe 00 10 00 00 	cmp    $0x1000,%r14
    19c7:	4c 0f 42 f0          	cmovb  %rax,%r14
    19cb:	48 8b 07             	mov    (%rdi),%rax
    19ce:	4c 89 f6             	mov    %r14,%rsi
    19d1:	ff 10                	callq  *(%rax)
    19d3:	49 89 c7             	mov    %rax,%r15
    19d6:	48 85 c0             	test   %rax,%rax
    19d9:	0f 84 d8 0e 00 00    	je     28b7 <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x28b7>
    19df:	31 d2                	xor    %edx,%edx
    19e1:	48 83 bd 80 00 00 00 	cmpq   $0x0,0x80(%rbp)
    19e8:	00 
    19e9:	74 1e                	je     1a09 <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x1a09>
    19eb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    19f0:	48 8b 45 78          	mov    0x78(%rbp),%rax
    19f4:	0f b6 04 10          	movzbl (%rax,%rdx,1),%eax
    19f8:	41 88 04 17          	mov    %al,(%r15,%rdx,1)
    19fc:	48 83 c2 01          	add    $0x1,%rdx
    1a00:	48 39 95 80 00 00 00 	cmp    %rdx,0x80(%rbp)
    1a07:	77 e7                	ja     19f0 <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x19f0>
    1a09:	48 8b 7d 68          	mov    0x68(%rbp),%rdi
    1a0d:	48 8b 75 78          	mov    0x78(%rbp),%rsi
    1a11:	48 8b 07             	mov    (%rdi),%rax
    1a14:	ff 50 08             	callq  *0x8(%rax)
    1a17:	4c 89 7d 78          	mov    %r15,0x78(%rbp)
    1a1b:	48 8b 85 80 00 00 00 	mov    0x80(%rbp),%rax
    1a22:	4c 89 75 70          	mov    %r14,0x70(%rbp)
    1a26:	48 8d 50 01          	lea    0x1(%rax),%rdx
    1a2a:	45 31 c9             	xor    %r9d,%r9d
    1a2d:	45 31 c0             	xor    %r8d,%r8d
    1a30:	31 c9                	xor    %ecx,%ecx
    1a32:	48 89 95 80 00 00 00 	mov    %rdx,0x80(%rbp)
    1a39:	4c 89 e6             	mov    %r12,%rsi
    1a3c:	48 89 ef             	mov    %rbp,%rdi
    1a3f:	41 c6 04 07 f6       	movb   $0xf6,(%r15,%rax,1)
    1a44:	41 0f b6 55 00       	movzbl 0x0(%r13),%edx
    1a49:	83 e2 1f             	and    $0x1f,%edx
    1a4c:	e8 00 00 00 00       	callq  1a51 <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x1a51>
    1a51:	e9 2f f7 ff ff       	jmpq   1185 <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x1185>
    1a56:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    1a5d:	00 00 00 
    1a60:	4c 8b 7d 78          	mov    0x78(%rbp),%r15
    1a64:	e9 5d f4 ff ff       	jmpq   ec6 <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0xec6>
    1a69:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    1a70:	83 e2 10             	and    $0x10,%edx
    1a73:	0f 84 9f fb ff ff    	je     1618 <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x1618>
    1a79:	83 e1 60             	and    $0x60,%ecx
    1a7c:	0f 85 96 fb ff ff    	jne    1618 <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x1618>
    1a82:	48 8b 95 80 00 00 00 	mov    0x80(%rbp),%rdx
    1a89:	4c 8b 45 70          	mov    0x70(%rbp),%r8
    1a8d:	4c 39 c2             	cmp    %r8,%rdx
    1a90:	0f 83 da fa ff ff    	jae    1570 <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x1570>
    1a96:	48 8b 45 78          	mov    0x78(%rbp),%rax
    1a9a:	e9 6a fb ff ff       	jmpq   1609 <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x1609>
    1a9f:	90                   	nop
    1aa0:	83 e2 10             	and    $0x10,%edx
    1aa3:	0f 84 2f f0 ff ff    	je     ad8 <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0xad8>
    1aa9:	83 e1 60             	and    $0x60,%ecx
    1aac:	0f 85 26 f0 ff ff    	jne    ad8 <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0xad8>
    1ab2:	48 8b 95 80 00 00 00 	mov    0x80(%rbp),%rdx
    1ab9:	4c 8b 45 70          	mov    0x70(%rbp),%r8
    1abd:	4c 39 c2             	cmp    %r8,%rdx
    1ac0:	0f 83 6b ef ff ff    	jae    a31 <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0xa31>
    1ac6:	48 8b 45 78          	mov    0x78(%rbp),%rax
    1aca:	e9 fa ef ff ff       	jmpq   ac9 <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0xac9>
    1acf:	90                   	nop
    1ad0:	4d 85 c0             	test   %r8,%r8
    1ad3:	0f 84 4a 0d 00 00    	je     2823 <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x2823>
    1ad9:	48 8b 4c 24 38       	mov    0x38(%rsp),%rcx
    1ade:	4c 8b 18             	mov    (%rax),%r11
    1ae1:	0f b7 71 0a          	movzwl 0xa(%rcx),%esi
    1ae5:	f3 0f 6f 31          	movdqu (%rcx),%xmm6
    1ae9:	0f b6 41 0c          	movzbl 0xc(%rcx),%eax
    1aed:	44 8b 51 10          	mov    0x10(%rcx),%r10d
    1af1:	66 89 74 24 18       	mov    %si,0x18(%rsp)
    1af6:	0f b6 71 08          	movzbl 0x8(%rcx),%esi
    1afa:	0f 29 b4 24 a0 00 00 	movaps %xmm6,0xa0(%rsp)
    1b01:	00 
    1b02:	f3 0f 6f 71 10       	movdqu 0x10(%rcx),%xmm6
    1b07:	41 89 c5             	mov    %eax,%r13d
    1b0a:	c0 e8 03             	shr    $0x3,%al
    1b0d:	89 f7                	mov    %esi,%edi
    1b0f:	0f b7 71 08          	movzwl 0x8(%rcx),%esi
    1b13:	0f b7 54 24 18       	movzwl 0x18(%rsp),%edx
    1b18:	41 83 e5 07          	and    $0x7,%r13d
    1b1c:	0f 29 74 24 20       	movaps %xmm6,0x20(%rsp)
    1b21:	4c 8b 71 18          	mov    0x18(%rcx),%r14
    1b25:	83 e7 3f             	and    $0x3f,%edi
    1b28:	83 e0 07             	and    $0x7,%eax
    1b2b:	66 89 74 24 20       	mov    %si,0x20(%rsp)
    1b30:	41 89 f0             	mov    %esi,%r8d
    1b33:	0f b6 71 0b          	movzbl 0xb(%rcx),%esi
    1b37:	0f 29 b4 24 b0 00 00 	movaps %xmm6,0xb0(%rsp)
    1b3e:	00 
    1b3f:	66 41 c1 e8 06       	shr    $0x6,%r8w
    1b44:	40 88 74 24 20       	mov    %sil,0x20(%rsp)
    1b49:	40 c0 ee 06          	shr    $0x6,%sil
    1b4d:	83 e6 01             	and    $0x1,%esi
    1b50:	66 81 e2 ff 3f       	and    $0x3fff,%dx
    1b55:	75 0f                	jne    1b66 <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x1b66>
    1b57:	45 31 d2             	xor    %r10d,%r10d
    1b5a:	31 c0                	xor    %eax,%eax
    1b5c:	45 31 ed             	xor    %r13d,%r13d
    1b5f:	31 f6                	xor    %esi,%esi
    1b61:	45 31 c0             	xor    %r8d,%r8d
    1b64:	31 ff                	xor    %edi,%edi
    1b66:	45 0f b7 c0          	movzwl %r8w,%r8d
    1b6a:	40 0f b6 ff          	movzbl %dil,%edi
    1b6e:	c1 e2 10             	shl    $0x10,%edx
    1b71:	4c 03 74 24 30       	add    0x30(%rsp),%r14
    1b76:	41 c1 e0 06          	shl    $0x6,%r8d
    1b7a:	c1 e0 03             	shl    $0x3,%eax
    1b7d:	8b 8d e0 03 00 00    	mov    0x3e0(%rbp),%ecx
    1b83:	44 8b 8c 24 40 01 00 	mov    0x140(%rsp),%r9d
    1b8a:	00 
    1b8b:	44 09 c7             	or     %r8d,%edi
    1b8e:	41 09 c5             	or     %eax,%r13d
    1b91:	c1 e6 1e             	shl    $0x1e,%esi
    1b94:	0f b6 84 24 ac 00 00 	movzbl 0xac(%rsp),%eax
    1b9b:	00 
    1b9c:	09 d7                	or     %edx,%edi
    1b9e:	8b 94 24 a8 00 00 00 	mov    0xa8(%rsp),%edx
    1ba5:	41 83 e5 3f          	and    $0x3f,%r13d
    1ba9:	c1 e1 10             	shl    $0x10,%ecx
    1bac:	09 f7                	or     %esi,%edi
    1bae:	83 e0 c0             	and    $0xffffffc0,%eax
    1bb1:	81 e1 00 00 ff 3f    	and    $0x3fff0000,%ecx
    1bb7:	44 89 94 24 b0 00 00 	mov    %r10d,0xb0(%rsp)
    1bbe:	00 
    1bbf:	81 e7 ff ff ff 7f    	and    $0x7fffffff,%edi
    1bc5:	41 09 c5             	or     %eax,%r13d
    1bc8:	83 c9 40             	or     $0x40,%ecx
    1bcb:	81 e2 00 00 00 80    	and    $0x80000000,%edx
    1bd1:	09 d7                	or     %edx,%edi
    1bd3:	0f b6 85 e4 03 00 00 	movzbl 0x3e4(%rbp),%eax
    1bda:	44 88 ac 24 ac 00 00 	mov    %r13b,0xac(%rsp)
    1be1:	00 
    1be2:	41 81 e1 00 00 00 80 	and    $0x80000000,%r9d
    1be9:	89 bc 24 a8 00 00 00 	mov    %edi,0xa8(%rsp)
    1bf0:	44 09 c9             	or     %r9d,%ecx
    1bf3:	66 0f 6f b4 24 a0 00 	movdqa 0xa0(%rsp),%xmm6
    1bfa:	00 00 
    1bfc:	88 84 24 74 01 00 00 	mov    %al,0x174(%rsp)
    1c03:	0f 11 b4 24 48 01 00 	movups %xmm6,0x148(%rsp)
    1c0a:	00 
    1c0b:	0f b7 84 24 4a 01 00 	movzwl 0x14a(%rsp),%eax
    1c12:	00 
    1c13:	4c 89 b4 24 b8 00 00 	mov    %r14,0xb8(%rsp)
    1c1a:	00 
    1c1b:	66 0f 6f bc 24 b0 00 	movdqa 0xb0(%rsp),%xmm7
    1c22:	00 00 
    1c24:	25 ff 3f 00 00       	and    $0x3fff,%eax
    1c29:	80 a4 24 44 01 00 00 	andb   $0xc0,0x144(%rsp)
    1c30:	c0 
    1c31:	89 8c 24 40 01 00 00 	mov    %ecx,0x140(%rsp)
    1c38:	48 c7 84 24 68 01 00 	movq   $0x0,0x168(%rsp)
    1c3f:	00 00 00 00 00 
    1c44:	c7 84 24 70 01 00 00 	movl   $0x0,0x170(%rsp)
    1c4b:	00 00 00 00 
    1c4f:	0f 11 bc 24 58 01 00 	movups %xmm7,0x158(%rsp)
    1c56:	00 
    1c57:	83 f8 7f             	cmp    $0x7f,%eax
    1c5a:	0f 87 52 0c 00 00    	ja     28b2 <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x28b2>
    1c60:	0f b7 94 24 52 01 00 	movzwl 0x152(%rsp),%edx
    1c67:	00 
    1c68:	81 e2 ff 3f 00 00    	and    $0x3fff,%edx
    1c6e:	8d 4a ff             	lea    -0x1(%rdx),%ecx
    1c71:	83 f9 3f             	cmp    $0x3f,%ecx
    1c74:	0f 86 16 07 00 00    	jbe    2390 <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x2390>
    1c7a:	4c 89 da             	mov    %r11,%rdx
    1c7d:	4c 89 fe             	mov    %r15,%rsi
    1c80:	48 89 ef             	mov    %rbp,%rdi
    1c83:	e8 00 00 00 00       	callq  1c88 <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x1c88>
    1c88:	48 8b 84 24 c0 01 00 	mov    0x1c0(%rsp),%rax
    1c8f:	00 
    1c90:	4c 8b 40 78          	mov    0x78(%rax),%r8
    1c94:	e9 1e f1 ff ff       	jmpq   db7 <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0xdb7>
    1c99:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    1ca0:	48 8b 85 80 00 00 00 	mov    0x80(%rbp),%rax
    1ca7:	4c 8b 75 70          	mov    0x70(%rbp),%r14
    1cab:	4c 39 f0             	cmp    %r14,%rax
    1cae:	0f 82 84 05 00 00    	jb     2238 <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x2238>
    1cb4:	83 7d 20 03          	cmpl   $0x3,0x20(%rbp)
    1cb8:	0f 85 80 0b 00 00    	jne    283e <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x283e>
    1cbe:	48 8b 7d 68          	mov    0x68(%rbp),%rdi
    1cc2:	4d 01 f6             	add    %r14,%r14
    1cc5:	b8 00 10 00 00       	mov    $0x1000,%eax
    1cca:	49 81 fe 00 10 00 00 	cmp    $0x1000,%r14
    1cd1:	4c 0f 42 f0          	cmovb  %rax,%r14
    1cd5:	48 8b 07             	mov    (%rdi),%rax
    1cd8:	4c 89 f6             	mov    %r14,%rsi
    1cdb:	ff 10                	callq  *(%rax)
    1cdd:	49 89 c7             	mov    %rax,%r15
    1ce0:	48 85 c0             	test   %rax,%rax
    1ce3:	0f 84 ce 0b 00 00    	je     28b7 <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x28b7>
    1ce9:	31 d2                	xor    %edx,%edx
    1ceb:	48 83 bd 80 00 00 00 	cmpq   $0x0,0x80(%rbp)
    1cf2:	00 
    1cf3:	74 1c                	je     1d11 <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x1d11>
    1cf5:	0f 1f 00             	nopl   (%rax)
    1cf8:	48 8b 45 78          	mov    0x78(%rbp),%rax
    1cfc:	0f b6 04 10          	movzbl (%rax,%rdx,1),%eax
    1d00:	41 88 04 17          	mov    %al,(%r15,%rdx,1)
    1d04:	48 83 c2 01          	add    $0x1,%rdx
    1d08:	48 39 95 80 00 00 00 	cmp    %rdx,0x80(%rbp)
    1d0f:	77 e7                	ja     1cf8 <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x1cf8>
    1d11:	48 8b 7d 68          	mov    0x68(%rbp),%rdi
    1d15:	48 8b 75 78          	mov    0x78(%rbp),%rsi
    1d19:	48 8b 07             	mov    (%rdi),%rax
    1d1c:	ff 50 08             	callq  *0x8(%rax)
    1d1f:	4c 89 7d 78          	mov    %r15,0x78(%rbp)
    1d23:	48 8b 85 80 00 00 00 	mov    0x80(%rbp),%rax
    1d2a:	4c 89 75 70          	mov    %r14,0x70(%rbp)
    1d2e:	48 8d 50 01          	lea    0x1(%rax),%rdx
    1d32:	48 89 95 80 00 00 00 	mov    %rdx,0x80(%rbp)
    1d39:	41 c6 04 07 67       	movb   $0x67,(%r15,%rax,1)
    1d3e:	0f b6 84 24 48 01 00 	movzbl 0x148(%rsp),%eax
    1d45:	00 
    1d46:	0f b6 94 24 04 01 00 	movzbl 0x104(%rsp),%edx
    1d4d:	00 
    1d4e:	83 e0 3f             	and    $0x3f,%eax
    1d51:	89 c1                	mov    %eax,%ecx
    1d53:	83 e2 07             	and    $0x7,%edx
    1d56:	c0 e9 03             	shr    $0x3,%cl
    1d59:	83 e1 01             	and    $0x1,%ecx
    1d5c:	66 41 f7 04 24 00 10 	testw  $0x1000,(%r12)
    1d63:	0f 85 27 e9 ff ff    	jne    690 <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x690>
    1d69:	41 f6 04 24 10       	testb  $0x10,(%r12)
    1d6e:	0f 85 1c e9 ff ff    	jne    690 <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x690>
    1d74:	41 0f b6 74 24 04    	movzbl 0x4(%r12),%esi
    1d7a:	40 f6 c6 07          	test   $0x7,%sil
    1d7e:	0f 85 0c e9 ff ff    	jne    690 <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x690>
    1d84:	e9 fa e8 ff ff       	jmpq   683 <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x683>
    1d89:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    1d90:	0f b6 bc 24 10 01 00 	movzbl 0x110(%rsp),%edi
    1d97:	00 
    1d98:	83 e7 1f             	and    $0x1f,%edi
    1d9b:	40 80 ff 04          	cmp    $0x4,%dil
    1d9f:	0f 84 9e 0a 00 00    	je     2843 <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x2843>
    1da5:	85 c0                	test   %eax,%eax
    1da7:	0f 84 22 e8 ff ff    	je     5cf <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x5cf>
    1dad:	39 d0                	cmp    %edx,%eax
    1daf:	0f 84 1a e8 ff ff    	je     5cf <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x5cf>
    1db5:	bf 10 00 00 00       	mov    $0x10,%edi
    1dba:	e8 00 00 00 00       	callq  1dbf <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x1dbf>
    1dbf:	48 8b 15 00 00 00 00 	mov    0x0(%rip),%rdx        # 1dc6 <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x1dc6>
    1dc6:	48 8b 35 00 00 00 00 	mov    0x0(%rip),%rsi        # 1dcd <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x1dcd>
    1dcd:	48 89 c7             	mov    %rax,%rdi
    1dd0:	48 8b 05 00 00 00 00 	mov    0x0(%rip),%rax        # 1dd7 <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x1dd7>
    1dd7:	c7 47 08 06 00 00 00 	movl   $0x6,0x8(%rdi)
    1dde:	48 83 c0 10          	add    $0x10,%rax
    1de2:	48 89 07             	mov    %rax,(%rdi)
    1de5:	e8 00 00 00 00       	callq  1dea <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x1dea>
    1dea:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    1df0:	48 8b 45 78          	mov    0x78(%rbp),%rax
    1df4:	e9 06 fa ff ff       	jmpq   17ff <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x17ff>
    1df9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    1e00:	48 8b 45 78          	mov    0x78(%rbp),%rax
    1e04:	e9 56 f9 ff ff       	jmpq   175f <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x175f>
    1e09:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    1e10:	48 8b 45 78          	mov    0x78(%rbp),%rax
    1e14:	e9 9e f8 ff ff       	jmpq   16b7 <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x16b7>
    1e19:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    1e20:	4c 8b 75 78          	mov    0x78(%rbp),%r14
    1e24:	e9 67 ef ff ff       	jmpq   d90 <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0xd90>
    1e29:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    1e30:	48 8b 45 78          	mov    0x78(%rbp),%rax
    1e34:	e9 86 ee ff ff       	jmpq   cbf <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0xcbf>
    1e39:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    1e40:	41 0f b7 55 0a       	movzwl 0xa(%r13),%edx
    1e45:	66 81 e2 ff 3f       	and    $0x3fff,%dx
    1e4a:	66 83 fa 20          	cmp    $0x20,%dx
    1e4e:	0f 84 f4 03 00 00    	je     2248 <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x2248>
    1e54:	41 0f b7 55 12       	movzwl 0x12(%r13),%edx
    1e59:	66 81 e2 ff 3f       	and    $0x3fff,%dx
    1e5e:	66 83 fa 20          	cmp    $0x20,%dx
    1e62:	0f 84 e0 03 00 00    	je     2248 <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x2248>
    1e68:	41 8b 55 30          	mov    0x30(%r13),%edx
    1e6c:	45 31 f6             	xor    %r14d,%r14d
    1e6f:	85 d2                	test   %edx,%edx
    1e71:	75 41                	jne    1eb4 <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x1eb4>
    1e73:	41 0f b6 55 08       	movzbl 0x8(%r13),%edx
    1e78:	41 0f b6 4d 10       	movzbl 0x10(%r13),%ecx
    1e7d:	83 e2 3f             	and    $0x3f,%edx
    1e80:	83 e1 3f             	and    $0x3f,%ecx
    1e83:	41 f6 45 12 60       	testb  $0x60,0x12(%r13)
    1e88:	74 11                	je     1e9b <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x1e9b>
    1e8a:	66 41 f7 45 0a ff 3f 	testw  $0x3fff,0xa(%r13)
    1e91:	75 08                	jne    1e9b <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x1e9b>
    1e93:	41 83 7d 18 02       	cmpl   $0x2,0x18(%r13)
    1e98:	0f 44 d1             	cmove  %ecx,%edx
    1e9b:	83 e2 08             	and    $0x8,%edx
    1e9e:	83 e1 08             	and    $0x8,%ecx
    1ea1:	0f 85 39 08 00 00    	jne    26e0 <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x26e0>
    1ea7:	80 fa 01             	cmp    $0x1,%dl
    1eaa:	45 19 f6             	sbb    %r14d,%r14d
    1ead:	41 f7 d6             	not    %r14d
    1eb0:	41 83 e6 41          	and    $0x41,%r14d
    1eb4:	0f b7 95 fa 04 00 00 	movzwl 0x4fa(%rbp),%edx
    1ebb:	89 d1                	mov    %edx,%ecx
    1ebd:	66 81 e1 ff 3f       	and    $0x3fff,%cx
    1ec2:	a8 02                	test   $0x2,%al
    1ec4:	0f b6 85 f8 04 00 00 	movzbl 0x4f8(%rbp),%eax
    1ecb:	0f 84 cf 00 00 00    	je     1fa0 <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x1fa0>
    1ed1:	83 e2 40             	and    $0x40,%edx
    1ed4:	0f 84 c6 00 00 00    	je     1fa0 <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x1fa0>
    1eda:	83 e0 08             	and    $0x8,%eax
    1edd:	3c 01                	cmp    $0x1,%al
    1edf:	19 c0                	sbb    %eax,%eax
    1ee1:	83 e0 fc             	and    $0xfffffffc,%eax
    1ee4:	83 c0 4c             	add    $0x4c,%eax
    1ee7:	41 09 c6             	or     %eax,%r14d
    1eea:	41 0f b7 55 02       	movzwl 0x2(%r13),%edx
    1eef:	66 81 e2 ff 3f       	and    $0x3fff,%dx
    1ef4:	e9 12 eb ff ff       	jmpq   a0b <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0xa0b>
    1ef9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    1f00:	48 8b 45 78          	mov    0x78(%rbp),%rax
    1f04:	e9 16 ed ff ff       	jmpq   c1f <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0xc1f>
    1f09:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    1f10:	48 8b 45 78          	mov    0x78(%rbp),%rax
    1f14:	e9 5e ec ff ff       	jmpq   b77 <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0xb77>
    1f19:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    1f20:	4c 8b 7d 78          	mov    0x78(%rbp),%r15
    1f24:	e9 fd fa ff ff       	jmpq   1a26 <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x1a26>
    1f29:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    1f30:	4c 8b 7d 78          	mov    0x78(%rbp),%r15
    1f34:	e9 85 f1 ff ff       	jmpq   10be <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x10be>
    1f39:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    1f40:	4c 8b 7d 78          	mov    0x78(%rbp),%r15
    1f44:	e9 d5 f0 ff ff       	jmpq   101e <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x101e>
    1f49:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    1f50:	4c 8b 7d 78          	mov    0x78(%rbp),%r15
    1f54:	e9 25 f0 ff ff       	jmpq   f7e <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0xf7e>
    1f59:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    1f60:	4c 8b 7d 78          	mov    0x78(%rbp),%r15
    1f64:	e9 1d fa ff ff       	jmpq   1986 <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x1986>
    1f69:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    1f70:	4c 8b 7d 78          	mov    0x78(%rbp),%r15
    1f74:	e9 6d f9 ff ff       	jmpq   18e6 <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x18e6>
    1f79:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    1f80:	4c 8b 75 78          	mov    0x78(%rbp),%r14
    1f84:	e9 ed f1 ff ff       	jmpq   1176 <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x1176>
    1f89:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    1f90:	4c 8b 75 78          	mov    0x78(%rbp),%r14
    1f94:	e9 5d f3 ff ff       	jmpq   12f6 <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x12f6>
    1f99:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    1fa0:	89 c2                	mov    %eax,%edx
    1fa2:	83 e2 3f             	and    $0x3f,%edx
    1fa5:	a8 08                	test   $0x8,%al
    1fa7:	0f 85 53 04 00 00    	jne    2400 <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x2400>
    1fad:	83 e2 20             	and    $0x20,%edx
    1fb0:	b8 40 00 00 00       	mov    $0x40,%eax
    1fb5:	0f 85 2c ff ff ff    	jne    1ee7 <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x1ee7>
    1fbb:	e9 2a ff ff ff       	jmpq   1eea <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x1eea>
    1fc0:	84 c0                	test   %al,%al
    1fc2:	0f 85 28 04 00 00    	jne    23f0 <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x23f0>
    1fc8:	83 e7 20             	and    $0x20,%edi
    1fcb:	0f 84 6c f5 ff ff    	je     153d <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x153d>
    1fd1:	b8 40 00 00 00       	mov    $0x40,%eax
    1fd6:	e9 5f f5 ff ff       	jmpq   153a <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x153a>
    1fdb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    1fe0:	48 39 c2             	cmp    %rax,%rdx
    1fe3:	0f 82 d7 03 00 00    	jb     23c0 <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x23c0>
    1fe9:	83 7d 20 03          	cmpl   $0x3,0x20(%rbp)
    1fed:	0f 85 4b 08 00 00    	jne    283e <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x283e>
    1ff3:	48 8d 0c 00          	lea    (%rax,%rax,1),%rcx
    1ff7:	48 8b 7d 68          	mov    0x68(%rbp),%rdi
    1ffb:	b8 00 10 00 00       	mov    $0x1000,%eax
    2000:	48 81 f9 00 10 00 00 	cmp    $0x1000,%rcx
    2007:	48 0f 42 c8          	cmovb  %rax,%rcx
    200b:	48 8b 07             	mov    (%rdi),%rax
    200e:	48 89 4c 24 18       	mov    %rcx,0x18(%rsp)
    2013:	48 89 ce             	mov    %rcx,%rsi
    2016:	ff 10                	callq  *(%rax)
    2018:	48 85 c0             	test   %rax,%rax
    201b:	0f 84 96 08 00 00    	je     28b7 <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x28b7>
    2021:	31 d2                	xor    %edx,%edx
    2023:	48 83 bd 80 00 00 00 	cmpq   $0x0,0x80(%rbp)
    202a:	00 
    202b:	48 8b 4c 24 18       	mov    0x18(%rsp),%rcx
    2030:	74 1f                	je     2051 <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x2051>
    2032:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    2038:	48 8b 75 78          	mov    0x78(%rbp),%rsi
    203c:	0f b6 34 16          	movzbl (%rsi,%rdx,1),%esi
    2040:	40 88 34 10          	mov    %sil,(%rax,%rdx,1)
    2044:	48 83 c2 01          	add    $0x1,%rdx
    2048:	48 39 95 80 00 00 00 	cmp    %rdx,0x80(%rbp)
    204f:	77 e7                	ja     2038 <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x2038>
    2051:	48 8b 7d 68          	mov    0x68(%rbp),%rdi
    2055:	48 8b 75 78          	mov    0x78(%rbp),%rsi
    2059:	48 89 44 24 20       	mov    %rax,0x20(%rsp)
    205e:	48 89 4c 24 18       	mov    %rcx,0x18(%rsp)
    2063:	48 8b 17             	mov    (%rdi),%rdx
    2066:	ff 52 08             	callq  *0x8(%rdx)
    2069:	48 8b 44 24 20       	mov    0x20(%rsp),%rax
    206e:	48 8b 4c 24 18       	mov    0x18(%rsp),%rcx
    2073:	48 8b 95 80 00 00 00 	mov    0x80(%rbp),%rdx
    207a:	48 89 45 78          	mov    %rax,0x78(%rbp)
    207e:	48 89 4d 70          	mov    %rcx,0x70(%rbp)
    2082:	48 8d 4a 01          	lea    0x1(%rdx),%rcx
    2086:	48 89 8d 80 00 00 00 	mov    %rcx,0x80(%rbp)
    208d:	44 88 34 10          	mov    %r14b,(%rax,%rdx,1)
    2091:	48 8b 95 80 00 00 00 	mov    0x80(%rbp),%rdx
    2098:	48 8b 45 70          	mov    0x70(%rbp),%rax
    209c:	e9 8b f5 ff ff       	jmpq   162c <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x162c>
    20a1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    20a8:	48 39 c2             	cmp    %rax,%rdx
    20ab:	0f 82 cf 02 00 00    	jb     2380 <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x2380>
    20b1:	83 7d 20 03          	cmpl   $0x3,0x20(%rbp)
    20b5:	0f 85 83 07 00 00    	jne    283e <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x283e>
    20bb:	48 8d 0c 00          	lea    (%rax,%rax,1),%rcx
    20bf:	48 8b 7d 68          	mov    0x68(%rbp),%rdi
    20c3:	b8 00 10 00 00       	mov    $0x1000,%eax
    20c8:	48 81 f9 00 10 00 00 	cmp    $0x1000,%rcx
    20cf:	48 0f 42 c8          	cmovb  %rax,%rcx
    20d3:	48 8b 07             	mov    (%rdi),%rax
    20d6:	48 89 4c 24 18       	mov    %rcx,0x18(%rsp)
    20db:	48 89 ce             	mov    %rcx,%rsi
    20de:	ff 10                	callq  *(%rax)
    20e0:	48 85 c0             	test   %rax,%rax
    20e3:	0f 84 ce 07 00 00    	je     28b7 <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x28b7>
    20e9:	31 d2                	xor    %edx,%edx
    20eb:	48 83 bd 80 00 00 00 	cmpq   $0x0,0x80(%rbp)
    20f2:	00 
    20f3:	48 8b 4c 24 18       	mov    0x18(%rsp),%rcx
    20f8:	74 1f                	je     2119 <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x2119>
    20fa:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    2100:	48 8b 75 78          	mov    0x78(%rbp),%rsi
    2104:	0f b6 34 16          	movzbl (%rsi,%rdx,1),%esi
    2108:	40 88 34 10          	mov    %sil,(%rax,%rdx,1)
    210c:	48 83 c2 01          	add    $0x1,%rdx
    2110:	48 39 95 80 00 00 00 	cmp    %rdx,0x80(%rbp)
    2117:	77 e7                	ja     2100 <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x2100>
    2119:	48 8b 7d 68          	mov    0x68(%rbp),%rdi
    211d:	48 8b 75 78          	mov    0x78(%rbp),%rsi
    2121:	48 89 4c 24 20       	mov    %rcx,0x20(%rsp)
    2126:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
    212b:	48 8b 17             	mov    (%rdi),%rdx
    212e:	ff 52 08             	callq  *0x8(%rdx)
    2131:	48 8b 44 24 18       	mov    0x18(%rsp),%rax
    2136:	48 8b 4c 24 20       	mov    0x20(%rsp),%rcx
    213b:	48 8b 95 80 00 00 00 	mov    0x80(%rbp),%rdx
    2142:	48 89 45 78          	mov    %rax,0x78(%rbp)
    2146:	48 89 4d 70          	mov    %rcx,0x70(%rbp)
    214a:	48 8d 4a 01          	lea    0x1(%rdx),%rcx
    214e:	48 89 8d 80 00 00 00 	mov    %rcx,0x80(%rbp)
    2155:	44 88 34 10          	mov    %r14b,(%rax,%rdx,1)
    2159:	48 8b 95 80 00 00 00 	mov    0x80(%rbp),%rdx
    2160:	48 8b 45 70          	mov    0x70(%rbp),%rax
    2164:	e9 83 e9 ff ff       	jmpq   aec <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0xaec>
    2169:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    2170:	48 8b 85 80 00 00 00 	mov    0x80(%rbp),%rax
    2177:	4c 8b 45 70          	mov    0x70(%rbp),%r8
    217b:	4c 39 c0             	cmp    %r8,%rax
    217e:	0f 82 5c 02 00 00    	jb     23e0 <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x23e0>
    2184:	83 7d 20 03          	cmpl   $0x3,0x20(%rbp)
    2188:	0f 85 b0 06 00 00    	jne    283e <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x283e>
    218e:	48 8b 7d 68          	mov    0x68(%rbp),%rdi
    2192:	4d 01 c0             	add    %r8,%r8
    2195:	b8 00 10 00 00       	mov    $0x1000,%eax
    219a:	49 81 f8 00 10 00 00 	cmp    $0x1000,%r8
    21a1:	4c 0f 42 c0          	cmovb  %rax,%r8
    21a5:	48 8b 07             	mov    (%rdi),%rax
    21a8:	4c 89 44 24 18       	mov    %r8,0x18(%rsp)
    21ad:	4c 89 c6             	mov    %r8,%rsi
    21b0:	ff 10                	callq  *(%rax)
    21b2:	49 89 c6             	mov    %rax,%r14
    21b5:	48 85 c0             	test   %rax,%rax
    21b8:	0f 84 f9 06 00 00    	je     28b7 <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x28b7>
    21be:	31 d2                	xor    %edx,%edx
    21c0:	48 83 bd 80 00 00 00 	cmpq   $0x0,0x80(%rbp)
    21c7:	00 
    21c8:	4c 8b 44 24 18       	mov    0x18(%rsp),%r8
    21cd:	74 1a                	je     21e9 <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x21e9>
    21cf:	90                   	nop
    21d0:	48 8b 45 78          	mov    0x78(%rbp),%rax
    21d4:	0f b6 04 10          	movzbl (%rax,%rdx,1),%eax
    21d8:	41 88 04 16          	mov    %al,(%r14,%rdx,1)
    21dc:	48 83 c2 01          	add    $0x1,%rdx
    21e0:	48 39 95 80 00 00 00 	cmp    %rdx,0x80(%rbp)
    21e7:	77 e7                	ja     21d0 <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x21d0>
    21e9:	48 8b 7d 68          	mov    0x68(%rbp),%rdi
    21ed:	48 8b 75 78          	mov    0x78(%rbp),%rsi
    21f1:	4c 89 44 24 18       	mov    %r8,0x18(%rsp)
    21f6:	48 8b 07             	mov    (%rdi),%rax
    21f9:	ff 50 08             	callq  *0x8(%rax)
    21fc:	4c 8b 44 24 18       	mov    0x18(%rsp),%r8
    2201:	4c 89 75 78          	mov    %r14,0x78(%rbp)
    2205:	48 8b 85 80 00 00 00 	mov    0x80(%rbp),%rax
    220c:	4c 89 45 70          	mov    %r8,0x70(%rbp)
    2210:	48 8d 50 01          	lea    0x1(%rax),%rdx
    2214:	48 89 95 80 00 00 00 	mov    %rdx,0x80(%rbp)
    221b:	41 c6 04 06 67       	movb   $0x67,(%r14,%rax,1)
    2220:	41 0f b7 4d 00       	movzwl 0x0(%r13),%ecx
    2225:	8b 95 28 05 00 00    	mov    0x528(%rbp),%edx
    222b:	66 c1 e9 06          	shr    $0x6,%cx
    222f:	e9 80 f2 ff ff       	jmpq   14b4 <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x14b4>
    2234:	0f 1f 40 00          	nopl   0x0(%rax)
    2238:	4c 8b 7d 78          	mov    0x78(%rbp),%r15
    223c:	e9 ed fa ff ff       	jmpq   1d2e <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x1d2e>
    2241:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    2248:	48 8b 85 80 00 00 00 	mov    0x80(%rbp),%rax
    224f:	4c 8b 45 70          	mov    0x70(%rbp),%r8
    2253:	4c 39 c0             	cmp    %r8,%rax
    2256:	0f 82 74 01 00 00    	jb     23d0 <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x23d0>
    225c:	83 7d 20 03          	cmpl   $0x3,0x20(%rbp)
    2260:	0f 85 d8 05 00 00    	jne    283e <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x283e>
    2266:	48 8b 7d 68          	mov    0x68(%rbp),%rdi
    226a:	4d 01 c0             	add    %r8,%r8
    226d:	b8 00 10 00 00       	mov    $0x1000,%eax
    2272:	49 81 f8 00 10 00 00 	cmp    $0x1000,%r8
    2279:	4c 0f 42 c0          	cmovb  %rax,%r8
    227d:	48 8b 07             	mov    (%rdi),%rax
    2280:	4c 89 44 24 18       	mov    %r8,0x18(%rsp)
    2285:	4c 89 c6             	mov    %r8,%rsi
    2288:	ff 10                	callq  *(%rax)
    228a:	49 89 c6             	mov    %rax,%r14
    228d:	48 85 c0             	test   %rax,%rax
    2290:	0f 84 21 06 00 00    	je     28b7 <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x28b7>
    2296:	31 d2                	xor    %edx,%edx
    2298:	48 83 bd 80 00 00 00 	cmpq   $0x0,0x80(%rbp)
    229f:	00 
    22a0:	4c 8b 44 24 18       	mov    0x18(%rsp),%r8
    22a5:	74 22                	je     22c9 <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x22c9>
    22a7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
    22ae:	00 00 
    22b0:	48 8b 45 78          	mov    0x78(%rbp),%rax
    22b4:	0f b6 04 10          	movzbl (%rax,%rdx,1),%eax
    22b8:	41 88 04 16          	mov    %al,(%r14,%rdx,1)
    22bc:	48 83 c2 01          	add    $0x1,%rdx
    22c0:	48 39 95 80 00 00 00 	cmp    %rdx,0x80(%rbp)
    22c7:	77 e7                	ja     22b0 <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x22b0>
    22c9:	48 8b 7d 68          	mov    0x68(%rbp),%rdi
    22cd:	48 8b 75 78          	mov    0x78(%rbp),%rsi
    22d1:	4c 89 44 24 18       	mov    %r8,0x18(%rsp)
    22d6:	48 8b 07             	mov    (%rdi),%rax
    22d9:	ff 50 08             	callq  *0x8(%rax)
    22dc:	4c 8b 44 24 18       	mov    0x18(%rsp),%r8
    22e1:	4c 89 75 78          	mov    %r14,0x78(%rbp)
    22e5:	48 8b 85 80 00 00 00 	mov    0x80(%rbp),%rax
    22ec:	4c 89 45 70          	mov    %r8,0x70(%rbp)
    22f0:	48 8d 50 01          	lea    0x1(%rax),%rdx
    22f4:	48 89 95 80 00 00 00 	mov    %rdx,0x80(%rbp)
    22fb:	41 c6 04 06 67       	movb   $0x67,(%r14,%rax,1)
    2300:	0f b7 85 f8 04 00 00 	movzwl 0x4f8(%rbp),%eax
    2307:	66 c1 e8 06          	shr    $0x6,%ax
    230b:	e9 58 fb ff ff       	jmpq   1e68 <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x1e68>
    2310:	41 b9 04 00 00 00    	mov    $0x4,%r9d
    2316:	31 ff                	xor    %edi,%edi
    2318:	e9 8d e6 ff ff       	jmpq   9aa <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x9aa>
    231d:	0f 1f 00             	nopl   (%rax)
    2320:	83 bc 24 18 01 00 00 	cmpl   $0x2,0x118(%rsp)
    2327:	02 
    2328:	0f 85 05 e3 ff ff    	jne    633 <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x633>
    232e:	8b 84 24 10 01 00 00 	mov    0x110(%rsp),%eax
    2335:	c7 84 24 50 01 00 00 	movl   $0x1,0x150(%rsp)
    233c:	01 00 00 00 
    2340:	89 84 24 40 01 00 00 	mov    %eax,0x140(%rsp)
    2347:	0f b6 84 24 14 01 00 	movzbl 0x114(%rsp),%eax
    234e:	00 
    234f:	88 84 24 44 01 00 00 	mov    %al,0x144(%rsp)
    2356:	e9 d8 e2 ff ff       	jmpq   633 <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x633>
    235b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    2360:	45 09 ce             	or     %r9d,%r14d
    2363:	66 85 c0             	test   %ax,%ax
    2366:	0f 84 9b e6 ff ff    	je     a07 <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0xa07>
    236c:	41 83 e0 40          	and    $0x40,%r8d
    2370:	0f 84 91 e6 ff ff    	je     a07 <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0xa07>
    2376:	41 83 ce 08          	or     $0x8,%r14d
    237a:	e9 88 e6 ff ff       	jmpq   a07 <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0xa07>
    237f:	90                   	nop
    2380:	48 8b 45 78          	mov    0x78(%rbp),%rax
    2384:	e9 c1 fd ff ff       	jmpq   214a <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x214a>
    2389:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    2390:	0f b6 8c 24 50 01 00 	movzbl 0x150(%rsp),%ecx
    2397:	00 
    2398:	83 e1 1f             	and    $0x1f,%ecx
    239b:	80 f9 04             	cmp    $0x4,%cl
    239e:	0f 84 9f 04 00 00    	je     2843 <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x2843>
    23a4:	39 d0                	cmp    %edx,%eax
    23a6:	0f 84 ce f8 ff ff    	je     1c7a <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x1c7a>
    23ac:	85 c0                	test   %eax,%eax
    23ae:	0f 84 c6 f8 ff ff    	je     1c7a <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x1c7a>
    23b4:	e9 fc f9 ff ff       	jmpq   1db5 <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x1db5>
    23b9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    23c0:	48 8b 45 78          	mov    0x78(%rbp),%rax
    23c4:	e9 b9 fc ff ff       	jmpq   2082 <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x2082>
    23c9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    23d0:	4c 8b 75 78          	mov    0x78(%rbp),%r14
    23d4:	e9 17 ff ff ff       	jmpq   22f0 <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x22f0>
    23d9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    23e0:	4c 8b 75 78          	mov    0x78(%rbp),%r14
    23e4:	e9 27 fe ff ff       	jmpq   2210 <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x2210>
    23e9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    23f0:	b8 44 00 00 00       	mov    $0x44,%eax
    23f5:	e9 40 f1 ff ff       	jmpq   153a <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x153a>
    23fa:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    2400:	b8 44 00 00 00       	mov    $0x44,%eax
    2405:	e9 dd fa ff ff       	jmpq   1ee7 <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x1ee7>
    240a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    2410:	83 e2 01             	and    $0x1,%edx
    2413:	0f 84 5b df ff ff    	je     374 <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x374>
    2419:	f6 85 f8 04 00 00 80 	testb  $0x80,0x4f8(%rbp)
    2420:	0f 84 4e df ff ff    	je     374 <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x374>
    2426:	41 83 7c 24 30 01    	cmpl   $0x1,0x30(%r12)
    242c:	0f 84 8a 04 00 00    	je     28bc <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x28bc>
    2432:	48 8b 54 24 10       	mov    0x10(%rsp),%rdx
    2437:	4c 89 e6             	mov    %r12,%rsi
    243a:	48 89 ef             	mov    %rbp,%rdi
    243d:	e8 00 00 00 00       	callq  2442 <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x2442>
    2442:	0f b7 b5 fa 04 00 00 	movzwl 0x4fa(%rbp),%esi
    2449:	48 89 ef             	mov    %rbp,%rdi
    244c:	66 81 e6 ff 3f       	and    $0x3fff,%si
    2451:	66 c1 ee 03          	shr    $0x3,%si
    2455:	83 f6 01             	xor    $0x1,%esi
    2458:	83 e6 01             	and    $0x1,%esi
    245b:	83 ce 10             	or     $0x10,%esi
    245e:	e8 00 00 00 00       	callq  2463 <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x2463>
    2463:	45 31 c9             	xor    %r9d,%r9d
    2466:	45 31 c0             	xor    %r8d,%r8d
    2469:	31 c9                	xor    %ecx,%ecx
    246b:	0f b6 95 f8 04 00 00 	movzbl 0x4f8(%rbp),%edx
    2472:	4c 89 e6             	mov    %r12,%rsi
    2475:	48 89 ef             	mov    %rbp,%rdi
    2478:	83 e2 1f             	and    $0x1f,%edx
    247b:	e8 00 00 00 00       	callq  2480 <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x2480>
    2480:	e9 cb ef ff ff       	jmpq   1450 <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x1450>
    2485:	0f 1f 00             	nopl   (%rax)
    2488:	83 bd 28 05 00 00 01 	cmpl   $0x1,0x528(%rbp)
    248f:	0f 84 27 04 00 00    	je     28bc <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x28bc>
    2495:	48 8b 5c 24 10       	mov    0x10(%rsp),%rbx
    249a:	4c 89 e2             	mov    %r12,%rdx
    249d:	48 89 ef             	mov    %rbp,%rdi
    24a0:	48 89 de             	mov    %rbx,%rsi
    24a3:	e8 00 00 00 00       	callq  24a8 <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x24a8>
    24a8:	48 89 ef             	mov    %rbp,%rdi
    24ab:	be 0f 00 00 00       	mov    $0xf,%esi
    24b0:	e8 00 00 00 00       	callq  24b5 <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x24b5>
    24b5:	48 89 ef             	mov    %rbp,%rdi
    24b8:	be 38 00 00 00       	mov    $0x38,%esi
    24bd:	e8 00 00 00 00       	callq  24c2 <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x24c2>
    24c2:	48 89 ef             	mov    %rbp,%rdi
    24c5:	be f6 00 00 00       	mov    $0xf6,%esi
    24ca:	e8 00 00 00 00       	callq  24cf <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x24cf>
    24cf:	41 0f b6 14 24       	movzbl (%r12),%edx
    24d4:	45 31 c9             	xor    %r9d,%r9d
    24d7:	45 31 c0             	xor    %r8d,%r8d
    24da:	31 c9                	xor    %ecx,%ecx
    24dc:	48 89 de             	mov    %rbx,%rsi
    24df:	48 89 ef             	mov    %rbp,%rdi
    24e2:	83 e2 1f             	and    $0x1f,%edx
    24e5:	e8 00 00 00 00       	callq  24ea <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x24ea>
    24ea:	e9 dd ee ff ff       	jmpq   13cc <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x13cc>
    24ef:	90                   	nop
    24f0:	83 e2 01             	and    $0x1,%edx
    24f3:	0f 84 7f 03 00 00    	je     2878 <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x2878>
    24f9:	0f b7 85 fa 04 00 00 	movzwl 0x4fa(%rbp),%eax
    2500:	66 25 ff 3f          	and    $0x3fff,%ax
    2504:	0f 84 a3 03 00 00    	je     28ad <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x28ad>
    250a:	0f b7 c0             	movzwl %ax,%eax
    250d:	8b 94 24 40 01 00 00 	mov    0x140(%rsp),%edx
    2514:	bb 04 00 00 00       	mov    $0x4,%ebx
    2519:	41 89 c5             	mov    %eax,%r13d
    251c:	41 c1 ed 03          	shr    $0x3,%r13d
    2520:	83 f8 27             	cmp    $0x27,%eax
    2523:	49 0f 46 dd          	cmovbe %r13,%rbx
    2527:	c1 e0 10             	shl    $0x10,%eax
    252a:	81 e2 00 00 00 80    	and    $0x80000000,%edx
    2530:	80 a4 24 44 01 00 00 	andb   $0xc0,0x144(%rsp)
    2537:	c0 
    2538:	0c 80                	or     $0x80,%al
    253a:	09 d0                	or     %edx,%eax
    253c:	83 bd 28 05 00 00 01 	cmpl   $0x1,0x528(%rbp)
    2543:	89 84 24 40 01 00 00 	mov    %eax,0x140(%rsp)
    254a:	0f 84 6c 03 00 00    	je     28bc <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x28bc>
    2550:	4c 8b 7c 24 10       	mov    0x10(%rsp),%r15
    2555:	48 8d 94 24 40 01 00 	lea    0x140(%rsp),%rdx
    255c:	00 
    255d:	48 89 ef             	mov    %rbp,%rdi
    2560:	4c 89 fe             	mov    %r15,%rsi
    2563:	e8 00 00 00 00       	callq  2568 <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x2568>
    2568:	0f b7 84 24 42 01 00 	movzwl 0x142(%rsp),%eax
    256f:	00 
    2570:	48 89 ef             	mov    %rbp,%rdi
    2573:	66 25 ff 3f          	and    $0x3fff,%ax
    2577:	89 c6                	mov    %eax,%esi
    2579:	66 c1 ee 03          	shr    $0x3,%si
    257d:	83 f6 01             	xor    $0x1,%esi
    2580:	83 e6 01             	and    $0x1,%esi
    2583:	40 80 ce c6          	or     $0xc6,%sil
    2587:	e8 00 00 00 00       	callq  258c <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x258c>
    258c:	45 31 c9             	xor    %r9d,%r9d
    258f:	45 31 c0             	xor    %r8d,%r8d
    2592:	89 d9                	mov    %ebx,%ecx
    2594:	0f b6 94 24 40 01 00 	movzbl 0x140(%rsp),%edx
    259b:	00 
    259c:	4c 89 fe             	mov    %r15,%rsi
    259f:	48 89 ef             	mov    %rbp,%rdi
    25a2:	83 e2 1f             	and    $0x1f,%edx
    25a5:	e8 00 00 00 00       	callq  25aa <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x25aa>
    25aa:	45 85 ed             	test   %r13d,%r13d
    25ad:	0f 84 60 ed ff ff    	je     1313 <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x1313>
    25b3:	48 8b 85 80 00 00 00 	mov    0x80(%rbp),%rax
    25ba:	4c 8b 7d 70          	mov    0x70(%rbp),%r15
    25be:	45 31 ed             	xor    %r13d,%r13d
    25c1:	4c 39 f8             	cmp    %r15,%rax
    25c4:	0f 82 b5 00 00 00    	jb     267f <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x267f>
    25ca:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    25d0:	83 7d 20 03          	cmpl   $0x3,0x20(%rbp)
    25d4:	0f 85 64 02 00 00    	jne    283e <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x283e>
    25da:	48 8b 7d 68          	mov    0x68(%rbp),%rdi
    25de:	4d 01 ff             	add    %r15,%r15
    25e1:	b8 00 10 00 00       	mov    $0x1000,%eax
    25e6:	49 81 ff 00 10 00 00 	cmp    $0x1000,%r15
    25ed:	4c 0f 42 f8          	cmovb  %rax,%r15
    25f1:	48 8b 07             	mov    (%rdi),%rax
    25f4:	4c 89 fe             	mov    %r15,%rsi
    25f7:	ff 10                	callq  *(%rax)
    25f9:	49 89 c6             	mov    %rax,%r14
    25fc:	48 85 c0             	test   %rax,%rax
    25ff:	0f 84 b2 02 00 00    	je     28b7 <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x28b7>
    2605:	31 d2                	xor    %edx,%edx
    2607:	48 83 bd 80 00 00 00 	cmpq   $0x0,0x80(%rbp)
    260e:	00 
    260f:	74 20                	je     2631 <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x2631>
    2611:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    2618:	48 8b 45 78          	mov    0x78(%rbp),%rax
    261c:	0f b6 04 10          	movzbl (%rax,%rdx,1),%eax
    2620:	41 88 04 16          	mov    %al,(%r14,%rdx,1)
    2624:	48 83 c2 01          	add    $0x1,%rdx
    2628:	48 39 95 80 00 00 00 	cmp    %rdx,0x80(%rbp)
    262f:	77 e7                	ja     2618 <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x2618>
    2631:	48 8b 7d 68          	mov    0x68(%rbp),%rdi
    2635:	48 8b 75 78          	mov    0x78(%rbp),%rsi
    2639:	48 8b 07             	mov    (%rdi),%rax
    263c:	ff 50 08             	callq  *0x8(%rax)
    263f:	4c 89 75 78          	mov    %r14,0x78(%rbp)
    2643:	48 8b 85 80 00 00 00 	mov    0x80(%rbp),%rax
    264a:	4c 89 7d 70          	mov    %r15,0x70(%rbp)
    264e:	48 8d 50 01          	lea    0x1(%rax),%rdx
    2652:	49 83 c5 01          	add    $0x1,%r13
    2656:	48 89 95 80 00 00 00 	mov    %rdx,0x80(%rbp)
    265d:	41 c6 04 06 00       	movb   $0x0,(%r14,%rax,1)
    2662:	4c 39 eb             	cmp    %r13,%rbx
    2665:	0f 84 a8 ec ff ff    	je     1313 <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x1313>
    266b:	48 8b 85 80 00 00 00 	mov    0x80(%rbp),%rax
    2672:	4c 8b 7d 70          	mov    0x70(%rbp),%r15
    2676:	4c 39 f8             	cmp    %r15,%rax
    2679:	0f 83 51 ff ff ff    	jae    25d0 <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x25d0>
    267f:	4c 8b 75 78          	mov    0x78(%rbp),%r14
    2683:	eb c9                	jmp    264e <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x264e>
    2685:	0f 1f 00             	nopl   (%rax)
    2688:	48 8b 74 24 10       	mov    0x10(%rsp),%rsi
    268d:	48 8d 94 24 40 01 00 	lea    0x140(%rsp),%rdx
    2694:	00 
    2695:	48 89 ef             	mov    %rbp,%rdi
    2698:	e8 00 00 00 00       	callq  269d <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x269d>
    269d:	44 89 ee             	mov    %r13d,%esi
    26a0:	48 89 ef             	mov    %rbp,%rdi
    26a3:	e8 00 00 00 00       	callq  26a8 <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x26a8>
    26a8:	89 d8                	mov    %ebx,%eax
    26aa:	c1 f8 03             	sar    $0x3,%eax
    26ad:	48 63 d8             	movslq %eax,%rbx
    26b0:	83 f8 08             	cmp    $0x8,%eax
    26b3:	0f 8f 12 02 00 00    	jg     28cb <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x28cb>
    26b9:	85 c0                	test   %eax,%eax
    26bb:	0f 85 9f eb ff ff    	jne    1260 <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x1260>
    26c1:	e9 4d ec ff ff       	jmpq   1313 <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x1313>
    26c6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    26cd:	00 00 00 
    26d0:	84 c0                	test   %al,%al
    26d2:	41 0f 95 c6          	setne  %r14b
    26d6:	41 83 c6 42          	add    $0x42,%r14d
    26da:	e9 26 ee ff ff       	jmpq   1505 <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x1505>
    26df:	90                   	nop
    26e0:	84 d2                	test   %dl,%dl
    26e2:	41 0f 95 c6          	setne  %r14b
    26e6:	41 83 c6 42          	add    $0x42,%r14d
    26ea:	e9 c5 f7 ff ff       	jmpq   1eb4 <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x1eb4>
    26ef:	90                   	nop
    26f0:	0f b6 8c 24 d0 00 00 	movzbl 0xd0(%rsp),%ecx
    26f7:	00 
    26f8:	83 e1 1f             	and    $0x1f,%ecx
    26fb:	80 f9 04             	cmp    $0x4,%cl
    26fe:	0f 84 3f 01 00 00    	je     2843 <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x2843>
    2704:	39 d0                	cmp    %edx,%eax
    2706:	0f 84 44 dc ff ff    	je     350 <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x350>
    270c:	85 c0                	test   %eax,%eax
    270e:	0f 84 3c dc ff ff    	je     350 <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x350>
    2714:	e9 9c f6 ff ff       	jmpq   1db5 <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x1db5>
    2719:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    2720:	f6 c2 01             	test   $0x1,%dl
    2723:	0f 85 fe 00 00 00    	jne    2827 <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x2827>
    2729:	66 39 ca             	cmp    %cx,%dx
    272c:	0f 85 42 dc ff ff    	jne    374 <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x374>
    2732:	48 8b 54 24 10       	mov    0x10(%rsp),%rdx
    2737:	4c 89 e6             	mov    %r12,%rsi
    273a:	48 89 ef             	mov    %rbp,%rdi
    273d:	e8 00 00 00 00       	callq  2742 <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x2742>
    2742:	0f b7 b5 fa 04 00 00 	movzwl 0x4fa(%rbp),%esi
    2749:	48 89 ef             	mov    %rbp,%rdi
    274c:	66 81 e6 ff 3f       	and    $0x3fff,%si
    2751:	66 c1 ee 03          	shr    $0x3,%si
    2755:	83 f6 01             	xor    $0x1,%esi
    2758:	83 e6 01             	and    $0x1,%esi
    275b:	83 ce 10             	or     $0x10,%esi
    275e:	e8 00 00 00 00       	callq  2763 <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x2763>
    2763:	0f b6 85 f8 04 00 00 	movzbl 0x4f8(%rbp),%eax
    276a:	48 89 ef             	mov    %rbp,%rdi
    276d:	8d 34 c5 00 00 00 00 	lea    0x0(,%rax,8),%esi
    2774:	41 0f b6 04 24       	movzbl (%r12),%eax
    2779:	83 e6 38             	and    $0x38,%esi
    277c:	83 e0 07             	and    $0x7,%eax
    277f:	09 c6                	or     %eax,%esi
    2781:	83 ce c0             	or     $0xffffffc0,%esi
    2784:	40 0f b6 f6          	movzbl %sil,%esi
    2788:	e8 00 00 00 00       	callq  278d <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x278d>
    278d:	e9 be ec ff ff       	jmpq   1450 <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x1450>
    2792:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    2798:	0f b7 85 fa 04 00 00 	movzwl 0x4fa(%rbp),%eax
    279f:	89 c6                	mov    %eax,%esi
    27a1:	66 81 e6 ff 3f       	and    $0x3fff,%si
    27a6:	a8 60                	test   $0x60,%al
    27a8:	0f 84 9a eb ff ff    	je     1348 <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x1348>
    27ae:	66 39 f2             	cmp    %si,%dx
    27b1:	0f 85 91 eb ff ff    	jne    1348 <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x1348>
    27b7:	e9 95 eb ff ff       	jmpq   1351 <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x1351>
    27bc:	0f 1f 40 00          	nopl   0x0(%rax)
    27c0:	84 d2                	test   %dl,%dl
    27c2:	0f 85 d0 de ff ff    	jne    698 <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x698>
    27c8:	e9 c1 df ff ff       	jmpq   78e <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x78e>
    27cd:	8b 4c 24 08          	mov    0x8(%rsp),%ecx
    27d1:	48 8b 05 00 00 00 00 	mov    0x0(%rip),%rax        # 27d8 <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x27d8>
    27d8:	48 8d 15 00 00 00 00 	lea    0x0(%rip),%rdx        # 27df <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x27df>
    27df:	be 01 00 00 00       	mov    $0x1,%esi
    27e4:	48 8b 38             	mov    (%rax),%rdi
    27e7:	31 c0                	xor    %eax,%eax
    27e9:	e8 00 00 00 00       	callq  27ee <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x27ee>
    27ee:	bf 10 00 00 00       	mov    $0x10,%edi
    27f3:	e8 00 00 00 00       	callq  27f8 <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x27f8>
    27f8:	48 8b 15 00 00 00 00 	mov    0x0(%rip),%rdx        # 27ff <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x27ff>
    27ff:	48 8b 35 00 00 00 00 	mov    0x0(%rip),%rsi        # 2806 <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x2806>
    2806:	48 89 c7             	mov    %rax,%rdi
    2809:	48 8b 05 00 00 00 00 	mov    0x0(%rip),%rax        # 2810 <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x2810>
    2810:	c7 47 08 0d 00 00 00 	movl   $0xd,0x8(%rdi)
    2817:	48 83 c0 10          	add    $0x10,%rax
    281b:	48 89 07             	mov    %rax,(%rdi)
    281e:	e8 00 00 00 00       	callq  2823 <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x2823>
    2823:	31 c9                	xor    %ecx,%ecx
    2825:	eb aa                	jmp    27d1 <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x27d1>
    2827:	f6 c1 02             	test   $0x2,%cl
    282a:	0f 84 f9 fe ff ff    	je     2729 <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x2729>
    2830:	66 39 ca             	cmp    %cx,%dx
    2833:	0f 85 ed fb ff ff    	jne    2426 <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x2426>
    2839:	e9 f4 fe ff ff       	jmpq   2732 <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x2732>
    283e:	e8 00 00 00 00       	callq  2843 <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x2843>
    2843:	bf 10 00 00 00       	mov    $0x10,%edi
    2848:	e8 00 00 00 00       	callq  284d <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x284d>
    284d:	48 8b 15 00 00 00 00 	mov    0x0(%rip),%rdx        # 2854 <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x2854>
    2854:	48 8b 35 00 00 00 00 	mov    0x0(%rip),%rsi        # 285b <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x285b>
    285b:	48 89 c7             	mov    %rax,%rdi
    285e:	48 8b 05 00 00 00 00 	mov    0x0(%rip),%rax        # 2865 <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x2865>
    2865:	c7 47 08 04 00 00 00 	movl   $0x4,0x8(%rdi)
    286c:	48 83 c0 10          	add    $0x10,%rax
    2870:	48 89 07             	mov    %rax,(%rdi)
    2873:	e8 00 00 00 00       	callq  2878 <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x2878>
    2878:	bf 10 00 00 00       	mov    $0x10,%edi
    287d:	e8 00 00 00 00       	callq  2882 <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x2882>
    2882:	48 8b 15 00 00 00 00 	mov    0x0(%rip),%rdx        # 2889 <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x2889>
    2889:	48 8b 35 00 00 00 00 	mov    0x0(%rip),%rsi        # 2890 <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x2890>
    2890:	48 89 c7             	mov    %rax,%rdi
    2893:	48 8b 05 00 00 00 00 	mov    0x0(%rip),%rax        # 289a <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x289a>
    289a:	c7 47 08 05 00 00 00 	movl   $0x5,0x8(%rdi)
    28a1:	48 83 c0 10          	add    $0x10,%rax
    28a5:	48 89 07             	mov    %rax,(%rdi)
    28a8:	e8 00 00 00 00       	callq  28ad <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x28ad>
    28ad:	e8 00 00 00 00       	callq  28b2 <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x28b2>
    28b2:	e8 00 00 00 00       	callq  28b7 <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x28b7>
    28b7:	e8 00 00 00 00       	callq  28bc <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x28bc>
    28bc:	e8 00 00 00 00       	callq  28c1 <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x28c1>
    28c1:	e8 00 00 00 00       	callq  28c6 <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x28c6>
    28c6:	e8 00 00 00 00       	callq  28cb <_ZN4Code10mulPackAddERKN5Xbyak6RegExpERKNS0_3XmmEiS3_RKNS0_5Reg64ERKNS0_4util4PackE+0x28cb>
    28cb:	e8 00 00 00 00       	callq  28d0 <_ZStL8__ioinit+0x1ca8>

Disassembly of section .text._ZN4Code12gen_mulPre11Ev:

0000000000000000 <_ZN4Code12gen_mulPre11Ev>:
       0:	f3 0f 1e fa          	endbr64 
       4:	55                   	push   %rbp
       5:	ba 03 00 00 00       	mov    $0x3,%edx
       a:	48 89 fe             	mov    %rdi,%rsi
       d:	41 b9 01 00 00 00    	mov    $0x1,%r9d
      13:	45 31 c0             	xor    %r8d,%r8d
      16:	b9 8a 00 00 00       	mov    $0x8a,%ecx
      1b:	48 89 e5             	mov    %rsp,%rbp
      1e:	41 57                	push   %r15
      20:	41 56                	push   %r14
      22:	48 8d 85 10 fe ff ff 	lea    -0x1f0(%rbp),%rax
      29:	41 55                	push   %r13
      2b:	41 54                	push   %r12
      2d:	53                   	push   %rbx
      2e:	48 89 fb             	mov    %rdi,%rbx
      31:	48 89 c7             	mov    %rax,%rdi
      34:	48 81 ec 98 04 00 00 	sub    $0x498,%rsp
      3b:	48 89 85 48 fb ff ff 	mov    %rax,-0x4b8(%rbp)
      42:	e8 00 00 00 00       	callq  47 <_ZN4Code12gen_mulPre11Ev+0x47>
      47:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
      4b:	48 8b 50 78          	mov    0x78(%rax),%rdx
      4f:	48 85 d2             	test   %rdx,%rdx
      52:	0f 84 a7 19 00 00    	je     19ff <_ZN4Code12gen_mulPre11Ev+0x19ff>
      58:	4c 8b 28             	mov    (%rax),%r13
      5b:	48 83 fa 01          	cmp    $0x1,%rdx
      5f:	0f 86 3d 19 00 00    	jbe    19a2 <_ZN4Code12gen_mulPre11Ev+0x19a2>
      65:	48 8b 78 08          	mov    0x8(%rax),%rdi
      69:	48 89 bd 50 fc ff ff 	mov    %rdi,-0x3b0(%rbp)
      70:	48 83 fa 02          	cmp    $0x2,%rdx
      74:	0f 84 cb 18 00 00    	je     1945 <_ZN4Code12gen_mulPre11Ev+0x1945>
      7a:	4c 8b 70 10          	mov    0x10(%rax),%r14
      7e:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
      82:	48 8b 50 78          	mov    0x78(%rax),%rdx
      86:	48 85 d2             	test   %rdx,%rdx
      89:	0f 84 5f 18 00 00    	je     18ee <_ZN4Code12gen_mulPre11Ev+0x18ee>
      8f:	48 8b 30             	mov    (%rax),%rsi
      92:	48 89 b5 e0 fb ff ff 	mov    %rsi,-0x420(%rbp)
      99:	48 83 fa 01          	cmp    $0x1,%rdx
      9d:	0f 86 ee 17 00 00    	jbe    1891 <_ZN4Code12gen_mulPre11Ev+0x1891>
      a3:	48 8b 48 08          	mov    0x8(%rax),%rcx
      a7:	48 89 8d 40 fc ff ff 	mov    %rcx,-0x3c0(%rbp)
      ae:	48 83 fa 02          	cmp    $0x2,%rdx
      b2:	0f 84 7c 17 00 00    	je     1834 <_ZN4Code12gen_mulPre11Ev+0x1834>
      b8:	48 8b 78 10          	mov    0x10(%rax),%rdi
      bc:	48 89 bd d8 fb ff ff 	mov    %rdi,-0x428(%rbp)
      c3:	48 83 fa 03          	cmp    $0x3,%rdx
      c7:	0f 84 0a 17 00 00    	je     17d7 <_ZN4Code12gen_mulPre11Ev+0x17d7>
      cd:	48 8b 70 18          	mov    0x18(%rax),%rsi
      d1:	48 89 b5 d0 fb ff ff 	mov    %rsi,-0x430(%rbp)
      d8:	48 83 fa 04          	cmp    $0x4,%rdx
      dc:	0f 84 98 16 00 00    	je     177a <_ZN4Code12gen_mulPre11Ev+0x177a>
      e2:	48 8b 48 20          	mov    0x20(%rax),%rcx
      e6:	48 89 8d c8 fb ff ff 	mov    %rcx,-0x438(%rbp)
      ed:	48 83 fa 05          	cmp    $0x5,%rdx
      f1:	0f 84 26 16 00 00    	je     171d <_ZN4Code12gen_mulPre11Ev+0x171d>
      f7:	48 8b 78 28          	mov    0x28(%rax),%rdi
      fb:	48 89 bd c0 fb ff ff 	mov    %rdi,-0x440(%rbp)
     102:	48 83 fa 06          	cmp    $0x6,%rdx
     106:	0f 84 b4 15 00 00    	je     16c0 <_ZN4Code12gen_mulPre11Ev+0x16c0>
     10c:	48 8b 70 30          	mov    0x30(%rax),%rsi
     110:	48 89 b5 b8 fb ff ff 	mov    %rsi,-0x448(%rbp)
     117:	48 83 fa 07          	cmp    $0x7,%rdx
     11b:	0f 84 42 15 00 00    	je     1663 <_ZN4Code12gen_mulPre11Ev+0x1663>
     121:	48 8b 48 38          	mov    0x38(%rax),%rcx
     125:	48 89 8d b0 fb ff ff 	mov    %rcx,-0x450(%rbp)
     12c:	48 83 fa 08          	cmp    $0x8,%rdx
     130:	0f 84 d0 14 00 00    	je     1606 <_ZN4Code12gen_mulPre11Ev+0x1606>
     136:	48 8b 78 40          	mov    0x40(%rax),%rdi
     13a:	48 89 bd a8 fb ff ff 	mov    %rdi,-0x458(%rbp)
     141:	48 83 fa 09          	cmp    $0x9,%rdx
     145:	0f 84 5e 14 00 00    	je     15a9 <_ZN4Code12gen_mulPre11Ev+0x15a9>
     14b:	48 8b 40 48          	mov    0x48(%rax),%rax
     14f:	4c 8b bb 60 02 00 00 	mov    0x260(%rbx),%r15
     156:	48 89 85 90 fb ff ff 	mov    %rax,-0x470(%rbp)
     15d:	48 8d 83 18 05 00 00 	lea    0x518(%rbx),%rax
     164:	48 89 85 48 fc ff ff 	mov    %rax,-0x3b8(%rbp)
     16b:	66 41 f7 07 00 04    	testw  $0x400,(%r15)
     171:	0f 85 19 10 00 00    	jne    1190 <_ZN4Code12gen_mulPre11Ev+0x1190>
     177:	48 8b b5 50 fc ff ff 	mov    -0x3b0(%rbp),%rsi
     17e:	4c 89 fa             	mov    %r15,%rdx
     181:	48 89 df             	mov    %rbx,%rdi
     184:	48 89 b5 a0 fb ff ff 	mov    %rsi,-0x460(%rbp)
     18b:	e8 00 00 00 00       	callq  190 <_ZN4Code12gen_mulPre11Ev+0x190>
     190:	48 8b 83 80 00 00 00 	mov    0x80(%rbx),%rax
     197:	48 8b 4b 70          	mov    0x70(%rbx),%rcx
     19b:	48 39 c8             	cmp    %rcx,%rax
     19e:	0f 83 4c 0f 00 00    	jae    10f0 <_ZN4Code12gen_mulPre11Ev+0x10f0>
     1a4:	4c 8b 63 78          	mov    0x78(%rbx),%r12
     1a8:	48 8d 50 01          	lea    0x1(%rax),%rdx
     1ac:	be 6e 00 00 00       	mov    $0x6e,%esi
     1b1:	48 89 df             	mov    %rbx,%rdi
     1b4:	48 89 93 80 00 00 00 	mov    %rdx,0x80(%rbx)
     1bb:	41 c6 04 04 0f       	movb   $0xf,(%r12,%rax,1)
     1c0:	e8 00 00 00 00       	callq  1c5 <_ZN4Code12gen_mulPre11Ev+0x1c5>
     1c5:	41 0f b6 07          	movzbl (%r15),%eax
     1c9:	4c 8b 63 70          	mov    0x70(%rbx),%r12
     1cd:	8d 0c c5 00 00 00 00 	lea    0x0(,%rax,8),%ecx
     1d4:	48 8b 85 50 fc ff ff 	mov    -0x3b0(%rbp),%rax
     1db:	83 e1 38             	and    $0x38,%ecx
     1de:	0f b6 00             	movzbl (%rax),%eax
     1e1:	83 e0 07             	and    $0x7,%eax
     1e4:	09 c8                	or     %ecx,%eax
     1e6:	83 c8 c0             	or     $0xffffffc0,%eax
     1e9:	88 85 68 fc ff ff    	mov    %al,-0x398(%rbp)
     1ef:	48 8b 83 80 00 00 00 	mov    0x80(%rbx),%rax
     1f6:	4c 39 e0             	cmp    %r12,%rax
     1f9:	0f 82 81 13 00 00    	jb     1580 <_ZN4Code12gen_mulPre11Ev+0x1580>
     1ff:	83 7b 20 03          	cmpl   $0x3,0x20(%rbx)
     203:	0f 85 7e 18 00 00    	jne    1a87 <_ZN4Code12gen_mulPre11Ev+0x1a87>
     209:	4d 01 e4             	add    %r12,%r12
     20c:	48 8b 7b 68          	mov    0x68(%rbx),%rdi
     210:	b8 00 10 00 00       	mov    $0x1000,%eax
     215:	49 81 fc 00 10 00 00 	cmp    $0x1000,%r12
     21c:	4c 0f 42 e0          	cmovb  %rax,%r12
     220:	48 8b 07             	mov    (%rdi),%rax
     223:	4c 89 e6             	mov    %r12,%rsi
     226:	ff 10                	callq  *(%rax)
     228:	49 89 c7             	mov    %rax,%r15
     22b:	48 85 c0             	test   %rax,%rax
     22e:	0f 84 7a 18 00 00    	je     1aae <_ZN4Code12gen_mulPre11Ev+0x1aae>
     234:	31 c0                	xor    %eax,%eax
     236:	48 83 bb 80 00 00 00 	cmpq   $0x0,0x80(%rbx)
     23d:	00 
     23e:	0f b6 b5 68 fc ff ff 	movzbl -0x398(%rbp),%esi
     245:	74 29                	je     270 <_ZN4Code12gen_mulPre11Ev+0x270>
     247:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
     24e:	00 00 
     250:	48 8b 53 78          	mov    0x78(%rbx),%rdx
     254:	0f b6 14 02          	movzbl (%rdx,%rax,1),%edx
     258:	41 88 14 07          	mov    %dl,(%r15,%rax,1)
     25c:	48 83 c0 01          	add    $0x1,%rax
     260:	48 39 83 80 00 00 00 	cmp    %rax,0x80(%rbx)
     267:	77 e7                	ja     250 <_ZN4Code12gen_mulPre11Ev+0x250>
     269:	40 88 b5 68 fc ff ff 	mov    %sil,-0x398(%rbp)
     270:	48 8b 7b 68          	mov    0x68(%rbx),%rdi
     274:	48 8b 73 78          	mov    0x78(%rbx),%rsi
     278:	48 8b 07             	mov    (%rdi),%rax
     27b:	ff 50 08             	callq  *0x8(%rax)
     27e:	4c 89 7b 78          	mov    %r15,0x78(%rbx)
     282:	48 8b 83 80 00 00 00 	mov    0x80(%rbx),%rax
     289:	4c 89 63 70          	mov    %r12,0x70(%rbx)
     28d:	0f b6 8d 68 fc ff ff 	movzbl -0x398(%rbp),%ecx
     294:	48 8d 50 01          	lea    0x1(%rax),%rdx
     298:	48 89 93 80 00 00 00 	mov    %rdx,0x80(%rbx)
     29f:	41 88 0c 07          	mov    %cl,(%r15,%rax,1)
     2a3:	48 8b 83 68 02 00 00 	mov    0x268(%rbx),%rax
     2aa:	49 89 c7             	mov    %rax,%r15
     2ad:	0f b7 00             	movzwl (%rax),%eax
     2b0:	66 89 85 68 fc ff ff 	mov    %ax,-0x398(%rbp)
     2b7:	f6 c4 04             	test   $0x4,%ah
     2ba:	74 0d                	je     2c9 <_ZN4Code12gen_mulPre11Ev+0x2c9>
     2bc:	be 66 00 00 00       	mov    $0x66,%esi
     2c1:	48 89 df             	mov    %rbx,%rdi
     2c4:	e8 00 00 00 00       	callq  2c9 <_ZN4Code12gen_mulPre11Ev+0x2c9>
     2c9:	48 8b b5 48 fc ff ff 	mov    -0x3b8(%rbp),%rsi
     2d0:	4c 89 fa             	mov    %r15,%rdx
     2d3:	48 89 df             	mov    %rbx,%rdi
     2d6:	e8 00 00 00 00       	callq  2db <_ZN4Code12gen_mulPre11Ev+0x2db>
     2db:	be 0f 00 00 00       	mov    $0xf,%esi
     2e0:	48 89 df             	mov    %rbx,%rdi
     2e3:	e8 00 00 00 00       	callq  2e8 <_ZN4Code12gen_mulPre11Ev+0x2e8>
     2e8:	be 6e 00 00 00       	mov    $0x6e,%esi
     2ed:	48 89 df             	mov    %rbx,%rdi
     2f0:	e8 00 00 00 00       	callq  2f5 <_ZN4Code12gen_mulPre11Ev+0x2f5>
     2f5:	41 0f b6 37          	movzbl (%r15),%esi
     2f9:	0f b6 83 18 05 00 00 	movzbl 0x518(%rbx),%eax
     300:	48 89 df             	mov    %rbx,%rdi
     303:	c1 e6 03             	shl    $0x3,%esi
     306:	83 e0 07             	and    $0x7,%eax
     309:	83 e6 38             	and    $0x38,%esi
     30c:	09 c6                	or     %eax,%esi
     30e:	83 ce c0             	or     $0xffffffc0,%esi
     311:	40 0f b6 f6          	movzbl %sil,%esi
     315:	e8 00 00 00 00       	callq  31a <_ZN4Code12gen_mulPre11Ev+0x31a>
     31a:	f3 0f 7e 85 e0 fb ff 	movq   -0x420(%rbp),%xmm0
     321:	ff 
     322:	48 8d 85 90 fd ff ff 	lea    -0x270(%rbp),%rax
     329:	4c 89 f6             	mov    %r14,%rsi
     32c:	f3 0f 7e 8d d8 fb ff 	movq   -0x428(%rbp),%xmm1
     333:	ff 
     334:	f3 0f 7e 95 c8 fb ff 	movq   -0x438(%rbp),%xmm2
     33b:	ff 
     33c:	ba 01 00 00 00       	mov    $0x1,%edx
     341:	48 89 c7             	mov    %rax,%rdi
     344:	49 89 c7             	mov    %rax,%r15
     347:	f3 0f 7e 9d b8 fb ff 	movq   -0x448(%rbp),%xmm3
     34e:	ff 
     34f:	4c 8b a5 50 fc ff ff 	mov    -0x3b0(%rbp),%r12
     356:	0f 16 85 40 fc ff ff 	movhps -0x3c0(%rbp),%xmm0
     35d:	0f 16 8d d0 fb ff ff 	movhps -0x430(%rbp),%xmm1
     364:	f3 0f 7e a5 a8 fb ff 	movq   -0x458(%rbp),%xmm4
     36b:	ff 
     36c:	0f 16 95 c0 fb ff ff 	movhps -0x440(%rbp),%xmm2
     373:	48 c7 85 88 fd ff ff 	movq   $0xb,-0x278(%rbp)
     37a:	0b 00 00 00 
     37e:	0f 16 9d b0 fb ff ff 	movhps -0x450(%rbp),%xmm3
     385:	4c 89 a5 60 fd ff ff 	mov    %r12,-0x2a0(%rbp)
     38c:	0f 16 a5 90 fb ff ff 	movhps -0x470(%rbp),%xmm4
     393:	0f 29 85 00 fc ff ff 	movaps %xmm0,-0x400(%rbp)
     39a:	0f 29 85 10 fd ff ff 	movaps %xmm0,-0x2f0(%rbp)
     3a1:	0f 29 8d f0 fb ff ff 	movaps %xmm1,-0x410(%rbp)
     3a8:	0f 29 8d 20 fd ff ff 	movaps %xmm1,-0x2e0(%rbp)
     3af:	0f 29 95 10 fc ff ff 	movaps %xmm2,-0x3f0(%rbp)
     3b6:	0f 29 95 30 fd ff ff 	movaps %xmm2,-0x2d0(%rbp)
     3bd:	0f 29 9d 20 fc ff ff 	movaps %xmm3,-0x3e0(%rbp)
     3c4:	0f 29 9d 40 fd ff ff 	movaps %xmm3,-0x2c0(%rbp)
     3cb:	0f 29 a5 30 fc ff ff 	movaps %xmm4,-0x3d0(%rbp)
     3d2:	0f 29 a5 50 fd ff ff 	movaps %xmm4,-0x2b0(%rbp)
     3d9:	e8 00 00 00 00       	callq  3de <_ZN4Code12gen_mulPre11Ev+0x3de>
     3de:	48 8b 93 60 02 00 00 	mov    0x260(%rbx),%rdx
     3e5:	4d 89 f8             	mov    %r15,%r8
     3e8:	31 c9                	xor    %ecx,%ecx
     3ea:	4c 89 ee             	mov    %r13,%rsi
     3ed:	4c 8d 8d 10 fd ff ff 	lea    -0x2f0(%rbp),%r9
     3f4:	48 89 df             	mov    %rbx,%rdi
     3f7:	4c 89 bd 60 fc ff ff 	mov    %r15,-0x3a0(%rbp)
     3fe:	e8 00 00 00 00       	callq  403 <_ZN4Code12gen_mulPre11Ev+0x403>
     403:	48 8d 85 d0 fc ff ff 	lea    -0x330(%rbp),%rax
     40a:	66 0f 6f 85 00 fc ff 	movdqa -0x400(%rbp),%xmm0
     411:	ff 
     412:	66 0f 6f 8d f0 fb ff 	movdqa -0x410(%rbp),%xmm1
     419:	ff 
     41a:	ba 01 00 00 00       	mov    $0x1,%edx
     41f:	66 0f 6f 95 10 fc ff 	movdqa -0x3f0(%rbp),%xmm2
     426:	ff 
     427:	4c 89 f6             	mov    %r14,%rsi
     42a:	48 89 c7             	mov    %rax,%rdi
     42d:	4c 89 a5 50 fc ff ff 	mov    %r12,-0x3b0(%rbp)
     434:	66 0f 6f 9d 20 fc ff 	movdqa -0x3e0(%rbp),%xmm3
     43b:	ff 
     43c:	66 0f 6f a5 30 fc ff 	movdqa -0x3d0(%rbp),%xmm4
     443:	ff 
     444:	48 c7 85 08 fe ff ff 	movq   $0xb,-0x1f8(%rbp)
     44b:	0b 00 00 00 
     44f:	4c 89 a5 e0 fd ff ff 	mov    %r12,-0x220(%rbp)
     456:	48 89 85 68 fc ff ff 	mov    %rax,-0x398(%rbp)
     45d:	0f 29 85 90 fd ff ff 	movaps %xmm0,-0x270(%rbp)
     464:	0f 29 8d a0 fd ff ff 	movaps %xmm1,-0x260(%rbp)
     46b:	0f 29 95 b0 fd ff ff 	movaps %xmm2,-0x250(%rbp)
     472:	0f 29 9d c0 fd ff ff 	movaps %xmm3,-0x240(%rbp)
     479:	0f 29 a5 d0 fd ff ff 	movaps %xmm4,-0x230(%rbp)
     480:	e8 00 00 00 00       	callq  485 <_ZN4Code12gen_mulPre11Ev+0x485>
     485:	4c 8d a5 b0 fc ff ff 	lea    -0x350(%rbp),%r12
     48c:	ba 01 00 00 00       	mov    $0x1,%edx
     491:	4c 89 ee             	mov    %r13,%rsi
     494:	4c 8b bb 60 02 00 00 	mov    0x260(%rbx),%r15
     49b:	4c 89 e7             	mov    %r12,%rdi
     49e:	e8 00 00 00 00       	callq  4a3 <_ZN4Code12gen_mulPre11Ev+0x4a3>
     4a3:	48 83 ec 08          	sub    $0x8,%rsp
     4a7:	ff b5 60 fc ff ff    	pushq  -0x3a0(%rbp)
     4ad:	4c 89 fa             	mov    %r15,%rdx
     4b0:	4c 89 e6             	mov    %r12,%rsi
     4b3:	4c 8b 8d 48 fc ff ff 	mov    -0x3b8(%rbp),%r9
     4ba:	b9 08 00 00 00       	mov    $0x8,%ecx
     4bf:	48 89 df             	mov    %rbx,%rdi
     4c2:	4c 8b 85 68 fc ff ff 	mov    -0x398(%rbp),%r8
     4c9:	e8 00 00 00 00       	callq  4ce <_ZN4Code12gen_mulPre11Ev+0x4ce>
     4ce:	f3 0f 7e ad 90 fb ff 	movq   -0x470(%rbp),%xmm5
     4d5:	ff 
     4d6:	58                   	pop    %rax
     4d7:	4c 89 f6             	mov    %r14,%rsi
     4da:	48 c7 85 08 fe ff ff 	movq   $0xb,-0x1f8(%rbp)
     4e1:	0b 00 00 00 
     4e5:	f3 0f 7e bd 40 fc ff 	movq   -0x3c0(%rbp),%xmm7
     4ec:	ff 
     4ed:	48 8b 8d 48 fc ff ff 	mov    -0x3b8(%rbp),%rcx
     4f4:	48 8b bd 68 fc ff ff 	mov    -0x398(%rbp),%rdi
     4fb:	0f 16 ad 50 fc ff ff 	movhps -0x3b0(%rbp),%xmm5
     502:	5a                   	pop    %rdx
     503:	ba 01 00 00 00       	mov    $0x1,%edx
     508:	f3 0f 7e b5 d0 fb ff 	movq   -0x430(%rbp),%xmm6
     50f:	ff 
     510:	0f 16 bd d8 fb ff ff 	movhps -0x428(%rbp),%xmm7
     517:	f3 44 0f 7e 8d c0 fb 	movq   -0x440(%rbp),%xmm9
     51e:	ff ff 
     520:	48 89 8d e0 fd ff ff 	mov    %rcx,-0x220(%rbp)
     527:	f3 44 0f 7e 95 b0 fb 	movq   -0x450(%rbp),%xmm10
     52e:	ff ff 
     530:	0f 29 bd 80 fb ff ff 	movaps %xmm7,-0x480(%rbp)
     537:	0f 16 b5 c8 fb ff ff 	movhps -0x438(%rbp),%xmm6
     53e:	44 0f 16 8d b8 fb ff 	movhps -0x448(%rbp),%xmm9
     545:	ff 
     546:	0f 29 bd 90 fd ff ff 	movaps %xmm7,-0x270(%rbp)
     54d:	44 0f 16 95 a8 fb ff 	movhps -0x458(%rbp),%xmm10
     554:	ff 
     555:	0f 29 b5 70 fb ff ff 	movaps %xmm6,-0x490(%rbp)
     55c:	0f 29 b5 a0 fd ff ff 	movaps %xmm6,-0x260(%rbp)
     563:	44 0f 29 8d 60 fb ff 	movaps %xmm9,-0x4a0(%rbp)
     56a:	ff 
     56b:	44 0f 29 8d b0 fd ff 	movaps %xmm9,-0x250(%rbp)
     572:	ff 
     573:	44 0f 29 95 50 fb ff 	movaps %xmm10,-0x4b0(%rbp)
     57a:	ff 
     57b:	44 0f 29 95 c0 fd ff 	movaps %xmm10,-0x240(%rbp)
     582:	ff 
     583:	0f 29 ad 90 fb ff ff 	movaps %xmm5,-0x470(%rbp)
     58a:	0f 29 ad d0 fd ff ff 	movaps %xmm5,-0x230(%rbp)
     591:	e8 00 00 00 00       	callq  596 <_ZN4Code12gen_mulPre11Ev+0x596>
     596:	ba 01 00 00 00       	mov    $0x1,%edx
     59b:	4c 89 ee             	mov    %r13,%rsi
     59e:	4c 89 e7             	mov    %r12,%rdi
     5a1:	4c 8b bb 60 02 00 00 	mov    0x260(%rbx),%r15
     5a8:	e8 00 00 00 00       	callq  5ad <_ZN4Code12gen_mulPre11Ev+0x5ad>
     5ad:	48 83 ec 08          	sub    $0x8,%rsp
     5b1:	ff b5 60 fc ff ff    	pushq  -0x3a0(%rbp)
     5b7:	4c 89 fa             	mov    %r15,%rdx
     5ba:	4c 89 e6             	mov    %r12,%rsi
     5bd:	4c 8b 8d e0 fb ff ff 	mov    -0x420(%rbp),%r9
     5c4:	b9 10 00 00 00       	mov    $0x10,%ecx
     5c9:	48 89 df             	mov    %rbx,%rdi
     5cc:	4c 8b 85 68 fc ff ff 	mov    -0x398(%rbp),%r8
     5d3:	e8 00 00 00 00       	callq  5d8 <_ZN4Code12gen_mulPre11Ev+0x5d8>
     5d8:	f3 0f 7e b5 50 fc ff 	movq   -0x3b0(%rbp),%xmm6
     5df:	ff 
     5e0:	48 8b b5 e0 fb ff ff 	mov    -0x420(%rbp),%rsi
     5e7:	ba 01 00 00 00       	mov    $0x1,%edx
     5ec:	48 c7 85 08 fe ff ff 	movq   $0xb,-0x1f8(%rbp)
     5f3:	0b 00 00 00 
     5f7:	66 0f 6f 8d f0 fb ff 	movdqa -0x410(%rbp),%xmm1
     5fe:	ff 
     5ff:	66 0f 6f 95 10 fc ff 	movdqa -0x3f0(%rbp),%xmm2
     606:	ff 
     607:	48 8b bd 68 fc ff ff 	mov    -0x398(%rbp),%rdi
     60e:	0f 16 b5 48 fc ff ff 	movhps -0x3b8(%rbp),%xmm6
     615:	41 5b                	pop    %r11
     617:	48 89 b5 e0 fd ff ff 	mov    %rsi,-0x220(%rbp)
     61e:	66 0f 6f 9d 20 fc ff 	movdqa -0x3e0(%rbp),%xmm3
     625:	ff 
     626:	41 5f                	pop    %r15
     628:	4c 89 f6             	mov    %r14,%rsi
     62b:	0f 29 8d 90 fd ff ff 	movaps %xmm1,-0x270(%rbp)
     632:	66 0f 6f a5 30 fc ff 	movdqa -0x3d0(%rbp),%xmm4
     639:	ff 
     63a:	0f 29 95 a0 fd ff ff 	movaps %xmm2,-0x260(%rbp)
     641:	0f 29 9d b0 fd ff ff 	movaps %xmm3,-0x250(%rbp)
     648:	0f 29 a5 c0 fd ff ff 	movaps %xmm4,-0x240(%rbp)
     64f:	0f 29 b5 50 fc ff ff 	movaps %xmm6,-0x3b0(%rbp)
     656:	0f 29 b5 d0 fd ff ff 	movaps %xmm6,-0x230(%rbp)
     65d:	e8 00 00 00 00       	callq  662 <_ZN4Code12gen_mulPre11Ev+0x662>
     662:	ba 01 00 00 00       	mov    $0x1,%edx
     667:	4c 89 ee             	mov    %r13,%rsi
     66a:	4c 89 e7             	mov    %r12,%rdi
     66d:	4c 8b bb 60 02 00 00 	mov    0x260(%rbx),%r15
     674:	e8 00 00 00 00       	callq  679 <_ZN4Code12gen_mulPre11Ev+0x679>
     679:	48 83 ec 08          	sub    $0x8,%rsp
     67d:	ff b5 60 fc ff ff    	pushq  -0x3a0(%rbp)
     683:	4c 89 fa             	mov    %r15,%rdx
     686:	4c 89 e6             	mov    %r12,%rsi
     689:	4c 8b 8d 40 fc ff ff 	mov    -0x3c0(%rbp),%r9
     690:	b9 18 00 00 00       	mov    $0x18,%ecx
     695:	48 89 df             	mov    %rbx,%rdi
     698:	4c 8b 85 68 fc ff ff 	mov    -0x398(%rbp),%r8
     69f:	e8 00 00 00 00       	callq  6a4 <_ZN4Code12gen_mulPre11Ev+0x6a4>
     6a4:	f3 44 0f 7e 9d 48 fc 	movq   -0x3b8(%rbp),%xmm11
     6ab:	ff ff 
     6ad:	41 59                	pop    %r9
     6af:	ba 01 00 00 00       	mov    $0x1,%edx
     6b4:	4c 89 f6             	mov    %r14,%rsi
     6b7:	66 44 0f 6f 85 70 fb 	movdqa -0x490(%rbp),%xmm8
     6be:	ff ff 
     6c0:	66 0f 6f ad 90 fb ff 	movdqa -0x470(%rbp),%xmm5
     6c7:	ff 
     6c8:	48 c7 85 08 fe ff ff 	movq   $0xb,-0x1f8(%rbp)
     6cf:	0b 00 00 00 
     6d3:	66 44 0f 6f 8d 60 fb 	movdqa -0x4a0(%rbp),%xmm9
     6da:	ff ff 
     6dc:	48 8b 8d 40 fc ff ff 	mov    -0x3c0(%rbp),%rcx
     6e3:	44 0f 16 9d e0 fb ff 	movhps -0x420(%rbp),%xmm11
     6ea:	ff 
     6eb:	48 8b bd 68 fc ff ff 	mov    -0x398(%rbp),%rdi
     6f2:	41 5a                	pop    %r10
     6f4:	44 0f 29 85 90 fd ff 	movaps %xmm8,-0x270(%rbp)
     6fb:	ff 
     6fc:	66 44 0f 6f 95 50 fb 	movdqa -0x4b0(%rbp),%xmm10
     703:	ff ff 
     705:	48 89 8d e0 fd ff ff 	mov    %rcx,-0x220(%rbp)
     70c:	44 0f 29 8d a0 fd ff 	movaps %xmm9,-0x260(%rbp)
     713:	ff 
     714:	44 0f 29 95 b0 fd ff 	movaps %xmm10,-0x250(%rbp)
     71b:	ff 
     71c:	0f 29 ad c0 fd ff ff 	movaps %xmm5,-0x240(%rbp)
     723:	44 0f 29 9d e0 fb ff 	movaps %xmm11,-0x420(%rbp)
     72a:	ff 
     72b:	44 0f 29 9d d0 fd ff 	movaps %xmm11,-0x230(%rbp)
     732:	ff 
     733:	e8 00 00 00 00       	callq  738 <_ZN4Code12gen_mulPre11Ev+0x738>
     738:	ba 01 00 00 00       	mov    $0x1,%edx
     73d:	4c 89 ee             	mov    %r13,%rsi
     740:	4c 89 e7             	mov    %r12,%rdi
     743:	4c 8b bb 60 02 00 00 	mov    0x260(%rbx),%r15
     74a:	e8 00 00 00 00       	callq  74f <_ZN4Code12gen_mulPre11Ev+0x74f>
     74f:	48 83 ec 08          	sub    $0x8,%rsp
     753:	ff b5 60 fc ff ff    	pushq  -0x3a0(%rbp)
     759:	4c 89 fa             	mov    %r15,%rdx
     75c:	4c 89 e6             	mov    %r12,%rsi
     75f:	4c 8b 8d d8 fb ff ff 	mov    -0x428(%rbp),%r9
     766:	b9 20 00 00 00       	mov    $0x20,%ecx
     76b:	48 89 df             	mov    %rbx,%rdi
     76e:	4c 8b 85 68 fc ff ff 	mov    -0x398(%rbp),%r8
     775:	e8 00 00 00 00       	callq  77a <_ZN4Code12gen_mulPre11Ev+0x77a>
     77a:	5f                   	pop    %rdi
     77b:	66 0f 6f 95 10 fc ff 	movdqa -0x3f0(%rbp),%xmm2
     782:	ff 
     783:	ba 01 00 00 00       	mov    $0x1,%edx
     788:	4c 89 f6             	mov    %r14,%rsi
     78b:	66 0f 6f 9d 20 fc ff 	movdqa -0x3e0(%rbp),%xmm3
     792:	ff 
     793:	66 0f 6f a5 30 fc ff 	movdqa -0x3d0(%rbp),%xmm4
     79a:	ff 
     79b:	48 c7 85 08 fe ff ff 	movq   $0xb,-0x1f8(%rbp)
     7a2:	0b 00 00 00 
     7a6:	48 8b 85 d8 fb ff ff 	mov    -0x428(%rbp),%rax
     7ad:	41 58                	pop    %r8
     7af:	0f 29 95 90 fd ff ff 	movaps %xmm2,-0x270(%rbp)
     7b6:	66 0f 6f b5 50 fc ff 	movdqa -0x3b0(%rbp),%xmm6
     7bd:	ff 
     7be:	66 0f 6f 85 00 fc ff 	movdqa -0x400(%rbp),%xmm0
     7c5:	ff 
     7c6:	0f 29 9d a0 fd ff ff 	movaps %xmm3,-0x260(%rbp)
     7cd:	48 8b bd 68 fc ff ff 	mov    -0x398(%rbp),%rdi
     7d4:	48 89 85 e0 fd ff ff 	mov    %rax,-0x220(%rbp)
     7db:	0f 29 a5 b0 fd ff ff 	movaps %xmm4,-0x250(%rbp)
     7e2:	0f 29 b5 c0 fd ff ff 	movaps %xmm6,-0x240(%rbp)
     7e9:	0f 29 85 d0 fd ff ff 	movaps %xmm0,-0x230(%rbp)
     7f0:	e8 00 00 00 00       	callq  7f5 <_ZN4Code12gen_mulPre11Ev+0x7f5>
     7f5:	ba 01 00 00 00       	mov    $0x1,%edx
     7fa:	4c 89 ee             	mov    %r13,%rsi
     7fd:	4c 89 e7             	mov    %r12,%rdi
     800:	4c 8b bb 60 02 00 00 	mov    0x260(%rbx),%r15
     807:	e8 00 00 00 00       	callq  80c <_ZN4Code12gen_mulPre11Ev+0x80c>
     80c:	48 83 ec 08          	sub    $0x8,%rsp
     810:	ff b5 60 fc ff ff    	pushq  -0x3a0(%rbp)
     816:	4c 89 fa             	mov    %r15,%rdx
     819:	4c 89 e6             	mov    %r12,%rsi
     81c:	4c 8b 8d d0 fb ff ff 	mov    -0x430(%rbp),%r9
     823:	b9 28 00 00 00       	mov    $0x28,%ecx
     828:	48 89 df             	mov    %rbx,%rdi
     82b:	4c 8b 85 68 fc ff ff 	mov    -0x398(%rbp),%r8
     832:	e8 00 00 00 00       	callq  837 <_ZN4Code12gen_mulPre11Ev+0x837>
     837:	66 44 0f 6f 8d 60 fb 	movdqa -0x4a0(%rbp),%xmm9
     83e:	ff ff 
     840:	59                   	pop    %rcx
     841:	ba 01 00 00 00       	mov    $0x1,%edx
     846:	48 c7 85 08 fe ff ff 	movq   $0xb,-0x1f8(%rbp)
     84d:	0b 00 00 00 
     851:	66 44 0f 6f 95 50 fb 	movdqa -0x4b0(%rbp),%xmm10
     858:	ff ff 
     85a:	66 0f 6f ad 90 fb ff 	movdqa -0x470(%rbp),%xmm5
     861:	ff 
     862:	48 8b 85 d0 fb ff ff 	mov    -0x430(%rbp),%rax
     869:	5e                   	pop    %rsi
     86a:	4c 89 f6             	mov    %r14,%rsi
     86d:	44 0f 29 8d 90 fd ff 	movaps %xmm9,-0x270(%rbp)
     874:	ff 
     875:	66 44 0f 6f 9d e0 fb 	movdqa -0x420(%rbp),%xmm11
     87c:	ff ff 
     87e:	66 0f 6f bd 80 fb ff 	movdqa -0x480(%rbp),%xmm7
     885:	ff 
     886:	44 0f 29 95 a0 fd ff 	movaps %xmm10,-0x260(%rbp)
     88d:	ff 
     88e:	48 8b bd 68 fc ff ff 	mov    -0x398(%rbp),%rdi
     895:	48 89 85 e0 fd ff ff 	mov    %rax,-0x220(%rbp)
     89c:	0f 29 ad b0 fd ff ff 	movaps %xmm5,-0x250(%rbp)
     8a3:	44 0f 29 9d c0 fd ff 	movaps %xmm11,-0x240(%rbp)
     8aa:	ff 
     8ab:	0f 29 bd d0 fd ff ff 	movaps %xmm7,-0x230(%rbp)
     8b2:	e8 00 00 00 00       	callq  8b7 <_ZN4Code12gen_mulPre11Ev+0x8b7>
     8b7:	ba 01 00 00 00       	mov    $0x1,%edx
     8bc:	4c 89 ee             	mov    %r13,%rsi
     8bf:	4c 89 e7             	mov    %r12,%rdi
     8c2:	4c 8b bb 60 02 00 00 	mov    0x260(%rbx),%r15
     8c9:	e8 00 00 00 00       	callq  8ce <_ZN4Code12gen_mulPre11Ev+0x8ce>
     8ce:	48 83 ec 08          	sub    $0x8,%rsp
     8d2:	ff b5 60 fc ff ff    	pushq  -0x3a0(%rbp)
     8d8:	4c 89 fa             	mov    %r15,%rdx
     8db:	4c 89 e6             	mov    %r12,%rsi
     8de:	4c 8b 8d c8 fb ff ff 	mov    -0x438(%rbp),%r9
     8e5:	b9 30 00 00 00       	mov    $0x30,%ecx
     8ea:	48 89 df             	mov    %rbx,%rdi
     8ed:	4c 8b 85 68 fc ff ff 	mov    -0x398(%rbp),%r8
     8f4:	e8 00 00 00 00       	callq  8f9 <_ZN4Code12gen_mulPre11Ev+0x8f9>
     8f9:	58                   	pop    %rax
     8fa:	66 0f 6f 9d 20 fc ff 	movdqa -0x3e0(%rbp),%xmm3
     901:	ff 
     902:	4c 89 f6             	mov    %r14,%rsi
     905:	48 c7 85 08 fe ff ff 	movq   $0xb,-0x1f8(%rbp)
     90c:	0b 00 00 00 
     910:	66 0f 6f a5 30 fc ff 	movdqa -0x3d0(%rbp),%xmm4
     917:	ff 
     918:	66 0f 6f b5 50 fc ff 	movdqa -0x3b0(%rbp),%xmm6
     91f:	ff 
     920:	66 0f 6f 85 00 fc ff 	movdqa -0x400(%rbp),%xmm0
     927:	ff 
     928:	5a                   	pop    %rdx
     929:	ba 01 00 00 00       	mov    $0x1,%edx
     92e:	0f 29 9d 90 fd ff ff 	movaps %xmm3,-0x270(%rbp)
     935:	66 0f 6f 8d f0 fb ff 	movdqa -0x410(%rbp),%xmm1
     93c:	ff 
     93d:	48 8b 85 c8 fb ff ff 	mov    -0x438(%rbp),%rax
     944:	0f 29 a5 a0 fd ff ff 	movaps %xmm4,-0x260(%rbp)
     94b:	48 8b bd 68 fc ff ff 	mov    -0x398(%rbp),%rdi
     952:	0f 29 b5 b0 fd ff ff 	movaps %xmm6,-0x250(%rbp)
     959:	48 89 85 e0 fd ff ff 	mov    %rax,-0x220(%rbp)
     960:	0f 29 85 c0 fd ff ff 	movaps %xmm0,-0x240(%rbp)
     967:	0f 29 8d d0 fd ff ff 	movaps %xmm1,-0x230(%rbp)
     96e:	e8 00 00 00 00       	callq  973 <_ZN4Code12gen_mulPre11Ev+0x973>
     973:	ba 01 00 00 00       	mov    $0x1,%edx
     978:	4c 89 ee             	mov    %r13,%rsi
     97b:	4c 89 e7             	mov    %r12,%rdi
     97e:	4c 8b bb 60 02 00 00 	mov    0x260(%rbx),%r15
     985:	e8 00 00 00 00       	callq  98a <_ZN4Code12gen_mulPre11Ev+0x98a>
     98a:	48 83 ec 08          	sub    $0x8,%rsp
     98e:	ff b5 60 fc ff ff    	pushq  -0x3a0(%rbp)
     994:	4c 89 fa             	mov    %r15,%rdx
     997:	4c 89 e6             	mov    %r12,%rsi
     99a:	4c 8b 8d c0 fb ff ff 	mov    -0x440(%rbp),%r9
     9a1:	b9 38 00 00 00       	mov    $0x38,%ecx
     9a6:	48 89 df             	mov    %rbx,%rdi
     9a9:	4c 8b 85 68 fc ff ff 	mov    -0x398(%rbp),%r8
     9b0:	e8 00 00 00 00       	callq  9b5 <_ZN4Code12gen_mulPre11Ev+0x9b5>
     9b5:	66 44 0f 6f 95 50 fb 	movdqa -0x4b0(%rbp),%xmm10
     9bc:	ff ff 
     9be:	66 0f 6f ad 90 fb ff 	movdqa -0x470(%rbp),%xmm5
     9c5:	ff 
     9c6:	ba 01 00 00 00       	mov    $0x1,%edx
     9cb:	4c 89 f6             	mov    %r14,%rsi
     9ce:	66 44 0f 6f 9d e0 fb 	movdqa -0x420(%rbp),%xmm11
     9d5:	ff ff 
     9d7:	66 0f 6f bd 80 fb ff 	movdqa -0x480(%rbp),%xmm7
     9de:	ff 
     9df:	48 c7 85 08 fe ff ff 	movq   $0xb,-0x1f8(%rbp)
     9e6:	0b 00 00 00 
     9ea:	48 8b 85 c0 fb ff ff 	mov    -0x440(%rbp),%rax
     9f1:	48 8b bd 68 fc ff ff 	mov    -0x398(%rbp),%rdi
     9f8:	0f 29 ad a0 fd ff ff 	movaps %xmm5,-0x260(%rbp)
     9ff:	66 44 0f 6f 85 70 fb 	movdqa -0x490(%rbp),%xmm8
     a06:	ff ff 
     a08:	41 5b                	pop    %r11
     a0a:	44 0f 29 95 90 fd ff 	movaps %xmm10,-0x270(%rbp)
     a11:	ff 
     a12:	41 5f                	pop    %r15
     a14:	48 89 85 e0 fd ff ff 	mov    %rax,-0x220(%rbp)
     a1b:	44 0f 29 9d b0 fd ff 	movaps %xmm11,-0x250(%rbp)
     a22:	ff 
     a23:	0f 29 bd c0 fd ff ff 	movaps %xmm7,-0x240(%rbp)
     a2a:	44 0f 29 85 d0 fd ff 	movaps %xmm8,-0x230(%rbp)
     a31:	ff 
     a32:	e8 00 00 00 00       	callq  a37 <_ZN4Code12gen_mulPre11Ev+0xa37>
     a37:	ba 01 00 00 00       	mov    $0x1,%edx
     a3c:	4c 89 ee             	mov    %r13,%rsi
     a3f:	4c 89 e7             	mov    %r12,%rdi
     a42:	4c 8b bb 60 02 00 00 	mov    0x260(%rbx),%r15
     a49:	e8 00 00 00 00       	callq  a4e <_ZN4Code12gen_mulPre11Ev+0xa4e>
     a4e:	48 83 ec 08          	sub    $0x8,%rsp
     a52:	ff b5 60 fc ff ff    	pushq  -0x3a0(%rbp)
     a58:	4c 89 fa             	mov    %r15,%rdx
     a5b:	4c 89 e6             	mov    %r12,%rsi
     a5e:	4c 8b 8d b8 fb ff ff 	mov    -0x448(%rbp),%r9
     a65:	b9 40 00 00 00       	mov    $0x40,%ecx
     a6a:	48 89 df             	mov    %rbx,%rdi
     a6d:	4c 8b 85 68 fc ff ff 	mov    -0x398(%rbp),%r8
     a74:	e8 00 00 00 00       	callq  a79 <_ZN4Code12gen_mulPre11Ev+0xa79>
     a79:	66 0f 6f a5 30 fc ff 	movdqa -0x3d0(%rbp),%xmm4
     a80:	ff 
     a81:	66 0f 6f b5 50 fc ff 	movdqa -0x3b0(%rbp),%xmm6
     a88:	ff 
     a89:	ba 01 00 00 00       	mov    $0x1,%edx
     a8e:	4c 89 f6             	mov    %r14,%rsi
     a91:	66 0f 6f 85 00 fc ff 	movdqa -0x400(%rbp),%xmm0
     a98:	ff 
     a99:	66 0f 6f 8d f0 fb ff 	movdqa -0x410(%rbp),%xmm1
     aa0:	ff 
     aa1:	48 c7 85 08 fe ff ff 	movq   $0xb,-0x1f8(%rbp)
     aa8:	0b 00 00 00 
     aac:	48 8b 85 b8 fb ff ff 	mov    -0x448(%rbp),%rax
     ab3:	48 8b bd 68 fc ff ff 	mov    -0x398(%rbp),%rdi
     aba:	0f 29 a5 90 fd ff ff 	movaps %xmm4,-0x270(%rbp)
     ac1:	66 0f 6f 95 10 fc ff 	movdqa -0x3f0(%rbp),%xmm2
     ac8:	ff 
     ac9:	41 59                	pop    %r9
     acb:	0f 29 b5 a0 fd ff ff 	movaps %xmm6,-0x260(%rbp)
     ad2:	41 5a                	pop    %r10
     ad4:	48 89 85 e0 fd ff ff 	mov    %rax,-0x220(%rbp)
     adb:	0f 29 85 b0 fd ff ff 	movaps %xmm0,-0x250(%rbp)
     ae2:	0f 29 8d c0 fd ff ff 	movaps %xmm1,-0x240(%rbp)
     ae9:	0f 29 95 d0 fd ff ff 	movaps %xmm2,-0x230(%rbp)
     af0:	e8 00 00 00 00       	callq  af5 <_ZN4Code12gen_mulPre11Ev+0xaf5>
     af5:	ba 01 00 00 00       	mov    $0x1,%edx
     afa:	4c 89 ee             	mov    %r13,%rsi
     afd:	4c 89 e7             	mov    %r12,%rdi
     b00:	4c 8b bb 60 02 00 00 	mov    0x260(%rbx),%r15
     b07:	e8 00 00 00 00       	callq  b0c <_ZN4Code12gen_mulPre11Ev+0xb0c>
     b0c:	48 83 ec 08          	sub    $0x8,%rsp
     b10:	ff b5 60 fc ff ff    	pushq  -0x3a0(%rbp)
     b16:	4c 89 fa             	mov    %r15,%rdx
     b19:	4c 89 e6             	mov    %r12,%rsi
     b1c:	4c 8b 8d b0 fb ff ff 	mov    -0x450(%rbp),%r9
     b23:	b9 48 00 00 00       	mov    $0x48,%ecx
     b28:	48 89 df             	mov    %rbx,%rdi
     b2b:	4c 8b 85 68 fc ff ff 	mov    -0x398(%rbp),%r8
     b32:	e8 00 00 00 00       	callq  b37 <_ZN4Code12gen_mulPre11Ev+0xb37>
     b37:	4c 8b bd 68 fc ff ff 	mov    -0x398(%rbp),%r15
     b3e:	5f                   	pop    %rdi
     b3f:	ba 01 00 00 00       	mov    $0x1,%edx
     b44:	4c 89 f6             	mov    %r14,%rsi
     b47:	66 0f 6f ad 90 fb ff 	movdqa -0x470(%rbp),%xmm5
     b4e:	ff 
     b4f:	48 8b 85 b0 fb ff ff 	mov    -0x450(%rbp),%rax
     b56:	48 c7 85 08 fe ff ff 	movq   $0xb,-0x1f8(%rbp)
     b5d:	0b 00 00 00 
     b61:	66 44 0f 6f 9d e0 fb 	movdqa -0x420(%rbp),%xmm11
     b68:	ff ff 
     b6a:	41 58                	pop    %r8
     b6c:	4c 89 ff             	mov    %r15,%rdi
     b6f:	66 0f 6f bd 80 fb ff 	movdqa -0x480(%rbp),%xmm7
     b76:	ff 
     b77:	48 89 85 e0 fd ff ff 	mov    %rax,-0x220(%rbp)
     b7e:	66 44 0f 6f 85 70 fb 	movdqa -0x490(%rbp),%xmm8
     b85:	ff ff 
     b87:	0f 29 ad 90 fd ff ff 	movaps %xmm5,-0x270(%rbp)
     b8e:	66 44 0f 6f 8d 60 fb 	movdqa -0x4a0(%rbp),%xmm9
     b95:	ff ff 
     b97:	44 0f 29 9d a0 fd ff 	movaps %xmm11,-0x260(%rbp)
     b9e:	ff 
     b9f:	0f 29 bd b0 fd ff ff 	movaps %xmm7,-0x250(%rbp)
     ba6:	44 0f 29 85 c0 fd ff 	movaps %xmm8,-0x240(%rbp)
     bad:	ff 
     bae:	44 0f 29 8d d0 fd ff 	movaps %xmm9,-0x230(%rbp)
     bb5:	ff 
     bb6:	e8 00 00 00 00       	callq  bbb <_ZN4Code12gen_mulPre11Ev+0xbbb>
     bbb:	ba 01 00 00 00       	mov    $0x1,%edx
     bc0:	4c 89 ee             	mov    %r13,%rsi
     bc3:	4c 89 e7             	mov    %r12,%rdi
     bc6:	4c 8b b3 60 02 00 00 	mov    0x260(%rbx),%r14
     bcd:	e8 00 00 00 00       	callq  bd2 <_ZN4Code12gen_mulPre11Ev+0xbd2>
     bd2:	48 83 ec 08          	sub    $0x8,%rsp
     bd6:	ff b5 60 fc ff ff    	pushq  -0x3a0(%rbp)
     bdc:	4d 89 f8             	mov    %r15,%r8
     bdf:	4c 89 f2             	mov    %r14,%rdx
     be2:	4c 8b 8d a8 fb ff ff 	mov    -0x458(%rbp),%r9
     be9:	b9 50 00 00 00       	mov    $0x50,%ecx
     bee:	4c 89 e6             	mov    %r12,%rsi
     bf1:	48 89 df             	mov    %rbx,%rdi
     bf4:	e8 00 00 00 00       	callq  bf9 <_ZN4Code12gen_mulPre11Ev+0xbf9>
     bf9:	66 0f 6f b5 50 fc ff 	movdqa -0x3b0(%rbp),%xmm6
     c00:	ff 
     c01:	66 0f 6f 85 00 fc ff 	movdqa -0x400(%rbp),%xmm0
     c08:	ff 
     c09:	48 8d bd 70 fc ff ff 	lea    -0x390(%rbp),%rdi
     c10:	ba 01 00 00 00       	mov    $0x1,%edx
     c15:	66 0f 6f 8d f0 fb ff 	movdqa -0x410(%rbp),%xmm1
     c1c:	ff 
     c1d:	66 0f 6f 95 10 fc ff 	movdqa -0x3f0(%rbp),%xmm2
     c24:	ff 
     c25:	66 0f 6f 9d 20 fc ff 	movdqa -0x3e0(%rbp),%xmm3
     c2c:	ff 
     c2d:	59                   	pop    %rcx
     c2e:	0f 29 b5 90 fd ff ff 	movaps %xmm6,-0x270(%rbp)
     c35:	48 8b 85 a8 fb ff ff 	mov    -0x458(%rbp),%rax
     c3c:	5e                   	pop    %rsi
     c3d:	4c 89 ee             	mov    %r13,%rsi
     c40:	0f 29 85 a0 fd ff ff 	movaps %xmm0,-0x260(%rbp)
     c47:	0f 29 8d b0 fd ff ff 	movaps %xmm1,-0x250(%rbp)
     c4e:	48 89 85 e0 fd ff ff 	mov    %rax,-0x220(%rbp)
     c55:	0f 29 95 c0 fd ff ff 	movaps %xmm2,-0x240(%rbp)
     c5c:	0f 29 9d d0 fd ff ff 	movaps %xmm3,-0x230(%rbp)
     c63:	e8 00 00 00 00       	callq  c68 <_ZN4Code12gen_mulPre11Ev+0xc68>
     c68:	0f b6 85 78 fc ff ff 	movzbl -0x388(%rbp),%eax
     c6f:	66 0f 6f 8d 70 fc ff 	movdqa -0x390(%rbp),%xmm1
     c76:	ff 
     c77:	66 0f 6f 95 80 fc ff 	movdqa -0x380(%rbp),%xmm2
     c7e:	ff 
     c7f:	44 0f b7 a5 7a fc ff 	movzwl -0x386(%rbp),%r12d
     c86:	ff 
     c87:	83 e0 3f             	and    $0x3f,%eax
     c8a:	0f 29 8d 90 fc ff ff 	movaps %xmm1,-0x370(%rbp)
     c91:	88 85 e0 fb ff ff    	mov    %al,-0x420(%rbp)
     c97:	0f b7 85 78 fc ff ff 	movzwl -0x388(%rbp),%eax
     c9e:	0f 29 95 a0 fc ff ff 	movaps %xmm2,-0x360(%rbp)
     ca5:	66 c1 e8 06          	shr    $0x6,%ax
     ca9:	66 89 85 f0 fb ff ff 	mov    %ax,-0x410(%rbp)
     cb0:	0f b6 85 7b fc ff ff 	movzbl -0x385(%rbp),%eax
     cb7:	c0 e8 06             	shr    $0x6,%al
     cba:	83 e0 01             	and    $0x1,%eax
     cbd:	88 85 20 fc ff ff    	mov    %al,-0x3e0(%rbp)
     cc3:	0f b6 85 7c fc ff ff 	movzbl -0x384(%rbp),%eax
     cca:	89 c1                	mov    %eax,%ecx
     ccc:	c0 e8 03             	shr    $0x3,%al
     ccf:	83 e0 07             	and    $0x7,%eax
     cd2:	83 e1 07             	and    $0x7,%ecx
     cd5:	88 85 30 fc ff ff    	mov    %al,-0x3d0(%rbp)
     cdb:	8b 85 80 fc ff ff    	mov    -0x380(%rbp),%eax
     ce1:	88 8d 00 fc ff ff    	mov    %cl,-0x400(%rbp)
     ce7:	89 85 10 fc ff ff    	mov    %eax,-0x3f0(%rbp)
     ced:	48 8b 85 88 fc ff ff 	mov    -0x378(%rbp),%rax
     cf4:	66 41 81 e4 ff 3f    	and    $0x3fff,%r12w
     cfa:	75 2f                	jne    d2b <_ZN4Code12gen_mulPre11Ev+0xd2b>
     cfc:	31 d2                	xor    %edx,%edx
     cfe:	c6 85 30 fc ff ff 00 	movb   $0x0,-0x3d0(%rbp)
     d05:	c7 85 10 fc ff ff 00 	movl   $0x0,-0x3f0(%rbp)
     d0c:	00 00 00 
     d0f:	c6 85 00 fc ff ff 00 	movb   $0x0,-0x400(%rbp)
     d16:	c6 85 20 fc ff ff 00 	movb   $0x0,-0x3e0(%rbp)
     d1d:	66 89 95 f0 fb ff ff 	mov    %dx,-0x410(%rbp)
     d24:	c6 85 e0 fb ff ff 00 	movb   $0x0,-0x420(%rbp)
     d2b:	48 83 c0 58          	add    $0x58,%rax
     d2f:	4c 8b b5 60 fc ff ff 	mov    -0x3a0(%rbp),%r14
     d36:	48 89 85 d0 fb ff ff 	mov    %rax,-0x430(%rbp)
     d3d:	48 8d 85 e8 fd ff ff 	lea    -0x218(%rbp),%rax
     d44:	48 89 85 d8 fb ff ff 	mov    %rax,-0x428(%rbp)
     d4b:	41 0f b7 c4          	movzwl %r12w,%eax
     d4f:	89 85 b8 fb ff ff    	mov    %eax,-0x448(%rbp)
     d55:	0f b6 85 20 fc ff ff 	movzbl -0x3e0(%rbp),%eax
     d5c:	83 e0 01             	and    $0x1,%eax
     d5f:	c1 e0 06             	shl    $0x6,%eax
     d62:	88 85 c8 fb ff ff    	mov    %al,-0x438(%rbp)
     d68:	0f b6 85 30 fc ff ff 	movzbl -0x3d0(%rbp),%eax
     d6f:	83 e0 07             	and    $0x7,%eax
     d72:	c1 e0 03             	shl    $0x3,%eax
     d75:	88 85 c0 fb ff ff    	mov    %al,-0x440(%rbp)
     d7b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
     d80:	49 8b 06             	mov    (%r14),%rax
     d83:	44 0f b6 9d e0 fb ff 	movzbl -0x420(%rbp),%r11d
     d8a:	ff 
     d8b:	be 00 00 00 00       	mov    $0x0,%esi
     d90:	bf 00 00 00 00       	mov    $0x0,%edi
     d95:	0f b7 8d f0 fb ff ff 	movzwl -0x410(%rbp),%ecx
     d9c:	44 0f b6 95 00 fc ff 	movzbl -0x400(%rbp),%r10d
     da3:	ff 
     da4:	41 b8 00 00 00 00    	mov    $0x0,%r8d
     daa:	41 b9 00 00 00 00    	mov    $0x0,%r9d
     db0:	48 89 85 50 fc ff ff 	mov    %rax,-0x3b0(%rbp)
     db7:	0f b6 85 98 fc ff ff 	movzbl -0x368(%rbp),%eax
     dbe:	89 ca                	mov    %ecx,%edx
     dc0:	4c 8b bd d0 fb ff ff 	mov    -0x430(%rbp),%r15
     dc7:	83 e0 c0             	and    $0xffffffc0,%eax
     dca:	c1 e2 06             	shl    $0x6,%edx
     dcd:	44 09 d8             	or     %r11d,%eax
     dd0:	4c 89 bd a8 fc ff ff 	mov    %r15,-0x358(%rbp)
     dd7:	88 85 98 fc ff ff    	mov    %al,-0x368(%rbp)
     ddd:	0f b7 85 98 fc ff ff 	movzwl -0x368(%rbp),%eax
     de4:	83 e0 3f             	and    $0x3f,%eax
     de7:	09 d0                	or     %edx,%eax
     de9:	ba 00 00 00 00       	mov    $0x0,%edx
     dee:	66 89 85 98 fc ff ff 	mov    %ax,-0x368(%rbp)
     df5:	0f b7 85 9a fc ff ff 	movzwl -0x366(%rbp),%eax
     dfc:	66 25 00 c0          	and    $0xc000,%ax
     e00:	44 09 e0             	or     %r12d,%eax
     e03:	66 89 85 9a fc ff ff 	mov    %ax,-0x366(%rbp)
     e0a:	0f b6 c4             	movzbl %ah,%eax
     e0d:	83 e0 bf             	and    $0xffffffbf,%eax
     e10:	0a 85 c8 fb ff ff    	or     -0x438(%rbp),%al
     e16:	88 85 9b fc ff ff    	mov    %al,-0x365(%rbp)
     e1c:	0f b6 85 9c fc ff ff 	movzbl -0x364(%rbp),%eax
     e23:	83 e0 c0             	and    $0xffffffc0,%eax
     e26:	44 09 d0             	or     %r10d,%eax
     e29:	0a 85 c0 fb ff ff    	or     -0x440(%rbp),%al
     e2f:	66 45 85 e4          	test   %r12w,%r12w
     e33:	88 85 9c fc ff ff    	mov    %al,-0x364(%rbp)
     e39:	8b 85 10 fc ff ff    	mov    -0x3f0(%rbp),%eax
     e3f:	41 0f 45 fa          	cmovne %r10d,%edi
     e43:	45 0f 45 cb          	cmovne %r11d,%r9d
     e47:	44 8b 93 e0 03 00 00 	mov    0x3e0(%rbx),%r10d
     e4e:	44 8b 9d d0 fc ff ff 	mov    -0x330(%rbp),%r11d
     e55:	0f 45 f0             	cmovne %eax,%esi
     e58:	89 85 a0 fc ff ff    	mov    %eax,-0x360(%rbp)
     e5e:	0f b6 85 30 fc ff ff 	movzbl -0x3d0(%rbp),%eax
     e65:	66 0f 6f bd 90 fc ff 	movdqa -0x370(%rbp),%xmm7
     e6c:	ff 
     e6d:	66 0f 6f ad a0 fc ff 	movdqa -0x360(%rbp),%xmm5
     e74:	ff 
     e75:	0f 45 d0             	cmovne %eax,%edx
     e78:	0f b6 85 20 fc ff ff 	movzbl -0x3e0(%rbp),%eax
     e7f:	0f 29 bd b0 fc ff ff 	movaps %xmm7,-0x350(%rbp)
     e86:	44 0f 45 c0          	cmovne %eax,%r8d
     e8a:	b8 00 00 00 00       	mov    $0x0,%eax
     e8f:	0f 29 ad c0 fc ff ff 	movaps %xmm5,-0x340(%rbp)
     e96:	0f 45 c1             	cmovne %ecx,%eax
     e99:	41 c1 e2 10          	shl    $0x10,%r10d
     e9d:	41 81 e3 00 00 00 80 	and    $0x80000000,%r11d
     ea4:	0f b6 8b e4 03 00 00 	movzbl 0x3e4(%rbx),%ecx
     eab:	41 81 e2 00 00 ff 3f 	and    $0x3fff0000,%r10d
     eb2:	80 a5 d4 fc ff ff c0 	andb   $0xc0,-0x32c(%rbp)
     eb9:	41 c1 e0 1e          	shl    $0x1e,%r8d
     ebd:	c1 e0 06             	shl    $0x6,%eax
     ec0:	41 83 ca 40          	or     $0x40,%r10d
     ec4:	c1 e2 03             	shl    $0x3,%edx
     ec7:	45 09 da             	or     %r11d,%r10d
     eca:	44 09 c8             	or     %r9d,%eax
     ecd:	09 d7                	or     %edx,%edi
     ecf:	44 89 95 d0 fc ff ff 	mov    %r10d,-0x330(%rbp)
     ed6:	44 8b 8d b8 fb ff ff 	mov    -0x448(%rbp),%r9d
     edd:	83 e7 3f             	and    $0x3f,%edi
     ee0:	0f b6 95 bc fc ff ff 	movzbl -0x344(%rbp),%edx
     ee7:	89 b5 c0 fc ff ff    	mov    %esi,-0x340(%rbp)
     eed:	41 c1 e1 10          	shl    $0x10,%r9d
     ef1:	88 8d 04 fd ff ff    	mov    %cl,-0x2fc(%rbp)
     ef7:	c7 85 00 fd ff ff 00 	movl   $0x0,-0x300(%rbp)
     efe:	00 00 00 
     f01:	44 09 c8             	or     %r9d,%eax
     f04:	83 e2 c0             	and    $0xffffffc0,%edx
     f07:	48 c7 85 f8 fc ff ff 	movq   $0x0,-0x308(%rbp)
     f0e:	00 00 00 00 
     f12:	44 09 c0             	or     %r8d,%eax
     f15:	09 d7                	or     %edx,%edi
     f17:	44 8b 85 b8 fc ff ff 	mov    -0x348(%rbp),%r8d
     f1e:	25 ff ff ff 7f       	and    $0x7fffffff,%eax
     f23:	40 88 bd bc fc ff ff 	mov    %dil,-0x344(%rbp)
     f2a:	41 81 e0 00 00 00 80 	and    $0x80000000,%r8d
     f31:	44 09 c0             	or     %r8d,%eax
     f34:	89 85 b8 fc ff ff    	mov    %eax,-0x348(%rbp)
     f3a:	4c 89 f8             	mov    %r15,%rax
     f3d:	66 0f 6f bd b0 fc ff 	movdqa -0x350(%rbp),%xmm7
     f44:	ff 
     f45:	48 2b 85 60 fc ff ff 	sub    -0x3a0(%rbp),%rax
     f4c:	4c 01 f0             	add    %r14,%rax
     f4f:	0f 11 bd d8 fc ff ff 	movups %xmm7,-0x328(%rbp)
     f56:	48 89 85 c8 fc ff ff 	mov    %rax,-0x338(%rbp)
     f5d:	0f b7 85 da fc ff ff 	movzwl -0x326(%rbp),%eax
     f64:	66 0f 6f 85 c0 fc ff 	movdqa -0x340(%rbp),%xmm0
     f6b:	ff 
     f6c:	25 ff 3f 00 00       	and    $0x3fff,%eax
     f71:	0f 11 85 e8 fc ff ff 	movups %xmm0,-0x318(%rbp)
     f78:	83 f8 7f             	cmp    $0x7f,%eax
     f7b:	0f 87 ee 0a 00 00    	ja     1a6f <_ZN4Code12gen_mulPre11Ev+0x1a6f>
     f81:	0f b7 95 e2 fc ff ff 	movzwl -0x31e(%rbp),%edx
     f88:	81 e2 ff 3f 00 00    	and    $0x3fff,%edx
     f8e:	8d 4a ff             	lea    -0x1(%rdx),%ecx
     f91:	83 f9 3f             	cmp    $0x3f,%ecx
     f94:	0f 86 26 02 00 00    	jbe    11c0 <_ZN4Code12gen_mulPre11Ev+0x11c0>
     f9a:	48 8b 85 50 fc ff ff 	mov    -0x3b0(%rbp),%rax
     fa1:	f6 00 80             	testb  $0x80,(%rax)
     fa4:	0f 84 0e 02 00 00    	je     11b8 <_ZN4Code12gen_mulPre11Ev+0x11b8>
     faa:	48 8b 95 a0 fb ff ff 	mov    -0x460(%rbp),%rdx
     fb1:	48 8b b5 68 fc ff ff 	mov    -0x398(%rbp),%rsi
     fb8:	48 89 df             	mov    %rbx,%rdi
     fbb:	e8 00 00 00 00       	callq  fc0 <_ZN4Code12gen_mulPre11Ev+0xfc0>
     fc0:	48 8b 85 50 fc ff ff 	mov    -0x3b0(%rbp),%rax
     fc7:	4c 8b 6b 70          	mov    0x70(%rbx),%r13
     fcb:	0f b7 40 02          	movzwl 0x2(%rax),%eax
     fcf:	41 89 c7             	mov    %eax,%r15d
     fd2:	48 8b 83 80 00 00 00 	mov    0x80(%rbx),%rax
     fd9:	66 41 81 e7 ff 3f    	and    $0x3fff,%r15w
     fdf:	66 41 c1 ef 03       	shr    $0x3,%r15w
     fe4:	41 83 f7 01          	xor    $0x1,%r15d
     fe8:	41 83 e7 01          	and    $0x1,%r15d
     fec:	41 80 cf 88          	or     $0x88,%r15b
     ff0:	44 89 bd 40 fc ff ff 	mov    %r15d,-0x3c0(%rbp)
     ff7:	4c 39 e8             	cmp    %r13,%rax
     ffa:	0f 82 a8 01 00 00    	jb     11a8 <_ZN4Code12gen_mulPre11Ev+0x11a8>
    1000:	83 7b 20 03          	cmpl   $0x3,0x20(%rbx)
    1004:	0f 85 6a 0a 00 00    	jne    1a74 <_ZN4Code12gen_mulPre11Ev+0x1a74>
    100a:	4d 01 ed             	add    %r13,%r13
    100d:	48 8b 7b 68          	mov    0x68(%rbx),%rdi
    1011:	b8 00 10 00 00       	mov    $0x1000,%eax
    1016:	49 81 fd 00 10 00 00 	cmp    $0x1000,%r13
    101d:	4c 0f 42 e8          	cmovb  %rax,%r13
    1021:	48 8b 07             	mov    (%rdi),%rax
    1024:	4c 89 ee             	mov    %r13,%rsi
    1027:	ff 10                	callq  *(%rax)
    1029:	49 89 c7             	mov    %rax,%r15
    102c:	48 85 c0             	test   %rax,%rax
    102f:	0f 84 44 0a 00 00    	je     1a79 <_ZN4Code12gen_mulPre11Ev+0x1a79>
    1035:	48 8b b5 68 fc ff ff 	mov    -0x398(%rbp),%rsi
    103c:	31 c0                	xor    %eax,%eax
    103e:	48 83 bb 80 00 00 00 	cmpq   $0x0,0x80(%rbx)
    1045:	00 
    1046:	48 89 f1             	mov    %rsi,%rcx
    1049:	74 25                	je     1070 <_ZN4Code12gen_mulPre11Ev+0x1070>
    104b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    1050:	48 8b 53 78          	mov    0x78(%rbx),%rdx
    1054:	0f b6 14 02          	movzbl (%rdx,%rax,1),%edx
    1058:	41 88 14 07          	mov    %dl,(%r15,%rax,1)
    105c:	48 83 c0 01          	add    $0x1,%rax
    1060:	48 39 83 80 00 00 00 	cmp    %rax,0x80(%rbx)
    1067:	77 e7                	ja     1050 <_ZN4Code12gen_mulPre11Ev+0x1050>
    1069:	48 89 8d 68 fc ff ff 	mov    %rcx,-0x398(%rbp)
    1070:	48 8b 7b 68          	mov    0x68(%rbx),%rdi
    1074:	48 8b 73 78          	mov    0x78(%rbx),%rsi
    1078:	48 8b 07             	mov    (%rdi),%rax
    107b:	ff 50 08             	callq  *0x8(%rax)
    107e:	4c 89 7b 78          	mov    %r15,0x78(%rbx)
    1082:	48 8b 83 80 00 00 00 	mov    0x80(%rbx),%rax
    1089:	4c 89 6b 70          	mov    %r13,0x70(%rbx)
    108d:	0f b6 8d 40 fc ff ff 	movzbl -0x3c0(%rbp),%ecx
    1094:	45 31 c9             	xor    %r9d,%r9d
    1097:	45 31 c0             	xor    %r8d,%r8d
    109a:	48 89 df             	mov    %rbx,%rdi
    109d:	48 8d 50 01          	lea    0x1(%rax),%rdx
    10a1:	48 8b b5 68 fc ff ff 	mov    -0x398(%rbp),%rsi
    10a8:	48 89 93 80 00 00 00 	mov    %rdx,0x80(%rbx)
    10af:	41 88 0c 07          	mov    %cl,(%r15,%rax,1)
    10b3:	48 8b 85 50 fc ff ff 	mov    -0x3b0(%rbp),%rax
    10ba:	31 c9                	xor    %ecx,%ecx
    10bc:	0f b6 10             	movzbl (%rax),%edx
    10bf:	83 e2 1f             	and    $0x1f,%edx
    10c2:	e8 00 00 00 00       	callq  10c7 <_ZN4Code12gen_mulPre11Ev+0x10c7>
    10c7:	49 83 c6 08          	add    $0x8,%r14
    10cb:	4c 39 b5 d8 fb ff ff 	cmp    %r14,-0x428(%rbp)
    10d2:	0f 84 48 01 00 00    	je     1220 <_ZN4Code12gen_mulPre11Ev+0x1220>
    10d8:	49 8b 06             	mov    (%r14),%rax
    10db:	48 89 85 a0 fb ff ff 	mov    %rax,-0x460(%rbp)
    10e2:	e9 99 fc ff ff       	jmpq   d80 <_ZN4Code12gen_mulPre11Ev+0xd80>
    10e7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
    10ee:	00 00 
    10f0:	83 7b 20 03          	cmpl   $0x3,0x20(%rbx)
    10f4:	0f 85 b9 09 00 00    	jne    1ab3 <_ZN4Code12gen_mulPre11Ev+0x1ab3>
    10fa:	48 01 c9             	add    %rcx,%rcx
    10fd:	b8 00 10 00 00       	mov    $0x1000,%eax
    1102:	48 8b 7b 68          	mov    0x68(%rbx),%rdi
    1106:	48 81 f9 00 10 00 00 	cmp    $0x1000,%rcx
    110d:	48 0f 43 c1          	cmovae %rcx,%rax
    1111:	48 89 85 68 fc ff ff 	mov    %rax,-0x398(%rbp)
    1118:	48 89 c6             	mov    %rax,%rsi
    111b:	48 8b 07             	mov    (%rdi),%rax
    111e:	ff 10                	callq  *(%rax)
    1120:	49 89 c4             	mov    %rax,%r12
    1123:	48 85 c0             	test   %rax,%rax
    1126:	0f 84 3e 09 00 00    	je     1a6a <_ZN4Code12gen_mulPre11Ev+0x1a6a>
    112c:	31 c0                	xor    %eax,%eax
    112e:	48 83 bb 80 00 00 00 	cmpq   $0x0,0x80(%rbx)
    1135:	00 
    1136:	48 8b b5 68 fc ff ff 	mov    -0x398(%rbp),%rsi
    113d:	74 21                	je     1160 <_ZN4Code12gen_mulPre11Ev+0x1160>
    113f:	90                   	nop
    1140:	48 8b 53 78          	mov    0x78(%rbx),%rdx
    1144:	0f b6 14 02          	movzbl (%rdx,%rax,1),%edx
    1148:	41 88 14 04          	mov    %dl,(%r12,%rax,1)
    114c:	48 83 c0 01          	add    $0x1,%rax
    1150:	48 39 83 80 00 00 00 	cmp    %rax,0x80(%rbx)
    1157:	77 e7                	ja     1140 <_ZN4Code12gen_mulPre11Ev+0x1140>
    1159:	48 89 b5 68 fc ff ff 	mov    %rsi,-0x398(%rbp)
    1160:	48 8b 7b 68          	mov    0x68(%rbx),%rdi
    1164:	48 8b 73 78          	mov    0x78(%rbx),%rsi
    1168:	48 8b 07             	mov    (%rdi),%rax
    116b:	ff 50 08             	callq  *0x8(%rax)
    116e:	48 8b 85 68 fc ff ff 	mov    -0x398(%rbp),%rax
    1175:	4c 89 63 78          	mov    %r12,0x78(%rbx)
    1179:	48 89 43 70          	mov    %rax,0x70(%rbx)
    117d:	48 8b 83 80 00 00 00 	mov    0x80(%rbx),%rax
    1184:	e9 1f f0 ff ff       	jmpq   1a8 <_ZN4Code12gen_mulPre11Ev+0x1a8>
    1189:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    1190:	be 66 00 00 00       	mov    $0x66,%esi
    1195:	48 89 df             	mov    %rbx,%rdi
    1198:	e8 00 00 00 00       	callq  119d <_ZN4Code12gen_mulPre11Ev+0x119d>
    119d:	e9 d5 ef ff ff       	jmpq   177 <_ZN4Code12gen_mulPre11Ev+0x177>
    11a2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    11a8:	4c 8b 7b 78          	mov    0x78(%rbx),%r15
    11ac:	e9 dc fe ff ff       	jmpq   108d <_ZN4Code12gen_mulPre11Ev+0x108d>
    11b1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    11b8:	e8 00 00 00 00       	callq  11bd <_ZN4Code12gen_mulPre11Ev+0x11bd>
    11bd:	0f 1f 00             	nopl   (%rax)
    11c0:	0f b6 8d e0 fc ff ff 	movzbl -0x320(%rbp),%ecx
    11c7:	83 e1 1f             	and    $0x1f,%ecx
    11ca:	80 f9 04             	cmp    $0x4,%cl
    11cd:	0f 84 e5 08 00 00    	je     1ab8 <_ZN4Code12gen_mulPre11Ev+0x1ab8>
    11d3:	39 d0                	cmp    %edx,%eax
    11d5:	0f 84 bf fd ff ff    	je     f9a <_ZN4Code12gen_mulPre11Ev+0xf9a>
    11db:	85 c0                	test   %eax,%eax
    11dd:	0f 84 b7 fd ff ff    	je     f9a <_ZN4Code12gen_mulPre11Ev+0xf9a>
    11e3:	bf 10 00 00 00       	mov    $0x10,%edi
    11e8:	e8 00 00 00 00       	callq  11ed <_ZN4Code12gen_mulPre11Ev+0x11ed>
    11ed:	48 8b 15 00 00 00 00 	mov    0x0(%rip),%rdx        # 11f4 <_ZN4Code12gen_mulPre11Ev+0x11f4>
    11f4:	48 8b 35 00 00 00 00 	mov    0x0(%rip),%rsi        # 11fb <_ZN4Code12gen_mulPre11Ev+0x11fb>
    11fb:	48 89 c7             	mov    %rax,%rdi
    11fe:	48 8b 05 00 00 00 00 	mov    0x0(%rip),%rax        # 1205 <_ZN4Code12gen_mulPre11Ev+0x1205>
    1205:	c7 47 08 06 00 00 00 	movl   $0x6,0x8(%rdi)
    120c:	48 83 c0 10          	add    $0x10,%rax
    1210:	48 89 07             	mov    %rax,(%rdi)
    1213:	e8 00 00 00 00       	callq  1218 <_ZN4Code12gen_mulPre11Ev+0x1218>
    1218:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    121f:	00 
    1220:	48 8b 83 68 02 00 00 	mov    0x268(%rbx),%rax
    1227:	49 89 c6             	mov    %rax,%r14
    122a:	0f b7 00             	movzwl (%rax),%eax
    122d:	66 89 85 68 fc ff ff 	mov    %ax,-0x398(%rbp)
    1234:	f6 c4 04             	test   $0x4,%ah
    1237:	74 0d                	je     1246 <_ZN4Code12gen_mulPre11Ev+0x1246>
    1239:	be 66 00 00 00       	mov    $0x66,%esi
    123e:	48 89 df             	mov    %rbx,%rdi
    1241:	e8 00 00 00 00       	callq  1246 <_ZN4Code12gen_mulPre11Ev+0x1246>
    1246:	48 8b b5 48 fc ff ff 	mov    -0x3b8(%rbp),%rsi
    124d:	4c 89 f2             	mov    %r14,%rdx
    1250:	48 89 df             	mov    %rbx,%rdi
    1253:	e8 00 00 00 00       	callq  1258 <_ZN4Code12gen_mulPre11Ev+0x1258>
    1258:	48 8b 83 80 00 00 00 	mov    0x80(%rbx),%rax
    125f:	4c 8b 6b 70          	mov    0x70(%rbx),%r13
    1263:	4c 39 e8             	cmp    %r13,%rax
    1266:	0f 82 34 03 00 00    	jb     15a0 <_ZN4Code12gen_mulPre11Ev+0x15a0>
    126c:	83 7b 20 03          	cmpl   $0x3,0x20(%rbx)
    1270:	0f 85 77 08 00 00    	jne    1aed <_ZN4Code12gen_mulPre11Ev+0x1aed>
    1276:	4d 01 ed             	add    %r13,%r13
    1279:	48 8b 7b 68          	mov    0x68(%rbx),%rdi
    127d:	b8 00 10 00 00       	mov    $0x1000,%eax
    1282:	49 81 fd 00 10 00 00 	cmp    $0x1000,%r13
    1289:	4c 0f 42 e8          	cmovb  %rax,%r13
    128d:	48 8b 07             	mov    (%rdi),%rax
    1290:	4c 89 ee             	mov    %r13,%rsi
    1293:	ff 10                	callq  *(%rax)
    1295:	49 89 c4             	mov    %rax,%r12
    1298:	48 85 c0             	test   %rax,%rax
    129b:	0f 84 51 08 00 00    	je     1af2 <_ZN4Code12gen_mulPre11Ev+0x1af2>
    12a1:	31 c0                	xor    %eax,%eax
    12a3:	48 83 bb 80 00 00 00 	cmpq   $0x0,0x80(%rbx)
    12aa:	00 
    12ab:	4c 89 f6             	mov    %r14,%rsi
    12ae:	74 1c                	je     12cc <_ZN4Code12gen_mulPre11Ev+0x12cc>
    12b0:	48 8b 53 78          	mov    0x78(%rbx),%rdx
    12b4:	0f b6 14 02          	movzbl (%rdx,%rax,1),%edx
    12b8:	41 88 14 04          	mov    %dl,(%r12,%rax,1)
    12bc:	48 83 c0 01          	add    $0x1,%rax
    12c0:	48 39 83 80 00 00 00 	cmp    %rax,0x80(%rbx)
    12c7:	77 e7                	ja     12b0 <_ZN4Code12gen_mulPre11Ev+0x12b0>
    12c9:	49 89 f6             	mov    %rsi,%r14
    12cc:	48 8b 7b 68          	mov    0x68(%rbx),%rdi
    12d0:	48 8b 73 78          	mov    0x78(%rbx),%rsi
    12d4:	48 8b 07             	mov    (%rdi),%rax
    12d7:	ff 50 08             	callq  *0x8(%rax)
    12da:	4c 89 63 78          	mov    %r12,0x78(%rbx)
    12de:	48 8b 83 80 00 00 00 	mov    0x80(%rbx),%rax
    12e5:	4c 89 6b 70          	mov    %r13,0x70(%rbx)
    12e9:	48 8d 50 01          	lea    0x1(%rax),%rdx
    12ed:	be 7e 00 00 00       	mov    $0x7e,%esi
    12f2:	48 89 df             	mov    %rbx,%rdi
    12f5:	48 89 93 80 00 00 00 	mov    %rdx,0x80(%rbx)
    12fc:	41 c6 04 04 0f       	movb   $0xf,(%r12,%rax,1)
    1301:	e8 00 00 00 00       	callq  1306 <_ZN4Code12gen_mulPre11Ev+0x1306>
    1306:	41 0f b6 06          	movzbl (%r14),%eax
    130a:	4c 8b 6b 70          	mov    0x70(%rbx),%r13
    130e:	8d 0c c5 00 00 00 00 	lea    0x0(,%rax,8),%ecx
    1315:	0f b6 83 18 05 00 00 	movzbl 0x518(%rbx),%eax
    131c:	83 e1 38             	and    $0x38,%ecx
    131f:	83 e0 07             	and    $0x7,%eax
    1322:	09 c8                	or     %ecx,%eax
    1324:	83 c8 c0             	or     $0xffffffc0,%eax
    1327:	41 89 c6             	mov    %eax,%r14d
    132a:	48 8b 83 80 00 00 00 	mov    0x80(%rbx),%rax
    1331:	4c 39 e8             	cmp    %r13,%rax
    1334:	0f 82 56 02 00 00    	jb     1590 <_ZN4Code12gen_mulPre11Ev+0x1590>
    133a:	83 7b 20 03          	cmpl   $0x3,0x20(%rbx)
    133e:	0f 85 12 07 00 00    	jne    1a56 <_ZN4Code12gen_mulPre11Ev+0x1a56>
    1344:	4d 01 ed             	add    %r13,%r13
    1347:	48 8b 7b 68          	mov    0x68(%rbx),%rdi
    134b:	b8 00 10 00 00       	mov    $0x1000,%eax
    1350:	49 81 fd 00 10 00 00 	cmp    $0x1000,%r13
    1357:	4c 0f 42 e8          	cmovb  %rax,%r13
    135b:	48 8b 07             	mov    (%rdi),%rax
    135e:	4c 89 ee             	mov    %r13,%rsi
    1361:	ff 10                	callq  *(%rax)
    1363:	49 89 c4             	mov    %rax,%r12
    1366:	48 85 c0             	test   %rax,%rax
    1369:	0f 84 ec 06 00 00    	je     1a5b <_ZN4Code12gen_mulPre11Ev+0x1a5b>
    136f:	31 c0                	xor    %eax,%eax
    1371:	48 83 bb 80 00 00 00 	cmpq   $0x0,0x80(%rbx)
    1378:	00 
    1379:	44 89 f1             	mov    %r14d,%ecx
    137c:	74 1e                	je     139c <_ZN4Code12gen_mulPre11Ev+0x139c>
    137e:	66 90                	xchg   %ax,%ax
    1380:	48 8b 53 78          	mov    0x78(%rbx),%rdx
    1384:	0f b6 14 02          	movzbl (%rdx,%rax,1),%edx
    1388:	41 88 14 04          	mov    %dl,(%r12,%rax,1)
    138c:	48 83 c0 01          	add    $0x1,%rax
    1390:	48 39 83 80 00 00 00 	cmp    %rax,0x80(%rbx)
    1397:	77 e7                	ja     1380 <_ZN4Code12gen_mulPre11Ev+0x1380>
    1399:	41 89 ce             	mov    %ecx,%r14d
    139c:	48 8b 7b 68          	mov    0x68(%rbx),%rdi
    13a0:	48 8b 73 78          	mov    0x78(%rbx),%rsi
    13a4:	48 8b 07             	mov    (%rdi),%rax
    13a7:	ff 50 08             	callq  *0x8(%rax)
    13aa:	4c 89 63 78          	mov    %r12,0x78(%rbx)
    13ae:	48 8b 83 80 00 00 00 	mov    0x80(%rbx),%rax
    13b5:	4c 89 6b 70          	mov    %r13,0x70(%rbx)
    13b9:	48 8d 50 01          	lea    0x1(%rax),%rdx
    13bd:	48 89 93 80 00 00 00 	mov    %rdx,0x80(%rbx)
    13c4:	45 88 34 04          	mov    %r14b,(%r12,%rax,1)
    13c8:	80 bd 2c fe ff ff 00 	cmpb   $0x0,-0x1d4(%rbp)
    13cf:	0f 84 6f 01 00 00    	je     1544 <_ZN4Code12gen_mulPre11Ev+0x1544>
    13d5:	8b 95 28 fe ff ff    	mov    -0x1d8(%rbp),%edx
    13db:	48 8b bd 10 fe ff ff 	mov    -0x1f0(%rbp),%rdi
    13e2:	85 d2                	test   %edx,%edx
    13e4:	7e 1b                	jle    1401 <_ZN4Code12gen_mulPre11Ev+0x1401>
    13e6:	48 8d b7 18 05 00 00 	lea    0x518(%rdi),%rsi
    13ed:	45 31 c0             	xor    %r8d,%r8d
    13f0:	31 c9                	xor    %ecx,%ecx
    13f2:	e8 00 00 00 00       	callq  13f7 <_ZN4Code12gen_mulPre11Ev+0x13f7>
    13f7:	48 8b 85 10 fe ff ff 	mov    -0x1f0(%rbp),%rax
    13fe:	48 89 c7             	mov    %rax,%rdi
    1401:	8b 85 24 fe ff ff    	mov    -0x1dc(%rbp),%eax
    1407:	85 c0                	test   %eax,%eax
    1409:	0f 8e 2b 01 00 00    	jle    153a <_ZN4Code12gen_mulPre11Ev+0x153a>
    140f:	48 89 bd 68 fc ff ff 	mov    %rdi,-0x398(%rbp)
    1416:	31 db                	xor    %ebx,%ebx
    1418:	41 bd 00 10 00 00    	mov    $0x1000,%r13d
    141e:	66 90                	xchg   %ax,%ax
    1420:	83 e8 01             	sub    $0x1,%eax
    1423:	48 8b 3d 00 00 00 00 	mov    0x0(%rip),%rdi        # 142a <_ZN4Code12gen_mulPre11Ev+0x142a>
    142a:	29 d8                	sub    %ebx,%eax
    142c:	48 98                	cltq   
    142e:	44 8b 7c 87 20       	mov    0x20(%rdi,%rax,4),%r15d
    1433:	41 f6 c7 18          	test   $0x18,%r15b
    1437:	0f 85 23 01 00 00    	jne    1560 <_ZN4Code12gen_mulPre11Ev+0x1560>
    143d:	48 8b 8d 68 fc ff ff 	mov    -0x398(%rbp),%rcx
    1444:	41 83 e7 07          	and    $0x7,%r15d
    1448:	41 83 cf 58          	or     $0x58,%r15d
    144c:	48 8b 81 80 00 00 00 	mov    0x80(%rcx),%rax
    1453:	4c 8b 61 70          	mov    0x70(%rcx),%r12
    1457:	4c 39 e0             	cmp    %r12,%rax
    145a:	0f 82 f8 00 00 00    	jb     1558 <_ZN4Code12gen_mulPre11Ev+0x1558>
    1460:	83 79 20 03          	cmpl   $0x3,0x20(%rcx)
    1464:	0f 85 f6 05 00 00    	jne    1a60 <_ZN4Code12gen_mulPre11Ev+0x1a60>
    146a:	48 8b 79 68          	mov    0x68(%rcx),%rdi
    146e:	4d 01 e4             	add    %r12,%r12
    1471:	49 81 fc 00 10 00 00 	cmp    $0x1000,%r12
    1478:	4d 0f 42 e5          	cmovb  %r13,%r12
    147c:	48 8b 07             	mov    (%rdi),%rax
    147f:	4c 89 e6             	mov    %r12,%rsi
    1482:	ff 10                	callq  *(%rax)
    1484:	49 89 c6             	mov    %rax,%r14
    1487:	48 85 c0             	test   %rax,%rax
    148a:	0f 84 d5 05 00 00    	je     1a65 <_ZN4Code12gen_mulPre11Ev+0x1a65>
    1490:	48 8b bd 68 fc ff ff 	mov    -0x398(%rbp),%rdi
    1497:	31 c0                	xor    %eax,%eax
    1499:	48 83 bf 80 00 00 00 	cmpq   $0x0,0x80(%rdi)
    14a0:	00 
    14a1:	74 25                	je     14c8 <_ZN4Code12gen_mulPre11Ev+0x14c8>
    14a3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    14a8:	48 8b 8d 68 fc ff ff 	mov    -0x398(%rbp),%rcx
    14af:	48 8b 51 78          	mov    0x78(%rcx),%rdx
    14b3:	0f b6 14 02          	movzbl (%rdx,%rax,1),%edx
    14b7:	41 88 14 06          	mov    %dl,(%r14,%rax,1)
    14bb:	48 83 c0 01          	add    $0x1,%rax
    14bf:	48 39 81 80 00 00 00 	cmp    %rax,0x80(%rcx)
    14c6:	77 e0                	ja     14a8 <_ZN4Code12gen_mulPre11Ev+0x14a8>
    14c8:	48 8b 85 68 fc ff ff 	mov    -0x398(%rbp),%rax
    14cf:	48 8b 78 68          	mov    0x68(%rax),%rdi
    14d3:	48 8b 70 78          	mov    0x78(%rax),%rsi
    14d7:	48 8b 07             	mov    (%rdi),%rax
    14da:	ff 50 08             	callq  *0x8(%rax)
    14dd:	48 8b 85 68 fc ff ff 	mov    -0x398(%rbp),%rax
    14e4:	4c 89 70 78          	mov    %r14,0x78(%rax)
    14e8:	4c 89 60 70          	mov    %r12,0x70(%rax)
    14ec:	48 8b 80 80 00 00 00 	mov    0x80(%rax),%rax
    14f3:	48 8b b5 68 fc ff ff 	mov    -0x398(%rbp),%rsi
    14fa:	48 8d 50 01          	lea    0x1(%rax),%rdx
    14fe:	83 c3 01             	add    $0x1,%ebx
    1501:	48 89 96 80 00 00 00 	mov    %rdx,0x80(%rsi)
    1508:	45 88 3c 06          	mov    %r15b,(%r14,%rax,1)
    150c:	8b 85 24 fe ff ff    	mov    -0x1dc(%rbp),%eax
    1512:	39 d8                	cmp    %ebx,%eax
    1514:	7e 1a                	jle    1530 <_ZN4Code12gen_mulPre11Ev+0x1530>
    1516:	48 8b 8d 10 fe ff ff 	mov    -0x1f0(%rbp),%rcx
    151d:	48 89 8d 68 fc ff ff 	mov    %rcx,-0x398(%rbp)
    1524:	e9 f7 fe ff ff       	jmpq   1420 <_ZN4Code12gen_mulPre11Ev+0x1420>
    1529:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    1530:	48 8b 85 10 fe ff ff 	mov    -0x1f0(%rbp),%rax
    1537:	48 89 c7             	mov    %rax,%rdi
    153a:	be c3 00 00 00       	mov    $0xc3,%esi
    153f:	e8 00 00 00 00       	callq  1544 <_ZN4Code12gen_mulPre11Ev+0x1544>
    1544:	48 8d 65 d8          	lea    -0x28(%rbp),%rsp
    1548:	5b                   	pop    %rbx
    1549:	41 5c                	pop    %r12
    154b:	41 5d                	pop    %r13
    154d:	41 5e                	pop    %r14
    154f:	41 5f                	pop    %r15
    1551:	5d                   	pop    %rbp
    1552:	c3                   	retq   
    1553:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    1558:	4c 8b 71 78          	mov    0x78(%rcx),%r14
    155c:	eb 95                	jmp    14f3 <_ZN4Code12gen_mulPre11Ev+0x14f3>
    155e:	66 90                	xchg   %ax,%ax
    1560:	48 8b bd 68 fc ff ff 	mov    -0x398(%rbp),%rdi
    1567:	be 41 00 00 00       	mov    $0x41,%esi
    156c:	e8 00 00 00 00       	callq  1571 <_ZN4Code12gen_mulPre11Ev+0x1571>
    1571:	e9 c7 fe ff ff       	jmpq   143d <_ZN4Code12gen_mulPre11Ev+0x143d>
    1576:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    157d:	00 00 00 
    1580:	4c 8b 7b 78          	mov    0x78(%rbx),%r15
    1584:	e9 04 ed ff ff       	jmpq   28d <_ZN4Code12gen_mulPre11Ev+0x28d>
    1589:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    1590:	4c 8b 63 78          	mov    0x78(%rbx),%r12
    1594:	e9 20 fe ff ff       	jmpq   13b9 <_ZN4Code12gen_mulPre11Ev+0x13b9>
    1599:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    15a0:	4c 8b 63 78          	mov    0x78(%rbx),%r12
    15a4:	e9 40 fd ff ff       	jmpq   12e9 <_ZN4Code12gen_mulPre11Ev+0x12e9>
    15a9:	41 b8 09 00 00 00    	mov    $0x9,%r8d
    15af:	48 8b 05 00 00 00 00 	mov    0x0(%rip),%rax        # 15b6 <_ZN4Code12gen_mulPre11Ev+0x15b6>
    15b6:	b9 09 00 00 00       	mov    $0x9,%ecx
    15bb:	48 8d 15 00 00 00 00 	lea    0x0(%rip),%rdx        # 15c2 <_ZN4Code12gen_mulPre11Ev+0x15c2>
    15c2:	be 01 00 00 00       	mov    $0x1,%esi
    15c7:	48 8b 38             	mov    (%rax),%rdi
    15ca:	31 c0                	xor    %eax,%eax
    15cc:	e8 00 00 00 00       	callq  15d1 <_ZN4Code12gen_mulPre11Ev+0x15d1>
    15d1:	bf 10 00 00 00       	mov    $0x10,%edi
    15d6:	e8 00 00 00 00       	callq  15db <_ZN4Code12gen_mulPre11Ev+0x15db>
    15db:	48 8b 15 00 00 00 00 	mov    0x0(%rip),%rdx        # 15e2 <_ZN4Code12gen_mulPre11Ev+0x15e2>
    15e2:	48 8b 35 00 00 00 00 	mov    0x0(%rip),%rsi        # 15e9 <_ZN4Code12gen_mulPre11Ev+0x15e9>
    15e9:	48 89 c7             	mov    %rax,%rdi
    15ec:	48 8b 05 00 00 00 00 	mov    0x0(%rip),%rax        # 15f3 <_ZN4Code12gen_mulPre11Ev+0x15f3>
    15f3:	c7 47 08 0d 00 00 00 	movl   $0xd,0x8(%rdi)
    15fa:	48 83 c0 10          	add    $0x10,%rax
    15fe:	48 89 07             	mov    %rax,(%rdi)
    1601:	e8 00 00 00 00       	callq  1606 <_ZN4Code12gen_mulPre11Ev+0x1606>
    1606:	41 b8 08 00 00 00    	mov    $0x8,%r8d
    160c:	48 8b 05 00 00 00 00 	mov    0x0(%rip),%rax        # 1613 <_ZN4Code12gen_mulPre11Ev+0x1613>
    1613:	b9 08 00 00 00       	mov    $0x8,%ecx
    1618:	48 8d 15 00 00 00 00 	lea    0x0(%rip),%rdx        # 161f <_ZN4Code12gen_mulPre11Ev+0x161f>
    161f:	be 01 00 00 00       	mov    $0x1,%esi
    1624:	48 8b 38             	mov    (%rax),%rdi
    1627:	31 c0                	xor    %eax,%eax
    1629:	e8 00 00 00 00       	callq  162e <_ZN4Code12gen_mulPre11Ev+0x162e>
    162e:	bf 10 00 00 00       	mov    $0x10,%edi
    1633:	e8 00 00 00 00       	callq  1638 <_ZN4Code12gen_mulPre11Ev+0x1638>
    1638:	48 8b 15 00 00 00 00 	mov    0x0(%rip),%rdx        # 163f <_ZN4Code12gen_mulPre11Ev+0x163f>
    163f:	48 8b 35 00 00 00 00 	mov    0x0(%rip),%rsi        # 1646 <_ZN4Code12gen_mulPre11Ev+0x1646>
    1646:	48 89 c7             	mov    %rax,%rdi
    1649:	48 8b 05 00 00 00 00 	mov    0x0(%rip),%rax        # 1650 <_ZN4Code12gen_mulPre11Ev+0x1650>
    1650:	c7 47 08 0d 00 00 00 	movl   $0xd,0x8(%rdi)
    1657:	48 83 c0 10          	add    $0x10,%rax
    165b:	48 89 07             	mov    %rax,(%rdi)
    165e:	e8 00 00 00 00       	callq  1663 <_ZN4Code12gen_mulPre11Ev+0x1663>
    1663:	41 b8 07 00 00 00    	mov    $0x7,%r8d
    1669:	48 8b 05 00 00 00 00 	mov    0x0(%rip),%rax        # 1670 <_ZN4Code12gen_mulPre11Ev+0x1670>
    1670:	b9 07 00 00 00       	mov    $0x7,%ecx
    1675:	48 8d 15 00 00 00 00 	lea    0x0(%rip),%rdx        # 167c <_ZN4Code12gen_mulPre11Ev+0x167c>
    167c:	be 01 00 00 00       	mov    $0x1,%esi
    1681:	48 8b 38             	mov    (%rax),%rdi
    1684:	31 c0                	xor    %eax,%eax
    1686:	e8 00 00 00 00       	callq  168b <_ZN4Code12gen_mulPre11Ev+0x168b>
    168b:	bf 10 00 00 00       	mov    $0x10,%edi
    1690:	e8 00 00 00 00       	callq  1695 <_ZN4Code12gen_mulPre11Ev+0x1695>
    1695:	48 8b 15 00 00 00 00 	mov    0x0(%rip),%rdx        # 169c <_ZN4Code12gen_mulPre11Ev+0x169c>
    169c:	48 8b 35 00 00 00 00 	mov    0x0(%rip),%rsi        # 16a3 <_ZN4Code12gen_mulPre11Ev+0x16a3>
    16a3:	48 89 c7             	mov    %rax,%rdi
    16a6:	48 8b 05 00 00 00 00 	mov    0x0(%rip),%rax        # 16ad <_ZN4Code12gen_mulPre11Ev+0x16ad>
    16ad:	c7 47 08 0d 00 00 00 	movl   $0xd,0x8(%rdi)
    16b4:	48 83 c0 10          	add    $0x10,%rax
    16b8:	48 89 07             	mov    %rax,(%rdi)
    16bb:	e8 00 00 00 00       	callq  16c0 <_ZN4Code12gen_mulPre11Ev+0x16c0>
    16c0:	41 b8 06 00 00 00    	mov    $0x6,%r8d
    16c6:	48 8b 05 00 00 00 00 	mov    0x0(%rip),%rax        # 16cd <_ZN4Code12gen_mulPre11Ev+0x16cd>
    16cd:	b9 06 00 00 00       	mov    $0x6,%ecx
    16d2:	48 8d 15 00 00 00 00 	lea    0x0(%rip),%rdx        # 16d9 <_ZN4Code12gen_mulPre11Ev+0x16d9>
    16d9:	be 01 00 00 00       	mov    $0x1,%esi
    16de:	48 8b 38             	mov    (%rax),%rdi
    16e1:	31 c0                	xor    %eax,%eax
    16e3:	e8 00 00 00 00       	callq  16e8 <_ZN4Code12gen_mulPre11Ev+0x16e8>
    16e8:	bf 10 00 00 00       	mov    $0x10,%edi
    16ed:	e8 00 00 00 00       	callq  16f2 <_ZN4Code12gen_mulPre11Ev+0x16f2>
    16f2:	48 8b 15 00 00 00 00 	mov    0x0(%rip),%rdx        # 16f9 <_ZN4Code12gen_mulPre11Ev+0x16f9>
    16f9:	48 8b 35 00 00 00 00 	mov    0x0(%rip),%rsi        # 1700 <_ZN4Code12gen_mulPre11Ev+0x1700>
    1700:	48 89 c7             	mov    %rax,%rdi
    1703:	48 8b 05 00 00 00 00 	mov    0x0(%rip),%rax        # 170a <_ZN4Code12gen_mulPre11Ev+0x170a>
    170a:	c7 47 08 0d 00 00 00 	movl   $0xd,0x8(%rdi)
    1711:	48 83 c0 10          	add    $0x10,%rax
    1715:	48 89 07             	mov    %rax,(%rdi)
    1718:	e8 00 00 00 00       	callq  171d <_ZN4Code12gen_mulPre11Ev+0x171d>
    171d:	41 b8 05 00 00 00    	mov    $0x5,%r8d
    1723:	48 8b 05 00 00 00 00 	mov    0x0(%rip),%rax        # 172a <_ZN4Code12gen_mulPre11Ev+0x172a>
    172a:	b9 05 00 00 00       	mov    $0x5,%ecx
    172f:	48 8d 15 00 00 00 00 	lea    0x0(%rip),%rdx        # 1736 <_ZN4Code12gen_mulPre11Ev+0x1736>
    1736:	be 01 00 00 00       	mov    $0x1,%esi
    173b:	48 8b 38             	mov    (%rax),%rdi
    173e:	31 c0                	xor    %eax,%eax
    1740:	e8 00 00 00 00       	callq  1745 <_ZN4Code12gen_mulPre11Ev+0x1745>
    1745:	bf 10 00 00 00       	mov    $0x10,%edi
    174a:	e8 00 00 00 00       	callq  174f <_ZN4Code12gen_mulPre11Ev+0x174f>
    174f:	48 8b 15 00 00 00 00 	mov    0x0(%rip),%rdx        # 1756 <_ZN4Code12gen_mulPre11Ev+0x1756>
    1756:	48 8b 35 00 00 00 00 	mov    0x0(%rip),%rsi        # 175d <_ZN4Code12gen_mulPre11Ev+0x175d>
    175d:	48 89 c7             	mov    %rax,%rdi
    1760:	48 8b 05 00 00 00 00 	mov    0x0(%rip),%rax        # 1767 <_ZN4Code12gen_mulPre11Ev+0x1767>
    1767:	c7 47 08 0d 00 00 00 	movl   $0xd,0x8(%rdi)
    176e:	48 83 c0 10          	add    $0x10,%rax
    1772:	48 89 07             	mov    %rax,(%rdi)
    1775:	e8 00 00 00 00       	callq  177a <_ZN4Code12gen_mulPre11Ev+0x177a>
    177a:	41 b8 04 00 00 00    	mov    $0x4,%r8d
    1780:	48 8b 05 00 00 00 00 	mov    0x0(%rip),%rax        # 1787 <_ZN4Code12gen_mulPre11Ev+0x1787>
    1787:	b9 04 00 00 00       	mov    $0x4,%ecx
    178c:	48 8d 15 00 00 00 00 	lea    0x0(%rip),%rdx        # 1793 <_ZN4Code12gen_mulPre11Ev+0x1793>
    1793:	be 01 00 00 00       	mov    $0x1,%esi
    1798:	48 8b 38             	mov    (%rax),%rdi
    179b:	31 c0                	xor    %eax,%eax
    179d:	e8 00 00 00 00       	callq  17a2 <_ZN4Code12gen_mulPre11Ev+0x17a2>
    17a2:	bf 10 00 00 00       	mov    $0x10,%edi
    17a7:	e8 00 00 00 00       	callq  17ac <_ZN4Code12gen_mulPre11Ev+0x17ac>
    17ac:	48 8b 15 00 00 00 00 	mov    0x0(%rip),%rdx        # 17b3 <_ZN4Code12gen_mulPre11Ev+0x17b3>
    17b3:	48 8b 35 00 00 00 00 	mov    0x0(%rip),%rsi        # 17ba <_ZN4Code12gen_mulPre11Ev+0x17ba>
    17ba:	48 89 c7             	mov    %rax,%rdi
    17bd:	48 8b 05 00 00 00 00 	mov    0x0(%rip),%rax        # 17c4 <_ZN4Code12gen_mulPre11Ev+0x17c4>
    17c4:	c7 47 08 0d 00 00 00 	movl   $0xd,0x8(%rdi)
    17cb:	48 83 c0 10          	add    $0x10,%rax
    17cf:	48 89 07             	mov    %rax,(%rdi)
    17d2:	e8 00 00 00 00       	callq  17d7 <_ZN4Code12gen_mulPre11Ev+0x17d7>
    17d7:	41 b8 03 00 00 00    	mov    $0x3,%r8d
    17dd:	48 8b 05 00 00 00 00 	mov    0x0(%rip),%rax        # 17e4 <_ZN4Code12gen_mulPre11Ev+0x17e4>
    17e4:	b9 03 00 00 00       	mov    $0x3,%ecx
    17e9:	48 8d 15 00 00 00 00 	lea    0x0(%rip),%rdx        # 17f0 <_ZN4Code12gen_mulPre11Ev+0x17f0>
    17f0:	be 01 00 00 00       	mov    $0x1,%esi
    17f5:	48 8b 38             	mov    (%rax),%rdi
    17f8:	31 c0                	xor    %eax,%eax
    17fa:	e8 00 00 00 00       	callq  17ff <_ZN4Code12gen_mulPre11Ev+0x17ff>
    17ff:	bf 10 00 00 00       	mov    $0x10,%edi
    1804:	e8 00 00 00 00       	callq  1809 <_ZN4Code12gen_mulPre11Ev+0x1809>
    1809:	48 8b 15 00 00 00 00 	mov    0x0(%rip),%rdx        # 1810 <_ZN4Code12gen_mulPre11Ev+0x1810>
    1810:	48 8b 35 00 00 00 00 	mov    0x0(%rip),%rsi        # 1817 <_ZN4Code12gen_mulPre11Ev+0x1817>
    1817:	48 89 c7             	mov    %rax,%rdi
    181a:	48 8b 05 00 00 00 00 	mov    0x0(%rip),%rax        # 1821 <_ZN4Code12gen_mulPre11Ev+0x1821>
    1821:	c7 47 08 0d 00 00 00 	movl   $0xd,0x8(%rdi)
    1828:	48 83 c0 10          	add    $0x10,%rax
    182c:	48 89 07             	mov    %rax,(%rdi)
    182f:	e8 00 00 00 00       	callq  1834 <_ZN4Code12gen_mulPre11Ev+0x1834>
    1834:	41 b8 02 00 00 00    	mov    $0x2,%r8d
    183a:	48 8b 05 00 00 00 00 	mov    0x0(%rip),%rax        # 1841 <_ZN4Code12gen_mulPre11Ev+0x1841>
    1841:	b9 02 00 00 00       	mov    $0x2,%ecx
    1846:	48 8d 15 00 00 00 00 	lea    0x0(%rip),%rdx        # 184d <_ZN4Code12gen_mulPre11Ev+0x184d>
    184d:	be 01 00 00 00       	mov    $0x1,%esi
    1852:	48 8b 38             	mov    (%rax),%rdi
    1855:	31 c0                	xor    %eax,%eax
    1857:	e8 00 00 00 00       	callq  185c <_ZN4Code12gen_mulPre11Ev+0x185c>
    185c:	bf 10 00 00 00       	mov    $0x10,%edi
    1861:	e8 00 00 00 00       	callq  1866 <_ZN4Code12gen_mulPre11Ev+0x1866>
    1866:	48 8b 15 00 00 00 00 	mov    0x0(%rip),%rdx        # 186d <_ZN4Code12gen_mulPre11Ev+0x186d>
    186d:	48 8b 35 00 00 00 00 	mov    0x0(%rip),%rsi        # 1874 <_ZN4Code12gen_mulPre11Ev+0x1874>
    1874:	48 89 c7             	mov    %rax,%rdi
    1877:	48 8b 05 00 00 00 00 	mov    0x0(%rip),%rax        # 187e <_ZN4Code12gen_mulPre11Ev+0x187e>
    187e:	c7 47 08 0d 00 00 00 	movl   $0xd,0x8(%rdi)
    1885:	48 83 c0 10          	add    $0x10,%rax
    1889:	48 89 07             	mov    %rax,(%rdi)
    188c:	e8 00 00 00 00       	callq  1891 <_ZN4Code12gen_mulPre11Ev+0x1891>
    1891:	41 b8 01 00 00 00    	mov    $0x1,%r8d
    1897:	48 8b 05 00 00 00 00 	mov    0x0(%rip),%rax        # 189e <_ZN4Code12gen_mulPre11Ev+0x189e>
    189e:	b9 01 00 00 00       	mov    $0x1,%ecx
    18a3:	48 8d 15 00 00 00 00 	lea    0x0(%rip),%rdx        # 18aa <_ZN4Code12gen_mulPre11Ev+0x18aa>
    18aa:	be 01 00 00 00       	mov    $0x1,%esi
    18af:	48 8b 38             	mov    (%rax),%rdi
    18b2:	31 c0                	xor    %eax,%eax
    18b4:	e8 00 00 00 00       	callq  18b9 <_ZN4Code12gen_mulPre11Ev+0x18b9>
    18b9:	bf 10 00 00 00       	mov    $0x10,%edi
    18be:	e8 00 00 00 00       	callq  18c3 <_ZN4Code12gen_mulPre11Ev+0x18c3>
    18c3:	48 8b 15 00 00 00 00 	mov    0x0(%rip),%rdx        # 18ca <_ZN4Code12gen_mulPre11Ev+0x18ca>
    18ca:	48 8b 35 00 00 00 00 	mov    0x0(%rip),%rsi        # 18d1 <_ZN4Code12gen_mulPre11Ev+0x18d1>
    18d1:	48 89 c7             	mov    %rax,%rdi
    18d4:	48 8b 05 00 00 00 00 	mov    0x0(%rip),%rax        # 18db <_ZN4Code12gen_mulPre11Ev+0x18db>
    18db:	c7 47 08 0d 00 00 00 	movl   $0xd,0x8(%rdi)
    18e2:	48 83 c0 10          	add    $0x10,%rax
    18e6:	48 89 07             	mov    %rax,(%rdi)
    18e9:	e8 00 00 00 00       	callq  18ee <_ZN4Code12gen_mulPre11Ev+0x18ee>
    18ee:	48 8b 05 00 00 00 00 	mov    0x0(%rip),%rax        # 18f5 <_ZN4Code12gen_mulPre11Ev+0x18f5>
    18f5:	45 31 c0             	xor    %r8d,%r8d
    18f8:	31 c9                	xor    %ecx,%ecx
    18fa:	48 8d 15 00 00 00 00 	lea    0x0(%rip),%rdx        # 1901 <_ZN4Code12gen_mulPre11Ev+0x1901>
    1901:	be 01 00 00 00       	mov    $0x1,%esi
    1906:	48 8b 38             	mov    (%rax),%rdi
    1909:	31 c0                	xor    %eax,%eax
    190b:	e8 00 00 00 00       	callq  1910 <_ZN4Code12gen_mulPre11Ev+0x1910>
    1910:	bf 10 00 00 00       	mov    $0x10,%edi
    1915:	e8 00 00 00 00       	callq  191a <_ZN4Code12gen_mulPre11Ev+0x191a>
    191a:	48 8b 15 00 00 00 00 	mov    0x0(%rip),%rdx        # 1921 <_ZN4Code12gen_mulPre11Ev+0x1921>
    1921:	48 8b 35 00 00 00 00 	mov    0x0(%rip),%rsi        # 1928 <_ZN4Code12gen_mulPre11Ev+0x1928>
    1928:	48 89 c7             	mov    %rax,%rdi
    192b:	48 8b 05 00 00 00 00 	mov    0x0(%rip),%rax        # 1932 <_ZN4Code12gen_mulPre11Ev+0x1932>
    1932:	c7 47 08 0d 00 00 00 	movl   $0xd,0x8(%rdi)
    1939:	48 83 c0 10          	add    $0x10,%rax
    193d:	48 89 07             	mov    %rax,(%rdi)
    1940:	e8 00 00 00 00       	callq  1945 <_ZN4Code12gen_mulPre11Ev+0x1945>
    1945:	41 b8 02 00 00 00    	mov    $0x2,%r8d
    194b:	48 8b 05 00 00 00 00 	mov    0x0(%rip),%rax        # 1952 <_ZN4Code12gen_mulPre11Ev+0x1952>
    1952:	b9 02 00 00 00       	mov    $0x2,%ecx
    1957:	48 8d 15 00 00 00 00 	lea    0x0(%rip),%rdx        # 195e <_ZN4Code12gen_mulPre11Ev+0x195e>
    195e:	be 01 00 00 00       	mov    $0x1,%esi
    1963:	48 8b 38             	mov    (%rax),%rdi
    1966:	31 c0                	xor    %eax,%eax
    1968:	e8 00 00 00 00       	callq  196d <_ZN4Code12gen_mulPre11Ev+0x196d>
    196d:	bf 10 00 00 00       	mov    $0x10,%edi
    1972:	e8 00 00 00 00       	callq  1977 <_ZN4Code12gen_mulPre11Ev+0x1977>
    1977:	48 8b 15 00 00 00 00 	mov    0x0(%rip),%rdx        # 197e <_ZN4Code12gen_mulPre11Ev+0x197e>
    197e:	48 8b 35 00 00 00 00 	mov    0x0(%rip),%rsi        # 1985 <_ZN4Code12gen_mulPre11Ev+0x1985>
    1985:	48 89 c7             	mov    %rax,%rdi
    1988:	48 8b 05 00 00 00 00 	mov    0x0(%rip),%rax        # 198f <_ZN4Code12gen_mulPre11Ev+0x198f>
    198f:	c7 47 08 0d 00 00 00 	movl   $0xd,0x8(%rdi)
    1996:	48 83 c0 10          	add    $0x10,%rax
    199a:	48 89 07             	mov    %rax,(%rdi)
    199d:	e8 00 00 00 00       	callq  19a2 <_ZN4Code12gen_mulPre11Ev+0x19a2>
    19a2:	41 b8 01 00 00 00    	mov    $0x1,%r8d
    19a8:	48 8b 05 00 00 00 00 	mov    0x0(%rip),%rax        # 19af <_ZN4Code12gen_mulPre11Ev+0x19af>
    19af:	b9 01 00 00 00       	mov    $0x1,%ecx
    19b4:	48 8d 15 00 00 00 00 	lea    0x0(%rip),%rdx        # 19bb <_ZN4Code12gen_mulPre11Ev+0x19bb>
    19bb:	be 01 00 00 00       	mov    $0x1,%esi
    19c0:	48 8b 38             	mov    (%rax),%rdi
    19c3:	31 c0                	xor    %eax,%eax
    19c5:	e8 00 00 00 00       	callq  19ca <_ZN4Code12gen_mulPre11Ev+0x19ca>
    19ca:	bf 10 00 00 00       	mov    $0x10,%edi
    19cf:	e8 00 00 00 00       	callq  19d4 <_ZN4Code12gen_mulPre11Ev+0x19d4>
    19d4:	48 8b 15 00 00 00 00 	mov    0x0(%rip),%rdx        # 19db <_ZN4Code12gen_mulPre11Ev+0x19db>
    19db:	48 8b 35 00 00 00 00 	mov    0x0(%rip),%rsi        # 19e2 <_ZN4Code12gen_mulPre11Ev+0x19e2>
    19e2:	48 89 c7             	mov    %rax,%rdi
    19e5:	48 8b 05 00 00 00 00 	mov    0x0(%rip),%rax        # 19ec <_ZN4Code12gen_mulPre11Ev+0x19ec>
    19ec:	c7 47 08 0d 00 00 00 	movl   $0xd,0x8(%rdi)
    19f3:	48 83 c0 10          	add    $0x10,%rax
    19f7:	48 89 07             	mov    %rax,(%rdi)
    19fa:	e8 00 00 00 00       	callq  19ff <_ZN4Code12gen_mulPre11Ev+0x19ff>
    19ff:	48 8b 05 00 00 00 00 	mov    0x0(%rip),%rax        # 1a06 <_ZN4Code12gen_mulPre11Ev+0x1a06>
    1a06:	45 31 c0             	xor    %r8d,%r8d
    1a09:	31 c9                	xor    %ecx,%ecx
    1a0b:	48 8d 15 00 00 00 00 	lea    0x0(%rip),%rdx        # 1a12 <_ZN4Code12gen_mulPre11Ev+0x1a12>
    1a12:	be 01 00 00 00       	mov    $0x1,%esi
    1a17:	48 8b 38             	mov    (%rax),%rdi
    1a1a:	31 c0                	xor    %eax,%eax
    1a1c:	e8 00 00 00 00       	callq  1a21 <_ZN4Code12gen_mulPre11Ev+0x1a21>
    1a21:	bf 10 00 00 00       	mov    $0x10,%edi
    1a26:	e8 00 00 00 00       	callq  1a2b <_ZN4Code12gen_mulPre11Ev+0x1a2b>
    1a2b:	48 8b 15 00 00 00 00 	mov    0x0(%rip),%rdx        # 1a32 <_ZN4Code12gen_mulPre11Ev+0x1a32>
    1a32:	48 8b 35 00 00 00 00 	mov    0x0(%rip),%rsi        # 1a39 <_ZN4Code12gen_mulPre11Ev+0x1a39>
    1a39:	48 89 c7             	mov    %rax,%rdi
    1a3c:	48 8b 05 00 00 00 00 	mov    0x0(%rip),%rax        # 1a43 <_ZN4Code12gen_mulPre11Ev+0x1a43>
    1a43:	c7 47 08 0d 00 00 00 	movl   $0xd,0x8(%rdi)
    1a4a:	48 83 c0 10          	add    $0x10,%rax
    1a4e:	48 89 07             	mov    %rax,(%rdi)
    1a51:	e8 00 00 00 00       	callq  1a56 <_ZN4Code12gen_mulPre11Ev+0x1a56>
    1a56:	e8 00 00 00 00       	callq  1a5b <_ZN4Code12gen_mulPre11Ev+0x1a5b>
    1a5b:	e8 00 00 00 00       	callq  1a60 <_ZN4Code12gen_mulPre11Ev+0x1a60>
    1a60:	e8 00 00 00 00       	callq  1a65 <_ZN4Code12gen_mulPre11Ev+0x1a65>
    1a65:	e8 00 00 00 00       	callq  1a6a <_ZN4Code12gen_mulPre11Ev+0x1a6a>
    1a6a:	e8 00 00 00 00       	callq  1a6f <_ZN4Code12gen_mulPre11Ev+0x1a6f>
    1a6f:	e8 00 00 00 00       	callq  1a74 <_ZN4Code12gen_mulPre11Ev+0x1a74>
    1a74:	e8 00 00 00 00       	callq  1a79 <_ZN4Code12gen_mulPre11Ev+0x1a79>
    1a79:	e8 00 00 00 00       	callq  1a7e <_ZN4Code12gen_mulPre11Ev+0x1a7e>
    1a7e:	f3 0f 1e fa          	endbr64 
    1a82:	48 89 c3             	mov    %rax,%rbx
    1a85:	eb 05                	jmp    1a8c <_ZN4Code12gen_mulPre11Ev+0x1a8c>
    1a87:	e8 00 00 00 00       	callq  1a8c <_ZN4Code12gen_mulPre11Ev+0x1a8c>
    1a8c:	80 bd 2c fe ff ff 00 	cmpb   $0x0,-0x1d4(%rbp)
    1a93:	74 11                	je     1aa6 <_ZN4Code12gen_mulPre11Ev+0x1aa6>
    1a95:	48 8b bd 48 fb ff ff 	mov    -0x4b8(%rbp),%rdi
    1a9c:	be 01 00 00 00       	mov    $0x1,%esi
    1aa1:	e8 00 00 00 00       	callq  1aa6 <_ZN4Code12gen_mulPre11Ev+0x1aa6>
    1aa6:	48 89 df             	mov    %rbx,%rdi
    1aa9:	e8 00 00 00 00       	callq  1aae <_ZN4Code12gen_mulPre11Ev+0x1aae>
    1aae:	e8 00 00 00 00       	callq  1ab3 <_ZN4Code12gen_mulPre11Ev+0x1ab3>
    1ab3:	e8 00 00 00 00       	callq  1ab8 <_ZN4Code12gen_mulPre11Ev+0x1ab8>
    1ab8:	bf 10 00 00 00       	mov    $0x10,%edi
    1abd:	e8 00 00 00 00       	callq  1ac2 <_ZN4Code12gen_mulPre11Ev+0x1ac2>
    1ac2:	48 8b 15 00 00 00 00 	mov    0x0(%rip),%rdx        # 1ac9 <_ZN4Code12gen_mulPre11Ev+0x1ac9>
    1ac9:	48 8b 35 00 00 00 00 	mov    0x0(%rip),%rsi        # 1ad0 <_ZN4Code12gen_mulPre11Ev+0x1ad0>
    1ad0:	48 89 c7             	mov    %rax,%rdi
    1ad3:	48 8b 05 00 00 00 00 	mov    0x0(%rip),%rax        # 1ada <_ZN4Code12gen_mulPre11Ev+0x1ada>
    1ada:	c7 47 08 04 00 00 00 	movl   $0x4,0x8(%rdi)
    1ae1:	48 83 c0 10          	add    $0x10,%rax
    1ae5:	48 89 07             	mov    %rax,(%rdi)
    1ae8:	e8 00 00 00 00       	callq  1aed <_ZN4Code12gen_mulPre11Ev+0x1aed>
    1aed:	e8 00 00 00 00       	callq  1af2 <_ZN4Code12gen_mulPre11Ev+0x1af2>
    1af2:	e8 00 00 00 00       	callq  1af7 <_ZStL8__ioinit+0xecf>

Disassembly of section .text._ZN4Code4initEv:

0000000000000000 <_ZN4Code4initEv>:
   0:	f3 0f 1e fa          	endbr64 
   4:	41 57                	push   %r15
   6:	41 56                	push   %r14
   8:	41 55                	push   %r13
   a:	41 54                	push   %r12
   c:	55                   	push   %rbp
   d:	53                   	push   %rbx
   e:	48 81 ec b8 00 00 00 	sub    $0xb8,%rsp
  15:	48 8b 05 00 00 00 00 	mov    0x0(%rip),%rax        # 1c <_ZN4Code4initEv+0x1c>
  1c:	48 8d 6c 24 50       	lea    0x50(%rsp),%rbp
  21:	4c 8b 30             	mov    (%rax),%r14
  24:	48 89 6c 24 40       	mov    %rbp,0x40(%rsp)
  29:	4d 85 f6             	test   %r14,%r14
  2c:	0f 84 15 05 00 00    	je     547 <_ZN4Code4initEv+0x547>
  32:	48 89 fb             	mov    %rdi,%rbx
  35:	4c 89 f7             	mov    %r14,%rdi
  38:	e8 00 00 00 00       	callq  3d <_ZN4Code4initEv+0x3d>
  3d:	48 89 84 24 80 00 00 	mov    %rax,0x80(%rsp)
  44:	00 
  45:	49 89 c4             	mov    %rax,%r12
  48:	48 83 f8 0f          	cmp    $0xf,%rax
  4c:	0f 87 ac 04 00 00    	ja     4fe <_ZN4Code4initEv+0x4fe>
  52:	48 83 f8 01          	cmp    $0x1,%rax
  56:	0f 85 13 01 00 00    	jne    16f <_ZN4Code4initEv+0x16f>
  5c:	41 0f b6 16          	movzbl (%r14),%edx
  60:	88 54 24 50          	mov    %dl,0x50(%rsp)
  64:	48 89 ea             	mov    %rbp,%rdx
  67:	48 89 44 24 48       	mov    %rax,0x48(%rsp)
  6c:	bf 80 00 00 00       	mov    $0x80,%edi
  71:	c6 04 02 00          	movb   $0x0,(%rdx,%rax,1)
  75:	4c 8b 6c 24 40       	mov    0x40(%rsp),%r13
  7a:	48 c7 44 24 20 00 00 	movq   $0x0,0x20(%rsp)
  81:	00 00 
  83:	48 c7 44 24 28 00 00 	movq   $0x0,0x28(%rsp)
  8a:	00 00 
  8c:	48 c7 44 24 30 00 00 	movq   $0x0,0x30(%rsp)
  93:	00 00 
  95:	e8 00 00 00 00       	callq  9a <_ZN4Code4initEv+0x9a>
  9a:	49 89 c4             	mov    %rax,%r12
  9d:	48 85 c0             	test   %rax,%rax
  a0:	0f 84 01 06 00 00    	je     6a7 <_ZN4Code4initEv+0x6a7>
  a6:	4c 89 ef             	mov    %r13,%rdi
  a9:	4c 89 64 24 28       	mov    %r12,0x28(%rsp)
  ae:	48 c7 44 24 20 10 00 	movq   $0x10,0x20(%rsp)
  b5:	00 00 
  b7:	c6 44 24 38 00       	movb   $0x0,0x38(%rsp)
  bc:	e8 00 00 00 00       	callq  c1 <_ZN4Code4initEv+0xc1>
  c1:	45 31 c9             	xor    %r9d,%r9d
  c4:	48 8d 7c 24 38       	lea    0x38(%rsp),%rdi
  c9:	4c 89 e9             	mov    %r13,%rcx
  cc:	49 89 c0             	mov    %rax,%r8
  cf:	ba 10 00 00 00       	mov    $0x10,%edx
  d4:	4c 89 e6             	mov    %r12,%rsi
  d7:	e8 00 00 00 00       	callq  dc <_ZN4Code4initEv+0xdc>
  dc:	48 85 c0             	test   %rax,%rax
  df:	0f 84 c2 05 00 00    	je     6a7 <_ZN4Code4initEv+0x6a7>
  e5:	83 e8 01             	sub    $0x1,%eax
  e8:	48 8b 74 24 28       	mov    0x28(%rsp),%rsi
  ed:	85 c0                	test   %eax,%eax
  ef:	0f 8e 82 04 00 00    	jle    577 <_ZN4Code4initEv+0x577>
  f5:	48 98                	cltq   
  f7:	eb 13                	jmp    10c <_ZN4Code4initEv+0x10c>
  f9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
 100:	48 83 e8 01          	sub    $0x1,%rax
 104:	85 c0                	test   %eax,%eax
 106:	0f 8e 6b 04 00 00    	jle    577 <_ZN4Code4initEv+0x577>
 10c:	48 83 3c c6 00       	cmpq   $0x0,(%rsi,%rax,8)
 111:	74 ed                	je     100 <_ZN4Code4initEv+0x100>
 113:	8d 40 01             	lea    0x1(%rax),%eax
 116:	48 8b 7c 24 40       	mov    0x40(%rsp),%rdi
 11b:	48 98                	cltq   
 11d:	48 89 44 24 30       	mov    %rax,0x30(%rsp)
 122:	48 39 ef             	cmp    %rbp,%rdi
 125:	74 59                	je     180 <_ZN4Code4initEv+0x180>
 127:	e8 00 00 00 00       	callq  12c <_ZN4Code4initEv+0x12c>
 12c:	48 8b 44 24 30       	mov    0x30(%rsp),%rax
 131:	48 8b 74 24 28       	mov    0x28(%rsp),%rsi
 136:	48 8d 93 c0 0b 00 00 	lea    0xbc0(%rbx),%rdx
 13d:	48 83 f8 01          	cmp    $0x1,%rax
 141:	75 44                	jne    187 <_ZN4Code4initEv+0x187>
 143:	48 83 3e 00          	cmpq   $0x0,(%rsi)
 147:	0f 85 06 04 00 00    	jne    553 <_ZN4Code4initEv+0x553>
 14d:	48 8b 06             	mov    (%rsi),%rax
 150:	41 b9 01 00 00 00    	mov    $0x1,%r9d
 156:	bf 01 00 00 00       	mov    $0x1,%edi
 15b:	c7 83 18 0c 00 00 01 	movl   $0x1,0xc18(%rbx)
 162:	00 00 00 
 165:	48 89 02             	mov    %rax,(%rdx)
 168:	b8 01 00 00 00       	mov    $0x1,%eax
 16d:	eb 5a                	jmp    1c9 <_ZN4Code4initEv+0x1c9>
 16f:	48 85 c0             	test   %rax,%rax
 172:	0f 85 6f 04 00 00    	jne    5e7 <_ZN4Code4initEv+0x5e7>
 178:	48 89 ea             	mov    %rbp,%rdx
 17b:	e9 e7 fe ff ff       	jmpq   67 <_ZN4Code4initEv+0x67>
 180:	48 8d 93 c0 0b 00 00 	lea    0xbc0(%rbx),%rdx
 187:	48 0f bd 4c c6 f8    	bsr    -0x8(%rsi,%rax,8),%rcx
 18d:	48 89 c7             	mov    %rax,%rdi
 190:	48 c1 e7 06          	shl    $0x6,%rdi
 194:	48 63 c9             	movslq %ecx,%rcx
 197:	48 8d 4c 0f c1       	lea    -0x3f(%rdi,%rcx,1),%rcx
 19c:	89 8b 18 0c 00 00    	mov    %ecx,0xc18(%rbx)
 1a2:	41 89 c9             	mov    %ecx,%r9d
 1a5:	48 8d 0c c5 00 00 00 	lea    0x0(,%rax,8),%rcx
 1ac:	00 
 1ad:	48 83 f9 58          	cmp    $0x58,%rcx
 1b1:	0f 87 8c 04 00 00    	ja     643 <_ZN4Code4initEv+0x643>
 1b7:	48 85 c0             	test   %rax,%rax
 1ba:	0f 85 a5 01 00 00    	jne    365 <_ZN4Code4initEv+0x365>
 1c0:	48 c7 02 00 00 00 00 	movq   $0x0,(%rdx)
 1c7:	31 ff                	xor    %edi,%edi
 1c9:	48 c7 42 08 00 00 00 	movq   $0x0,0x8(%rdx)
 1d0:	00 
 1d1:	48 c7 42 10 00 00 00 	movq   $0x0,0x10(%rdx)
 1d8:	00 
 1d9:	48 89 c1             	mov    %rax,%rcx
 1dc:	48 89 f8             	mov    %rdi,%rax
 1df:	31 ff                	xor    %edi,%edi
 1e1:	48 89 7a 18          	mov    %rdi,0x18(%rdx)
 1e5:	48 39 c1             	cmp    %rax,%rcx
 1e8:	0f 83 b7 01 00 00    	jae    3a5 <_ZN4Code4initEv+0x3a5>
 1ee:	4c 8b 04 ce          	mov    (%rsi,%rcx,8),%r8
 1f2:	48 8d 79 01          	lea    0x1(%rcx),%rdi
 1f6:	4c 89 42 20          	mov    %r8,0x20(%rdx)
 1fa:	48 39 c7             	cmp    %rax,%rdi
 1fd:	0f 83 ec 03 00 00    	jae    5ef <_ZN4Code4initEv+0x5ef>
 203:	48 8b 3c fe          	mov    (%rsi,%rdi,8),%rdi
 207:	4c 8d 41 02          	lea    0x2(%rcx),%r8
 20b:	48 89 7a 28          	mov    %rdi,0x28(%rdx)
 20f:	49 39 c0             	cmp    %rax,%r8
 212:	0f 83 9d 03 00 00    	jae    5b5 <_ZN4Code4initEv+0x5b5>
 218:	4e 8b 04 c6          	mov    (%rsi,%r8,8),%r8
 21c:	48 8d 79 03          	lea    0x3(%rcx),%rdi
 220:	4c 89 42 30          	mov    %r8,0x30(%rdx)
 224:	48 39 c7             	cmp    %rax,%rdi
 227:	0f 83 90 03 00 00    	jae    5bd <_ZN4Code4initEv+0x5bd>
 22d:	48 8b 3c fe          	mov    (%rsi,%rdi,8),%rdi
 231:	48 83 c1 04          	add    $0x4,%rcx
 235:	48 89 7a 38          	mov    %rdi,0x38(%rdx)
 239:	48 39 c1             	cmp    %rax,%rcx
 23c:	0f 83 8a 01 00 00    	jae    3cc <_ZN4Code4initEv+0x3cc>
 242:	4c 8b 04 ce          	mov    (%rsi,%rcx,8),%r8
 246:	48 8d 79 01          	lea    0x1(%rcx),%rdi
 24a:	4c 89 42 40          	mov    %r8,0x40(%rdx)
 24e:	48 39 c7             	cmp    %rax,%rdi
 251:	0f 83 7d 01 00 00    	jae    3d4 <_ZN4Code4initEv+0x3d4>
 257:	48 8b 3c fe          	mov    (%rsi,%rdi,8),%rdi
 25b:	48 83 c1 02          	add    $0x2,%rcx
 25f:	48 89 7a 48          	mov    %rdi,0x48(%rdx)
 263:	48 39 c1             	cmp    %rax,%rcx
 266:	0f 83 5b 03 00 00    	jae    5c7 <_ZN4Code4initEv+0x5c7>
 26c:	48 8b 04 ce          	mov    (%rsi,%rcx,8),%rax
 270:	48 89 42 50          	mov    %rax,0x50(%rdx)
 274:	48 8b b3 c0 0b 00 00 	mov    0xbc0(%rbx),%rsi
 27b:	45 31 c0             	xor    %r8d,%r8d
 27e:	31 c0                	xor    %eax,%eax
 280:	ba 40 00 00 00       	mov    $0x40,%edx
 285:	b9 01 00 00 00       	mov    $0x1,%ecx
 28a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
 290:	a8 01                	test   $0x1,%al
 292:	0f 85 b8 00 00 00    	jne    350 <_ZN4Code4initEv+0x350>
 298:	48 01 f0             	add    %rsi,%rax
 29b:	49 01 c8             	add    %rcx,%r8
 29e:	48 01 c9             	add    %rcx,%rcx
 2a1:	48 d1 e8             	shr    %rax
 2a4:	48 83 ea 01          	sub    $0x1,%rdx
 2a8:	75 e6                	jne    290 <_ZN4Code4initEv+0x290>
 2aa:	4c 89 83 b8 0b 00 00 	mov    %r8,0xbb8(%rbx)
 2b1:	4c 89 c1             	mov    %r8,%rcx
 2b4:	44 89 ca             	mov    %r9d,%edx
 2b7:	31 c0                	xor    %eax,%eax
 2b9:	48 8d 35 00 00 00 00 	lea    0x0(%rip),%rsi        # 2c0 <_ZN4Code4initEv+0x2c0>
 2c0:	bf 01 00 00 00       	mov    $0x1,%edi
 2c5:	e8 00 00 00 00       	callq  2ca <_ZN4Code4initEv+0x2ca>
 2ca:	48 8b 83 80 00 00 00 	mov    0x80(%rbx),%rax
 2d1:	48 8b 53 78          	mov    0x78(%rbx),%rdx
 2d5:	48 01 c2             	add    %rax,%rdx
 2d8:	48 89 d1             	mov    %rdx,%rcx
 2db:	83 e1 0f             	and    $0xf,%ecx
 2de:	0f 85 ff 00 00 00    	jne    3e3 <_ZN4Code4initEv+0x3e3>
 2e4:	48 8b 05 00 00 00 00 	mov    0x0(%rip),%rax        # 2eb <_ZN4Code4initEv+0x2eb>
 2eb:	48 89 df             	mov    %rbx,%rdi
 2ee:	48 89 10             	mov    %rdx,(%rax)
 2f1:	e8 00 00 00 00       	callq  2f6 <_ZN4Code4initEv+0x2f6>
 2f6:	bf 1e 00 00 00       	mov    $0x1e,%edi
 2fb:	48 8b 6b 70          	mov    0x70(%rbx),%rbp
 2ff:	48 8b 5b 78          	mov    0x78(%rbx),%rbx
 303:	e8 00 00 00 00       	callq  308 <_ZN4Code4initEv+0x308>
 308:	ba 05 00 00 00       	mov    $0x5,%edx
 30d:	48 f7 d8             	neg    %rax
 310:	48 8d 74 1d 00       	lea    0x0(%rbp,%rbx,1),%rsi
 315:	48 89 c7             	mov    %rax,%rdi
 318:	48 21 df             	and    %rbx,%rdi
 31b:	48 29 fe             	sub    %rdi,%rsi
 31e:	e8 00 00 00 00       	callq  323 <_ZN4Code4initEv+0x323>
 323:	85 c0                	test   %eax,%eax
 325:	0f 85 d5 02 00 00    	jne    600 <_ZN4Code4initEv+0x600>
 32b:	48 8b 7c 24 28       	mov    0x28(%rsp),%rdi
 330:	e8 00 00 00 00       	callq  335 <_ZN4Code4initEv+0x335>
 335:	48 81 c4 b8 00 00 00 	add    $0xb8,%rsp
 33c:	5b                   	pop    %rbx
 33d:	5d                   	pop    %rbp
 33e:	41 5c                	pop    %r12
 340:	41 5d                	pop    %r13
 342:	41 5e                	pop    %r14
 344:	41 5f                	pop    %r15
 346:	c3                   	retq   
 347:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
 34e:	00 00 
 350:	48 d1 e8             	shr    %rax
 353:	48 01 c9             	add    %rcx,%rcx
 356:	48 83 ea 01          	sub    $0x1,%rdx
 35a:	0f 85 30 ff ff ff    	jne    290 <_ZN4Code4initEv+0x290>
 360:	e9 45 ff ff ff       	jmpq   2aa <_ZN4Code4initEv+0x2aa>
 365:	48 8b 0e             	mov    (%rsi),%rcx
 368:	48 89 0a             	mov    %rcx,(%rdx)
 36b:	48 8b 4e 08          	mov    0x8(%rsi),%rcx
 36f:	48 89 4a 08          	mov    %rcx,0x8(%rdx)
 373:	48 83 f8 02          	cmp    $0x2,%rax
 377:	0f 86 51 02 00 00    	jbe    5ce <_ZN4Code4initEv+0x5ce>
 37d:	48 8b 4e 10          	mov    0x10(%rsi),%rcx
 381:	48 89 4a 10          	mov    %rcx,0x10(%rdx)
 385:	48 83 f8 03          	cmp    $0x3,%rax
 389:	0f 86 4c 02 00 00    	jbe    5db <_ZN4Code4initEv+0x5db>
 38f:	48 8b 7e 18          	mov    0x18(%rsi),%rdi
 393:	b9 04 00 00 00       	mov    $0x4,%ecx
 398:	48 89 7a 18          	mov    %rdi,0x18(%rdx)
 39c:	48 39 c1             	cmp    %rax,%rcx
 39f:	0f 82 49 fe ff ff    	jb     1ee <_ZN4Code4initEv+0x1ee>
 3a5:	48 c7 42 20 00 00 00 	movq   $0x0,0x20(%rdx)
 3ac:	00 
 3ad:	48 c7 42 28 00 00 00 	movq   $0x0,0x28(%rdx)
 3b4:	00 
 3b5:	31 ff                	xor    %edi,%edi
 3b7:	48 c7 42 30 00 00 00 	movq   $0x0,0x30(%rdx)
 3be:	00 
 3bf:	48 89 7a 38          	mov    %rdi,0x38(%rdx)
 3c3:	48 39 c1             	cmp    %rax,%rcx
 3c6:	0f 82 76 fe ff ff    	jb     242 <_ZN4Code4initEv+0x242>
 3cc:	48 c7 42 40 00 00 00 	movq   $0x0,0x40(%rdx)
 3d3:	00 
 3d4:	48 c7 42 48 00 00 00 	movq   $0x0,0x48(%rdx)
 3db:	00 
 3dc:	31 c0                	xor    %eax,%eax
 3de:	e9 8d fe ff ff       	jmpq   270 <_ZN4Code4initEv+0x270>
 3e3:	ba 10 00 00 00       	mov    $0x10,%edx
 3e8:	48 29 ca             	sub    %rcx,%rdx
 3eb:	48 89 54 24 08       	mov    %rdx,0x8(%rsp)
 3f0:	48 83 7c 24 08 08    	cmpq   $0x8,0x8(%rsp)
 3f6:	48 c7 04 24 09 00 00 	movq   $0x9,(%rsp)
 3fd:	00 
 3fe:	41 bd 48 00 00 00    	mov    $0x48,%r13d
 404:	77 0e                	ja     414 <_ZN4Code4initEv+0x414>
 406:	48 8b 74 24 08       	mov    0x8(%rsp),%rsi
 40b:	48 89 34 24          	mov    %rsi,(%rsp)
 40f:	4c 8d 6c f6 f7       	lea    -0x9(%rsi,%rsi,8),%r13
 414:	48 8b 34 24          	mov    (%rsp),%rsi
 418:	4c 03 2d 00 00 00 00 	add    0x0(%rip),%r13        # 41f <_ZN4Code4initEv+0x41f>
 41f:	4d 8d 7c 35 00       	lea    0x0(%r13,%rsi,1),%r15
 424:	0f 1f 40 00          	nopl   0x0(%rax)
 428:	4c 8b 63 70          	mov    0x70(%rbx),%r12
 42c:	45 0f b6 75 00       	movzbl 0x0(%r13),%r14d
 431:	49 39 c4             	cmp    %rax,%r12
 434:	0f 87 be 00 00 00    	ja     4f8 <_ZN4Code4initEv+0x4f8>
 43a:	83 7b 20 03          	cmpl   $0x3,0x20(%rbx)
 43e:	0f 85 f5 01 00 00    	jne    639 <_ZN4Code4initEv+0x639>
 444:	4d 01 e4             	add    %r12,%r12
 447:	48 8b 7b 68          	mov    0x68(%rbx),%rdi
 44b:	b8 00 10 00 00       	mov    $0x1000,%eax
 450:	49 81 fc 00 10 00 00 	cmp    $0x1000,%r12
 457:	4c 0f 42 e0          	cmovb  %rax,%r12
 45b:	48 8b 07             	mov    (%rdi),%rax
 45e:	4c 89 e6             	mov    %r12,%rsi
 461:	ff 10                	callq  *(%rax)
 463:	48 89 c5             	mov    %rax,%rbp
 466:	48 85 c0             	test   %rax,%rax
 469:	0f 84 cf 01 00 00    	je     63e <_ZN4Code4initEv+0x63e>
 46f:	31 c0                	xor    %eax,%eax
 471:	48 83 bb 80 00 00 00 	cmpq   $0x0,0x80(%rbx)
 478:	00 
 479:	74 1e                	je     499 <_ZN4Code4initEv+0x499>
 47b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
 480:	48 8b 53 78          	mov    0x78(%rbx),%rdx
 484:	0f b6 14 02          	movzbl (%rdx,%rax,1),%edx
 488:	88 54 05 00          	mov    %dl,0x0(%rbp,%rax,1)
 48c:	48 83 c0 01          	add    $0x1,%rax
 490:	48 39 83 80 00 00 00 	cmp    %rax,0x80(%rbx)
 497:	77 e7                	ja     480 <_ZN4Code4initEv+0x480>
 499:	48 8b 7b 68          	mov    0x68(%rbx),%rdi
 49d:	48 8b 73 78          	mov    0x78(%rbx),%rsi
 4a1:	48 8b 07             	mov    (%rdi),%rax
 4a4:	ff 50 08             	callq  *0x8(%rax)
 4a7:	48 89 6b 78          	mov    %rbp,0x78(%rbx)
 4ab:	48 8b 83 80 00 00 00 	mov    0x80(%rbx),%rax
 4b2:	4c 89 63 70          	mov    %r12,0x70(%rbx)
 4b6:	48 8d 50 01          	lea    0x1(%rax),%rdx
 4ba:	49 83 c5 01          	add    $0x1,%r13
 4be:	48 89 93 80 00 00 00 	mov    %rdx,0x80(%rbx)
 4c5:	44 88 74 05 00       	mov    %r14b,0x0(%rbp,%rax,1)
 4ca:	48 8b 83 80 00 00 00 	mov    0x80(%rbx),%rax
 4d1:	4d 39 fd             	cmp    %r15,%r13
 4d4:	0f 85 4e ff ff ff    	jne    428 <_ZN4Code4initEv+0x428>
 4da:	48 8b 3c 24          	mov    (%rsp),%rdi
 4de:	48 29 7c 24 08       	sub    %rdi,0x8(%rsp)
 4e3:	0f 85 07 ff ff ff    	jne    3f0 <_ZN4Code4initEv+0x3f0>
 4e9:	48 03 43 78          	add    0x78(%rbx),%rax
 4ed:	48 89 c2             	mov    %rax,%rdx
 4f0:	e9 ef fd ff ff       	jmpq   2e4 <_ZN4Code4initEv+0x2e4>
 4f5:	0f 1f 00             	nopl   (%rax)
 4f8:	48 8b 6b 78          	mov    0x78(%rbx),%rbp
 4fc:	eb b8                	jmp    4b6 <_ZN4Code4initEv+0x4b6>
 4fe:	4c 8d 6c 24 40       	lea    0x40(%rsp),%r13
 503:	48 8d b4 24 80 00 00 	lea    0x80(%rsp),%rsi
 50a:	00 
 50b:	31 d2                	xor    %edx,%edx
 50d:	4c 89 ef             	mov    %r13,%rdi
 510:	e8 00 00 00 00       	callq  515 <_ZN4Code4initEv+0x515>
 515:	48 89 44 24 40       	mov    %rax,0x40(%rsp)
 51a:	48 89 c7             	mov    %rax,%rdi
 51d:	48 8b 84 24 80 00 00 	mov    0x80(%rsp),%rax
 524:	00 
 525:	48 89 44 24 50       	mov    %rax,0x50(%rsp)
 52a:	4c 89 e2             	mov    %r12,%rdx
 52d:	4c 89 f6             	mov    %r14,%rsi
 530:	e8 00 00 00 00       	callq  535 <_ZN4Code4initEv+0x535>
 535:	48 8b 54 24 40       	mov    0x40(%rsp),%rdx
 53a:	48 8b 84 24 80 00 00 	mov    0x80(%rsp),%rax
 541:	00 
 542:	e9 20 fb ff ff       	jmpq   67 <_ZN4Code4initEv+0x67>
 547:	48 8d 3d 00 00 00 00 	lea    0x0(%rip),%rdi        # 54e <_ZN4Code4initEv+0x54e>
 54e:	e8 00 00 00 00       	callq  553 <_ZN4Code4initEv+0x553>
 553:	4c 0f bd 0e          	bsr    (%rsi),%r9
 557:	48 8b 06             	mov    (%rsi),%rax
 55a:	bf 01 00 00 00       	mov    $0x1,%edi
 55f:	41 83 c1 01          	add    $0x1,%r9d
 563:	44 89 8b 18 0c 00 00 	mov    %r9d,0xc18(%rbx)
 56a:	48 89 02             	mov    %rax,(%rdx)
 56d:	b8 01 00 00 00       	mov    $0x1,%eax
 572:	e9 52 fc ff ff       	jmpq   1c9 <_ZN4Code4initEv+0x1c9>
 577:	48 c7 44 24 30 01 00 	movq   $0x1,0x30(%rsp)
 57e:	00 00 
 580:	48 83 3e 00          	cmpq   $0x0,(%rsi)
 584:	75 1f                	jne    5a5 <_ZN4Code4initEv+0x5a5>
 586:	48 8b 7c 24 40       	mov    0x40(%rsp),%rdi
 58b:	c6 44 24 38 00       	movb   $0x0,0x38(%rsp)
 590:	48 39 ef             	cmp    %rbp,%rdi
 593:	0f 85 8e fb ff ff    	jne    127 <_ZN4Code4initEv+0x127>
 599:	48 8d 93 c0 0b 00 00 	lea    0xbc0(%rbx),%rdx
 5a0:	e9 9e fb ff ff       	jmpq   143 <_ZN4Code4initEv+0x143>
 5a5:	48 8b 7c 24 40       	mov    0x40(%rsp),%rdi
 5aa:	48 39 ef             	cmp    %rbp,%rdi
 5ad:	0f 85 74 fb ff ff    	jne    127 <_ZN4Code4initEv+0x127>
 5b3:	eb e4                	jmp    599 <_ZN4Code4initEv+0x599>
 5b5:	4c 89 c1             	mov    %r8,%rcx
 5b8:	e9 f8 fd ff ff       	jmpq   3b5 <_ZN4Code4initEv+0x3b5>
 5bd:	48 89 f9             	mov    %rdi,%rcx
 5c0:	31 ff                	xor    %edi,%edi
 5c2:	e9 6e fc ff ff       	jmpq   235 <_ZN4Code4initEv+0x235>
 5c7:	31 c0                	xor    %eax,%eax
 5c9:	e9 a2 fc ff ff       	jmpq   270 <_ZN4Code4initEv+0x270>
 5ce:	48 89 c7             	mov    %rax,%rdi
 5d1:	b8 02 00 00 00       	mov    $0x2,%eax
 5d6:	e9 f6 fb ff ff       	jmpq   1d1 <_ZN4Code4initEv+0x1d1>
 5db:	31 ff                	xor    %edi,%edi
 5dd:	b9 03 00 00 00       	mov    $0x3,%ecx
 5e2:	e9 fa fb ff ff       	jmpq   1e1 <_ZN4Code4initEv+0x1e1>
 5e7:	48 89 ef             	mov    %rbp,%rdi
 5ea:	e9 3b ff ff ff       	jmpq   52a <_ZN4Code4initEv+0x52a>
 5ef:	48 89 f9             	mov    %rdi,%rcx
 5f2:	e9 b6 fd ff ff       	jmpq   3ad <_ZN4Code4initEv+0x3ad>
 5f7:	f3 0f 1e fa          	endbr64 
 5fb:	48 89 c5             	mov    %rax,%rbp
 5fe:	eb 27                	jmp    627 <_ZN4Code4initEv+0x627>
 600:	e8 00 00 00 00       	callq  605 <_ZN4Code4initEv+0x605>
 605:	48 8b bc 24 80 00 00 	mov    0x80(%rsp),%rdi
 60c:	00 
 60d:	48 8d 84 24 90 00 00 	lea    0x90(%rsp),%rax
 614:	00 
 615:	48 39 c7             	cmp    %rax,%rdi
 618:	74 05                	je     61f <_ZN4Code4initEv+0x61f>
 61a:	e8 00 00 00 00       	callq  61f <_ZN4Code4initEv+0x61f>
 61f:	4c 89 ef             	mov    %r13,%rdi
 622:	e8 00 00 00 00       	callq  627 <_ZN4Code4initEv+0x627>
 627:	48 8b 7c 24 28       	mov    0x28(%rsp),%rdi
 62c:	e8 00 00 00 00       	callq  631 <_ZN4Code4initEv+0x631>
 631:	48 89 ef             	mov    %rbp,%rdi
 634:	e8 00 00 00 00       	callq  639 <_ZN4Code4initEv+0x639>
 639:	e8 00 00 00 00       	callq  63e <_ZN4Code4initEv+0x63e>
 63e:	e8 00 00 00 00       	callq  643 <_ZN4Code4initEv+0x643>
 643:	bf 28 00 00 00       	mov    $0x28,%edi
 648:	4c 8d a4 24 80 00 00 	lea    0x80(%rsp),%r12
 64f:	00 
 650:	e8 00 00 00 00       	callq  655 <_ZN4Code4initEv+0x655>
 655:	48 8d 35 00 00 00 00 	lea    0x0(%rip),%rsi        # 65c <_ZN4Code4initEv+0x65c>
 65c:	4c 89 e7             	mov    %r12,%rdi
 65f:	49 89 c5             	mov    %rax,%r13
 662:	e8 00 00 00 00       	callq  667 <_ZN4Code4initEv+0x667>
 667:	ba 01 00 00 00       	mov    $0x1,%edx
 66c:	4c 89 e6             	mov    %r12,%rsi
 66f:	4c 89 ef             	mov    %r13,%rdi
 672:	e8 00 00 00 00       	callq  677 <_ZN4Code4initEv+0x677>
 677:	48 8b bc 24 80 00 00 	mov    0x80(%rsp),%rdi
 67e:	00 
 67f:	48 8d 84 24 90 00 00 	lea    0x90(%rsp),%rax
 686:	00 
 687:	48 39 c7             	cmp    %rax,%rdi
 68a:	74 05                	je     691 <_ZN4Code4initEv+0x691>
 68c:	e8 00 00 00 00       	callq  691 <_ZN4Code4initEv+0x691>
 691:	48 8b 15 00 00 00 00 	mov    0x0(%rip),%rdx        # 698 <_ZN4Code4initEv+0x698>
 698:	48 8b 35 00 00 00 00 	mov    0x0(%rip),%rsi        # 69f <_ZN4Code4initEv+0x69f>
 69f:	4c 89 ef             	mov    %r13,%rdi
 6a2:	e8 00 00 00 00       	callq  6a7 <_ZN4Code4initEv+0x6a7>
 6a7:	bf 28 00 00 00       	mov    $0x28,%edi
 6ac:	4c 8d 74 24 60       	lea    0x60(%rsp),%r14
 6b1:	e8 00 00 00 00       	callq  6b6 <_ZN4Code4initEv+0x6b6>
 6b6:	48 8d 35 00 00 00 00 	lea    0x0(%rip),%rsi        # 6bd <_ZN4Code4initEv+0x6bd>
 6bd:	4c 89 f7             	mov    %r14,%rdi
 6c0:	49 89 c5             	mov    %rax,%r13
 6c3:	e8 00 00 00 00       	callq  6c8 <_ZN4Code4initEv+0x6c8>
 6c8:	4c 8d a4 24 80 00 00 	lea    0x80(%rsp),%r12
 6cf:	00 
 6d0:	ba 01 00 00 00       	mov    $0x1,%edx
 6d5:	4c 89 f6             	mov    %r14,%rsi
 6d8:	4c 89 e7             	mov    %r12,%rdi
 6db:	e8 00 00 00 00       	callq  6e0 <_ZN4Code4initEv+0x6e0>
 6e0:	4c 8d b4 24 88 00 00 	lea    0x88(%rsp),%r14
 6e7:	00 
 6e8:	be 3a 00 00 00       	mov    $0x3a,%esi
 6ed:	4c 8b 7c 24 40       	mov    0x40(%rsp),%r15
 6f2:	4c 89 f7             	mov    %r14,%rdi
 6f5:	e8 00 00 00 00       	callq  6fa <_ZN4Code4initEv+0x6fa>
 6fa:	4c 89 fe             	mov    %r15,%rsi
 6fd:	4c 89 f7             	mov    %r14,%rdi
 700:	e8 00 00 00 00       	callq  705 <_ZN4Code4initEv+0x705>
 705:	48 8b 05 00 00 00 00 	mov    0x0(%rip),%rax        # 70c <_ZN4Code4initEv+0x70c>
 70c:	4c 8b bc 24 88 00 00 	mov    0x88(%rsp),%r15
 713:	00 
 714:	49 8d 7d 18          	lea    0x18(%r13),%rdi
 718:	4d 8d 45 08          	lea    0x8(%r13),%r8
 71c:	4c 8b b4 24 90 00 00 	mov    0x90(%rsp),%r14
 723:	00 
 724:	49 89 7d 08          	mov    %rdi,0x8(%r13)
 728:	48 83 c0 10          	add    $0x10,%rax
 72c:	49 89 45 00          	mov    %rax,0x0(%r13)
 730:	4c 89 f8             	mov    %r15,%rax
 733:	4c 01 f0             	add    %r14,%rax
 736:	74 29                	je     761 <_ZN4Code4initEv+0x761>
 738:	4d 85 ff             	test   %r15,%r15
 73b:	75 24                	jne    761 <_ZN4Code4initEv+0x761>
 73d:	48 8d 3d 00 00 00 00 	lea    0x0(%rip),%rdi        # 744 <_ZN4Code4initEv+0x744>
 744:	e8 00 00 00 00       	callq  749 <_ZN4Code4initEv+0x749>
 749:	f3 0f 1e fa          	endbr64 
 74d:	48 89 c5             	mov    %rax,%rbp
 750:	e9 b0 fe ff ff       	jmpq   605 <_ZN4Code4initEv+0x605>
 755:	f3 0f 1e fa          	endbr64 
 759:	48 89 c5             	mov    %rax,%rbp
 75c:	e9 be fe ff ff       	jmpq   61f <_ZN4Code4initEv+0x61f>
 761:	4c 89 74 24 18       	mov    %r14,0x18(%rsp)
 766:	49 83 fe 0f          	cmp    $0xf,%r14
 76a:	0f 86 e1 00 00 00    	jbe    851 <_ZN4Code4initEv+0x851>
 770:	48 8d 74 24 18       	lea    0x18(%rsp),%rsi
 775:	31 d2                	xor    %edx,%edx
 777:	4c 89 c7             	mov    %r8,%rdi
 77a:	e8 00 00 00 00       	callq  77f <_ZN4Code4initEv+0x77f>
 77f:	49 89 45 08          	mov    %rax,0x8(%r13)
 783:	48 89 c7             	mov    %rax,%rdi
 786:	48 8b 44 24 18       	mov    0x18(%rsp),%rax
 78b:	49 89 45 18          	mov    %rax,0x18(%r13)
 78f:	4c 89 f2             	mov    %r14,%rdx
 792:	4c 89 fe             	mov    %r15,%rsi
 795:	e8 00 00 00 00       	callq  79a <_ZN4Code4initEv+0x79a>
 79a:	48 8b 44 24 18       	mov    0x18(%rsp),%rax
 79f:	49 8b 55 08          	mov    0x8(%r13),%rdx
 7a3:	4c 89 e7             	mov    %r12,%rdi
 7a6:	49 89 45 10          	mov    %rax,0x10(%r13)
 7aa:	c6 04 02 00          	movb   $0x0,(%rdx,%rax,1)
 7ae:	e8 00 00 00 00       	callq  7b3 <_ZN4Code4initEv+0x7b3>
 7b3:	48 8b 7c 24 60       	mov    0x60(%rsp),%rdi
 7b8:	48 8d 44 24 70       	lea    0x70(%rsp),%rax
 7bd:	48 39 c7             	cmp    %rax,%rdi
 7c0:	74 05                	je     7c7 <_ZN4Code4initEv+0x7c7>
 7c2:	e8 00 00 00 00       	callq  7c7 <_ZN4Code4initEv+0x7c7>
 7c7:	48 8b 15 00 00 00 00 	mov    0x0(%rip),%rdx        # 7ce <_ZN4Code4initEv+0x7ce>
 7ce:	48 8b 35 00 00 00 00 	mov    0x0(%rip),%rsi        # 7d5 <_ZN4Code4initEv+0x7d5>
 7d5:	4c 89 ef             	mov    %r13,%rdi
 7d8:	e8 00 00 00 00       	callq  7dd <_ZN4Code4initEv+0x7dd>
 7dd:	f3 0f 1e fa          	endbr64 
 7e1:	48 89 c3             	mov    %rax,%rbx
 7e4:	eb 19                	jmp    7ff <_ZN4Code4initEv+0x7ff>
 7e6:	f3 0f 1e fa          	endbr64 
 7ea:	48 89 c3             	mov    %rax,%rbx
 7ed:	eb 24                	jmp    813 <_ZN4Code4initEv+0x813>
 7ef:	4c 89 ef             	mov    %r13,%rdi
 7f2:	e8 00 00 00 00       	callq  7f7 <_ZN4Code4initEv+0x7f7>
 7f7:	4c 89 e7             	mov    %r12,%rdi
 7fa:	e8 00 00 00 00       	callq  7ff <_ZN4Code4initEv+0x7ff>
 7ff:	48 8b 7c 24 60       	mov    0x60(%rsp),%rdi
 804:	48 8d 44 24 70       	lea    0x70(%rsp),%rax
 809:	48 39 c7             	cmp    %rax,%rdi
 80c:	74 05                	je     813 <_ZN4Code4initEv+0x813>
 80e:	e8 00 00 00 00       	callq  813 <_ZN4Code4initEv+0x813>
 813:	4c 89 ef             	mov    %r13,%rdi
 816:	49 89 dc             	mov    %rbx,%r12
 819:	e8 00 00 00 00       	callq  81e <_ZN4Code4initEv+0x81e>
 81e:	48 8b 7c 24 28       	mov    0x28(%rsp),%rdi
 823:	e8 00 00 00 00       	callq  828 <_ZN4Code4initEv+0x828>
 828:	48 8b 7c 24 40       	mov    0x40(%rsp),%rdi
 82d:	48 39 ef             	cmp    %rbp,%rdi
 830:	74 05                	je     837 <_ZN4Code4initEv+0x837>
 832:	e8 00 00 00 00       	callq  837 <_ZN4Code4initEv+0x837>
 837:	4c 89 e7             	mov    %r12,%rdi
 83a:	e8 00 00 00 00       	callq  83f <_ZN4Code4initEv+0x83f>
 83f:	f3 0f 1e fa          	endbr64 
 843:	48 89 c3             	mov    %rax,%rbx
 846:	eb af                	jmp    7f7 <_ZN4Code4initEv+0x7f7>
 848:	f3 0f 1e fa          	endbr64 
 84c:	48 89 c3             	mov    %rax,%rbx
 84f:	eb 9e                	jmp    7ef <_ZN4Code4initEv+0x7ef>
 851:	49 83 fe 01          	cmp    $0x1,%r14
 855:	75 0d                	jne    864 <_ZN4Code4initEv+0x864>
 857:	41 0f b6 07          	movzbl (%r15),%eax
 85b:	41 88 45 18          	mov    %al,0x18(%r13)
 85f:	e9 36 ff ff ff       	jmpq   79a <_ZN4Code4initEv+0x79a>
 864:	4d 85 f6             	test   %r14,%r14
 867:	0f 85 22 ff ff ff    	jne    78f <_ZN4Code4initEv+0x78f>
 86d:	e9 28 ff ff ff       	jmpq   79a <_ZN4Code4initEv+0x79a>
 872:	f3 0f 1e fa          	endbr64 
 876:	49 89 c4             	mov    %rax,%r12
 879:	eb a3                	jmp    81e <_ZN4Code4initEv+0x81e>

Disassembly of section .text.startup:

0000000000000000 <_GLOBAL__sub_I_mcl.cpp>:
       0:	f3 0f 1e fa          	endbr64 
       4:	41 55                	push   %r13
       6:	48 8d 3d 00 00 00 00 	lea    0x0(%rip),%rdi        # d <_GLOBAL__sub_I_mcl.cpp+0xd>
       d:	41 54                	push   %r12
       f:	55                   	push   %rbp
      10:	53                   	push   %rbx
      11:	48 83 ec 28          	sub    $0x28,%rsp
      15:	4c 8b 2d 00 00 00 00 	mov    0x0(%rip),%r13        # 1c <_GLOBAL__sub_I_mcl.cpp+0x1c>
      1c:	48 8b 2d 00 00 00 00 	mov    0x0(%rip),%rbp        # 23 <_GLOBAL__sub_I_mcl.cpp+0x23>
      23:	49 8d 45 10          	lea    0x10(%r13),%rax
      27:	48 8d 5d 60          	lea    0x60(%rbp),%rbx
      2b:	66 48 0f 6e c0       	movq   %rax,%xmm0
      30:	48 8b 05 00 00 00 00 	mov    0x0(%rip),%rax        # 37 <_GLOBAL__sub_I_mcl.cpp+0x37>
      37:	4c 8d 65 08          	lea    0x8(%rbp),%r12
      3b:	66 48 0f 6e d3       	movq   %rbx,%xmm2
      40:	66 49 0f 6e dc       	movq   %r12,%xmm3
      45:	66 0f 6c c2          	punpcklqdq %xmm2,%xmm0
      49:	48 83 c0 10          	add    $0x10,%rax
      4d:	0f 29 44 24 10       	movaps %xmm0,0x10(%rsp)
      52:	66 48 0f 6e c8       	movq   %rax,%xmm1
      57:	66 0f 6c cb          	punpcklqdq %xmm3,%xmm1
      5b:	0f 29 0c 24          	movaps %xmm1,(%rsp)
      5f:	e8 00 00 00 00       	callq  64 <_GLOBAL__sub_I_mcl.cpp+0x64>
      64:	48 8b 3d 00 00 00 00 	mov    0x0(%rip),%rdi        # 6b <_GLOBAL__sub_I_mcl.cpp+0x6b>
      6b:	48 8d 35 00 00 00 00 	lea    0x0(%rip),%rsi        # 72 <_GLOBAL__sub_I_mcl.cpp+0x72>
      72:	48 8d 15 00 00 00 00 	lea    0x0(%rip),%rdx        # 79 <_GLOBAL__sub_I_mcl.cpp+0x79>
      79:	e8 00 00 00 00       	callq  7e <_GLOBAL__sub_I_mcl.cpp+0x7e>
      7e:	48 8d 7b c8          	lea    -0x38(%rbx),%rdi
      82:	66 0f 6f 0c 24       	movdqa (%rsp),%xmm1
      87:	66 0f 6f 44 24 10    	movdqa 0x10(%rsp),%xmm0
      8d:	4c 89 65 10          	mov    %r12,0x10(%rbp)
      91:	be 00 90 00 00       	mov    $0x9000,%esi
      96:	48 c7 45 18 00 00 00 	movq   $0x0,0x18(%rbp)
      9d:	00 
      9e:	c7 45 20 02 00 00 00 	movl   $0x2,0x20(%rbp)
      a5:	48 c7 45 38 01 00 00 	movq   $0x1,0x38(%rbp)
      ac:	00 
      ad:	48 c7 45 40 00 00 00 	movq   $0x0,0x40(%rbp)
      b4:	00 
      b5:	48 c7 45 48 00 00 00 	movq   $0x0,0x48(%rbp)
      bc:	00 
      bd:	c7 45 50 00 00 80 3f 	movl   $0x3f800000,0x50(%rbp)
      c4:	48 c7 45 58 00 00 00 	movq   $0x0,0x58(%rbp)
      cb:	00 
      cc:	48 c7 45 60 00 00 00 	movq   $0x0,0x60(%rbp)
      d3:	00 
      d4:	48 89 7d 68          	mov    %rdi,0x68(%rbp)
      d8:	48 c7 45 70 00 90 00 	movq   $0x9000,0x70(%rbp)
      df:	00 
      e0:	0f 11 4d 00          	movups %xmm1,0x0(%rbp)
      e4:	0f 11 45 28          	movups %xmm0,0x28(%rbp)
      e8:	e8 00 00 00 00       	callq  ed <_GLOBAL__sub_I_mcl.cpp+0xed>
      ed:	48 83 7d 70 00       	cmpq   $0x0,0x70(%rbp)
      f2:	48 89 45 78          	mov    %rax,0x78(%rbp)
      f6:	48 c7 85 80 00 00 00 	movq   $0x0,0x80(%rbp)
      fd:	00 00 00 00 
     101:	c6 85 88 00 00 00 00 	movb   $0x0,0x88(%rbp)
     108:	74 09                	je     113 <_GLOBAL__sub_I_mcl.cpp+0x113>
     10a:	48 85 c0             	test   %rax,%rax
     10d:	0f 84 00 00 00 00    	je     113 <_GLOBAL__sub_I_mcl.cpp+0x113>
     113:	48 8b 05 00 00 00 00 	mov    0x0(%rip),%rax        # 11a <_GLOBAL__sub_I_mcl.cpp+0x11a>
     11a:	48 c7 85 a8 00 00 00 	movq   $0x0,0xa8(%rbp)
     121:	00 00 00 00 
     125:	48 8d bd 90 00 00 00 	lea    0x90(%rbp),%rdi
     12c:	48 c7 85 c0 00 00 00 	movq   $0x1,0xc0(%rbp)
     133:	01 00 00 00 
     137:	48 c7 85 c8 00 00 00 	movq   $0x0,0xc8(%rbp)
     13e:	00 00 00 00 
     142:	48 83 c0 10          	add    $0x10,%rax
     146:	48 89 45 00          	mov    %rax,0x0(%rbp)
     14a:	48 8d 85 98 00 00 00 	lea    0x98(%rbp),%rax
     151:	48 c7 85 d0 00 00 00 	movq   $0x0,0xd0(%rbp)
     158:	00 00 00 00 
     15c:	66 48 0f 6e c0       	movq   %rax,%xmm0
     161:	48 8d 85 e8 00 00 00 	lea    0xe8(%rbp),%rax
     168:	48 89 85 b8 00 00 00 	mov    %rax,0xb8(%rbp)
     16f:	66 0f 6c c0          	punpcklqdq %xmm0,%xmm0
     173:	48 8d 85 20 01 00 00 	lea    0x120(%rbp),%rax
     17a:	48 89 85 f0 00 00 00 	mov    %rax,0xf0(%rbp)
     181:	48 8d 85 58 01 00 00 	lea    0x158(%rbp),%rax
     188:	c7 85 d8 00 00 00 00 	movl   $0x3f800000,0xd8(%rbp)
     18f:	00 80 3f 
     192:	48 c7 85 e0 00 00 00 	movq   $0x0,0xe0(%rbp)
     199:	00 00 00 00 
     19d:	48 c7 85 e8 00 00 00 	movq   $0x0,0xe8(%rbp)
     1a4:	00 00 00 00 
     1a8:	48 c7 85 f8 00 00 00 	movq   $0x1,0xf8(%rbp)
     1af:	01 00 00 00 
     1b3:	48 c7 85 00 01 00 00 	movq   $0x0,0x100(%rbp)
     1ba:	00 00 00 00 
     1be:	48 c7 85 08 01 00 00 	movq   $0x0,0x108(%rbp)
     1c5:	00 00 00 00 
     1c9:	c7 85 10 01 00 00 00 	movl   $0x3f800000,0x110(%rbp)
     1d0:	00 80 3f 
     1d3:	48 c7 85 18 01 00 00 	movq   $0x0,0x118(%rbp)
     1da:	00 00 00 00 
     1de:	48 c7 85 20 01 00 00 	movq   $0x0,0x120(%rbp)
     1e5:	00 00 00 00 
     1e9:	48 89 85 28 01 00 00 	mov    %rax,0x128(%rbp)
     1f0:	48 c7 85 30 01 00 00 	movq   $0x1,0x130(%rbp)
     1f7:	01 00 00 00 
     1fb:	48 c7 85 38 01 00 00 	movq   $0x0,0x138(%rbp)
     202:	00 00 00 00 
     206:	48 c7 85 40 01 00 00 	movq   $0x0,0x140(%rbp)
     20d:	00 00 00 00 
     211:	c7 85 48 01 00 00 00 	movl   $0x3f800000,0x148(%rbp)
     218:	00 80 3f 
     21b:	48 c7 85 50 01 00 00 	movq   $0x0,0x150(%rbp)
     222:	00 00 00 00 
     226:	48 c7 85 58 01 00 00 	movq   $0x0,0x158(%rbp)
     22d:	00 00 00 00 
     231:	0f 11 85 98 00 00 00 	movups %xmm0,0x98(%rbp)
     238:	e8 00 00 00 00       	callq  23d <_GLOBAL__sub_I_mcl.cpp+0x23d>
     23d:	8b 85 60 01 00 00    	mov    0x160(%rbp),%eax
     243:	80 a5 64 01 00 00 c0 	andb   $0xc0,0x164(%rbp)
     24a:	48 8d 8d a0 01 00 00 	lea    0x1a0(%rbp),%rcx
     251:	80 a5 6c 01 00 00 c0 	andb   $0xc0,0x16c(%rbp)
     258:	66 48 0f 6e c1       	movq   %rcx,%xmm0
     25d:	25 00 00 00 80       	and    $0x80000000,%eax
     262:	80 a5 74 01 00 00 c0 	andb   $0xc0,0x174(%rbp)
     269:	0d 00 01 40 00       	or     $0x400100,%eax
     26e:	80 a5 7c 01 00 00 c0 	andb   $0xc0,0x17c(%rbp)
     275:	89 85 60 01 00 00    	mov    %eax,0x160(%rbp)
     27b:	8b 85 68 01 00 00    	mov    0x168(%rbp),%eax
     281:	80 a5 84 01 00 00 c0 	andb   $0xc0,0x184(%rbp)
     288:	25 00 00 00 80       	and    $0x80000000,%eax
     28d:	80 a5 8c 01 00 00 c0 	andb   $0xc0,0x18c(%rbp)
     294:	0d 01 01 40 00       	or     $0x400101,%eax
     299:	80 a5 94 01 00 00 c0 	andb   $0xc0,0x194(%rbp)
     2a0:	89 85 68 01 00 00    	mov    %eax,0x168(%rbp)
     2a6:	8b 85 70 01 00 00    	mov    0x170(%rbp),%eax
     2ac:	80 a5 9c 01 00 00 c0 	andb   $0xc0,0x19c(%rbp)
     2b3:	25 00 00 00 80       	and    $0x80000000,%eax
     2b8:	0d 02 01 40 00       	or     $0x400102,%eax
     2bd:	89 85 70 01 00 00    	mov    %eax,0x170(%rbp)
     2c3:	8b 85 78 01 00 00    	mov    0x178(%rbp),%eax
     2c9:	25 00 00 00 80       	and    $0x80000000,%eax
     2ce:	0d 03 01 40 00       	or     $0x400103,%eax
     2d3:	89 85 78 01 00 00    	mov    %eax,0x178(%rbp)
     2d9:	8b 85 80 01 00 00    	mov    0x180(%rbp),%eax
     2df:	25 00 00 00 80       	and    $0x80000000,%eax
     2e4:	0d 04 01 40 00       	or     $0x400104,%eax
     2e9:	89 85 80 01 00 00    	mov    %eax,0x180(%rbp)
     2ef:	8b 85 88 01 00 00    	mov    0x188(%rbp),%eax
     2f5:	25 00 00 00 80       	and    $0x80000000,%eax
     2fa:	0d 05 01 40 00       	or     $0x400105,%eax
     2ff:	89 85 88 01 00 00    	mov    %eax,0x188(%rbp)
     305:	8b 85 90 01 00 00    	mov    0x190(%rbp),%eax
     30b:	25 00 00 00 80       	and    $0x80000000,%eax
     310:	0d 06 01 40 00       	or     $0x400106,%eax
     315:	89 85 90 01 00 00    	mov    %eax,0x190(%rbp)
     31b:	8b 85 98 01 00 00    	mov    0x198(%rbp),%eax
     321:	25 00 00 00 80       	and    $0x80000000,%eax
     326:	0d 07 01 40 00       	or     $0x400107,%eax
     32b:	89 85 98 01 00 00    	mov    %eax,0x198(%rbp)
     331:	8b 85 a0 01 00 00    	mov    0x1a0(%rbp),%eax
     337:	80 a5 a4 01 00 00 c0 	andb   $0xc0,0x1a4(%rbp)
     33e:	25 00 00 00 80       	and    $0x80000000,%eax
     343:	80 a5 ac 01 00 00 c0 	andb   $0xc0,0x1ac(%rbp)
     34a:	0d 00 04 80 00       	or     $0x800400,%eax
     34f:	89 85 a0 01 00 00    	mov    %eax,0x1a0(%rbp)
     355:	8b 85 a8 01 00 00    	mov    0x1a8(%rbp),%eax
     35b:	25 00 00 00 80       	and    $0x80000000,%eax
     360:	0d 01 04 80 00       	or     $0x800401,%eax
     365:	89 85 a8 01 00 00    	mov    %eax,0x1a8(%rbp)
     36b:	8b 85 b0 01 00 00    	mov    0x1b0(%rbp),%eax
     371:	25 00 00 00 80       	and    $0x80000000,%eax
     376:	0d 02 04 80 00       	or     $0x800402,%eax
     37b:	80 a5 b4 01 00 00 c0 	andb   $0xc0,0x1b4(%rbp)
     382:	89 85 b0 01 00 00    	mov    %eax,0x1b0(%rbp)
     388:	8b 85 b8 01 00 00    	mov    0x1b8(%rbp),%eax
     38e:	80 a5 bc 01 00 00 c0 	andb   $0xc0,0x1bc(%rbp)
     395:	25 00 00 00 80       	and    $0x80000000,%eax
     39a:	80 a5 c4 01 00 00 c0 	andb   $0xc0,0x1c4(%rbp)
     3a1:	0d 03 04 80 00       	or     $0x800403,%eax
     3a6:	80 a5 cc 01 00 00 c0 	andb   $0xc0,0x1cc(%rbp)
     3ad:	89 85 b8 01 00 00    	mov    %eax,0x1b8(%rbp)
     3b3:	8b 85 c0 01 00 00    	mov    0x1c0(%rbp),%eax
     3b9:	80 a5 d4 01 00 00 c0 	andb   $0xc0,0x1d4(%rbp)
     3c0:	25 00 00 00 80       	and    $0x80000000,%eax
     3c5:	80 a5 dc 01 00 00 c0 	andb   $0xc0,0x1dc(%rbp)
     3cc:	0d 04 04 80 00       	or     $0x800404,%eax
     3d1:	89 85 c0 01 00 00    	mov    %eax,0x1c0(%rbp)
     3d7:	8b 85 c8 01 00 00    	mov    0x1c8(%rbp),%eax
     3dd:	25 00 00 00 80       	and    $0x80000000,%eax
     3e2:	0d 05 04 80 00       	or     $0x800405,%eax
     3e7:	89 85 c8 01 00 00    	mov    %eax,0x1c8(%rbp)
     3ed:	8b 85 d0 01 00 00    	mov    0x1d0(%rbp),%eax
     3f3:	25 00 00 00 80       	and    $0x80000000,%eax
     3f8:	0d 06 04 80 00       	or     $0x800406,%eax
     3fd:	89 85 d0 01 00 00    	mov    %eax,0x1d0(%rbp)
     403:	8b 85 d8 01 00 00    	mov    0x1d8(%rbp),%eax
     409:	25 00 00 00 80       	and    $0x80000000,%eax
     40e:	0d 07 04 80 00       	or     $0x800407,%eax
     413:	89 85 d8 01 00 00    	mov    %eax,0x1d8(%rbp)
     419:	8b 85 e0 01 00 00    	mov    0x1e0(%rbp),%eax
     41f:	80 a5 e4 01 00 00 c0 	andb   $0xc0,0x1e4(%rbp)
     426:	25 00 00 00 80       	and    $0x80000000,%eax
     42b:	80 a5 ec 01 00 00 c0 	andb   $0xc0,0x1ec(%rbp)
     432:	0d 00 08 00 01       	or     $0x1000800,%eax
     437:	80 a5 f4 01 00 00 c0 	andb   $0xc0,0x1f4(%rbp)
     43e:	89 85 e0 01 00 00    	mov    %eax,0x1e0(%rbp)
     444:	8b 85 e8 01 00 00    	mov    0x1e8(%rbp),%eax
     44a:	80 a5 fc 01 00 00 c0 	andb   $0xc0,0x1fc(%rbp)
     451:	25 00 00 00 80       	and    $0x80000000,%eax
     456:	80 a5 04 02 00 00 c0 	andb   $0xc0,0x204(%rbp)
     45d:	0d 01 08 00 01       	or     $0x1000801,%eax
     462:	89 85 e8 01 00 00    	mov    %eax,0x1e8(%rbp)
     468:	8b 85 f0 01 00 00    	mov    0x1f0(%rbp),%eax
     46e:	25 00 00 00 80       	and    $0x80000000,%eax
     473:	0d 02 08 00 01       	or     $0x1000802,%eax
     478:	89 85 f0 01 00 00    	mov    %eax,0x1f0(%rbp)
     47e:	8b 85 f8 01 00 00    	mov    0x1f8(%rbp),%eax
     484:	25 00 00 00 80       	and    $0x80000000,%eax
     489:	0d 03 08 00 01       	or     $0x1000803,%eax
     48e:	89 85 f8 01 00 00    	mov    %eax,0x1f8(%rbp)
     494:	8b 85 00 02 00 00    	mov    0x200(%rbp),%eax
     49a:	25 00 00 00 80       	and    $0x80000000,%eax
     49f:	0d 04 08 00 01       	or     $0x1000804,%eax
     4a4:	89 85 00 02 00 00    	mov    %eax,0x200(%rbp)
     4aa:	8b 85 08 02 00 00    	mov    0x208(%rbp),%eax
     4b0:	25 00 00 00 80       	and    $0x80000000,%eax
     4b5:	0d 05 08 00 01       	or     $0x1000805,%eax
     4ba:	80 a5 0c 02 00 00 c0 	andb   $0xc0,0x20c(%rbp)
     4c1:	89 85 08 02 00 00    	mov    %eax,0x208(%rbp)
     4c7:	8b 85 10 02 00 00    	mov    0x210(%rbp),%eax
     4cd:	80 a5 14 02 00 00 c0 	andb   $0xc0,0x214(%rbp)
     4d4:	25 00 00 00 80       	and    $0x80000000,%eax
     4d9:	80 a5 1c 02 00 00 c0 	andb   $0xc0,0x21c(%rbp)
     4e0:	0d 06 08 00 01       	or     $0x1000806,%eax
     4e5:	89 85 10 02 00 00    	mov    %eax,0x210(%rbp)
     4eb:	8b 85 18 02 00 00    	mov    0x218(%rbp),%eax
     4f1:	25 00 00 00 80       	and    $0x80000000,%eax
     4f6:	0d 07 08 00 01       	or     $0x1000807,%eax
     4fb:	89 85 18 02 00 00    	mov    %eax,0x218(%rbp)
     501:	8b 85 20 02 00 00    	mov    0x220(%rbp),%eax
     507:	80 a5 24 02 00 00 c0 	andb   $0xc0,0x224(%rbp)
     50e:	25 00 00 00 80       	and    $0x80000000,%eax
     513:	80 a5 2c 02 00 00 c0 	andb   $0xc0,0x22c(%rbp)
     51a:	0d 00 10 00 02       	or     $0x2001000,%eax
     51f:	80 a5 34 02 00 00 c0 	andb   $0xc0,0x234(%rbp)
     526:	89 85 20 02 00 00    	mov    %eax,0x220(%rbp)
     52c:	8b 85 28 02 00 00    	mov    0x228(%rbp),%eax
     532:	80 a5 3c 02 00 00 c0 	andb   $0xc0,0x23c(%rbp)
     539:	25 00 00 00 80       	and    $0x80000000,%eax
     53e:	80 a5 44 02 00 00 c0 	andb   $0xc0,0x244(%rbp)
     545:	0d 01 10 00 02       	or     $0x2001001,%eax
     54a:	80 a5 4c 02 00 00 c0 	andb   $0xc0,0x24c(%rbp)
     551:	89 85 28 02 00 00    	mov    %eax,0x228(%rbp)
     557:	8b 85 30 02 00 00    	mov    0x230(%rbp),%eax
     55d:	80 a5 54 02 00 00 c0 	andb   $0xc0,0x254(%rbp)
     564:	25 00 00 00 80       	and    $0x80000000,%eax
     569:	80 a5 5c 02 00 00 c0 	andb   $0xc0,0x25c(%rbp)
     570:	0d 02 10 00 02       	or     $0x2001002,%eax
     575:	89 85 30 02 00 00    	mov    %eax,0x230(%rbp)
     57b:	8b 85 38 02 00 00    	mov    0x238(%rbp),%eax
     581:	25 00 00 00 80       	and    $0x80000000,%eax
     586:	0d 03 10 00 02       	or     $0x2001003,%eax
     58b:	89 85 38 02 00 00    	mov    %eax,0x238(%rbp)
     591:	8b 85 40 02 00 00    	mov    0x240(%rbp),%eax
     597:	25 00 00 00 80       	and    $0x80000000,%eax
     59c:	0d 04 10 00 02       	or     $0x2001004,%eax
     5a1:	89 85 40 02 00 00    	mov    %eax,0x240(%rbp)
     5a7:	8b 85 48 02 00 00    	mov    0x248(%rbp),%eax
     5ad:	25 00 00 00 80       	and    $0x80000000,%eax
     5b2:	0d 05 10 00 02       	or     $0x2001005,%eax
     5b7:	89 85 48 02 00 00    	mov    %eax,0x248(%rbp)
     5bd:	8b 85 50 02 00 00    	mov    0x250(%rbp),%eax
     5c3:	25 00 00 00 80       	and    $0x80000000,%eax
     5c8:	0d 06 10 00 02       	or     $0x2001006,%eax
     5cd:	89 85 50 02 00 00    	mov    %eax,0x250(%rbp)
     5d3:	8b 85 58 02 00 00    	mov    0x258(%rbp),%eax
     5d9:	25 00 00 00 80       	and    $0x80000000,%eax
     5de:	0d 07 10 00 02       	or     $0x2001007,%eax
     5e3:	89 85 58 02 00 00    	mov    %eax,0x258(%rbp)
     5e9:	48 8d 85 a8 01 00 00 	lea    0x1a8(%rbp),%rax
     5f0:	66 48 0f 6e e0       	movq   %rax,%xmm4
     5f5:	48 8d 50 10          	lea    0x10(%rax),%rdx
     5f9:	48 8d 58 08          	lea    0x8(%rax),%rbx
     5fd:	66 0f 6c c4          	punpcklqdq %xmm4,%xmm0
     601:	66 48 0f 6e ea       	movq   %rdx,%xmm5
     606:	48 8d 48 18          	lea    0x18(%rax),%rcx
     60a:	0f 11 85 60 02 00 00 	movups %xmm0,0x260(%rbp)
     611:	66 48 0f 6e c3       	movq   %rbx,%xmm0
     616:	48 8d 50 20          	lea    0x20(%rax),%rdx
     61a:	48 8d 58 28          	lea    0x28(%rax),%rbx
     61e:	66 0f 6c c5          	punpcklqdq %xmm5,%xmm0
     622:	66 48 0f 6e f2       	movq   %rdx,%xmm6
     627:	48 8d 50 30          	lea    0x30(%rax),%rdx
     62b:	0f 11 85 70 02 00 00 	movups %xmm0,0x270(%rbp)
     632:	66 48 0f 6e c1       	movq   %rcx,%xmm0
     637:	66 48 0f 6e fa       	movq   %rdx,%xmm7
     63c:	48 8d 48 38          	lea    0x38(%rax),%rcx
     640:	66 0f 6c c6          	punpcklqdq %xmm6,%xmm0
     644:	48 8d 50 40          	lea    0x40(%rax),%rdx
     648:	48 8d b8 88 00 00 00 	lea    0x88(%rax),%rdi
     64f:	0f 11 85 80 02 00 00 	movups %xmm0,0x280(%rbp)
     656:	66 48 0f 6e c3       	movq   %rbx,%xmm0
     65b:	48 8d 58 48          	lea    0x48(%rax),%rbx
     65f:	66 48 0f 6e d2       	movq   %rdx,%xmm2
     664:	66 0f 6c c7          	punpcklqdq %xmm7,%xmm0
     668:	48 8d 50 50          	lea    0x50(%rax),%rdx
     66c:	0f 11 85 90 02 00 00 	movups %xmm0,0x290(%rbp)
     673:	66 48 0f 6e c1       	movq   %rcx,%xmm0
     678:	48 8d 48 58          	lea    0x58(%rax),%rcx
     67c:	66 48 0f 6e da       	movq   %rdx,%xmm3
     681:	66 0f 6c c2          	punpcklqdq %xmm2,%xmm0
     685:	48 8d 50 60          	lea    0x60(%rax),%rdx
     689:	0f 11 85 a0 02 00 00 	movups %xmm0,0x2a0(%rbp)
     690:	66 48 0f 6e c3       	movq   %rbx,%xmm0
     695:	48 8d 58 68          	lea    0x68(%rax),%rbx
     699:	66 48 0f 6e e2       	movq   %rdx,%xmm4
     69e:	66 0f 6c c3          	punpcklqdq %xmm3,%xmm0
     6a2:	48 8d 50 70          	lea    0x70(%rax),%rdx
     6a6:	0f 11 85 b0 02 00 00 	movups %xmm0,0x2b0(%rbp)
     6ad:	66 48 0f 6e c1       	movq   %rcx,%xmm0
     6b2:	48 8d 48 78          	lea    0x78(%rax),%rcx
     6b6:	66 48 0f 6e ea       	movq   %rdx,%xmm5
     6bb:	66 0f 6c c4          	punpcklqdq %xmm4,%xmm0
     6bf:	48 8d 90 80 00 00 00 	lea    0x80(%rax),%rdx
     6c6:	0f 11 85 c0 02 00 00 	movups %xmm0,0x2c0(%rbp)
     6cd:	66 48 0f 6e c3       	movq   %rbx,%xmm0
     6d2:	66 48 0f 6e f2       	movq   %rdx,%xmm6
     6d7:	48 8d 90 90 00 00 00 	lea    0x90(%rax),%rdx
     6de:	66 0f 6c c5          	punpcklqdq %xmm5,%xmm0
     6e2:	66 48 0f 6e fa       	movq   %rdx,%xmm7
     6e7:	48 8d 98 98 00 00 00 	lea    0x98(%rax),%rbx
     6ee:	0f 11 85 d0 02 00 00 	movups %xmm0,0x2d0(%rbp)
     6f5:	66 48 0f 6e c1       	movq   %rcx,%xmm0
     6fa:	48 8d 90 a0 00 00 00 	lea    0xa0(%rax),%rdx
     701:	66 0f 6c c6          	punpcklqdq %xmm6,%xmm0
     705:	66 48 0f 6e d2       	movq   %rdx,%xmm2
     70a:	48 8d 90 b0 00 00 00 	lea    0xb0(%rax),%rdx
     711:	48 05 a8 00 00 00    	add    $0xa8,%rax
     717:	0f 11 85 e0 02 00 00 	movups %xmm0,0x2e0(%rbp)
     71e:	66 48 0f 6e c7       	movq   %rdi,%xmm0
     723:	66 48 0f 6e da       	movq   %rdx,%xmm3
     728:	66 0f 6c c7          	punpcklqdq %xmm7,%xmm0
     72c:	80 a5 24 03 00 00 c0 	andb   $0xc0,0x324(%rbp)
     733:	0f 11 85 f0 02 00 00 	movups %xmm0,0x2f0(%rbp)
     73a:	66 48 0f 6e c3       	movq   %rbx,%xmm0
     73f:	66 0f 6c c2          	punpcklqdq %xmm2,%xmm0
     743:	80 a5 2c 03 00 00 c0 	andb   $0xc0,0x32c(%rbp)
     74a:	0f 11 85 00 03 00 00 	movups %xmm0,0x300(%rbp)
     751:	66 48 0f 6e c0       	movq   %rax,%xmm0
     756:	8b 85 20 03 00 00    	mov    0x320(%rbp),%eax
     75c:	66 0f 6c c3          	punpcklqdq %xmm3,%xmm0
     760:	80 a5 34 03 00 00 c0 	andb   $0xc0,0x334(%rbp)
     767:	25 00 00 00 80       	and    $0x80000000,%eax
     76c:	80 a5 3c 03 00 00 c0 	andb   $0xc0,0x33c(%rbp)
     773:	0d 80 00 20 00       	or     $0x200080,%eax
     778:	80 a5 44 03 00 00 c0 	andb   $0xc0,0x344(%rbp)
     77f:	89 85 20 03 00 00    	mov    %eax,0x320(%rbp)
     785:	8b 85 28 03 00 00    	mov    0x328(%rbp),%eax
     78b:	0f 11 85 10 03 00 00 	movups %xmm0,0x310(%rbp)
     792:	25 00 00 00 80       	and    $0x80000000,%eax
     797:	0d 81 00 20 00       	or     $0x200081,%eax
     79c:	89 85 28 03 00 00    	mov    %eax,0x328(%rbp)
     7a2:	8b 85 30 03 00 00    	mov    0x330(%rbp),%eax
     7a8:	25 00 00 00 80       	and    $0x80000000,%eax
     7ad:	0d 82 00 20 00       	or     $0x200082,%eax
     7b2:	89 85 30 03 00 00    	mov    %eax,0x330(%rbp)
     7b8:	8b 85 38 03 00 00    	mov    0x338(%rbp),%eax
     7be:	25 00 00 00 80       	and    $0x80000000,%eax
     7c3:	0d 83 00 20 00       	or     $0x200083,%eax
     7c8:	89 85 38 03 00 00    	mov    %eax,0x338(%rbp)
     7ce:	8b 85 40 03 00 00    	mov    0x340(%rbp),%eax
     7d4:	25 00 00 00 80       	and    $0x80000000,%eax
     7d9:	0d 84 00 20 00       	or     $0x200084,%eax
     7de:	89 85 40 03 00 00    	mov    %eax,0x340(%rbp)
     7e4:	8b 85 48 03 00 00    	mov    0x348(%rbp),%eax
     7ea:	25 00 00 00 80       	and    $0x80000000,%eax
     7ef:	0d 85 00 20 00       	or     $0x200085,%eax
     7f4:	89 85 48 03 00 00    	mov    %eax,0x348(%rbp)
     7fa:	8b 85 50 03 00 00    	mov    0x350(%rbp),%eax
     800:	80 a5 4c 03 00 00 c0 	andb   $0xc0,0x34c(%rbp)
     807:	25 00 00 00 80       	and    $0x80000000,%eax
     80c:	80 a5 54 03 00 00 c0 	andb   $0xc0,0x354(%rbp)
     813:	0d 86 00 20 00       	or     $0x200086,%eax
     818:	80 a5 5c 03 00 00 c0 	andb   $0xc0,0x35c(%rbp)
     81f:	89 85 50 03 00 00    	mov    %eax,0x350(%rbp)
     825:	8b 85 58 03 00 00    	mov    0x358(%rbp),%eax
     82b:	80 a5 64 03 00 00 c0 	andb   $0xc0,0x364(%rbp)
     832:	25 00 00 00 80       	and    $0x80000000,%eax
     837:	80 a5 6c 03 00 00 c0 	andb   $0xc0,0x36c(%rbp)
     83e:	0d 87 00 20 00       	or     $0x200087,%eax
     843:	89 85 58 03 00 00    	mov    %eax,0x358(%rbp)
     849:	8b 85 60 03 00 00    	mov    0x360(%rbp),%eax
     84f:	25 00 00 00 80       	and    $0x80000000,%eax
     854:	0d 80 00 10 00       	or     $0x100080,%eax
     859:	89 85 60 03 00 00    	mov    %eax,0x360(%rbp)
     85f:	8b 85 68 03 00 00    	mov    0x368(%rbp),%eax
     865:	25 00 00 00 80       	and    $0x80000000,%eax
     86a:	0d 81 00 10 00       	or     $0x100081,%eax
     86f:	89 85 68 03 00 00    	mov    %eax,0x368(%rbp)
     875:	8b 85 70 03 00 00    	mov    0x370(%rbp),%eax
     87b:	25 00 00 00 80       	and    $0x80000000,%eax
     880:	0d 82 00 10 00       	or     $0x100082,%eax
     885:	80 a5 74 03 00 00 c0 	andb   $0xc0,0x374(%rbp)
     88c:	89 85 70 03 00 00    	mov    %eax,0x370(%rbp)
     892:	8b 85 78 03 00 00    	mov    0x378(%rbp),%eax
     898:	80 a5 7c 03 00 00 c0 	andb   $0xc0,0x37c(%rbp)
     89f:	25 00 00 00 80       	and    $0x80000000,%eax
     8a4:	80 a5 84 03 00 00 c0 	andb   $0xc0,0x384(%rbp)
     8ab:	0d 83 00 10 00       	or     $0x100083,%eax
     8b0:	89 85 78 03 00 00    	mov    %eax,0x378(%rbp)
     8b6:	8b 85 80 03 00 00    	mov    0x380(%rbp),%eax
     8bc:	25 00 00 00 80       	and    $0x80000000,%eax
     8c1:	0d 84 00 10 00       	or     $0x100084,%eax
     8c6:	89 85 80 03 00 00    	mov    %eax,0x380(%rbp)
     8cc:	8b 85 88 03 00 00    	mov    0x388(%rbp),%eax
     8d2:	25 00 00 00 80       	and    $0x80000000,%eax
     8d7:	0d 85 00 10 00       	or     $0x100085,%eax
     8dc:	89 85 88 03 00 00    	mov    %eax,0x388(%rbp)
     8e2:	80 a5 8c 03 00 00 c0 	andb   $0xc0,0x38c(%rbp)
     8e9:	8b 85 90 03 00 00    	mov    0x390(%rbp),%eax
     8ef:	80 a5 94 03 00 00 c0 	andb   $0xc0,0x394(%rbp)
     8f6:	25 00 00 00 80       	and    $0x80000000,%eax
     8fb:	80 a5 9c 03 00 00 c0 	andb   $0xc0,0x39c(%rbp)
     902:	0d 86 00 10 00       	or     $0x100086,%eax
     907:	80 a5 a4 03 00 00 c0 	andb   $0xc0,0x3a4(%rbp)
     90e:	89 85 90 03 00 00    	mov    %eax,0x390(%rbp)
     914:	8b 85 98 03 00 00    	mov    0x398(%rbp),%eax
     91a:	80 a5 ac 03 00 00 c0 	andb   $0xc0,0x3ac(%rbp)
     921:	25 00 00 00 80       	and    $0x80000000,%eax
     926:	80 a5 b4 03 00 00 c0 	andb   $0xc0,0x3b4(%rbp)
     92d:	0d 87 00 10 00       	or     $0x100087,%eax
     932:	80 a5 bc 03 00 00 c0 	andb   $0xc0,0x3bc(%rbp)
     939:	89 85 98 03 00 00    	mov    %eax,0x398(%rbp)
     93f:	8b 85 a0 03 00 00    	mov    0x3a0(%rbp),%eax
     945:	80 a5 c4 03 00 00 c0 	andb   $0xc0,0x3c4(%rbp)
     94c:	25 00 00 00 80       	and    $0x80000000,%eax
     951:	0d 80 00 08 00       	or     $0x80080,%eax
     956:	89 85 a0 03 00 00    	mov    %eax,0x3a0(%rbp)
     95c:	8b 85 a8 03 00 00    	mov    0x3a8(%rbp),%eax
     962:	25 00 00 00 80       	and    $0x80000000,%eax
     967:	0d 81 00 08 00       	or     $0x80081,%eax
     96c:	89 85 a8 03 00 00    	mov    %eax,0x3a8(%rbp)
     972:	8b 85 b0 03 00 00    	mov    0x3b0(%rbp),%eax
     978:	25 00 00 00 80       	and    $0x80000000,%eax
     97d:	0d 82 00 08 00       	or     $0x80082,%eax
     982:	89 85 b0 03 00 00    	mov    %eax,0x3b0(%rbp)
     988:	8b 85 b8 03 00 00    	mov    0x3b8(%rbp),%eax
     98e:	25 00 00 00 80       	and    $0x80000000,%eax
     993:	0d 83 00 08 00       	or     $0x80083,%eax
     998:	89 85 b8 03 00 00    	mov    %eax,0x3b8(%rbp)
     99e:	8b 85 c0 03 00 00    	mov    0x3c0(%rbp),%eax
     9a4:	25 00 00 00 80       	and    $0x80000000,%eax
     9a9:	0d 84 00 08 00       	or     $0x80084,%eax
     9ae:	89 85 c0 03 00 00    	mov    %eax,0x3c0(%rbp)
     9b4:	8b 85 c8 03 00 00    	mov    0x3c8(%rbp),%eax
     9ba:	25 00 00 00 80       	and    $0x80000000,%eax
     9bf:	0d 85 00 08 00       	or     $0x80085,%eax
     9c4:	89 85 c8 03 00 00    	mov    %eax,0x3c8(%rbp)
     9ca:	80 a5 cc 03 00 00 c0 	andb   $0xc0,0x3cc(%rbp)
     9d1:	8b 85 d0 03 00 00    	mov    0x3d0(%rbp),%eax
     9d7:	80 a5 d4 03 00 00 c0 	andb   $0xc0,0x3d4(%rbp)
     9de:	25 00 00 00 80       	and    $0x80000000,%eax
     9e3:	80 a5 dc 03 00 00 c0 	andb   $0xc0,0x3dc(%rbp)
     9ea:	0d 86 00 08 00       	or     $0x80086,%eax
     9ef:	c7 85 e0 03 00 00 00 	movl   $0x0,0x3e0(%rbp)
     9f6:	00 00 00 
     9f9:	89 85 d0 03 00 00    	mov    %eax,0x3d0(%rbp)
     9ff:	8b 85 d8 03 00 00    	mov    0x3d8(%rbp),%eax
     a05:	c6 85 e4 03 00 00 00 	movb   $0x0,0x3e4(%rbp)
     a0c:	25 00 00 00 80       	and    $0x80000000,%eax
     a11:	c7 85 e8 03 00 00 08 	movl   $0x8,0x3e8(%rbp)
     a18:	00 00 00 
     a1b:	0d 87 00 08 00       	or     $0x80087,%eax
     a20:	c6 85 ec 03 00 00 00 	movb   $0x0,0x3ec(%rbp)
     a27:	89 85 d8 03 00 00    	mov    %eax,0x3d8(%rbp)
     a2d:	c7 85 f0 03 00 00 10 	movl   $0x10,0x3f0(%rbp)
     a34:	00 00 00 
     a37:	c6 85 f4 03 00 00 00 	movb   $0x0,0x3f4(%rbp)
     a3e:	c7 85 f8 03 00 00 20 	movl   $0x20,0x3f8(%rbp)
     a45:	00 00 00 
     a48:	c6 85 fc 03 00 00 00 	movb   $0x0,0x3fc(%rbp)
     a4f:	c7 85 00 04 00 00 40 	movl   $0x40,0x400(%rbp)
     a56:	00 00 00 
     a59:	c6 85 04 04 00 00 00 	movb   $0x0,0x404(%rbp)
     a60:	c7 85 08 04 00 00 80 	movl   $0x80,0x408(%rbp)
     a67:	00 00 00 
     a6a:	c6 85 0c 04 00 00 00 	movb   $0x0,0x40c(%rbp)
     a71:	c7 85 10 04 00 00 00 	movl   $0x100,0x410(%rbp)
     a78:	01 00 00 
     a7b:	c6 85 14 04 00 00 00 	movb   $0x0,0x414(%rbp)
     a82:	c7 85 18 04 00 00 00 	movl   $0x200,0x418(%rbp)
     a89:	02 00 00 
     a8c:	c6 85 1c 04 00 00 00 	movb   $0x0,0x41c(%rbp)
     a93:	c7 85 20 04 00 00 00 	movl   $0x0,0x420(%rbp)
     a9a:	00 00 00 
     a9d:	c6 85 24 04 00 00 01 	movb   $0x1,0x424(%rbp)
     aa4:	c7 85 28 04 00 00 80 	movl   $0x80,0x428(%rbp)
     aab:	00 00 00 
     aae:	c6 85 2c 04 00 00 01 	movb   $0x1,0x42c(%rbp)
     ab5:	c7 85 30 04 00 00 00 	movl   $0x100,0x430(%rbp)
     abc:	01 00 00 
     abf:	c6 85 34 04 00 00 01 	movb   $0x1,0x434(%rbp)
     ac6:	c7 85 38 04 00 00 00 	movl   $0x200,0x438(%rbp)
     acd:	02 00 00 
     ad0:	c6 85 3c 04 00 00 01 	movb   $0x1,0x43c(%rbp)
     ad7:	8b 85 40 04 00 00    	mov    0x440(%rbp),%eax
     add:	80 a5 44 04 00 00 c0 	andb   $0xc0,0x444(%rbp)
     ae4:	25 00 00 00 80       	and    $0x80000000,%eax
     ae9:	80 a5 4c 04 00 00 c0 	andb   $0xc0,0x44c(%rbp)
     af0:	0d 00 02 20 00       	or     $0x200200,%eax
     af5:	80 a5 54 04 00 00 c0 	andb   $0xc0,0x454(%rbp)
     afc:	89 85 40 04 00 00    	mov    %eax,0x440(%rbp)
     b02:	8b 85 48 04 00 00    	mov    0x448(%rbp),%eax
     b08:	80 a5 5c 04 00 00 c0 	andb   $0xc0,0x45c(%rbp)
     b0f:	25 00 00 00 80       	and    $0x80000000,%eax
     b14:	80 a5 64 04 00 00 c0 	andb   $0xc0,0x464(%rbp)
     b1b:	0d 01 02 20 00       	or     $0x200201,%eax
     b20:	80 a5 6c 04 00 00 c0 	andb   $0xc0,0x46c(%rbp)
     b27:	89 85 48 04 00 00    	mov    %eax,0x448(%rbp)
     b2d:	8b 85 50 04 00 00    	mov    0x450(%rbp),%eax
     b33:	80 a5 74 04 00 00 c0 	andb   $0xc0,0x474(%rbp)
     b3a:	25 00 00 00 80       	and    $0x80000000,%eax
     b3f:	0d 02 02 20 00       	or     $0x200202,%eax
     b44:	89 85 50 04 00 00    	mov    %eax,0x450(%rbp)
     b4a:	8b 85 58 04 00 00    	mov    0x458(%rbp),%eax
     b50:	25 00 00 00 80       	and    $0x80000000,%eax
     b55:	0d 03 02 20 00       	or     $0x200203,%eax
     b5a:	89 85 58 04 00 00    	mov    %eax,0x458(%rbp)
     b60:	8b 85 60 04 00 00    	mov    0x460(%rbp),%eax
     b66:	25 00 00 00 80       	and    $0x80000000,%eax
     b6b:	0d 04 02 20 00       	or     $0x200204,%eax
     b70:	89 85 60 04 00 00    	mov    %eax,0x460(%rbp)
     b76:	8b 85 68 04 00 00    	mov    0x468(%rbp),%eax
     b7c:	25 00 00 00 80       	and    $0x80000000,%eax
     b81:	0d 05 02 20 00       	or     $0x200205,%eax
     b86:	89 85 68 04 00 00    	mov    %eax,0x468(%rbp)
     b8c:	8b 85 70 04 00 00    	mov    0x470(%rbp),%eax
     b92:	25 00 00 00 80       	and    $0x80000000,%eax
     b97:	0d 06 02 20 00       	or     $0x200206,%eax
     b9c:	89 85 70 04 00 00    	mov    %eax,0x470(%rbp)
     ba2:	8b 85 78 04 00 00    	mov    0x478(%rbp),%eax
     ba8:	25 00 00 00 80       	and    $0x80000000,%eax
     bad:	0d 07 02 20 00       	or     $0x200207,%eax
     bb2:	80 a5 7c 04 00 00 c0 	andb   $0xc0,0x47c(%rbp)
     bb9:	89 85 78 04 00 00    	mov    %eax,0x478(%rbp)
     bbf:	8b 85 80 04 00 00    	mov    0x480(%rbp),%eax
     bc5:	80 a5 84 04 00 00 c0 	andb   $0xc0,0x484(%rbp)
     bcc:	25 00 00 00 80       	and    $0x80000000,%eax
     bd1:	80 a5 8c 04 00 00 c0 	andb   $0xc0,0x48c(%rbp)
     bd8:	0d 00 20 40 00       	or     $0x402000,%eax
     bdd:	80 a5 94 04 00 00 c0 	andb   $0xc0,0x494(%rbp)
     be4:	89 85 80 04 00 00    	mov    %eax,0x480(%rbp)
     bea:	8b 85 88 04 00 00    	mov    0x488(%rbp),%eax
     bf0:	80 a5 9c 04 00 00 c0 	andb   $0xc0,0x49c(%rbp)
     bf7:	25 00 00 00 80       	and    $0x80000000,%eax
     bfc:	80 a5 a4 04 00 00 c0 	andb   $0xc0,0x4a4(%rbp)
     c03:	0d 01 20 40 00       	or     $0x402001,%eax
     c08:	80 a5 ac 04 00 00 c0 	andb   $0xc0,0x4ac(%rbp)
     c0f:	89 85 88 04 00 00    	mov    %eax,0x488(%rbp)
     c15:	8b 85 90 04 00 00    	mov    0x490(%rbp),%eax
     c1b:	80 a5 b4 04 00 00 c0 	andb   $0xc0,0x4b4(%rbp)
     c22:	25 00 00 00 80       	and    $0x80000000,%eax
     c27:	80 a5 bc 04 00 00 c0 	andb   $0xc0,0x4bc(%rbp)
     c2e:	0d 02 20 40 00       	or     $0x402002,%eax
     c33:	89 85 90 04 00 00    	mov    %eax,0x490(%rbp)
     c39:	8b 85 98 04 00 00    	mov    0x498(%rbp),%eax
     c3f:	25 00 00 00 80       	and    $0x80000000,%eax
     c44:	0d 03 20 40 00       	or     $0x402003,%eax
     c49:	89 85 98 04 00 00    	mov    %eax,0x498(%rbp)
     c4f:	8b 85 a0 04 00 00    	mov    0x4a0(%rbp),%eax
     c55:	25 00 00 00 80       	and    $0x80000000,%eax
     c5a:	0d 04 20 40 00       	or     $0x402004,%eax
     c5f:	89 85 a0 04 00 00    	mov    %eax,0x4a0(%rbp)
     c65:	8b 85 a8 04 00 00    	mov    0x4a8(%rbp),%eax
     c6b:	25 00 00 00 80       	and    $0x80000000,%eax
     c70:	0d 05 20 40 00       	or     $0x402005,%eax
     c75:	89 85 a8 04 00 00    	mov    %eax,0x4a8(%rbp)
     c7b:	8b 85 b0 04 00 00    	mov    0x4b0(%rbp),%eax
     c81:	25 00 00 00 80       	and    $0x80000000,%eax
     c86:	0d 06 20 40 00       	or     $0x402006,%eax
     c8b:	89 85 b0 04 00 00    	mov    %eax,0x4b0(%rbp)
     c91:	8b 85 b8 04 00 00    	mov    0x4b8(%rbp),%eax
     c97:	25 00 00 00 80       	and    $0x80000000,%eax
     c9c:	0d 07 20 40 00       	or     $0x402007,%eax
     ca1:	89 85 b8 04 00 00    	mov    %eax,0x4b8(%rbp)
     ca7:	8b 85 c0 04 00 00    	mov    0x4c0(%rbp),%eax
     cad:	66 0f 6f 05 00 00 00 	movdqa 0x0(%rip),%xmm0        # cb5 <_GLOBAL__sub_I_mcl.cpp+0xcb5>
     cb4:	00 
     cb5:	25 00 00 00 80       	and    $0x80000000,%eax
     cba:	0d 00 40 80 00       	or     $0x804000,%eax
     cbf:	89 85 c0 04 00 00    	mov    %eax,0x4c0(%rbp)
     cc5:	48 8b 05 00 00 00 00 	mov    0x0(%rip),%rax        # ccc <_GLOBAL__sub_I_mcl.cpp+0xccc>
     ccc:	8b 90 c8 04 00 00    	mov    0x4c8(%rax),%edx
     cd2:	80 a0 c4 04 00 00 c0 	andb   $0xc0,0x4c4(%rax)
     cd9:	48 89 c6             	mov    %rax,%rsi
     cdc:	80 a0 cc 04 00 00 c0 	andb   $0xc0,0x4cc(%rax)
     ce3:	48 8d 8e 58 06 00 00 	lea    0x658(%rsi),%rcx
     cea:	48 8d be 68 06 00 00 	lea    0x668(%rsi),%rdi
     cf1:	81 e2 00 00 00 80    	and    $0x80000000,%edx
     cf7:	0f 11 80 e0 04 00 00 	movups %xmm0,0x4e0(%rax)
     cfe:	66 48 0f 6e c1       	movq   %rcx,%xmm0
     d03:	48 8d 9e 78 06 00 00 	lea    0x678(%rsi),%rbx
     d0a:	81 ca 01 40 80 00    	or     $0x804001,%edx
     d10:	48 8d 8e 88 06 00 00 	lea    0x688(%rsi),%rcx
     d17:	c7 80 f0 04 00 00 04 	movl   $0x4,0x4f0(%rax)
     d1e:	00 00 00 
     d21:	89 90 c8 04 00 00    	mov    %edx,0x4c8(%rax)
     d27:	8b 90 d0 04 00 00    	mov    0x4d0(%rax),%edx
     d2d:	81 e2 00 00 00 80    	and    $0x80000000,%edx
     d33:	81 ca 02 40 80 00    	or     $0x804002,%edx
     d39:	80 a0 d4 04 00 00 c0 	andb   $0xc0,0x4d4(%rax)
     d40:	89 90 d0 04 00 00    	mov    %edx,0x4d0(%rax)
     d46:	8b 90 d8 04 00 00    	mov    0x4d8(%rax),%edx
     d4c:	80 a0 dc 04 00 00 c0 	andb   $0xc0,0x4dc(%rax)
     d53:	81 e2 00 00 00 80    	and    $0x80000000,%edx
     d59:	80 a0 fc 04 00 00 c0 	andb   $0xc0,0x4fc(%rax)
     d60:	81 ca 03 40 80 00    	or     $0x804003,%edx
     d66:	80 a0 04 05 00 00 c0 	andb   $0xc0,0x504(%rax)
     d6d:	89 90 d8 04 00 00    	mov    %edx,0x4d8(%rax)
     d73:	8b 90 f8 04 00 00    	mov    0x4f8(%rax),%edx
     d79:	80 a0 0c 05 00 00 c0 	andb   $0xc0,0x50c(%rax)
     d80:	81 e2 00 00 00 80    	and    $0x80000000,%edx
     d86:	81 ca 80 00 40 00    	or     $0x400080,%edx
     d8c:	89 90 f8 04 00 00    	mov    %edx,0x4f8(%rax)
     d92:	8b 90 00 05 00 00    	mov    0x500(%rax),%edx
     d98:	81 e2 00 00 00 80    	and    $0x80000000,%edx
     d9e:	81 ca 81 00 40 00    	or     $0x400081,%edx
     da4:	89 90 00 05 00 00    	mov    %edx,0x500(%rax)
     daa:	8b 90 08 05 00 00    	mov    0x508(%rax),%edx
     db0:	81 e2 00 00 00 80    	and    $0x80000000,%edx
     db6:	81 ca 82 00 40 00    	or     $0x400082,%edx
     dbc:	89 90 08 05 00 00    	mov    %edx,0x508(%rax)
     dc2:	8b 90 10 05 00 00    	mov    0x510(%rax),%edx
     dc8:	80 a0 14 05 00 00 c0 	andb   $0xc0,0x514(%rax)
     dcf:	81 e2 00 00 00 80    	and    $0x80000000,%edx
     dd5:	80 a0 1c 05 00 00 c0 	andb   $0xc0,0x51c(%rax)
     ddc:	81 ca 83 00 40 00    	or     $0x400083,%edx
     de2:	80 a0 24 05 00 00 c0 	andb   $0xc0,0x524(%rax)
     de9:	89 90 10 05 00 00    	mov    %edx,0x510(%rax)
     def:	8b 90 18 05 00 00    	mov    0x518(%rax),%edx
     df5:	80 a0 2c 05 00 00 c0 	andb   $0xc0,0x52c(%rax)
     dfc:	81 e2 00 00 00 80    	and    $0x80000000,%edx
     e02:	80 a0 34 05 00 00 c0 	andb   $0xc0,0x534(%rax)
     e09:	81 ca 84 00 40 00    	or     $0x400084,%edx
     e0f:	80 a0 3c 05 00 00 c0 	andb   $0xc0,0x53c(%rax)
     e16:	89 90 18 05 00 00    	mov    %edx,0x518(%rax)
     e1c:	8b 90 20 05 00 00    	mov    0x520(%rax),%edx
     e22:	81 e2 00 00 00 80    	and    $0x80000000,%edx
     e28:	81 ca 85 00 40 00    	or     $0x400085,%edx
     e2e:	89 90 20 05 00 00    	mov    %edx,0x520(%rax)
     e34:	8b 90 28 05 00 00    	mov    0x528(%rax),%edx
     e3a:	81 e2 00 00 00 80    	and    $0x80000000,%edx
     e40:	81 ca 86 00 40 00    	or     $0x400086,%edx
     e46:	89 90 28 05 00 00    	mov    %edx,0x528(%rax)
     e4c:	8b 90 30 05 00 00    	mov    0x530(%rax),%edx
     e52:	81 e2 00 00 00 80    	and    $0x80000000,%edx
     e58:	81 ca 87 00 40 00    	or     $0x400087,%edx
     e5e:	89 90 30 05 00 00    	mov    %edx,0x530(%rax)
     e64:	8b 90 38 05 00 00    	mov    0x538(%rax),%edx
     e6a:	81 e2 00 00 00 80    	and    $0x80000000,%edx
     e70:	81 ca 88 00 40 00    	or     $0x400088,%edx
     e76:	89 90 38 05 00 00    	mov    %edx,0x538(%rax)
     e7c:	8b 90 40 05 00 00    	mov    0x540(%rax),%edx
     e82:	81 e2 00 00 00 80    	and    $0x80000000,%edx
     e88:	80 a0 44 05 00 00 c0 	andb   $0xc0,0x544(%rax)
     e8f:	81 ca 89 00 40 00    	or     $0x400089,%edx
     e95:	80 a0 4c 05 00 00 c0 	andb   $0xc0,0x54c(%rax)
     e9c:	89 90 40 05 00 00    	mov    %edx,0x540(%rax)
     ea2:	8b 90 48 05 00 00    	mov    0x548(%rax),%edx
     ea8:	81 e2 00 00 00 80    	and    $0x80000000,%edx
     eae:	81 ca 8a 00 40 00    	or     $0x40008a,%edx
     eb4:	89 90 48 05 00 00    	mov    %edx,0x548(%rax)
     eba:	8b 90 50 05 00 00    	mov    0x550(%rax),%edx
     ec0:	80 a0 54 05 00 00 c0 	andb   $0xc0,0x554(%rax)
     ec7:	81 e2 00 00 00 80    	and    $0x80000000,%edx
     ecd:	80 a0 5c 05 00 00 c0 	andb   $0xc0,0x55c(%rax)
     ed4:	81 ca 8b 00 40 00    	or     $0x40008b,%edx
     eda:	80 a0 64 05 00 00 c0 	andb   $0xc0,0x564(%rax)
     ee1:	89 90 50 05 00 00    	mov    %edx,0x550(%rax)
     ee7:	8b 90 58 05 00 00    	mov    0x558(%rax),%edx
     eed:	80 a0 6c 05 00 00 c0 	andb   $0xc0,0x56c(%rax)
     ef4:	81 e2 00 00 00 80    	and    $0x80000000,%edx
     efa:	80 a0 74 05 00 00 c0 	andb   $0xc0,0x574(%rax)
     f01:	81 ca 8c 00 40 00    	or     $0x40008c,%edx
     f07:	80 a0 7c 05 00 00 c0 	andb   $0xc0,0x57c(%rax)
     f0e:	89 90 58 05 00 00    	mov    %edx,0x558(%rax)
     f14:	8b 90 60 05 00 00    	mov    0x560(%rax),%edx
     f1a:	80 a0 84 05 00 00 c0 	andb   $0xc0,0x584(%rax)
     f21:	81 e2 00 00 00 80    	and    $0x80000000,%edx
     f27:	80 a0 8c 05 00 00 c0 	andb   $0xc0,0x58c(%rax)
     f2e:	81 ca 8d 00 40 00    	or     $0x40008d,%edx
     f34:	89 90 60 05 00 00    	mov    %edx,0x560(%rax)
     f3a:	8b 90 68 05 00 00    	mov    0x568(%rax),%edx
     f40:	81 e2 00 00 00 80    	and    $0x80000000,%edx
     f46:	81 ca 8e 00 40 00    	or     $0x40008e,%edx
     f4c:	89 90 68 05 00 00    	mov    %edx,0x568(%rax)
     f52:	8b 90 70 05 00 00    	mov    0x570(%rax),%edx
     f58:	81 e2 00 00 00 80    	and    $0x80000000,%edx
     f5e:	81 ca 8f 00 40 00    	or     $0x40008f,%edx
     f64:	89 90 70 05 00 00    	mov    %edx,0x570(%rax)
     f6a:	8b 90 78 05 00 00    	mov    0x578(%rax),%edx
     f70:	81 e2 00 00 00 80    	and    $0x80000000,%edx
     f76:	81 ca 88 00 20 00    	or     $0x200088,%edx
     f7c:	89 90 78 05 00 00    	mov    %edx,0x578(%rax)
     f82:	8b 90 80 05 00 00    	mov    0x580(%rax),%edx
     f88:	81 e2 00 00 00 80    	and    $0x80000000,%edx
     f8e:	81 ca 89 00 20 00    	or     $0x200089,%edx
     f94:	89 90 80 05 00 00    	mov    %edx,0x580(%rax)
     f9a:	8b 90 88 05 00 00    	mov    0x588(%rax),%edx
     fa0:	81 e2 00 00 00 80    	and    $0x80000000,%edx
     fa6:	81 ca 8a 00 20 00    	or     $0x20008a,%edx
     fac:	89 90 88 05 00 00    	mov    %edx,0x588(%rax)
     fb2:	8b 90 90 05 00 00    	mov    0x590(%rax),%edx
     fb8:	81 e2 00 00 00 80    	and    $0x80000000,%edx
     fbe:	81 ca 8b 00 20 00    	or     $0x20008b,%edx
     fc4:	80 a0 94 05 00 00 c0 	andb   $0xc0,0x594(%rax)
     fcb:	89 90 90 05 00 00    	mov    %edx,0x590(%rax)
     fd1:	8b 90 98 05 00 00    	mov    0x598(%rax),%edx
     fd7:	80 a0 9c 05 00 00 c0 	andb   $0xc0,0x59c(%rax)
     fde:	81 e2 00 00 00 80    	and    $0x80000000,%edx
     fe4:	80 a0 a4 05 00 00 c0 	andb   $0xc0,0x5a4(%rax)
     feb:	81 ca 8c 00 20 00    	or     $0x20008c,%edx
     ff1:	80 a0 ac 05 00 00 c0 	andb   $0xc0,0x5ac(%rax)
     ff8:	89 90 98 05 00 00    	mov    %edx,0x598(%rax)
     ffe:	8b 90 a0 05 00 00    	mov    0x5a0(%rax),%edx
    1004:	80 a0 b4 05 00 00 c0 	andb   $0xc0,0x5b4(%rax)
    100b:	81 e2 00 00 00 80    	and    $0x80000000,%edx
    1011:	80 a0 bc 05 00 00 c0 	andb   $0xc0,0x5bc(%rax)
    1018:	81 ca 8d 00 20 00    	or     $0x20008d,%edx
    101e:	80 a0 c4 05 00 00 c0 	andb   $0xc0,0x5c4(%rax)
    1025:	89 90 a0 05 00 00    	mov    %edx,0x5a0(%rax)
    102b:	8b 90 a8 05 00 00    	mov    0x5a8(%rax),%edx
    1031:	80 a0 cc 05 00 00 c0 	andb   $0xc0,0x5cc(%rax)
    1038:	81 e2 00 00 00 80    	and    $0x80000000,%edx
    103e:	81 ca 8e 00 20 00    	or     $0x20008e,%edx
    1044:	89 90 a8 05 00 00    	mov    %edx,0x5a8(%rax)
    104a:	8b 90 b0 05 00 00    	mov    0x5b0(%rax),%edx
    1050:	81 e2 00 00 00 80    	and    $0x80000000,%edx
    1056:	81 ca 8f 00 20 00    	or     $0x20008f,%edx
    105c:	89 90 b0 05 00 00    	mov    %edx,0x5b0(%rax)
    1062:	8b 90 b8 05 00 00    	mov    0x5b8(%rax),%edx
    1068:	81 e2 00 00 00 80    	and    $0x80000000,%edx
    106e:	81 ca 88 00 10 00    	or     $0x100088,%edx
    1074:	89 90 b8 05 00 00    	mov    %edx,0x5b8(%rax)
    107a:	8b 90 c0 05 00 00    	mov    0x5c0(%rax),%edx
    1080:	81 e2 00 00 00 80    	and    $0x80000000,%edx
    1086:	81 ca 89 00 10 00    	or     $0x100089,%edx
    108c:	89 90 c0 05 00 00    	mov    %edx,0x5c0(%rax)
    1092:	8b 90 c8 05 00 00    	mov    0x5c8(%rax),%edx
    1098:	81 e2 00 00 00 80    	and    $0x80000000,%edx
    109e:	81 ca 8a 00 10 00    	or     $0x10008a,%edx
    10a4:	89 90 c8 05 00 00    	mov    %edx,0x5c8(%rax)
    10aa:	8b 90 d0 05 00 00    	mov    0x5d0(%rax),%edx
    10b0:	80 a0 d4 05 00 00 c0 	andb   $0xc0,0x5d4(%rax)
    10b7:	81 e2 00 00 00 80    	and    $0x80000000,%edx
    10bd:	80 a0 dc 05 00 00 c0 	andb   $0xc0,0x5dc(%rax)
    10c4:	81 ca 8b 00 10 00    	or     $0x10008b,%edx
    10ca:	80 a0 e4 05 00 00 c0 	andb   $0xc0,0x5e4(%rax)
    10d1:	89 90 d0 05 00 00    	mov    %edx,0x5d0(%rax)
    10d7:	8b 90 d8 05 00 00    	mov    0x5d8(%rax),%edx
    10dd:	81 e2 00 00 00 80    	and    $0x80000000,%edx
    10e3:	81 ca 8c 00 10 00    	or     $0x10008c,%edx
    10e9:	89 90 d8 05 00 00    	mov    %edx,0x5d8(%rax)
    10ef:	8b 90 e0 05 00 00    	mov    0x5e0(%rax),%edx
    10f5:	81 e2 00 00 00 80    	and    $0x80000000,%edx
    10fb:	81 ca 8d 00 10 00    	or     $0x10008d,%edx
    1101:	89 90 e0 05 00 00    	mov    %edx,0x5e0(%rax)
    1107:	8b 90 e8 05 00 00    	mov    0x5e8(%rax),%edx
    110d:	81 e2 00 00 00 80    	and    $0x80000000,%edx
    1113:	81 ca 8e 00 10 00    	or     $0x10008e,%edx
    1119:	80 a0 ec 05 00 00 c0 	andb   $0xc0,0x5ec(%rax)
    1120:	89 90 e8 05 00 00    	mov    %edx,0x5e8(%rax)
    1126:	8b 90 f0 05 00 00    	mov    0x5f0(%rax),%edx
    112c:	80 a0 f4 05 00 00 c0 	andb   $0xc0,0x5f4(%rax)
    1133:	81 e2 00 00 00 80    	and    $0x80000000,%edx
    1139:	80 a0 fc 05 00 00 c0 	andb   $0xc0,0x5fc(%rax)
    1140:	81 ca 8f 00 10 00    	or     $0x10008f,%edx
    1146:	80 a0 04 06 00 00 c0 	andb   $0xc0,0x604(%rax)
    114d:	89 90 f0 05 00 00    	mov    %edx,0x5f0(%rax)
    1153:	8b 90 f8 05 00 00    	mov    0x5f8(%rax),%edx
    1159:	80 a0 0c 06 00 00 c0 	andb   $0xc0,0x60c(%rax)
    1160:	81 e2 00 00 00 80    	and    $0x80000000,%edx
    1166:	81 ca 88 00 08 00    	or     $0x80088,%edx
    116c:	89 90 f8 05 00 00    	mov    %edx,0x5f8(%rax)
    1172:	8b 90 00 06 00 00    	mov    0x600(%rax),%edx
    1178:	81 e2 00 00 00 80    	and    $0x80000000,%edx
    117e:	81 ca 89 00 08 00    	or     $0x80089,%edx
    1184:	89 90 00 06 00 00    	mov    %edx,0x600(%rax)
    118a:	8b 90 08 06 00 00    	mov    0x608(%rax),%edx
    1190:	81 e2 00 00 00 80    	and    $0x80000000,%edx
    1196:	81 ca 8a 00 08 00    	or     $0x8008a,%edx
    119c:	89 90 08 06 00 00    	mov    %edx,0x608(%rax)
    11a2:	8b 90 10 06 00 00    	mov    0x610(%rax),%edx
    11a8:	80 a0 14 06 00 00 c0 	andb   $0xc0,0x614(%rax)
    11af:	81 e2 00 00 00 80    	and    $0x80000000,%edx
    11b5:	80 a0 1c 06 00 00 c0 	andb   $0xc0,0x61c(%rax)
    11bc:	81 ca 8b 00 08 00    	or     $0x8008b,%edx
    11c2:	80 a0 24 06 00 00 c0 	andb   $0xc0,0x624(%rax)
    11c9:	89 90 10 06 00 00    	mov    %edx,0x610(%rax)
    11cf:	8b 90 18 06 00 00    	mov    0x618(%rax),%edx
    11d5:	80 a0 2c 06 00 00 c0 	andb   $0xc0,0x62c(%rax)
    11dc:	81 e2 00 00 00 80    	and    $0x80000000,%edx
    11e2:	80 a0 34 06 00 00 c0 	andb   $0xc0,0x634(%rax)
    11e9:	81 ca 8c 00 08 00    	or     $0x8008c,%edx
    11ef:	80 a0 3c 06 00 00 c0 	andb   $0xc0,0x63c(%rax)
    11f6:	89 90 18 06 00 00    	mov    %edx,0x618(%rax)
    11fc:	8b 90 20 06 00 00    	mov    0x620(%rax),%edx
    1202:	81 e2 00 00 00 80    	and    $0x80000000,%edx
    1208:	81 ca 8d 00 08 00    	or     $0x8008d,%edx
    120e:	89 90 20 06 00 00    	mov    %edx,0x620(%rax)
    1214:	8b 90 28 06 00 00    	mov    0x628(%rax),%edx
    121a:	81 e2 00 00 00 80    	and    $0x80000000,%edx
    1220:	81 ca 8e 00 08 00    	or     $0x8008e,%edx
    1226:	89 90 28 06 00 00    	mov    %edx,0x628(%rax)
    122c:	8b 90 30 06 00 00    	mov    0x630(%rax),%edx
    1232:	81 e2 00 00 00 80    	and    $0x80000000,%edx
    1238:	81 ca 8f 00 08 00    	or     $0x8008f,%edx
    123e:	89 90 30 06 00 00    	mov    %edx,0x630(%rax)
    1244:	8b 90 38 06 00 00    	mov    0x638(%rax),%edx
    124a:	81 e2 00 00 00 80    	and    $0x80000000,%edx
    1250:	81 ca a4 00 08 00    	or     $0x800a4,%edx
    1256:	89 90 38 06 00 00    	mov    %edx,0x638(%rax)
    125c:	8b 90 40 06 00 00    	mov    0x640(%rax),%edx
    1262:	81 e2 00 00 00 80    	and    $0x80000000,%edx
    1268:	80 a0 44 06 00 00 c0 	andb   $0xc0,0x644(%rax)
    126f:	81 ca a5 00 08 00    	or     $0x800a5,%edx
    1275:	80 a0 4c 06 00 00 c0 	andb   $0xc0,0x64c(%rax)
    127c:	89 90 40 06 00 00    	mov    %edx,0x640(%rax)
    1282:	8b 90 48 06 00 00    	mov    0x648(%rax),%edx
    1288:	81 e2 00 00 00 80    	and    $0x80000000,%edx
    128e:	81 ca a6 00 08 00    	or     $0x800a6,%edx
    1294:	89 90 48 06 00 00    	mov    %edx,0x648(%rax)
    129a:	8b 90 50 06 00 00    	mov    0x650(%rax),%edx
    12a0:	80 a0 54 06 00 00 c0 	andb   $0xc0,0x654(%rax)
    12a7:	81 e2 00 00 00 80    	and    $0x80000000,%edx
    12ad:	80 a0 5c 06 00 00 c0 	andb   $0xc0,0x65c(%rax)
    12b4:	81 ca a7 00 08 00    	or     $0x800a7,%edx
    12ba:	80 a0 64 06 00 00 c0 	andb   $0xc0,0x664(%rax)
    12c1:	89 90 50 06 00 00    	mov    %edx,0x650(%rax)
    12c7:	8b 90 58 06 00 00    	mov    0x658(%rax),%edx
    12cd:	80 a0 6c 06 00 00 c0 	andb   $0xc0,0x66c(%rax)
    12d4:	81 e2 00 00 00 80    	and    $0x80000000,%edx
    12da:	80 a0 74 06 00 00 c0 	andb   $0xc0,0x674(%rax)
    12e1:	81 ca 08 04 80 00    	or     $0x800408,%edx
    12e7:	80 a0 7c 06 00 00 c0 	andb   $0xc0,0x67c(%rax)
    12ee:	89 90 58 06 00 00    	mov    %edx,0x658(%rax)
    12f4:	8b 90 60 06 00 00    	mov    0x660(%rax),%edx
    12fa:	80 a0 84 06 00 00 c0 	andb   $0xc0,0x684(%rax)
    1301:	81 e2 00 00 00 80    	and    $0x80000000,%edx
    1307:	80 a0 8c 06 00 00 c0 	andb   $0xc0,0x68c(%rax)
    130e:	81 ca 09 04 80 00    	or     $0x800409,%edx
    1314:	89 90 60 06 00 00    	mov    %edx,0x660(%rax)
    131a:	8b 90 68 06 00 00    	mov    0x668(%rax),%edx
    1320:	81 e2 00 00 00 80    	and    $0x80000000,%edx
    1326:	81 ca 0a 04 80 00    	or     $0x80040a,%edx
    132c:	89 90 68 06 00 00    	mov    %edx,0x668(%rax)
    1332:	8b 90 70 06 00 00    	mov    0x670(%rax),%edx
    1338:	81 e2 00 00 00 80    	and    $0x80000000,%edx
    133e:	81 ca 0b 04 80 00    	or     $0x80040b,%edx
    1344:	89 90 70 06 00 00    	mov    %edx,0x670(%rax)
    134a:	8b 90 78 06 00 00    	mov    0x678(%rax),%edx
    1350:	81 e2 00 00 00 80    	and    $0x80000000,%edx
    1356:	81 ca 0c 04 80 00    	or     $0x80040c,%edx
    135c:	89 90 78 06 00 00    	mov    %edx,0x678(%rax)
    1362:	8b 90 80 06 00 00    	mov    0x680(%rax),%edx
    1368:	81 e2 00 00 00 80    	and    $0x80000000,%edx
    136e:	81 ca 0d 04 80 00    	or     $0x80040d,%edx
    1374:	89 90 80 06 00 00    	mov    %edx,0x680(%rax)
    137a:	8b 90 88 06 00 00    	mov    0x688(%rax),%edx
    1380:	81 e2 00 00 00 80    	and    $0x80000000,%edx
    1386:	81 ca 0e 04 80 00    	or     $0x80040e,%edx
    138c:	89 90 88 06 00 00    	mov    %edx,0x688(%rax)
    1392:	8b 90 90 06 00 00    	mov    0x690(%rax),%edx
    1398:	81 e2 00 00 00 80    	and    $0x80000000,%edx
    139e:	81 ca 0f 04 80 00    	or     $0x80040f,%edx
    13a4:	80 a0 94 06 00 00 c0 	andb   $0xc0,0x694(%rax)
    13ab:	89 90 90 06 00 00    	mov    %edx,0x690(%rax)
    13b1:	8b 90 98 06 00 00    	mov    0x698(%rax),%edx
    13b7:	80 a0 9c 06 00 00 c0 	andb   $0xc0,0x69c(%rax)
    13be:	81 e2 00 00 00 80    	and    $0x80000000,%edx
    13c4:	80 a0 a4 06 00 00 c0 	andb   $0xc0,0x6a4(%rax)
    13cb:	81 ca 10 04 80 00    	or     $0x800410,%edx
    13d1:	80 a0 ac 06 00 00 c0 	andb   $0xc0,0x6ac(%rax)
    13d8:	89 90 98 06 00 00    	mov    %edx,0x698(%rax)
    13de:	8b 90 a0 06 00 00    	mov    0x6a0(%rax),%edx
    13e4:	80 a0 b4 06 00 00 c0 	andb   $0xc0,0x6b4(%rax)
    13eb:	81 e2 00 00 00 80    	and    $0x80000000,%edx
    13f1:	80 a0 bc 06 00 00 c0 	andb   $0xc0,0x6bc(%rax)
    13f8:	81 ca 11 04 80 00    	or     $0x800411,%edx
    13fe:	80 a0 c4 06 00 00 c0 	andb   $0xc0,0x6c4(%rax)
    1405:	89 90 a0 06 00 00    	mov    %edx,0x6a0(%rax)
    140b:	8b 90 a8 06 00 00    	mov    0x6a8(%rax),%edx
    1411:	80 a0 cc 06 00 00 c0 	andb   $0xc0,0x6cc(%rax)
    1418:	81 e2 00 00 00 80    	and    $0x80000000,%edx
    141e:	81 ca 12 04 80 00    	or     $0x800412,%edx
    1424:	89 90 a8 06 00 00    	mov    %edx,0x6a8(%rax)
    142a:	8b 90 b0 06 00 00    	mov    0x6b0(%rax),%edx
    1430:	81 e2 00 00 00 80    	and    $0x80000000,%edx
    1436:	81 ca 13 04 80 00    	or     $0x800413,%edx
    143c:	89 90 b0 06 00 00    	mov    %edx,0x6b0(%rax)
    1442:	8b 90 b8 06 00 00    	mov    0x6b8(%rax),%edx
    1448:	81 e2 00 00 00 80    	and    $0x80000000,%edx
    144e:	81 ca 14 04 80 00    	or     $0x800414,%edx
    1454:	89 90 b8 06 00 00    	mov    %edx,0x6b8(%rax)
    145a:	8b 90 c0 06 00 00    	mov    0x6c0(%rax),%edx
    1460:	81 e2 00 00 00 80    	and    $0x80000000,%edx
    1466:	81 ca 15 04 80 00    	or     $0x800415,%edx
    146c:	89 90 c0 06 00 00    	mov    %edx,0x6c0(%rax)
    1472:	8b 90 c8 06 00 00    	mov    0x6c8(%rax),%edx
    1478:	81 e2 00 00 00 80    	and    $0x80000000,%edx
    147e:	81 ca 16 04 80 00    	or     $0x800416,%edx
    1484:	89 90 c8 06 00 00    	mov    %edx,0x6c8(%rax)
    148a:	8b 90 d0 06 00 00    	mov    0x6d0(%rax),%edx
    1490:	80 a0 d4 06 00 00 c0 	andb   $0xc0,0x6d4(%rax)
    1497:	81 e2 00 00 00 80    	and    $0x80000000,%edx
    149d:	80 a0 dc 06 00 00 c0 	andb   $0xc0,0x6dc(%rax)
    14a4:	81 ca 17 04 80 00    	or     $0x800417,%edx
    14aa:	80 a0 e4 06 00 00 c0 	andb   $0xc0,0x6e4(%rax)
    14b1:	89 90 d0 06 00 00    	mov    %edx,0x6d0(%rax)
    14b7:	8b 90 d8 06 00 00    	mov    0x6d8(%rax),%edx
    14bd:	81 e2 00 00 00 80    	and    $0x80000000,%edx
    14c3:	81 ca 18 04 80 00    	or     $0x800418,%edx
    14c9:	89 90 d8 06 00 00    	mov    %edx,0x6d8(%rax)
    14cf:	8b 90 e0 06 00 00    	mov    0x6e0(%rax),%edx
    14d5:	81 e2 00 00 00 80    	and    $0x80000000,%edx
    14db:	81 ca 19 04 80 00    	or     $0x800419,%edx
    14e1:	89 90 e0 06 00 00    	mov    %edx,0x6e0(%rax)
    14e7:	8b 90 e8 06 00 00    	mov    0x6e8(%rax),%edx
    14ed:	81 e2 00 00 00 80    	and    $0x80000000,%edx
    14f3:	81 ca 1a 04 80 00    	or     $0x80041a,%edx
    14f9:	80 a0 ec 06 00 00 c0 	andb   $0xc0,0x6ec(%rax)
    1500:	89 90 e8 06 00 00    	mov    %edx,0x6e8(%rax)
    1506:	8b 90 f0 06 00 00    	mov    0x6f0(%rax),%edx
    150c:	80 a0 f4 06 00 00 c0 	andb   $0xc0,0x6f4(%rax)
    1513:	81 e2 00 00 00 80    	and    $0x80000000,%edx
    1519:	80 a0 fc 06 00 00 c0 	andb   $0xc0,0x6fc(%rax)
    1520:	81 ca 1b 04 80 00    	or     $0x80041b,%edx
    1526:	80 a0 04 07 00 00 c0 	andb   $0xc0,0x704(%rax)
    152d:	89 90 f0 06 00 00    	mov    %edx,0x6f0(%rax)
    1533:	8b 90 f8 06 00 00    	mov    0x6f8(%rax),%edx
    1539:	80 a0 0c 07 00 00 c0 	andb   $0xc0,0x70c(%rax)
    1540:	81 e2 00 00 00 80    	and    $0x80000000,%edx
    1546:	81 ca 1c 04 80 00    	or     $0x80041c,%edx
    154c:	89 90 f8 06 00 00    	mov    %edx,0x6f8(%rax)
    1552:	8b 90 00 07 00 00    	mov    0x700(%rax),%edx
    1558:	81 e2 00 00 00 80    	and    $0x80000000,%edx
    155e:	81 ca 1d 04 80 00    	or     $0x80041d,%edx
    1564:	89 90 00 07 00 00    	mov    %edx,0x700(%rax)
    156a:	8b 90 08 07 00 00    	mov    0x708(%rax),%edx
    1570:	81 e2 00 00 00 80    	and    $0x80000000,%edx
    1576:	81 ca 1e 04 80 00    	or     $0x80041e,%edx
    157c:	89 90 08 07 00 00    	mov    %edx,0x708(%rax)
    1582:	8b 90 10 07 00 00    	mov    0x710(%rax),%edx
    1588:	80 a0 14 07 00 00 c0 	andb   $0xc0,0x714(%rax)
    158f:	81 e2 00 00 00 80    	and    $0x80000000,%edx
    1595:	80 a0 1c 07 00 00 c0 	andb   $0xc0,0x71c(%rax)
    159c:	81 ca 1f 04 80 00    	or     $0x80041f,%edx
    15a2:	80 a0 24 07 00 00 c0 	andb   $0xc0,0x724(%rax)
    15a9:	89 90 10 07 00 00    	mov    %edx,0x710(%rax)
    15af:	8b 90 18 07 00 00    	mov    0x718(%rax),%edx
    15b5:	80 a0 2c 07 00 00 c0 	andb   $0xc0,0x72c(%rax)
    15bc:	81 e2 00 00 00 80    	and    $0x80000000,%edx
    15c2:	80 a0 34 07 00 00 c0 	andb   $0xc0,0x734(%rax)
    15c9:	81 ca 08 08 00 01    	or     $0x1000808,%edx
    15cf:	80 a0 3c 07 00 00 c0 	andb   $0xc0,0x73c(%rax)
    15d6:	89 90 18 07 00 00    	mov    %edx,0x718(%rax)
    15dc:	8b 90 20 07 00 00    	mov    0x720(%rax),%edx
    15e2:	81 e2 00 00 00 80    	and    $0x80000000,%edx
    15e8:	81 ca 09 08 00 01    	or     $0x1000809,%edx
    15ee:	89 90 20 07 00 00    	mov    %edx,0x720(%rax)
    15f4:	8b 90 28 07 00 00    	mov    0x728(%rax),%edx
    15fa:	81 e2 00 00 00 80    	and    $0x80000000,%edx
    1600:	81 ca 0a 08 00 01    	or     $0x100080a,%edx
    1606:	89 90 28 07 00 00    	mov    %edx,0x728(%rax)
    160c:	8b 90 30 07 00 00    	mov    0x730(%rax),%edx
    1612:	81 e2 00 00 00 80    	and    $0x80000000,%edx
    1618:	81 ca 0b 08 00 01    	or     $0x100080b,%edx
    161e:	89 90 30 07 00 00    	mov    %edx,0x730(%rax)
    1624:	8b 90 38 07 00 00    	mov    0x738(%rax),%edx
    162a:	81 e2 00 00 00 80    	and    $0x80000000,%edx
    1630:	81 ca 0c 08 00 01    	or     $0x100080c,%edx
    1636:	89 90 38 07 00 00    	mov    %edx,0x738(%rax)
    163c:	8b 90 40 07 00 00    	mov    0x740(%rax),%edx
    1642:	81 e2 00 00 00 80    	and    $0x80000000,%edx
    1648:	80 a0 44 07 00 00 c0 	andb   $0xc0,0x744(%rax)
    164f:	81 ca 0d 08 00 01    	or     $0x100080d,%edx
    1655:	80 a0 4c 07 00 00 c0 	andb   $0xc0,0x74c(%rax)
    165c:	89 90 40 07 00 00    	mov    %edx,0x740(%rax)
    1662:	8b 90 48 07 00 00    	mov    0x748(%rax),%edx
    1668:	81 e2 00 00 00 80    	and    $0x80000000,%edx
    166e:	81 ca 0e 08 00 01    	or     $0x100080e,%edx
    1674:	89 90 48 07 00 00    	mov    %edx,0x748(%rax)
    167a:	8b 90 50 07 00 00    	mov    0x750(%rax),%edx
    1680:	80 a0 54 07 00 00 c0 	andb   $0xc0,0x754(%rax)
    1687:	81 e2 00 00 00 80    	and    $0x80000000,%edx
    168d:	80 a0 5c 07 00 00 c0 	andb   $0xc0,0x75c(%rax)
    1694:	81 ca 0f 08 00 01    	or     $0x100080f,%edx
    169a:	80 a0 64 07 00 00 c0 	andb   $0xc0,0x764(%rax)
    16a1:	89 90 50 07 00 00    	mov    %edx,0x750(%rax)
    16a7:	8b 90 58 07 00 00    	mov    0x758(%rax),%edx
    16ad:	80 a0 6c 07 00 00 c0 	andb   $0xc0,0x76c(%rax)
    16b4:	81 e2 00 00 00 80    	and    $0x80000000,%edx
    16ba:	80 a0 74 07 00 00 c0 	andb   $0xc0,0x774(%rax)
    16c1:	81 ca 10 08 00 01    	or     $0x1000810,%edx
    16c7:	80 a6 7c 07 00 00 c0 	andb   $0xc0,0x77c(%rsi)
    16ce:	89 90 58 07 00 00    	mov    %edx,0x758(%rax)
    16d4:	8b 90 60 07 00 00    	mov    0x760(%rax),%edx
    16da:	80 a6 84 07 00 00 c0 	andb   $0xc0,0x784(%rsi)
    16e1:	81 e2 00 00 00 80    	and    $0x80000000,%edx
    16e7:	80 a6 8c 07 00 00 c0 	andb   $0xc0,0x78c(%rsi)
    16ee:	81 ca 11 08 00 01    	or     $0x1000811,%edx
    16f4:	89 90 60 07 00 00    	mov    %edx,0x760(%rax)
    16fa:	8b 90 68 07 00 00    	mov    0x768(%rax),%edx
    1700:	81 e2 00 00 00 80    	and    $0x80000000,%edx
    1706:	81 ca 12 08 00 01    	or     $0x1000812,%edx
    170c:	89 90 68 07 00 00    	mov    %edx,0x768(%rax)
    1712:	8b 90 70 07 00 00    	mov    0x770(%rax),%edx
    1718:	81 e2 00 00 00 80    	and    $0x80000000,%edx
    171e:	81 ca 13 08 00 01    	or     $0x1000813,%edx
    1724:	89 90 70 07 00 00    	mov    %edx,0x770(%rax)
    172a:	8b 80 78 07 00 00    	mov    0x778(%rax),%eax
    1730:	48 8d 96 70 06 00 00 	lea    0x670(%rsi),%rdx
    1737:	66 48 0f 6e ea       	movq   %rdx,%xmm5
    173c:	48 8d 96 80 06 00 00 	lea    0x680(%rsi),%rdx
    1743:	25 00 00 00 80       	and    $0x80000000,%eax
    1748:	66 48 0f 6e f2       	movq   %rdx,%xmm6
    174d:	48 8d 96 90 06 00 00 	lea    0x690(%rsi),%rdx
    1754:	0d 14 08 00 01       	or     $0x1000814,%eax
    1759:	66 48 0f 6e fa       	movq   %rdx,%xmm7
    175e:	48 8d 96 a0 06 00 00 	lea    0x6a0(%rsi),%rdx
    1765:	89 86 78 07 00 00    	mov    %eax,0x778(%rsi)
    176b:	8b 86 80 07 00 00    	mov    0x780(%rsi),%eax
    1771:	66 48 0f 6e ca       	movq   %rdx,%xmm1
    1776:	48 8d 96 b0 06 00 00 	lea    0x6b0(%rsi),%rdx
    177d:	66 48 0f 6e d2       	movq   %rdx,%xmm2
    1782:	48 8d 96 c0 06 00 00 	lea    0x6c0(%rsi),%rdx
    1789:	25 00 00 00 80       	and    $0x80000000,%eax
    178e:	66 48 0f 6e da       	movq   %rdx,%xmm3
    1793:	48 8d 96 d0 06 00 00 	lea    0x6d0(%rsi),%rdx
    179a:	0d 15 08 00 01       	or     $0x1000815,%eax
    179f:	89 86 80 07 00 00    	mov    %eax,0x780(%rsi)
    17a5:	8b 86 88 07 00 00    	mov    0x788(%rsi),%eax
    17ab:	25 00 00 00 80       	and    $0x80000000,%eax
    17b0:	0d 16 08 00 01       	or     $0x1000816,%eax
    17b5:	89 86 88 07 00 00    	mov    %eax,0x788(%rsi)
    17bb:	8b 86 90 07 00 00    	mov    0x790(%rsi),%eax
    17c1:	25 00 00 00 80       	and    $0x80000000,%eax
    17c6:	0d 17 08 00 01       	or     $0x1000817,%eax
    17cb:	80 a6 94 07 00 00 c0 	andb   $0xc0,0x794(%rsi)
    17d2:	89 86 90 07 00 00    	mov    %eax,0x790(%rsi)
    17d8:	8b 86 98 07 00 00    	mov    0x798(%rsi),%eax
    17de:	80 a6 9c 07 00 00 c0 	andb   $0xc0,0x79c(%rsi)
    17e5:	25 00 00 00 80       	and    $0x80000000,%eax
    17ea:	80 a6 a4 07 00 00 c0 	andb   $0xc0,0x7a4(%rsi)
    17f1:	0d 18 08 00 01       	or     $0x1000818,%eax
    17f6:	80 a6 ac 07 00 00 c0 	andb   $0xc0,0x7ac(%rsi)
    17fd:	89 86 98 07 00 00    	mov    %eax,0x798(%rsi)
    1803:	8b 86 a0 07 00 00    	mov    0x7a0(%rsi),%eax
    1809:	80 a6 b4 07 00 00 c0 	andb   $0xc0,0x7b4(%rsi)
    1810:	25 00 00 00 80       	and    $0x80000000,%eax
    1815:	80 a6 bc 07 00 00 c0 	andb   $0xc0,0x7bc(%rsi)
    181c:	0d 19 08 00 01       	or     $0x1000819,%eax
    1821:	80 a6 c4 07 00 00 c0 	andb   $0xc0,0x7c4(%rsi)
    1828:	89 86 a0 07 00 00    	mov    %eax,0x7a0(%rsi)
    182e:	8b 86 a8 07 00 00    	mov    0x7a8(%rsi),%eax
    1834:	80 a6 cc 07 00 00 c0 	andb   $0xc0,0x7cc(%rsi)
    183b:	25 00 00 00 80       	and    $0x80000000,%eax
    1840:	0d 1a 08 00 01       	or     $0x100081a,%eax
    1845:	89 86 a8 07 00 00    	mov    %eax,0x7a8(%rsi)
    184b:	8b 86 b0 07 00 00    	mov    0x7b0(%rsi),%eax
    1851:	25 00 00 00 80       	and    $0x80000000,%eax
    1856:	0d 1b 08 00 01       	or     $0x100081b,%eax
    185b:	89 86 b0 07 00 00    	mov    %eax,0x7b0(%rsi)
    1861:	8b 86 b8 07 00 00    	mov    0x7b8(%rsi),%eax
    1867:	25 00 00 00 80       	and    $0x80000000,%eax
    186c:	0d 1c 08 00 01       	or     $0x100081c,%eax
    1871:	89 86 b8 07 00 00    	mov    %eax,0x7b8(%rsi)
    1877:	8b 86 c0 07 00 00    	mov    0x7c0(%rsi),%eax
    187d:	25 00 00 00 80       	and    $0x80000000,%eax
    1882:	0d 1d 08 00 01       	or     $0x100081d,%eax
    1887:	89 86 c0 07 00 00    	mov    %eax,0x7c0(%rsi)
    188d:	8b 86 c8 07 00 00    	mov    0x7c8(%rsi),%eax
    1893:	25 00 00 00 80       	and    $0x80000000,%eax
    1898:	0d 1e 08 00 01       	or     $0x100081e,%eax
    189d:	89 86 c8 07 00 00    	mov    %eax,0x7c8(%rsi)
    18a3:	8b 86 d0 07 00 00    	mov    0x7d0(%rsi),%eax
    18a9:	80 a6 d4 07 00 00 c0 	andb   $0xc0,0x7d4(%rsi)
    18b0:	25 00 00 00 80       	and    $0x80000000,%eax
    18b5:	80 a6 dc 07 00 00 c0 	andb   $0xc0,0x7dc(%rsi)
    18bc:	0d 1f 08 00 01       	or     $0x100081f,%eax
    18c1:	80 a6 e4 07 00 00 c0 	andb   $0xc0,0x7e4(%rsi)
    18c8:	89 86 d0 07 00 00    	mov    %eax,0x7d0(%rsi)
    18ce:	8b 86 d8 07 00 00    	mov    0x7d8(%rsi),%eax
    18d4:	25 00 00 00 80       	and    $0x80000000,%eax
    18d9:	0d 08 10 00 02       	or     $0x2001008,%eax
    18de:	89 86 d8 07 00 00    	mov    %eax,0x7d8(%rsi)
    18e4:	8b 86 e0 07 00 00    	mov    0x7e0(%rsi),%eax
    18ea:	25 00 00 00 80       	and    $0x80000000,%eax
    18ef:	0d 09 10 00 02       	or     $0x2001009,%eax
    18f4:	89 86 e0 07 00 00    	mov    %eax,0x7e0(%rsi)
    18fa:	8b 86 e8 07 00 00    	mov    0x7e8(%rsi),%eax
    1900:	25 00 00 00 80       	and    $0x80000000,%eax
    1905:	0d 0a 10 00 02       	or     $0x200100a,%eax
    190a:	80 a6 ec 07 00 00 c0 	andb   $0xc0,0x7ec(%rsi)
    1911:	89 86 e8 07 00 00    	mov    %eax,0x7e8(%rsi)
    1917:	8b 86 f0 07 00 00    	mov    0x7f0(%rsi),%eax
    191d:	80 a6 f4 07 00 00 c0 	andb   $0xc0,0x7f4(%rsi)
    1924:	25 00 00 00 80       	and    $0x80000000,%eax
    1929:	80 a6 fc 07 00 00 c0 	andb   $0xc0,0x7fc(%rsi)
    1930:	0d 0b 10 00 02       	or     $0x200100b,%eax
    1935:	80 a6 04 08 00 00 c0 	andb   $0xc0,0x804(%rsi)
    193c:	89 86 f0 07 00 00    	mov    %eax,0x7f0(%rsi)
    1942:	8b 86 f8 07 00 00    	mov    0x7f8(%rsi),%eax
    1948:	80 a6 0c 08 00 00 c0 	andb   $0xc0,0x80c(%rsi)
    194f:	25 00 00 00 80       	and    $0x80000000,%eax
    1954:	0d 0c 10 00 02       	or     $0x200100c,%eax
    1959:	89 86 f8 07 00 00    	mov    %eax,0x7f8(%rsi)
    195f:	8b 86 00 08 00 00    	mov    0x800(%rsi),%eax
    1965:	25 00 00 00 80       	and    $0x80000000,%eax
    196a:	0d 0d 10 00 02       	or     $0x200100d,%eax
    196f:	89 86 00 08 00 00    	mov    %eax,0x800(%rsi)
    1975:	8b 86 08 08 00 00    	mov    0x808(%rsi),%eax
    197b:	25 00 00 00 80       	and    $0x80000000,%eax
    1980:	0d 0e 10 00 02       	or     $0x200100e,%eax
    1985:	89 86 08 08 00 00    	mov    %eax,0x808(%rsi)
    198b:	8b 86 10 08 00 00    	mov    0x810(%rsi),%eax
    1991:	80 a6 14 08 00 00 c0 	andb   $0xc0,0x814(%rsi)
    1998:	25 00 00 00 80       	and    $0x80000000,%eax
    199d:	80 a6 1c 08 00 00 c0 	andb   $0xc0,0x81c(%rsi)
    19a4:	0d 0f 10 00 02       	or     $0x200100f,%eax
    19a9:	80 a6 24 08 00 00 c0 	andb   $0xc0,0x824(%rsi)
    19b0:	89 86 10 08 00 00    	mov    %eax,0x810(%rsi)
    19b6:	8b 86 18 08 00 00    	mov    0x818(%rsi),%eax
    19bc:	80 a6 2c 08 00 00 c0 	andb   $0xc0,0x82c(%rsi)
    19c3:	25 00 00 00 80       	and    $0x80000000,%eax
    19c8:	80 a6 34 08 00 00 c0 	andb   $0xc0,0x834(%rsi)
    19cf:	0d 10 10 00 02       	or     $0x2001010,%eax
    19d4:	80 a6 3c 08 00 00 c0 	andb   $0xc0,0x83c(%rsi)
    19db:	89 86 18 08 00 00    	mov    %eax,0x818(%rsi)
    19e1:	8b 86 20 08 00 00    	mov    0x820(%rsi),%eax
    19e7:	25 00 00 00 80       	and    $0x80000000,%eax
    19ec:	0d 11 10 00 02       	or     $0x2001011,%eax
    19f1:	89 86 20 08 00 00    	mov    %eax,0x820(%rsi)
    19f7:	8b 86 28 08 00 00    	mov    0x828(%rsi),%eax
    19fd:	25 00 00 00 80       	and    $0x80000000,%eax
    1a02:	0d 12 10 00 02       	or     $0x2001012,%eax
    1a07:	89 86 28 08 00 00    	mov    %eax,0x828(%rsi)
    1a0d:	8b 86 30 08 00 00    	mov    0x830(%rsi),%eax
    1a13:	25 00 00 00 80       	and    $0x80000000,%eax
    1a18:	0d 13 10 00 02       	or     $0x2001013,%eax
    1a1d:	89 86 30 08 00 00    	mov    %eax,0x830(%rsi)
    1a23:	8b 86 38 08 00 00    	mov    0x838(%rsi),%eax
    1a29:	25 00 00 00 80       	and    $0x80000000,%eax
    1a2e:	0d 14 10 00 02       	or     $0x2001014,%eax
    1a33:	89 86 38 08 00 00    	mov    %eax,0x838(%rsi)
    1a39:	8b 86 40 08 00 00    	mov    0x840(%rsi),%eax
    1a3f:	25 00 00 00 80       	and    $0x80000000,%eax
    1a44:	80 a6 44 08 00 00 c0 	andb   $0xc0,0x844(%rsi)
    1a4b:	0d 15 10 00 02       	or     $0x2001015,%eax
    1a50:	80 a6 4c 08 00 00 c0 	andb   $0xc0,0x84c(%rsi)
    1a57:	89 86 40 08 00 00    	mov    %eax,0x840(%rsi)
    1a5d:	8b 86 48 08 00 00    	mov    0x848(%rsi),%eax
    1a63:	25 00 00 00 80       	and    $0x80000000,%eax
    1a68:	0d 16 10 00 02       	or     $0x2001016,%eax
    1a6d:	89 86 48 08 00 00    	mov    %eax,0x848(%rsi)
    1a73:	8b 86 50 08 00 00    	mov    0x850(%rsi),%eax
    1a79:	80 a6 54 08 00 00 c0 	andb   $0xc0,0x854(%rsi)
    1a80:	25 00 00 00 80       	and    $0x80000000,%eax
    1a85:	80 a6 5c 08 00 00 c0 	andb   $0xc0,0x85c(%rsi)
    1a8c:	0d 17 10 00 02       	or     $0x2001017,%eax
    1a91:	80 a6 64 08 00 00 c0 	andb   $0xc0,0x864(%rsi)
    1a98:	89 86 50 08 00 00    	mov    %eax,0x850(%rsi)
    1a9e:	8b 86 58 08 00 00    	mov    0x858(%rsi),%eax
    1aa4:	80 a6 6c 08 00 00 c0 	andb   $0xc0,0x86c(%rsi)
    1aab:	25 00 00 00 80       	and    $0x80000000,%eax
    1ab0:	80 a6 74 08 00 00 c0 	andb   $0xc0,0x874(%rsi)
    1ab7:	0d 18 10 00 02       	or     $0x2001018,%eax
    1abc:	80 a6 7c 08 00 00 c0 	andb   $0xc0,0x87c(%rsi)
    1ac3:	89 86 58 08 00 00    	mov    %eax,0x858(%rsi)
    1ac9:	8b 86 60 08 00 00    	mov    0x860(%rsi),%eax
    1acf:	80 a6 84 08 00 00 c0 	andb   $0xc0,0x884(%rsi)
    1ad6:	25 00 00 00 80       	and    $0x80000000,%eax
    1adb:	80 a6 8c 08 00 00 c0 	andb   $0xc0,0x88c(%rsi)
    1ae2:	0d 19 10 00 02       	or     $0x2001019,%eax
    1ae7:	89 86 60 08 00 00    	mov    %eax,0x860(%rsi)
    1aed:	8b 86 68 08 00 00    	mov    0x868(%rsi),%eax
    1af3:	25 00 00 00 80       	and    $0x80000000,%eax
    1af8:	0d 1a 10 00 02       	or     $0x200101a,%eax
    1afd:	89 86 68 08 00 00    	mov    %eax,0x868(%rsi)
    1b03:	8b 86 70 08 00 00    	mov    0x870(%rsi),%eax
    1b09:	25 00 00 00 80       	and    $0x80000000,%eax
    1b0e:	0d 1b 10 00 02       	or     $0x200101b,%eax
    1b13:	89 86 70 08 00 00    	mov    %eax,0x870(%rsi)
    1b19:	8b 86 78 08 00 00    	mov    0x878(%rsi),%eax
    1b1f:	25 00 00 00 80       	and    $0x80000000,%eax
    1b24:	0d 1c 10 00 02       	or     $0x200101c,%eax
    1b29:	89 86 78 08 00 00    	mov    %eax,0x878(%rsi)
    1b2f:	8b 86 80 08 00 00    	mov    0x880(%rsi),%eax
    1b35:	25 00 00 00 80       	and    $0x80000000,%eax
    1b3a:	0d 1d 10 00 02       	or     $0x200101d,%eax
    1b3f:	89 86 80 08 00 00    	mov    %eax,0x880(%rsi)
    1b45:	8b 86 88 08 00 00    	mov    0x888(%rsi),%eax
    1b4b:	25 00 00 00 80       	and    $0x80000000,%eax
    1b50:	0d 1e 10 00 02       	or     $0x200101e,%eax
    1b55:	89 86 88 08 00 00    	mov    %eax,0x888(%rsi)
    1b5b:	8b 86 90 08 00 00    	mov    0x890(%rsi),%eax
    1b61:	25 00 00 00 80       	and    $0x80000000,%eax
    1b66:	0d 1f 10 00 02       	or     $0x200101f,%eax
    1b6b:	80 a6 94 08 00 00 c0 	andb   $0xc0,0x894(%rsi)
    1b72:	89 86 90 08 00 00    	mov    %eax,0x890(%rsi)
    1b78:	8b 86 98 08 00 00    	mov    0x898(%rsi),%eax
    1b7e:	80 a6 9c 08 00 00 c0 	andb   $0xc0,0x89c(%rsi)
    1b85:	25 00 00 00 80       	and    $0x80000000,%eax
    1b8a:	80 a6 a4 08 00 00 c0 	andb   $0xc0,0x8a4(%rsi)
    1b91:	0d 00 80 00 20       	or     $0x20008000,%eax
    1b96:	80 a6 ac 08 00 00 c0 	andb   $0xc0,0x8ac(%rsi)
    1b9d:	89 86 98 08 00 00    	mov    %eax,0x898(%rsi)
    1ba3:	8b 86 a0 08 00 00    	mov    0x8a0(%rsi),%eax
    1ba9:	80 a6 b4 08 00 00 c0 	andb   $0xc0,0x8b4(%rsi)
    1bb0:	25 00 00 00 80       	and    $0x80000000,%eax
    1bb5:	80 a6 bc 08 00 00 c0 	andb   $0xc0,0x8bc(%rsi)
    1bbc:	0d 01 80 00 20       	or     $0x20008001,%eax
    1bc1:	80 a6 c4 08 00 00 c0 	andb   $0xc0,0x8c4(%rsi)
    1bc8:	89 86 a0 08 00 00    	mov    %eax,0x8a0(%rsi)
    1bce:	8b 86 a8 08 00 00    	mov    0x8a8(%rsi),%eax
    1bd4:	80 a6 cc 08 00 00 c0 	andb   $0xc0,0x8cc(%rsi)
    1bdb:	25 00 00 00 80       	and    $0x80000000,%eax
    1be0:	0d 02 80 00 20       	or     $0x20008002,%eax
    1be5:	89 86 a8 08 00 00    	mov    %eax,0x8a8(%rsi)
    1beb:	8b 86 b0 08 00 00    	mov    0x8b0(%rsi),%eax
    1bf1:	25 00 00 00 80       	and    $0x80000000,%eax
    1bf6:	0d 03 80 00 20       	or     $0x20008003,%eax
    1bfb:	89 86 b0 08 00 00    	mov    %eax,0x8b0(%rsi)
    1c01:	8b 86 b8 08 00 00    	mov    0x8b8(%rsi),%eax
    1c07:	25 00 00 00 80       	and    $0x80000000,%eax
    1c0c:	0d 04 80 00 20       	or     $0x20008004,%eax
    1c11:	89 86 b8 08 00 00    	mov    %eax,0x8b8(%rsi)
    1c17:	8b 86 c0 08 00 00    	mov    0x8c0(%rsi),%eax
    1c1d:	25 00 00 00 80       	and    $0x80000000,%eax
    1c22:	0d 05 80 00 20       	or     $0x20008005,%eax
    1c27:	89 86 c0 08 00 00    	mov    %eax,0x8c0(%rsi)
    1c2d:	8b 86 c8 08 00 00    	mov    0x8c8(%rsi),%eax
    1c33:	25 00 00 00 80       	and    $0x80000000,%eax
    1c38:	0d 06 80 00 20       	or     $0x20008006,%eax
    1c3d:	89 86 c8 08 00 00    	mov    %eax,0x8c8(%rsi)
    1c43:	8b 86 d0 08 00 00    	mov    0x8d0(%rsi),%eax
    1c49:	80 a6 d4 08 00 00 c0 	andb   $0xc0,0x8d4(%rsi)
    1c50:	25 00 00 00 80       	and    $0x80000000,%eax
    1c55:	0d 07 80 00 20       	or     $0x20008007,%eax
    1c5a:	89 86 d0 08 00 00    	mov    %eax,0x8d0(%rsi)
    1c60:	48 8d 86 60 06 00 00 	lea    0x660(%rsi),%rax
    1c67:	66 48 0f 6e e0       	movq   %rax,%xmm4
    1c6c:	66 0f 6c c4          	punpcklqdq %xmm4,%xmm0
    1c70:	66 48 0f 6e e2       	movq   %rdx,%xmm4
    1c75:	48 8d 96 e0 06 00 00 	lea    0x6e0(%rsi),%rdx
    1c7c:	0f 11 86 d8 08 00 00 	movups %xmm0,0x8d8(%rsi)
    1c83:	66 48 0f 6e c7       	movq   %rdi,%xmm0
    1c88:	48 8d be 98 06 00 00 	lea    0x698(%rsi),%rdi
    1c8f:	66 0f 6c c5          	punpcklqdq %xmm5,%xmm0
    1c93:	66 48 0f 6e ea       	movq   %rdx,%xmm5
    1c98:	48 8d 96 f0 06 00 00 	lea    0x6f0(%rsi),%rdx
    1c9f:	0f 11 86 e8 08 00 00 	movups %xmm0,0x8e8(%rsi)
    1ca6:	66 48 0f 6e c3       	movq   %rbx,%xmm0
    1cab:	48 8d 9e a8 06 00 00 	lea    0x6a8(%rsi),%rbx
    1cb2:	66 0f 6c c6          	punpcklqdq %xmm6,%xmm0
    1cb6:	66 48 0f 6e f2       	movq   %rdx,%xmm6
    1cbb:	48 8d 96 00 07 00 00 	lea    0x700(%rsi),%rdx
    1cc2:	0f 11 86 f8 08 00 00 	movups %xmm0,0x8f8(%rsi)
    1cc9:	66 48 0f 6e c1       	movq   %rcx,%xmm0
    1cce:	48 8d 8e b8 06 00 00 	lea    0x6b8(%rsi),%rcx
    1cd5:	66 0f 6c c7          	punpcklqdq %xmm7,%xmm0
    1cd9:	66 48 0f 6e fa       	movq   %rdx,%xmm7
    1cde:	48 8d 96 10 07 00 00 	lea    0x710(%rsi),%rdx
    1ce5:	0f 11 86 08 09 00 00 	movups %xmm0,0x908(%rsi)
    1cec:	66 48 0f 6e c7       	movq   %rdi,%xmm0
    1cf1:	48 8d be c8 06 00 00 	lea    0x6c8(%rsi),%rdi
    1cf8:	66 0f 6c c1          	punpcklqdq %xmm1,%xmm0
    1cfc:	66 48 0f 6e ca       	movq   %rdx,%xmm1
    1d01:	48 8d 96 20 07 00 00 	lea    0x720(%rsi),%rdx
    1d08:	0f 11 86 18 09 00 00 	movups %xmm0,0x918(%rsi)
    1d0f:	66 48 0f 6e c3       	movq   %rbx,%xmm0
    1d14:	48 8d 9e d8 06 00 00 	lea    0x6d8(%rsi),%rbx
    1d1b:	66 0f 6c c2          	punpcklqdq %xmm2,%xmm0
    1d1f:	66 48 0f 6e d2       	movq   %rdx,%xmm2
    1d24:	48 8d 96 30 07 00 00 	lea    0x730(%rsi),%rdx
    1d2b:	0f 11 86 28 09 00 00 	movups %xmm0,0x928(%rsi)
    1d32:	66 48 0f 6e c1       	movq   %rcx,%xmm0
    1d37:	48 8d 8e e8 06 00 00 	lea    0x6e8(%rsi),%rcx
    1d3e:	66 0f 6c c3          	punpcklqdq %xmm3,%xmm0
    1d42:	66 48 0f 6e da       	movq   %rdx,%xmm3
    1d47:	48 8d 96 40 07 00 00 	lea    0x740(%rsi),%rdx
    1d4e:	0f 11 86 38 09 00 00 	movups %xmm0,0x938(%rsi)
    1d55:	66 48 0f 6e c7       	movq   %rdi,%xmm0
    1d5a:	48 8d be f8 06 00 00 	lea    0x6f8(%rsi),%rdi
    1d61:	66 0f 6c c4          	punpcklqdq %xmm4,%xmm0
    1d65:	66 48 0f 6e e2       	movq   %rdx,%xmm4
    1d6a:	48 8d 96 50 07 00 00 	lea    0x750(%rsi),%rdx
    1d71:	0f 11 86 48 09 00 00 	movups %xmm0,0x948(%rsi)
    1d78:	66 48 0f 6e c3       	movq   %rbx,%xmm0
    1d7d:	48 8d 9e 08 07 00 00 	lea    0x708(%rsi),%rbx
    1d84:	66 0f 6c c5          	punpcklqdq %xmm5,%xmm0
    1d88:	66 48 0f 6e ea       	movq   %rdx,%xmm5
    1d8d:	48 8d 96 60 07 00 00 	lea    0x760(%rsi),%rdx
    1d94:	0f 11 86 58 09 00 00 	movups %xmm0,0x958(%rsi)
    1d9b:	66 48 0f 6e c1       	movq   %rcx,%xmm0
    1da0:	48 8d 8e 18 07 00 00 	lea    0x718(%rsi),%rcx
    1da7:	66 0f 6c c6          	punpcklqdq %xmm6,%xmm0
    1dab:	66 48 0f 6e f2       	movq   %rdx,%xmm6
    1db0:	48 8d 96 70 07 00 00 	lea    0x770(%rsi),%rdx
    1db7:	0f 11 86 68 09 00 00 	movups %xmm0,0x968(%rsi)
    1dbe:	66 48 0f 6e c7       	movq   %rdi,%xmm0
    1dc3:	48 8d be 28 07 00 00 	lea    0x728(%rsi),%rdi
    1dca:	66 0f 6c c7          	punpcklqdq %xmm7,%xmm0
    1dce:	66 48 0f 6e fa       	movq   %rdx,%xmm7
    1dd3:	48 8d 90 20 01 00 00 	lea    0x120(%rax),%rdx
    1dda:	0f 11 86 78 09 00 00 	movups %xmm0,0x978(%rsi)
    1de1:	66 48 0f 6e c3       	movq   %rbx,%xmm0
    1de6:	48 8d 9e 38 07 00 00 	lea    0x738(%rsi),%rbx
    1ded:	66 0f 6c c1          	punpcklqdq %xmm1,%xmm0
    1df1:	66 48 0f 6e ca       	movq   %rdx,%xmm1
    1df6:	48 8d 90 30 01 00 00 	lea    0x130(%rax),%rdx
    1dfd:	0f 11 86 88 09 00 00 	movups %xmm0,0x988(%rsi)
    1e04:	66 48 0f 6e c1       	movq   %rcx,%xmm0
    1e09:	48 8d 8e 48 07 00 00 	lea    0x748(%rsi),%rcx
    1e10:	66 0f 6c c2          	punpcklqdq %xmm2,%xmm0
    1e14:	66 48 0f 6e d2       	movq   %rdx,%xmm2
    1e19:	48 8d 90 40 01 00 00 	lea    0x140(%rax),%rdx
    1e20:	0f 11 86 98 09 00 00 	movups %xmm0,0x998(%rsi)
    1e27:	66 48 0f 6e c7       	movq   %rdi,%xmm0
    1e2c:	48 8d be 58 07 00 00 	lea    0x758(%rsi),%rdi
    1e33:	66 0f 6c c3          	punpcklqdq %xmm3,%xmm0
    1e37:	66 48 0f 6e da       	movq   %rdx,%xmm3
    1e3c:	48 8d 90 50 01 00 00 	lea    0x150(%rax),%rdx
    1e43:	0f 11 86 a8 09 00 00 	movups %xmm0,0x9a8(%rsi)
    1e4a:	66 48 0f 6e c3       	movq   %rbx,%xmm0
    1e4f:	48 8d 9e 68 07 00 00 	lea    0x768(%rsi),%rbx
    1e56:	66 0f 6c c4          	punpcklqdq %xmm4,%xmm0
    1e5a:	66 48 0f 6e e2       	movq   %rdx,%xmm4
    1e5f:	48 8d 90 60 01 00 00 	lea    0x160(%rax),%rdx
    1e66:	0f 11 86 b8 09 00 00 	movups %xmm0,0x9b8(%rsi)
    1e6d:	66 48 0f 6e c1       	movq   %rcx,%xmm0
    1e72:	48 8d 88 18 01 00 00 	lea    0x118(%rax),%rcx
    1e79:	66 0f 6c c5          	punpcklqdq %xmm5,%xmm0
    1e7d:	66 48 0f 6e ea       	movq   %rdx,%xmm5
    1e82:	48 8d 90 70 01 00 00 	lea    0x170(%rax),%rdx
    1e89:	0f 11 86 c8 09 00 00 	movups %xmm0,0x9c8(%rsi)
    1e90:	66 48 0f 6e c7       	movq   %rdi,%xmm0
    1e95:	48 8d b8 28 01 00 00 	lea    0x128(%rax),%rdi
    1e9c:	66 0f 6c c6          	punpcklqdq %xmm6,%xmm0
    1ea0:	66 48 0f 6e f2       	movq   %rdx,%xmm6
    1ea5:	48 8d 90 80 01 00 00 	lea    0x180(%rax),%rdx
    1eac:	0f 11 86 d8 09 00 00 	movups %xmm0,0x9d8(%rsi)
    1eb3:	66 48 0f 6e c3       	movq   %rbx,%xmm0
    1eb8:	48 8d 98 38 01 00 00 	lea    0x138(%rax),%rbx
    1ebf:	66 0f 6c c7          	punpcklqdq %xmm7,%xmm0
    1ec3:	66 48 0f 6e fa       	movq   %rdx,%xmm7
    1ec8:	48 8d 90 90 01 00 00 	lea    0x190(%rax),%rdx
    1ecf:	0f 11 86 e8 09 00 00 	movups %xmm0,0x9e8(%rsi)
    1ed6:	66 48 0f 6e c1       	movq   %rcx,%xmm0
    1edb:	48 8d 88 48 01 00 00 	lea    0x148(%rax),%rcx
    1ee2:	66 0f 6c c1          	punpcklqdq %xmm1,%xmm0
    1ee6:	66 48 0f 6e ca       	movq   %rdx,%xmm1
    1eeb:	48 8d 90 a0 01 00 00 	lea    0x1a0(%rax),%rdx
    1ef2:	0f 11 86 f8 09 00 00 	movups %xmm0,0x9f8(%rsi)
    1ef9:	66 48 0f 6e c7       	movq   %rdi,%xmm0
    1efe:	48 8d b8 58 01 00 00 	lea    0x158(%rax),%rdi
    1f05:	66 0f 6c c2          	punpcklqdq %xmm2,%xmm0
    1f09:	66 48 0f 6e d2       	movq   %rdx,%xmm2
    1f0e:	48 8d 90 b0 01 00 00 	lea    0x1b0(%rax),%rdx
    1f15:	0f 11 86 08 0a 00 00 	movups %xmm0,0xa08(%rsi)
    1f1c:	66 48 0f 6e c3       	movq   %rbx,%xmm0
    1f21:	48 8d 98 68 01 00 00 	lea    0x168(%rax),%rbx
    1f28:	66 0f 6c c3          	punpcklqdq %xmm3,%xmm0
    1f2c:	66 48 0f 6e da       	movq   %rdx,%xmm3
    1f31:	48 8d 90 c0 01 00 00 	lea    0x1c0(%rax),%rdx
    1f38:	0f 11 86 18 0a 00 00 	movups %xmm0,0xa18(%rsi)
    1f3f:	66 48 0f 6e c1       	movq   %rcx,%xmm0
    1f44:	48 8d 88 78 01 00 00 	lea    0x178(%rax),%rcx
    1f4b:	66 0f 6c c4          	punpcklqdq %xmm4,%xmm0
    1f4f:	66 48 0f 6e e2       	movq   %rdx,%xmm4
    1f54:	48 8d 90 d0 01 00 00 	lea    0x1d0(%rax),%rdx
    1f5b:	0f 11 86 28 0a 00 00 	movups %xmm0,0xa28(%rsi)
    1f62:	66 48 0f 6e c7       	movq   %rdi,%xmm0
    1f67:	48 8d b8 88 01 00 00 	lea    0x188(%rax),%rdi
    1f6e:	66 0f 6c c5          	punpcklqdq %xmm5,%xmm0
    1f72:	66 48 0f 6e ea       	movq   %rdx,%xmm5
    1f77:	48 8d 90 e0 01 00 00 	lea    0x1e0(%rax),%rdx
    1f7e:	0f 11 86 38 0a 00 00 	movups %xmm0,0xa38(%rsi)
    1f85:	66 48 0f 6e c3       	movq   %rbx,%xmm0
    1f8a:	48 8d 98 98 01 00 00 	lea    0x198(%rax),%rbx
    1f91:	66 0f 6c c6          	punpcklqdq %xmm6,%xmm0
    1f95:	66 48 0f 6e f2       	movq   %rdx,%xmm6
    1f9a:	48 8d 90 f0 01 00 00 	lea    0x1f0(%rax),%rdx
    1fa1:	0f 11 86 48 0a 00 00 	movups %xmm0,0xa48(%rsi)
    1fa8:	66 48 0f 6e c1       	movq   %rcx,%xmm0
    1fad:	48 8d 88 a8 01 00 00 	lea    0x1a8(%rax),%rcx
    1fb4:	66 0f 6c c7          	punpcklqdq %xmm7,%xmm0
    1fb8:	66 48 0f 6e fa       	movq   %rdx,%xmm7
    1fbd:	48 8d 90 00 02 00 00 	lea    0x200(%rax),%rdx
    1fc4:	0f 11 86 58 0a 00 00 	movups %xmm0,0xa58(%rsi)
    1fcb:	66 48 0f 6e c7       	movq   %rdi,%xmm0
    1fd0:	48 8d b8 b8 01 00 00 	lea    0x1b8(%rax),%rdi
    1fd7:	66 0f 6c c1          	punpcklqdq %xmm1,%xmm0
    1fdb:	66 48 0f 6e ca       	movq   %rdx,%xmm1
    1fe0:	48 8d 90 10 02 00 00 	lea    0x210(%rax),%rdx
    1fe7:	0f 11 86 68 0a 00 00 	movups %xmm0,0xa68(%rsi)
    1fee:	66 48 0f 6e c3       	movq   %rbx,%xmm0
    1ff3:	48 8d 98 c8 01 00 00 	lea    0x1c8(%rax),%rbx
    1ffa:	66 0f 6c c2          	punpcklqdq %xmm2,%xmm0
    1ffe:	66 48 0f 6e d2       	movq   %rdx,%xmm2
    2003:	48 8d 90 20 02 00 00 	lea    0x220(%rax),%rdx
    200a:	0f 11 86 78 0a 00 00 	movups %xmm0,0xa78(%rsi)
    2011:	66 48 0f 6e c1       	movq   %rcx,%xmm0
    2016:	48 8d 88 d8 01 00 00 	lea    0x1d8(%rax),%rcx
    201d:	66 0f 6c c3          	punpcklqdq %xmm3,%xmm0
    2021:	66 48 0f 6e da       	movq   %rdx,%xmm3
    2026:	48 8d 90 30 02 00 00 	lea    0x230(%rax),%rdx
    202d:	0f 11 86 88 0a 00 00 	movups %xmm0,0xa88(%rsi)
    2034:	66 48 0f 6e c7       	movq   %rdi,%xmm0
    2039:	48 8d b8 e8 01 00 00 	lea    0x1e8(%rax),%rdi
    2040:	66 0f 6c c4          	punpcklqdq %xmm4,%xmm0
    2044:	66 48 0f 6e e2       	movq   %rdx,%xmm4
    2049:	48 8d 15 00 00 00 00 	lea    0x0(%rip),%rdx        # 2050 <_GLOBAL__sub_I_mcl.cpp+0x2050>
    2050:	0f 11 86 98 0a 00 00 	movups %xmm0,0xa98(%rsi)
    2057:	66 48 0f 6e c3       	movq   %rbx,%xmm0
    205c:	48 8d 98 f8 01 00 00 	lea    0x1f8(%rax),%rbx
    2063:	66 0f 6c c5          	punpcklqdq %xmm5,%xmm0
    2067:	c6 86 28 0b 00 00 00 	movb   $0x0,0xb28(%rsi)
    206e:	0f 11 86 a8 0a 00 00 	movups %xmm0,0xaa8(%rsi)
    2075:	66 48 0f 6e c1       	movq   %rcx,%xmm0
    207a:	48 8d 88 08 02 00 00 	lea    0x208(%rax),%rcx
    2081:	66 0f 6c c6          	punpcklqdq %xmm6,%xmm0
    2085:	48 c7 86 18 0b 00 00 	movq   $0x0,0xb18(%rsi)
    208c:	00 00 00 00 
    2090:	0f 11 86 b8 0a 00 00 	movups %xmm0,0xab8(%rsi)
    2097:	66 48 0f 6e c7       	movq   %rdi,%xmm0
    209c:	48 8d b8 18 02 00 00 	lea    0x218(%rax),%rdi
    20a3:	48 05 28 02 00 00    	add    $0x228,%rax
    20a9:	66 0f 6c c7          	punpcklqdq %xmm7,%xmm0
    20ad:	48 c7 86 20 0b 00 00 	movq   $0x0,0xb20(%rsi)
    20b4:	00 00 00 00 
    20b8:	0f 11 86 c8 0a 00 00 	movups %xmm0,0xac8(%rsi)
    20bf:	66 48 0f 6e c3       	movq   %rbx,%xmm0
    20c4:	48 8d 9e 30 05 00 00 	lea    0x530(%rsi),%rbx
    20cb:	66 0f 6c c1          	punpcklqdq %xmm1,%xmm0
    20cf:	c6 86 48 0b 00 00 00 	movb   $0x0,0xb48(%rsi)
    20d6:	0f 11 86 d8 0a 00 00 	movups %xmm0,0xad8(%rsi)
    20dd:	66 48 0f 6e c1       	movq   %rcx,%xmm0
    20e2:	48 8d 8e 50 05 00 00 	lea    0x550(%rsi),%rcx
    20e9:	66 0f 6c c2          	punpcklqdq %xmm2,%xmm0
    20ed:	48 89 b6 90 00 00 00 	mov    %rsi,0x90(%rsi)
    20f4:	0f 11 86 e8 0a 00 00 	movups %xmm0,0xae8(%rsi)
    20fb:	66 48 0f 6e c7       	movq   %rdi,%xmm0
    2100:	48 8d be 38 05 00 00 	lea    0x538(%rsi),%rdi
    2107:	c7 86 40 0b 00 00 04 	movl   $0x4,0xb40(%rsi)
    210e:	00 00 00 
    2111:	66 0f 6c c3          	punpcklqdq %xmm3,%xmm0
    2115:	0f 11 86 f8 0a 00 00 	movups %xmm0,0xaf8(%rsi)
    211c:	66 48 0f 6e c0       	movq   %rax,%xmm0
    2121:	48 8b 05 00 00 00 00 	mov    0x0(%rip),%rax        # 2128 <_GLOBAL__sub_I_mcl.cpp+0x2128>
    2128:	c7 86 44 0b 00 00 05 	movl   $0x5,0xb44(%rsi)
    212f:	00 00 00 
    2132:	66 0f 6c c4          	punpcklqdq %xmm4,%xmm0
    2136:	0f 11 86 08 0b 00 00 	movups %xmm0,0xb08(%rsi)
    213d:	48 83 c0 10          	add    $0x10,%rax
    2141:	66 0f 6f 05 00 00 00 	movdqa 0x0(%rip),%xmm0        # 2149 <_GLOBAL__sub_I_mcl.cpp+0x2149>
    2148:	00 
    2149:	48 89 06             	mov    %rax,(%rsi)
    214c:	48 8d 86 28 05 00 00 	lea    0x528(%rsi),%rax
    2153:	0f 11 86 30 0b 00 00 	movups %xmm0,0xb30(%rsi)
    215a:	66 48 0f 6e e8       	movq   %rax,%xmm5
    215f:	66 48 0f 6e c3       	movq   %rbx,%xmm0
    2164:	48 8d 86 00 05 00 00 	lea    0x500(%rsi),%rax
    216b:	66 0f 6c c5          	punpcklqdq %xmm5,%xmm0
    216f:	66 48 0f 6e f0       	movq   %rax,%xmm6
    2174:	48 8d 86 40 05 00 00 	lea    0x540(%rsi),%rax
    217b:	48 c7 86 b8 0b 00 00 	movq   $0x0,0xbb8(%rsi)
    2182:	00 00 00 00 
    2186:	0f 11 86 50 0b 00 00 	movups %xmm0,0xb50(%rsi)
    218d:	66 48 0f 6e c1       	movq   %rcx,%xmm0
    2192:	66 48 0f 6e f8       	movq   %rax,%xmm7
    2197:	48 8d 9e 48 05 00 00 	lea    0x548(%rsi),%rbx
    219e:	66 0f 6c c6          	punpcklqdq %xmm6,%xmm0
    21a2:	48 8d 86 10 05 00 00 	lea    0x510(%rsi),%rax
    21a9:	48 8d 8e 20 05 00 00 	lea    0x520(%rsi),%rcx
    21b0:	0f 11 86 60 0b 00 00 	movups %xmm0,0xb60(%rsi)
    21b7:	66 48 0f 6e c7       	movq   %rdi,%xmm0
    21bc:	66 48 0f 6e c8       	movq   %rax,%xmm1
    21c1:	48 8d 86 58 05 00 00 	lea    0x558(%rsi),%rax
    21c8:	66 0f 6c c7          	punpcklqdq %xmm7,%xmm0
    21cc:	66 48 0f 6e d0       	movq   %rax,%xmm2
    21d1:	48 8d 86 68 05 00 00 	lea    0x568(%rsi),%rax
    21d8:	0f 11 86 70 0b 00 00 	movups %xmm0,0xb70(%rsi)
    21df:	66 48 0f 6e c3       	movq   %rbx,%xmm0
    21e4:	66 48 0f 6e d8       	movq   %rax,%xmm3
    21e9:	48 8d be 60 05 00 00 	lea    0x560(%rsi),%rdi
    21f0:	66 0f 6c c1          	punpcklqdq %xmm1,%xmm0
    21f4:	48 8d 86 70 05 00 00 	lea    0x570(%rsi),%rax
    21fb:	0f 11 86 80 0b 00 00 	movups %xmm0,0xb80(%rsi)
    2202:	66 48 0f 6e c1       	movq   %rcx,%xmm0
    2207:	b9 0b 00 00 00       	mov    $0xb,%ecx
    220c:	66 0f 6c c2          	punpcklqdq %xmm2,%xmm0
    2210:	48 89 86 b0 0b 00 00 	mov    %rax,0xbb0(%rsi)
    2217:	31 c0                	xor    %eax,%eax
    2219:	0f 11 86 90 0b 00 00 	movups %xmm0,0xb90(%rsi)
    2220:	66 48 0f 6e c7       	movq   %rdi,%xmm0
    2225:	48 8d be c0 0b 00 00 	lea    0xbc0(%rsi),%rdi
    222c:	f3 48 ab             	rep stos %rax,%es:(%rdi)
    222f:	66 0f 6c c3          	punpcklqdq %xmm3,%xmm0
    2233:	48 8b 3d 00 00 00 00 	mov    0x0(%rip),%rdi        # 223a <_GLOBAL__sub_I_mcl.cpp+0x223a>
    223a:	0f 11 86 a0 0b 00 00 	movups %xmm0,0xba0(%rsi)
    2241:	48 83 c4 28          	add    $0x28,%rsp
    2245:	5b                   	pop    %rbx
    2246:	5d                   	pop    %rbp
    2247:	41 5c                	pop    %r12
    2249:	41 5d                	pop    %r13
    224b:	e9 00 00 00 00       	jmpq   2250 <_GLOBAL__sub_I_mcl.cpp+0x2250>
    2250:	f3 0f 1e fa          	endbr64 
    2254:	e9 00 00 00 00       	jmpq   2259 <_GLOBAL__sub_I_mcl.cpp+0x2259>
    2259:	f3 0f 1e fa          	endbr64 
    225d:	49 89 c4             	mov    %rax,%r12
    2260:	e9 00 00 00 00       	jmpq   2265 <_ZStL8__ioinit+0x163d>
