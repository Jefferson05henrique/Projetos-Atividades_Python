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

            """


> MAIOR
< MENOR
>= MAIOR OU IGUAL
<= MENOR OU IGUAL
== IGUAL
!= DIFERENTE
"""
# or
idade = 17
autorizacao = "sim"

if (idade >= 18 or autorizacao == "sim"):
    print("Bem Vindo")

# and
login = "admin"
senha = "123456"

if (login == "admin" and senha == "165456"):
    print("Acesso permitido")
else:
    print("Você não tem acesso permitido")


AULA 06

CONSEGUIR ATÉ AQUI:
pessoas = int(input("Quantas pessoas são: "))
contador = 0

while pessoas > 0:
    idade = int(input("Qual a sua idade: "))
    convite = int(input("Você possui convite? (digite 1 para sim e 0 para não): "))
    

    if (idade < 16):
        print(f"Você não pode entrar.")
    elif (idade >= 16 and idade <= 17 ) and (convite == 1):
        print(f"Você por conta do convite, pode entrar.")
    elif (idade >= 18):
        print(f"Você pode entrar normalmente.")
    else:
        quant_pessoas -= 1

PAREI POR AQUI:

pessoas = int(input("Quantas pessoas são: "))
contador = 0 #add pela ajudar do chat#

entraram = 0 #add pela ajudar do chat#
barrados = 0 #add pela ajudar do chat#
sem_convite = 0 #add pela ajudar do chat#

while contador < pessoas: #eu coloquei pessoas > 0, mas é contador < pessoas
    idade = int(input("Qual a sua idade: "))
    convite = int(input("Você possui convite? (digite 1 para sim e 0 para não): "))
    

    if (idade < 16):
        barrados += 1
        print(f"Você não pode entrar.")
    elif (idade >= 16 and idade <= 17 ) and (convite == 1):
        entraram += 1
        print(f"Você por conta do convite, pode entrar.")
    else:
        sem_convite += 1
        print(f"pode passar")

        contador -= 1

        print(f"entraram: {entraram}")
        print(f"barrados:  {barrados}")
        print(f"entraram sem convite: {sem_convite}")
