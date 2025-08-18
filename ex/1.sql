create database cadastro;

use cadastro;

create table pessoas(
	
	nome varchar(30),
    idade int,
    sexo char(1),
    altura float,
    nacionalidade varchar(20)
);


/*1*/

create database Livraria;

use Livraria;

create table Livros(
	Livro varchar(30),
    preço float,
    autor varchar(30),
    editora varchar (30)

);

create table autores(

	Nome varchar(30),
    Nacionalidade varchar(10)
);

create table Editoras(
	
	nome varchar(30),
    telefone varchar(30)
);

describe Livros;

/*2*/

create database Petshop;

use Petshop;

create table animais(
	Animal varchar(30),
    Nome varchar(30),
    especie varchar(30),
    idade varchar(30),
    cliente varchar(30)
);

create table clientes(
	Nome varchar(30),
    Telefone int(30)

);

create table serviços(
	serviço varchar(30),
    preço float,
    descrição varchar(30)
);

/*3*/

create database Escolaidiomas;

use Escolaidiomas;

create table Aluno(
	Nome varchar(30),
	Email varchar(30)
);

create table Professores(
	Nome varchar(30),
    Especialidade varchar(30)

);

create table cursos(
	Curso varchar(30),
    carga_horaria varchar(30)
);

/*4*/

create database Academia;

use Academia;

create table alunos(
	nome varchar(30),
    idade int
);

create table planos(
	preço float,
    descrição varchar(30),
	plano varchar(30)

);

create table instrutores(
	Nome varchar(30),
    especialidade varchar(30)
);

/*5*/

create database Hospital;

use Hospital;

create table pacientes(
	nome varchar(30),
    data_nascimento int
);  

create table medicos(
	nome varchar(30),
    especialidade varchar(30)
);

create table consultas(
	consulta varchar(30),
    medico varchar(30),
    data_consulta int,
    paciente varchar(30)
);

/*6 Crie um banco de dados chamado Supermercado. Crie três tabelas: 
Clientes (cliente, nome, telefone), Produtos (produto, nome, preco) e 
Vendas (venda, cliente, produto, data_venda).*/

create database supermercado;

use supermercado;

create table clientes(
	nome varchar(30),
    telefone int
);

create table produtos(
	produto varchar(30),
    nome varchar(30),
    preço float
);

create table vendas(
	vendas int,
    cliente varchar(30),
    produto varchar(30),
    data_venta int
);


/*7 Crie um banco de dados chamado LojaRoupas. Crie três tabelas: 
Produtos (produto, nome, preco, quantidade_estoque), Fornecedores 
(fornecedor, nome, telefone) e Estoque (estoque, produto, quantidade). */

create database lojaroupas;

use lojaroupas;

create table produtos(
	nome varchar(30),
    preço float
);

create table fornecedores(
	nome varchar(30),
    telefone int
);

create table estoque(
	estoque int,
    produto varchar(30),
    quantidade int
);

/*8Crie um banco de dados chamado Padaria. Crie três tabelas: Produtos 
(produto, nome, preco), Funcionarios (funcionario, nome, funcao) e 
Vendas (venda, produto, funcionario, data_venda)*/



create database padaria;

use padaria;

create table produtos(
	nome varchar(30),
    preço float
);

create table funcionario(
	nome varchar(30),
    função varchar(30)
);

create table vendas(
	vendas int,
    produto varchar(30),
    funcionario varchar(30),
    data_venda int
);


/*9 Crie um banco de dados chamado Farmacia. Crie três tabelas: Produtos 
(produto, nome, preco), Clientes (cliente, nome, telefone) e Vendas 
(venda, cliente, produto, data_venda).*/


create database farmacia;

use farmacia;

create table produtos(
	nome varchar(30),
    preço float
);

create table clientes(
	nome varchar(30),
    telefone int
);

create table vendas(
	vendas int,
    cliente varchar(30),
    produto varchar(30),
    data_venda int
);

/*10 Crie um banco de dados chamado Biblioteca. Crie três tabelas: Livros 
(livro, titulo, autor), Autores (autor, nome, nacionalidade) e Emprestimos 
(emprestimo, livro, usuario, data_emprestimo). */

create database biblioteca;

use biblioteca;

create table livros(
	titulo varchar(30),
	autor varchar (30)
);

create table autores(
	nome varchar(30),
    nacionalidade varchar(30)
);

create table emprestimos(
	emprestimos int,
    livro varchar(30),
    usuario varchar(30),
    data_emprestimo int
);

/*11Crie um banco de dados chamado Universidade. Crie três tabelas: Cursos 
(curso, nome, carga_horaria), Alunos (aluno, nome, email) e Matriculas 
(matricula, aluno, curso, data_matricula). */


create database universidade;

use universidade;

create table cursos(
	nome varchar(30),
    carga_horaria int

);

create table alunos(
	nome varchar(30),
    email varchar(30)
);

create table matriculas(
	matricula int,
    aluno varchar(30),
    curso varchar(30),
    data_matricula int
);

/*12 . Crie um banco de dados chamado ClinicaMedica. Crie três tabelas: 
Pacientes (paciente, nome, telefone), Medicos (medico, nome, 
especialidade) e Consultas (consulta, paciente, medico, data_consulta). */

