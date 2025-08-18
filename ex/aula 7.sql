create database escola
default character set utf8mb4
default collate utf8mb4_0900_ai_ci;

use escola;

create table alunos(
id int not null auto_increment,
nome varchar(50) not null,
idade int not null,
curso varchar(100) not null,
primary key(id)
)default charset = utf8mb4;


INSERT INTO alunos (nome, idade, curso) VALUES 
('Ana', 17, 'História'), 
('Bruno', 22, 'Matemática'), 
('Carlos', 28, 'Física'), 
('Daniela', 21, 'Biologia'), 
('Eduardo', 35, 'Matemática'), 
('Fernanda', 19, 'Física'), 
('Gabriel', 23, 'Administração'), 
('Helena', 26, 'Direito'), 
('Igor', 30, 'Engenharia'), 
('João', 18, 'História'), 
('Katia', 25, 'Letras'), 
('Lucas', 20, 'Educação Física'), 
('Mariana', 32, 'Psicologia'), 
('Nicolas', 22, 'Filosofia'), 
('Olívia', 27, 'Matemática'), 
('Pedro', 24, 'Física'), 
('Queila', 29, 'Arquitetura'), 
('Rafael', 31, 'Medicina'), 
('Sabrina', 19, 'Biologia'), 
('Thiago', 40, 'Direito'); 


UPDATE alunos SET idade = 21 WHERE id = 1;

UPDATE alunos SET nome = 'joão pedro' WHERE id = 2;

UPDATE alunos SET curso = 'administração' WHERE id = 3;

UPDATE alunos SET idade = 23 WHERE id = 4;

UPDATE alunos SET nome = 'Eduardo Oliveira' WHERE id = 5;

UPDATE alunos SET curso = 'biologia' WHERE id = 6;

UPDATE alunos SET idade = 25 WHERE id = 7;

UPDATE alunos SET nome = 'helena souza' WHERE id = 8;

UPDATE alunos SET curso = 'engenharia' WHERE id = 9;

UPDATE alunos SET idade = 18 WHERE id = 10;

UPDATE alunos SET curso = 'letras' WHERE id = 11;

UPDATE alunos SET nome = 'lucas costa' WHERE id = 12;

UPDATE alunos SET curso = 'psicologia' WHERE id = 13;

UPDATE alunos SET idade = 31 WHERE id = 14;

UPDATE alunos SET curso = 'filosofia' WHERE id = 15;

UPDATE alunos SET nome = 'olivia pereira' WHERE id = 16;

UPDATE alunos SET idade = 28 WHERE id = 17;

UPDATE alunos SET curso = 'arquitetura' WHERE id = 18;

UPDATE alunos SET nome = 'sabrina silva' WHERE id = 19;

UPDATE alunos SET curso = 'medicina' WHERE id = 20;

