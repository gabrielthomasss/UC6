-- Questão 1
select * from LIVRO
from SOCIOLOGIA

-- Questão 2
select FUNCIONARIO.nome from FUNCIONARIO
join BIBLIOTECARIO on
FUNCIONARIO.matricula = BIBLIOTECARIO.matricula;

-- Questão 3
select titulo,ano_publicacao
from LIVRO
where ano_publicacao <'2000';

-- Questão 4
select cnpj,count(*) as total_livro
from LIVRO_BIBLIOTECA
group by cnpj;

insert into LIVRO_BIBLIOTECA

-- Questão 5
select *
from EVENTO
where tipo = 'workshop' and year(data) >'2020';

-- Questão 6
create table USUARIO(
  id_usuario varchar(7)primary key,
  nome varchar(10),
  telefone varchar(11),
  cpf varchar(11)

  );

create table EMPRESTIMO(
	emp_data date,
	emp_devolucao date,
	prazo int,
	numero_registro int,
	id_emp varchar(7),
	id_usuario varchar(7),
	foreign key (id_usuario) references USUARIO(id_usuario),
	foreign key (numero_registro) references livro (numero_registro)
  );

insert into USUARIO(id_usuario,nome,telefone,cpf)
values
('U0001', 'Gabriel' , '24567849912', '99999999999'),
('U0002', 'Thomas' , '22569976312', '88888888888'),
('U0003', 'Silva' , '2499654432', '77777777777'),
('U0004', 'Lima' , '24276799712', '55555555555')

insert into EMPRESTIMO(emp_data, emp_devolucao, prazo, numero_registro, id_emp)
values
('2023-03-16', '26', '2022-03-18' , '3434', '2323432'),
('2023-03-17', '23', '2022-03-19' , '3535', '2322122'),
('2023-03-18', '21', '2022-03-20' , '3232', '2371932'),
('2023-03-19', '25', '2022-03-21' , '3131', '2543232')


-- Questão 7
select LIVRO.titulo
from LIVRO
join TECNOLOGIA
on LIVRO.numero_registro = TECNOLOGIA.numero_registro
where titulo like '%python%';

-- Questão 8
select cnpj,titulo
from PERIODICO
join PERIODICO_BIBLIOTECA
on PERIODICO.numero_registro = PERIODICO_BIBLIOTECA.numero_registro
where cnpj = '12345678000123';

-- Questão 9
select * 
from FUNCIONARIO
where matricula not like 't%';

select *
from FUNCIONARIO
where matricula not in (select matricula from TECNICO_TI);

-- Questão 10
select titulo,autor
from LIVRO
join EMPRESTIMO
on LIVRO.numero_registro = EMPRESTIMO.numero_registro
where id_usuario = 'U0001';

-- Questão 11 
select *
from EVENTO
join PALESTRA on EVENTO.id_evento = palestra.id_evento
where custo>'100.00' and tipo = 'PALESTRA'


-- Questão 12
select LIVRO.titulo, livro.ano_publicacao
from LIVRO
join CIENCIA on LIVRO.numero_registro = CIENCIA.numero_registro
and ano_publicacao >'2010';

select LIVRO.titulo, livro.ano_publicacao
from LIVRO
join CIENCIA on LIVRO.numero_registro = CIENCIA.numero_registro
where ano_publicacao >'2010';

-- Questão 13
select ATENDENTE.nome
from ATENDENTE
where nome like '% maria %';

-- Questão 14
select LIVRO.titulo
from LIVRO
join EMPRESTIMO on LIVRO.numero_registro = EMPRESTIMO.numero_registro
where (
select count(*)
from EMPRESTIMO
where LIVRO.numero_registro = EMPRESTIMO.numero_registro
) > 5

--Questão 15
select nome.titulo



-- Questão 16
select tipo, data, evento.id_evento
from EVENTO
join PALESTRA
on EVENTO.id_evento = PALESTRA.id_evento
where year (data) ='2022'
order by PALESTRA.id_evento





-- Questão 18
select