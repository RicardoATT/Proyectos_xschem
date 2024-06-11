import sympy as sp

# Definir las constantes literales
a1, b1, c1, d1 = sp.symbols('a1 b1 c1 d1')
a2, b2, c2, d2 = sp.symbols('a2 b2 c2 d2')
a3, b3, c3, d3 = sp.symbols('a3 b3 c3 d3')

# Definir las variables
x, y, z = sp.symbols('x y z')

# Definir las ecuaciones del sistema
ecuacion1 = a1*x + b1*y + c1*z - d1
ecuacion2 = a2*x + b2*y + c2*z - d2
ecuacion3 = a3*x + b3*y + c3*z - d3

# Resolver el sistema de ecuaciones
solucion = sp.solve((ecuacion1, ecuacion2, ecuacion3), (x, y, z))

# Mostrar la solución
print(solucion)