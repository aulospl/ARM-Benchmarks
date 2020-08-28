import os

files = os.listdir('mat_mult/')

for f in files:
    i = 0
    for i in range(50):
        os.system("cp mat_mult/"+f+" powertop_execs/"+f+str(i))
