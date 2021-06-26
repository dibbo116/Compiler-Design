main:	sam1.l
	lex sam1.l
	gcc lex.yy.c
	./a <input.txt> output.txt 

main2: sam2.l sam2.y
	yacc -d sam2.y
	flex sam2.l
	gcc sam2.tab.c lex.yy.c
	./a <input1.txt> output1.txt