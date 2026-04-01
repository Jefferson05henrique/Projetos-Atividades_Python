opcao = int(input("escolha (1 ou 2): "))

if (opcao == 1):

    cidade = input("Digite o nome de alguma cidade: ")
    ano = int(input("Digite o ano atual: "))
    temperatura = float(input("Qual a temperatura média da sua cidade: "))

    print(f"No ano {ano} em sua cidade {cidade} a temperatura média é: {temperatura}")

elif opcao == 2:

    operacao = input("digite a operação desejada\n"
                    "(+, -, *, /, %, **): ")
    numero1 = float(input("Digite o primeiro número: "))
    numero2 = float(input("Digite o segundo número: "))

    if (operacao == "+"):
        print(f"{numero1} + {numero2} = {numero1+numero2}")
    elif (operacao == "-"):
        print(f"{numero1} - {numero2} = {numero1-numero2}")
    elif (operacao == "/"):
        print(f"{numero1} / {numero2} = {numero1/numero2}")
    elif (operacao == "*"):
        print(f"{numero1} x {numero2} = {numero1*numero2}")
    else:
        print("operação inválida")