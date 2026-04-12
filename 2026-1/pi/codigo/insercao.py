def ordenarInsercao(l):
    # Percorre de 1 até o final da lista
    for i in range(1, len(l)):
        valor = l[i]
        print(f'Valor: {valor}')
        j = i - 1
        # Move os elementos maiores que o valor para uma posição adiante
        while j >= 0 and l[j] > valor:
            print(f'Copiando {l[j]} da posição {j} para a posição {j + 1}')
            l[j + 1] = l[j]
            j -= 1
            print(l)
        l[j + 1] = valor
        print(f'Colocando {valor} na posição {j+1}\n{l}')
    return l


lista = [3, 1, 2, 10, 4, 12, 15, 5]
print('Inicio:', lista)
ordenarInsercao(lista)
print('Fim:', lista)
