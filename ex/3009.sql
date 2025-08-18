/*•  Cinema 
• Diretores: Insira 3 diretores com o nome e nacionalidade, como Christopher 
Nolan (britânico), Greta Gerwig (americana) e Bong Joon-ho (sul-coreano). 
• Filmes: Registre 3 filmes com título, gênero, duração e o diretor. Exemplos: 
"Oppenheimer" (drama, 180 min), "Barbie" (comédia, 120 min) e "Parasita" 
(suspense, 132 min). 
• Sessões: Adicione 3 sessões de filmes com horário e sala. Exemplos: 
"Oppenheimer" na Sala 1 às 19h, "Barbie" na Sala 2 às 20h, e "Parasita" na Sala 
3 às 21:30h. */

create database cinema
default character set utf8mb4
default collate utf8mb4_0900_ai_ci;

use cinema;

create table diretores(
id int not null auto_increment,
nome varchar(30) not null,
nacionalidade varchar(30) not null,
primary key(id)
)default charset = utf8mb4;


create table filmes(
id int not null auto_increment,
titulo varchar(30) not null,
genero varchar(30) not null,
duracao varchar(30) not null,
diretor varchar(30) not null,
primary key(id)
)default charset = utf8mb4;

create table sessao(
id int not null auto_increment,
filme varchar(30) not null,
horario varchar(30) not null,
sala int,
primary key(id)
)default charset = utf8mb4;

drop table sessao;

insert into filmes
(titulo, genero, duracao,diretor)
values ('a','a','a','a');

select *from filmes;


drop database restaurante;



/*  Restaurante 
• Pratos: Cadastre 3 pratos, como "Feijoada" (40,00), "Lasanha" (35,00) e 
"Brigadeiro" (10,00). 
• Clientes: Insira 3 clientes com nome e telefone, como Ana Costa, Roberto Lima 
e Marcela Pereira. 
• Pedidos: Registre 3 pedidos com prato e cliente, como Ana pedindo Feijoada, 
Roberto Lasanha e Marcela Brigadeiro. */

create database restaurante
default character set utf8mb4
default collate = utf8mb4_0900_ai_ci;

use restaurante;

create table pratos(
id int not null auto_increment,
nome varchar(30) not null,
preco float not null,
primary key(id)
)default charset = utf8mb4;

create table clientes(
id int not null auto_increment,
nome varchar(30) not null,
telefone int not null,
primary key(id)
)default charset = utf8mb4;

create table pedidos(
id int not null auto_increment,
prato varchar(30) not null,
cliente varchar(30) not null,
primary key (id)
)default charset = utf8mb4;

insert into pratos
(nome, preco)
values ('carne',40),('arroz',20),('feijão',15);
select *from pratos;

insert into cliente
(nome,telefone)
values ('joao',16932443),('miguel',16322333),('alexandre',163259839);
select *from cliente;

insert into pedidos
(prato, cliente)
values ('joao','carne'),('miguel','arroz'),('alexandre','feijão');

select *from pedidos;



/* Escola de Música 
• Alunos: Registre 3 alunos com nome e instrumento, como Lucas Almeida 
(guitarra), Fernanda Silva (piano) e Ricardo Costa (bateria). 
• Professores: Adicione 3 professores com nome e instrumento, como Maria 
Souza (guitarra), João Santos (piano) e Carlos Oliveira (bateria). 
• Aulas: Insira 3 aulas com aluno, professor e data, como Lucas com Maria em 
28/07, Fernanda com João em 28/07, e Ricardo com Carlos em 28/07. */

create database musica
default character set utf8mb4
default collate = utf8mb4_0900_ai_ci;

use musica;

create table alunos(
id int not null auto_increment,
nome varchar(30) not null,
instrumento varchar(30) not null,
primary key (id)
)default charset = utf8mb4;

create table professoes(
id int not null auto_increment,
nome varchar(30) not null,
instrumento varchar(30) not null,
primary key (id)
)default charset = utf8mb4;

create table aulas(
id int not null auto_increment,
aluno varchar(30) not null,
data_aula varchar(30) not null,
professor varchar(30) not null,
primary key(id)
)default charset = utf8mb4;

insert into alunos
(nome, instrumento)
values ('joao','guitarra'),('jair','bateria'),('luiz','baixo');
select *from alunos;

insert into professoes
(nome, instrumento)
values ('leonardo','guitarra'),('caue','bateria'),('rinaldo','baixo');
select *from professores;

insert into aulas
(aluno, data_aula, professor)
values ('joao','30/07', 'leonardo'),('jair','11/08','caue'),('luiz','22/07','rinaldo');
select *from aulas;



/*•  Oficina Mecânica 
• Clientes: Registre 3 clientes com nome e telefone, como Carlos Silva, Juliana 
Oliveira e Ricardo Souza. 
• Veículos: Insira 3 veículos para os clientes, como um Fusca 1995 para Carlos, 
um Civic 2020 para Juliana e um Celta 2010 para Ricardo. 
• Serviços: Adicione 3 serviços, como troca de óleo para o Fusca, troca de pneus 
para o Civic e alinhamento para o Celta.*/

create database mecanica
default character set utf8mb4
default collate = utf8mb4_0900_ai_ci;

use mecanica;

create table clientes(
id int not null auto_increment,
nome varchar(30) not null,
telefone int not null,
primary key(id)
)default charset = utf8mb4;

create table veiculos(
id int not null auto_increment,
modelo varchar(30) not null,
ano_carro int not null,
cliente varchar(30) not null,
primary key (id)
)default charset = utf8mb4;

create table servicos(
id int not null auto_increment,
descricao varchar(30) not null,
modelo varchar(30) not null,
primary key(id)
)default charset = utf8mb4;

insert into clientes
(nome, telefone)
values ('joao',16932443),('miguel',16322333),('alexandre',163259839);
select *from clientes;

insert into veiculos
(modelo, ano_carro, cliente)
values ('prisma',2014,'joao'),('bol',2020,'miguel'),('fusca',1980,'alexandre');
select *from veiculos;

insert into servicos
(descricao, modelo)
values ('prima','trocar lanterna'),('gol','trocar oleo'),('fusca','pintar de azul');
select *from servico;







/*  Agência de Viagem 
• Destinos: Registre 3 destinos turísticos, como Paris (5000,00), Nova York 
(4000,00) e Tokyo (6000,00). 
• Clientes: Insira 3 clientes com nome e telefone, como Beatriz Lima, Carlos 
Marques e Patrícia Rocha. 
• Reservas: Registre 3 reservas, como Beatriz para Paris, Carlos para Nova York 
e Patrícia para Tokyo. */

create database viagem
default character set utf8mb4
default collate = utf8mb4_0900_ai_ci;

create table passagem(
id int not null auto_increment,
destino varchar(20) not null,
preco float not null,
primary key(id)
)default charset = utf8mb4;

create table clientes(
id int not null auto_increment,
nome varchar(30) not null,
telefone int not null,
primary key (id)
)default charset = utf8mb4;

create table reservas(
id int not null auto_increment,
cliente varchar(30) not null,
destino varchar(30) not null,
primary key (id)
)default charset = utf8mb4;


/**Loja de Informática 
• Produtos: Registre 3 produtos, como Laptop Dell (3000,00), Smartphone 
Samsung (2000,00) e Mouse Logitech (100,00). 
• Fornecedores: Cadastre 3 fornecedores, como Tech Supply, Smart World e 
Electro Solutions. 
• Entradas de Estoque: Adicione 3 entradas de estoque, como 50 unidades de 
Laptop Dell, 30 de Smartphone Samsung e 100 de Mouse Logitech.*/


