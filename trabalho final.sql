/*Contexto do Projeto 
A tarefa é criar um banco de dados para uma loja online. A loja oferece uma 
grande variedade de produtos, que são divididos em categorias como 
eletrônicos, roupas, acessórios, entre outros. O objetivo do banco de dados é 
gerenciar clientes, produtos, pedidos, pagamentos, estoque, e avaliações de 
produtos, além de possibilitar relatórios e consultas detalhadas sobre vendas, 
estoque e comportamento dos clientes. 
Objetivos do banco de dados: 
• Gerenciar informações dos clientes e permitir que eles façam compras. 
• Organizar os produtos em categorias para facilitar a busca e o 
gerenciamento. 
• Controlar o estoque de produtos e registrar transações de entrada e 
saída de mercadorias. 
• Registrar pedidos e pagamentos feitos pelos clientes. 
• Permitir a avaliação de produtos pelos clientes. 
O banco de dados deve ser capaz de gerar relatórios, como: 
• Produtos mais vendidos. 
• Pedidos realizados em determinados períodos. 
• Vendas por categoria. 
• Clientes com maior volume de compras.*/



create database loja;

use loja;


create table clientes (
    id_cliente int primary key auto_increment,
    nome varchar(30),
    email varchar(30),
    telefone varchar(30),
    endereco varchar(50)
);

create table categorias (
    id_categoria int primary key auto_increment,
    categoria varchar(30),
    descricao text
);


create table produtos (
    id_produto int primary key auto_increment,
    id_categoria int,
    nome_produto varchar(30),
    preco decimal(10,2),
    vendas int,
    foreign key (id_categoria) references categorias(id_categoria)
);


create table fornecedores (
    id_fornecedor int primary key auto_increment,
    nome_fornecedor varchar(30),
    cnpj bigint
);


create table estoque (
    id_estoque int primary key auto_increment,
    id_produto int,
    quantidade int,
    data_movimentacao date,
    tipo_movimentacao enum('entrada', 'saida'),
    foreign key (id_produto) references produtos(id_produto)
);


create table pedidos (
    id_pedido int primary key auto_increment,
    id_cliente int,
    data_pedido date,
    status_pedido varchar(30),
    foreign key (id_cliente) references clientes(id_cliente)
);


create table itens_pedido (
    id_item_pedido int primary key auto_increment,
    id_pedido int,
    id_produto int,
    quantidade int,
    preco_unitario decimal(10,2),
    foreign key (id_pedido) references pedidos(id_pedido),
    foreign key (id_produto) references produtos(id_produto)
);


create table pagamentos (
    id_pagamento int primary key auto_increment,
    id_pedido int,
    valor decimal(10,2),
    metodo_pagamento varchar(30),
    data_pagamento date,
    foreign key (id_pedido) references pedidos(id_pedido)
);


create table avaliacoes (
    id_avaliacao int primary key auto_increment,
    id_cliente int,
    id_produto int,
    avaliacao text,
    nota int,
    data_avaliacao date,
    foreign key (id_cliente) references clientes(id_cliente),
    foreign key (id_produto) references produtos(id_produto)
);


create table carrinho (
    id_carrinho int primary key auto_increment,
    id_cliente int,
    data_criacao date,
    foreign key (id_cliente) references clientes(id_cliente)
);





/*Operações SQL para Prática 
As operações abaixo são as principais que os alunos devem realizar para 
praticar os conceitos de SQL. As operações devem ser feitas de maneira 
integrada, considerando o contexto de uma loja online: 
1. Consultas Simples e Complexas (SELECT): 
o Realizar consultas para obter informações específicas, como 
produtos em estoque, pedidos de clientes, ou detalhes de 
pagamento. 
o Utilizar filtros com WHERE e operadores lógicos (AND, OR, NOT) 
para restringir os resultados. 
o Aplicar LIKE para busca de produtos ou clientes por nome ou e
mail. 
o Filtrar resultados usando IN para múltiplos valores e BETWEEN 
para intervalos de datas ou preços.*/





/*2. Inserções de Dados (INSERT INTO): 
o Adicionar novos clientes, produtos, pedidos e pagamentos ao 
banco de dados. 
o Inserir registros em tabelas de relacionamento, como 
Itens_Pedido ou Carrinho, quando um cliente faz uma compra ou 
adiciona itens ao seu carrinho. 
*/
insert into clientes (nome, email, telefone, endereco)
values 
('ana silva', 'ana@email.com', '(11)91234-5678', 'rua das flores, 123'),
('joão lima', 'joao@email.com', '(21)99876-5432', 'avenida brasil, 456'),
('carla souza', 'carla@email.com', '(31)98765-4321', 'rua verde, 789'),
('miguel souza', 'miguel@email.com', '(16)99142-4321', 'rua avelino algarte banhos, 1542'),
('michel morais', 'michel@email.com', '(16)99142-9898', 'rua josé flavio de castro, 1490');

