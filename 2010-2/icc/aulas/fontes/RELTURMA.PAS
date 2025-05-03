program RelTurma;

type
   TipoAluno = record
                  Nome:       string[30];
                  Matricula:  string[8];
                  Media:      real;
                  Frequencia: integer;
               end;

var
   Aluno: TipoAluno;
   Aprovados, 
   Reprovados : integer;

begin

   Aprovados  := 0;
   Reprovados := 0;

   write('Nome:'); readln(Aluno.Nome);

   while Aluno.Nome <> 'fim' do
     begin
        write('Matricula:');  readln(Aluno.Matricula);
        write('Media:');      readln(Aluno.Media);
        write('Frequencia:'); readln(Aluno.Frequencia);

        if (Aluno.Media >= 7) and (Aluno.Frequencia >= 60) then
           Aprovados := Aprovados + 1
        else
           Reprovados := Reprovados + 1;

        write('Nome:'); readln(Aluno.Nome);
     end;

   writeln('Total de Aprovados:',  Aprovados);
   writeln('Total de Reprovados:', Reprovados);
end.

