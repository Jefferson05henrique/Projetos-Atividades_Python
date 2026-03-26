senha = input("Digite a senha: ")
senha_final = input("Digite a senha novamente: ")

while senha_final != senha:
    print("Senha incorreta, tente novamente")
    senha_final = input("Digite a senha novamente: ")

print("Senha correta, acesso permitido")