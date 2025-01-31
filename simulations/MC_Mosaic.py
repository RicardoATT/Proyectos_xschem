#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Mon Aug 26 12:32:11 2024

@author: ricardo
"""

import matplotlib.pyplot as plt
import numpy as np

def read_data(file_name):
    data = np.loadtxt(file_name, skiprows=1)
    return data[:, 0], data[:, 1]

# Nombres de los archivos
file_names = [f'MC_LIF_Neuron{i}.txt' for i in range(1,17)]  # Ajusta los nombres de los archivos según corresponda
data_list = [read_data(file) for file in file_names]

# Crear una figura y una cuadrícula de subplots (2 filas por 5 columnas)
fig, axes = plt.subplots(2, 1, figsize=(17, 10))

# Asegurarse de que axes es una lista plana
axes = axes.flatten()

# Plotear en cada subplot
for i, (ax, (x, y)) in enumerate(zip(axes, data_list)):
    ax.plot(x, y)
    ax.set_title(f'Resultado {i + 1}', fontweight="bold")
    ax.grid(False)
    ax.set_ylim(0.25, 2)
    ax.set_xlabel("Tiempo (s)", fontstyle="italic")
    ax.set_ylabel("Voltaje (V)", fontstyle="italic")
    
# Ajustar el diseño y mostrar la figura
plt.tight_layout()
plt.show()