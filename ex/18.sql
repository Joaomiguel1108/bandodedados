/*A Escola Criativa está organizando suas informações em um sistema digital. Eles 
possuem duas tabelas principais: uma com os alunos cadastrados e outra com 
as disciplinas oferecidas e os alunos matriculados nelas. 
Recentemente, o diretor pediu algumas listas para melhorar o planejamento: 
Alunos com disciplinas: ele quer ver o nome de cada aluno que está matriculado 
em alguma disciplina e quais disciplinas são essas. 
Todos os alunos: ele também quer uma lista completa de todos os alunos da 
escola, incluindo as disciplinas que estão cursando, e deixar claro quando algum 
aluno ainda não se matriculou em nenhuma disciplina. 
Disciplinas e alunos: por fim, ele quer ver todas as disciplinas oferecidas e os 
alunos que estão matriculados em cada uma. Caso algxuma disciplina ainda não 
tenha alunos matriculados, isso deve ficar evidente. 
Utilize as tabelas disponíveis para gerar essas informações.*/

CREATE DATABASE escola;
USE escola;

CREATE TABLE aluno (
    idaluno INT AUTO_INCREMENT PRIMARY KEY,
    nomealuno VARCHAR(30) NOT NULL
);


CREATE TABLE disciplina (
    iddiciplina INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nomediciplina VARCHAR(30) NOT NULL
);
drop table disciplina;
CREATE TABLE matriculas (
    iddiciplina INT,
    idaluno INT,
    primary key (idaluno, iddiciplina),
    FOREIGN KEY (iddiciplina) REFERENCES disciplina(iddiciplina),
    FOREIGN KEY (idaluno) REFERENCES aluno(idaluno)
);

SELECT livro.titulo AS livro, autor.nomeautor AS autor
FROM livro
JOIN livroautores ON livro.idlivro = livroautores.idlivro
JOIN autor ON livroautores.idautor = autor.idautor;


select  disciplina.nomediciplina, aluno.nomealuno
from disciplina
inner join aluno on disciplina.iddiciplina = aluno.idaluno;

SELECT d.nomediciplina AS Disciplina,COALESCE(a.nomealuno, 'Nenhum aluno matriculado') AS Aluno
FROM disciplina d
LEFT JOIN matriculas m ON d.iddiciplina = m.iddiciplina
LEFT JOIN aluno a ON m.idaluno = a.idaluno;

SELECT a.nomealuno AS Aluno,COALESCE(d.nomediciplina, 'Nenhuma disciplina') AS Disciplina
FROM aluno a
LEFT JOIN matriculas m ON a.idaluno = m.idaluno
LEFT JOIN disciplina d ON m.iddiciplina = d.iddiciplina;


INSERT INTO disciplina (nomediciplina) VALUES 
('Python Básico'), 
('Python Avançado'), 
('Java para Iniciantes'), 
('Java Avançado');

INSERT INTO aluno (nomealuno) VALUES
('Ana Silva'),
('Carlos Souza'),
('Beatriz Rocha'),
('Daniel Lima');

INSERT INTO matriculas (idaluno, iddiciplina) VALUES
(2,2),
(3,3),
(4,4);

INSERT INTO disciplina (nomediciplina) VALUES 
('Inglês');

INSERT INTO aluno (nomealuno) VALUES
('João');





select  disciplina.nomediciplina, aluno.nomealuno
from disciplina
join aluno on disciplina.iddiciplina = aluno.idaluno;





select aluno.nomealuno as aluno, disciplina.nomediciplina as disciplina
FROM aluno
JOIN matriculas  ON aluno.idaluno = matriculas.idaluno
JOIN disciplina d ON matriculas.iddiciplina = disciplina.iddiciplina;

SELECT a.nomealuno AS Aluno,d.nomediciplina AS Disciplina
FROM aluno a
JOIN matriculas m ON a.idaluno = m.idaluno
JOIN disciplina d ON m.iddiciplina = d.iddiciplina;



SELECT 
    a.nomealuno AS Aluno,
    COALESCE(d.nomediciplina, 'Nenhuma disciplina') AS Disciplina
FROM 
    aluno a
LEFT JOIN 
    matriculas m ON a.idaluno = m.idaluno
LEFT JOIN 
    disciplina d ON m.iddiciplina = d.iddiciplina;


