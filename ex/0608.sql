/*Exercício 1 
Tabela: pessoas(id, nome, profissao, idade) 
Tarefa: Renomeie a coluna profissao para prof. */


create database pessoa
default character set utf8mb4
default collate utf8mb4_0900_ai_ci;

use pessoa;

create table pessoas(
id int not null auto_increment,
nome varchar(30) not null,
profissao varchar(30) not null,
idade int not null,
primary key(id)
)default charset = utf8mb4;

alter table pessoas
	change column profissao prof varchar(30);
    
    
    
    
/*Exercício 2 
Tabela: clientes(id, nome, email, telefone) 
Tarefa: Renomeie a coluna telefone para contato_telefone.*/    
    
create database loja
default character set utf8mb4
default collate utf8mb4_0900_ai_ci;

use loja;

create table clientes(
id int not null auto_increment,
nome varchar(30) not null,
email varchar(30) not null,
telefone int not null,
primary key(id)
)default charset = utf8mb4;

alter table clientes
	change column telefone contato_telefone varchar(30);	
    
/*Exercício 3 
Tabela: produtos(id, nome_produto, preco, estoque) 
Tarefa: Renomeie a coluna nome_produto para descricao. */    
    

create database loja
default character set utf8mb4
default collate utf8mb4_0900_ai_ci;

use loja;

create table produtos(
id int not null auto_increment,
nome_produto varchar(30) not null,
preço float not null,
estoque int not null,
primary key(id)
)default charset = utf8mb4;

alter table produtos
	change column nome_produto descricao varchar(30);	
        
/*xercício 4 
Tabela: alunos(id, nome, idade, genero) 
Tarefa: Renomeie a coluna genero para sexo. */
    
create database escola
default character set utf8mb4
default collate utf8mb4_0900_ai_ci;

use escola;

create table alunos(
id int not null auto_increment,
nome varchar(30) not null,
idade int not null,
genero int not null,
primary key(id)
)default charset = utf8mb4;

alter table alunos
	change column genero sexo varchar(30);	    
    
    
/*xercício 5 
Tabela: funcionarios(id, nome, salario, departamento) 
Tarefa: Renomeie a coluna departamento para setor. */    

create database loja
default character set utf8mb4
default collate utf8mb4_0900_ai_ci;

use loja;

create table funcionarios(
id int not null auto_increment,
nome varchar(30) not null,
salario float not null,
departamento varchar(30) not null,
primary key(id)
)default charset = utf8mb4;

alter table funcionarios
	change column departamento setor varchar(30);	
    
/*Exercício 6 
Tabela: vendas(id, data_venda, valor_total) 
Tarefa: Renomeie a coluna valor_total para total_venda. */
    
create database loja
default character set utf8mb4
default collate utf8mb4_0900_ai_ci;

use loja;

create table vendas(
id int not null auto_increment,
data_venda varchar(30) not null,
valor_total float not null,
primary key(id)
)default charset = utf8mb4;

alter table vendas
	change column valor_total total_venda varchar(30);	
    
    
    
/*xercício 7 
Tabela: livros(id, titulo, autor, ano_publicacao) 
Tarefa: Renomeie a coluna ano_publicacao para ano_lancamento.*/
    
    
create database biblioteca
default character set utf8mb4
default collate utf8mb4_0900_ai_ci;

use biblioteca;

create table livros(
id int not null auto_increment,
titulo varchar(30) not null,
autor varchar(30) not null,
ano_publicacao varchar(4) not null,
primary key(id)
)default charset = utf8mb4;

alter table livros
	change column ano_publicacao ano_lancamento varchar(30);	    


/*Exercício 8 
Tabela: usuarios(id, usuario, senha, email) 
Tarefa: Renomeie a coluna usuario para login*/

create database site
default character set utf8mb4
default collate utf8mb4_0900_ai_ci;

use site;

create table usuarios(
id int not null auto_increment,
usuario varchar(30) not null,
senha varchar(30) not null,
email varchar(4) not null,
primary key(id)
)default charset = utf8mb4;

alter table usuarios
	change column usuario login varchar(30);	    


/*Exercício 9 
Tabela: pacientes(id, nome, nascimento, cpf) 
Tarefa: Renomeie a coluna nascimento para data_nascimento. */

