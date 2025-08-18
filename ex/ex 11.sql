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
