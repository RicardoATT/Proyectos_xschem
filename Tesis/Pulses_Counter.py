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

# Cargar el archivo CSV y contar flancos de subida de las columnas seleccionadas
def leer_csv_y_contar_flancos(archivo_csv):
    # Leer el archivo CSV
    data = pd.read_csv(archivo_csv)

    # Limitar el análisis a las columnas 2 a la 11 (índices 1 a 10 en 0-based indexing)
    columnas_seleccionadas = data.columns[1:11]

    # Asumimos que cada columna es una señal de pulsos
    resultados = {}
    
    for columna in columnas_seleccionadas:
        # Obtener la señal (columna)
        señal = data[columna].values
        
        # Contar flancos de subida para la señal
        num_pulsos = contar_flancos_subida(señal)
        
        # Guardar el resultado
        resultados[columna] = num_pulsos
    
    return resultados

# Archivo CSV de ejemplo (puedes reemplazarlo por el tuyo)
#archivos = ['SNN_15x10_N0.csv', 'SNN_15x10_N1.csv', 'SNN_15x10_N2.csv', 'SNN_15x10_N3.csv', 'SNN_15x10_N4.csv', 'SNN_15x10_N5.csv', 'SNN_15x10_N6.csv', 'SNN_15x10_N7.csv', 'SNN_15x10_N8.csv', 'SNN_15x10_N9.csv']
#archivos = ["SNN_15x10_N0_lt.csv", "SNN_15x10_N1_lt.csv", "SNN_15x10_N2_lt.csv", "SNN_15x10_N3_lt.csv", "SNN_15x10_N4_lt.csv", "SNN_15x10_N5_lt.csv", "SNN_15x10_N6_lt.csv", "SNN_15x10_N7_lt.csv", "SNN_15x10_N8_lt.csv", "SNN_15x10_N9_lt.csv"]
#archivos = ['N0_Noisy_1.csv', 'N1_Noisy_1.csv', 'N2_Noisy_1.csv', 'N3_Noisy_1.csv', 'N4_Noisy_1.csv', 'N5_Noisy_1.csv', 'N6_Noisy_1.csv', 'N7_Noisy_1.csv', 'N8_Noisy_1.csv', 'N9_Noisy_1.csv']
#archivos = ['N0_Noisy_2.csv', 'N1_Noisy_2.csv', 'N2_Noisy_2.csv', 'N3_Noisy_2.csv', 'N4_Noisy_2.csv', 'N5_Noisy_2.csv', 'N6_Noisy_2.csv', 'N7_Noisy_2.csv', 'N8_Noisy_2.csv', 'N9_Noisy_2.csv']
#archivos = ['N0_Noisy_3.csv', 'N1_Noisy_3.csv', 'N2_Noisy_3.csv', 'N3_Noisy_3.csv', 'N4_Noisy_3.csv', 'N5_Noisy_3.csv', 'N6_Noisy_3.csv', 'N7_Noisy_3.csv', 'N8_Noisy_3.csv', 'N9_Noisy_3.csv']
archivos = ['N0_Noisy_4.csv', 'N1_Noisy_4.csv', 'N2_Noisy_4.csv', 'N3_Noisy_4.csv', 'N4_Noisy_4.csv', 'N5_Noisy_4.csv', 'N6_Noisy_4.csv', 'N7_Noisy_4.csv', 'N8_Noisy_4.csv', 'N9_Noisy_4.csv']

total_final = 0
aciertos_final = 0

for i in range(len(archivos)):
    # Contar los flancos de subida de cada señal
    resultados = leer_csv_y_contar_flancos(archivos[i])
    # Mostrar los resultados
    total = 0
    precision = 0
    print(f"Patrón {i}")
    for señal, pulsos in resultados.items():
        print(f"Señal {señal}: {pulsos} pulsos detectados")
        total = total + pulsos
    precision = (resultados["v(n"+str(i)+")"] / total) * 100
    print(f"Precision del patrón {i} = {precision} %")
    total_final = total_final + total
    aciertos_final = aciertos_final + resultados["v(n"+str(i)+")"]

precision_total = (aciertos_final / total_final) * 100
print(f"Precision total = {precision_total} %")
    