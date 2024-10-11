#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Wed Oct  9 17:05:22 2024

@author: ricardo
"""

import csv
import matplotlib.pyplot as plt

# Función para convertir el archivo .txt en un archivo .csv
def txt_to_csv(input_txt, output_csv):
    # Abrir el archivo .txt
    with open(input_txt, 'r') as txt_file:
        # Leer todas las líneas del archivo
        lines = txt_file.readlines()
    
    # Abrir el archivo .csv para escribir
    with open(output_csv, 'w', newline='') as csv_file:
        writer = csv.writer(csv_file)
        
        # Recorrer cada línea del archivo .txt
        for line in lines:
            # Separar la línea por espacios
            columns = line.strip().split()
            if len(columns) >= 26:  # Asegurarse de que haya al menos 26 columnas
                # Escribir la columna 0, y las columnas 16 a 25 en el archivo .csv
                writer.writerow([columns[0], columns[16], columns[17], columns[18], columns[19], columns[20], columns[21], columns[22], columns[23], columns[24], columns[25], columns[26], columns[27], columns[28], columns[29], columns[30], columns[31], columns[32], columns[33], columns[34], columns[35], columns[47]])

# Función para leer el archivo .csv y graficar
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

# Rutas del archivo .txt de entrada y el archivo .csv de salida
input_txt = 'SNN_15x10_FullStages.txt'
output_csv = 'SNN_15x10_FullStages.csv'

# Llamar a la función para convertir .txt a .csv
txt_to_csv(input_txt, output_csv)

# Llamar a la función para graficar los datos del archivo .csv
plot_csv_data(output_csv)
