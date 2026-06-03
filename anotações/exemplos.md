PROFESSOR:

opcao = int(input("Digite o número de 0 a 10 "))

while (opcao <0 or opcao >10):
    opcao = int(input("SEU BURRO, digite o número de 0 a 10 "))
print(opcao)

EU:

opcao = int(input("Digite o número do programa que deseja utilizar: \n" \
"1. \n" \
"2. \n" \
"3. \n" \
"4. \n" \
"5. \n" \
"6. \n" \
"-------->"))

if (opcao == 1):
    while True:
        nota = int(input("Digite um número de 0 a 10. "))

        if (nota > 10):
            print(f"número inválido")
        else:
            print(f"Seu número é {nota}")
            break;

            """


> MAIOR
< MENOR
>= MAIOR OU IGUAL
<= MENOR OU IGUAL
== IGUAL
!= DIFERENTE
"""
# or
idade = 17
autorizacao = "sim"

if (idade >= 18 or autorizacao == "sim"):
    print("Bem Vindo")

# and
login = "admin"
senha = "123456"

if (login == "admin" and senha == "165456"):
    print("Acesso permitido")
else:
    print("Você não tem acesso permitido")


AULA 06

CONSEGUIR ATÉ AQUI:

pessoas = int(input("Quantas pessoas são: "))
contador = 0

while pessoas > 0:
    idade = int(input("Qual a sua idade: "))
    convite = int(input("Você possui convite? (digite 1 para sim e 0 para não): "))
    

    if (idade < 16):
        print(f"Você não pode entrar.")
    elif (idade >= 16 and idade <= 17 ) and (convite == 1):
        print(f"Você por conta do convite, pode entrar.")
    elif (idade >= 18):
        print(f"Você pode entrar normalmente.")
    else:
        quant_pessoas -= 1

PAREI POR AQUI:

pessoas = int(input("Quantas pessoas são: "))
contador = 0 #add pela ajudar do chat#

entraram = 0 #add pela ajudar do chat#
barrados = 0 #add pela ajudar do chat#
sem_convite = 0 #add pela ajudar do chat#

while contador < pessoas: #eu coloquei pessoas > 0, mas é contador < pessoas
    idade = int(input("Qual a sua idade: "))
    convite = int(input("Você possui convite? (digite 1 para sim e 0 para não): "))
    

    if (idade < 16):
        barrados += 1
        print(f"Você não pode entrar.")
    elif (idade >= 16 and idade <= 17 ) and (convite == 1):
        entraram += 1
        print(f"Você por conta do convite, pode entrar.")
    else:
        sem_convite += 1
        print(f"pode passar")

        contador -= 1

        print(f"entraram: {entraram}")
        print(f"barrados:  {barrados}")
        print(f"entraram sem convite: {sem_convite}")

FINALIZEI EM CASA COM AJUDAR DO CHAT (BENDITO) ASSIM:

pessoas = int(input("Quantas pessoas são: "))
contador = 0 #add pela ajudar do chat#

entraram = 0 #add pela ajudar do chat#
barrados = 0 #add pela ajudar do chat#
sem_convite = 0 #add pela ajudar do chat#

while contador < pessoas: #eu coloquei pessoas > 0, mas é contador < pessoas
    idade = int(input("Qual a sua idade: "))
    convite = int(input("Você possui convite? (digite 1 para sim e 0 para não): "))
    

    if (idade < 16):
        barrados += 1
        print(f"Você não pode entrar.")
    elif (idade >= 16 and idade <= 17 ) and (convite == 1):
        entraram += 1
        print(f"Você por conta do convite, pode entrar.")
    elif (idade >= 16 and idade <= 17 ) and (convite == 0):
        barrados += 1
        print(f"Você não pode entrar, pois não tem convite.")
    elif (idade >= 18):
        if convite == 1:
            entraram += 1
            print(f"Você por conta do convite, pode entrar.")
        else:
            sem_convite += 1
            print(f"Você pode entrar, mas sem convite.")

    contador += 1

print(f"entraram: {entraram}")
print(f"barrados:  {barrados}")
print(f"entraram sem convite: {sem_convite}")



primeito exercicio em for:

totalPessoas = int(input("Digite o número de pessoas: "))
homens = 0
mulheres = 0

for contador in range(totalPessoas):
    sexo = input("Digite seu sexo: (Digite com M para masculino e F para feminino): ").lower()

    if (sexo == "m"):
        homens += 1
        print(f"ok")
    elif (sexo == "f"):
        mulheres += 1
        print(f"Você é mulher.")
    else:
        print(f"Digitou errado")


