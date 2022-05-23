import numpy as np
import matplotlib.pyplot as plt

# Inspiration from https://stackoverflow.com/questions/6148207/linear-regression-with-matplotlib-numpy

total_params = [38098, 58998, 76656, 109680, 142704, 175728]
total_time = [26268.8, 40335.4, 52477, 74971.2, 97474.3, 119942]

coef = np.polyfit(total_params,total_time,1)
poly1d_fn = np.poly1d(coef)

plt.plot(total_params,total_time, 'yo', total_params, poly1d_fn(total_params), '--k')

plt.xlabel("Number of Parameters")
plt.ylabel("Execution Time (ns)")
plt.savefig('linearity_plot_with_params.png', dpi=300)
plt.show()