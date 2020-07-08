import numpy as np
import scipy.stats as st
import matplotlib.pyplot as plt
import os


class result:
    def __init__(self, filename):
        self.filename = filename
        fname = filename.split('_')
        self.tests = []
        c = 0
        print(filename)
        with open('perf_data/'+filename) as f:
            while(c < 200):
                values = {'task_clock':0, 'context_switches':0, 'cpu_migrations':0, 'page_faults':0, 'cycles':0, 'instructions':0, 'branch':0, 'branch_miss':0, 'L1_load':0, 'L1_miss':0, 'LLC_load':0, 'LLC_load_miss':0, 'time':0}
                 
                #print("iteration: "+str(c))
                f.readline()
                f.readline()
                if c != 0:
                    f.readline()
                    f.readline()
                values['task_clock'] = float(f.readline().split()[0])
                values['context_switches'] = float(f.readline().split()[0].replace(',',''))
                values['cpu_migrations'] = float(f.readline().split()[0].replace(',',''))
                values['page_faults'] = float(f.readline().split()[0].replace(',',''))
                values['cycles'] = float(f.readline().split()[0].replace(',',''))
                values['instructions'] = float(f.readline().split()[0].replace(',',''))                
                values['branch'] = float(f.readline().split()[0].replace(',',''))
                values['branch_miss'] = float(f.readline().split()[0].replace(',',''))
                values['L1_load'] = float(f.readline().split()[0].replace(',',''))
                values['L1_miss'] = float(f.readline().split()[0].replace(',','')) 
                values['LLC_load'] = float(f.readline().split()[0].replace(',',''))
                values['LLC_load_miss'] = float(f.readline().split()[0].replace(',',''))
                f.readline()
                values['time'] = float(f.readline().split()[0])
                self.tests.append(values)
                c += 1
            print("finished "+filename)


files = os.listdir("perf_data/")
all_data = [result(f) for f in files]

def sep_by_compilation(all_data):
    arm = [d for d in all_data if (d.fname[2] == "arm")]
    arm_c = [d for d in all_data if (d.fname[2] == "c" and d.fname[3] == "arm")]
    thumb = [d for d in all_data if (d.fname[2] == "thumb")]
    thumb_c = [d for d in all_data if (d.fname[2] == "c" and d.fname[3] == "thumb")]
    return [arm, arm_c, thumb, thumb_c]

def sep_by_optimization(all_data):
    o0 = [o for o in all_data if (o.fname[-1] == "O0")]
    o1 = [o for o in all_data if (o.fname[-1] == "O1")]
    o2 = [o for o in all_data if (o.fname[-1] == "O2")]
    o3 = [o for o in all_data if (o.fname[-1] == "O3")]


stuff = sep_by_compilation(all_data)

