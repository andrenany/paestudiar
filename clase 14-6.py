#sin argumentos y sin retorno
def saludo():
    print("HolaMundo")

saludo()
#SIN ARGUMENTOS CONRETORNO
def suma1():
          num_1=10
          num_2=5
          resultado=num_1+num_2
          return resultado

resultado_suma=suma1()
print("Forma A de utilizar funcion con retorno:",resultado_suma)
print("Forma B de utilizar funcion con retorno:",suma1())
print("Forma C de utilizar funcion con retorno:",suma1()+suma1())
print("Forma D de utilizar funcion con retorno:",suma1()+suma1()+resultado_suma)

#funcion con argumento y sin retorno
def resta1(num_1, num_2):
    resultado=num_1-num_2
    print("El resultado de la resta es")

resta1(10,1)

def resta2(num_1, num_2):
      resultado=num_1-num_2
      return resultado

resultado_1=resta2(10,1)#9
resultado_2=resta2(8,3)#5
print(resultado_1-resultado_2)#4