create database clinicamedica;

use clinicamedica;

create table pacientes(
	nome varchar(30),
    telefone int
);

create table medicos(
	nome varchar(30),
    especialidade varchar(30)
);

create table consultas(
	consulta int,
    medico varchar(30),
    data_consulta int
);

/*13 Crie um banco de dados chamado SalaoBeleza. Crie três tabelas: 
Clientes (cliente, nome, telefone), Servicos (servico, descricao, preco) e 
Agendamentos (agendamento, cliente, servico, data_agendamento).*/

create database salaobeleza;

use salaobeleza;

create table clientes(
	nome varchar(30),
    telefone int

);

create table servicos(
	serviço varchar(30),
    descrição varchar(30),
    preço float

);

create table agendamentos(
	agendamento int,
    cliente varchar(30),
    servico varchar(30),
    data_agendamentos int
);

/*14 Crie um banco de dados chamado LocadoraCarros. Crie três tabelas: 
Veiculos (veiculo, modelo, placa), Clientes (cliente, nome, telefone) e 
Reservas (reserva, cliente, veiculo, data_reserva).*/

create database locadoracarros;

use locadoracarros;

create table veiculos(
	veiculo varchar(30),
    modelo varchar(30),
    placa varchar(7)
);

create table clientes(
	nome varchar(30),
    telefone int
);

create table reservas(
	reserva int,
    cliente varchar(30),
    veiculo varchar(30),
    data_reserva int
);

/*15 Crie um banco de dados chamado LocadoraFilmes. Crie três tabelas: 
Filmes (filme, titulo, genero), Clientes (cliente, nome, telefone) e Locacoes 
(locacao, cliente, filme, data_locacao).*/

create database locadorafilmes;

use locadorafilmes;

create table filmes(
	titulo varchar(30),
    genero varchar(30)
);

create table clientes(
	nome varchar(30),
    telefone varchar (30)
);

create table locações(
	cliente varchar(30),
    filme varchar(30),
    data_locação int
);



/*16 Crie um banco de dados chamado OficinaMecanica. Crie três tabelas: 
Clientes (cliente, nome, telefone), Veiculos (veiculo, modelo, placa, 
cliente) e Servicos (servico, descricao, preco). 
*/

create database oficinamecanica;

use oficinamecanica;

create table clientes(
	nome varchar(30),
    telefone int
);

create table veiculos(
	veiculos varchar(30),
    modelo varchar(30),
    placa varchar(8),
    cliente varchar(30)
);

create table servicos(
	servico varchar(30),
    descricao varchar(30),
    preco varchar(30)
);

insert into clientes
(nome, telefone)
values ('joão miguel', '991429898');


insert into veiculos(veiculos, modelo, placa, cliente)
values ( 'chevrolet', 'prisma', 'FLB8481', 'joão miguel');

insert into servicos
(servico, descricao, preco)
values ('lava jato', 'limpar','100');


describe clientes;

/*17 Crie um banco de dados chamado Hotel. Crie três tabelas: Hospedes 
(hospede, nome, telefone), Quartos (quarto, numero, tipo) e Reservas 
(reserva, hospede, quarto, data_entrada, data_saida). */

create database Hotel;

use Hotel;

create table hospedes(
	nome varchar(30),
    telefone int
);

create table quartos(
	quarto varchar(5),
    numero int,
    tipo varchar(30)
);

create table reservas(
	reserva varchar(30),
    hospede varchar(30),
    quarto varchar(5),
    data_entrada int,
    data_saida int
);


/*18Crie um banco de dados chamado Restaurante. Crie três tabelas: Clientes
(cliente, nome, telefone), Pratos (prato, nome, preco) e Pedidos (pedido,
cliente, prato, data_pedido)*/


create database restaurante;

use restaurante;

create table clientes(
	cliente varchar(30),
    nome varchar(30),
    telefone int


);

create table pratos(
	nome varchar(30),
    preco float
    );
    
create table pedidos(

	pedido int,
    cliente varchar(30),
    prato varchar(30),
    data_pedido int
    
    );
    
    
/*19Crie um banco de dados chamado Transportadora. Crie três tabelas:
Motoristas (motorista, nome, cnh), Veiculos (veiculo, placa, modelo) e
Entregas (entrega, motorista, veiculo, data_entrega).*/
create database transportadora;
    
use transportadora;

create table motoristas(
	nome varchar(30),
    cnh int
    );
    
create table veiculos(

	veiculo varchar(15),
    placa varchar(8),
    modelo varchar(10)
    
    );
    
create table entregas(
	entrega int,
    motorista varchar(30),
    veiculo varchar(15),
    data_entrega int
    
    );


/*20.Crie um banco de dados chamado AgenciaViagens. Crie três tabelas:
Clientes (cliente, nome, telefone), Pacotes (pacote, destino, preco) e
Reservas (reserva, cliente, pacote, data_reserva)*/

create database agenciaviagens;

use agenciaviagens;

create table clientes(
	nome varchar(30),
    telefone int
    );
    
create table pacotes(
	pacote int,
    destino varchar(30),
    preço float
    );
create table reservas(
	reserva int,
    cliente varchar(30),
    pacote int,
    data_reserva int);



















