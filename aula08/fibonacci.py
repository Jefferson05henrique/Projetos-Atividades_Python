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