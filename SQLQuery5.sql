/*
-- 1. Procedure para retornar todos os livros de sociologia.
*/
create procedure sp_livrossociologia
        
as
begin
     select * from LIVRO
	 join SOCIOLOGIA 
	 on livro.numero_registro = SOCIOLOGIA.numero_registro

end;

exec sp_livros_sociologia;


/*
2. Procedure para listar os nomes dos funcionários que são bibliotecários.
*/
create procedure sp_funcionariobibliotecarios
as 
begin
     select FUNCIONARIO.nome
	 from FUNCIONARIO
	 join BIBLIOTECARIO on
	 FUNCIONARIO.matricula = BIBLIOTECARIO.matricula
end;

exec sp_funcionario_bibliotecarios;

 
 /*
 3. Procedure para exibir os títulos dos livros publicados antes de 2000.
 */
 create procedure sp_titulolivros
 as
 begin
      select titulo,ano_publicacao
	  from LIVRO
	  where ano_publicacao <'2000';
 end;

 exec sp_titulo_livros;


 /*
 4. Procedure para mostrar o número total de livros em cada biblioteca.
 */
 create procedure sp_totallivros
 as
 begin
      select cnpj,count(*) as total_livros
	  from LIVRO_BIBLIOTECA
	  group by cnpj;
 end;

 exec sp_total_livros;


 /*
 5. Procedure para listar os eventos do tipo 'Workshop' que ocorreram após 2020.
 */
create procedure sp_eventoworkshop
as
begin
     select *
	 from EVENTO
	 where tipo = 'workshop' and year(data) >'2020';

end;

exec spEventoWorkshop;


/*
6. Procedure para exibir os nomes dos usuários que fizeram empréstimos de livros em
janeiro de 2023.
*/
create procedure sp_usuario_emprestimos
as
begin
     select usuario.nome, emp_data from  usuario
     join emprestimo on usuario.id_usuario = emprestimo.matricula
     where MONTH(emp_data) = 4 
     and year(emp_data) = '2024';
 end;

 exec sp_usuario_emprestimos;


/*
7. Procedure para retornar os títulos dos livros de tecnologia que têm 'Python' no título.
*/
create procedure sp_livrostecnologia
as
begin
     select LIVRO.titulo
	 from LIVRO
	 join TECNOLOGIA
	 on LIVRO.numero_registro = TECNOLOGIA.numero_registro
	 where titulo like '%python%';
end;

exec sp_livros_tecnologia;


/*
8. Procedure para listar os títulos dos periódicos disponíveis na biblioteca com CNPJ
'12345678000123'.
*/
create procedure sp_titulosperiodicos
as
begin
     select cnpj,titulo
     from PERIODICO
     join PERIODICO_BIBLIOTECA
     on PERIODICO.numero_registro = PERIODICO_BIBLIOTECA.numero_registro
     where cnpj = '12345678000123';
 end;

 exec sp_titulos_periodicos;


 /*
 9. Procedure para mostrar os nomes dos funcionários que não são técnicos de TI.
 */
 create procedure sp_funcionariosti
 as
 begin
     select * 
     from FUNCIONARIO
     where matricula not like 't%';
 end;

 exec sp_funcionarios_ti;
  

/*
10.Procedure para exibir o título e o autor dos livros emprestados pelo usuário com ID
'U0001'.
*/
create procedure sp_usuario_livros
	@id_emp varchar(7)
as
begin
	select titulo, autor
	from LIVRO
	join EMPRESTIMO
	on LIVRO.numero_registro = EMPRESTIMO.numero_registro
	where id_emp = @id_emp
end;
exec sp_usuario_livros @id_emp = 'U0001';


/*
FALTA FINALIZAR.
*/