NumeroUm = int(input("Digite o primeiro número: "))
NumeroDois = int(input("Digite o segundo número: "))

if (NumeroUm < NumeroDois):
    print(f"O {NumeroUm} é menor que o {NumeroDois}")
elif (NumeroDois < NumeroUm):
    print(f"O {NumeroDois} é menor que o {NumeroUm}")
else:
    print(f"Ambos são iguais")        