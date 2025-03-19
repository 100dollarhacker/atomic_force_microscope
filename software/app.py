from tkinter import *
from tkinter import ttk
import tkinter as tk

from matplotlib.backends.backend_tkagg import FigureCanvasTkAgg
from matplotlib.figure import Figure
import numpy as np
import matplotlib.pyplot as plt




window = Tk()


ControlPanel = ttk.Frame(master=window, relief=tk.GROOVE, borderwidth=5)
ControlPanel.pack(side=tk.LEFT)
NanoPanel = ttk.Frame(master=window, relief=tk.GROOVE, borderwidth=5)
NanoPanel1 = ttk.Frame(master=NanoPanel, borderwidth=5)
NanoPanel2 = ttk.Frame(master=NanoPanel, borderwidth=5)
NanoPanel1.pack()
NanoPanel2.pack()
NanoPanel.pack(side=tk.LEFT)
MicroPanel = ttk.Frame(master=window, relief=tk.GROOVE, borderwidth=5)
MicroPanel.pack(side=tk.LEFT)
ImagePanel = ttk.Frame(master=window, relief=tk.GROOVE, borderwidth=5)
ImagePanel.pack()


# ----------------------------------- image panel 

#fig = Figure(figsize=(14, 14), dpi=100)
#ax = fig.add_subplot(111)

image_datax = []
image_datay = []
image_dataz = []
for i in range(1,10):
    for j in range(1,10):
        #print(f" {i},{j} ")
        image_datax.append(j)
        image_datay.append(i)
        image_dataz.append(i+j)
#image_data = [[[0.1, 0.2, 0.3],   # x1, y1, z1  # first row
#        [0.4, 0.5, 0.6],   # x2, y2, z2
#        [0.7, 0.8, 0.9]],  # x3, y3, z3
#
#       [[0.2, 0.2, 0.3],   # x1, y1, z1  # second row
#        [0.4, 0.5, 0.6],   # x2, y2, z2
#        [0.7, 0.8, 0.9]]]

#image_data = np.array(image_data1)
#image_data.shape()

#print(f" data: {type(image_data)}")
#image_data = np.random.rand(100, 100)
#image_data = [image_datax, image_datay, image_dataz]


#x_list = np.array(X_COORDINATE)
#z_list = np.array(Z_COORDINATE)
#C_I_list = np.array(C_I)



#print(f" data: {(image_data)}")
# Display the image on the axes
#im = ax.imshow(image_data, cmap='viridis')
#ax.imshow([[2,4,1,6a]])
#
#ax.plot([[1, 2, 3, 4], [5, 6, 7, 8], [3,3,3,3]])

#ax.colorbar(lable='Values')
#plt.imshow(data, cmap='viridis', interpolation='nearest')

# Add a colorbar
#plt.colorbar(label='Values')

#from scipy.interpolate import interp2d
#f = interp2d(x_list, z_list, C_I_list, kind="linear")

#x_coords = np.arange(min(x_list), max(x_list) + 1)
#z_coords = np.arange(min(z_list), max(z_list) + 1)
#c_i = f(x_coords, z_coords)

fig = plt.figure(figsize=(10, 10), dpi=70)
ax = fig.add_subplot(111)

x = range(1,101)# [1,3,5,7,8]
y = range(1,101) #[0.55,0.65,0.75,0.85,0.95]

x, y = np.meshgrid(x, y)
#intensity = range(1,101)
#z=range(1,100*100+1)
z=[0]*10000
intensity = np.array(z).reshape(100, 100)
#intensity = np.random.random(size=(100,100))
intensity[10][10] = 34
intensity[30][20] = 134
print(f"{type(intensity)}")

plt.pcolormesh(x, y, intensity, vmin=0, vmax = 270)
#ax.plot(x, y, intensity)
#ax.plot.colorbar()  # need a colorbar to show the intensity scale
#plt.show()


canvas = FigureCanvasTkAgg(fig, master=ImagePanel)
canvas_widget = canvas.get_tk_widget()
canvas_widget.pack()
canvas.draw()




#fig = Figure(figsize=(14, 14), dpi=100)
#ax = fig.add_subplot(111)

#x = range(1,101)# [1,3,5,7,8]
#y = range(1,101) #[0.55,0.65,0.75,0.85,0.95]

#x, y = np.meshgrid(x, y)
##intensity = range(1,101)
##z=range(1,100*100+1)
#z=[0]*10000
#intensity = np.array(z).reshape(100, 100)
##intensity = np.random.random(size=(100,100))
#intensity[10][10] = 34
#intensity[30][20] = 134
#print(f"{type(intensity)}")

#plt.pcolormesh(x, y, intensity, vmin=0, vmax = 270)
#plt.colorbar()  # need a colorbar to show the intensity scale
#plt.show()

#----------------------------------- cantrol --------


eject = ttk.Button(ControlPanel, text="Eject")
eject.pack()

approach = ttk.Button(ControlPanel, text="Approach")
approach.pack()

#----------------------------------- nano ------------


label = ttk.Label(master=NanoPanel1,text="NanoPosi")
label.pack()

backspace = ttk.Button(NanoPanel2, text="←") 
backspace.grid(row=1, column=0, padx=2, pady=0, sticky="nw")

plusminus = ttk.Button(NanoPanel2, text="→")
plusminus.grid(row=1, column=3, padx=2, pady=2, sticky="ne")

sqroot = ttk.Button(NanoPanel2, text="↑")
sqroot.grid(row=0, column=2, padx=2, pady=2, sticky="nw")

sqroot = ttk.Button(NanoPanel2, text="↓")
sqroot.grid(row=2, column=2, padx=2, pady=2, sticky="nw")


#----------------------------------- micro ------------

MicroPanel1 = tk.Frame(master=MicroPanel, relief=FLAT, borderwidth=5)
MicroPanel1.pack(side=tk.TOP)

MicroPanel2 = tk.Frame(master=MicroPanel, relief=FLAT, borderwidth=5)
MicroPanel2.pack(side=tk.TOP)

label = ttk.Label(master=MicroPanel1,text="MicroPosi")
label.pack()

sqroot = ttk.Button(MicroPanel2, text="↑")
sqroot.grid(row=0, column=2, padx=2, pady=2, sticky="nw")

sqroot = ttk.Button(MicroPanel2, text="↓")
sqroot.grid(row=2, column=2, padx=2, pady=2, sticky="nw")

window.mainloop()
