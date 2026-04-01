Preco_alcool = 3.89
Preco_gasolina = 5.50

tipo_cliente = input("Você quer qual combustível: \n\
                     G-gasolina ou A-álcool ").lower()

litros = int(input("até 20 litros você consegue um desconto de: \n\
                   Alcool 3% e 4% na gasolina \n\
                   acima de 20 litros você consegue um desconto de: \n\
                   Alcool 5% e gasolina 6% "))

desconto_alcool = (Preco_alcool * litros) *(1-0.03)
alcool_acima = (Preco_alcool * litros) *(1-0.05)
desconto_gasolina = (Preco_gasolina * litros) *(1-0.04)
gasolina_acima = (Preco_gasolina * litros) *(1-0.06)

if (tipo_cliente == "a") and (litros <= 20):
    print(f"O valor é {desconto_alcool:.2f}")
elif (tipo_cliente == "a") and (litros > 20):
    print(f"o valor é {alcool_acima:.2f}")
elif (tipo_cliente == "g") and (litros <= 20):
    print(f"o valor é {desconto_gasolina:.2f}")
elif (tipo_cliente == "g") and (litros > 20):
    print(f"o valor é {alcool_acima:.2f}")
else:
    print(f"não temos esse combustível.")


