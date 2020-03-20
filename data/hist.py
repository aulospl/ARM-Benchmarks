#! /bin/python
import matplotlib.pyplot as plt
import sys


data = []
srt = []
with open(sys.argv[1]) as f:
    for line in f:
        data.append(float(line))
#        srt.append(float(line))

for i in range(75, 126):
    srt.append(data[i])

srt.sort()
#print(srt)
#print(len(srt))
plt.title(sys.argv[1])
plt.xlabel("Test")
plt.ylabel("Time")
#plt.ylim(srt[0], srt[50])
#plt.bar(range(51), srt)
plt.hist(data[75:126])
plt.savefig(sys.argv[1].replace(".data", "_histogram.png"))

