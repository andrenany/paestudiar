import numpy as np
arreglo=[np.random.randint(100) for n in range(0,10)]
print(arreglo)
arreglo2=np.random.randint(100, size=(10)) 
print("el numero mas grande:", arreglo2.max())
print("el numero mas pequeño:", arreglo2.min())
print("el promedio de los numeros", arreglo2.mean())
print("la suma de todos los numeros es:", arreglo2.sum())
print(arreglo2)