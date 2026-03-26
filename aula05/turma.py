turmas = int(input("Digite o número de turmas: "))
total_turmas = turmas
total_alunos = 0

while turmas > 0:
    alunos = int(input("Conte o número de alunos na turma: "))

    if alunos > 40:
        print("Turma grande, reconte")
    else:
        total_alunos += alunos # soma o número de alunos da turma atual ao total de alunos#
        turmas -= 1 # diminui o número de turmas restantes para contar#

media = total_alunos / total_turmas

print(f"A média de alunos por turma é: {media}")