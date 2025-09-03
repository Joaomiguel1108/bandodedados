create database restaurante;

drop database resturante;
use restaurante;

create table clientes(
	idcliente int not null auto_increment primary key,
	nome varchar(30) unique,    
    email varchar(30) unique,
    telefone varchar(20)
);

create table pedidos(
	idpedido int auto_increment primary key,
    datapedido date not null,
    valor decimal (10,2) unique,
    idcliente int,
    foreign key (idcliente) references clientes(idcliente)
    
);

/*. Produtos e Categorias 
• Crie duas tabelas: produtos e categorias. A tabela produtos deve ter 
id_produto, nome, preco, id_categoria. A tabela categorias deve ter 
id_categoria e nome_categoria. Crie uma consulta que mostre os produtos 
junto com o nome da categoria.*/


create database loja;

use loja;

create table produto(
	idproduto int not null auto_increment primary key,
	nome varchar(30) unique,    
    preco decimal (10,2) unique
);

create table categorias(
	idcategoria int auto_increment primary key,
    nome_categoria date not null,
    idproduto int,
    foreign key (idproduto) references produto(idproduto)
);


/*. Vendas e Produtos 
• Crie duas tabelas: vendas e produtos. A tabela vendas deve conter id_venda, 
id_produto, quantidade e data_venda. A tabela produtos deve ter 
id_produto e nome_produto. Realize uma consulta que mostre a quantidade de 
cada produto vendido*/

create database loja2;

use loja2;

create table vendas(
	idvenda int auto_increment primary key,
    quantidade int,
    datavenda date
);

create table produto(
	idproduto int not null auto_increment primary key,
	nome varchar(30) unique,  
    idvenda int,
    foreign key (idvenda) references vendas(idvenda)
);


/*4. Relacionamento de Funcionários e Departamentos 
• Crie duas tabelas: funcionarios e departamentos. A tabela funcionarios 
deve ter id_funcionario, nome_funcionario, id_departamento. A tabela 
departamentos deve ter id_departamento e nome_departamento. Crie uma 
consulta para mostrar os funcionários e seus respectivos departamentos. */

create database empresa;

use empresa;

create table funcionarios(
	idfuncionario int auto_increment primary key,
    nomefuncionario varchar(30) not null,
    departamento varchar(30)
);

create table departamentos(
	iddepartamentos int not null auto_increment primary key,
	departamentos varchar(30) unique,  
    idfuncionario int,
    foreign key (idfuncionario) references funcionarios(idfuncionario)
);


/*. Estudantes e Cursos 
• Crie duas tabelas: estudantes e cursos. A tabela estudantes deve ter 
id_estudante, nome_estudante e email. A tabela cursos deve ter id_curso 
e nome_curso. Crie uma tabela intermediária chamada matriculas que 
relacione estudantes e cursos com os campos id_estudante, id_curso e 
data_matricula. */
create database escola;

use escola;

create table estudante(
	idestudante int auto_increment primary key,
    nomestudante varchar(30) not null,
    email varchar(30) not null
);

drop table curso;

create table curso(
	idcurso int not null auto_increment primary key,
	nomecurso varchar(30) not null
);

create table matricula(
	idmatricula int not null auto_increment primary key,
    idestudante int,
    idcurso int,
    foreign key (idcurso) references curso(idcurso),
    foreign key (idestudante) references estudante(idestudante)
    
);



/*. Livros e Autores 
• Crie duas tabelas: livros e autores. A tabela livros deve ter id_livro, 
titulo e id_autor. A tabela autores deve ter id_autor e nome_autor. Crie 
uma consulta que mostre todos os livros e seus respectivos autores.*/
create database biblioteca;

use biblioteca;


create table livro(
	idlivro int auto_increment primary key,
    titulo varchar(30) not null,
    idautor int,
    foreign key (idautor) references autor(idautor)
);

create table autor(
	idautor int not null auto_increment primary key,
	nomeautor varchar(30) not null
    
);


/*7. Alunos, Professores e Disciplinas 
• Crie três tabelas: alunos, professores e disciplinas. A tabela alunos deve 
ter id_aluno, nome, id_disciplina. A tabela professores deve ter 
id_professor e nome_professor. A tabela disciplinas deve ter 
id_disciplina e nome_disciplina. Realize uma consulta que mostre os 
alunos e seus respectivos professores e disciplinas. */

create database escola2;

use escola2;


create table aluno(
	idaluno int auto_increment primary key,
    nomealuno varchar(30) not null,
    iddiciplina int,
    foreign key (iddiciplina) references diciplina(iddiciplina)
);

create table professores(
	idprofessores int not null auto_increment primary key,
	nomeprofessor varchar(30) not null
);

create table diciplina(
	iddiciplina int not null auto_increment primary key,
	nomediciplina varchar(30) not null
);

