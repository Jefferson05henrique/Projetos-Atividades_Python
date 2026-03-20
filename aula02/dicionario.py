# Aula 1 - Introdução ao Python
# Comentário de linha única é feito com o símbolo #
"""
Comentários de múltiplas linhas são feitos com aspas triplas
"""

# A variável é um espaço na memória para armazenar um valor
nome = "Henrique"
print(nome)

nome = "Thais"
nome = "Lais"
nome = "Jessica"
print(nome)
# Variáveis podem armazenar diferentes tipos de dados
idade = 25 # Variável do tipo inteiro
altura = 1.75 # Variável do tipo float
print(idade)
print(altura)
#print é uma função que exibe o valor na tela
# Podemos realizar operações matemáticas com variáveis numéricas ou concatenar strings

# Operações matemáticas
soma = 10 + 5  
divisao = 10 / 2
subtracao = 10 - 3
multiplicacao = 10 * 4
expoente = 2 ** 3
resto = 10 % 3

# operações com strings
nome_completo = nome + " Silva"  # Concatenando strings

# Operadores de comparação
print(10 > 5)  # True
print(10 < 5)  # False
print(10 == 10)  # True
print(10 != 5)  # True  
print(10 >= 10)  # True
print(10 <= 5)  # False

# if é uma estrutura de controle de fluxo que permite executar um bloco de código se uma condição for verdadeira
if (idade >= 18):
    print("Você é maior de idade.")
# elif é usado para verificar outra condição se a primeira for falsa
elif (idade >= 13):
    print("Você é um adolescente.")
# else é usado para executar um bloco de código se todas as condições anteriores forem falsas
else:
    print("Você é uma criança.")