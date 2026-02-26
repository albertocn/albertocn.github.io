def ordenarSelecao(l):
   for i in range(len(l)-1):
       j = indiceDoMenorDesde(i, l)
       if i != j:
          print(f'Trocando {l[j]} por {l[i]} na posição {i}')
          l[i], l[j] = l[j], l[i]
          print(l)

def indiceDoMenorDesde(i, l):
   pos_menor = i 
   for k in range(pos_menor+1, len(l)): 
     if l[k] < l[pos_menor]:
       pos_menor = k
   return pos_menor

nums = [3,1,10,5,15,20,50,40,30,2,4]
print('Inicio:', nums)
ordenarSelecao(nums)
print('Fim:', nums)