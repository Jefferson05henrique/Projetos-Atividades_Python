idade = int(input("qual a sua idade: "))

if (idade >= 0 and idade <= 12):
    print(f"Sua idade é {idade} e você é uma criança")
elif (idade >= 13 and idade <= 17):
    print(f"Sua idade é {idade} e você é um adolescente")
elif (idade >= 18 and idade <= 25):
    print(f"Sua idade é {idade} e você é um adulto jr.")
elif (idade >= 26 and idade <= 35):
    print(f"Sua idade é {idade} e você é um adulto")
elif (idade >= 36 and idade<= 60):
    print(f"Sua idade é {idade} e você é um adulto sr.")
elif (idade >= 61):
    print(f"Sua idade é {idade} e você é uma idoso")
else:
    print(f"vc morreu??")