/*. Funcionários e Projetos 
• Crie duas tabelas: funcionarios e projetos. A tabela funcionarios deve ter 
id_funcionario, nome_funcionario, id_projeto. A tabela projetos deve 
ter id_projeto e nome_projeto. Crie uma consulta para listar os funcionários e 
os projetos que eles estão alocados.*/
create database empresa2;

use empresa2;


create table funcionario(
	idfuncionarios int auto_increment primary key,
    nomefuncionario varchar(30) not null,
    idprojeto int,
    foreign key (idprojeto) references projeto(idprojeto)
);

create table projeto(
	idprojeto int not null auto_increment primary key,
	nomeprojeto varchar(30) not null
);



/*9. Pedidos e Itens de Pedido 
• Crie duas tabelas: pedidos e itens_pedido. A tabela pedidos deve ter 
id_pedido, id_cliente, data_pedido. A tabela itens_pedido deve ter 
id_item, id_pedido, id_produto, quantidade e preco_unitario. Crie uma 
consulta que mostre todos os itens de cada pedido. */

create database loja3;

use loja3;


create table pedidos(
	idpedido int auto_increment primary key,
    datapedido date
);

create table itens_pedido(
	iditem int not null auto_increment primary key,
	idpedido int,
    idproduto int,
    quantidade int,
    precounitario decimal (10,2) unique,
    foreign key (idpedido) references pedidos(idpedido)
    
);


/*0. Cursos e Matrículas 
• Crie duas tabelas: cursos e matriculas. A tabela cursos deve ter id_curso e 
nome_curso. A tabela matriculas deve ter id_matricula, id_curso, 
id_estudante. Realize uma consulta que mostre todos os cursos e quantos 
alunos estão matriculados em cada um. */

create database escola3;

use escola3;

drop table curso;

create table curso(
	idcurso int not null auto_increment primary key,
	nomecurso varchar(30) not null
);

create table matricula(
	idmatricula int not null auto_increment primary key,
    idestudante int,
    idcurso int,
    foreign key (idcurso) references curso(idcurso)
    
);



/*11. Autores e Livros (Muitos para Muitos) 
• Crie uma tabela intermediária chamada livros_autores que relaciona livros 
e autores. A tabela livros deve ter id_livro e titulo. A tabela autores 
deve ter id_autor e nome_autor. A tabela livros_autores deve ter id_livro 
e id_autor. Crie uma consulta que mostre todos os livros com seus respectivos 
autores.*/
create database biblioteca2;

use biblioteca2;


create table livro(
	idlivro int auto_increment primary key,
    titulo varchar(30) not null
);

create table autor(
	idautor int not null auto_increment primary key,
	nomeautor varchar(30) not null
    
);
create table livroautores(
	idlivroautores int not null auto_increment primary key,
	idautor int,
    idlivro int,
    foreign key (idautor) references autor(idautor),
    foreign key (idlivro) references livro(idlivro)
);


/*12. Filmes e Atores 
• Crie duas tabelas: filmes e atores. A tabela filmes deve ter id_filme e 
titulo. A tabela atores deve ter id_ator e nome_ator. Crie uma tabela 
intermediária filmes_atores para relacionar atores a filmes. Realize uma 
consulta que liste todos os filmes e seus respectivos atores*/
create database cinema;

use cinema;


create table filmes(
	idfilme int auto_increment primary key,
    titulo varchar(30) not null
);

create table atores(
	idautores int not null auto_increment primary key,
	nomeator varchar(30) not null
    
);

create table filmeatores(
	idfilmeatores int not null auto_increment primary key,
	idfilme int,
    idautores int,
    foreign key (idautores) references atores(idautores),
    foreign key (idfilme) references filmes(idfilme)
);


/*13. Categorias de Produtos e Subcategorias 
• Crie duas tabelas: categorias e subcategorias. A tabela categorias deve ter 
id_categoria e nome_categoria. A tabela subcategorias deve ter 
id_subcategoria, id_categoria e nome_subcategoria. Realize uma 
consulta que mostre todas as subcategorias e suas categorias associadas.*/

create database lojaa;

use lojaa;

create table categoriasproduto(
	idcategoria int not null auto_increment primary key,
	nomecategoria varchar(30) unique
);

create table subcategorias(
	idsubcategoria int auto_increment primary key,
    nome_subcategoria date not null,
    idcategoria int,
    foreign key (idcategoria) references categoriasproduto(idcategoria)
); 

/*14. Artigos e Tags 
• Crie duas tabelas: artigos e tags. A tabela artigos deve ter id_artigo, 
titulo, e data_publicacao. A tabela tags deve ter id_tag e nome_tag. Crie 
uma tabela intermediária artigos_tags para associar múltiplas tags a cada 
artigo. Crie uma consulta que mostre os artigos e as tags associadas a eles*/
create database artigos;

use artigos;

create table artigos(
	idartigos int not null auto_increment primary key,
	titulo varchar(30) unique,
    data_publicacao date
);

create table tags(
	idtag int auto_increment primary key,
    nometag varchar(30)
);

