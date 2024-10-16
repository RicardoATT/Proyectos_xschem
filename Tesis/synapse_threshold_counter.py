#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Thu Oct 10 17:18:42 2024

@author: ricardo
"""

import csv
import numpy as np
import pandas as pd

# Función para convertir archivos .txt a .csv
def convertir_txt_a_csv(prefijo, numero_archivos):
    for i in range(1, numero_archivos + 1):
        nombre_archivo_txt = f"{prefijo}{i}.txt"
        nombre_archivo_csv = f"{prefijo}{i}.csv"
        
        try:
            # Leer el archivo .txt
            with open(nombre_archivo_txt, 'r') as file:
                # Leer todas las líneas del archivo .txt
                data = [line.strip().split() for line in file]

            # Convertir y escribir en el archivo .csv
            with open(nombre_archivo_csv, 'w', newline='') as csvfile:
                csvwriter = csv.writer(csvfile)
                
                # Escribir las señales, colocando la segunda columna primero
                for row in data:
                    if len(row) > 1:  # Verificar que haya al menos dos columnas
                        csvwriter.writerow([row[0], row[1]])  # Escribir la segunda columna primero

            print(f"Archivo {nombre_archivo_txt} convertido a {nombre_archivo_csv}.")
        
        except FileNotFoundError:
            print(f"Archivo {nombre_archivo_txt} no encontrado.")
        except Exception as e:
            print(f"Error procesando el archivo {nombre_archivo_txt}: {e}")

# Función para encontrar el primer tiempo en el que la señal baja de los umbrales
def find_threshold_times(file_name, threshold1=1.6994, threshold2=0.11009):
    # Leer el archivo CSV
    data = pd.read_csv(file_name)

    # Asumimos que la primera columna es tiempo y la segunda es la señal
    time = data.iloc[:, 0]  # Columna de tiempo
    signal = data.iloc[:, 1]  # Columna de la señal

    # Encontrar el primer tiempo en el que la señal baja de threshold1
    time_below_threshold1 = time[signal < threshold1].iloc[0] if (signal < threshold1).any() else None

    # Encontrar el primer tiempo en el que la señal baja de threshold2
    time_below_threshold2 = time[signal < threshold2].iloc[0] if (signal < threshold2).any() else None

    return time_below_threshold1, time_below_threshold2

# Función para calcular la pendiente entre dos puntos (tiempos de umbrales)
def calculate_slope(file_name, time1, time2):
    # Leer el archivo CSV
    data = pd.read_csv(file_name)

    # Asumimos que la primera columna es tiempo y la segunda es la señal
    time = data.iloc[:, 0]  # Columna de tiempo
    signal = data.iloc[:, 1]  # Columna de la señal

    # Obtener los valores de la señal en los tiempos dados
    signal1 = signal[time == time1].iloc[0] if (time == time1).any() else None
    signal2 = signal[time == time2].iloc[0] if (time == time2).any() else None

    # Calcular la pendiente solo si ambos tiempos y señales son válidos
    if signal1 is not None and signal2 is not None and time1 is not None and time2 is not None and time1 != time2:
        slope = ((5-signal1 - 5-signal2) / (time1 - time2)) * 1e-9
        return slope
    else:
        return None

# Llamar a la función para convertir los archivos
#convertir_txt_a_csv("Syn7T1R_MC", 100)

# Lista de archivos CSV
file_names = [f'Syn7T1R_MC{i}.csv' for i in range(1, 101)]  # Ajusta los nombres de los archivos si es necesario

# Iterar sobre cada archivo y encontrar los tiempos para cada umbral
for file_name in file_names:
    try:
        t_below_1, t_below_2 = find_threshold_times(file_name)
        print(f'Archivo: {file_name}')
        print(f'Primer tiempo que baja de 1.6994: {t_below_1}')
        print(f'Primer tiempo que baja de 0.11009: {t_below_2}\n')
        slope = calculate_slope(file_name, t_below_1, t_below_2)
        if slope is not None:
            print(f'Pendiente entre los puntos de umbrales: {slope}\n')
        else:
            print('No se pudo calcular la pendiente\n')
    except FileNotFoundError:
        print(f'Archivo {file_name} no encontrado.')
    except pd.errors.EmptyDataError:
        print(f'Archivo {file_name} está vacío o tiene un formato incorrecto.')