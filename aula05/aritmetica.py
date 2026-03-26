qtd_notas = int(input("Digite a quantidade de notas: "))
contador = qtd_notas
soma_notas = 0

while qtd_notas > 0:
    nota = float(input("Digite a nota: "))
    soma_notas += nota
    qtd_notas -= 1

media = soma_notas / contador

print(f"A média das notas é: {media}")