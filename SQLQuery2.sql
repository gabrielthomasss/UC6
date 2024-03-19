use sistema_biblioteca;

--Quest�o 1
select count(*) as total_livros
from LIVRO_BIBLIOTECA
where cnpj= '12345678000123';
--Quest�o 2
select * from BIBLIOTECARIO order by nome;

--Quest�o 3
select titulo, autor from LIVRO
where numero_registro = 10;

--Quest�o 4
select *
from evento
where tipo = 'workshop' and custo > 150.00;

--Quest�o 5 
select livro.titulo
from livro
join tecnologia on 
livro.numero_registro = TECNOLOGIA.numero_registro

--Quest�o 6 
select nome from atendente;

--Quest�o 7 
select titulo, ano_publicacao
from PERIODICO
where ano_publicacao = '2023';

--Quest�o 8
select livro.titulo , autor
from livro
join SOCIOLOGIA on 
livro.numero_registro = SOCIOLOGIA.numero_registro

--Quest�o 9
select matricula, nome 
from EDUCADOR

--Quest�o 10
select PERIODICO.titulo
from PERIODICO
where titulo like 'c%';

--Quest�o 11 
select evento.data, evento.tipo
from evento
where tipo = 'PALESTRA' and data <'2022'

--Quest�o 12 
select livro.titulo, livro.ano_publicacao
from livro
join CIENCIA on livro.numero_registro = CIENCIA.numero_registro
and ano_publicacao >'2015';

--Quest�o 13
select TECNICO_TI.nome
from TECNICO_TI
where nome like '%rodrigo%';

--Quest�o 14
select FUNCIONARIO.nome
from FUNCIONARIO
join ASSISTENTE on FUNCIONARIO.matricula = assistente.matricula;

--Quest�o 15
select livro.titulo
from livro
where titulo like '%programa��o%';

--Quest�o 16
select PERIODICO.titulo
from PERIODICO
where titulo like '%sa�de%';

--Quest�o 17
select FUNCIONARIO.nome
from FUNCIONARIO
join gerente on FUNCIONARIO.matricula = gerente.matricula
where gerente.nome like 'c%';

--Quest�o 18 
select livro.titulo, livro.ano_publicacao
from livro
where ano_publicacao > '2010' and ano_publicacao < '2020';

--Quest�o 19
select FUNCIONARIO.nome
from FUNCIONARIO
join ESTAGIARIO
on ESTAGIARIO.matricula = FUNCIONARIO.matricula
where ESTAGIARIO.nome like '%lima%';
