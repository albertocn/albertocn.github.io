def ordenarInsercao(l): 
   for i in range(1, len(l)):
      inserirEmOrdem(i, l)


def inserirEmOrdem(i, l):
   j = i
   while j > 0 and l[j-1] > l[j]:
      print(f'Colocando {l[j]} no lugar de {l[j-1]} na posição {j-1}')
      l[j-1], l[j] = l[j], l[j-1]
      j -= 1
      print(l)
   

lista = [3,1,2,10,4,12,15,5]
print('Inicio:', lista)
ordenarInsercao(lista)
print('Fim:', lista)
