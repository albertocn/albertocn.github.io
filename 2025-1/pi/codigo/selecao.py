def ordenarSelecao(l):
   for i in range(len(l)-1):
       j = indiceDoMenorDesde(i, l)
       l[i], l[j] = l[j], l[i]

def indiceDoMenorDesde(i, l):
   pos_menor = i 
   for k in range(pos_menor+1, len(l)): 
     if l[k] < l[pos_menor]:
       pos_menor = k
   return pos_menor

nums = [3,1,2,10,2,5,15,20,30,40,50,60]
ordenarSelecao(nums)
print(nums)
nomes = ['Maria', 'Ana', 'Pedro', 'Jose']
ordenarSelecao(nomes)
print(nomes)