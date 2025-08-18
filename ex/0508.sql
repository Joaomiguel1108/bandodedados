/*. Crie a tabela salas (id, nome, bloco) e adicione a coluna andar. 
2. Crie a tabela salas (id, nome, bloco, andar) e adicione a coluna tipo. 
3. Crie a tabela salas (id, nome, bloco, andar, tipo) e remova a coluna tipo. */
create database loja
default character set utf8mb4
default collate utf8mb4_0900_ai_ci;

use loja;

create table sala(
id int not null auto_increment,
nome varchar(30) not null,
bloco varchar(30) not null,
primary key(id)
)default charset = utf8mb4;

alter table sala
	add column andar varchar(30);

alter table sala
	add column tipo varchar(30);
    
alter table sala
	drop column tipo;   	
    
    
/*. Crie a tabela livros (id, titulo, autor) e adicione a coluna ano. 
5. Crie a tabela livros (id, titulo, autor, ano) e adicione a coluna editora. 
6. Crie a tabela livros (id, titulo, autor, ano, editora) e remova a coluna ano. */

create table livros(
id int not null auto_increment,
titulo varchar(30) not null,
autor varchar(30) not null,
primary key(id)
)default charset = utf8mb4;

alter table livros
	add column ano varchar(30);

alter table livros
	add column editora varchar(30);
    
alter table livros
	drop column ano;   
    
    
/*7. Crie a tabela bibliotecas (id, nome, local) e adicione a coluna responsavel. 
8. Crie a tabela bibliotecas (id, nome, local, responsavel) e remova a coluna 
responsavel.*/

create table bibliotecas(
id int not null auto_increment,
nome varchar(30) not null,
locall varchar(30) not null,
primary key(id)
)default charset = utf8mb4;

alter table bibiotecas
	add column responsavel varchar(30);

alter table bibliotecas
	drop column responsavel;


/*9. Crie a tabela eventos (id, nome, data) e adicione a coluna local. 
10. Crie a tabela eventos (id, nome, data, local) e remova a coluna local.*/

create table eventos(
id int not null auto_increment,
nome varchar(30) not null,
dataa varchar(30) not null,
primary key(id)
)default charset = utf8mb4;

alter table eventos
	add column locall varchar(30);

alter table eventos
	drop column locall;
/*11. Crie a tabela usuarios (id, login, senha) e adicione a coluna perfil. 
12. Crie a tabela usuarios (id, login, senha, perfil) e remova a coluna perfil. 
13. Crie a tabela pedidos (id, cliente_id, data) e adicione a coluna status. 
14. Crie a tabela pedidos (id, cliente_id, data, status) e adicione a coluna 
valor_total. */
    
create table usuarios(
id int not null auto_increment,
login varchar(30) not null,
senha varchar(30) not null,
primary key(id)
)default charset = utf8mb4;

alter table usuarios
	add column perfil varchar(30);

alter table usuarios
	drop column perfil;
    
create table pedidos(
id int not null auto_increment,
cliente_id varchar(30) not null,
dataa varchar(30) not null,
primary key(id)
)default charset = utf8mb4;

alter table pedidos
	add column statuss varchar(30);

alter table pedidos
	add column valor_total varchar(30);
    
alter table pedidos
	drop column statuss;
    
/*16. Crie a tabela estoque (id, produto_id, quantidade) e adicione a coluna 
validade. 
17. Crie a tabela estoque (id, produto_id, quantidade, validade) e remova a 
coluna validade. 
18. Crie a tabela fornecedores (id, nome, contato) e adicione a coluna cnpj. 
19. Crie a tabela fornecedores (id, nome, contato, cnpj) e remova a coluna 
contato.*/

create table estoque(
id int not null auto_increment,
produto_id varchar(30) not null,
quantidade varchar(30) not null,
primary key(id)
)default charset = utf8mb4;

alter table estoque
	add column validade varchar(30);

alter table estoque
	drop column validade;


create table fornecedores(
id int not null auto_increment,
nome varchar(30) not null,
contato varchar(30) not null,
primary key(id)
)default charset = utf8mb4;

alter table fornecedores
	add column cnpj varchar(30);

alter table fornecedores
	drop column contato;

/*20. Crie a tabela pagamentos (id, pedido_id, valor) e adicione a coluna 
data_pagamento*/
    
create table pagamentos(
id int not null auto_increment,
pedido_id varchar(30) not null,
valor varchar(30) not null,
primary key(id)
)default charset = utf8mb4;

alter table pagamento
	add column data_pagamento varchar(30);


