#! /bin/python
import sys
import re

if len(sys.argv) != 2 or sys.argv[1] == "-h":
    print("Enter file name. Output file will be <filename>.data")
    sys.exit

raw_data = []

# open file and parse data
with open(sys.argv[1]) as f:
    for count, line in enumerate(f, start=1):
        if count %4 == 2:
            time = line.strip().split("real")
            raw_data.append(re.split(r"[\W+m+s]", time[1].strip()))
f.close()

# save data into new readable file, time presented in seconds
nf = open(sys.argv[1]+".data", "w")

for l in raw_data:
    new_time = (int(l[0])*60) + (int(l[1])) + (float(l[2])/1000)
    #print(new_time)
    nf.write(str(new_time)+"\n")
    # print(l)


nf.close()

