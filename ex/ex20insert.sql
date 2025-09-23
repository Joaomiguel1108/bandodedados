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
    email varchar(30) unique,
    telefone varchar(30),
    endereco varchar(200)
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
		on update cascade on delete set null
);


create table fornecedores (
    id_fornecedor int primary key auto_increment,
    nome_fornecedor varchar(30),
    cnpj bigint
);


create table estoque (
    id_estoque int primary key auto_increment,
    id_produto int,
    quantidade int default 0,
    data_movimentacao date,
    tipo_movimentacao enum('entrada', 'saida'),
    foreign key (id_produto) references produtos(id_produto)
);


create table pedidos (
    id_pedido int primary key auto_increment,
    id_cliente int,
    data_pedido date,
    status_pedido enum('Pendente','Pago','Enviado','Entregue','Cancelado') default 'Pendente',
    foreign key (id_cliente) references clientes(id_cliente)
		on update cascade on delete cascade 
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


/*5. Consultas Agregadas (COUNT, SUM, AVG, MIN, MAX): 
o Contabilizar o número de pedidos feitos por um cliente, somar o 
total de vendas de um produto, calcular a média de avaliação de 
um produto, encontrar o produto mais caro ou o mais barato de 
uma categoria. */


/*6. Junções entre Tabelas (JOINS): 
o Utilizar INNER JOIN, LEFT JOIN, RIGHT JOIN para combinar 
dados de tabelas relacionadas, como combinar clientes com seus 
pedidos, ou produtos com suas categorias. 
o Os alunos devem praticar como combinar tabelas para obter 
informações completas em uma única consulta.*/




/**/
/**/

































