program MaiorQueMedia;

type
   TipoVetor = array [1..100] of real;

var
   Vetor: TipoVetor;
   N, I:  integer;
   Soma,
   Media: real;

begin
   Soma := 0;
   write('N:'); readln(N);

   for I := 1 to N do
     begin
        write('Vetor[', I, ']:'); readln(Vetor[I]);
        Soma := Soma + Vetor[I];
     end;

   Media := Soma / N;

   for I := 1 to N do
      if Vetor[I] > Media then
         writeln(Vetor[I]);
end.