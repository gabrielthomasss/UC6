-- Criar o banco
/*create database senac;
-- Usar banco de dados
use senac;
-- Criando tabela Endere�o
  create table ENDERECO(
    id_endereco char(7) primary key,
    rua varchar(20),
    bairro varchar(20),
    cidade varchar(20),
    estado varchar(15),
    numero char(4)

   );



--Criando a tabela senac
create table SENAC(
   id_senac char(7) primary key,
   nome varchar(40),
   cnpj char(14),
   telefone char(11),
   email varchar(30)UNIQUE,
   id_endereco char(7),
   site varchar(20)
   foreign key(id_endereco) references ENDERECO(id_endereco)

  );

 
 


 --Criando tabela Funcionario
   create table FUNCIONARIO(
    id_funcionario char(7) primary key,
    nome varchar(30),
    telefone char(11)UNIQUE,
    email varchar(30)UNIQUE,
    cpf char(11)UNIQUE,
	id_endereco char(7),
    cargo varchar(12)
    foreign key(id_endereco) references ENDERECO(id_endereco)

	);

 --Criando tabela Aluno
	create table ALUNO(
	id_aluno char(7) primary key,
	nome varchar(30),
	cpf char(11) UNIQUE,
	telefone char(11),
	email varchar(15)	UNIQUE,
	id_endereco char(7),
	matricula char(10)
	foreign key(id_endereco) references ENDERECO(id_endereco)

	 );

--Criando tabela Curso
	create table CURSO(
	id_curso char(7) primary key,
	nome varchar(30),
	inicio_curso datetime,
	fim_curso datetime

	);

--Criando tabela UC
	create table UC(
	id_uc char(7) primary key,
	nome varchar(20),
	duracao datetime

	);

--Criando tabela Cursos
	create table CURSOS(
	foreign key (id_senac) references SENAC(id_senac),
	foreign key (id_curso) references CURSO(id_curso)

	);

		  
--Criando tabela Contrato
	create table CONTRATO(
	foreign key(id_senac) references SENAC(id_senac),
	foreign key(id_funcionario) references FUNCIONARIO(id_funcionario)

	);

--Criando  tabela Matricula
	create table MATRICULA(
	foreign key(id_senac) references SENAC(id_senac),
	foreign key(id_aluno) references ALUNO(id_aluno)

	);


--Criando tabela Turma
	create table TURMA(
	foreign key(id_curso) references CURSO(id_curso),
	foreign key(id_uc) references UC(id_uc)

	);


	























	
