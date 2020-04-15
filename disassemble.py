#! /bin/python
import os

mem_benchs = os.listdir("execs/mem_access")
mat_benchs = os.listdir("execs/mat_mult")

for mem in mem_benchs:
   os.system("objdump -d execs/mem_access/" + mem + " > data/assemblies/" + mem + ".s")

for mat in mat_benchs:
   os.system("objdump -d execs/mat_mult/" + mat + " > data/assemblies/" + mat + ".s")

