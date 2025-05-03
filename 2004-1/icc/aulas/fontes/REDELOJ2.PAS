program RedeLojas;

type
   VetorProdutos = array[1..5] of string[10];
   VetorLojas    = array[1..3] of string[2];
   MatrizEstoque = array[1..3, 1..5] of integer;

var
   Produtos: VetorProdutos;
   Lojas   : VetorLojas;
   Estoque : MatrizEstoque;
   Opcao   : integer;

(*********************************************)
procedure LerDados;
var
   I, J : integer;
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
end;

(*********************************************)
{ (1) estoque de um dado produto numa dada loja }
procedure EstoqueProdutoLoja;
var
   Produto   : string[10];
   Loja      : string[2];
   P, L, I, J: integer;
begin
   write('Digite o produto:'); readln(Produto);
   for I := 1 to 5 do
      if Produtos[I] = Produto then
         P := I;
   write('Digite a loja:'); readln(Loja);
   for J := 1 to 3 do
      if Lojas[J] = Loja then
         L := J;
   writeln('Estoque do produto ', Produto, ' na loja ', Loja, ':', Estoque[L,P]);   
end;


(*********************************************)
{ (2) estoque de um dado produto }
procedure EstoqueProduto;
var
   Produto   : string[10];
   Quant,
   P, L, I, J: integer;
begin
   write('Digite o produto:'); readln(Produto);
   for I := 1 to 5 do
      if Produtos[I] = Produto then
         P := I;
   Quant := 0;
   for J := 1 to 3 do
      Quant := Quant + Estoque[J,P];
   writeln('Estoque do produto ', Produto, ':', Quant);

end;


(*********************************************)
{ (3) estoque de uma dada loja }
procedure EstoqueLoja;
var
   Loja   : string[2];
   Quant,
   L, I, J: integer;

begin
   write('Digite a loja:'); readln(Loja);
   for J := 1 to 3 do
      if Lojas[J] = Loja then
         L := J;
   Quant := 0;
   for I :=  1 to 5 do
      Quant := Quant + Estoque[L,I];
   writeln('Estoque da loja ', Loja, ':', Quant);
end;


(*********************************************)
{ (4) loja em que um dado produto apresenta menor estoque }
procedure MenorEstoqueProduto;
var
   Produto   : string[10];
   Quant,
   P, L, I, J: integer;

begin
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
end;

(*********************************************)
procedure MenorEstoqueLoja;
{ (5) produto com menor estoque em uma dada loja }
var
   Loja      : string[2];
   Quant,
   P, L, I, J: integer;
begin
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
end;

BEGIN
   LerDados;
   repeat
      writeln('1 - Estoque de Produto em Loja');
      writeln('2 - Estoque de Produto');
      writeln('3 - Estoque em Loja');
      writeln('4 - Menor Estoque de Produto');
      writeln('5 - Menor Estoque em Loja');
      writeln('6 - Sair');
      readln(Opcao);
      case Opcao of
        1: EstoqueProdutoLoja;
        2: EstoqueProduto;
        3: EstoqueLoja;
        4: MenorEstoqueProduto;
        5: MenorEstoqueLoja;
      end;
   until Opcao = 6;
END.