notas = 0
qts_notas = 0
while True:
    nota = float(input("Digite sua nota (-1 para sair)"))
    if (nota == -1):
        break
    notas = notas+nota
    qts_notas=qts_notas+1
if (qts_notas>0):
    media = notas/qts_notas
    print(f"Quantidade de notas informadas: {qts_notas}")
    print(f"Média: {media:.2f}")
else:
    print("ACABOU")

x = 0
while x <= 10:
    print(x)
    x = x + 1
else:
    print("acabou")