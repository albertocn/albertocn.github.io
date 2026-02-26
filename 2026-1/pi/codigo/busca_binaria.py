def busca_binaria(lista, alvo):
    esquerda, direita = 0, len(lista) - 1

    while esquerda <= direita:
        meio = (esquerda + direita) // 2
        print('buscando', alvo, 'entre', esquerda, 'e', direita, 'meio =', meio)
        if lista[meio] == alvo:
            return meio
        elif lista[meio] < alvo:
            esquerda = meio + 1
        else:
            direita = meio - 1

    return -1


l = [1,2,5,10,20,30,40,50,65,70,85,95,100]
print('=> Posição do 10:', busca_binaria(l, 10))
print('=> Posição do 83:', busca_binaria(l, 83))
