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
    nome varchar(30) unique,
    descricao varchar(50),
    carga varchar(30),
    totaulas int,
    ano year default 2025
);

create table matriculas (
    id int primary key auto_increment,
    idaluno int,
    idcurso int,
    datamatricula varchar(30),
    foreign key (idaluno) references alunos(id),
    foreign key (idcurso) references cursos(id)
);

insert into alunos (nome, nascimento, sexo, peso, altura, nacionalidade) values
('ana souza', 1998, 'f', '55kg', 1.65, 'brasileira'),
('carlos lima', 2000, 'm', '72kg', 1.78, 'brasileiro'),
('beatriz costa', 1995, 'f', '60kg', 1.70, 'portuguesa'),
('joão mendes', 1999, 'm', '80kg', 1.82, 'brasileiro'),
('lúcia fernandes', 2001, 'f', '58kg', 1.60, 'angolana');

insert into cursos (nome, descricao, carga, totaulas) values
('matemática básica', 'curso introdutório de matemática', '40h', 20),
('programação em python', 'aprenda a programar em python', '60h', 30),
('história geral', 'estudo das principais eras históricas', '45h', 25),
('inglês intermediário', 'curso para aprimorar o inglês', '50h', 28),
('design gráfico', 'fundamentos do design visual', '70h', 35);

insert into matriculas (idaluno, idcurso, datamatricula) values
(1, 2, '2025-01-15'),
(2, 1, '2025-02-10'),
(3, 3, '2025-03-05'),
(4, 4, '2025-04-20'),
(5, 5, '2025-05-12'),
(1, 3, '2025-06-01'),
(2, 5, '2025-06-15');

update alunos
set peso = '57kg', altura = 1.67
where nome = 'ana souza';

update cursos
set nome = 'matemática aplicada', carga = '45h'
where nome = 'matemática básica';

update matriculas
set datamatricula = '2025-02-01'
where idaluno = 1 and idcurso = 2;

select * from alunos;

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


 




 




































