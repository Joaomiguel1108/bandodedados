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


insert into diretores
(nome,nacionalidade)
values ('david fincher','americano'),('edward beger','alemão'),('mark webb','americano');
select *from diretores;

insert into filmes
(titulo, genero)
values ('clube da luta','misterio'),('nada de novo no fronte','ação'),('500 dias com ela','romance');
select *from filmes;

insert into sessao
(filme, horario, sala)
values ('clube da luta','20h', 1),('nada de novo no fronte','19h', 2),('500 dias com ela','21h', 3);
select *from sessao;

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

insert into passagem	
(destino,preco )
values ('Oslo','R$4.500,00'),('brasilia','R$1500,00'),('paris','R$5000,00');
select *from passagem;

insert into clientes
(nome, telefone)
values ('joao',16932443),('miguel',16322333),('alexandre',163259839);
select *from clientes;

insert into reservas
(nome, telefone)
values ('joao','Oslo'),('miguel','brasilia'),('alexandre','paris');
select *from reservas;




/**Loja de Informática 
• Produtos: Registre 3 produtos, como Laptop Dell (3000,00), Smartphone 
Samsung (2000,00) e Mouse Logitech (100,00). 
• Fornecedores: Cadastre 3 fornecedores, como Tech Supply, Smart World e 
Electro Solutions. 
• Entradas de Estoque: Adicione 3 entradas de estoque, como 50 unidades de 
Laptop Dell, 30 de Smartphone Samsung e 100 de Mouse Logitech.*/


create database informatica
default character set utf8mb4
default collate = utf8mb4_0900_ai_ci;

create table produtos(
id int not null auto_increment,
produto varchar(30) not null,
preco varchar(30) not null,
primary key(id)
)default charset = utf8mb4;

create table fornecedores(
id int not null auto_increment,
fornecedor varchar(30)not null,
primary key (id)
)default charset = utf8mb4;

create table estoque(
id int not null auto_increment,
unidades int not null,
produto varchar(30) not null,
primary key (id)
)default charset = utf8mb4;

insert into produtos
(produto,preco )
values ('headset q30','R$450,00'),('mouse redragon cobra','R$100,00'),('teclado razer','R$500,00');
select *from produtos;

insert into fornecedores
(fornecedor )
values ('soundcore'),('redragon'),('razer');
select *from fornecedores;

insert into produtos
(unidades, produto )
values (20,'headset q30'),(50,'mouse redragon cobra'),(15,'teclado razer');
select *from produtos;

/*línica Veterinária
• Animais: Registre 3 animais com nome e espécie, como Rex (cachorro), Luna
(gato) e Mel (cachorro).
• Veterinários: Adicione 3 veterinários com nome e especialidade, como Dr. João
Costa (cirurgia), Dra. Mariana Silva (dermatologia) e Dr. Pedro Lima (clínico
geral).
• Consultas: Insira 3 consultas, como Rex com Dr. João, Luna com Dra. Mariana
e Mel com Dr. Pedro, em datas diferentes*/

create database veterinaria
default character set utf8mb4
default collate = utf8mb4_0900_ai_ci;

use veterianaria;

create table animais(
id int not null auto_increment,
Animal varchar(30) not null,
Nome varchar(30) not null,
primary key (id)
)default charset = utf8mb4;

create table veterinarios(
id int not null auto_increment,
Nome varchar(30) not null,
especialidade varchar(30) not null,
primary key (id)

)default charset = utf8mb4;

create table consultas(
id int not null auto_increment,
animal varchar(30) not null,
veteriario varchar(30) not null,
primary key (id)
)default charset = utf8mb4;

insert into animais
(animal,nome)
values ('calopsita','olaf' ),('cachorro','nina'),('gato','kurt');
select *from animais;

insert into consultas
(animal, veterinarios)
values ('dr.pedro','cirurgia' ),('dr. gael','nina'),('dr.luiz','kurt');
select *from consultas;

insert into veterinarios
(nome, especialiadade)
values ('dr.pedro','olaf' ),('dr. gael','dermatologia'),('dr.luiz','clinico geral');
select *from veterinarios;


/*Empresa de Recursos Humanos
• Funcionários: Registre 3 funcionários com nome, cargo e departamento, como
Ana Costa (Gerente, Vendas), Roberto Lima (Assistente, RH) e Mariana Souza
(Analista, TI).
• Departamentos: Adicione 3 departamentos, como Vendas, RH e TI, com o
nome do gerente.
• Avaliações: Insira 3 avaliações de desempenho para os funcionários, com nota e
data.*/


