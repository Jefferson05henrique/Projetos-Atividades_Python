numero = int(input("Digite um número: "))
contador = 0

while numero > 0:
    contador = contador + 1
    numero = numero // 10 # divisão inteira por 10 para remover o último dígito do número

    print(numero)