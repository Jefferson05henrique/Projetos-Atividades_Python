digite = input("Digite uma palavra ou frase: ").lower()
contador = 0

for letra in digite:
    if (letra in "aeiou"):
        contador += 1

print(f"quantidade de vogais: {contador}")