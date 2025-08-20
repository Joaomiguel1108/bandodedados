create database iscola
default character set utf8mb4
default collate utf8mb4_general_ci;

use iscola;

create table alunos (
    id int primary key auto_increment,
    nome varchar(30),
    nascimento int,
    sexo varchar(2),
    peso varchar(30),
    altura float,
    nacionalidade varchar(30) default 'brasil'
);

create table cursos (
    id int primary key auto_increment,
    nome varchar(30),
    descricao varchar(50),
    carga varchar(30),
    totaulas int,
    ano year default 2025
);

drop table cursos;

create table matriculas (
    id int primary key auto_increment,
    idaluno int,
    idcurso int,
    datamatricula varchar(30)
);

set sql_safe_updates = 0;

insert into alunos (nome, nascimento, sexo, peso, altura, nacionalidade) values
('ana souza', 1998, 'f', '55kg', 1.65, 'brasileira'),
('carlos lima', 2000, 'm', '72kg', 1.78, 'brasileiro'),
('beatriz costa', 1995, 'f', '60kg', 1.70, 'portuguesa'),
('joão mendes', 1999, 'm', '80kg', 1.82, 'brasileiro'),
('lúcia fernandes', 2001, 'f', '58kg', 1.60, 'angolana');

INSERT INTO cursos (nome, descricao, carga, totaulas, ano) VALUES
('Python Básico', 'Curso introdutório de Python', 40, 20, 2025),
('Python Avançado', 'Técnicas avançadas de Python', 60, 30, 2025),
('Java para Iniciantes', 'Fundamentos da linguagem Java', 50, 25, 2025),
('Java Avançado', 'Java avançado e programação orientada a objetos', 70, 35, 2025),
('HTML e CSS', 'Criação de páginas web estáticas', 30, 15, 2025),
('JavaScript Básico', 'Introdução à linguagem JavaScript', 40, 20, 2025),
('JavaScript Avançado', 'JavaScript avançado e frameworks', 60, 30, 2025),
('ReactJS', 'Desenvolvimento front-end com ReactJS', 50, 25, 2025),
('NodeJS', 'Desenvolvimento back-end com NodeJS', 50, 25, 2025),
('SQL Básico', 'Introdução a bancos de dados relacionais', 40, 20, 2025),
('SQL Avançado', 'Consultas complexas e otimização', 60, 30, 2025),
('Power BI', 'Visualização de dados e dashboards', 45, 22, 2025),
('Excel Avançado', 'Funções e análises avançadas', 35, 18, 2025),
('CSS Flexbox e Grid', 'Layout moderno com CSS', 25, 12, 2025),
('Python para Data Science', 'Análise de dados com Python', 60, 30, 2025),
('Machine Learning', 'Aprendizado de máquina com Python', 70, 35, 2025),
('Inteligência Artificial', 'Fundamentos de IA', 80, 40, 2025),
('PHP Básico', 'Programação web com PHP', 40, 20, 2025),
('PHP Avançado', 'PHP avançado e frameworks', 60, 30, 2025),
('MySQL', 'Banco de dados MySQL', 50, 25, 2025),
('MongoDB', 'Banco de dados NoSQL MongoDB', 50, 25, 2025),
('Git e GitHub', 'Controle de versão com Git', 30, 15, 2025),
('Algoritmos e Lógica', 'Fundamentos de programação', 40, 20, 2025),
('C++ Básico', 'Programação em C++', 50, 25, 2025),
('C++ Avançado', 'C++ avançado e STL', 70, 35, 2025),
('Java Spring Boot', 'Desenvolvimento web com Spring Boot', 60, 30, 2025),
('NodeJS e Express', 'API REST com NodeJS e Express', 50, 25, 2025),
('React Native', 'Desenvolvimento mobile com React Native', 50, 25, 2025),
('E-commerce com WooCommerce', 'Criando lojas online', 40, 20, 2025),
('Segurança da Informação', 'Fundamentos de segurança digital', 55, 28, 2025);

insert into matriculas (idaluno, idcurso, datamatricula) values
(1, 2, '2025-01-15'),
(2, 1, '2025-02-10'),
(3, 3, '2025-03-05'),
(4, 4, '2025-04-20'),
(5, 5, '2025-05-12'),
(1, 3, '2025-06-01'),
(2, 5, '2025-06-15');

