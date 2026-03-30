totalPessoas = int(input("Digite o número de pessoas: "))
homens = 0
mulheres = 0

for contador in range(totalPessoas):
    sexo = input("Digite seu sexo: (Digite com M para masculino e F para feminino): ").lower()

    if (sexo == "m"):
        homens += 1
        print(f"ok")
    elif (sexo == "f"):
        mulheres += 1
        print(f"Você é mulher.")
    else:
        print(f"Digitou errado")


print(f"entraram {homens} homens e {mulheres} mulheres")