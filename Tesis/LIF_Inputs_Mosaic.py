#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Tue Oct 15 11:36:15 2024

@author: ricardo
"""

import numpy as np
import matplotlib.pyplot as plt

# Función para leer el archivo .txt y procesar los datos
def leer_y_graficar_señales_impares(archivo_txt):
    # Leer el archivo asumiendo que los valores están separados por espacios o tabulaciones
    data = np.loadtxt(archivo_txt)
    
    # Separar la primera columna como el tiempo y las demás como señales
    tiempo = data[:, 0]   # Primera columna para tiempo
    señales = data[:, 1:] # Todas las demás columnas para las señales

    # Seleccionar las señales impares (1, 3, 5, ..., 29)
    indices_impares = np.arange(0, 29, 2)  # Genera [0, 2, 4, ..., 28] para las señales impares
    señales_impares = señales[:, indices_impares]

    # Crear una figura con 5 filas y 3 columnas para los subplots
    fig, axs = plt.subplots(5, 3, figsize=(15, 10))
    
    # Aplanar los ejes para iterar fácilmente
    axs = axs.flatten()

    # Graficar cada señal impar en un subplot individual
    for i in range(señales_impares.shape[1]):
        axs[i].plot(tiempo, señales_impares[:, i], label=f'Señal {indices_impares[i]+1}')
        axs[i].set_title(f'Señal {indices_impares[i]+1}')
        axs[i].set_xlabel('Tiempo (s)')
        axs[i].set_ylabel('Voltaje (V)')
        axs[i].grid(True)

    # Ajustar el diseño para que no se solapen los subplots
    plt.tight_layout()
    plt.show()

# Llamar a la función con el archivo .txt
archivo = 'SNN_15x10_TrStage.txt'  # Reemplaza con la ruta de tu archivo
leer_y_graficar_señales_impares(archivo)