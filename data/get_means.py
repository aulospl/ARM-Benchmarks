#! /bin/python
import matplotlib.pyplot as plt
import sys
import re
#import numpy as np
import statistics

class data:
    def setTime(self, time):
        self.time = time
    
    def setPageFaults(self, pagefaults):
        self.pagefaults = pagefaults
    
    def setInstructions(self, instructions):
        self.instructions = instructions
    
    def setBranches(self, branches):
        self.branches = branches
    
    def setBranchMisses(self, branchmisses):
        self.branchmisses = branchmisses
    
    def setL1(self, l1):
        self.l1 = l1
    
    def setL1Misses(self, l1misses):
        self.l1misses = l1misses
    
    def setLCC(self, lcc):    
        self.lcc = lcc
    
    def setLCCMisses(self, lccmisses):
        self.lccmisses = lccmisses
   

def read_data(filename):
    raw_data = [data() for i in range(45)]

    with open(filename) as f:
        for c in range(45):
            f.readline()
            f.readline()
            f.readline()
            f.readline()
            f.readline()
            f.readline()
             
            res = int(f.readline().split()[0].replace(',',''))
            raw_data[c].setPageFaults(res) 
            
            f.readline()
            res = int(f.readline().split()[0].replace(',',''))
            raw_data[c].setInstructions(res)
            
            res = int(f.readline().split()[0].replace(',',''))
            raw_data[c].setBranches(res)
     
            res = int(f.readline().split()[0].replace(',',''))
            raw_data[c].setBranchMisses(res)

            res = int(f.readline().split()[0].replace(',',''))
            raw_data[c].setL1(res)
            
            res = int(f.readline().split()[0].replace(',',''))
            raw_data[c].setL1Misses(res)
            
            res = int(f.readline().split()[0].replace(',',''))
            raw_data[c].setLCC(res)

            res = int(f.readline().split()[0].replace(',',''))
            raw_data[c].setLCCMisses(res)
            
            f.readline()
            res  = float(f.readline().split()[0])
            raw_data[c].setTime(res)

            f.readline()

    return raw_data

tests = []
tests.append(read_data('./perf_data/mat_mult_c_arm_O0'))
tests.append(read_data('./perf_data/mat_mult_c_arm_O1'))
tests.append(read_data('./perf_data/mat_mult_c_arm_O2'))
tests.append(read_data('./perf_data/mat_mult_c_arm_O3'))
tests.append(read_data('./perf_data/mat_mult_c_thumb_O0'))
tests.append(read_data('./perf_data/mat_mult_c_thumb_O1'))
tests.append(read_data('./perf_data/mat_mult_c_thumb_O2'))
tests.append(read_data('./perf_data/mat_mult_c_thumb_O3'))

#ignore não vou precisar dessa parte dos mins
"""
mins = [[] for i in range(9)]

for t in tests:
    mins[0].append(min(a.pagefaults for a in t))
    mins[1].append(min(a.instructions for a in t))
    mins[2].append(min(a.branches for a in t))
    mins[3].append(min(a.branchmisses for a in t))
    mins[4].append(min(a.l1 for a in t))
    mins[5].append(min(a.l1misses for a in t))
    mins[6].append(min(a.lcc for a in t))
    mins[7].append(min(a.lccmisses for a in t))
    mins[8].append(min(a.time for a in t))

print(mins)
"""
#aqui q enrosquei
means = [[] for i in range(9)]

stdvs = [[] for i in range(9)]

for t in tests:  
    stdvs[0].append(statistics.stdev(a.pagefaults for a in t))
    stdvs[1].append(statistics.stdev(a.instructions for a in t))
    stdvs[2].append(statistics.stdev(a.branches for a in t))
    stdvs[3].append(statistics.stdev(a.branchmisses for a in t))
    stdvs[4].append(statistics.stdev(a.l1 for a in t))
    stdvs[5].append(statistics.stdev(a.l1misses for a in t))
    stdvs[6].append(statistics.stdev(a.lcc for a in t))
    stdvs[7].append(statistics.stdev(a.lccmisses for a in t))
    stdvs[8].append(statistics.stdev(a.time for a in t))

    means[0].append(statistics.mean(a.pagefaults for a in t))
    #means[1].append(statistics.mean(a.instructions for a in t))
    print(statistics.mean(a.instructions for a in t))
    means[2].append(statistics.mean(a.branches for a in t))
    means[3].append(statistics.mean(a.branchmisses for a in t))
    means[4].append(statistics.mean(a.l1 for a in t))
    means[5].append(statistics.mean(a.l1misses for a in t))
    means[6].append(statistics.mean(a.lcc for a in t))
    means[7].append(statistics.mean(a.lccmisses for a in t))
    means[8].append(statistics.mean(a.time for a in t))

    
   

quit()
yrange = max(stdvs[0])

#blue = arm
#red = thumb
opts = ['O0', 'O1', 'O2', 'O3']

plt.bar(opts, means[0][:4], width=0.45, align='edge', color='skyblue', yerr=stdvs[0][:4], capsize = 10, label='ARM')
plt.bar(opts, means[0][4:], width=-0.45, align='edge', color='salmon', yerr=stdvs[0][:4], capsize = 10, label='THUMB')

