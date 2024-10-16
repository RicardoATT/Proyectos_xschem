#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Mon Aug 26 11:47:24 2024

@author: ricardo
"""

import matplotlib.pyplot as plt
import matplotlib.animation as animation
import numpy as np

# Función para leer datos de archivos .txt
def read_data(file_name):
    data = np.loadtxt(file_name, skiprows=1)
    return data[:, 0], data[:, 1]

# Crear una figura y un eje
fig, ax = plt.subplots()

# Leer datos de los archivos .txt
file_names = [f'Syn7T1R_MC{i}.txt' for i in range(1,101)]  # Ajusta los nombres de los archivos según corresponda
data_list = [read_data(file) for file in file_names]

# Función de actualización para la animación
def update(frame):
    x, y = data_list[frame % len(data_list)]
    ax.clear()
    ax.plot(x, 5-y)
    ax.set_title(f'Simulación de Montecarlo\nResultado {frame + 1}')
    ax.set_xlabel("Tiempo (s)")
    ax.set_ylabel("Voltaje (V)")
    ax.grid(True)
    ax.set_ylim(2.5, 5)

# Crear la animación
ani = animation.FuncAnimation(fig, update, frames=len(file_names), interval=5000, repeat=True)

# Mostrar la figura
plt.show()