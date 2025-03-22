import random
from tkinter import *
from tkinter import ttk
import tkinter as tk
#from serial import Serial
import serial
import math


from matplotlib.backends.backend_tkagg import FigureCanvasTkAgg
from matplotlib.figure import Figure
import numpy as np
import matplotlib.pyplot as plt

import time
import threading

from threading import Thread, Event


font1=('Times 24 normal')



window = Tk()
window.title("(simple/hacky) AFM control GUI")


SetupPanel = ttk.Frame(master=window, relief=tk.GROOVE, borderwidth=5)
SetupPanel.pack(side=tk.LEFT)
ControlPanel = ttk.Frame(master=window, relief=tk.GROOVE, borderwidth=5)
ControlPanel.pack(side=tk.LEFT)

MicroPanel = ttk.Frame(master=window, relief=tk.GROOVE, borderwidth=5)
MicroPanel.pack(side=tk.LEFT)

NanoPanel = ttk.Frame(master=window, relief=tk.GROOVE, borderwidth=5)
NanoPanel1 = ttk.Frame(master=NanoPanel, borderwidth=5)
NanoPanel2 = ttk.Frame(master=NanoPanel, borderwidth=5)
NanoPanel1.pack()
NanoPanel2.pack()
NanoPanel.pack(side=tk.LEFT)

ImagePanel = ttk.Frame(master=window, relief=tk.GROOVE, borderwidth=5)
ImagePanel.pack()



def serial_command(cmd):
    ser.write(cmd.encode('utf-8'))
    data = ser.readline().decode('utf-8').strip()
    print(f"Response: {data}")


# --------------------------------- setup ----------


label = ttk.Label(master=SetupPanel,text="Init/Setup")
label.pack()



UsbSubPanel = ttk.Frame(master=SetupPanel, relief=tk.GROOVE, borderwidth=5)


label = ttk.Label(master=UsbSubPanel,text="USB Port:")
label.pack()

ser = None

def set_serial_comm(value):
    global ser
    port = "/dev/tty"+serial_option.get()
    print(f"Connecting to {port}")

    ser = serial.Serial(port, 9600)  # Replace '/dev/ttyUSB0' with your port
    #print(f"Serial port connected {dir(ser)}")

     
    ser.readline().decode('utf-8').strip()
    data = ser.readline().decode('utf-8').strip()
    print(f"Data: {data}")

    if data.startswith("AFMv"):
        print("AFM machine connected! Now find the frequency with difference")

    # just for flashing old data
    ser.readline().decode('utf-8').strip()
    ser.readline().decode('utf-8').strip()



serial_options = ["USB0", "USB1", "USB2"]

serial_option = tk.StringVar()
serialdropdown = ttk.Combobox(UsbSubPanel, textvariable=serial_option, values=serial_options)
serialdropdown.pack()


serialdropdown.bind('<<ComboboxSelected>>', set_serial_comm)
serialdropdown.current(0)
UsbSubPanel.pack()



#----------------------------------- Cantiliver --------


label = ttk.Label(master=ControlPanel,text="Cantiliver")
label.pack()



ThresholdSubPanel = ttk.Frame(master=ControlPanel, relief=tk.GROOVE, borderwidth=5)

thr_label = ttk.Label(master=ThresholdSubPanel,text="Threshold:")
thr_label.pack()

user_thr_val=tk.IntVar(value=200)
thrSpinBox = tk.Spinbox(ThresholdSubPanel, from_= 0, to = 500,width=7, increment=1,
    textvariable=user_thr_val,font=font1)

def thr_changed(*args):
   serial_command("thr "+str(user_thr_val.get())    )

user_thr_val.trace_add("write", thr_changed)
thrSpinBox.pack()

ThresholdSubPanel.pack()


FreqSubPanel = ttk.Frame(master=ControlPanel, relief=tk.GROOVE, borderwidth=5)

label = ttk.Label(master=FreqSubPanel,text="Freq:")
label.pack()