delete from cursos
	where nome ='NodeJS';

select * from cursos;

update alunos
set peso = '57kg', altura = 1.67
where nome = 'ana souza';

update cursos
set nome = 'matemática aplicada', carga = '45h'
where nome = 'matemática básica';

update matriculas
set datamatricula = '2025-02-01'
where idaluno = 1 and idcurso = 2;



select nome, nascimento from alunos
where nascimento > 2000;	

select nome, carga from cursos
where carga > '50h';

select m.id, a.nome as aluno, c.nome as curso, m.datamatricula
from matriculas m
join alunos a on m.idaluno = a.id
join cursos c on m.idcurso = c.id;

select*from curso
order by nome;

select*from cursos
order by nome desc;
			
select*from cursos
where totaulas between '20' and '25'
order by nome;

select*from cursos
where ano in('2014','2025','2018');

/*
� Exercícios com ORDER BY 
1. Selecione todos os cursos ordenados pelo campo ano.*/ 
select*from cursos
order by ano;


/*2. Liste os cursos ordenados por totaulas de forma crescente.*/

select*from cursos
order by totaula asc;

/*3. Liste os cursos ordenados por nome de forma decrescente. */
select*from cursos
order by nome desc;
/*4. Liste os cursos ordenados por preco (do mais barato ao mais caro). */
select*from cursos
order by carga asc;

/*5. Liste os cursos ordenados por categoria e depois por nome.*/
select*from cursos
order by carga, nome;

/*6. Selecione os cursos ordenados por nivel de forma decrescente. */
select*from curso
order by totaula asc;

/*7. Mostre os cursos ordenados por ano mais recente primeiro. */
select*from cursos
order by ano desc;

/*8. Liste os cursos ordenados por totaulas, e em caso de empate, por nome. */
select*from cursos
order by totaula asc, nome asc;


/*9. Liste os cursos com mais aulas primeiro. */
select*from cursos
order by totaula asc;

/*10. Selecione os cursos com menor preço primeiro.*/
select*from cursos
order by carga asc;
 


/*11. Selecione cursos com totaulas entre 10 e 30. */
select*from cursos
where totaulas between 10 and 30
order by nome;
/*12. Mostre os cursos com ano entre 2010 e 2020. */
select*from cursos
where ano between 2010 and 2020
order by nome;
/*13. Liste cursos com preco entre 100 e 300. */
select*from cursos
where carga between 40 and 70
order by nome;
/*14. Selecione cursos com totaulas entre 15 e 25, ordenados por nome. */
select*from cursos
where totaulas between 15 and 25
order by nome;
/*15. Liste cursos com ano entre 2015 e 2025, ordenados por ano desc. */
select*from cursos
where ano between 2015 and 2025
order by ano desc;
/*16. Mostre cursos com preco entre 50 e 150, ordenados por preço. */
select*from cursos
where carga between 40 and 60
order by carga;
/*17. Selecione cursos com totaulas entre 5 e 10. */
select*from cursos
where totaulas between 20 and 40
order by nome;
/*18. Liste cursos com ano entre 2020 e 2022, ordenados por nome.*/
select*from cursos
where ano between 2020 and 2022
order by nome;
/*19. Liste os cursos com preco entre 200 e 500. */
select*from cursos
where carga between 50 and 90
order by nome;
/*20. Selecione cursos com totaulas entre 20 e 40 e preco entre 100 e 400. */
select*from cursos
where totaulas between 20 and 40 and carga between 50 and 80
order by nome;


/*21. Selecione cursos com ano em (2018, 2019, 2020).*/
select*from cursos
where ano in('2018','2019','2020','2025');

/*22. Mostre cursos com categoria em ('Programação', 'Design'). */
select*from cursos
where nome in('programação em python','design gráfico');


/*23. Liste cursos com nivel em ('Básico', 'Intermediário'). */
select*from cursos
where nivel in('Básico', 'Intermediário');

/*24. Mostre cursos com preco em (100, 150, 200). */
select*from cursos
where preco in(100, 150, 200);

