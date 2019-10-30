all: clean build run
	
build:
	gcc -g -Wall benchmarks.c benchmarks/* -o run

run:
	./run

clean:
	rm ./run

diss:
	gcc -g -Wall benchmarks.c benchmarks/* -o run.o
	objdump -d ./run.o

debug: clean build
	gdb run
