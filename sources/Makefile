all: clean build run
	
build:
	gcc -g -Wall run_benchs.c benchmarks/* -o run

build_mat_c:
	gcc -g -Wall run_benchs_c_compiled.c c_code/mat_mult_c.c -march=armv7-a   -o run_mat_c

build_mem_c:
	gcc -g -Wall run_benchs_c_compiled.c c_code/mem_access_c.c  -march=armv7-a -mthumb -o run_mem_c

run:
	./run

clean:
	rm ./run

diss:
	objdump -d dump/run.asm

debug: clean build
	gdb run
