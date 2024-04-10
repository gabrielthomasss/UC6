-- PROCEDURE

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
 create procedure sp_liv_pre_2000
	@ano_publicacao nvarchar(30)
as
begin
	select titulo, ano_publicacao
	from LIVRO
	where ano_publicacao < @ano_publicacao
end;
exec sp_liv_pre_2000 @ano_publicacao = '2000';



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
create procedure sp_ev_pos_2020
	@data nvarchar(30)
as
begin
	select *
	from EVENTO
	join WORKSHOP
	on EVENTO.id_evento = WORKSHOP.id_evento
	where year(data) > @data
end;
exec sp_ev_pos_2020 @data = '2020';

/*
6. Procedure para exibir os nomes dos usuários que fizeram empréstimos de livros em
janeiro de 2023.
*/
create procedure sp_usuario_emprestimos
@mes int,
@ano int
as
begin
     select usuario.nome, emp_data from  usuario
     join emprestimo on usuario.id_usuario = emprestimo.matricula
     where MONTH(emp_data) = 1
     and year(emp_data) = '2023';
 end;

 exec sp_usuario_emprestimos;


/*
7. Procedure para retornar os títulos dos livros de tecnologia que têm 'Python' no título.
*/
create procedure sp_buscar_python
	@titulo nvarchar(100)
as 
begin
	select *
	from LIVRO
	join TECNOLOGIA
	on LIVRO.numero_registro = TECNOLOGIA.numero_registro
	where titulo  like '%'+@titulo+'%'
end

exec sp_buscar_python @titulo  = 'python';


/*
8. Procedure para listar os títulos dos periódicos disponíveis na biblioteca com CNPJ
'12345678000123'.
*/
create procedure sp_listar_livro
	@cnpj nvarchar(14)
as
begin
	select titulo
	from PERIODICO
	join PERIODICO_BIBLIOTECA
	on PERIODICO.numero_registro = PERIODICO_BIBLIOTECA.numero_registro
	where cnpj = @cnpj;
end;
exec sp_listar_livro @cnpj = '12345678000123';


 /*
 9. Procedure para mostrar os nomes dos funcionários que não são técnicos de TI.
 */
 alter procedure sp_funcionariosti
 as
 begin
     select nome
     from FUNCIONARIO
     where FUNCIONARIO.matricula not like 't%';
 end;

 exec sp_funcionarios_ti;
  

/*
10.Procedure para exibir o título e o autor dos livros emprestados pelo usuário com ID
'U0001'.
*/
create procedure sp_usuario
	@id_usuario varchar(20)
as
begin
	select titulo, autor
	from LIVRO
	join EMPRESTIMO
	on LIVRO.numero_registro = EMPRESTIMO.numero_registro
	where  = @id_usuario
end;
exec sp_usuario @id_usuario = 'U0001'


/*
11.Procedure para listar todas as palestras
que custaram mais de R$ 100,00.
*/
create procedure sp_palestra
	@custo decimal(6,2)
as
begin
	select *
	from EVENTO
	join PALESTRA
	on EVENTO.id_evento = PALESTRA.id_evento
	where custo < @custo
end;
drop procedure sp_palestra
exec sp_palestra @custo = 100




/*
12.Procedure para retornar os títulos dos livros de 
ciência que foram publicados após 
2010.
*/
alter procedure sp_ciencia_pos_2010
	@ano_publicacao nvarchar(30)
as
begin
	select titulo, ano_publicacao
	from LIVRO
	join CIENCIA
	on LIVRO.numero_registro = CIENCIA.numero_registro
	where year (ano_publicacao) > @ano_publicacao
end;
exec sp_ciencia_pos_2010 @ano_publicacao = '2010'

/*
13.Procedure para exibir os nomes dos atendentes 
que têm 'Maria' no nome.
*/
alter procedure sp_maria
	@nome nvarchar(50)
as
begin
	select funcionario.nome
	from FUNCIONARIO
	join ATENDENTE
	on FUNCIONARIO.matricula = ATENDENTE.matricula
	where
	funcionario.nome like '% ' + @nome + ' %'
	or funcionario.nome like '%' + @nome + ' %'
	or funcionario.nome like '% ' + @nome + '%'
end;
exec sp_maria @nome = 'maria'

/*
14.Procedure para mostrar os títulos dos livros queram 
emprestados mais de 5 vezes.
*/
alter procedure sp_emp_cinco
@quantidade int
as
begin
	select livro.titulo
	as emprestimos
	from LIVRO
	join EMPRESTIMO
	on LIVRO.numero_registro = EMPRESTIMO.numero_registro
	where(
	select count(*) from EMPRESTIMO
	where LIVRO.numero_registro = EMPRESTIMO.numero_registro)
	> @quantidade;
end;
exec sp_emp_cinco @quantidade = 5;


/*
15.Procedure para listar os nomes dos usuários que emprestaram
livros de tecnologia.
*/
create procedure sp_user_tec
as
begin
	select nome, titulo
	from USUARIO
	join EMPRESTIMO
	on USUARIO.id_usuario = EMPRESTIMO.matricula
	join LIVRO
	on EMPRESTIMO.numero_registro = LIVRO.numero_registro
	join TECNOLOGIA
	on LIVRO.numero_registro = TECNOLOGIA.numero_registro
	where TECNOLOGIA.numero_registro = EMPRESTIMO.numero_registro
	order by usuario.id_usuario
end;
exec sp_user_tec;


-- VIEWS
/*
1. View para listar todos os livros com seus 
respectivos autores e ano de publicação.
*/
create view vwLivros
as
	select * from LIVRO;
	
	select * from vwLivros;


/*
2. View para exibir os detalhes dos funcionários que são gerentes.
*/
create view vwFuncionarioGerente
as
	select funcionario.*
	from FUNCIONARIO
	join GERENTE
	on GERENTE.matricula = FUNCIONARIO.matricula;

		select * from vwFuncionarioGerente

/*
3. View para mostrar todos os eventos organizados por data.
*/
create view vwEventoData
as
	select top 10 evento.*
	from EVENTO
	order by data

		select * from vwEventoData

/*
4. View para listar os livros de cada categoria 
(Tecnologia, Sociologia, Ciência).
*/
create view vwLivrosCat
as
	select livro.*
	from LIVRO
	join TECNOLOGIA
	on TECNOLOGIA.numero_registro = LIVRO.numero_registro
	join SOCIOLOGIA
	on SOCIOLOGIA.numero_registro = LIVRO.numero_registro
	join CIENCIA
	on CIENCIA.numero_registro = LIVRO.numero_registro

		select * from vwLivrosCat

/*
5. View para exibir os títulos dos periódicos e suas datas de publicação
*/
create view vwPeriodico
as
select periodico.*
from PERIODICO
	
select titulo, ano_publicacao
from vwPeriodico 
order by ano_publicacao