import random
from tkinter import *
from tkinter import ttk
import tkinter as tk
#from serial import Serial
import serial
import math
from datetime import datetime


from matplotlib.backends.backend_tkagg import FigureCanvasTkAgg
from matplotlib.figure import Figure
import numpy as np
import matplotlib.pyplot as plt

import time
import threading

from threading import Thread, Event


# for queue of messaging between main program/buttons and serial comm. thread
import threading
import queue 
q = queue.Queue()
outq = queue.Queue()


############################## Serial comm start


class MyThread(threading.Thread):
    def __init__(self, q, outq):
        threading.Thread.__init__(self)
        self.q = q
        self.outq = outq

    ser = None

    def set_serial_comm(self):
        
        port = "/dev/tty"+serial_option.get()
        print(f"Connecting to {port}")

        self.ser = serial.Serial(port, 9600, timeout=4)  # Replace '/dev/ttyUSB0' with your port
        # time.sleep(2)
        #print(f"Serial port connected {dir(ser)}")

         
        self.ser.readline().decode('utf-8').strip()
        data = self.ser.readline().decode('utf-8').strip()
        print(f"Data: {data}")

        if data.startswith("AFMv"):
            print("AFM machine connected! Now find the frequency with difference")

        # just for flashing old data
        self.ser.readline().decode('utf-8').strip()
        self.ser.readline().decode('utf-8').strip()


        serial_command("demo")



    def real_serial_command(self, cmd):
        self.ser.write(cmd.encode('utf-8'))
        data = self.ser.readline().decode('utf-8').strip()
        print(f"Response: {data}")

    def real_serial_command_with_done(self, cmd):

        self.ser.write(cmd.encode('utf-8'))
       
        output = ""
        data = self.ser.readline().decode('utf-8').strip()
        print(f"Response1: {data}")

        data = self.ser.readline().decode('utf-8').strip()

        while data and not data.startswith("DONE!"):# and not data.startswith("Start to scan"):
           print(f"Response: {data}")

           # num = data.split(",")[0]
           # num = data
           # output = output + ", " + num
           output = data
           print(f"output: {output}")
           data = self.ser.readline().decode('utf-8').strip()

        print(f"Serial comm done {data}")
        if output:
            outq.put(output)

    def run(self):

        while True:
            item, done = q.get()
            print(f' -- Working on {item}/{done} time:{datetime.now().time()}')
            if item.startswith("connect"):
                self.set_serial_comm()
            elif not done:
                self.real_serial_command(item)
            else:
                self.real_serial_command_with_done(item)
            print(f' -- Finished {item}/{done} time:{datetime.now().time()}')
            q.task_done()


MyThread(q, outq).start()





def serial_command_with_done(cmd):
   
    print(f"At serial commd with done {cmd}")
    q.put((cmd, True))

    while(outq.empty()):
        pass
        
    output = outq.get()
    print(f"DATA::: {output}")
    if output:
       return output

def serial_command(cmd):
    print(f"At serail command {cmd}")
    q.put((cmd, False))




########## Serail comm end ###########################333




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




# --------------------------------- setup ----------


label = ttk.Label(master=SetupPanel,text="Init/Setup")
label.pack()



UsbSubPanel = ttk.Frame(master=SetupPanel, relief=tk.GROOVE, borderwidth=5)


label = ttk.Label(master=UsbSubPanel,text="USB Port:")
label.pack()






serial_options = ["USB0", "USB1", "USB2"]

serial_option = tk.StringVar()
serialdropdown = ttk.Combobox(UsbSubPanel, textvariable=serial_option, values=serial_options)
serialdropdown.pack()



def connect_to_port(value):
    global q
    print("About to connect really...")
    q.put(("connect", False))


serialdropdown.bind('<<ComboboxSelected>>', connect_to_port)
# serialdropdown.bind('<<ComboboxSelected>>', q.put(("connect", False)))
# serialdropdown.bind('<<ComboboxSelected>>', threading.Thread(target=serial_comm_thread_worker, args=("/dev/usb1",), daemon=True).start())
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

userFreq=tk.DoubleVar(value=35000)#32747)
freqSpinBox = tk.Spinbox(FreqSubPanel, from_= 0.0, to = 99999,width=7, increment=0.1,
    textvariable=userFreq,font=font1)


old_userFreq = 0

def freq_changed(*args):
    global old_userFreq
    """Callback function executed when the Entry content changes."""
    print(f"Entry content changed:{userFreq.get()} int:{int(10*userFreq.get())} old_int:{int(10*old_userFreq)}" )
    if int(old_userFreq) != int(userFreq.get()):
        print("Int changed")
    #    message = "bf " + str(int(userFreq.get()))
    #    ser.write(message.encode('utf-8'))
    #    data = ser.readline().decode('utf-8').strip()
    #    print(f"Response:  {data}")
        serial_command("bf " + str(int(userFreq.get())) )

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





FreqRangeSubPanel = ttk.Frame(master=ControlPanel, relief=tk.GROOVE, borderwidth=5)

freq_label = ttk.Label(master=FreqRangeSubPanel,text="Range:")
freq_label.pack()

user_freq_val=tk.IntVar(value=30000)#300)
freqSpinBox = tk.Spinbox(FreqRangeSubPanel, from_= 0, to = 50000,width=7, increment=1,
    textvariable=user_freq_val,font=font1)

#def freq_range(*args):
#   serial_command("range "+str(user_freq_val.get())    )

#user_freq_val.trace_add("write", freq_range)
freqSpinBox.pack()

FreqRangeSubPanel.pack()


def fr_range():
    print("sending range")
    serial_command("range " +str(user_freq_val.get()) )
    data = ser.readline().decode('utf-8').strip()

    while(data and not data.startswith("Min Valu")):
        print(f"Resp: {data}")
        data = ser.readline().decode('utf-8').strip()

    print(f"Resp: {data}")

finefreq= ttk.Button(FreqRangeSubPanel, text="Range", command=fr_range)
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
    global ser
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


def set_micro_steps(*args):
    print("Micro steps:", selected_option_micro.get())

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
    serial_command_with_done("ml "+selected_option_micro.get())

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
    serial_command_with_done("land " + str(selected_option_nano.get()))

land = ttk.Button(NanoPanel, text="Land", command=landing)
land.pack()










ScanSubPanel = ttk.Frame(master=NanoPanel, relief=tk.GROOVE, borderwidth=5)


shared_bool = Event()

scan_flag = False


def task(shared_bool):
    global canvas
    global pp
    global intensity

    step_size = 100

    print("In scan task step_size:" + str(step_size))


    for j in range(50):
        if not shared_bool.is_set():
            break

        output = serial_command_with_done("scanxlr "+ str(step_size))
        print(f"Output {output}")
        my_list = output.split(",")

        for i in range(100):
            intensity[2 * j][i] = my_list[i]

        pp.set_array(intensity)
        canvas.draw()

        serial_command("y "+str(step_size))


        output = serial_command_with_done("scanxrl "+str(step_size))
        my_list = output.split(",")

        for i in range(100):
            intensity[2*j+1][i] = my_list[100-i-1]

        pp.set_array(intensity)
        canvas.draw()

        serial_command("y "+str(step_size))
    
    print("Scan task ended --- ")
    serial_command("y " +str(100*step_size))


def start_scan():
    global shared_bool
    shared_bool.set()
    print(f"Starting scan...")

    thread1 = threading.Thread(target=task, args=(shared_bool,))
    thread1.start()
    print("main scan ended....")




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
