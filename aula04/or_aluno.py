notaUm = float(input("Digite sua nota: "))
notaDois = float(input("Digite sua nota: "))
notaTres = float(input("Digite sua nota: "))
notaQuatro = float(input("Digite sua nota: "))
notaFinal = (notaUm+notaDois+notaTres+notaQuatro)/4

frequencia = float(input("Digite sua frequência em porcentagem: "))

if (notaFinal >= 7 or frequencia >= 75):
    print(f"Sua nota é: {notaFinal} e você teve uma frequência de {frequencia} % , logo você está aprovado!!")
else:
    print(f"Sua nota é: {notaFinal} e sua frequência foi de {frequencia} % , infelizmente você está reprovado!!")
