CXX = clang++-11
PROGRAM = CP6
#OBJS =   main.o count.o scalar.o mpn.o fp.o fp7.o fp14.o test_fp.o efp.o efp7.o efp14.o test_efp.o create.o miller.o final_exp.o test_pairing.o
#HEADER = define.h count.h scalar.h mpn.h fp.h fp7.h fp14.h test_fp.h efp.h efp7.h efp14.h test_efp.h create.h miller.h final_exp.h test_pairing.h
OBJS   = main.o count.o scalar.o mpn.o fp.o fp2.o fp6.o test_fp.o efp.o efp2.o efp6.o test_efp.o create.o miller.o final_exp.o test_pairing.o
HEADER = define.h count.h scalar.h mpn.h fp.h fp2.h fp6.h test_fp.h efp.h efp2.h efp6.h test_efp.h create.h miller.h final_exp.h test_pairing.h

$(PROGRAM): $(OBJS)
	$(CXX) -fPIC -g -o $(PROGRAM) $(OBJS) -O2 -march=native -lgmp -lstdc++

#サフィックスルールの適応対象の拡張子の定義
.SUFFIXES: .c .o

#c言語のソースファイルから拡張子が.oのファイルを作成する
.c.o:
	$(CXX) -I -c -fPIC -O2 $< 
	# -std=c99

#ヘッダファイルの依存関係(ヘッダファイルが変わったらすべてコンパイルし直す)
$(OBJS): $(HEADER)

#不要なファイル削除用(コマンド:make clean)
.PHONY: clean
clean:
	rm -f $(PROGRAM) $(OBJS)
