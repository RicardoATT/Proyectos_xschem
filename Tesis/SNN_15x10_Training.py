#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Tue Oct 15 11:17:10 2024

@author: ricardo
"""

import pandas as pd
import matplotlib.pyplot as plt

# Función para leer el archivo CSV y graficar las señales de la 1 a la 16
def leer_y_graficar(csv_file):
    # Leer el archivo CSV
    data = pd.read_csv(csv_file)
    
    # Separar la primera columna como el tiempo y las columnas 2 a 17 como las señales 1 a 16
    tiempo = data.iloc[:, 0]   # Primera columna para tiempo
    señales = data.iloc[:, 1:17] # Columnas 2 a 17 (señales 1 a 16)

    # Modificar las señales: 5 - valor de la señal
    señales_modificadas = 5 - señales

    # Crear una figura con 5 filas y 3 columnas para los subplots
    fig, axs = plt.subplots(5, 3, figsize=(15, 10))
    
    # Aplanar los ejes para iterar fácilmente
    axs = axs.flatten()

    # Graficar cada señal modificada en un subplot individual
    for i in range(señales_modificadas.shape[1]):
        axs[i].plot(tiempo, señales_modificadas.iloc[:, i], label=f'Señal {i+1}')
        axs[i].set_title(f'Señal {i+1} (Modificada)')
        axs[i].set_xlabel('Tiempo (s)')
        axs[i].set_ylabel('Voltaje Modificado (V)')
        axs[i].grid(True)

    # Eliminar cualquier subplot vacío en caso de que haya menos de 15 señales
    for j in range(señales_modificadas.shape[1], len(axs)):
        fig.delaxes(axs[j])

    # Ajustar el diseño para que no se solapen los subplots
    plt.tight_layout()
    plt.show()

# Llamar a la función con el archivo CSV
archivo = 'SNN_15x10_TrStageSyn.csv'  # Reemplaza con la ruta de tu archivo
leer_y_graficar(archivo)