insert into categorias (categoria, descricao)
values 
('eletrônicos', 'produtos como celulares, fones, computadores'),
('roupas', 'vestuário masculino, feminino e infantil'),
('acessórios', 'itens como bolsas, relógios e óculos'),
('eletrodomésticos', 'geladeira'),
('móveis', 'sofá');

insert into produtos (id_categoria, nome_produto, preco, vendas)
values 
(1, 'smartphone x100', 1999.90, 10),
(1, 'notebook pro', 3499.00, 5),
(2, 'camiseta básica', 49.90, 20),
(3, 'relógio digital', 129.90, 8),
(4,'geladeira eletrolux',1499.99,10);

insert into pedidos (id_cliente, data_pedido, status_pedido)
values 
(1, '2025-09-18', 'em processamento'),
(2, '2025-09-17', 'entregue'),
(3, '2025-09-16', 'cancelado'),
(4,'2025-08-08','a caminho'),
(5,'2025-10-23','entregue');

set sql_safe_updates= 0;

insert into itens_pedido (id_pedido, id_produto, quantidade, preco_unitario)
values 
(1, 1, 1, 1999.90),
(1, 3, 2, 49.90),
(2, 2, 1, 3499.00),
(3, 4, 1, 129.90),
(4, 5, 3, 1499.99);

insert into pagamentos (id_pedido, valor, metodo_pagamento, data_pagamento)
values 
(1, 2099.70, 'cartão', '2025-09-18'),
(2, 3499.00, 'boleto', '2025-09-17'),
(3, 129.90, 'pix', '2025-09-16'),
(4, 1499.99,'credito', '2025-10-10'),
(5,'1999.90', 'pix', '2025-9-9');

insert into fornecedores (nome_fornecedor, cnpj)
values 
('tech import', 12345678000199),
('moda brasil', 98765432000188),
('acessórios vip', 45678912000177),
('magazine luiza', 71786786287372),
('magazine luiza', 63125489748563);

insert into estoque (id_produto, quantidade, data_movimentacao, tipo_movimentacao)
values 
(1, 50, '2025-09-10', 'entrada'),
(2, 30, '2025-09-11', 'entrada'),
(3, 100, '2025-09-12', 'entrada'),
(4, 40, '2025-09-13', 'entrada'),
(5, 23, '2025-08-23', 'entrada');

insert into avaliacoes (id_cliente, id_produto, avaliacao, nota, data_avaliacao)
values 
(1, 1, 'excelente qualidade!', 5, '2025-09-19'),
(2, 3, 'produto bom, mas demorou a entrega', 3, '2025-09-18'),
(3, 4, 'muito bonito e funcional', 4, '2025-09-17'),
(4, 4, 'pessimo, demorou pra chegar', 2, '2025-05-27'),
(5, 4, 'chegou no prazo, muito bom', 4, '2025-09-17');


insert into carrinho (id_cliente, data_criacao)
values 
(1, '2025-09-18'),
(2, '2025-09-17'),
(3, '2025-09-16'),
(4, '2025-09-15'),
(5, '2025-09-14');

/*6. Junções entre Tabelas (JOINS): 
o Utilizar INNER JOIN, LEFT JOIN, RIGHT JOIN para combinar 
dados de tabelas relacionadas, como combinar clientes com seus 
pedidos, ou produtos com suas categorias. 
o Os alunos devem praticar como combinar tabelas para obter 
informações completas em uma única consulta.*/







/*clientes*/
-- Seleciona o nome do cliente e a data do pedido com status 'entregue'
select clientes.nome, pedidos.data_pedido  
from clientes  
inner join pedidos on clientes.id_cliente = pedidos.id_cliente  
where pedidos.status_pedido = 'entregue'	
-- Une com os clientes que criaram carrinho a partir de 17/09/2025
union
select clientes.nome, carrinho.data_criacao  
from clientes  
left join carrinho on clientes.id_cliente = carrinho.id_cliente  
where carrinho.data_criacao >= '2025-09-17';


-- Seleciona nome do cliente e nota de avaliação (nota maior ou igual a 4)
select clientes.nome, avaliacoes.nota  
from clientes  
right join avaliacoes on clientes.id_cliente = avaliacoes.id_cliente  
where avaliacoes.nota >= 4
-- Une com todos os clientes e todos os produtos
union
select clientes.nome, produtos.nome_produto  
from clientes  
cross join produtos;


