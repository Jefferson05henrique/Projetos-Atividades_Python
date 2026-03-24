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