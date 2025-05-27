""" Esse arquivo tem como objetivo escrever 
                               os códigos aprendidos dos módulos de python """
print("Hello, world!")
                         #Lista
lista=[2,4,8,16]
nomes=["adriana","gabriele","mable"]
print(nomes)
print(type(nomes))
print(nomes[0]) #comeã a contar da posição 0
print(nomes[0:2]) #não inclui mable, pois o último argum. é excludente(n-1)
nomes.insert(3,"joão") #inseri o joão na posicão 3
print(nomes)
nomes.reverse() # inverti os elementos da lista
print(nomes)
print(type(lista))
lista.pop() #removi o último elemento da lista
print(lista)
lista.insert(4,16) #inseri 16, na posição 4
print(lista)
lista.pop(0) #removi o elemento da posição 0
print(lista)
print(lista.count(2)) #conta a qtd de elementos "2" como eu o removi, a resposta é zero

 
