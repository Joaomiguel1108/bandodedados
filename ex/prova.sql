create database Universidade
default character set utf8mb4
default collate utf8mb4_0900_ai_ci;

use Universidade;

create table estudantes(
	id int not null auto_increment,
	nome varchar(30) not null,
    data_nascimento date,
    genero enum('M','F'),
    peso decimal(5,2),
    altura decimal (3,2),
    pais_origem varchar(20) default 'Brasil',
    primary key (id)

)default charset = utf8mb4
collate = utf8mb4_general_ci;

create table programas(
	id int not null auto_increment,
	titulo varchar(30) not null unique,
    descricao text,
    duracao int,
    num_aulas int,
    ano_oferta year default '2025',
    primary key (id)


)default charset = utf8mb4
collate = utf8mb4_general_ci;
drop table programas;
create table inscricoes(
	id int not null auto_increment,
	id_estudante varchar(30) not null,
    id_programa varchar(30) not null,
    data_inscricao date,
    primary key (id)


)default charset = utf8mb4
collate = utf8mb4_general_ci;

set sql_safe_updates = 0;


/*1. Comando INSERT INTO 
Este comando é usado para inserir novos registros nas tabelas do banco de 
dados. 
• Na tabela estudantes, você usaria o INSERT INTO para adicionar novos 
estudantes ao sistema, fornecendo dados como nome, data de 
nascimento, gênero, peso, altura e país de origem. O banco geraria 
automaticamente o ID do estudante. 
• Na tabela programas, o comando INSERT INTO é utilizado para 
adicionar novos programas acadêmicos. Cada programa terá seu próprio 
título, descrição, duração, número de aulas e ano de oferecimento. 
• Na tabela inscricoes, o INSERT INTO é usado para registrar a inscrição 
de um estudante em um programa acadêmico, fornecendo o ID do 
estudante, o ID do programa e a data da inscrição. O ID da inscrição é 
gerado automaticamente. */

insert into estudantes (nome, data_nascimento, genero, peso, altura, pais_origem) values
('Ana Silva', '1990-05-15', 'F', 60.5, 1.65, 'Brasil'),
('Carlos Souza', '1985-10-22', 'M', 75.0, 1.80, 'Brasil'),
('Beatriz Rocha', '2000-03-09', 'F', 55.2, 1.70, 'Argentina'),
('Daniel Lima', '1992-07-12', 'M', 82.3, 1.75, 'Brasil'),
('Eduarda Pires', '1998-11-30', 'F', 67.8, 1.68, 'Portugal');

insert into programas (titulo, descricao, duracao, num_aulas, ano_oferta) values 
('Python Básico', 'Curso introdutório de Python', 40, 20, 2025), 
('Python Avançado', 'Técnicas avançadas de Python', 60, 30, 2025), 
('Java para Iniciantes', 'Fundamentos da linguagem Java', 50, 25, 2025), 
('Java Avançado', 'Java avançado e programação orientada a objetos', 70, 35, 
2025), 
('HTML e CSS', 'Criação de páginas web estáticas', 30, 15, 2025), 
('JavaScript Básico', 'Introdução à linguagem JavaScript', 50, 20, 2025);


insert into inscricoes (id_estudante ,id_programa,data_inscricao)values
('Daniel Lima','Java para Iniciantes','2024-08-11'),
('Ana Silva','Java Avançado','2021-3-5'),
('Carlos Souza','JavaScript Básico','2023-5-9'),
('Eduarda Pires','Python Avançado','2025-3-5'),
('Beatriz Rocha','HTML e CSS','2020-11-08');


/*2. Comando UPDATE 
O UPDATE é usado para atualizar os dados de registros existentes nas tabelas. 
• Na tabela estudantes, você poderia usar o UPDATE para alterar as 
informações de um estudante, como peso, altura, profissão ou país de 
origem. Por exemplo, se o estudante mudar de país, você usaria o 
UPDATE para alterar o campo pais_origem. 
• Na tabela programas, o UPDATE poderia ser utilizado para alterar o 
título do programa, a duração ou o número de aulas. Isso seria útil se o 
programa sofrer alguma alteração, como uma mudança no título ou uma 
atualização na duração. 
• Na tabela inscricoes, você pode usar o UPDATE para alterar a data da 
inscrição ou fazer qualquer outra alteração relacionada à inscrição de um 
estudante em um programa.*/

update estudantes
set pais_origem = 'Portugal'
where nome = 'Ana Silva';

update estudantes
set pais_origem = 'Japão'
where nome = 'Carlos Souza';

update estudantes
set pais_origem = 'Noruega'
where nome = 'Daniel Lima';

