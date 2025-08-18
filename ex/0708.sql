/*Criar Tabela de Pessoas 
o Crie uma tabela chamada pessoas com os seguintes campos: 
▪ id (INT, auto-incremento, chave primária) 
▪ nome (VARCHAR de 50 caracteres) 
▪ idade (INT) 
▪ email (VARCHAR de 100 caracteres) 
▪ profissao (VARCHAR de 30 caracteres) 
2. Adicionar Coluna para Data de Nascimento 
o Após a criação da tabela pessoas, adicione uma nova coluna 
chamada data_nascimento (DATE) na tabela. 
3. Modificar o Tamanho do Campo Nome 
o Modifique a tabela pessoas para que o campo nome tenha 100 
caracteres ao invés de 50. 
4. Alterar Tipo do Campo de Idade 
o Altere o tipo da coluna idade para SMALLINT em vez de INT. 
5. Remover Coluna de Email 
o Remova a coluna email da tabela pessoas. 
6. Adicionar Novo Campo de Endereço 
o Adicione uma coluna chamada endereco (VARCHAR de 150 
caracteres) à tabela pessoas.
Alterar a Ordem das Colunas 
o Altere a posição da coluna profissao para que ela fique depois da 
coluna nome. 
8. Adicionar uma Coluna de Telefone 
o Adicione a coluna telefone (VARCHAR de 20 caracteres) à tabela 
pessoas. 
9. Mudar o Nome da Tabela 
o Renomeie a tabela pessoas para clientes. 
10. Alterar a Coluna de Endereço para VARCHAR(255) 
o Modifique a coluna endereco para aceitar até 255 caracteres. 
11. Adicionar um Campo de Salário 
o Adicione uma coluna chamada salario (DECIMAL de 10,2) à 
tabela clientes. 
12. Modificar a Coluna de Profissão para Ter um Tamanho Máximo de 
50 Caracteres 
o Modifique a coluna profissao da tabela clientes para que tenha 
um tamanho de 50 caracteres, ao invés de 30.*/

create database pessoa
default character set utf8mb4
default collate utf8mb4_0900_ai_ci;

use pessoa;

create table pessoas(
id int not null auto_increment,
nome varchar(50) not null,
email varchar(100) not null,
profissao varchar(100) not null,
idade int not null,
primary key(id)
)default charset = utf8mb4;

alter table pessoas
	add column data_nascimento varchar(30);
    
alter table pessoas
	modify column nome varchar(50);
    
alter table pessoas
	modify column idade smallint;    
    
alter table pessoas
	drop column email;    
    
alter table pessoas
	add column endereco varchar(150);

alter table pessoas
	modify column profissao varchar(100) after nome ;
    
alter table pessoas
	add column telefone varchar(20);    
    
alter table pessoas
	rename to clientes;

alter table pessoas
	modify column endereco varchar(255);    
    
alter table pessoas
	add column salario float;


alter table pessoas
	modify column profissao varchar(30);  