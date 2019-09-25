all: clean build run
	
build:
	gcc -g -Wall benchmarks.c benchmarks/mat_mult_arm.s benchmarks/mat_mult_thumb.s -o run

run:
	./run

clean:
	rm ./run

diss:
	gcc -g -Wall benchmarks.c benchmarks/mat_mult_arm.s benchmarks/mat_mult_thumb.s -o run.o
	objdump -d ./run.o

debug: clean build
	gdb run
