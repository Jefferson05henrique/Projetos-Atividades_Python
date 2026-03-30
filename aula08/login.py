for tentativa in range(3):
    usuario = input("Digite seu usúario: ")
    senha = input("Digite sua senha: ")

    if (senha == usuario):
        print(f"Tá no erro {tentativa + 1}")
    else:
        print(f"Tá no acerto")
        break;    

else:
    print(f"Atingiu o número máximo.")