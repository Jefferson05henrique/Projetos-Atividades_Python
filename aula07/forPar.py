numero = float(input("Digite um número: "))

for numero in range(1, 101):

    if (numero % 2 == 0):
        print(f"{numero} é par", end=" , ")
   