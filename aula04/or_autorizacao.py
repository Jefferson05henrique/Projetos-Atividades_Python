idade = int(input("Qual a sua idade: "))
autorizacao = input("Você possui autorização? \n\
    Responda com SIM ou NÃO. ").upper()

if (idade >= 18 or autorizacao =="SIM"):
    print(f"Seu acesso foi autorizado")
else:
    print(f"Seu acesso foi negado!!")