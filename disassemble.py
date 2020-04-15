#! /bin/python
import subprocess as sp
import os

mem_benchs = os.listdir("execs/mem_access")
mat_benchs = os.listdir("execs/mat_mult")

for mem in mem_benchs:
   sp.run("objdump -d " + mem + " > data/assemblies/" + mem + ".s")

for mat in mat_benchs:
   sp.run("objdump -d " + mat + " > data/assemblies/" + mat + ".s")

