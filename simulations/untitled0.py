#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Mon Jul 15 17:40:50 2024

@author: cic
"""

import matplotlib.pyplot as plt

# Ruta del archivo
plt.close("all")

for i in range(1,11):
    file_path = './LIF_neuron_cc_mc'+str(i)+'.txt'
    
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
    plt.plot(x_data,y_data, label='Datos')
    plt.xlabel('Columna 2 (X)')
    plt.ylabel('Columna 3 (Y)')
    plt.title('Gráfico de Columna 2 vs Columna 3')
    plt.legend()
    plt.grid(True)
    plt.show()
        
