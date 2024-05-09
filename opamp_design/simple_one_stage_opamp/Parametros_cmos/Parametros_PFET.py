# Tarea: Determinación de parametros de NFET de 1.8 V (SKY130)
# Alumno: Ricardo Aldair Tirado Torres
# Asignatura: Diseño VLSI
# Profesor: Dr. Herón Molina Lozada

import numpy as np
import matplotlib.pyplot as plt
import math

# Función para cargar datos desde un archivo .ssv
def cargar_datos(nombre_archivo):
    datos = np.loadtxt(nombre_archivo)
    return datos

def mostrar_todo(figuras):
    for figura in figuras:
        figura.show()

# Función para graficar una curva Vgs vs Id
def graficar_Vgs_Id(ax, datos, region):
    num_rows, num_cols = datos.shape
    if region == " ":
        k = 500
    else:
        k = 8000
    for i in range(0, num_cols, 2):
        X = datos[:, i]
        Y = datos[:, i+1]
        x = datos[:k, i]
        y = datos[:k, i+1]
        # Añadir una columna de unos a la matriz X para el término de sesgo
        x_bias = np.c_[np.ones(x.shape[0]), x]
        x_lr = np.c_[np.ones(X.shape[0]), X]
        # Calcular la solución de la ecuación normal (theta = (X^T * X)^-1 * X^T * y)
        theta = np.linalg.inv(x_bias.T @ x_bias) @ x_bias.T @ y
        j = int(10000*round(-theta[0]/theta[1],4))
        ax.plot(X, Y, color='black', linewidth=3)
        ax.plot(X[:j], x_lr[:j] @ theta, color='red', linewidth=3)
        ax.scatter(-theta[0]/theta[1], 0, label="Vth" + str((i//2)+1) + " = " + str(round((-theta[0])/theta[1], 4)) + " V", color=colores[i//2])
        if region == " ":
            print("K'l{} = {}".format((i//2)+1, theta[1]/(0.3*W_L[i//2])))
        else:
            print("Vth{} = {} V\nK's{} = {}".format((i//2)+1, round((-theta[0])/theta[1], 4), (i//2)+1, 2*(theta[1]**2)/W_L[i//2]))
    ax.set_title('Curva PFET - Vgs vs' + region + 'Id (Variando W/L)')
    ax.set_xlabel('Vgs (V)')
    if region == " ":
        ax.set_ylabel('Id (A)')
    else:
        ax.set_ylabel('Raíz de Id (A)')
    ax.grid()
    ax.legend()

# Función para graficar una curva Vgs vs Raíz de Id
def graficar_Vgs_sqrtId(ax, datos):
    Vths = []
    num_rows, num_cols = datos.shape
    for i in [0, 3, 5, 7, 9]:
        X = datos[:, i]
        Y = datos[:, i+1]
        x = datos[:100, i]
        y = datos[:100, i+1]
        # Añadir una columna de unos a la matriz X para el término de sesgo
        x_bias = np.c_[np.ones(x.shape[0]), x]
        x_lr = np.c_[np.ones(X.shape[0]), X]
        # Calcular la solución de la ecuación normal (theta = (X^T * X)^-1 * X^T * y)
        theta = np.linalg.inv(x_bias.T @ x_bias) @ x_bias.T @ y
        j = int(1000*round(-theta[0]/theta[1],2))
        ax.plot(X, Y, color='black', linewidth=3)
        ax.plot(X[:j], x_lr[:j] @ theta, color='red', linewidth=3)
        ax.scatter(-theta[0]/theta[1], 0, label="Vth" + str((i//2)+1) + " = " + str(round((-theta[0])/theta[1], 4)) + " V", color=colores[i//2])
        Vths.append(-theta[0]/theta[1])
    ax.set_title('Curva PFET - Vgs vs Raíz de Id (Variando Vsb)')
    ax.set_xlabel('Vgs (V)')
    ax.set_ylabel('Raíz de Id (A)')
    ax.grid()
    ax.legend()
    return Vths

# Función para graficar una curva Vds vs Id
def graficar_fVsb_Vth(ax, datos):
    X = datos[:, 0]
    Y = datos[:, 1]
    # Añadir una columna de unos a la matriz X para el término de sesgo
    x_bias = np.c_[np.ones(X.shape[0]), X]
    # Calcular la solución de la ecuación normal (theta = (X^T * X)^-1 * X^T * y)
    theta = np.linalg.inv(x_bias.T @ x_bias) @ x_bias.T @ Y
    ax.plot(X, x_bias @ theta, color='red', linewidth=3)
    for i in range(len(Vsb)):
        ax.scatter(X[i], Y[i], label="Vsb" + str(i+1) + " = " + str(Vsb[i]) + " V", color=colores[i])
    ax.set_title('Curva PFET - función de Vsb vs Vth')
    ax.set_xlabel('Función de Vsb (V)')
    ax.set_ylabel('Vth (V)')
    ax.grid()
    ax.legend()
    print("2|phi| = 0.65 V")
    print("Gamma = {}".format(theta[1]))

# Función para graficar una curva Vds vs Id
def graficar_Vds_Id(ax, datos):
    num_rows, num_cols = datos.shape
    for i in range(0, num_cols, 2):
        X = datos[:, i]
        Y = datos[:, i+1]
        x = datos[1300:, i]
        y = datos[1300:, i+1]
        # Añadir una columna de unos a la matriz X para el término de sesgo
        x_bias = np.c_[np.ones(x.shape[0]), x]
        x_lr = np.c_[np.ones(X.shape[0]), X]
        # Calcular la solución de la ecuación normal (theta = (X^T * X)^-1 * X^T * y)
        theta = np.linalg.inv(x_bias.T @ x_bias) @ x_bias.T @ y
        ax.plot(X, Y, color='black', linewidth=3)
        ax.plot(X, x_lr @ theta, color='red', linewidth=3)
        ax.scatter(0, theta[0], label="id'" + str((i//2)+1) + " = " + str(round(theta[0], 5)) + " A", color=colores[i//2])
        print("Lambda{} = {}".format((i//2)+1, theta[1]/theta[0]))
    ax.set_title('Curva PFET - Vds vs Id')
    ax.set_xlabel('Vds (V)')
    ax.set_ylabel('Id (A)')
    ax.grid()
    ax.legend()
        
# Nombres de los archivos .ssv
archivos = ['PFET_vgs_sqrtid.ssv', 'PFET_vgs_id.ssv', 'PFET_vgs_sqrtid2.ssv', 'PFET_vds_id.ssv']

# Colores a usar
colores = ['yellow', 'green', 'blue', 'purple', 'orange', 'pink']

# Relaciones W/L
W_L = [3, 4, 5, 6, 7, 8]

# Valores de la función de Vsb
Vsb = [0, 0.1, 0.2, 0.3, 0.4]
fVsb = []
for valor in Vsb:
    fVsb.append(math.sqrt(valor+0.65) - math.sqrt(0.65))

# Vth y K's
datos = cargar_datos(archivos[0])
f1, ax1 = plt.subplots()
graficar_Vgs_Id(ax1, datos, " Raíz de ")

# K'l
datos = cargar_datos(archivos[1])
f2, ax2 = plt.subplots()
graficar_Vgs_Id(ax2, datos, " ")

# Gamma
datos = cargar_datos(archivos[2])
f3, ax3 = plt.subplots()
f4, ax4 = plt.subplots()
Vths = graficar_Vgs_sqrtId(ax3, datos)
fVsb_Vth = np.array([fVsb, Vths])
fVsb_Vth = fVsb_Vth.T
graficar_fVsb_Vth(ax4, fVsb_Vth)

# Lambda
datos = cargar_datos(archivos[3])
f5, ax5 = plt.subplots()
graficar_Vds_Id(ax5, datos)

# Mostrar los gráficos
#mostrar_todo([f1, f2, f3, f4, f5])
plt.show()