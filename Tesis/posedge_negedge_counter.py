#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Thu Oct 10 17:18:42 2024

@author: ricardo
"""

import csv
import numpy as np

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
                        csvwriter.writerow([row[1], row[0]])  # Escribir la segunda columna primero

            print(f"Archivo {nombre_archivo_txt} convertido a {nombre_archivo_csv}.")
        
        except FileNotFoundError:
            print(f"Archivo {nombre_archivo_txt} no encontrado.")
        except Exception as e:
            print(f"Error procesando el archivo {nombre_archivo_txt}: {e}")

# Función para detectar flancos de subida y bajada
def detectar_flancos(signal, umbral=0.8):
    tiempos_subida = []
    tiempos_bajada = []
    
    for i in range(1, len(signal)):
        # Flanco de subida
        if signal[i-1] < umbral and signal[i] >= umbral:
            tiempos_subida.append(i)  # Guardar el índice

        # Flanco de bajada
        if signal[i-1] >= umbral and signal[i] < umbral:
            tiempos_bajada.append(i)  # Guardar el índice
    
    return tiempos_subida, tiempos_bajada

# Función para procesar archivos .csv y detectar flancos
def procesar_archivos_csv(prefijo, numero_archivos, umbral=0.8):
    resultados = {}
    
    for i in range(1, numero_archivos + 1):
        nombre_archivo_csv = f"{prefijo}{i}.csv"
        
        try:
            # Leer el archivo CSV
            with open(nombre_archivo_csv, 'r') as csvfile:
                csvreader = csv.reader(csvfile)
                next(csvreader)  # Omitir el encabezado
                signal = [float(row[0]) for row in csvreader]  # Convertir a float
            
            # Detectar flancos de subida y bajada
            tiempos_subida, tiempos_bajada = detectar_flancos(np.array(signal), umbral)
            
            # Guardar los resultados con el nombre del archivo
            resultados[nombre_archivo_csv] = {
                'flancos_subida': tiempos_subida,
                'flancos_bajada': tiempos_bajada
            }
        except FileNotFoundError:
            print(f"Archivo {nombre_archivo_csv} no encontrado.")
        except Exception as e:
            print(f"Error procesando el archivo {nombre_archivo_csv}: {e}")
    
    return resultados

# Configuración del procesamiento
prefijo_archivo = 'Input_LIF_MC'  # Prefijo de los nombres de archivos (ej: archivo1.txt, archivo2.txt, ...)
numero_archivos = 100        # Número de archivos a procesar
umbral = 0.8                 # Umbral de detección

# Llamar a la función para convertir los archivos
convertir_txt_a_csv(prefijo_archivo, numero_archivos)

# Procesar los archivos .csv y detectar flancos
resultados_flancos = procesar_archivos_csv(prefijo_archivo, numero_archivos, umbral)

# Mostrar los resultados
for archivo, flancos in resultados_flancos.items():
    print(f"{archivo}:")
    print(f"  Flancos de subida en los tiempos: {flancos['flancos_subida']}")
    print(f"  Flancos de bajada en los tiempos: {flancos['flancos_bajada']}")
    print("-" * 50)