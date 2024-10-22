#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Mon Oct 21 16:51:45 2024

@author: ricardo
"""

import pandas as pd
import matplotlib.pyplot as plt

# Función para leer el archivo CSV y graficar
def graficar_datos(archivo_csv):
    # Leer el archivo CSV
    datos = pd.read_csv(archivo_csv)
    
    # Asumiendo que las columnas son 'Voltaje' y 'Frecuencia'
    voltaje = datos.iloc[:, 0]  # Primera columna (Voltaje)
    frecuencia = datos.iloc[:, 1]  # Segunda columna (Frecuencia)
    
    # Encontrar los valores mínimos y máximos de la frecuencia
    frecuencia_min = frecuencia.min()
    frecuencia_max = frecuencia.max()

    # Crear la gráfica
    plt.figure(figsize=(10, 6))
    plt.plot(voltaje, frecuencia, label='Frecuencia vs Voltaje', color='b')

    # Marcar el valor mínimo y máximo de la frecuencia
    plt.scatter(voltaje[frecuencia.idxmin()], frecuencia_min, color='r', label='Mínimo: '+ str(round(frecuencia_min, 2)) +'Hz')
    plt.scatter(voltaje[frecuencia.idxmax()], frecuencia_max, color='g', label='Máximo: '+ str(round(frecuencia_max*1e-6, 2)) +'MHz')

    # Añadir etiquetas y título
    plt.title('Voltaje vs Frecuencia')
    plt.xlabel('Voltaje (V)')
    plt.ylabel('Frecuencia (Hz)')
    plt.legend()

    # Mostrar la gráfica
    plt.grid(True)
    plt.show()

# Nombre del archivo CSV a leer
archivo_csv = 'Input_LIF_Op_Frq.csv'  # Cambia esto por el nombre de tu archivo
graficar_datos(archivo_csv)
