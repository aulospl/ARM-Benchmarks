#! /bin/python
import matplotlib.pyplot as plt
import sys


data = []
srt = []
with open(sys.argv[1]) as f:
    for line in f:
        data.append(float(line))
        srt.append(float(line))

plt.title(sys.argv[1])
plt.xlabel("Test")
plt.ylabel("Time")
plt.ylim(int(srt[-1]), int(srt[0]))
plt.bar(range(len(data[75:126])), data[75:126])

plt.savefig(sys.argv[1].replace(".data", ".png"))

