#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Tue Oct 15 15:23:31 2024

@author: ricardo
"""

import pandas as pd
import matplotlib.pyplot as plt

# Función para leer y graficar las señales en subplots separados con delay en el tiempo y colores consistentes
def leer_y_graficar_por_senales_con_colores(archivos_csv, delay=0.00015):
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
    plt.savefig('Classification_lt.png')
    plt.show()

# Lista de archivos CSV (puedes agregar las rutas correctas de tus archivos aquí)
archivos = ["SNN_15x10_N0_lt.csv", "SNN_15x10_N1_lt.csv", "SNN_15x10_N2_lt.csv", "SNN_15x10_N3_lt.csv", "SNN_15x10_N4_lt.csv", "SNN_15x10_N5_lt.csv", "SNN_15x10_N6_lt.csv", "SNN_15x10_N7_lt.csv", "SNN_15x10_N8_lt.csv", "SNN_15x10_N9_lt.csv"]
#archivos = ['SNN_15x10_N0.csv', 'SNN_15x10_N1.csv', 'SNN_15x10_N2.csv', 'SNN_15x10_N3.csv', 'SNN_15x10_N4.csv', 'SNN_15x10_N5.csv', 'SNN_15x10_N6.csv', 'SNN_15x10_N7.csv', 'SNN_15x10_N8.csv', 'SNN_15x10_N9.csv']
#archivos = ['N0_Noisy_1.csv', 'N1_Noisy_1.csv', 'N2_Noisy_1.csv', 'N3_Noisy_1.csv', 'N4_Noisy_1.csv', 'N5_Noisy_1.csv', 'N6_Noisy_1.csv', 'N7_Noisy_1.csv', 'N8_Noisy_1.csv', 'N9_Noisy_1.csv']
#archivos = ['N0_Noisy_2.csv', 'N1_Noisy_2.csv', 'N2_Noisy_2.csv', 'N3_Noisy_2.csv', 'N4_Noisy_2.csv', 'N5_Noisy_2.csv', 'N6_Noisy_2.csv', 'N7_Noisy_2.csv', 'N8_Noisy_2.csv', 'N9_Noisy_2.csv']
#archivos = ['N0_Noisy_3.csv', 'N1_Noisy_3.csv', 'N2_Noisy_3.csv', 'N3_Noisy_3.csv', 'N4_Noisy_3.csv', 'N5_Noisy_3.csv', 'N6_Noisy_3.csv', 'N7_Noisy_3.csv', 'N8_Noisy_3.csv', 'N9_Noisy_3.csv']
#archivos = ['N0_Noisy_4.csv', 'N1_Noisy_4.csv', 'N2_Noisy_4.csv', 'N3_Noisy_4.csv', 'N4_Noisy_4.csv', 'N5_Noisy_4.csv', 'N6_Noisy_4.csv', 'N7_Noisy_4.csv', 'N8_Noisy_4.csv', 'N9_Noisy_4.csv']


# Llamar a la función para graficar con delay
leer_y_graficar_por_senales_con_colores(archivos)