-- Seleciona nome do cliente e valor do pagamento feito com cartão
select clientes.nome, pagamentos.valor  
from clientes  
inner join pedidos on clientes.id_cliente = pedidos.id_cliente  
inner join pagamentos on pedidos.id_pedido = pagamentos.id_pedido  
where pagamentos.metodo_pagamento = 'cartão';


-- Seleciona nome do cliente e quantidade de itens comprados (maior que 1)
select clientes.nome, itens_pedido.quantidade  
from clientes  
inner join pedidos on clientes.id_cliente = pedidos.id_cliente  
inner join itens_pedido on pedidos.id_pedido = itens_pedido.id_pedido  
where itens_pedido.quantidade > 1;



/*categorias*/

select categorias.categoria, produtos.nome_produto  
from categorias  
inner join produtos on categorias.id_categoria = produtos.id_categoria  
where produtos.vendas > 5
union
select categorias.categoria, produtos.nome_produto  
from categorias  
left join produtos on categorias.id_categoria = produtos.id_categoria  
where produtos.preco > 100;


select produtos.nome_produto, categorias.categoria  
from produtos  
right join categorias on produtos.id_categoria = categorias.id_categoria  
where categorias.categoria = 'roupas'
union
select categorias.categoria, fornecedores.nome_fornecedor  
from categorias  
cross join fornecedores;


select categorias.categoria, estoque.quantidade  
from categorias  
inner join produtos on categorias.id_categoria = produtos.id_categoria  
inner join estoque on produtos.id_produto = estoque.id_produto  
where estoque.tipo_movimentacao = 'entrada';


select categorias.categoria, avaliacoes.nota  
from categorias  
inner join produtos on categorias.id_categoria = produtos.id_categoria  
inner join avaliacoes on produtos.id_produto = avaliacoes.id_produto  
where avaliacoes.nota < 5;



/*produtos*/

select produtos.nome_produto, categorias.categoria  
from produtos  
inner join categorias on produtos.id_categoria = categorias.id_categoria  
where produtos.preco between 100 and 2000;


select produtos.nome_produto, estoque.quantidade  
from produtos  
left join estoque on produtos.id_produto = estoque.id_produto  
where estoque.quantidade < 50;


select itens_pedido.quantidade, produtos.nome_produto  
from itens_pedido  
right join produtos on itens_pedido.id_produto = produtos.id_produto  
where itens_pedido.quantidade = 1;


select produtos.nome_produto, pedidos.status_pedido  
from produtos  
cross join pedidos;


select produtos.nome_produto, avaliacoes.nota  
from produtos  
inner join avaliacoes on produtos.id_produto = avaliacoes.id_produto  
where avaliacoes.nota >= 4;


select produtos.nome_produto, pagamentos.metodo_pagamento  
from produtos  
inner join itens_pedido on produtos.id_produto = itens_pedido.id_produto  
inner join pedidos on itens_pedido.id_pedido = pedidos.id_pedido  
inner join pagamentos on pedidos.id_pedido = pagamentos.id_pedido  
where pagamentos.metodo_pagamento = 'pix';





/*fornecedores*/

select fornecedores.nome_fornecedor, produtos.nome_produto  
from fornecedores  
cross join produtos
union
select fornecedores.nome_fornecedor, categorias.categoria  
from fornecedores  
cross join categorias;


select fornecedores.nome_fornecedor, estoque.quantidade  
from fornecedores  
cross join estoque  
where estoque.quantidade > 30
union
select fornecedores.nome_fornecedor, pedidos.status_pedido  
from fornecedores  
cross join pedidos  
where pedidos.status_pedido = 'cancelado';


select fornecedores.nome_fornecedor, clientes.nome  
from fornecedores  
cross join clientes  
where clientes.nome like 'ana%';


select fornecedores.nome_fornecedor, avaliacoes.nota  
from fornecedores  
cross join avaliacoes  
where avaliacoes.nota >= 4;



/*estoque*/

select estoque.quantidade, produtos.nome_produto  
from estoque  
inner join produtos on estoque.id_produto = produtos.id_produto  
where estoque.tipo_movimentacao = 'entrada'
union
select estoque.quantidade, produtos.nome_produto  
from estoque  
left join produtos on estoque.id_produto = produtos.id_produto  
where produtos.preco > 100;


select produtos.nome_produto, estoque.quantidade  
from produtos  
right join estoque on produtos.id_produto = estoque.id_produto  
where estoque.data_movimentacao < '2025-09-13';


select estoque.quantidade, categorias.categoria  
from estoque  
cross join categorias
union
select estoque.quantidade, clientes.nome  
from estoque  
cross join clientes  
where clientes.endereco like '%rua%';


