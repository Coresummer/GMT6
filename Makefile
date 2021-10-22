MCL_DIR?=../mcl
CXX = clang++-12
PROGRAM = CP6
OBJS   = main.o scalar.o mpn.o fp.o mcl.o create.o #fp2.o fp6.o efp.o efp2.o efp6.o test_efp.o field_test.o miller.o final_exp.o test_pairing.o time.o 
HEADER = define.h scalar.h mpn.h fp.h create.h     #fp2.h fp6.h efp.h efp2.h efp6.h test_efp.h field_test.h miller.h final_exp.h test_pairing.h time.h

$(PROGRAM): $(OBJS)
	$(CXX) -fPIC -g -pg -o $(PROGRAM) $(OBJS) -Ofast -march=native -lgmp -lstdc++
	#-fsanitize=address

#サフィックスルールの適応対象の拡張子の定義
.SUFFIXES: .c .o

CFLAGS+= -Ofast -fPIC -g -DNDEBUG -I $(MCL_DIR)/include -I $(MCL_DIR)/src
#c言語のソースファイルから拡張子が.oのファイルを作成する

.c.o:
	$(CC) -c $< $(CFLAGS) -MMD -MP -MF $(@:.o=.d)
.cpp.o:
	$(CXX) -c $< $(CFLAGS) -MMD -MP -MF $(@:.o=.d)

#ヘッダファイルの依存関係(ヘッダファイルが変わったらすべてコンパイルし直す)
$(OBJS): $(HEADER)

DEPS=$(OBJS:.o=.d)
-include $(DEPS)

#不要なファイル削除用(コマンド:make clean)
.PHONY: clean
clean:
	rm -f $(PROGRAM) *.o *.d

# don't remove these files automatically
.SECONDARY: $(OBJS)