create database hospital
default character set utf8mb4
default collate utf8mb4_0900_ai_ci;

use hospital;

create table pacientes(
id int not null auto_increment,
nome varchar(30) not null,
nascimento varchar(30) not null,
cpf varchar(30) not null,
primary key(id)
)default charset = utf8mb4;

alter table pacientes
	change column nascimento data_nascimento varchar(30);	    

/*Exercício 10 
Tabela: carros(id, modelo, cor, ano) 
Tarefa: Renomeie a coluna ano para ano_fabricacao. */
    
    
create database loja_carro
default character set utf8mb4
default collate utf8mb4_0900_ai_ci;

use loja_carro;

create table carros(
id int not null auto_increment,
modelo varchar(30) not null,
cor varchar(30) not null,
ano varchar(4) not null,
primary key(id)
)default charset = utf8mb4;

alter table carros
	change column ano ano_fabricacao varchar(30);	
    
/*xercício 11 
Tabela: enderecos(id, rua, numero, cidade) 
Tarefa: Renomeie a coluna numero para num.*/

create database casas
default character set utf8mb4
default collate utf8mb4_0900_ai_ci;

use casas;

create table enderecos(
id int not null auto_increment,
rua varchar(30) not null,
numero int not null,
cidade varchar(4) not null,
primary key(id)
)default charset = utf8mb4;

alter table enderecos
	change column numero num int;	    
    
/*Exercício 12 
Tabela: pedidos(id, cliente_id, data, total) 
Tarefa: Renomeie a coluna data para data_pedido.*/

create database loja
default character set utf8mb4
default collate utf8mb4_0900_ai_ci;

use loja;

create table pedidos(
id int not null auto_increment,
cliente_id varchar(30) not null,
dataa varchar(30) not null,
total varchar(30) not null,
primary key(id)
)default charset = utf8mb4;

alter table pedidos
	change column dataa data_pedido int;	    
    
/*Exercício 13 
Tabela: notas(id, aluno_id, disciplina, nota_final) 
Tarefa: Renomeie a coluna nota_final para media. */

create database escola
default character set utf8mb4
default collate utf8mb4_0900_ai_ci;

use escola;

create table notas(
id int not null auto_increment,
aluno_id varchar(30) not null,
diciplina varchar(30) not null,
nota_final int not null,
primary key(id)
)default charset = utf8mb4;

alter table notas
	change column nota_final media int;	    
    
/*Exercício 14 
Tabela: turmas(id, nome_turma, ano_letivo) 
Tarefa: Renomeie a coluna nome_turma para turma. */
    
create database escola
default character set utf8mb4
default collate utf8mb4_0900_ai_ci;

use escola;

create table turmas(
id int not null auto_increment,
nome_turma varchar(30) not null,
ano_letivo int not null,
primary key(id)
)default charset = utf8mb4;

alter table turmas
	change column nome_turma turma int;	 
    
/*xercício 15 
Tabela: fornecedores(id, razao_social, cnpj) 
Tarefa: Renomeie a coluna razao_social para nome_empresa. */
    
create database loja
default character set utf8mb4
default collate utf8mb4_0900_ai_ci;

use loja;

create table fornecedores(
id int not null auto_increment,
razao_social varchar(30) not null,
cnpj int not null,
primary key(id)
)default charset = utf8mb4;

alter table fornecedores
	change column razao_social nome_empresa varchar(30);	 



/*xercício 16 
Tabela: pagamentos(id, valor, data_pagamento) 
Tarefa: Renomeie a coluna data_pagamento para pagamento_em.*/

create database loja
default character set utf8mb4
default collate utf8mb4_0900_ai_ci;

use loja;

create table pagamento(
id int not null auto_increment,
valor varchar(30) not null,
data_pagamento int not null,
primary key(id)
)default charset = utf8mb4;

alter table pagamento
	change column data_pagamento pagamento_em varchar(30);	
    


/*xercício 17 
Tabela: avaliacoes(id, comentario, nota) 
Tarefa: Renomeie a coluna nota para pontuacao. */
    
create database escola
default character set utf8mb4
default collate utf8mb4_0900_ai_ci;

use escola;

