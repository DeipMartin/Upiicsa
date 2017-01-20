import numpy as np
import matplotlib.pyplot as plt

value = np.random.poisson(20, 1000)
count, bins, ignored = plt.hist(value, 20, normed=True)
plt.show()
