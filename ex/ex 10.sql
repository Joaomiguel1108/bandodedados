/*
�
 ️ Tabela de referência: clientes 
CREATE TABLE clientes ( 
id INT PRIMARY KEY AUTO_INCREMENT, 
nome VARCHAR(100), 
idade INT, 
cidade VARCHAR(100), 
estado VARCHAR(2) 
); 
✅ Exercícios com WHERE e AND 
1. Selecione todos os dados dos clientes que moram na cidade de 'São Paulo'. 
2. Liste os clientes que moram no estado 'SP' e na cidade 'Campinas'. 
3. Mostre os dados dos clientes com idade maior que 18 e menor que 30. 
4. Encontre os clientes com o nome 'Maria' e que moram em 'Belo 
Horizonte'. 
5. Selecione os clientes que têm 25 anos e são do estado 'RJ'. 
6. Liste os clientes com o nome 'João' e idade maior que 40. 
7. Mostre os dados dos clientes que moram na cidade 'Fortaleza' e têm idade 
menor que 20. 
8. Selecione os clientes do estado 'MG' e da cidade 'Uberlândia'. 
9. Mostre os clientes que têm 30 anos e moram em 'Salvador'. 
10. Encontre os clientes com idade igual a 50 e que moram no estado 'PR'. 
11. Liste os dados dos clientes com nome 'Ana' e idade menor que 18. 
12. Mostre os clientes da cidade 'Recife' e com idade entre 20 e 40 (use > 20 AND 
idade < 40). 
13. Selecione os clientes com nome 'Pedro' e cidade 'Natal'. 
14. Liste os clientes com idade igual a 60 e estado 'RS'. 
15. Mostre os dados dos clientes da cidade 'Curitiba' e estado 'PR'. 
16. Selecione os clientes com idade maior que 35 e menor que 50. 
17. Encontre os clientes com nome 'Lucas' e idade 28. 
18. Mostre os clientes que moram em 'Manaus' e têm mais de 40 anos. 
19. Liste os clientes com nome 'Carla' e cidade 'Belém'. 
20. Selecione os clientes com idade menor que 25 e estado 'PE'. 
21. Mostre os dados dos clientes com nome 'Paulo' e idade igual a 33. 
22. Liste os clientes da cidade 'João Pessoa' e com idade maior que 50. 
23. Selecione os clientes do estado 'BA' e idade igual a 45. 
24. Mostre os clientes com idade entre 30 e 40 e cidade 'Maceió'. 
25. Liste os clientes com nome 'Fernanda' e idade menor que 30.*/

create database loja
default character set utf8mb4
default collate utf8mb4_general_ci;


use loja;




CREATE TABLE clientes ( 
id INT PRIMARY KEY AUTO_INCREMENT, 
nome VARCHAR(100), 
idade INT, 
cidade VARCHAR(100), 
estado VARCHAR(2) 
); 

INSERT INTO clientes (nome, idade, cidade, estado) VALUES
('Carlos Lima', 38, 'São Paulo', 'SP'),
('João', 42, 'Campinas', 'SP'),
('Bruna Alves', 22, 'Curitiba', 'PR'),
('Maria Silva', 27, 'Belo Horizonte', 'MG'),
('Rafael Costa', 25, 'Rio de Janeiro', 'RJ'),
('João Souza', 45, 'São Paulo', 'SP'),
('Lucas Mendes', 17, 'Fortaleza', 'CE'),
('Fernanda Rocha', 36, 'Uberlândia', 'MG'),
('Tiago Oliveira', 30, 'Salvador', 'BA'),
('Juliana Martins', 50, 'Londrina', 'PR'),
('Ana Costa', 16, 'Recife', 'PE'),
('Carlos Nunes', 35, 'Recife', 'PE'),
('Pedro Santos', 33, 'Natal', 'RN'),
('Marcos Vieira', 60, 'Porto Alegre', 'RS'),
('Beatriz Ramos', 28, 'Curitiba', 'PR'),
('Patrícia Lopes', 40, 'Maceió', 'AL'),
('Lucas Almeida', 28, 'São Luís', 'MA'),
('Renata Farias', 44, 'Manaus', 'AM'),
('Carla Teixeira', 31, 'Belém', 'PA'),
('Eduardo Lima', 24, 'Olinda', 'PE'),
('Paulo Henrique', 33, 'Niterói', 'RJ'),
('Sônia Braga', 55, 'João Pessoa', 'PB'),
('Daniel Castro', 45, 'Salvador', 'BA'),
('Roberta Dias', 34, 'Maceió', 'AL'),
('Fernanda Lima', 29, 'Vitória', 'ES');

