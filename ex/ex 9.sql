create database escola
default character set utf8mb4
default collate utf8mb4_0900_ai_ci;

use escola;

create table if not exists alunos(
id int not null auto_increment,
nome varchar(30) not null unique,
idade int unsigned,
turma varchar(30) not null unique,
primary key(id)
) default charset = utf8mb4;


insert into alunos
(nome,idade,turma)
values ('Daniel','14','8B'),('Ana','14','8A'),('Bruno','15','9B'),('Carla','13','7A');


/*2. Liste apenas os nomes dos alunos. 
3. Liste os nomes e idades dos alunos. 
4. Liste o nome e a turma de todos os alunos. 
5. Liste a idade de todos os alunos. 
6. Selecione os dados da coluna turma. 
7. Mostre todos os alunos com as colunas id, nome, e turma. 
8. Selecione todos os campos da tabela alunos usando o asterisco (*). 
9. Mostre o nome de todos os alunos sem repetir (use DISTINCT). 
10. Liste os nomes dos alunos e os ordene por ordem alfabética. �*/

select*from alunos;

select nome from alunos;

select nome,idade from alunos;

select nome,turma from alunos;

select idade from alunos;

select turma from alunos;

select idade,nome,turma from alunos;

select*from alunos;

select distinct nome alunos;
 
SELECT nome FROM alunos ORDER BY nome ASC; 







create table if not exists professores(
id int not null auto_increment,
nome varchar(30) not null unique,
materia varchar(30) not null unique,
primary key(id)
) default charset = utf8mb4;


insert into professores
(nome,idade,turma)
values ('Joana','matemática'),('Marcos','Historia'),('Fernanda','Geografia');
select*from professores;

/*1. Mostre todos os dados da tabela professores. 
12. Liste apenas os nomes dos professores. 
13. Liste os nomes e as matérias que cada professor leciona. 
14. Selecione o nome do professor e a coluna id. 
15. Mostre a matéria de todos os professores. 
16. Use o * para mostrar todos os dados dos professores.*/


select*from professores;

select nome from professores;

select nome,materias from professores;

select nome,id from professores;

select materia from professores;

select*from professores;




















