def sumar( a, b):
    suma = a + b
    print(f"la suma de los numeros es: {suma}")
    return(suma)
def restar( a, b):
    resta = a - b
    print(f"la suma de los numeros es: {resta}")
    return(resta)

def dividir( a, b):
    division = a / b
    print(f"la suma de los numeros es: {division}")
    return(division)

def multiplicar( a, b):
    multiplo = a * b
    print(f"la suma de los numeros es: {multiplo}")
    return(multiplo)
encendido=True
while encendido:
    print("Bienvenido a su calculadora de Python")
    print("1.- Sumar 2 números")
    print("2.- Restar 2 números")
    print("3.- Multiplicar 2 números")
    print("4.- Dividir 2 números")
    opcion=int(input("Seleccione una opción: "))

    if opcion == 1:
        print("Seleccionó :",opcion)
        num_1=int(input("Ingrese el primer número "))
        num_2=int(input("Ingrese el segundo número"))
        print("El resultado es: ",sumar(num_1,num_2))

    if opcion == 2:
        print("Selecciono:",opcion)
        num_1=int(input("Ingrese el primer número "))
        num_2=int(input("Ingrese el segundo número"))
        print("El resultado es: ",restar(num_1,num_2))

    if opcion == 3:
        print("Selecciono:",opcion)
        num_1=int(input("Ingrese el primer número "))
        num_2=int(input("Ingrese el segundo número"))
        print("El resultado es: ",dividir(num_1,num_2))

    if opcion == 4:
        print("Selecciono:",opcion)
        num_1=int(input("Ingrese el primer número "))
        num_2=int(input("Ingrese el segundo número"))
        print("El resultado es: ",multiplicar(num_1,num_2))
    if opcion == 5:
       encendido = False 

