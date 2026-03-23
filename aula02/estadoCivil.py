estadoCivil = input("Digite qual o seu estado civil, sendo: Solteiro, Casado, Divorciado, Viúvo ou Outros: " "S, C, D, V ou O: ").upper()

if (estadoCivil == "S"):
    print("Você é solteiro")
elif (estadoCivil == "C"):
    print("Você é casado")
elif (estadoCivil == "D"):
    print("Você é divorciado")
elif (estadoCivil == "V"):
    print("Você é viúvo")
elif (estadoCivil == "O"):
    print("Você escolheu outros")
else:
    print("Você escolheu outra opção")