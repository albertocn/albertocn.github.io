def ordenarBolha(lista):
    n = len(lista)
    for i in range(n):
        # Flag para otimizar, caso a lista já esteja ordenada
        trocou = False
        for j in range(0, n-i-1):
            if lista[j] > lista[j+1]:
                print('Trocando', lista[j], 'por', lista[j+1])
                lista[j], lista[j+1] = lista[j+1], lista[j]
                print('Após a troca:', lista)
                trocou = True
        if not trocou:
            break  # Se nenhuma troca foi feita, a lista está ordenada
    return lista


lista = [3,1,2,10,2,5,15,12,4]
ordenarBolha(lista)
print(lista)