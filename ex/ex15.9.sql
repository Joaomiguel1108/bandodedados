create database pessoass;

use pessoass;

CREATE TABLE pessoas (
	id INT NOT NULL AUTO_INCREMENT,
	nome VARCHAR(30) NOT NULL,
    nascimento DATE,
    sexo ENUM('M', 'F'),
    peso DECIMAL(5,2),
    altura DECIMAL(3,2),
    nacionalidade VARCHAR(20) DEFAULT 'Brasil',
    PRIMARY KEY (id)
) DEFAULT CHARSET = utf8mb4 
  COLLATE = utf8mb4_general_ci;

drop table pessoas;

INSERT INTO pessoas (nome, nascimento, sexo, peso, altura, nacionalidade) VALUES
('Ana Silva', '1990-05-15', 'F', 60.5, 1.65, 'Brasil'),
('Carlos Souza', '1985-10-22', 'M', 75.0, 1.80, 'Brasil'),
('Beatriz Rocha', '2000-03-09', 'F', 55.2, 1.70, 'Argentina'),
('Daniel Lima', '1992-07-12', 'M', 82.3, 1.75, 'Brasil'),
('Eduarda Pires', '1998-11-30', 'F', 67.8, 1.68, 'Portugal'),
('Felipe Almeida', '1989-01-25', 'M', 90.1, 1.85, 'Brasil'),
('Gustavo Melo', '1995-06-17', 'M', 78.6, 1.79, 'Chile'),
('Helena Dias', '1993-12-05', 'F', 58.0, 1.64, 'Brasil'),
('Igor Castro', '2001-08-19', 'M', 74.3, 1.72, 'Brasil'),
('Juliana Freitas', '1997-04-23', 'F', 62.7, 1.66, 'Uruguai'),

('Kamila Ramos', '1991-09-03', 'F', 64.5, 1.70, 'Brasil'),
('Lucas Torres', '1996-12-11', 'M', 81.9, 1.78, 'Brasil'),
('Mariana Costa', '1994-02-28', 'F', 59.3, 1.62, 'México'),
('Nathan Barbosa', '1988-07-20', 'M', 88.0, 1.83, 'Brasil'),
('Olivia Martins', '2002-03-10', 'F', 57.0, 1.69, 'Brasil'),
('Pedro Henrique', '1990-05-18', 'M', 77.7, 1.76, 'Brasil'),
('Quésia Lopes', '1999-10-25', 'F', 66.4, 1.67, 'Colômbia'),
('Rafael Monteiro', '1987-11-08', 'M', 92.3, 1.86, 'Brasil'),
('Sabrina Neves', '2000-06-14', 'F', 61.1, 1.65, 'Paraguai'),
('Tiago Viana', '1993-03-03', 'M', 85.6, 1.81, 'Brasil'),

('Ursula Teixeira', '1985-12-29', 'F', 63.8, 1.70, 'Brasil'),
('Vinícius Prado', '1998-09-15', 'M', 80.0, 1.77, 'Brasil'),
('Wesley Fonseca', '1996-01-07', 'M', 79.2, 1.79, 'Espanha'),
('Xuxa Andrade', '1991-04-22', 'F', 60.9, 1.63, 'Brasil'),
('Yasmin Brito', '2003-05-05', 'F', 56.5, 1.60, 'Brasil'),
('Zeca Lins', '1989-07-30', 'M', 83.3, 1.82, 'Brasil'),
('Aline Farias', '1995-11-11', 'F', 58.2, 1.66, 'Peru'),
('Bruno Cardoso', '2001-02-17', 'M', 76.0, 1.74, 'Brasil'),
('Clara Matos', '1997-09-27', 'F', 65.0, 1.68, 'Brasil'),
('Diego Nunes', '1992-08-04', 'M', 91.5, 1.85, 'Brasil'),

('Elaine Torres', '1990-03-30', 'F', 63.0, 1.69, 'Brasil'),
('Fabiano Costa', '1994-06-19', 'M', 84.4, 1.80, 'Argentina'),
('Graziella Cunha', '2000-01-01', 'F', 59.7, 1.64, 'Brasil'),
('Hugo Sales', '1993-10-10', 'M', 87.2, 1.83, 'Chile'),
('Isabel Souza', '1996-12-25', 'F', 62.0, 1.67, 'Brasil'),
('Jonas Dias', '1988-04-07', 'M', 89.1, 1.84, 'Brasil'),
('Karen Martins', '1999-01-15', 'F', 61.3, 1.65, 'Brasil'),
('Leonardo Lima', '1991-07-28', 'M', 78.5, 1.77, 'Uruguai'),
('Marcela Reis', '1995-05-12', 'F', 60.0, 1.62, 'Brasil'),
('Nicolas Ferreira', '2002-11-03', 'M', 73.9, 1.73, 'Brasil'),

