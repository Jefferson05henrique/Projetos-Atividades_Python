PrimeiraNota = float(input("Digite sua nota: "))
SegundaNota = float(input("Digite sua nota: "))
TerceiraNota= float(input("Digite sua nota: "))
QuartaNota = float(input("Digite sua nota: "))

ResultadoFinal = (PrimeiraNota+SegundaNota+TerceiraNota+QuartaNota)/4

if (ResultadoFinal >= 7):
    print(f"Sua média final é: {ResultadoFinal} você está aprovado!")
elif (ResultadoFinal >= 5):
    print(f"Sua média final é: {ResultadoFinal} você está de recuperação!")
else:
    print(f"Sua média final é: {ResultadoFinal} você está reprovado!")