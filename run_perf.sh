#! /bin/bash

if [ $1 -eq 1 ]
then
	for ((i=0;i<200;i++)); do { perf stat -d ./execs/mat_mult/mat_mult_arm_O0; } 2>&1 | cat >> ./data/perf_data/mat_mult_arm_O0 ; done
	for ((i=0;i<200;i++)); do { perf stat -d ./execs/mat_mult/mat_mult_arm_O1; } 2>&1 | cat >> ./data/perf_data/mat_mult_arm_O1 ; done
	for ((i=0;i<200;i++)); do { perf stat -d ./execs/mat_mult/mat_mult_arm_O2; } 2>&1 | cat >> ./data/perf_data/mat_mult_arm_O2 ; done
	for ((i=0;i<200;i++)); do { perf stat -d ./execs/mat_mult/mat_mult_arm_O3; } 2>&1 | cat >> ./data/perf_data/mat_mult_arm_O3 ; done
elif [ $1 -eq 2 ]
then
	for ((i=0;i<200;i++)); do { perf stat -d ./execs/mat_mult/mat_mult_c_arm_O0; } 2>&1 | cat >> ./data/perf_data/mat_mult_c_arm_O0 ; done
	for ((i=0;i<200;i++)); do { perf stat -d ./execs/mat_mult/mat_mult_c_arm_O1; } 2>&1 | cat >> ./data/perf_data/mat_mult_c_arm_O1 ; done
	for ((i=0;i<200;i++)); do { perf stat -d ./execs/mat_mult/mat_mult_c_arm_O2; } 2>&1 | cat >> ./data/perf_data/mat_mult_c_arm_O2 ; done
	for ((i=0;i<200;i++)); do { perf stat -d ./execs/mat_mult/mat_mult_c_arm_O3; } 2>&1 | cat >> ./data/perf_data/mat_mult_c_arm_O3 ; done
elif [ $1 -eq 3 ]
then
	for ((i=0;i<200;i++)); do { perf stat -d ./execs/mat_mult/mat_mult_thumb_O0; } 2>&1 | cat >> ./data/perf_data/mat_mult_thumb_O0 ; done
	for ((i=0;i<200;i++)); do { perf stat -d ./execs/mat_mult/mat_mult_thumb_O1; } 2>&1 | cat >> ./data/perf_data/mat_mult_thumb_O1 ; done
	for ((i=0;i<200;i++)); do { perf stat -d ./execs/mat_mult/mat_mult_thumb_O2; } 2>&1 | cat >> ./data/perf_data/mat_mult_thumb_O2 ; done
	for ((i=0;i<200;i++)); do { perf stat -d ./execs/mat_mult/mat_mult_thumb_O3; } 2>&1 | cat >> ./data/perf_data/mat_mult_thumb_O3 ; done
elif [ $1 -eq 4 ]
then
	for ((i=0;i<200;i++)); do { perf stat -d ./execs/mat_mult/mat_mult_c_thumb_O0; } 2>&1 | cat >> ./data/perf_data/mat_mult_c_thumb_O0 ; done
	for ((i=0;i<200;i++)); do { perf stat -d ./execs/mat_mult/mat_mult_c_thumb_O1; } 2>&1 | cat >> ./data/perf_data/mat_mult_c_thumb_O1 ; done
	for ((i=0;i<200;i++)); do { perf stat -d ./execs/mat_mult/mat_mult_c_thumb_O2; } 2>&1 | cat >> ./data/perf_data/mat_mult_c_thumb_O2 ; done
	for ((i=0;i<200;i++)); do { perf stat -d ./execs/mat_mult/mat_mult_c_thumb_O3; } 2>&1 | cat >> ./data/perf_data/mat_mult_c_thumb_O3 ; done
fi
