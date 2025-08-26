create table if not exists cursos ( 
id INT NOT NULL AUTO_INCREMENT, 
nome varchar (30) not null, #N se repete 
descricao text, #Sem tamanho definido 
carga int unsigned, # N aceita valor negatios 
totaulas int unsigned, 
ano year default '2025', 
PRIMARY KEY (id) 
)DEFAULT CHARSET = utf8mb4 ; 

INSERT INTO cursos (nome, descricao, carga, totaulas, ano) VALUES 
('Python Básico', 'Curso introdutório de Python', 40, 20, 2025), 
('Python Avançado', 'Técnicas avançadas de Python', 60, 30, 2025), 
('Java para Iniciantes', 'Fundamentos da linguagem Java', 50, 25, 2025), 
('Java Avançado', 'Java avançado e programação orientada a objetos', 70, 35, 
2025), 
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

/*elecione todos os dados da tabela cursos. */
select*from cursos;

/*Selecione apenas os 5 primeiros registros da tabela cursos. */
select*from cursos
limit 5;

/*Selecione os cursos com carga horária igual a 60. */
select*from cursos
where carga =  60;

/*Selecione os 3 primeiros cursos com carga horária superior a 40.*/
select*from cursos
where carga = 40
limit 3;


/*Selecione todos os cursos cujo nome comece com a letra "P". */
select*from cursos
where nome like 'p%' ;

/*Selecione os cursos cuja carga horária esteja entre 40 e 60. */
select*from cursos
where carga between 40 and 60;


/*Selecione os cursos com nome contendo a palavra "Web". */
select*from cursos
where nome like '%Web%';

/*Selecione os cursos ordenados por carga horária em ordem decrescente. */
select*from cursos
order by carga desc;



/*Selecione os cursos que não possuem descrição (NULL). */
select nome from cursos
where descricao is null;

/*Selecione os cursos com carga horária diferente de 50. */
select*from cursos
where carga != 50;


/*Calcule a média da carga horária dos cursos. */
select avg(carga)
	from cursos;

/*Encontre o valor da menor carga horária cadastrada.*/
SELECT nome, descricao, carga, totaulas, ano
FROM cursos
WHERE carga = (SELECT MIN(carga) FROM cursos);

/*Encontre o valor da maior carga horária cadastrada. */
SELECT nome, descricao, carga, totaulas, ano
FROM cursos
WHERE carga = (SELECT MAX(carga) FROM cursos);

/*Calcule a média da carga horária dos cursos com carga acima de 40. */
select avg(carga) as media
from cursos
where carga>40;

/*Encontre o nome e carga do curso com a menor carga horária. */
SELECT nome, descricao, carga, totaulas, ano
FROM cursos
WHERE carga = (SELECT MIN(carga) FROM cursos);


/*Encontre o nome e carga do curso com a maior carga horária.*/
SELECT nome, descricao, carga, totaulas, ano
FROM cursos
WHERE carga = (SELECT MAX(carga) FROM cursos);


