from mpl_toolkits.mplot3d import Axes3D
import matplotlib.pyplot as plt


from matplotlib import cm
from matplotlib.ticker import LinearLocator, FormatStrFormatter
import numpy as np


fig = plt.figure()
ax = fig.add_subplot(111, projection='3d')



x=[0, 10,20,30,40,50,60,70,80,90, 0, 10,20,30,40,50,60,70,80,90, 0, 10,20,30,40,50,60,70,80,90,0 ,10,20,30,40,50,60,70,80,90]
y=[0, 0, 0 ,0 ,0 ,0 ,0 ,0 ,0, 0, 10, 10,10,10,10,10,10,10,10,10,20,20,20,20,20,20,20,20,20,20, 30,30,30,30,30,30,30,30,30,30]
z=[156,262,126,81,132,95,51,254,140,76,209,83,259,42,77,208,76,75,262,256,267,233,259,256,266,101,262,222,200,265,262,262,268,218,250,116,248,262,168,246]


npx= np.asarray(x, dtype=np.float32)
npy = np.asarray(y, dtype=np.float32)
npz = np.asarray(z, dtype=np.float32)

surf = ax.plot_trisurf(x, y, z, linewidth=0, antialiased=False)


plt.show()
