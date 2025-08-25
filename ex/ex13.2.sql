create database escola
default character set utf8mb4
default collate utf8mb4_0900_ai_ci;

use escola;

create table if not exists livraria(
id int not null auto_increment,
livro varchar(50) not null , 
titulo varchar(50) not null , 
preco float unsigned, 
autor varchar(30), 
editora varchar(30), 
primary key(id) 
) default charset = utf8mb4;

drop table livraria;

INSERT INTO livraria (livro, titulo, preco, autor, editora) VALUES
	('Livro1', 'O Senhor dos Anéis', 79.90, 'J.R.R. Tolkien', 'HarperCollins'),
	('Livro2', '1984', 39.90, 'George Orwell', 'Companhia das Letras'),
	('Livro3', 'Dom Quixote', 49.90, 'Miguel de Cervantes', 'Editora Record'),
	('Livro4', 'O Pequeno Príncipe', 29.90, 'Antoine de Saint-Exupéry', 'Agir'),
	('Livro5', 'Moby Dick', 59.90, 'Herman Melville', 'L&PM'),
	('Livro6', 'Crime e Castigo', 89.90, 'Fiódor Dostoiévski', 'Editora 34'),
	('Livro7', 'Cem Anos de Solidão', 49.90, 'Gabriel García Márquez', 'Record'),
	('Livro8', 'A Revolução dos Bichos', 19.90, 'George Orwell', 'Companhia das Letras'),
	('Livro9', 'A Metamorfose', 25.90, 'Franz Kafka', 'Antofágica'),
	('Livro10', 'O Grande Gatsby', 34.90, 'F. Scott Fitzgerald', 'Intrínseca'),
	('Livro11', 'Harry Potter e a Pedra Filosofal', 79.90, 'J.K. Rowling', 'Rocco'),
	('Livro12', 'O Hobbit', 39.90, 'J.R.R. Tolkien', 'HarperCollins'),
	('Livro13', 'O Código Da Vinci', 89.90, 'Dan Brown', 'Sextante'),
	('Livro14', 'A Sangue Frio', 39.90, 'Truman Capote', 'Companhia das Letras'),
	('Livro15', 'O Nome da Rosa', 69.90, 'Umberto Eco', 'Record'),
	('Livro16', 'A Arte da Guerra', 29.90, 'Sun Tzu', 'Ed. Martin Claret'),
	('Livro17', 'O Falcão Maltês', 49.90, 'Dashiell Hammett', 'L&PM'),
	('Livro18', 'Orgulho e Preconceito', 19.90, 'Jane Austen', 'Editora Landmark'),
	('Livro19', 'O Senhor das Moscas', 24.90, 'William Golding', 'Editora Record'),
	('Livro20', 'O Príncipe', 15.90, 'Nicolau Maquiavel', 'Martin Claret'),
	('Livro21', 'A Menina que Roubava Livros', 49.90, 'Markus Zusak', 'Intrínseca'),
	('Livro22', 'O Diário de Anne Frank', 39.90, 'Anne Frank', 'Record'),
	('Livro23', 'A caverna', 59.90, 'José Saramago', 'Cia das Letras'),
	('Livro24', 'Fahrenheit 451', 34.90, 'Ray Bradbury', 'Aleph'),
	('Livro25', 'Vingança', 29.90, 'C.S. Lewis', 'Cultura'),
	('Livro26', 'Drácula', 69.90, 'Bram Stoker', 'L&PM'),
	('Livro27', 'O Retrato de Dorian Gray', 44.90, 'Oscar Wilde', 'Penguin'),
	('Livro28', 'Frankenstein', 54.90, 'Mary Shelley', 'L&PM'),
	('Livro29', 'O Morro dos Ventos Uivantes', 38.90, 'Emily Brontë', 'Cia. das Letras'),
	('Livro30', 'Laranja Mecânica', 49.90, 'Anthony Burgess', 'Aleph'),
	('Livro31', 'O Alienista', 19.90, 'Machado de Assis', 'L&PM'),
	('Livro32', 'O Lobo da Estepe', 59.90, 'Hermann Hesse', 'Cia. das Letras'),
	('Livro33', 'O Rei Leão', 69.90, 'Disney', 'Editora Abril'),
	('Livro34', 'O Conde de Monte Cristo', 89.90, 'Alexandre Dumas', 'L&PM'),
	('Livro35', 'A Insustentável Leveza do Ser', 49.90, 'Milan Kundera', 'Cia. das Letras'),
	('Livro36', 'O Conto da Aia', 34.90, 'Margaret Atwood', 'Rocco'),
	('Livro37', 'O Cavaleiro dos Sete Reinos', 39.90, 'George R. R. Martin', 'LeYa'),
	('Livro38', 'O Prisioneiro da Masmorras', 24.90, 'Augusto Cury', 'Sextante'),
	('Livro39', 'O Grande Gatsby', 34.90, 'F. Scott Fitzgerald', 'Intrínseca'),
	('Livro40', 'A Guerra dos Tronos', 89.90, 'George R. R. Martin', 'LeYa'),
	('Livro41', '1984', 39.90, 'George Orwell', 'Companhia das Letras'),
	('Livro42', 'A Mão Esquerda da Escuridão', 59.90, 'Ursula K. Le Guin', 'Companhia das Letras'),
	('Livro43', 'Eu Sou Malala', 39.90, 'Malala Yousafzai', 'Cia. das Letras'),
	('Livro44', 'O Senhor das Sombras', 29.90, 'Cassandra Clare', 'Record'),
	('Livro45', 'Os Miseráveis', 69.90, 'Victor Hugo', 'L&PM'),
	('Livro46', 'O Menino do Pijama Listrado', 39.90, 'John Boyne', 'Cia. das Letras'),
	('Livro47', 'O Labirinto do Fauno', 24.90, 'Guillermo del Toro', 'Planeta'),
	('Livro48', 'Ensaio Sobre a Cegueira', 59.90, 'José Saramago', 'Cia. das Letras'),
	('Livro49', 'A Crônica de Nárnia', 44.90, 'C.S. Lewis', 'Cultura'),
	('Livro50', 'A Culpa é das Estrelas', 49.90, 'John Green', 'Intrínseca'),
	('Livro51', 'O Silêncio dos Inocentes', 59.90, 'Thomas Harris', 'Record'),
	('Livro52', 'A Menina que Roubava Livros', 39.90, 'Markus Zusak', 'Intrínseca'),
	('Livro53', 'O Hobbit', 49.90, 'J.R.R. Tolkien', 'HarperCollins'),
	('Livro54', 'O Fim da Eternidade', 39.90, 'Isaac Asimov', 'Aleph'),
	('Livro55', 'O Conde de Monte Cristo', 79.90, 'Alexandre Dumas', 'L&PM'),
	('Livro56', 'O Grande Mentecapto', 39.90, 'Fernando Sabino', 'Companhia das Letras'),
	('Livro57', 'A Estrada', 69.90, 'Cormac McCarthy', 'Cia. das Letras'),
	('Livro58', 'A Volta ao Mundo em 80 Dias', 49.90, 'Jules Verne', 'L&PM'),
	('Livro59', 'A Ilha do Tesouro', 29.90, 'Robert Louis Stevenson', 'Editora Zahar'),
	('Livro60', 'O Mundo de Sofia', 59.90, 'Jostein Gaarder', 'Cia. das Letras'),
	('Livro61', 'Fahrenheit 451', 44.90, 'Ray Bradbury', 'Aleph'),
	('Livro62', 'O Caso dos Dez Negrinhos', 49.90, 'Agatha Christie', 'L&PM'),
	('Livro63', 'A Abadia de Northanger', 29.90, 'Jane Austen', 'Cultura'),
	('Livro64', 'O Anjo Perdido', 39.90, 'Nelson de Oliveira', 'Companhia das Letras'),
	('Livro65', 'O Homem Invisível', 34.90, 'H.G. Wells', 'L&PM'),
	('Livro66', 'O Lado Bom da Vida', 49.90, 'Matthew Quick', 'Intrínseca'),
	('Livro67', 'O Fantasma da Ópera', 59.90, 'Gaston Leroux', 'L&PM'),
	('Livro68', 'O Poder do Hábito', 29.90, 'Charles Duhigg', 'Objetiva'),
	('Livro69', 'O Poder da Ação', 39.90, 'Paulo Vieira', 'Gente'),
	('Livro70', 'O Monge e o Executivo', 39.90, 'James C. Hunter', 'Editora Thomas Nelson'),
	('Livro71', 'Como Fazer Amigos e Influenciar Pessoas', 59.90, 'Dale Carnegie', 'Editora Qualitymark');

