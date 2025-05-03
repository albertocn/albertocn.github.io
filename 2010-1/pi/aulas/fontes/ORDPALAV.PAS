program OrdenaPalavras;

type
   TipoVetor = array [1..30] of string[20];

var
   Vetor     : TipoVetor;
   I, N,
   Menor,
   Ordenadas : integer;
   Temp      : string[20];

begin
   write('N:'); readln(N);

   for I := 1 to N do
      readln(Vetor[I]);

   Ordenadas := 0;
   
   repeat
      inc(Ordenadas); { equivale a Ordenadas := Ordenadas + 1; }

      Menor := Ordenadas;          

      for I := Ordenadas + 1 to N do
         if (Vetor[I] < Vetor[Menor]) then
            Menor := I;

      Temp             := Vetor[Ordenadas];
      Vetor[Ordenadas] := Vetor[Menor];
      Vetor[Menor]     := Temp;
   until Ordenadas = N;   

   for I := 1 to N do
      writeln(Vetor[I]);
end.
