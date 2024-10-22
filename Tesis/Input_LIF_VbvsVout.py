#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Mon Oct 21 17:04:54 2024

@author: ricardo
"""

import pandas as pd
import matplotlib.pyplot as plt

# Función para leer el archivo CSV y graficar las dos señales de voltaje
def graficar_dos_senales(archivo_csv):
    # Leer el archivo CSV
    datos = pd.read_csv(archivo_csv)
    
    # Asumiendo que las columnas son 'Tiempo', 'Voltaje1' y 'Voltaje2'
    tiempo = datos.iloc[:, 0]  # Primera columna (Tiempo)
    voltaje1 = datos.iloc[:, 1]  # Segunda columna (Voltaje 1)
    voltaje2 = datos.iloc[:, 2]  # Tercera columna (Voltaje 2)

    # Crear la gráfica
    plt.figure(figsize=(10, 6))
    
    # Graficar la primera señal de voltaje
    plt.plot(tiempo, voltaje1, label='Vout', color='b')
    
    # Graficar la segunda señal de voltaje
    plt.plot(tiempo, voltaje2, label='Vbias', color='r')
    
    # Añadir etiquetas y título
    plt.title('Frecuencia de operación de la neurona LIF')
    plt.xlabel('Tiempo (s)')
    plt.ylabel('Voltaje (V)')
    
    # Añadir leyenda para diferenciar las señales
    plt.legend()

    # Mostrar la gráfica
    plt.grid(True)
    plt.show()

# Nombre del archivo CSV a leer
archivo_csv = 'Input_LIF_VbvsVout.csv'  # Cambia esto por el nombre de tu archivo
graficar_dos_senales(archivo_csv)