/*1Mostre todos os livros cujo título começa com a letra "O".*/
select*from livraria
	where titulo like 'O%';

/*2. Mostre todos os livros cujo título termina com a letra "e". */
select*from livraria
	where titulo like '%o';

/*3. Liste os livros cujo título contém a letra "r" em qualquer posição.*/
select*from livraria
	where titulo like '%r%';

/*4. Selecione os livros cujo título começa com "C" e termina com "o".*/
select*from livraria
	where titulo like 'c%o';

/*5. Mostre os livros com título que possuem exatamente 10 caracteres. */
select titulo
	from livraria
	where char_length(titulo) = 10;
    
/*6. Liste os livros cujo nome do autor começa com "J". */
select*from livraria
	where autor like 'j%';

/*7. Mostre os livros cujo nome da editora termina com "s". */
select*from livraria
	where editora like '%s';

/*8. Encontre os livros com "dos" em qualquer parte do título.*/
select*from livraria
	where titulo like '%dos%';

/*9. Mostre todos os livros com título onde a segunda letra é "e".*/
select*from livraria
	where titulo like '__e%';

/*10. Mostre os livros com título onde a terceira letra é "m"*/

select*from livraria
	where titulo like '___m%';  

/**/


/*/*11. Mostre os livros cujo título não começa com "O".*/
select*from livraria
	where titulo not like 'o%';  