select estoque.quantidade, pedidos.status_pedido  
from estoque  
cross join pedidos  
where pedidos.status_pedido = 'em processamento';



/*pedidos*/

select pedidos.data_pedido, clientes.nome  
from pedidos  
inner join clientes on pedidos.id_cliente = clientes.id_cliente  
where pedidos.status_pedido = 'entregue';


select pedidos.data_pedido, pagamentos.valor  
from pedidos  
left join pagamentos on pedidos.id_pedido = pagamentos.id_pedido  
where pagamentos.metodo_pagamento = 'boleto';


select pagamentos.valor, pedidos.data_pedido  
from pagamentos  
right join pedidos on pagamentos.id_pedido = pedidos.id_pedido  
where pedidos.status_pedido = 'cancelado';


select pedidos.status_pedido, produtos.nome_produto  
from pedidos  
cross join produtos;


select pedidos.data_pedido, itens_pedido.quantidade  
from pedidos  
inner join itens_pedido on pedidos.id_pedido = itens_pedido.id_pedido  
where itens_pedido.quantidade > 1;


select pedidos.status_pedido, categorias.categoria  
from pedidos  
cross join categorias  
where categorias.categoria = 'acessórios';



/*itens_pedido*/

select itens_pedido.quantidade, produtos.nome_produto  
from itens_pedido  
inner join produtos on itens_pedido.id_produto = produtos.id_produto  
where produtos.preco > 100;


select itens_pedido.quantidade, pedidos.status_pedido  
from itens_pedido  
left join pedidos on itens_pedido.id_pedido = pedidos.id_pedido  
where pedidos.status_pedido = 'entregue';


select pedidos.status_pedido, itens_pedido.quantidade  
from pedidos  
right join itens_pedido on pedidos.id_pedido = itens_pedido.id_pedido  
where itens_pedido.quantidade = 1;



select itens_pedido.quantidade, categorias.categoria  
from itens_pedido  
cross join categorias;


select itens_pedido.quantidade, clientes.nome  
from itens_pedido  
cross join clientes  
where clientes.nome like '%lima';


select itens_pedido.quantidade, pagamentos.metodo_pagamento  
from itens_pedido  
cross join pagamentos  
where pagamentos.metodo_pagamento = 'pix';



/*pagamentos*/

select pagamentos.valor, pedidos.status_pedido  
from pagamentos  
inner join pedidos on pagamentos.id_pedido = pedidos.id_pedido  
where pagamentos.valor > 1000;


select pagamentos.valor, clientes.nome  
from pagamentos  
left join pedidos on pagamentos.id_pedido = pedidos.id_pedido  
left join clientes on pedidos.id_cliente = clientes.id_cliente  
where clientes.nome like 'carla%';


select pedidos.status_pedido, pagamentos.valor  
from pedidos  
right join pagamentos on pedidos.id_pedido = pagamentos.id_pedido  
where pagamentos.metodo_pagamento = 'cartão';


select pagamentos.metodo_pagamento, produtos.nome_produto  
from pagamentos  
cross join produtos  
where produtos.vendas > 5;


select pagamentos.valor, categorias.categoria  
from pagamentos  
cross join categorias  
where categorias.categoria = 'eletrônicos';


select pagamentos.valor, estoque.quantidade  
from pagamentos  
cross join estoque  
where estoque.tipo_movimentacao = 'entrada';


/*avaliacoes*/

select avaliacoes.nota, produtos.nome_produto
from avaliacoes
inner join produtos on avaliacoes.id_produto = produtos.id_produto
where avaliacoes.nota >=4;


select avaliacoes.nota, clientes.nome
from avaliacoes
left join clientes on avaliacoes.id_cliente=clientes.id_cliente
where clientes.nome like'ana%';


select clientes.nome, avaliacoes.nota
from clientes
right join avaliacoes on clientes.id_cliente = avaliacoes.id_cliente
where avaliacoes.nota<5;


select avaliacoes.nota, categorias.categoria
from avaliacoes
cross join categorias
where categorias.categoria = 'acessorios';


select avaliacoes.nota, pedidos.status_pedido
from avaliacoes
cross join pedidos;


select avaliacoes.nota, estoque.quantidade
from avaliacoes
cross join estoque
where estoque.quantidade > 20;



/*carrinho*/


select carrinho.data_criacao, clientes.nome
from carrinho
inner join clientes on carrinho.id_cliente= clientes.id_cliente
where clientes.nome like "joão%";


select carrinho.data_criacao, produtos.nome_produto
from carrinho
cross join produtos
where produtos.preco <2000;