/*25. Selecione cursos com nome em ('MySQL Básico', 'HTML5', 'Python 
Intermediário'). */
select*from cursos
where nome in('MySQL Básico', 'HTML5', 'Python Intermediário');

/*26. Liste cursos com ano em ('2010', '2015', '2020'), ordenados por ano. */
select*from cursos
where ano in('2010','2015','2020','2025');

/*27. Mostre cursos com nivel em ('Avançado') e categoria em ('Banco de Dados', 
'Desenvolvimento'). */
select*from cursos
where nivel in('Avançado') and nome in('programação em python','design gráfico');

/*28. Liste cursos com totaulas em (15, 20, 25).*/
select*from cursos
where totaulas in('15','20','25');

/*29. Selecione cursos com preco em (99.90, 199.90, 299.90). */
select*from cursos
where precos in('99.90','199.90','299.90');

/*30. Liste cursos com categoria em ('Administração', 'Gestão') e ordene por nome.*/
select*from cursos
where ano in('inglês intermediário','história geral')
order by nome;












/*1. Delete todos os cursos com o nome igual a "PHP Básico". */
delete from cursos
where nome='PHP Básico';

/*2. Delete os cursos com carga horária menor que 30 horas. */
delete from cursos
where carga>30;

/*3. Delete os cursos com o ano diferente de 2025. */
delete from cursos
	where ano != 2025;

/*4. Delete todos os cursos com a palavra "Avançado" no nome. */
delete from cursos
	where nome ='Avançado';
    
/*5. Delete os cursos com mais de 30 aulas. */
delete from cursos
	where totaulas<30;
    
/*6. Delete o curso com o nome exato "Git e GitHub". */
delete from cursos
	where nome ='Git e GitHub';

/*7. Delete todos os cursos que contenham "Java" no nome. */
delete from cursos
	where nome ='Java';

/*8. Delete os cursos com carga horária entre 40 e 50 horas. */
delete from cursos
	where carga between 40 and 50;


/*9. Delete os cursos cujo nome comece com "C++". */
delete from cursos
	where nome ='C++';

/*10. Delete os cursos com descrição contendo a palavra "fundamentos". */
delete from cursos
	where descricao ='fundamentos';
    
/*11. Delete todos os cursos de banco de dados (ex: SQL, MySQL, 
MongoDB). */
delete from cursos
	where nome ='SQL';



/*12. Delete os cursos cujo nome contenha "NodeJS". */
delete from cursos
	where nome ='NodeJS';


/*13. Delete os cursos com total de aulas inferior a 20. */
delete from cursos
	where totaulas>20;

/*14. Delete todos os cursos cujo nome contenha a palavra "Python". */
delete from cursos
	where nome ='Python';


/*15. Delete os cursos com exatamente 25 aulas. */
delete from cursos
	where totaulas ='25';

/*16. Delete todos os cursos relacionados a "React" (ReactJS, React Native).*/
delete from cursos
	where nome ='ReactJS' and nome ='React' and nome ='Native';


/*17. Delete os cursos com carga horária igual a 50 horas.*/
delete from cursos
	where carga =50;

/*18. Delete todos os cursos que tenham "CSS" no nome.*/
delete from cursos
	where nome ='CSS';
    
/*19. Delete o curso com nome "Excel Avançado". */
delete from cursos
	where nome ='Exel Avançado';
/*20. Delete todos os cursos com nome que contenha "Machine Learning" ou 
"Inteligência Artificial".*/
delete from cursos
	where nome ='Machine Learning' and nome='Inteligência Artificial';
    
/*21. Delete os cursos cujo nome termine com "Avançado".*/
delete from cursos
	where nome ='Avançado';
    
/*22. Delete todos os cursos com menos de 15 aulas. */
delete from cursos
	where totaulas > 15;
    
/*23. Delete os cursos com descrição que contenha "API". */
delete from cursos
	where descricao ='API';
/*24. Delete os cursos que possuam "Spring" no nome. */
delete from cursos
	where nome ='Spring';

/*25. Delete os cursos com descrição contendo "mobile". */
delete from cursos
	where descricao='mobile';





























/**/
/**/
/**/
/**/
/**/




 




 
 
 




 




































