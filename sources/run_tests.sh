#! /bin/bash
for ((i=0;i<200;i++)); do { time $1; } 2>&1 | cat >> $2 ; done
