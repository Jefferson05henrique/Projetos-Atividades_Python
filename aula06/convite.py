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