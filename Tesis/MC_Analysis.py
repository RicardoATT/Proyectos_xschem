#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Mon Jul 15 17:40:50 2024

@author: ricardo
"""

import matplotlib.pyplot as plt

# Ruta del archivo
plt.close("all")

for i in range(1,101):
    file_path = 'Input_LIF_MC'+str(i)+'.txt'
    
    # Inicializar listas para almacenar los datos
    x_data = []
    y_data = []
    
    # Leer el archivo y extraer datos
    with open(file_path, 'r') as file:
        lines = file.readlines()
        for line in lines[1:]:  # Saltar el encabezado
            data = line.split()
            if len(data) >= 2:  # Asegurarse de que haya suficientes columnas
                x_data.append(float(data[0]))
                y_data.append(float(data[1]))
    
    # Crear el gráfico
    #plt.figure(figsize=(10, 6))
    plt.plot(x_data,y_data)
    plt.xlabel('Tiempo (s)')
    plt.ylabel('Voltaje de salida (V)')
    plt.title('Análisis de MonteCarlo de la Neurona LIF')
    plt.legend()
    plt.grid(True)
    plt.show()
        
