#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Thu Oct 10 11:03:50 2024

@author: ricardo
"""

import pandas as pd

# Función para contar flancos de subida
def contar_flancos_subida(signal, umbral=0.8):
    count = 0
    for i in range(1, len(signal)):
        # Detectar el flanco de subida: cuando el valor anterior está por debajo del umbral
        # y el valor actual está por encima del umbral.
        if signal[i-1] < umbral and signal[i] >= umbral:
            count += 1
    return count

# Cargar el archivo CSV
def leer_csv_y_contar_flancos(archivo_csv):
    # Leer el archivo CSV
    data = pd.read_csv(archivo_csv)

    # Asumimos que cada columna es una señal de pulsos
    resultados = {}
    
    for columna in data.columns:
        # Obtener la señal (columna)
        señal = data[columna].values
        
        # Contar flancos de subida para la señal
        num_pulsos = contar_flancos_subida(señal)
        
        # Guardar el resultado
        resultados[columna] = num_pulsos
    
    return resultados

# Archivo CSV de ejemplo (puedes reemplazarlo por el tuyo)
archivo = 'SNN_15x10_N9.csv'

# Contar los flancos de subida de cada señal
resultados = leer_csv_y_contar_flancos(archivo)

# Mostrar los resultados
for señal, pulsos in resultados.items():
    print(f"Señal {señal}: {pulsos} pulsos detectados")