plt.ylim(min(means[0])-(yrange*1.1), max(means[0])+yrange*1.3)

plt.title("Page Faults")
plt.xlabel("Otimização")
plt.ylabel("Falhas")
plt.legend()
plt.savefig('page_faults_means.png')
plt.clf()

yrange = max(stdvs[1])
plt.bar(opts, means[1][:4], width=0.45, align='edge', color='skyblue', yerr=stdvs[0][:4], capsize = 10, label='ARM')
plt.bar(opts, means[1][4:], width=-0.45, align='edge', color='salmon', yerr=stdvs[0][:4], capsize = 10, label='THUMB')
plt.ylim(min(means[1])-(yrange*1.1), max(means[1])+yrange*1.3)
plt.title("Instructions")
plt.xlabel("Otimização")
plt.ylabel("Instruções")
plt.legend()
plt.savefig('instructions_means.png')
plt.clf()

yrange = max(stdvs[2])
plt.bar(opts, means[2][:4], width=0.45, align='edge', color='skyblue', yerr=stdvs[0][:4], capsize = 10, label='ARM')
plt.bar(opts, means[2][4:], width=-0.45, align='edge', color='salmon', yerr=stdvs[0][:4], capsize = 10, label='THUMB')
plt.ylim(min(means[2])-(yrange*1.1), max(means[2])+yrange*1.3)
plt.title("Branches")
plt.xlabel("Otimização")
plt.ylabel("Branches")
plt.legend()
plt.savefig('branches_means.png')
plt.clf()



yrange = max(stdvs[3])
plt.bar(opts, means[3][:4], width=0.45, align='edge', color='skyblue', yerr=stdvs[0][:4], capsize = 10, label='ARM')
plt.bar(opts, means[3][4:], width=-0.45, align='edge', color='salmon', yerr=stdvs[0][:4], capsize = 10, label='THUMB')
plt.ylim(min(means[3])-(yrange*1.1), max(means[3])+yrange*1.3)
plt.title("Branch-misses")
plt.xlabel("Otimização")
plt.ylabel("Misses")
plt.legend()
plt.savefig('branch_miss_means.png')
plt.clf()



yrange = max(stdvs[4])
plt.bar(opts, means[4][:4], width=0.45, align='edge', color='skyblue', yerr=stdvs[0][:4], capsize = 10, label='ARM')
plt.bar(opts, means[4][4:], width=-0.45, align='edge', color='salmon', yerr=stdvs[0][:4], capsize = 10, label='THUMB')
plt.ylim(min(means[4])-(yrange*1.1), max(means[4])+yrange*1.3)
plt.title("L1-dcache-loads")
plt.xlabel("Otimização")
plt.ylabel("Loads")
plt.legend()
plt.savefig('l1_loads_means.png')
plt.clf()



yrange = max(stdvs[5])
plt.bar(opts, means[5][:4], width=0.45, align='edge', color='skyblue', yerr=stdvs[0][:4], capsize = 10, label='ARM')
plt.bar(opts, means[5][4:], width=-0.45, align='edge', color='salmon', yerr=stdvs[0][:4], capsize = 10, label='THUMB')
plt.ylim(min(means[5])-(yrange*1.1), max(means[5])+yrange*1.3)
plt.title("L1-dcache-load-misses")
plt.xlabel("Otimização")
plt.ylabel("Misses")
plt.legend()
plt.savefig('l1_misses_means.png')
plt.clf()



yrange = max(stdvs[6])
plt.bar(opts, means[6][:4], width=0.45, align='edge', color='skyblue', yerr=stdvs[0][:4], capsize = 10, label='ARM')
plt.bar(opts, means[6][4:], width=-0.45, align='edge', color='salmon', yerr=stdvs[0][:4], capsize = 10, label='THUMB')
plt.ylim(min(means[6])-(yrange*1.1), max(means[6])+yrange*1.3)
plt.title("LCC-loads")
plt.xlabel("Otimização")
plt.ylabel("Loads")
plt.legend()
plt.savefig('lcc_loads_means.png')
plt.clf()



yrange = max(stdvs[7])
plt.bar(opts, means[7][:4], width=0.45, align='edge', color='skyblue', yerr=stdvs[0][:4], capsize = 10, label='ARM')
plt.bar(opts, means[7][4:], width=-0.45, align='edge', color='salmon', yerr=stdvs[0][:4], capsize = 10, label='THUMB')
plt.ylim(min(means[7])-(yrange*1.1), max(means[7])+yrange*1.3)
plt.title("LCC-load-misses")
plt.xlabel("Otimização")
plt.ylabel("Misses")
plt.legend()
plt.savefig('lcc_misses_means.png')
plt.clf()



yrange = max(stdvs[8])
plt.bar(opts, means[8][:4], width=0.45, align='edge', color='skyblue', yerr=stdvs[0][:4], capsize = 10, label='ARM')
plt.bar(opts, means[8][4:], width=-0.45, align='edge', color='salmon', yerr=stdvs[0][:4], capsize = 10, label='THUMB')
plt.ylim(min(means[8])-(yrange*1.1), max(means[8])+yrange*1.3)
plt.title("Time")
plt.xlabel("Otimização")
plt.ylabel("Segundos")
plt.legend()
plt.savefig('time_means.png')
plt.clf()
