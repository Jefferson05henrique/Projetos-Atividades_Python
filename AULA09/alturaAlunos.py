alunos = 3
idade = []
altura = []
somaAltura = 0
contador = 0

while contador < alunos:
    idadeAluno = int(input("Digite usa idade: "))
    alturaAluno = float(input("Digite sua altura: "))

    idade.append(idadeAluno)
    altura.append(alturaAluno)
    contador += 1

    somaAltura = somaAltura + alturaAluno

mediaAltura = somaAltura/alunos

i = 0
aluno_media = 0

while i < alunos:
    if idade[i] > 13 and altura[i] < mediaAltura:
        aluno_media = aluno_media + 1
    i += 1

print(f"Alunos dentro da média com mais de treze anos: {aluno_media}")
print(f"A média de altura da turma é: {mediaAltura}")