userFreq=tk.DoubleVar(value=32765)
freqSpinBox = tk.Spinbox(FreqSubPanel, from_= 0.0, to = 99999,width=7, increment=0.1,
    textvariable=userFreq,font=font1)


old_userFreq = 0

def freq_changed(*args):
    global old_userFreq
    """Callback function executed when the Entry content changes."""
    print(f"Entry content changed:{userFreq.get()} int:{int(10*userFreq.get())} old_int:{int(10*old_userFreq)}" )
    if int(old_userFreq) != int(userFreq.get()):
        print("Int changed")
        message = "bf " + str(int(userFreq.get()))
        ser.write(message.encode('utf-8'))
        data = ser.readline().decode('utf-8').strip()

        print(f"Response:  {data}")

        old_userFreq = int(userFreq.get())

    if old_userFreq > userFreq.get():
        print(f"Went Down by {int((10*old_userFreq - 10*userFreq.get()))}")
        for _ in range(int((10*old_userFreq - 10*userFreq.get()))):
            serial_command("fdd")
    else:
        print(f"Went UP by {int((10*userFreq.get()-10*old_userFreq))}")
        for _ in range(int(10*userFreq.get()-10*old_userFreq)):
            serial_command("fuu")

    old_userFreq = userFreq.get()


userFreq.trace_add("write", freq_changed)
freqSpinBox.pack()

FreqSubPanel.pack()

def fr_range():
    print("sending range")
    serial_command("range")
    data = ser.readline().decode('utf-8').strip()

    while(data and not data.startswith("Min Valu")):
        print(f"Resp: {data}")
        data = ser.readline().decode('utf-8').strip()

    print(f"Resp: {data}")

finefreq= ttk.Button(ControlPanel, text="Range", command=fr_range)
finefreq.pack()


def fr_fine_range():
    serial_command("msrange")
    data = ser.readline().decode('utf-8').strip()

    while(data and not data.startswith("Min Valu")):
        print(f"Resp: {data}")
        data = ser.readline().decode('utf-8').strip()

    print(f"Resp: {data}")


finefreq= ttk.Button(ControlPanel, text="FineFreq",command=fr_fine_range)
finefreq.pack()



def freq_resp():
    serial_command("fr")
    # message = "fr"
    # ser.write(message.encode('utf-8'))
    # data = ser.readline().decode('utf-8').strip()
    # print(f"Freq. response is: {data}")


best_freq = ttk.Button(ControlPanel, text="FreqResponse", command = freq_resp)
best_freq.pack()


#----------------------------------- micro ------------

MicroPanel1 = tk.Frame(master=MicroPanel, relief=FLAT, borderwidth=5)
MicroPanel1.pack(side=tk.TOP)

MicroPanel2 = tk.Frame(master=MicroPanel, relief=FLAT, borderwidth=5)
MicroPanel2.pack(side=tk.TOP)

label = ttk.Label(master=MicroPanel1,text="MicroPosi")
label.pack()

def micro_up():
    serial_command("mu " + selected_option_micro.get())

def micro_down():
    serial_command("md " + selected_option_micro.get())

sqroot = ttk.Button(MicroPanel2, text="↑", command=micro_up)
sqroot.grid(row=0, column=2, padx=2, pady=2, sticky="nw")

sqroot = ttk.Button(MicroPanel2, text="↓", command=micro_down)
sqroot.grid(row=2, column=2, padx=2, pady=2, sticky="nw")


def set_micro_steps():
    print("Micro steps:", options_micro.get())

options_micro = ["1000", "100", "10", "1"]

selected_option_micro = tk.StringVar()
dropdown_micro = ttk.Combobox(MicroPanel, textvariable=selected_option_micro, values=options_micro)


dropdown_micro.bind('<<ComboboxSelected>>', set_micro_steps)

dropdown_micro.current(2)
dropdown_micro.pack(pady=20)

