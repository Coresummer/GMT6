MCL_DIR?=../mcl
CXX = clang++-12
PROGRAM = CP6
OBJS   = main.o scalar.o mpn.o mul.o fp.o mcl.o create.o #fp2.o fp6.o efp.o efp2.o efp6.o test_efp.o field_test.o miller.o final_exp.o test_pairing.o time.o

$(PROGRAM): $(OBJS)
	$(CXX) -fPIC -g -pg -o $(PROGRAM) $(OBJS) -Ofast -march=native -lgmp -lstdc++
	#-fsanitize=address

#サフィックスルールの適応対象の拡張子の定義
.SUFFIXES: .c .cpp .asm

CFLAGS+= -Ofast -fPIC -g -DNDEBUG -I $(MCL_DIR)/include -I $(MCL_DIR)/src
#c言語のソースファイルから拡張子が.oのファイルを作成する

.c.o:
	$(CC) -c $< $(CFLAGS) -MMD -MP -MF $(@:.o=.d)
.cpp.o:
	$(CXX) -c $< $(CFLAGS) -MMD -MP -MF $(@:.o=.d)

.asm.o:
	nasm -f elf64 $<

DEPS=$(OBJS:.o=.d)
-include $(DEPS)

#不要なファイル削除用(コマンド:make clean)
.PHONY: clean
clean:
	rm -f $(PROGRAM) *.o *.d

# don't remove these files automatically
.SECONDARY: $(OBJS)
