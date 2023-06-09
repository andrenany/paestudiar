#crea un arreglo unidimensional con nombre arregloA y de tamaño 100 con numeros aleatorios de numeros enteros de 0 al 500, luego:
import numpy as np
arregloA=np.random.randint(500, size=(100)) 
print(arregloA)
print("Mostrar por pantalla sólo los valores que se encuentren en los índices pares del arreglo.")
print(arregloA[::2])
print("Mostrar el elemento mayor del arreglo", arregloA.max())
#mostrar la posicion

print("Mostrar el índice (posición) del elemento mayor:", arregloA.index(arregloA.max()))
