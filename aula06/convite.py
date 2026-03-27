pessoas = int(input("Quantas pessoas são: "))
contador = 0 

entraram = 0 
barrados = 0 
sem_convite = 0 

while contador < pessoas: 
    idade = int(input("Qual a sua idade: "))
    convite = int(input("Você possui convite? (digite 1 para sim e 0 para não): "))
    

    if (idade < 16):
        barrados += 1
        print(f"Você não pode entrar.")
    elif (idade >= 16 and idade <= 17 ) and (convite == 1):
        entraram += 1
        print(f"Você por conta do convite, pode entrar.")
    elif (idade >= 16 and idade <= 17 ) and (convite == 0):
        barrados += 1
        print(f"Você não pode entrar, pois não tem convite.")
    elif (idade >= 18):
        if convite == 1:
            entraram += 1
            print(f"Você por conta do convite, pode entrar.")
        else:
            sem_convite += 1
            print(f"Você pode entrar, mas sem convite.")

    contador += 1

print(f"entraram: {entraram}")
print(f"barrados:  {barrados}")
print(f"entraram sem convite: {sem_convite}")