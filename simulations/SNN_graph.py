#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Thu Sep 19 12:31:21 2024

@author: ricardo
"""
import pandas as pd
import matplotlib.pyplot as plt

# Función para leer y graficar datos de un archivo .ssv
def graficar_ssv(archivo):
    # Lee el archivo .ssv como un DataFrame, delimitado por espacios
    datos = pd.read_csv(archivo, delim_whitespace=True)
    
    # Muestra las primeras filas para asegurarte de que el archivo se leyó correctamente
    print("Datos leídos:")
    print(datos.head())
    
    # Asumiendo que la primera columna es el eje x, y el resto son variables a graficar
    columnas = datos.columns
    eje_x = columnas[0]  # Primera columna como eje X
    ejes_y = columnas[1:]  # Resto de las columnas como variables Y
    
    # Graficar cada columna en función de la primera (eje x)
    for col in ejes_y:
        plt.plot(datos[eje_x], datos[col], label=col)
    
    plt.xlabel(eje_x)
    plt.ylabel("Valores")
    plt.title("Gráfica de datos desde un archivo .ssv")
    plt.legend()
    plt.grid(True)
    plt.show()

# Especifica el nombre de tu archivo .ssv
archivo_ssv = '/home/ricardo/.xschem/simulations/SNN_15x1_tbv1.ssv'
graficar_ssv(archivo_ssv)
