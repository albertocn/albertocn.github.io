program RedeLojas;

type
   VetorProdutos = array[1..5] of string[10];
   VetorLojas = array[1..3] of string[2];
   MatrizEstoque = array[1..3, 1..5] of integer;

var
   Produtos: VetorProdutos;
   Lojas:    VetorLojas;
   Estoque:  MatrizEstoque;
   Produto:  string[10];
   Loja:     string[2];
   Quant, P,
   L, I, J:  integer;

begin
   { Leitura dos produtos }
   writeln('Digite os 5 produtos');
   for I := 1 to 5 do
      readln(Produtos[I]);

   { Leitura das lojas }
   writeln('Digite as 3 lojas');
   for I := 1 to 3 do
      readln(Lojas[I]);

   { Leitura do estoque por loja }
   writeln('Digite o estoque dos produtos por loja');
   for I := 1 to 3 do
     for J := 1 to 5 do
        readln(Estoque[I,J]);

   { Item A - estoque de um dado produto numa dada loja }
   write('Digite o produto:'); readln(Produto);
   for I := 1 to 5 do
      if Produtos[I] = Produto then
         P := I;
   write('Digite a loja:'); readln(Loja);
   for J := 1 to 3 do
      if Lojas[J] = Loja then
         L := J;
   writeln('Estoque do produto ', Produto, ' na loja ', Loja, ':', Estoque[L,P]);

   { Item B - estoque de um dado produto }
   write('Digite o produto:'); readln(Produto);
   for I := 1 to 5 do
      if Produtos[I] = Produto then
         P := I;
   Quant := 0;
   for J := 1 to 3 do
      Quant := Quant + Estoque[J,P];
   writeln('Estoque do produto ', Produto, ':', Quant);

   { Item C - estoque de uma dada loja }
   write('Digite a loja:'); readln(Loja);
   for J := 1 to 3 do
      if Lojas[J] = Loja then
         L := J;
   Quant := 0;
   for I :=  1 to 5 do
      Quant := Quant + Estoque[L,I];
   writeln('Estoque da loja ', Loja, ':', Quant);

   { Item D - loja em que um dado produto apresenta menor estoque }
   write('Digite o produto:'); readln(Produto);
   for I := 1 to 5 do
      if Produtos[I] = Produto then
         P := I;
   Quant := Estoque[1,P]; 
   L := 1;
   for J := 2 to 3 do
      if Estoque[J,P] < Quant then
         begin
            Quant := Estoque[J,P];
            L := J;
         end;
   writeln('Loja ', Lojas[L], ' tem o menor estoque (', Quant,
           ') do produto ', Produto);

   { Item E - produto com menor estoque em uma dada loja }
   write('Digite a loja:'); readln(Loja);
   for J := 1 to 3 do
      if Lojas[J] = Loja then
         L := J;
   Quant := Estoque[L,1];
   P := 1;
   for I := 2 to 5 do
      if Estoque[L,I] < Quant then
         begin
            Quant := Estoque[L,I];
            P := I;
         end;
   writeln('O produto ', Produtos[P], ' tem o menor estoque na loja ', Loja);
end.