update estudantes
set pais_origem = 'Brasil'
where nome = 'Eduarda Pires';

update estudantes
set pais_origem = 'Brasil'
where nome = 'Beatriz Rocha';

/**/

update programas
set titulo = 'Python'
where titulo = 'Python Básico';

update programas
set duracao = 50
where titulo = 'Python Avançado';

update programas
set num_aulas = 25
where titulo = 'HTML e CSS';

update programas
set num_aulas = 50
where titulo = 'Java Avançado';

update programas
set titulo = 'Java'
where titulo = 'Java para Iniciantes';



/**/


update inscricoes
set data_inscricao = '2024-11-08'
where nome = 'Daniel Lima';

update inscricoes
set data_inscricao = '2023-11-08'
where nome = 'Ana Silva';

update inscricoes
set data_inscricao = '2022-11-08'
where nome = 'Beatriz Rocha';

update inscricoes
set data_inscricao = '2019-11-08'
where nome = 'Eduarda Pires';

update inscricoes
set data_inscricao = '2018-11-08'
where nome = 'Carlos Souza';






/*3. Comando SELECT 
O SELECT é utilizado para consultar os dados das tabelas. 
• Na tabela estudantes, o SELECT permite visualizar os dados de todos 
os estudantes ou filtrar os estudantes por critérios como nome, gênero ou 
país de origem. Por exemplo, um SELECT simples poderia mostrar todos 
os estudantes da universidade, e um SELECT com WHERE poderia listar 
os estudantes que nasceram após 2000 ou que são de determinado país. 
• Na tabela programas, o SELECT permite consultar quais programas 
acadêmicos estão disponíveis. Você poderia usá-lo para listar todos os 
programas oferecidos no ano de 2025 ou para mostrar os programas com 
uma duração superior a um determinado valor. 
• Na tabela inscricoes, um SELECT pode ser utilizado para ver quais 
estudantes estão inscritos em quais programas, mostrando as relações 
entre as tabelas estudantes e programas. */

select*from estudantes;

select*from estudantes
where data_nascimento > '2000-1-1';

select*from estudantes
where pais_origem = 'Brasil';

select*from estudantes
where altura >= 1.80;

select*from estudantes
where peso < 70;

/**/

select*from programas
where ano_oferta < '2025-1-1';

select*from programas
where duracao > 30;

select*from programas
where num_aulas <= 20;

select*from programas
where duracao = 30;

select*from programas
where duracao < 50;

/**/

select*from inscricoes;

select*from inscricoes
where id_estudante = 'Daniel Lima';

select*from inscricoes
where id_estudante = 'Ana Silva';

select*from inscricoes
where id_estudante = 'Beatriz Rocha';

select*from inscricoes
where id_estudante = 'Eduarda Pires';

select*from inscricoes
where id_estudante = 'Carlos Souza';

/*. Comando DELETE 
• Na tabela estudantes, o DELETE é utilizado para remover um estudante 
do sistema. Para isso, é necessário identificar o estudante que será 
excluído, geralmente usando o ID do estudante. Uma vez executado o 
comando, o estudante será permanentemente removido da base de 
dados. 
• Na tabela programas, o DELETE é usado para excluir um programa 
acadêmico. A exclusão deve ser feita com base no ID do programa. Caso 
um programa seja deletado, ele será removido da base de dados, o que 
pode afetar as inscrições associadas a ele. 
• Na tabela inscricoes, o DELETE serve para remover a inscrição de um 
estudante em um programa. Para isso, é necessário identificar a inscrição 
pelo ID da inscrição ou pelos IDs de estudante e programa. A exclusão 
remove o vínculo entre o estudante e o programa. */

delete from estudantes
	where nome ='Ana Silva';

delete from estudantes
	where nome ='Carlos Souza';

delete from estudantes
	where nome ='Beatriz Rocha';
    
delete from estudantes
	where nome ='Daniel Lima';
    
delete from estudantes
	where nome ='Eduarda Pires';
    
/**/

delete from programas
	where nome ='Python Básico';

delete from programas
	where nome ='Python Avançado';
    
delete from programas
	where nome ='JavaScript Básico';
    
delete from programas
	where nome ='Java para Iniciantes';
    
delete from programas
	where nome ='Java Avançado';


/**/

delete from inscricoes
	where nome ='Ana Silva';

delete from inscricoes
	where nome ='Eduarda Pires';
    
delete from inscricoes
	where nome ='Carlos Souza';

delete from inscricoes
	where nome ='Beatriz Rocha';
    
delete from inscricoes
	where nome ='Daniel Lima';
    