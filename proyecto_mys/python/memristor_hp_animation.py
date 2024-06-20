import numpy as np
import matplotlib.pyplot as plt
import math
from matplotlib.animation import FuncAnimation

class HPMemristor:
    
    def __init__(self, r_on = 100, r_off = 10_000, w_len = 10e-9, w0 = 0.2, mu_v = 1e-14):
        
        self.r_on = r_on
        self.r_off = r_off
        self.w_len = w_len
        self.w0 = w0
        self.mu_v = mu_v
        
        self.voltage = []
        self.current = []
        self.resistance = []
        self.w = []
        self.dt = 1e-6
        
    def init_state(self):
        self.current = []
        self.resistance = []
        self.w = []
    
    def set_input_voltage(self, voltages: list):
        self.voltage = voltages
        
    def __hyst_func(self, w, p = 10):
        return 1 - (2*w - 1)**(2*p)
    
    def __update_state(self, idx):
        if idx == 0:
            actual_w = self.w0
            actual_res = self.r_on * self.w0 + self.r_off * (1 - self.w0)
        else:
            coef = self.r_on / math.pow(self.w_len, 2)
            last_voltage = self.voltage[idx - 1]
            last_w = self.w[idx - 1]
            dw = self.mu_v * coef * last_voltage * self.__hyst_func(last_w) * self.dt
            actual_w = self.w[idx -1] + dw
            actual_res = self.r_on * self.w[idx-1] + self.r_off * (1 - actual_w)

        return actual_w, actual_res
        
    def run_simulation(self):
        for idx, v in enumerate(self.voltage):
            actual_w, actual_res = self.__update_state(idx)
            self.w.append(actual_w)
            self.resistance.append(actual_res)
            self.current.append(v / actual_res)
            print(self.resistance)
            print(self.voltage[0])
    
    def plot_memristance(self):
        fig, ax = plt.subplots()
        #ax.set_xlim(-1.5, 1.5)
        #ax.set_ylim(-0.02, 0.02)
        fig.add_axes(ax)
        ln, = plt.plot(self.resistance, self.voltage[0], "r*")
        return ln
    
    def plot_static(self):
        fig, ax = plt.subplots()
        ax.set_xlim(-1.5, 1.5)
        ax.set_ylim(-0.02, 0.02)
        fig.add_axes(ax)
        ln, = plt.plot(self.voltage, self.current, "r*")
        return ln
    
    def plot_animation(self):
        fig, ax = plt.subplots()
        ln, = plt.plot([], [], 'r*', animated=True)
        
        def __init_axes():
            ax.set_xlim(-1.5, 1.5)
            ax.set_ylim(-0.02, 0.02)
            return ln,
        
        def __update_graph(voltage):
            actual_idx = len(self.current)
            actual_w, actual_res = self.__update_state(actual_idx)
            self.w.append(actual_w)
            self.resistance.append(actual_res)
            self.current.append(voltage / actual_res)
            ln.set_data(self.voltage[:actual_idx+1], self.current)
            return ln,
        
        anim = FuncAnimation(fig, __update_graph, frames=self.voltage, interval=50, init_func=__init_axes, blit=True)
        plt.show()