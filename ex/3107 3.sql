/*1. Criação de Banco de Dados Escola 
Criar um novo banco de dados chamado "escola" e confirmar sua criação. 
2. Tabela de Alunos 
Criar uma tabela "alunos" no banco "escola" com campos para ID, nome, data 
de nascimento, série e nota média. 
3. Cadastro de Alunos 
Inserir 5 registros de alunos fictícios na tabela criada. 
4. Tabela de Professores 
Criar uma tabela "professores" no mesmo banco com campos para ID, nome, 
matéria lecionada e data de contratação. 
5. Cadastro de Professores 
Inserir 3 registros de professores, sendo que um deve ser cadastrado sem data 
de contratação específica. */

create database escola
default character set utf8mb4
default collate utf8mb4_0900_ai_ci;

use escola;

create table alunos(
id int not null auto_increment,
nome varchar(30) not null,
nascimento varchar(30) not null,
serie varchar(30) not null,
media int not null,
primary key(id)
)default charset = utf8mb4;


create table professores(
id int not null auto_increment,
nome varchar(30) not null,
materia varchar(30) not null,
contratacao varchar(30) not null,
primary key(id)
)default charset = utf8mb4;

insert into alunos
(nome,nacionalidade)
values ("joao","11/08","2º ano em");
select *from alunos;

insert into professores
(nome,nacionalidade)
values ("lindolfo","geografia","23/04/2015");
select *from professores;

/*6. Banco de Dados E-commerce 
Criar um novo banco chamado "ecommerce" com uma tabela "produtos" 
contendo informações básicas de produtos. 
7. Cadastro de Produtos 
Popular a tabela de produtos com 8 itens diferentes, variando preços e 
quantidades em estoque. 
8. Tabela de Pedidos com Relacionamento 
Criar uma tabela "pedidos" que se relacione com "produtos" através de chave 
estrangeira. 
9. Registro de Pedidos 
Inserir 5 pedidos na tabela, garantindo que os produtos referenciados existam. 
.*/

create database ecomerce
default character set utf8mb4
default collate utf8mb4_0900_ai_ci;

use ecomerce;

create table produtos(
id int not null auto_increment,
produto varchar(30) not null,
preco varchar(30) not null,
estoque int not null,
primary key(id)
)default charset = utf8mb4;

create table pedidos(
id int not null auto_increment,
produto varchar(30) not null,
quantidade int not null,
primary key(id)
)default charset = utf8mb4;

insert into produtos
(produto,preco,estoque)
values ("headset sound core q30","R$260,32",72);
select *from pedidos;

insert into pedidos
(produto, quantidade)
values ("headset sound core q30",2);
select *from pedidos;


/*10. Sistema Completo de Biblioteca 
Criar um banco "biblioteca" com três tabelas relacionadas: livros, usuários e 
empréstimos, com todos os campos necessários para um sistema básico*/

create database biblioteca
default character set utf8mb4
default collate utf8mb4_0900_ai_ci;

use biblioteca;

create table livros(
id int not null auto_increment,
titulo varchar(30),
autor varchar (30),
primary key(id)
)default charset = utf8mb4;

create table autores(
nome varchar(30),
nacionalidade varchar(30),
primary key(id)
)default charset = utf8mb4;

create table emprestimos(
emprestimos int,
livro varchar(30),
usuario varchar(30),
data_emprestimo int,
primary key(id)
)default charset = utf8mb4;




