salario = int(input("Digite seu salário: "))
tempo = int(input("Digite seu tempo de empresa em anos: "))

if (salario <= 3000 and tempo >= 2):
    print(f"Como seu salário é: {salario} e você tem {tempo} anos, seu bônus será concedido!!")
else:
    print(f"Como seu salário é: {salario} e você tem {tempo} anos, seu bônus infelizmente não sera concedido.")