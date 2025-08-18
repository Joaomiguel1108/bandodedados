/*Crie a tabela alunos (id, nome, idade) e adicione a coluna matricula. 
2. Crie a tabela alunos (id, nome, idade) e adicione a coluna email. 
3. Crie a tabela alunos (id, nome, idade, matricula, email) e remova a coluna 
email. 
4. Crie a tabela professores (id, nome, disciplina) e adicione a coluna 
formacao. 
5. Crie a tabela professores (id, nome, disciplina, formacao) e adicione a 
coluna registro. 
6. Crie a tabela professores (id, nome, disciplina, formacao, registro) e 
remova a coluna formacao. 
7. Crie a tabela cursos (id, nome, duracao) e adicione a coluna modalidade. 
8. Crie a tabela cursos (id, nome, duracao, modalidade) e adicione a coluna 
turno. 
9. Crie a tabela cursos (id, nome, duracao, modalidade, turno) e remova a 
coluna modalidade. 
10. Crie a tabela disciplinas (id, nome, codigo) e adicione a coluna 
carga_horaria.*/


create database escola
default character set utf8mb4
default collate utf8mb4_0900_ai_ci;

use escola;

create table alunos(
id int not null auto_increment,
nome varchar(30) not null,
nascimento varchar(30) not null,
primary key(id)
)default charset = utf8mb4;

alter table alunos
	add column matricula varchar(30);

alter table alunos
	add column email varchar(30);
    
alter table alunos
	drop column email;    
    


create table professores(
id int not null auto_increment,
nome varchar(30) not null,
diciplina varchar(30) not null,
primary key(id)
)default charset = utf8mb4;

alter table professores
	add column formacao varchar(30);

alter table professores
	add column registro varchar(30);
    
alter table professores
	drop column formacao;
    
create table cursos(
id int not null auto_increment,
nome varchar(30) not null,
duracao varchar(30) not null,
primary key(id)
)default charset = utf8mb4;

 alter table cursos
	add column modalidade varchar(30);      

    
 alter table cursos
	add column turno varchar(30);   
    
alter table cursos
	drop column modalidade;

/* Crie a tabela disciplinas (id, nome, codigo, carga_horaria) e adicione a 
coluna ementa. 
12. Crie a tabela disciplinas (id, nome, codigo, carga_horaria, ementa) e 
remova a coluna ementa. 
13. Crie a tabela turmas (id, nome, ano) e adicione a coluna semestre. 
14. Crie a tabela turmas (id, nome, ano, semestre) e adicione a coluna turno. 
15. Crie a tabela turmas (id, nome, ano, semestre, turno) e remova a coluna 
turno. 
16. Crie a tabela notas (id, aluno_id, disciplina_id) e adicione a coluna nota1. 
17. Crie a tabela notas (id, aluno_id, disciplina_id, nota1) e adicione a coluna 
nota2. 
18. Crie a tabela notas (id, aluno_id, disciplina_id, nota1, nota2) e remova a 
coluna nota1. 
19. Crie a tabela frequencias (id, aluno_id, disciplina_id) e adicione a coluna 
presencas. 
20. Crie a tabela frequencias (id, aluno_id, disciplina_id, presencas) e remova 
a coluna presencas.*/


create table diciplinas(
id int not null auto_increment,
nome varchar(30) not null,
codigo varchar(30) not null,
primary key(id)
)default charset = utf8mb4;

alter table diciplinas
	add column carga_horaria varchar(30);
alter table diciplinas
	add column ementa varchar(30);
alter table diciplinas
	drop column ementa;
    
create table turmas(
id int not null auto_increment,
nome varchar(30) not null,
ano varchar(30) not null,
primary key(id)
)default charset = utf8mb4;    

alter table turmas
	add column semestre varchar(30);    
alter table turmas
	add column turno varchar(30);    
alter table turmas
	drop column turno;    
    
    
 create table notas(
id int not null auto_increment,
aluno_id varchar(30) not null,
diciplina_id varchar(30) not null,
primary key(id)
)default charset = utf8mb4;   

alter table notas
	add column nota1 varchar(30);    
alter table notas
	add column nota2 varchar(30);  
alter table notas
	drop column nota1;  
    
 create table frequencias(
id int not null auto_increment,
aluno_id varchar(30) not null,
diciplina_id varchar(30) not null,
primary key(id)
)default charset = utf8mb4;   
    
alter table notas
	add column presencas varchar(30);       
    
alter table notas
	drop column nota1;      
    
    
    
    