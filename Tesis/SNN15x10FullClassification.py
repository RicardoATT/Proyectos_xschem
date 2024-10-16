#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Tue Oct 15 17:11:56 2024

@author: ricardo
"""

import pandas as pd
import matplotlib.pyplot as plt

# Función para leer y graficar todas las señales de los 10 archivos en un solo plot con delay en el tiempo
def leer_y_graficar_en_un_solo_plot(archivos_csv, delay=0.00055):
    # Crear una figura para un solo gráfico
    plt.figure(figsize=(10, 6))

    # Definir una paleta de colores para que cada señal tenga el mismo color en todos los archivos
    colores = plt.cm.get_cmap('tab10', 10)  # Paleta de 10 colores
    
    # Graficar todas las señales de los 10 archivos
    for i, archivo in enumerate(archivos_csv):
        # Leer el archivo CSV
        data = pd.read_csv(archivo)
        
        # Obtener el tiempo y las señales
        tiempo = data.iloc[:, 0]
        señales = data.iloc[:, 1:11]
        
        # Aplicar el retardo (delay) en el tiempo
        tiempo_delay = tiempo + (i * delay)
        
        # Graficar cada señal usando el mismo color para cada una
        for j in range(señales.shape[1]):
            plt.plot(tiempo_delay, señales.iloc[:, j], color=colores(j), label=f'Señal {j+1}' if i == 0 else "")
    
    # Configurar títulos y etiquetas
    plt.title('Señales de los 10 archivos con retardo en el tiempo')
    plt.xlabel('Tiempo (s)')
    plt.ylabel('Voltaje (V)')
    plt.grid(True)

    # Crear una única leyenda para todas las señales
    handles, labels = plt.gca().get_legend_handles_labels()
    plt.legend(handles[:10], labels[:10], loc='upper right', title='Señales')  # Leyenda para las señales 1 a 10

    # Mostrar el gráfico
    plt.tight_layout()
    plt.show()
    
archivos = [
    'SNN_15x10_N0.csv', 'SNN_15x10_N1.csv', 'SNN_15x10_N2.csv', 'SNN_15x10_N3.csv', 'SNN_15x10_N4.csv',
    'SNN_15x10_N5.csv', 'SNN_15x10_N6.csv', 'SNN_15x10_N7.csv', 'SNN_15x10_N8.csv', 'SNN_15x10_N9.csv'
]
    
leer_y_graficar_en_un_solo_plot(archivos)