"""
def sep_by_optimization(all_results):
    none = [r for r in all_results if (r.optimization == 'none')]
    inter= [r for r in all_results if (r.optimization == 'unrolling')]
    unrol= [r for r in all_results if (r.optimization == 'both' and r.unroll_size == 5)] #escolhido arbitrariamente
    return [none,inter,unrol]

def sep_by_size(sep_results):
    size_10 = [[r for r in results if r.size == 10] for results in sep_results]
    size_100 = [[r for r in results if r.size == 100] for results in sep_results]
    size_1000 = [[r for r in results if r.size == 1000] for results in sep_results]
    return [size_10, size_100, size_1000]

def plot_bar_time(results, plot_name,plot_unroll):
    data = [ [r.time for r in res] for res in results]
    vals = [sum(d) for d in data]
    stddev = [np.std(d) for d in data]
    mean = sum(vals)/len(vals)
    for i in range(len(vals)):
        print('optimization:',optimizations[str(i)],'error:',stddev[i],sep='\t')
    plt.bar([i for i in range(len(vals))],vals, yerr=stddev)
    plt.title(plot_name.replace('_', ' '))
    plt.ylabel('tempo de execucao')
    plt.xlabel('otimizacao')
    if(plot_unroll):
        plt.xticks([0,1,2],('none', 'unrolling', 'both'))
    else:
        plt.xticks([0,1,2,3],('none', 'interchange', 'unrolling', 'both'))
    plt.axhline(mean, color='red', linewidth=2)
    yvec = [len(res) for res in results]
    
    plt.savefig(plot_name)
    plt.clf()

def plot_bar_load(results, plot_name,plot_unroll):
    data = [[r.L1_load for r in res] for res in results]
    vals = [sum(d) for d in data]
    stddev = [np.std(d) for d in data]
    for i in range(len(vals)):
        print('optimization:',optimizations[str(i)],'error:',stddev[i],sep='\t')
    plt.bar([i for i in range(len(vals))],vals, yerr=stddev)
    plt.title(plot_name.replace('_', ' '))
    plt.ylabel('L1 Dcache Loads')
    plt.xlabel('otimizacao')
    if(plot_unroll):
        plt.xticks([0,1,2],('none', 'unrolling', 'both'))
    else:
        plt.xticks([0,1,2,3],('none', 'interchange', 'unrolling', 'both'))
    mean = sum(vals)/len(vals)
    plt.axhline(mean, color='red', linewidth=2)
    plt.savefig(plot_name)
    plt.clf()

def plot_bar_miss(results, plot_name,plot_unroll):
    data = [[r.L1_miss for r in res] for res in results]
    vals = [sum(d) for d in data]
    stddev = [np.std(d) for d in data]
    for i in range(len(vals)):
        print('optimization:',optimizations[str(i)],'error:',stddev[i],sep='\t')
    plt.bar([i for i in range(len(vals))],vals, yerr=stddev)
    plt.title(plot_name.replace('_', ' '))
    plt.ylabel('L1 Dcache Load Misses')
    plt.xlabel('otimizacao')
    if(plot_unroll):
        plt.xticks([0,1,2],('none', 'unrolling', 'both'))
    else:
        plt.xticks([0,1,2,3],('none', 'interchange', 'unrolling', 'both'))
    mean = sum(vals)/len(vals)
    plt.axhline(mean, color='red', linewidth=2)
    plt.savefig(plot_name)
    plt.clf()

def plot_bar_branch(results, plot_name,plot_unroll):
    data = [[r.branch for r in res] for res in results]
    vals = [sum(d) for d in data]
    stddev = [np.std(d) for d in data]
    for i in range(len(vals)):
        print('optimization:',optimizations[str(i)],'error:',stddev[i],sep='\t')
    plt.bar([i for i in range(len(vals))],vals, yerr=stddev)
    plt.title(plot_name.replace('_', ' '))
    plt.ylabel('Branch Instructions')
    plt.xlabel('otimizacao')
    if(plot_unroll):
        plt.xticks([0,1,2],('none', 'unrolling', 'both'))
    else:
        plt.xticks([0,1,2,3],('none', 'interchange', 'unrolling', 'both'))
    mean = sum(vals)/len(vals)
    plt.axhline(mean, color='red', linewidth=2)
    plt.savefig(plot_name)
    plt.clf()

def plot_bar_b_miss(results, plot_name,plot_unroll):
    data = [[r.branch_miss for r in res] for res in results]
    vals = [sum(d) for d in data]
    stddev = [np.std(d) for d in data]
    for i in range(len(vals)):
        print('optimization:',optimizations[str(i)],'error:',stddev[i],sep='\t')
    plt.bar([i for i in range(len(vals))],vals, yerr=stddev)
    plt.title(plot_name.replace('_', ' '))
    plt.ylabel('Branch Misses')
    plt.xlabel('otimizacao')
    if(plot_unroll):
        plt.xticks([0,1,2],('none', 'unrolling', 'both'))
    else:
        plt.xticks([0,1,2,3],('none', 'interchange', 'unrolling', 'both'))
    mean = sum(vals)/len(vals)
    plt.axhline(mean, color='red', linewidth=2)
    plt.savefig(plot_name)
    plt.clf()

def plot_all(results,plot_name,plot_unroll):
        plot_bar_time(results,'time_'+plot_name,plot_unroll)
        plot_bar_load(results,'load_'+plot_name,plot_unroll)
        plot_bar_miss(results,'load_miss_'+plot_name,plot_unroll)
        plot_bar_branch(results,'branch_'+plot_name,plot_unroll)
        plot_bar_b_miss(results,'branch_miss_'+plot_name,plot_unroll)

files_to_process = os.listdir('results/')

all_results = [result(f) for f in files_to_process]
sep_results = sep_by_optimization(all_results)
final_usage = sep_by_size(sep_results)

#Unrolling size comparison
unroll = [r for r in all_results if r.optimization == 'unrolling']
both = [r for r in all_results if r.optimization == 'both']

sep_unroll = sep_by_size([[r for r in unroll if r.unroll_size == un_size] for un_size in [2,5,10]])
sep_both = sep_by_size([[r for r in both if r.unroll_size == un_size] for un_size in [2,5,10]])

for i in [0,1,2]:
    plot_all(sep_unroll[i],'unroll_size_10'+'0'*i,True)
    plot_all(sep_both[i],'both_size_10'+'0'*i, True)

#optimization comparison
for i in [0,1,2]:
    plot_all(final_usage[i], 'size_10'+'0'*i, False)
"""
