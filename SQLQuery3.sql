-- Criar o banco
create database senac;
-- Usar banco de dados
use senac;
-- Criando tabela Endereço
  create table ENDERECO(
    id_endereco char(7) primary key,
    rua varchar(20),
    bairro varchar(20),
    cidade varchar(20),
    estado varchar(15),
    numero char(4)

   );

   insert into ENDERECO(id_endereco, rua, bairro, cidade, estado, numero)
   values
   (7, 'Travessa Santoro', 'Felipe Camarão', 'Natal','RN', '5432')
   --(6, 'Paulistana', 'Nova Rio', 'Nitéroi', 'RJ', '4356')
   --(5, 'Itapuruçu', 'Nova ST', 'Santa RT', 'SC', '5678')
   --(4, 'São Bernardo', 'São Campos', 'São José', 'SP', '6545')

   select * from ENDERECO;


--Criando a tabela senac
 create table SENAC(
   id_senac char(7) primary key,
   unidade varchar(20)UNIQUE,
   nome varchar(40),
   cnpj char(14),
   telefone char(11),
   email varchar(30)UNIQUE,
   id_endereco char(7),
   cursos char(25),
   site varchar(20)
   foreign key(id_endereco) references ENDERECO(id_endereco)
   

  );

  insert into SENAC(id_senac, unidade, nome, cnpj, telefone, email, id_endereco, site)
  values
  ('4536764', 'Senac ZN', 'Senac', '45433567887632', '54789320973', 'seczn@gmail.com', 7 , 'senaczn.com.br')
  select * from SENAC;


 
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

	insert into FUNCIONARIO(id_funcionario, nome, telefone, email, cpf, id_endereco, cargo)
	values
	('4569112', 'Gabriel', '48543954532', 'gabth@gmail.com', '32568890432', '5667554', 'Coordenador')
	select * from FUNCIONARIO;

 --Criando tabela Aluno
	create table ALUNO(
	id_aluno char(7) primary key,
	nome varchar(30),
	cpf char(11) UNIQUE,
	telefone char(11),
	email varchar(15)	UNIQUE,
	id_endereco char(7),
	matricula char(10),
	salario varchar(20)
	foreign key(id_endereco) references ENDERECO(id_endereco)

	 );

	 insert into ALUNO(id_aluno, nome, cpf, telefone, email, id_endereco, matricula, salario)
	 values
	 ('9784535', 'Thomas', '57767899097', '54432346889', 'thosil@gmail.com', '5667554', '4511298', 5000)
	 select * from ALUNO;

--Criando tabela Curso
	create table CURSO(
	id_curso char(7) primary key,
	nome varchar(30),
	inicio_curso datetime,
	fim_curso datetime

	);

	insert into CURSO(id_curso, nome, inicio_curso, fim_curso)
	values
	('5474333', 'Lima', '20230516', '20250615')
	select * from CURSO;


--Criando tabela UC
	create table UC(
	id_uc char(7) primary key,
	nome varchar(30),
	inicio_uc datetime,
	fim_uc datetime

	);

	insert into UC(id_uc, nome, inicio_uc, fim_uc)
	values
	('4543243', 'TI', '20230216', '20240318')
	select * from UC;

--Criando tabela Cursos
	create table CURSOS(
	id_senac char(7),
	id_curso char(7)
	foreign key (id_senac) references SENAC(id_senac),
	foreign key (id_curso) references CURSO(id_curso)

	);

		  
--Criando tabela Contrato
	create table CONTRATO(
	id_senac char(7),
	id_funcionario char(7)
	foreign key(id_senac) references SENAC(id_senac),
	foreign key(id_funcionario) references FUNCIONARIO(id_funcionario)

	);

--Criando  tabela Matricula
	create table MATRICULA(
	id_senac char(7),
	id_aluno char(7)
	foreign key(id_senac) references SENAC(id_senac),
	foreign key(id_aluno) references ALUNO(id_aluno)

	);


--Criando tabela Turma
	create table TURMA(
	id_curso char(7),
	id_uc char(7)
	foreign key(id_curso) references CURSO(id_curso),
	foreign key(id_uc) references UC(id_uc)

	);

	--Criando tabela Professor
	 create table PROFESSOR(
	 id_funcionario char(7)
	  foreign key(id_funcionario) references FUNCIONARIO(id_funcionario)

	 );

	 --Criando tabela Porteiro
	  create table PORTEIRO(
	   id_funcionario char(7)
	   foreign key(id_funcionario) references FUNCIONARIO(id_funcionario)

	   );

	  --Criando tabela ASG
	   create table ASG(
	    id_funcionario char(7)
		foreign key(id_funcionario) references FUNCIONARIO(id_funcionario)

		);

	  --Criando tabela Pedagogo
	   create table PEDAGOGO(
	    id_funcionario char(7)
		foreign key(id_funcionario) references FUNCIONARIO(id_funcionario)

		);

	  --Criando tabela A_PSG
	   create table A_PSG(
	    id_aluno char(7)
		foreign key(id_aluno) references ALUNO(id_aluno)
        
		);

		--Criando tabela A_APRENDIZ
		 create table A_APRENDIZ(
		  id_aluno char(7)
		  foreign key(id_aluno) references ALUNO(id_aluno)

		 );

		 --Criando tabela A_PAGANTE
		  create table A_PAGANTE(
		   id_aluno char(7)
		   foreign key(id_aluno) references ALUNO(id_aluno)

		   );