('Patrícia Rocha', '1993-01-09', 'F', 64.2, 1.70, 'Brasil'),
('Renan Oliveira', '1997-08-21', 'M', 82.8, 1.79, 'Brasil'),
('Sandra Gomes', '1994-09-06', 'F', 67.0, 1.68, 'Brasil'),
('Thiago Braga', '1990-06-16', 'M', 90.5, 1.85, 'Brasil'),
('Vanessa Mello', '1992-02-13', 'F', 66.7, 1.70, 'Brasil'),
('William Rocha', '1987-03-19', 'M', 88.9, 1.82, 'Portugal');


/*1. Crie uma view com todas as colunas da tabela pessoas. */
create view mostrar1 as
	select nome, nascimento, sexo, peso, altura, nacionalidade
    from pessoas;
select*from mostrar1;

/*2. Crie uma view que mostra apenas nome e sexo. */
create view mostrar2 as
	select nome, sexo
    from pessoas;
select*from mostrar2;


/*3. Crie uma view que mostra apenas os nomes das pessoas do sexo feminino. */
create view mostrar3 as
	select nome
    from pessoas
    where sexo ='F';
select*from mostrar3;


/*4. Crie uma view que mostra apenas as pessoas do sexo masculino. */
create view mostrar4 as
	select nome
    from pessoas
    where sexo ='M';
select*from mostrar4;


/*5. Crie uma view com pessoas que pesam mais de 80kg. */
create view mostrar1 as
	select nome, nascimento, sexo, peso, altura, nacionalidade
    from pessoas;
select*from mostrar5;

/*6. Crie uma view com pessoas com altura menor que 1.70m. */
create view mostrarr6 as
	select nome, nascimento, sexo, peso, altura, nacionalidade
    from pessoas
    where altura<1.70;

select*from mostrarr6;

/*7. Crie uma view com pessoas com nacionalidade diferente de 'Brasil'. */
create view mostrar7 as
	select nome, nascimento, sexo, peso, altura, nacionalidade
    from pessoas
    where nacionalidade!='Brasil';
select*from mostrar7;

/*8. Crie uma view com nomes que começam com a letra ‘A’. */
create view mostrar8 as
	select nome, nascimento, sexo, peso, altura, nacionalidade
    from pessoas
    where nome like 'a%';
select*from mostrar8;


/*9. Crie uma view com pessoas nascidas depois do ano 2000. */
create view mostrarr9 as
	select nome, nascimento, sexo, peso, altura, nacionalidade
    from pessoas
    where nascimento>'2000-01-01';
select*from mostrarr9;

/*10. Crie uma view com pessoas com peso entre 60 e 70 kg.*/
create view mostrar10 as
	select nome, nascimento, sexo, peso, altura, nacionalidade
    from pessoas
    where peso between 60 and 70;
select*from mostrar10;


/*1. Crie uma view com as 5 pessoas mais altas. */
create view mostrarr11 as
	select nome, nascimento, sexo, peso, altura, nacionalidade
    from pessoas
    order by altura desc
    limit 5;
select*from mostrarr11;

/*12. Crie uma view com as 5 pessoas mais leves. */
create view mostrar12 as
	select nome, nascimento, sexo, peso, altura, nacionalidade
    from pessoas
    order by peso asc
    limit 5;
select*from mostrar12;

/*13. Crie uma view ordenada por nome (ordem alfabética). */
create view mostrar13 as
	select nome, nascimento, sexo, peso, altura, nacionalidade
    from pessoas
    order by nome asc;
select*from mostrar13;

/*14. Crie uma view ordenada pela data de nascimento (mais novas primeiro).*/
create view mostrarr14 as
	select nome, nascimento, sexo, peso, altura, nacionalidade
    from pessoas
    order by nascimento desc;
select*from mostrarr14;
/*15. Crie uma view ordenada por peso (do maior para o menor). */
create view mostrar15 as
	select nome, nascimento, sexo, peso, altura, nacionalidade
    from pessoas
    order by peso desc;
select*from mostrar15;


/*16. Crie uma view com os 10 primeiros registros da tabela. */
create view mostrar16 as
	select nome, nascimento, sexo, peso, altura, nacionalidade
    from pessoas
    limit 10;
select*from mostrar16;

/*17. Crie uma view com os 10 últimos registros, ordenados por ID. */
create view mostrar17 as
	select nome, nascimento, sexo, peso, altura, nacionalidade
    from pessoas
    order by id desc
    limit 10;
select*from mostrar17;


