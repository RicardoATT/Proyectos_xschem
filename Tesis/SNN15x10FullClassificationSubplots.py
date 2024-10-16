#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Tue Oct 15 15:23:31 2024

@author: ricardo
"""

import pandas as pd
import matplotlib.pyplot as plt

# Función para leer y graficar las señales en subplots separados con delay en el tiempo y colores consistentes
def leer_y_graficar_por_senales_con_colores(archivos_csv, delay=0.00055):
    # Crear una figura con 10 subplots (uno por cada señal)
    fig, axs = plt.subplots(10, 1, figsize=(10, 20))
    
    # Definir una paleta de colores para que cada señal tenga el mismo color en todos los archivos
    colores = plt.cm.get_cmap('tab10', 10)  # Paleta de 10 colores

    # Graficar cada archivo
    for i, archivo in enumerate(archivos_csv):
        # Leer el archivo CSV
        data = pd.read_csv(archivo)
        
        # Obtener el tiempo y las señales
        tiempo = data.iloc[:, 0]
        señales = data.iloc[:, 1:11]
        
        # Aplicar el retardo (delay) en el tiempo
        tiempo_delay = tiempo + (i * delay)
        
        # Graficar cada señal en su propio subplot, usando un color consistente
        for j in range(señales.shape[1]):
            axs[j].plot(tiempo_delay, señales.iloc[:, j], color=colores(j))
            axs[j].set_title(f'Patrón {j}')
            axs[j].set_ylabel('Voltaje (V)')
            axs[j].grid(True)

            # Colocar la etiqueta del tiempo en la esquina inferior derecha del subplot
            axs[j].set_xlabel('Tiempo (s)')
            axs[j].xaxis.set_label_coords(0.97, -0.1)  # Coordenadas para colocar la etiqueta en la esquina inferior derecha

    # Ajustar el diseño para evitar solapamiento
    plt.tight_layout()
    plt.savefig('Classification.png')
    plt.show()

# Lista de archivos CSV (puedes agregar las rutas correctas de tus archivos aquí)
archivos = [
    'SNN_15x10_N0.csv', 'SNN_15x10_N1.csv', 'SNN_15x10_N2.csv', 'SNN_15x10_N3.csv', 'SNN_15x10_N4.csv',
    'SNN_15x10_N5.csv', 'SNN_15x10_N6.csv', 'SNN_15x10_N7.csv', 'SNN_15x10_N8.csv', 'SNN_15x10_N9.csv'
]

# Llamar a la función para graficar con delay
leer_y_graficar_por_senales_con_colores(archivos)
