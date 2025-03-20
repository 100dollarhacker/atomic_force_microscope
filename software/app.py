from tkinter import *
from tkinter import ttk
import tkinter as tk

from matplotlib.backends.backend_tkagg import FigureCanvasTkAgg
from matplotlib.figure import Figure
import numpy as np
import matplotlib.pyplot as plt


font1=('Times 24 normal')



window = Tk()
window.title("(ugly) AFM control GUI")

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


fig = plt.figure(figsize=(12, 10), dpi=70)
ax = fig.add_subplot(111)

x = range(1,101)# [1,3,5,7,8]
y = range(1,101) #[0.55,0.65,0.75,0.85,0.95]

x, y = np.meshgrid(x, y)
z=[0]*10000
intensity = np.array(z).reshape(100, 100)
intensity[10][10] = 34
intensity[30][20] = 134

plt.pcolormesh(x, y, intensity, vmin=0, vmax = 270)
plt.colorbar()  # need a colorbar to show the intensity scale
#ddplt.show()


canvas = FigureCanvasTkAgg(fig, master=ImagePanel)
canvas_widget = canvas.get_tk_widget()
canvas_widget.pack()
canvas.draw()

#----------------------------------- cantrol --------


eject = ttk.Button(ControlPanel, text="Eject")
eject.pack()

approach = ttk.Button(ControlPanel, text="Approach")
approach.pack()

best_freq = ttk.Button(ControlPanel, text="GetFreq")
best_freq.pack()


sb2_i=tk.DoubleVar(value=32765)
sb2 = tk.Spinbox(ControlPanel, from_= 0.0, to = 99999,width=7, increment=0.1,
    textvariable=sb2_i,font=font1)


def entry_changed(*args):
    """Callback function executed when the Entry content changes."""
    print("Entry content changed:", sb2_i.get())


sb2_i.trace_add("write", entry_changed)
sb2.pack()
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

def set_nano_steps(value):
    print("Nano steps:", selected_option.get())

options = ["1000", "100", "10", "1"]

selected_option = tk.StringVar()
dropdown = ttk.Combobox(NanoPanel, textvariable=selected_option, values=options)


dropdown.bind('<<ComboboxSelected>>', set_nano_steps)

dropdown.current(0)
dropdown.pack(pady=20)
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

def set_micro_steps(value):
    print("Micro steps:", selected_option.get())

options_micro = ["1000", "100", "10", "1"]

selected_option_micro = tk.StringVar()
dropdown_micro = ttk.Combobox(MicroPanel, textvariable=selected_option, values=options)


dropdown_micro.bind('<<ComboboxSelected>>', set_micro_steps)

dropdown_micro.current(0)
dropdown_micro.pack(pady=20)



window.mainloop()