/*18. Crie uma view com pessoas com altura entre 1.65 e 1.75.*/
create view mostrarr18 as
	select nome, nascimento, sexo, peso, altura, nacionalidade
    from pessoas
    where altura between 1.65 and 1.75;
select*from mostrarr18;

/*19. Crie uma view com nomes em que a segunda letra seja ‘a’. */
create view mostrar19 as
	select nome, nascimento, sexo, peso, altura, nacionalidade
    from pessoas
    where nome like '__a%';
select*from mostrar19;
/*20. Crie uma view com pessoas cujo nome tenha mais de 10 caracteres. */
CREATE VIEW mostrar20 AS
SELECT *
FROM Pessoas
WHERE LENGTH(nome) > 10;

select*from mostrar20;

/*1. Crie uma view com os nomes e pesos das pessoas com peso maior que 85kg. */
create view mostrar31 as
	select nome, peso
    from pessoas
    where peso > 85;
select*from mostrar31;



/*32. Crie uma view com nome, nacionalidade e um campo adicional chamado 
eh_brasileiro que mostra 'Sim' se a nacionalidade for 'Brasil' e 'Não' 
caso contrário.*/
create view mostrar32 as
	select nome, nacionalidade,
    case
		when nacionalidade = 'Brasil' then 'sim'
        else 'não'
    end as eh_brasileiro
from pessoas;
select*from mostrar32;

/*33. Crie uma view com pessoas do sexo masculino com altura acima de 1.80.*/
create view mostrar33 as
	select nome, sexo
    from pessoas
    where sexo = 'M' and altura > 1.80;
select*from mostrar33;


/*34. Crie uma view que mostre apenas os nomes e datas de nascimento das pessoas 
nascidas em anos pares. */
create view mostrar34 as
	select nome, nascimento
    from pessoas
    where year(nascimento) %2 = 0;
select*from mostrar34;


/*35. Crie uma view com os nomes em ordem decrescente. */
create view mostrar35 as
	select nome
    from pessoas
	order by nome desc;
select*from mostrar35;


/*36. Crie uma view com pessoas cujo nome termina com a letra 'a'. */
create view mostrar36 as
	select nome
    from pessoas
    where nome like '%a';
select*from mostrar36;


/*37. Crie uma view com nome e idade, e filtre apenas pessoas com menos de 30 
anos. */
create view mostrar37 as
	select nome, nascimento
    from pessoas
    where nascimento >'1995-1-1';
select*from mostrar37;

/*38. Crie uma view com pessoas que têm altura exata de 1.70. */
create view mostrar38 as
	select nome, altura
    from pessoas
    where altura = 1.70;
select*from mostrar38;

/*39. Crie uma view que mostra nome e ano de nascimento (extraído da data). */
create view mostrar39 as
	select nome, nascimento
    from pessoas;
select*from mostrar39;

/*40. Crie uma view com pessoas que têm a palavra “Silva” no nome.*/
create view mostrar40 as
	select nome
    from pessoas
    where nome like '%Silva%';
select*from mostrar40;

/* 41. Crie uma view com id, nome, e um campo faixa_etaria com valores como: 
• 'Jovem' se < 30 anos 
• 'Adulto' se entre 30 e 59 
• 'Idoso' se 60+ */
create view mostrar40 as
	select nome
    from pessoas
    where nome like '%Silva%';
select*from mostrar40;

/*42. Crie uma view com o nome e a quantidade de letras do nome. */
/*43. Crie uma view com pessoas com nome que contém a letra "e" duas ou mais 
vezes.*/

/*44. Crie uma view com pessoas nascidas entre 1985 e 1995. */
create view mostrarr44 as
	select nome, nascimento, sexo, peso, altura, nacionalidade
    from pessoas
    where nascimento between '1985-1-1' and '1995-1-1';
select*from mostrarr44;

/*45. Crie uma view com nome e peso, e adicione uma coluna peso_classificacao: 
• 'Leve' se < 60 
• 'Médio' se entre 60 e 80 
• 'Pesado' se > 80 */
/*46. Crie uma view com os nomes abreviados (apenas primeiro nome).*/
/*47. Crie uma view que agrupa pessoas pela nacionalidade e mostra quantas pessoas 
há de cada país. */
/*48. Crie uma view que mostra a média de altura das pessoas do sexo femini*/
/*49. Crie uma view com nome e dia da semana de nascimento (ex: segunda-feira).*/
/*50. Crie uma view que mostra o total de pessoas cadastradas.*/
/**/




 


 



 






 

























create view mostrarsql as
	select nome,descricao, carga, totaulas, ano
    from cursos
    where nome = 'SQL Básico';