select clientes.nome,carrinho.data_criacao
from clientes
inner join carrinho on clientes.id_cliente= carrinho.id_cliente
where carrinho.data_criacao = '2025-09-17';


select clientes.nome,carrinho.data_criacao
from clientes
right join carrinho on clientes.id_cliente= carrinho.id_cliente
where carrinho.data_criacao = '2025-09-17';


select carrinho.data_criacao, categorias.categoria
from carrinho
cross join categorias
where categorias.categoria = 'roupas';


select carrinho.data_criacao, pedidos.status_pedido
from carrinho
cross join pedidos
where pedidos.status_pedido = 'em processamento';



/*UPDATES*/

/*clientes*/
update clientes set nome = 'joão' where id_cliente = 2;
update clientes set nome = 'alexandre de moraes' where id_cliente = 4;
update clientes set nome = 'ana julia' where id_cliente = 1;


/*categorias*/
update categorias set descricao = 'produtos como celulares, computadores' where id_categoria = 1;
update categorias set descricao = 'vestuário masculino' where id_categoria = 2;
update categorias set descricao = 'geladeiras' where id_categoria = 4;


/*produtos*/
update produtos set nome_produto = 'iphone 12' where id_produto = 1;
update produtos set nome_produto = 'notebook acer nitro 5' where id_produto = 2;
update produtos set nome_produto = 'smartwatch' where id_produto = 4;


/*pedidos*/
update pedidos set status_pedido = 'entregue' where id_pedido = 4;
update pedidos set status_pedido = 'cancelado' where id_pedido = 1;
update pedidos set status_pedido = 'a caminho' where id_pedido = 3;



/*itens_pedido*/
update itens_pedido set preco_unitario = '2499.00' where id_item_pedido = 3;
update itens_pedido set preco_unitario = '40.00' where id_item_pedido = 2;
update itens_pedido set preco_unitario = '115.00' where id_item_pedido = 4;


/*pagamentos*/
update pagamentos set metodo_pagamento = 'fiado' where id_pagamento = 3;
update pagamentos set metodo_pagamento = 'pix' where id_pagamento = 1;
update pagamentos set metodo_pagamento = 'cartão' where id_pagamento = 2;


/*fornecedores*/
update fornecedores set nome_fornecedor = 'moda maxima' where id_fornecedor = 2;
update fornecedores set nome_fornecedor = 'Bless acessorios' where id_fornecedor = 3;
update fornecedores set nome_fornecedor = '3D informatica' where id_fornecedor = 2;


/*estoque*/
update estoque set quantidade = '25' where id_estoque = 2;
update estoque set quantidade = '0' where id_estoque = 5; 
update estoque set quantidade = '73' where id_estoque = 3;


/*avaliacao*/
update avaliacoes set avaliacao = 'péssimo' where id_avaliacao = 1;
update avaliacoes set avaliacao = 'muito bom' where id_avaliacao = 5;
update avaliacoes set avaliacao = 'produto bom' where id_avaliacao = 2;


/*carrinho*/
update carrinho set data_criacao = '2025-09-12' where id_carrinho = 4;
update carrinho set data_criacao = '2025-09-10' where id_carrinho = 1;
update carrinho set data_criacao = '2025-09-22' where id_carrinho = 5;




/*ALTER TABLE*/

alter table clientes modify 
	column endereco text;

alter table avaliacoes modify 
	column nota float;

alter table fornecedores modify 
	column cnpj varchar(14);

alter table pedidos modify 
	column data_pedido datetime default current_timestamp;



/*group by*/


select id_cliente, count(*) as pedidos
	from pedidos
    group by id_cliente
    having count(*) >  0;


select id_produto, count(*) as estoque
	from estoque
    group by id_produto
    having count(*) >  50;
    

select id_cliente, count(*) as avaliacoes
	from avaliacoes
    group by id_cliente
    having count(*) >  0;


select id_produto, count(*) as avaliacoes
	from avaliacoes
    group by id_produto
    having count(*) >  0;
    

select id_categoria, count(*) as produto
	from produtos
    group by id_categoria
    having count(*) >  0;
    
    
select id_produto, count(*) as total_avaliacoes, avg(nota) as media_nota
	from avaliacoes
	group by id_produto
	order by media_nota desc;


select id_categoria, count(*) as produto
	from produtos
	group by id_categoria
	having count(*) > 0;


select status_pedido, count(*) as total_pedidos
	from pedidos
	group by status_pedido
	having count(*) > 1;


select id_produto, sum(vendas) as total_vendas
	from produtos
	group by id_produto
	having sum(vendas) > 5;
