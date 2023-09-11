CC=gcc
ASM=nasm


run: lib.o
	$(CC) -m32 main.c lib.o -o run

asm: lib.o
	$(CC) -m32 main.c lib.o -o main.asm -S -O0

lib.o: lib.asm
	$(ASM) -f elf lib.asm -o lib.o

cl:
	rm lib.o run main.asm