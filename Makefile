CXX = clang++-11
PROGRAM = CP6
#OBJS   =  main.o  fp.o fp2.o fp6.o efp.o efp2.o efp6.o test_efp.o create.o miller.o final_exp.o test_pairing.o time.o
#HEADER = define.h fp.h fp2.h fp6.h efp.h efp2.h efp6.h test_efp.h  create.h miller.h final_exp.h test_pairing.h time.h
OBJS   =  main.o scalar.o mpn.o fp.o create.o field_test.o
HEADER =  define.h scalar.h mpn.h fp.h create.h field_test.h
CFLAGS= -O2 -march=native

$(PROGRAM): $(OBJS)
	$(CXX) -g -o $(PROGRAM) $(OBJS) $(CFLAGS) -lstdc++ -lgmp

#サフィックスルールの適応対象の拡張子の定義
.SUFFIXES: .c .o

#c言語のソースファイルから拡張子が.oのファイルを作成する
.c.o:
	$(CXX) -I -c $(CFLAGS) $< 
	# -std=c99

.SUFFIXES: .c .o

#ヘッダファイルの依存関係(ヘッダファイルが変わったらすべてコンパイルし直す)
$(OBJS): $(HEADER)

#不要なファイル削除用(コマンド:make clean)
.PHONY: clean
clean:
	rm -f $(PROGRAM) $(OBJS)