def eject_micro():
    print("Ejecting ... ")
    serial_command("mu 3000")

eject = ttk.Button(MicroPanel, text="Eject", command=eject_micro)
eject.pack()


def approach_micro():
    print("Approaching... ")
    serial_command("ml "+selected_option_micro.get())

approach = ttk.Button(MicroPanel, text="Approach", command=approach_micro)
approach.pack()




#----------------------------------- nano ------------


label = ttk.Label(master=NanoPanel1,text="NanoPosi")
label.pack()

backspace = ttk.Button(NanoPanel2, text="←") 
backspace.grid(row=1, column=0, padx=2, pady=0, sticky="nw")

plusminus = ttk.Button(NanoPanel2, text="→")
plusminus.grid(row=1, column=3, padx=2, pady=2, sticky="ne")


# setting nano x,y,z coridnates to zero
def nano_reset_position():
    serial_command("reset")

zero = ttk.Button(NanoPanel2, text="0", command=nano_reset_position)
zero.grid(row=1, column=2, padx=2, pady=2)


def nano_up():
    # This is not a mistake nano up is actually down... long story ... I should change it
    serial_command("d " + selected_option_nano.get())

def nano_down():
    # This is not a mistake nano up is actually down... long story ... I should change it
    serial_command("u " + selected_option_nano.get())

sqroot = ttk.Button(NanoPanel2, text="↑", command=nano_up)
sqroot.grid(row=0, column=2, padx=2, pady=2, sticky="nw")

sqroot = ttk.Button(NanoPanel2, text="↓", command=nano_down)
sqroot.grid(row=2, column=2, padx=2, pady=2, sticky="nw")

def set_nano_steps(value):
    print("Nano steps:", selected_option_nano.get())

options = ["1000", "100", "10", "1"]

selected_option_nano = tk.StringVar()
dropdown = ttk.Combobox(NanoPanel, textvariable=selected_option_nano, values=options)


dropdown.bind('<<ComboboxSelected>>', set_nano_steps)

dropdown.current(0)
dropdown.pack(pady=20)

def landing():
    serial_command("land " + str(selected_option_nano.get()))

land = ttk.Button(NanoPanel, text="Land", command=landing)
land.pack()










ScanSubPanel = ttk.Frame(master=NanoPanel, relief=tk.GROOVE, borderwidth=5)


shared_bool = Event()

scan_flag = False


def task(shared_bool):
    global canvas
    global pp
    global intensity

    print("In task")
    for i in range(100):
        if not shared_bool.is_set():
            break
        time.sleep(1)
        for j in range(100):
            intensity[i][j] = 123# random.Random(233)
        # intensity2 = np.array(z).reshape(100, 100)
        pp.set_array(intensity)
        canvas.draw()

    print("Scan stopped --- ")


def start_scan():
    global shared_bool
    shared_bool.set()
    print(f"Starting scan...")

    thread1 = threading.Thread(target=task, args=(shared_bool,))
    thread1.start()





def stop_scan():
    global scan_flag
    shared_bool.clear()

    print("Stopping scan")

start = ttk.Button(ScanSubPanel, text="Start Scan", command=start_scan)
start.pack()

stop = ttk.Button(ScanSubPanel, text="Stop Scan", command=stop_scan)
stop.pack()



ScanSubPanel.pack()


def reset_graph():
    global canvas
    global pp
    global intensity
    z = [0] * 10000
    intensity = np.array(z).reshape(100, 100)
    pp.set_array(intensity)
    canvas.draw()


reset_button = ttk.Button(NanoPanel, text="Reset Graph", command=reset_graph)
reset_button.pack()













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

pp = plt.pcolormesh(x, y, intensity, vmin=0, vmax = 270)
plt.colorbar()  # need a colorbar to show the intensity scale



canvas = FigureCanvasTkAgg(fig, master=ImagePanel)
canvas_widget = canvas.get_tk_widget()
canvas_widget.pack()
canvas.draw()


window.mainloop()
