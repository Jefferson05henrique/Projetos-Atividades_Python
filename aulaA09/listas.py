# num = [0, 1, 2, 3]
# nomes = ["jefferson", "Edvan", "Adriel"]
# nomes.insert(2, "Igor")

# print( nomes)

# nova = []
# num = int(input("Digite um número: (0 para sair)"))
# nova.append(num)

# while num != 0:
#     print(nova)
#     break;

# ATIVIDADE1
# num = [0, 1, 2, 3, 4]
# print(num)

# ATIVIDADE2
# num = [1,2,3,4,5,6,7,8,9,10]
# num.reverse()
# print(num)


notas = [10,5,8,9]
total = 0
qtd = len(notas)

for i in range(qtd):
    total += notas[i]

media = total/4
print(media)
print(notas)