create table artigostags(
	idartigostags int auto_increment primary key,
    idtag int,
    idartigos int,
    foreign key (idartigos) references artigos(idartigos),
    foreign key (idtag) references tags(idtag)
); 

/*15. Pedidos e Clientes 
• Crie uma tabela pedidos com os campos id_pedido, id_cliente, 
data_pedido, valor_total. Crie uma consulta que mostre os pedidos de um 
cliente específico, utilizando uma cláusula JOIN com a tabela clientes para 
mostrar o nome do cliente. */
create database lojja;

use lojja;

create table clientes(
	idcliente int not null auto_increment primary key,
	nome varchar(30) unique,    
    email varchar(30) unique,
    telefone varchar(20)
);

create table pedido(
	idpedido int auto_increment primary key,
    datapedido date not null,
    valor decimal (10,2) unique,
    idcliente int,
    foreign key (idcliente) references clientes(idcliente)
    
);


/*16. Funcionários e Salários 
• Crie uma tabela salarios para armazenar o id_funcionario, salario, 
data_pagamento. Crie uma consulta para mostrar os salários de cada 
funcionário junto com seu nome*/
create database empressa;

use empressa;

create table funcionario(
	idfuncionarios int auto_increment primary key,
    salario float not null,
    data_pagamento date not null
);

/*17. Pedidos e Pagamentos 
• Crie duas tabelas: pedidos e pagamentos. A tabela pedidos deve ter 
id_pedido, id_cliente, data_pedido e valor_total. A tabela pagamentos 
deve ter id_pagamento, id_pedido, data_pagamento e valor_pago. Realize 
uma consulta que mostre os pedidos e os pagamentos relacionados.*/
create database looja;

use looja;

create table pedidos(
	idpedido int not null auto_increment primary key,
    idcliente int,
	datapedido date not null,
    valor_total decimal (10,2) unique
);

create table pagamentos(
	idpagamento int auto_increment primary key,
    idpedido int,
    datapagamento date not null,
    valorpago decimal (10,2) unique,
    foreign key (idpedido) references pedidos(idpedido)
);


/*18. Estudantes e Notas 
• Crie duas tabelas: estudantes e notas. A tabela estudantes deve ter 
id_estudante, nome_estudante, email. A tabela notas deve ter id_nota, 
id_estudante, id_disciplina, nota. Realize uma consulta que mostre as 
notas dos estudantes em cada disciplina. */
create database escolla;

use escolla;

create table estudantes(
	idestudante int auto_increment primary key,
    nomeestudante varchar(30) not null,
    email varchar(30) not null    
);

create table notas(
	idnotas int not null auto_increment primary key,
	idestudante int,
	iddiciplina int,
    nota int,
    foreign key (idestudante) references estudantes(idestudante)
);




/* Clientes e Endereços 
• Crie duas tabelas: clientes e enderecos. A tabela clientes deve ter 
id_cliente, nome_cliente, email. A tabela enderecos deve ter 
id_endereco, id_cliente, logradouro, cidade. Crie uma consulta que 
mostre todos os clientes com seus respectivos endereços.*/
create database enderecos;

use enderecos;

create table clientes(
	idcliente int auto_increment primary key,
    nomecliente varchar(30) not null,
    email varchar(30) not null    
);

create table enderecos(
	idenderecos int not null auto_increment primary key,
	idcliente int,
	cidade varchar(30),
    logradoura varchar(30),
    foreign key (idcliente) references clientes(idcliente)
);

/*20. Clientes e Pedidos (Histórico de Pedidos) 
• Crie uma tabela pedidos que armazene id_pedido, id_cliente, data_pedido, 
valor_total. Crie uma consulta para listar todos os pedidos de um cliente, 
ordenando-os pela data de pedido.*/
create database loja5;

use loja5;

create table pedido(
	idpedido int auto_increment primary key,
    datapedido date not null,
    valor decimal (10,2) unique,
    idcliente int,
    foreign key (idcliente) references clientes(idcliente)
    
);

create table clientes(
	idcliente int not null auto_increment primary key,
	nome varchar(30) unique,    
    email varchar(30) unique,
    telefone varchar(20)
);



/*1. Usuarios e Permissões 
• Crie duas tabelas: usuarios e permissoes. A tabela usuarios deve ter 
id_usuario, nome_usuario e email. A tabela permissoes deve ter 
id_permissao, nome_permissao. Crie uma tabela intermediária 
usuarios_permissoes que relacione usuários com permissões. Crie uma 
consulta para listar os usuários e suas permissões.*/
create database site;

use site;

create table usuario(
	idusuario int auto_increment primary key,
    nomeusuario date not null,
    email decimal (10,2) unique
);

create table permissoes(
	idpermissoes int not null auto_increment primary key,
	nomepermissao varchar(30) unique  
);

create table permissoesusuarios(
	idpermissoesusuarios int not null auto_increment primary key,
	usuario int,
    permissoes int
);




/**/
/**/

















