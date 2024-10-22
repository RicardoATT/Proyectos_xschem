#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Mon Oct 21 15:19:08 2024

@author: ricardo
"""

import pandas as pd

def procesar_archivo(archivo, umbral=1.7):
    # Leer archivo CSV
    datos = pd.read_csv(archivo)
    
    # Asumiendo que las columnas del CSV son 'time' y 'voltage'
    tiempos = datos['time']
    voltajes = datos['v(vpre)']

    # Inicialización de variables para almacenar los tiempos
    primer_tiempo = None
    segundo_tiempo = None

    # Búsqueda de los tiempos en que se cruza el umbral en flanco de subida
    for i in range(1, len(voltajes)):  # Empezamos en 1 para comparar con el anterior
        if voltajes[i-1] <= umbral < voltajes[i]:  # Detectar flanco de subida
            if primer_tiempo is None:
                primer_tiempo = tiempos[i]
            elif segundo_tiempo is None:
                segundo_tiempo = tiempos[i]
                break  # Salir del ciclo al encontrar el segundo cruce

    # Si ambos tiempos fueron encontrados, calcular la inversa de la diferencia
    if primer_tiempo is not None and segundo_tiempo is not None:
        diferencia = segundo_tiempo - primer_tiempo
        inversa = 1 / diferencia if diferencia != 0 else float('inf')
        return primer_tiempo, segundo_tiempo, inversa
    else:
        return None, None, None  # No se encontraron ambos cruces

def procesar_archivos(nombre_base, num_archivos):
    resultados = []

    for i in range(0, num_archivos + 1):
        archivo = f"{nombre_base}{i}.csv"
        primer_tiempo, segundo_tiempo, inversa = procesar_archivo(archivo)
        if primer_tiempo is not None and segundo_tiempo is not None:
            resultados.append([i, primer_tiempo, segundo_tiempo, inversa])
    
    return resultados

# Solicitar el nombre base del archivo
nombre_base = "Input_LIF_Frq"

# Número de archivos a procesar
num_archivos = 600  # Puedes cambiar este valor si tienes más o menos archivos

# Procesar los archivos
resultados = procesar_archivos(nombre_base, num_archivos)

# Guardar los resultados en un archivo CSV
df_resultados = pd.DataFrame(resultados, columns=['Archivo', 'Primer Umbral Superado', 'Segundo Umbral Superado', 'Inversa'])
df_resultados.to_csv('Op_Frq.csv', index=False)

print("Los resultados han sido guardados en 'resultados.csv'.")
