opcao = int(input("escolha (1, 2, 3): "))

if opcao == 1:

    sentindo = input("Como você está se sentindo: \n\
            (Feliz, Cansado, Estressado ou Animado) ").lower()
    
    if (sentindo == "feliz" or sentindo == "animado"):
        print(f"Que bom, aproveite e repasse essa felicidade ou animação para os outros.")
    elif (sentindo == "cansado"):
        print(f"Bom, aconselho você da uma descansada, deitar, dormir, comer algo.")
    elif (sentindo == "estressado"):
        print(f"Aconselho você a desabafa com alguém, chore, abrace algum amigo")
    else:
        print(f"UAu, deve ser louco o que você está sentindo")

if opcao == 2:

    senha = input("Digite sua senha: ")
    caractere_especial = any(c in "!@#$%!" for c in senha)

    if len(senha) <= 6:
        print(f"sua senha é fraca")
        print(f"use 6 ou mais caracteres")
    elif len(senha) >= 6 and len(senha) <= 8:
        print(f"Sua senha é média")
        print(f"Obs: coloque caracteres: (@#$%!)")
    else:
        if caractere_especial:
            print("Sua senha é forte 💪")
        else:
            print("Sua senha é boa, mas pode melhorar")
            print("Dica: adicione caracteres especiais (@#$%!)")

if opcao == 3:

    aura = int(input("Qual o seu nivel de aura? \n\
                   de 0 a 100. "))
    
    item_especial = input("Você tem um item especial? \n\
                          sim ou não. ").lower()
    
    if aura < 30:
        print(f"Você não tem aura suficiente mano")
    elif (aura >= 30 and aura < 70) and (item_especial == "sim"):
        print(f"Você até tem AURA, mas você entrara por conta do seu item.")
    elif (aura >= 30 and aura < 70) and (item_especial == "não"):
        print(f"Você até tem AURA, mas não tem item especial, logo você não tem aura suficiente.")
    elif aura > 70:
        print(f"VocÊ tem AURA mano.")
    else:
        print(f"você não sabe informar a sua aura.")