/*1. Selecione todos os dados dos clientes que moram na cidade de 'São Paulo'.*/

select * from clientes
	where cidade= 'São Paulo';
    
/*2. Liste os clientes que moram no estado 'SP' e na cidade 'Campinas'.*/

select * from clientes
	where estado= 'SP' and cidade = 'Campinas';

/*. Mostre os dados dos clientes com idade maior que 18 e menor que 30.*/

select * from clientes
	where idade>18 and idade<30;


/*. Encontre os clientes com o nome 'Maria' e que moram em 'Belo 
Horizonte'*/

select * from clientes
	where nome= 'Maria' and cidade= 'Belo Horizonte';

/*. Selecione os clientes que têm 25 anos e são do estado 'RJ'. */

select * from clientes
	where idade= 25 and estado= 'RJ';


/*. 6. Liste os clientes com o nome 'João' e idade maior que 40. */

select * from clientes
	where nome= 'João' and idade>40;

/*7. Mostre os dados dos clientes que moram na cidade 'Fortaleza' e têm idade 
menor que 20.*/

select * from clientes
	where idade<20 and cidade= 'Fortaleza';



/*8. Selecione os clientes do estado 'MG' e da cidade 'Uberlândia'.*/
select * from clientes
	where estado = 'MG' and cidade= 'Uberlândia';


/*9. Mostre os clientes que têm 30 anos e moram em 'Salvador'. */
select * from clientes
	where idade=30 and cidade= 'Salvador';



/*0. Encontre os clientes com idade igual a 50 e que moram no estado 'PR'.*/
select * from clientes
	where idade=50 and estado = 'PR';


/*11. Liste os dados dos clientes com nome 'Ana' e idade menor que 18. */
select * from clientes
	where nome='Ana' and idade>17;


/*2. Mostre os clientes da cidade 'Recife' e com idade entre 20 e 40 (use > 20 AND 
idade < 40).*/
select * from clientes
	where idade> 20 AND idade < 40 and cidade= 'Recife';

/*13. Selecione os clientes com nome 'Pedro' e cidade 'Natal'.*/
select * from clientes
	where nome='Pedro' and cidade='Natal';


/*4. Liste os clientes com idade igual a 60 e estado 'RS'.*/

select * from clientes
	where estado = 'RS' and idade=60;

/*5. Mostre os dados dos clientes da cidade 'Curitiba' e estado 'PR'. */

select * from clientes
	where estado='PR' and cidade='Curitiba';


/*6. Selecione os clientes com idade maior que 35 e menor que 50. */
select * from clientes
	where idade<35 and idade>50;
    





/*17. Encontre os clientes com nome 'Lucas' e idade 28. */
select * from clientes
	where nome='Lucas' and idade=28;
    

/*8. Mostre os clientes que moram em 'Manaus' e têm mais de 40 anos*/
select * from clientes
	where cidade='Manaus' and idade<40;


/*19. Liste os clientes com nome 'Carla' e cidade 'Belém'.*/
select * from clientes
	where nome='Carla' and cidade='Belém';



/*20. Selecione os clientes com idade menor que 25 e estado 'PE'. */
select * from clientes
	where estado='PE' and idade>25;




/*21. Mostre os dados dos clientes com nome 'Paulo' e idade igual a 33. */
select * from clientes
	where nome='Paulo' and idade=33;



/*22. Liste os clientes da cidade 'João Pessoa' e com idade maior que 50*/
select * from clientes
	where cidade='João Pessoa' and idade<50;


/*23. Selecione os clientes do estado 'BA' e idade igual a 45. */
select * from clientes
	where estado='BA' and idade=45;


/*24. Mostre os clientes com idade entre 30 e 40 e cidade 'Maceió'. */
select * from clientes
	where cidade='Maceió' and idade<=30 and idade>=40;



/*5. Liste os clientes com nome 'Fernanda' e idade menor que 30*/
select * from clientes
	where nome='Fernanda' and idade>30;








































