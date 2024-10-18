#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Wed Oct  9 17:05:22 2024

@author: ricardo
"""

import csv
import matplotlib.pyplot as plt

def is_float(value):
    try:
        float(value)
        return True
    except ValueError:
        return False

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
            isfloat = is_float(columns[0])
            if isfloat and float(columns[0]) >= 0.00015:
                break
            if len(columns) >= 51:  # Asegurarse de que haya al menos 300 columnas
                # Escribir la columna 0, y las columnas 16 a 25 en el archivo .csv
                writer.writerow([columns[0], columns[16], columns[17], columns[18], columns[19], columns[20], columns[21], columns[22], columns[23], columns[24], columns[25]])
'''                
                writer.writerow([columns[0], columns[1], columns[3], columns[5], columns[7], columns[9], columns[11], columns[13], 
columns[15], columns[17], columns[19], columns[21], columns[23], columns[25], columns[27], columns[29], 
columns[31], columns[33], columns[35], columns[37], columns[39], columns[41], columns[43], columns[45], 
columns[47], columns[49], columns[51], columns[53], columns[55], columns[57], columns[59], columns[61], 
columns[63], columns[65], columns[67], columns[69], columns[71], columns[73], columns[75], columns[77], 
columns[79], columns[81], columns[83], columns[85], columns[87], columns[89], columns[91], columns[93], 
columns[95], columns[97], columns[99], columns[101], columns[103], columns[105], columns[107], columns[109], 
columns[111], columns[113], columns[115], columns[117], columns[119], columns[121], columns[123], columns[125], 
columns[127], columns[129], columns[131], columns[133], columns[135], columns[137], columns[139], columns[141], 
columns[143], columns[145], columns[147], columns[149], columns[151], columns[153], columns[155], columns[157], 
columns[159], columns[161], columns[163], columns[165], columns[167], columns[169], columns[171], columns[173], 
columns[175], columns[177], columns[179], columns[181], columns[183], columns[185], columns[187], columns[189], 
columns[191], columns[193], columns[195], columns[197], columns[199], columns[201], columns[203], columns[205], 
columns[207], columns[209], columns[211], columns[213], columns[215], columns[217], columns[219], columns[221], 
columns[223], columns[225], columns[227], columns[229], columns[231], columns[233], columns[235], columns[237], 
columns[239], columns[241], columns[243], columns[245], columns[247], columns[249], columns[251], columns[253], 
columns[255], columns[257], columns[259], columns[261], columns[263], columns[265], columns[267], columns[269], 
columns[271], columns[273], columns[275], columns[277], columns[279], columns[281], columns[283], columns[285], 
columns[287], columns[289], columns[291], columns[293], columns[295], columns[297], columns[299]
])
'''

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
#input_txt = 'SNN_15x10_TrStageSyn.txt'
#output_csv = 'SNN_15x10_TrStageSyn.csv'
filestxt = ["SNN_15x10_N0.txt", "SNN_15x10_N1.txt", "SNN_15x10_N2.txt", "SNN_15x10_N3.txt", "SNN_15x10_N4.txt", "SNN_15x10_N5.txt", "SNN_15x10_N6.txt", "SNN_15x10_N7.txt", "SNN_15x10_N8.txt", "SNN_15x10_N9.txt"]
filescsv = ["SNN_15x10_N0_lt.csv", "SNN_15x10_N1_lt.csv", "SNN_15x10_N2_lt.csv", "SNN_15x10_N3_lt.csv", "SNN_15x10_N4_lt.csv", "SNN_15x10_N5_lt.csv", "SNN_15x10_N6_lt.csv", "SNN_15x10_N7_lt.csv", "SNN_15x10_N8_lt.csv", "SNN_15x10_N9_lt.csv"]
#filestxt = ["N0_Noisy_1.txt", "N1_Noisy_1.txt", "N2_Noisy_1.txt", "N3_Noisy_1.txt", "N4_Noisy_1.txt", "N5_Noisy_1.txt", "N6_Noisy_1.txt", "N7_Noisy_1.txt", "N8_Noisy_1.txt", "N9_Noisy_1.txt"]
#filescsv = ["N0_Noisy_1.csv", "N1_Noisy_1.csv", "N2_Noisy_1.csv", "N3_Noisy_1.csv", "N4_Noisy_1.csv", "N5_Noisy_1.csv", "N6_Noisy_1.csv", "N7_Noisy_1.csv", "N8_Noisy_1.csv", "N9_Noisy_1.csv"]
#filestxt = ["N0_Noisy_2.txt", "N1_Noisy_2.txt", "N2_Noisy_2.txt", "N3_Noisy_2.txt", "N4_Noisy_2.txt", "N5_Noisy_2.txt", "N6_Noisy_2.txt", "N7_Noisy_2.txt", "N8_Noisy_2.txt", "N9_Noisy_2.txt"]
#filescsv = ["N0_Noisy_2.csv", "N1_Noisy_2.csv", "N2_Noisy_2.csv", "N3_Noisy_2.csv", "N4_Noisy_2.csv", "N5_Noisy_2.csv", "N6_Noisy_2.csv", "N7_Noisy_2.csv", "N8_Noisy_2.csv", "N9_Noisy_2.csv"]
#filestxt = ["N0_Noisy_3.txt", "N1_Noisy_3.txt", "N2_Noisy_3.txt", "N3_Noisy_3.txt", "N4_Noisy_3.txt", "N5_Noisy_3.txt", "N6_Noisy_3.txt", "N7_Noisy_3.txt", "N8_Noisy_3.txt", "N9_Noisy_3.txt"]
#filescsv = ["N0_Noisy_3.csv", "N1_Noisy_3.csv", "N2_Noisy_3.csv", "N3_Noisy_3.csv", "N4_Noisy_3.csv", "N5_Noisy_3.csv", "N6_Noisy_3.csv", "N7_Noisy_3.csv", "N8_Noisy_3.csv", "N9_Noisy_3.csv"]
#filestxt = ["N0_Noisy_4.txt", "N1_Noisy_4.txt", "N2_Noisy_4.txt", "N3_Noisy_4.txt", "N4_Noisy_4.txt", "N5_Noisy_4.txt", "N6_Noisy_4.txt", "N7_Noisy_4.txt", "N8_Noisy_4.txt", "N9_Noisy_4.txt"]
#filescsv = ["N0_Noisy_4.csv", "N1_Noisy_4.csv", "N2_Noisy_4.csv", "N3_Noisy_4.csv", "N4_Noisy_4.csv", "N5_Noisy_4.csv", "N6_Noisy_4.csv", "N7_Noisy_4.csv", "N8_Noisy_4.csv", "N9_Noisy_4.csv"]

for i in range(len(filescsv)):
# Llamar a la función para convertir .txt a .csv
    txt_to_csv(filestxt[i], filescsv[i])

# Llamar a la función para graficar los datos del archivo .csv
#plot_csv_data(output_csv)
