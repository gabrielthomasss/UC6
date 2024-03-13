-- Criar meu banco de dados
create database biblioteca
-- Usar o banco criado
use biblioteca;
-- Criando a tabela Cliente
create table CLIENTE(
  cod_cliente char(7) primary key,
  nome nvarchar(20),
  email nvarchar(30),
  telefone_1 char(11),
  telefone_2 char(11),
  rua nvarchar(20),
  bairro nvarchar(20),
  cidade nvarchar(15),
  estado nvarchar(15)
  foreign key (cod_cliente) references CLIENTE(cod_cliente)
  
);

insert into CLIENTE(cod_cliente, nome, email, telefone_1, telefone_2, rua, bairro, cidade, estado)
values
('547578' , 'Gabriel' , 'gab@gmail.com' , '58688674835' , '74932292457' , 'Massa Bruta' , 'Potengi' , 'Natal' , 'RN')
('548568' , 'Thomas' , 'ins@gmail.com' , '47075437652' , '74932292412' , 'Touro' , 'Potengi' , 'Natal' , 'RN')
--Consultar registros da tabela CLIENTE
select * from CLIENTE;



-- Criando tabela Pessoa Fisica
create table PESSOA_FISICA(
cod_cliente char(7)primary key,
rg char(9),
cpf char(11)

);

insert into PESSOA_FISICA(cod_cliente, rg , cpf)
values
('547578' , '367546852' , '24573384757') --pf
('548568' , '753864868' , '43674737357') --pj
select * from PESSOA_FISICA;

-- Criando tabela Pessoa Juridica
create table PESSOA_JURIDICA(
cod_cliente char(7)primary key,
cnpj char(14),
ie char(9)
);

insert into PESSOA_JURIDICA(cod_cliente, cnpj, ie)
values
('547578' , '58438593493235' , '636864381')
('548568' , '57978675756757' , '464746857')
select * from PESSOA_JURIDICA;


--	Criando tabela Pedido
create table PEDIDO(
cod_pedido char(7) primary key,
data datetime,
valor_pedido numeric(5,2)
 
);

insert into PEDIDO(cod_pedido, data, valor_pedido)
values
('3467858' , '20230216' , 5.8)
('5633788' , '20240215' , 2.9)
select * from PEDIDO;

-- Criando tabela Item Pedido
create table ITEM_PEDIDO(
cod_pedido char(7)primary key,
cod_livro char(7),
qtde_pedido int,
valor_item numeric(5,2)

);

insert into ITEM_PEDIDO(cod_pedido, cod_livro, qtde_pedido, valor_item)
values
('5633788' , '5748383' , '10' , 2.9)
('3467858' , '5890086' , '15' , 4.4)
select * from ITEM_PEDIDO;

-- Criando tabela Livro
create table LIVRO(
cod_livro char(7)primary key,
cod_editora char(7),
valor numeric(5,2),
ano_publicacao datetime,
categoria bit,
titulo nvarchar(20),
autor nvarchar(30)

);

insert into LIVRO(cod_livro, cod_editora, valor, ano_publicacao, categoria, titulo, autor)
values
('5748383' , '9753242' , 2.5 , '20230516' , 'Drama' , 'Tragico' , 'Antônio')
--('5890086' , '9743142', 3.5 , '20240316' , 'Ação' , 'Tiro' , 'Zé')
select * from LIVRO;

-- Criando tabela Estoque
create table ESTOQUE(
cod_estoque char(7),
cod_editora char(7),
cod_livro char(7),
qtde int
);

insert into ESTOQUE(cod_estoque, cod_editora, cod_livro, qtde)
values
('5647338' , '9753242' , '5748383' , '20')
('5758986' , '9743142' , '5890086' , '25')
select * from ESTOQUE;


-- Criando tabela Editora
create table EDITORA(
cod_editora char(7) primary key,
telefone_1 char(11),
telefone_2 char(11),
nome_contato nvarchar(20),
email nvarchar(30)
foreign key (cod_editora) references EDITORA(cod_editora)
);

insert into EDITORA(cod_editora, telefone_1, telefone_2, nome_contato, email)
values
('9753242' , '64656567432' , '48096534232' , 'Editora' , 'edit@gmail.com')
('9743142' , '64656567432' , '48096534232' , 'Editora' , 'edit@gmail.com')





--Alterar os nomes das tabelas 
exec sp_rename 'usuario', 'USUARIO';


-- Alterar nome dos campos ou atributos
exec sp_rename '' , '';


--Alterando registros
update Cliente
set Cliente = 'Gabriel'
where cpf = '5556949288';