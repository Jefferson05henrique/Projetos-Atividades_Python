# Menu de opções
print("Escolha a atividade:")
print("1 - Vetor com 5 números inteiros")
print("2 - Vetor com 10 números reais (ordem inversa)")
print("3 - 4 notas e média")

opcao = int(input("Digite a opção (1, 2 ou 3): "))


if opcao == 1:
    vetor1 = []

    for i in range(5):
        num = int(input(f"Digite o {i+1}º número inteiro: "))
        vetor1.append(num)

    print("\nNúmeros digitados:")
    for num in vetor1:
        print(num)

elif opcao == 2:
    vetor2 = []

    for i in range(10):
        num = float(input(f"Digite o {i+1}º número real: "))
        vetor2.append(num)

    print("\nOrdem inversa:")
    for num in reversed(vetor2):
        print(num)

elif opcao == 3:
    notas = []

    for i in range(4):
        nota = float(input(f"Digite a {i+1}ª nota: "))
        notas.append(nota)

    media = sum(notas) / len(notas)

    print("\nNotas digitadas:")
    for nota in notas:
        print(nota)

    print(f"Média: {media:.2f}")

else:
    print("Opção inválida!")