create table avaliacoes(
id int not null auto_increment,
comentario varchar(30) not null,
nota int not null,
primary key(id)
)default charset = utf8mb4;

alter table avaliacoes
	change column nota pontuacao int;	
    
    
    
/*xercício 18 
Tabela: eventos(id, nome_evento, data_evento) 
Tarefa: Renomeie a coluna nome_evento para titulo*/
    
create database empresa
default character set utf8mb4
default collate utf8mb4_0900_ai_ci;

use empresa;

create table eventos(
id int not null auto_increment,
nome_evento varchar(30) not null,
data_evento varchar(15) not null,
primary key(id)
)default charset = utf8mb4;

alter table eventos
	change column nome_evento titulo int;	
    
    
/*xercício 19 
Tabela: empresas(id, nome, setor, funcionarios) 
Tarefa: Renomeie a coluna funcionarios para num_funcionarios. */
    
    
create database cidade
default character set utf8mb4
default collate utf8mb4_0900_ai_ci;

use cidade;

create table empresas(
id int not null auto_increment,
nome varchar(30) not null,
setor varchar(15) not null,
funcionarios varchar(15) not null,
primary key(id)
)default charset = utf8mb4;

alter table empresas
	change column funcionarios num_funcionarios int;	    
    
    
/*xercício 20 
Tabela: disciplinas(id, nome_disciplina, professor) 
Tarefa: Renomeie a coluna nome_disciplina para disciplina.*/

create database escola
default character set utf8mb4
default collate utf8mb4_0900_ai_ci;

use escola;

create table diciplinas(
id int not null auto_increment,
nome_diciplina varchar(30) not null,
professor varchar(30) not null,
primary key(id)
)default charset = utf8mb4;

alter table diciplinas
	change column nome_diciplina diciplina int;


/*xercício 21 
Tabela: chamados(id, cliente, problema, status) 
Tarefa: Renomeie a coluna status para situacao. */

create database empresa
default character set utf8mb4
default collate utf8mb4_0900_ai_ci;

use empresa;

create table chamados(
id int not null auto_increment,
cliente varchar(30) not null,
problema varchar(30) not null,
statuss varchar(30) not null,
primary key(id)
)default charset = utf8mb4;

alter table chamados
	change column statuss situacao int;


/*Tabela: mensagens(id, remetente, destinatario, conteudo) 
Tarefa: Renomeie a coluna conteudo para mensagem. */

create database correio
default character set utf8mb4
default collate utf8mb4_0900_ai_ci;

use correio;

create table mensagens(
id int not null auto_increment,
remetente varchar(30) not null,
destinatario varchar(30) not null,
conteudo varchar(30) not null,
primary key(id)
)default charset = utf8mb4;

alter table mensagens
	change column conteudo mensagem int;
    
/*Exercício 23 
Tabela: tarefas(id, titulo, descricao, concluida) 
Tarefa: Renomeie a coluna concluida para finalizada. */


create database casa
default character set utf8mb4
default collate utf8mb4_0900_ai_ci;

use casa;

create table tarefas(
id int not null auto_increment,
titulo varchar(30) not null,
descricao varchar(30) not null,
concluida varchar(30) not null,
primary key(id)
)default charset = utf8mb4;

alter table tarefas
	change column concluida finalizada int;
    
    
/*Exercício 24 
Tabela: reunioes(id, data_reuniao, local) 
Tarefa: Renomeie a coluna local para sala. */   

create database empresa
default character set utf8mb4
default collate utf8mb4_0900_ai_ci;

use empresa;

create table reunioes(
id int not null auto_increment,
data_reuniao varchar(30) not null,
locall varchar(30) not null,
primary key(id)
)default charset = utf8mb4;

alter table reunioes
	change column locall sala int;
    
/*Exercício 25 
Tabela: cadastros(id, nome, email, criado_em) 
Tarefa: Renomeie a coluna criado_em para data_criacao. */

create database secretaria
default character set utf8mb4
default collate utf8mb4_0900_ai_ci;

use secretaria;

create table cadastos(
id int not null auto_increment,
nome varchar(30) not null,
email varchar(30) not null,
criado_em varchar(30) not null,
primary key(id)
)default charset = utf8mb4;

alter table cadastos
	change column criado_em data_criacao int;



































    
    
