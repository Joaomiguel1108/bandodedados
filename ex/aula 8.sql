/*Na criação das tabelas verifique os tipos corretos, not null, unique e 
unisgned 
3) Crie uma tabela vendas com colunas para id, id_cliente, id_produto e 
data_venda. 
4) Crie uma tabela funcionarios com id, nome, cargo e salario. 
5) Crie uma tabela departamentos com id e nome. 
6) Crie uma tabela fornecedores com id, nome, cnpj e telefone. 
7) Crie uma tabela categorias com id e nome_categoria. 
8) Crie uma tabela livros com id, titulo, autor e ano_publicacao. 
9) Crie uma tabela alunos com id, nome, idade e email. 
10) Crie uma tabela cursos com id, nome e carga_horaria.*/

create database exercicio
default character set utf8mb4
default collate utf8mb4_0900_ai_ci;

use exercicio;

create table if not exists clientes(
id int not null auto_increment,
nome varchar(30) not null unique,
email varchar(30) not null unique,
primary key(id)
) default charset = utf8mb4;


create table if not exists produtos(
id int not null auto_increment,
nome varchar(30) not null unique,
preco int unsigned,
estoque int unsigned,
primary key(id)
) default charset = utf8mb4;


create table if not exists vendas(
id int not null auto_increment,
id_cliente int unsigned,
id_produto int unsigned,
data_venda int unsigned,
primary key(id)
) default charset = utf8mb4;

create table if not exists funcionarios(
id int not null auto_increment,
nome varchar(30) not null unique,
cargo varchar(30) not null unique,
salario decimal(10,2) unsigned,
primary key(id)
) default charset = utf8mb4;

create table if not exists departamentos(
id int not null auto_increment,
nome varchar(30) not null unique,
primary key(id)
) default charset = utf8mb4;

create table if not exists fornecedores(
id int not null auto_increment,
nome varchar(30) not null unique,
cnpj varchar(30) not null unique,
telefone int unsigned,
primary key(id)
) default charset = utf8mb4;

create table if not exists categorias(
id int not null auto_increment,
nome_categoria varchar(30) not null unique,
primary key(id)
) default charset = utf8mb4;

create table if not exists livros(
id int not null auto_increment,
titulo varchar(30) not null unique,
autor varchar(30) not null unique,
ano_publicacao year default '2025',
primary key(id)
) default charset = utf8mb4;

create table if not exists alunos(
id int not null auto_increment,
nome varchar(30) not null unique,
idade int unsigned,
email varchar(30) not null unique,
primary key(id)
) default charset = utf8mb4;

create table if not exists cursos(
id int not null auto_increment,
nome varchar(30) not null unique,
carga_horaria int unsigned,
primary key(id)
) default charset = utf8mb4;

create table if not exists matriculas(
id int not null auto_increment,
id_aluno int unsigned,
id_curso int unsigned,
primary key(id)
) default charset = utf8mb4;

create table if not exists enderecos(
id int not null auto_increment,
rua varchar(30) not null unique,
numero int unsigned,
cidade varchar(30) not null unique,
estado varchar(30) not null unique,
primary key(id)
) default charset = utf8mb4;

create table if not exists estoque(
id int not null auto_increment,
id_produto varchar(30) not null unique,
quantidade int unsigned,
data_entrada varchar(30) not null unique,
primary key(id)
) default charset = utf8mb4;

create table if not exists usuarios(
id int not null auto_increment,
usuario varchar(30) not null unique,
senha varchar(30) not null unique,
nivel_acesso varchar(30) not null unique,
primary key(id)
) default charset = utf8mb4;

create table if not exists comentarios(
id int not null auto_increment,
id_usuario varchar(30) not null unique,
mensagem text,
dataa varchar(30) not null unique,
primary key(id)
) default charset = utf8mb4;

create table if not exists avaliacoes(
id int not null auto_increment,
id_produto varchar(30) not null unique,
nota int unsigned,
comentario varchar(30) not null unique,
primary key(id)
) default charset = utf8mb4;

create table if not exists filmes(
id int not null auto_increment,
titulo varchar(30) not null unique,
diretor varchar(30) not null unique,
genero varchar(30) not null unique,
ano year default '2025',
primary key(id)
) default charset = utf8mb4;

create table if not exists locacoes(
id int not null auto_increment,
id_cliente int unsigned,
id_filme int unsigned,
data_locacao varchar(30) not null unique,
primary key(id)
) default charset = utf8mb4;

create table if not exists turmas(
id int not null auto_increment,
nome_turmas varchar(30) not null unique,
turno varchar(30) not null unique,
primary key(id)
) default charset = utf8mb4;

create table if not exists diciplinas(
id int not null auto_increment,
nome_diciplina varchar(30) not null unique,
semestre int unsigned,
primary key(id)
) default charset = utf8mb4;

create table if not exists professores(
id int not null auto_increment,
nome varchar(30) not null unique,
formacao varchar(30) not null unique,
telefone varchar(30) not null unique,
primary key(id)
) default charset = utf8mb4;

create table if not exists agenda(
id int not null auto_increment,
compromisso varchar(30) not null unique,
dataa varchar(30) not null unique,
hora int unsigned,
primary key(id)
) default charset = utf8mb4;

create table if not exists mensagens(
id int not null auto_increment,
remetente varchar(30) not null unique,
destinatario varchar(30) not null unique,
conteudo text,
primary key(id)
) default charset = utf8mb4;

create table if not exists chamados(
id int not null auto_increment,
titulo varchar(30) not null unique,
descricao text,
statuss varchar(30) not null unique,
data_abertura varchar(30) not null unique,
primary key(id)
) default charset = utf8mb4;


truncate table clientes;
truncate table produtos;
truncate table vendas;
truncate table funcionarios;
truncate table departamentos;
truncate table fornecedores;
truncate table categorias;
truncate table livros;
truncate table alunos;
truncate table cursos;
truncate table matriculas;
truncate table pagamentos;
truncate table enderecos;
truncate table estoque;
truncate table usuarios;
truncate table comentarios;
truncate table avaliacoes;
truncate table filmes;
truncate table locacoes;
truncate table turmas;
truncate table disciplinas;
truncate table professores;
truncate table agenda;
truncate table mensagens;
truncate table chamados;