create database recursoshumanos
default character set utf8mb4
default collate = utf8mb4_0900_ai_ci;

use recursoshumanos;

create table funcionarios(
id int not null auto_increment,
nome varchar(30) not null,
cargo varchar(30) not null,
departamento varchar(30) not null,
primary key (id)
)default charset = utf8mb4;

create table departamentos(
id int not null auto_increment,
gerentes varchar(30) not null,
departamento varchar(30) not null,
primary key (id)
)default charset = utf8mb4;

create table avaliacao(
id int not null auto_increment,
nome varchar(30) not null,
nota int not null,
datas varchar(30) not null,
primary key (id)
)default charset = utf8mb4;

insert into funcionarios
(nome, cargo, departamento)
values ('andré','gerente','vendas' ),('kaiky','estagiario','RH'),('roberto','analista','TI');
select *from funcionarios;

insert into departamentos
(gerente, departamento)
values ('andré','vendas' ),('joao','RH'),('murilo','TI');
select *from departamentos;

insert into avaliacao
(nome, nota, datas)
values ('andré',5,'11/07' ),('kaiky',10,'31/07'),('roberto',8,'01/08');
select *from avaliacao;

/*Universidade
• Estudantes: Registre 3 estudantes com nome e curso, como Lucas Almeida
(Engenharia), Fernanda Silva (Medicina) e Roberto Costa (Arquitetura).
• Professores: Adicione 3 professores com nome e departamento, como Prof.
João Santos (Engenharia), Prof. Maria Oliveira (Medicina) e Prof. Carlos Lima
(Arquitetura).
• Disciplinas: Registre 3 disciplinas com nome e professor, como Cálculo com
Prof. João, Anatomia com Prof. Maria e Desenho com Prof. Carlos.*/

create database universidade
default character set utf8mb4
default collate = utf8mb4_0900_ai_ci;


create table alunos(
id int not null auto_increment,
nome varchar(30) not null,
curso varchar(30) not null,
primary key (id)
)default charset = utf8mb4;

create table professores(
id int not null auto_increment,
nome varchar(30) not null,
curso varchar(30) not null,
primary key (id)
)default charset = utf8mb4;

create table diciplinas(
id int not null auto_increment,
diciplina varchar(30) not null,
professor varchar(30) not null,
primary key (id)
)default charset = utf8mb4;

insert into alunos
(nome, curso)
values ('andré','história' ),('kaiky','medicina'),('joao','sistemas de informação');
select *from alunos;

insert into professores
(nome, curso)
values ('marx','história' ),('rinaldo','medicina'),('elimar','sistemas de informação');
select *from professores;

insert into diciplinas
(diciplina, curso)
values ('sociologia','marx' ),('biologia','rinaldo'),('calculo 4','elimar');
select *from diciplinas;


/*Studio Fotográfico
• Clientes: Registre 3 clientes com nome e telefone, como Ana Souza, Roberto
Silva e Juliana Costa.
• Serviços: Adicione 3 serviços fotográficos, como Book fotográfico, Casamento
e Aniversário.
• Agendamentos: Registre 3 agendamentos de clientes, como Ana para Book
fotográfico, Roberto para Casamento e Juliana para Aniversário*/

create database studiofoto
default character set utf8mb4
default collate = utf8mb4_0900_ai_ci;

use studiofoto;

create table clientes(
id int not null auto_increment,
nome varchar(30) not null,
telefone int not null,
primary key (id)
)default charset = utf8mb4;

create table servicos(
id int not null auto_increment,
descricao varchar(30) not null,
primary key(id)
)default charset = utf8mb4;

create table agendamento(
id int not null auto_increment,
cliente varchar(30) not null,
servico varchar(30) not null,
primary key(id)
)default charset = utf8mb4;

insert into cliente
(nome,telefone)
values ('joao',16932443),('miguel',16322333),('alexandre',163259839);
select *from cliente;

insert into servicos
(descricao)
values ('Book fotográfico'),('Book Casamento'),('Book Aniversário');
select *from servicos;

insert into agendamento
(cliente,servico)
values ('Book fotográfico','joao'),('Book Casamento','miguel'),('Book Aniversário','alexandre');
select *from servicos;



