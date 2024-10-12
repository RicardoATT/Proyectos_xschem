#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Wed Oct  9 20:16:31 2024

@author: ricardo
"""

import csv
import matplotlib.pyplot as plt

def plot_csv_data(output_csv):
    x_values = []
    y_values = {i: [] for i in range(1, 11)}  # Crear un diccionario para almacenar las 10 series de Y (col 16-25)

    # Leer el archivo .csv
    with open(output_csv, 'r') as csv_file:
        reader = csv.reader(csv_file)
        
        # Saltar la primera fila (encabezado o datos no deseados)
        next(reader)
        
        for row in reader:
            # Asegurarse de que la fila tenga suficientes datos
            if len(row) >= 11:
                # La primera columna es X, las columnas 16-25 son Y
                x_values.append(float(row[0]))  # Convertir a float la columna 0
                for i in range(1, 11):  # Columnas 16-25
                    y_values[i].append(float(row[i]))

    # Graficar los datos
    plt.figure(figsize=(12, 8))
    for i in range(1, 11):
        plt.plot(x_values, y_values[i], label=f'Columna {15 + i} (Y{i})', marker=',')

    # Configurar el gráfico
    plt.xlabel('Columna 1 (X)')
    plt.ylabel('Valores de Y')
    plt.title('Gráfico de la primera columna vs columnas 16 a 25')
    plt.legend()
    plt.grid(True)
    plt.show()

# Rutas del archivo .csv de salida
output_csv = 'SNN_15x10_N1.csv'


# Llamar a la función para graficar los datos del archivo .csv
plot_csv_data(output_csv)