print(f"entraram {homens} homens e {mulheres} mulheres")

FIBONACCI:

numero = int(input("Digite um número: "))
a = 0
b = 1


for i in range(100):

     if (a > numero):
         break
    
     print(a, end=" , ")
    
     a, b = b, a+b

# contagem = int(input("Numero: "))

# anterio = 0
# atual = 1
# proximo = 0

# for i in range(contagem+1):
#     print(anterio, end=" , ")
    
#     proximo = anterio+atual
#     anterio = atual
#     atual = proximo


DEU ERRO NO GIT E APARECERAM ESTES COMANDOS, DEVE SERVIR PARA ALGO NO FUTURO:

error: unknown option `user.name'
usage: git config list [<file-option>] [<display-option>] [--includes]
   or: git config get [<file-option>] [<display-option>] [--includes] [--all] [--regexp] [--value=<pattern>] [--fixed-value] [--default=<default>] [--url=<url>] <name>
   or: git config set [<file-option>] [--type=<type>] [--all] [--value=<pattern>] [--fixed-value] <name> <value>
   or: git config unset [<file-option>] [--all] [--value=<pattern>] [--fixed-value] <name>
   or: git config rename-section [<file-option>] <old-name> <new-name>
   or: git config remove-section [<file-option>] <name>
   or: git config edit [<file-option>]
   or: git config [<file-option>] --get-colorbool <name> [<stdout-is-tty>]

Config file location
    --[no-]global         use global config file
    --[no-]system         use system config file
    --[no-]local          use repository config file
    --[no-]worktree       use per-worktree config file
    -f, --[no-]file <file>
                          use given config file
    --[no-]blob <blob-id> read config from given blob object

Action
    --get                 get value: name [<value-pattern>]
    --get-all             get all values: key [<value-pattern>]
    --get-regexp          get values for regexp: name-regex [<value-pattern>]
    --get-urlmatch        get value specific for the URL: section[.var] URL
    --replace-all         replace all matching variables: name value [<value-pattern>]
    --add                 add a new variable: name value
    --unset               remove a variable: name [<value-pattern>]
    --unset-all           remove all matches: name [<value-pattern>]
    --rename-section      rename section: old-name new-name
    --remove-section      remove a section: name
    -l, --list            list all
    -e, --edit            open an editor
    --get-color           find the color configured: slot [<default>]
    --get-colorbool       find the color setting: slot [<stdout-is-tty>]

Display options
    -z, --[no-]null       terminate values with NUL byte
    --[no-]name-only      show variable names only
    --[no-]show-origin    show origin of config (file, standard input, blob, command line)
    --[no-]show-scope     show scope of config (worktree, local, global, system, command)
    --[no-]show-names     show config keys in addition to their values

Type
    -t, --[no-]type <type>
                          value is given this type
    --bool                value is "true" or "false"
    --int                 value is decimal number
    --bool-or-int         value is --bool or --int
    --bool-or-str         value is --bool or string
    --path                value is a path (file or directory name)
    --expiry-date         value is an expiry date

Other
    --[no-]default <value>
                          with --get, use default value when missing entry
    --[no-]comment <value>
                          human-readable comment string (# will be prepended as needed)
    --[no-]fixed-value    use string equality when comparing values to value pattern
    --[no-]includes       respect include directives on lookup

    ATIVIDADE COM LISTA, MUITO INTERRESSANTE ALIÁS:

    # quantidade de alunos que serão analisados
alunos = 30

# listas para armazenar as idades e alturas dos alunos
idade = []
altura = []

# variável para somar todas as alturas
somaAltura = 0

# contador para controlar o loop de entrada de dados
contador = 0

# loop que irá rodar enquanto não coletarmos os dados de todos os alunos
while contador < alunos:

    # pede a idade do aluno
    idadeAluno = int(input("Digite usa idade: "))

    # pede a altura do aluno
    alturaAluno = float(input("Digite sua altura: "))

    # adiciona a idade digitada dentro da lista idade
    idade.append(idadeAluno)

    # adiciona a altura digitada dentro da lista altura
    altura.append(alturaAluno)

    # aumenta o contador para ir para o próximo aluno
    contador += 1

    # soma todas as alturas digitadas
    somaAltura = somaAltura + alturaAluno


# calcula a média de altura da turma
mediaAltura = somaAltura / alunos


# variável que vai percorrer as listas
i = 0

# contador de alunos que têm mais de 13 anos e altura abaixo da média
aluno_media = 0


# percorre todas as posições das listas
while i < alunos:

    # verifica se o aluno tem mais de 13 anos E altura menor que a média
    if idade[i] > 13 and altura[i] < mediaAltura:

        # se atender à condição, soma 1 no contador
        aluno_media = aluno_media + 1

    # passa para o próximo aluno da lista
    i += 1


# mostra quantos alunos atendem à condição do exercício
print(f"Alunos inferiores a média com mais de treze anos: {aluno_media}")

# mostra a média de altura da turma
print(f"A média de altura da turma é: {mediaAltura}")

EXERCICIO:

# Definindo o preço do litro de cada combustível
Preco_alcool = 3.89
Preco_gasolina = 5.50

# Pergunta ao usuário qual combustível ele quer
# .lower() transforma a resposta em minúscula (A vira a / G vira g)
tipo_cliente = input("Você quer qual combustível: \n\
                     G-gasolina ou A-álcool ").lower()

# Pergunta quantos litros o cliente quer abastecer
# Dependendo da quantidade existe um desconto diferente
litros = int(input("até 20 litros você consegue um desconto de: \n\
                   Alcool 3% e 4% na gasolina \n\
                   acima de 20 litros você consegue um desconto de: \n\
                   Alcool 5% e gasolina 6% "))

# Cálculo do valor com desconto para álcool até 20 litros (3%)
desconto_alcool = (Preco_alcool * litros) * (1 - 0.03)

# Cálculo do valor com desconto para álcool acima de 20 litros (5%)
alcool_acima = (Preco_alcool * litros) * (1 - 0.05)

# Cálculo do valor com desconto para gasolina até 20 litros (4%)
desconto_gasolina = (Preco_gasolina * litros) * (1 - 0.04)

# Cálculo do valor com desconto para gasolina acima de 20 litros (6%)
gasolina_acima = (Preco_gasolina * litros) * (1 - 0.06)

# Verifica se o cliente escolheu álcool e se a quantidade é até 20 litros
if (tipo_cliente == "a") and (litros <= 20):
    print(f"O valor é {desconto_alcool:.2f}")

# Verifica se o cliente escolheu álcool e se a quantidade é maior que 20 litros
elif (tipo_cliente == "a") and (litros > 20):
    print(f"o valor é {alcool_acima:.2f}")

# Verifica se o cliente escolheu gasolina e se a quantidade é até 20 litros
elif (tipo_cliente == "g") and (litros <= 20):
    print(f"o valor é {desconto_gasolina:.2f}")

# Verifica se o cliente escolheu gasolina e se a quantidade é maior que 20 litros
elif (tipo_cliente == "g") and (litros > 20):
    print(f"o valor é {alcool_acima:.2f}")  # aqui deveria usar gasolina_acima

# Caso o usuário digite algo diferente de A ou G
else:
    print(f"não temos esse combustível.")


UMA FORMA MAIS ORGANIZADA: 

# Preço por litro
preco_alcool = 3.89
preco_gasolina = 5.50

# Pergunta qual combustível o cliente deseja
tipo_cliente = input("Escolha o combustível (G - Gasolina / A - Álcool): ").lower()

# Pergunta a quantidade de litros
litros = float(input("Digite a quantidade de litros: "))

# Verificação do tipo de combustível
if tipo_cliente == "a":

    valor = preco_alcool * litros  # calcula valor sem desconto

    # desconto dependendo da quantidade
    if litros <= 20:
        valor = valor * (1 - 0.03)  # 3% de desconto
    else:
        valor = valor * (1 - 0.05)  # 5% de desconto

    print(f"Total a pagar: R$ {valor:.2f}")

elif tipo_cliente == "g":

    valor = preco_gasolina * litros  # calcula valor sem desconto

    if litros <= 20:
        valor = valor * (1 - 0.04)  # 4% de desconto
    else:
        valor = valor * (1 - 0.06)  # 6% de desconto

    print(f"Total a pagar: R$ {valor:.2f}")

else:
    print("Tipo de combustível inválido.")



    INSTALAÇÃO

    python -m venv venv
    .\venv\scripts\activate
    pip install numpy pandas openpxl



    python -m venv .venv
.venv\Scripts\activate
pip install -r requirements.txt

pip install -r requirements.txt


pip install streamlit
pip install pandas
pip install scikit-learn

COMANDO DE INICIALIZAÇÃO DO STREAMLIT:
streamlit run endereço do arquivo