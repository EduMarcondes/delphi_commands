var
   CountDisc, i, x: integer;
   Disc: Tdisc;
begin
     CountDisc := 0;
       for x := 0 to Mat.CfgAcads.Count - 1 do
       begin
           for i := 0 to Mat.CfgAcads[x].Etapas[0].Disciplinas.Count - 1 do
           begin
             Disc := Mat.CfgAcads[x].Etapas[0].Disciplinas[i];

             if ((Disc.nome = 'BT- Improvisação Dramática 1: Sentimentos e Sensações')
             or(Disc.nome = 'BT- Música 1: Sensibilização Musical')
             or(Disc.nome = 'BT- Prática da Literatura Dramática 1:')
             or(Disc.nome = 'BT- História do Teatro Mundial 1')
             or(Disc.nome = 'BT- Ética e Filosofia')
             or(Disc.nome = 'BT- Improvisação Dramática 2: Improvisação aplicada ao texto')
             or(Disc.nome = 'BT- Música 2: Canto Coral 1')
             or(Disc.nome = 'BT- Prática da Literatura Dramática 2.')
             or(Disc.nome = 'BT- História do Teatro Mundial 2')
             or(Disc.nome = 'BT- Caracterização Cênica e Maquiagem 1')
             or(Disc.nome = 'BT- Música 3: Canto Coral 2')
             or(Disc.nome = 'BT- História do Teatro Mundial 3')
             or(Disc.nome = 'BT- História do Teatro Brasileiro 1')
             or(Disc.nome = 'BT- Sociologia e Política')
             or(Disc.nome = 'BT- Música 4: Técnicas de Canto para o Personagem')
             or(Disc.nome = 'BT- Prática da Literatura Dramática 3.')
             or(Disc.nome = 'BT- História do Teatro Brasileiro 2')
             or(Disc.nome = 'BT- Interpretação para TV e Cinema 1')
             or(Disc.nome = 'BT- Perspectivas do Ator Brasileiro: Empreendedorismo e Mercado')
             or(Disc.nome = 'BT- História do Cinema e da Tv')
             or(Disc.nome = 'BT- Técnicas de Cenário, Figurino e Iluminação')
             or(Disc.nome = 'BT- Interpretação para TV e Cinema 2')
             or(Disc.nome = 'BT- Caracterização Cênica e Maquiagem 2')
             or(Disc.nome = 'BT- Libras')
             or(Disc.nome = 'BT- Metodologia da Pesquisa')
             or(Disc.nome = 'BT- Trabalho de Conclusão de Curso')
             or(Disc.nome = 'BT- Disciplina Optativa')) then
             begin
               if (Disc.MediaFinal < 6) then
               begin
                  CountDisc := CountDisc + 1;
               end
             end
             else
             if (Disc.MediaFinal < 6) then
             begin
                  result:= true;
                  Exit;
             end;
           end;
       end;

     result := CountDisc > 2;
end.