/*12. Mostre os livros cujo título não contém a letra "a".*/
select*from livraria
	where titulo not like '%a%';  
    
/*13. Mostre os livros cujo título não termina com a letra "o". */
select*from livraria
	where titulo not like '%o';  
    
/*14. Liste os livros cujo autor não contém a letra "e". */
select*from livraria
	where autor not like '%e%';  

/*15. Mostre os livros com título não iniciando por "A" e não contendo "e".*/
select*from livraria
	where titulo not like 'a%' and '%e%' ;  
/**/



/*16. Liste os livros cujo título tem "a" como segunda letra e "e" como quarta 
letra.*/
select*from livraria
	where titulo like '__a%' and '____e%';
    
/*17. Encontre os livros com título que contém exatamente uma letra "a".*/
select*from livraria
	where titulo like '%a%' =1 ;


/*18. Mostre os livros onde o título tem pelo menos duas letras "o". */
select*from livraria
	where titulo like '%o%' and '%o%';

/*19. Liste os livros cujo título tem "ra" seguido imediatamente de qualquer letra.*/
select*from livraria
	where titulo like '_ra%';
    
/*20. Encontre os livros onde o título tem exatamente 3 palavras. */
SELECT titulo FROM livraria
WHERE LENGTH(titulo) - LENGTH(REPLACE(titulo, ' ', '')) = 2;

    

/*21. Mostre os livros cujo título começa com "O" e o preço seja maior que 50. */
select*from livraria
	where titulo like 'o%' and preco>50;



/*22. Mostre os livros cujo título termina com "a" e o autor contenha "José". */
select*from livraria
	where titulo like '%a' and autor like'%José%';

/*23. Mostre os livros com "a" no título e preço entre 20 e 40. */
select*from livraria
	where titulo like '%o%' and preco between 20 and 40;
    
/*24. Mostre os livros cujo título contenha "de" e a editora seja "Record". */
select*from livraria
	where titulo like '%de%' and editora like "Record";

/*25. Mostre os livros cujo autor comece com "G" e o título tenha a letra "z". */
select*from livraria
	where autor like 'g%' and titulo like "%z%";
    
/*26. Liste todos os títulos que contenham "o" e ordene em ordem alfabética.*/
SELECT titulo FROM livraria
WHERE LENGTH(titulo) - LENGTH(REPLACE(titulo, ' ', '')) = 2 and titulo like "%o%"
ORDER BY titulo;

/*27. Mostre os títulos com "e" e ordene pelo preço do maior para o menor. */
SELECT titulo, preco FROM livraria
WHERE titulo LIKE '%e%'
ORDER BY preco DESC;


/*28. Conte quantos livros têm "a" no título.*/
SELECT COUNT(*) AS total_com_a FROM livraria
WHERE titulo LIKE '%a%';


/*29. onte quantos livros não têm "a" no título. */
SELECT COUNT(*) AS total_sem_a FROM livraria
WHERE titulo NOT LIKE '%a%';

/*30. Liste os 5 primeiros livros cujo título começa com "A" ou "O".*/
SELECT titulo FROM livraria
WHERE titulo LIKE 'A%' OR titulo LIKE 'O%'
ORDER BY id
LIMIT 5;

 
/**/

select*from alunos
	where nome like '%d%';


select*from alunos
	where nome like '%C';


 
    
select*from alunos
	where nome like 'd%l';    

select*from alunos
	where nome not like 'a%';   

    
select * from alunos;



