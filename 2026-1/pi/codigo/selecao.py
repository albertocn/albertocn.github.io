def ordenarSelecao(l):
   for i in range(len(l)-1):
       pos_menor = indiceDoMenorDesde(i, l)
       if i != pos_menor:  # não troca de posição se for igual
          print(f'Trocando {l[i]} por {l[pos_menor]} na posição {i}')
          l[i], l[pos_menor] = l[pos_menor], l[i]
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