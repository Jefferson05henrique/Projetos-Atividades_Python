PROFESSOR:

opcao = int(input("Digite o número de 0 a 10 "))

while (opcao <0 or opcao >10):
    opcao = int(input("SEU BURRO, digite o número de 0 a 10 "))
print(opcao)

EU:

opcao = int(input("Digite o número do programa que deseja utilizar: \n" \
"1. \n" \
"2. \n" \
"3. \n" \
"4. \n" \
"5. \n" \
"6. \n" \
"-------->"))

if (opcao == 1):
    while True:
        nota = int(input("Digite um número de 0 a 10. "))

        if (nota > 10):
            print(f"número inválido")
        else:
            print(f"Seu número é {nota}")
            break;