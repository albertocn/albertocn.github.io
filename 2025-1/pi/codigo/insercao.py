def ordenarInsercao(l): 
   for i in range(1, len(l)):
      inserirEmOrdem(i, l)


def inserirEmOrdem(i, l):
   j = i
   while j > 0 and l[j-1] > l[j]:
      l[j-1], l[j] = l[j], l[j-1]
      j -= 1

lista = [3,1,2,10,2,12,15,5]
ordenarInsercao(lista)
print(lista)
nomes = ['Maria', 'Ana', 'Pedro', 'Jose']
ordenarInsercao(nomes)
print(nomes)