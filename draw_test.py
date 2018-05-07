import numpy as np
import matplotlib.pyplot as plt
import sys
begin = int(sys.argv[1])
end = int(sys.argv[2])
interval = int(sys.argv[3])

x = []
i = begin
while i <= end:
    x.append(i)
    i += interval

y1 = np.loadtxt('val.log')
y2 = np.loadtxt('test.log')

plt.figure('val')
plt.plot(x,y1)
plt.xlabel('iteration')
plt.ylabel('MAP')

plt.figure('test')
plt.plot(x,y2)
plt.xlabel('iteration')
plt.ylabel('MAP')
plt.show()

