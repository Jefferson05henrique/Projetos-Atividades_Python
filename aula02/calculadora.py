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
elif (operacao == "%"):
    print(f"{numero1} % {numero2} = {numero1%numero2}")
elif (operacao == "**"):
    print(f"{numero1} ** {numero2} = {numero1**numero2}")
else:
    print("operação inválida")