/*O Hospital São João está organizando suas informações em um sistema digital. 
O hospital possui cinco tabelas principais para gerenciar os dados dos pacientes, 
médicos, especialidades, atendimentos e prescrições. 
O diretor de TI do hospital solicitou algumas informações para melhorar o 
planejamento e o gerenciamento da unidade. Ele precisa das seguintes listas: 
1. Pacientes com Atendimentos: Ele quer saber o nome de cada paciente 
que passou por algum atendimento e quais médicos o atenderam. 
2. Todos os Pacientes: Ele quer uma lista completa de todos os pacientes, 
incluindo os atendimentos que receberam e deixar claro quando algum 
paciente não passou por nenhum atendimento. 
3. Médicos e Pacientes: Ele quer saber quais médicos atenderam quais 
pacientes. Caso algum médico não tenha realizado atendimentos, isso 
deve ser evidenciado. 
4. Pacientes e Prescrições: O diretor gostaria de ver a lista de todos os 
pacientes e as prescrições médicas feitas durante os atendimentos. 
5. Especialidades e Médicos: Ele quer saber quais médicos estão 
alocados em quais especialidades. */

CREATE DATABASE hospital;
USE hospital;

CREATE TABLE pacientes (
    id_paciente INT PRIMARY KEY,
    nome VARCHAR(100),
    data_nascimento DATE,
    endereco VARCHAR(150)
);

CREATE TABLE medicos (
    id_medico INT PRIMARY KEY,
    nome_medico VARCHAR(100),
    id_especialidade INT
);

CREATE TABLE especialidades (
    id_especialidade INT PRIMARY KEY,
    nome_especialidade VARCHAR(100)
);

CREATE TABLE atendimentos (
    id_atendimento INT PRIMARY KEY,
    id_paciente INT,
    id_medico INT,
    data_atendimento DATE,
    tipo_atendimento VARCHAR(50),
    FOREIGN KEY (id_paciente) REFERENCES pacientes(id_paciente),
    FOREIGN KEY (id_medico) REFERENCES medicos(id_medico)
);

CREATE TABLE prescricoes (
    id_prescricao INT PRIMARY KEY,
    id_atendimento INT,
    medicamento VARCHAR(100),
    dosagem VARCHAR(50),
    FOREIGN KEY (id_atendimento) REFERENCES atendimentos(id_atendimento)
);

INSERT INTO prescricoes VALUES
(1, 1, 'Paracetamol', '500mg'),
(2, 2, 'Amoxicilina', '250mg'),
(3, 3, 'Ibuprofeno', '400mg'),
(4, 4, 'Dipirona', '500mg');

INSERT INTO atendimentos VALUES
(1, 1, 1, '2023-06-10', 'Emergência'),
(2, 2, 2, '2023-07-01', 'Consulta'),
(3, 3, 3, '2023-05-15', 'Emergência'),
(4, 4, 4, '2023-08-20', 'Consulta');

INSERT INTO especialidades VALUES
(1, 'Cardiologia'),
(2, 'Pediatria'),
(3, 'Ortopedia');

INSERT INTO medicos VALUES
(1, 'Dr. Marcos Pereira', 1),
(2, 'Dr. Ana Souza', 2),
(3, 'Dr. Beatriz Lima', 3),
(4, 'Dr. Carlos Silva', 1),
(5, 'Dr. Paula Fernandes', 2);

INSERT INTO pacientes VALUES
(1, 'João Silva', '1985-03-20', 'Rua A, 123, São Paulo'),
(2, 'Maria Oliveira', '1990-07-15', 'Rua B, 456, Rio de Janeiro'),
(3, 'Pedro Santos', '1982-11-05', 'Rua C, 789, Belo Horizonte'),
(4, 'Ana Costa', '1995-02-28', 'Rua D, 101, Curitiba');




/* Pacientes com Atendimentos: 
o Objetivo: Listar o nome de cada paciente que passou por algum 
atendimento e quais médicos o atenderam. 
o Resultado Esperado: Nome dos pacientes junto com os médicos 
que realizaram os atendimentos.*/


SELECT 
    p.nome AS nome_paciente,
    m.nome_medico AS medico_responsavel
FROM 
    atendimentos a
JOIN 
    pacientes p ON a.id_paciente = p.id_paciente
JOIN 
    medicos m ON a.id_medico = m.id_medico;



/*Todos os Pacientes: 
o Objetivo: Mostrar uma lista completa de todos os pacientes, 
incluindo os atendimentos que receberam. Caso algum paciente 
não tenha passado por nenhum atendimento, isso deve ser 
deixado claro. 
o Resultado Esperado: Lista completa de pacientes com os 
atendimentos registrados. Para os pacientes sem atendimento, 
mostrar "Nenhum atendimento" no campo.*/




SELECT 
    p.nome AS nome_paciente,
    IFNULL(a.tipo_atendimento, 'Nenhum atendimento') AS tipo_atendimento,
    IFNULL(m.nome_medico, 'Nenhum médico') AS medico_responsavel
FROM 
    pacientes p
LEFT JOIN 
    atendimentos a ON p.id_paciente = a.id_paciente
LEFT JOIN 
    medicos m ON a.id_medico = m.id_medico;

/*3. Médicos e Pacientes: 
o Objetivo: Mostrar quais médicos atenderam quais pacientes. Caso 
algum médico não tenha realizado atendimentos, isso deve ser 
evidenciado. 
o Resultado Esperado: Nome dos médicos com a lista de pacientes 
atendidos. Se o médico não tiver atendimentos registrados, 
mostrar "Nenhum paciente atendido".*/



SELECT 
    m.nome_medico,
    IFNULL(p.nome, 'Nenhum paciente atendido') AS nome_paciente
FROM 
    medicos m
LEFT JOIN 
    atendimentos a ON m.id_medico = a.id_medico
LEFT JOIN 
    pacientes p ON a.id_paciente = p.id_paciente;


/*4. Pacientes e Prescrições: 
o Objetivo: Mostrar a lista de todos os pacientes e as prescrições 
médicas feitas durante os atendimentos. 
o Resultado Esperado: Nome dos pacientes com as prescrições 
feitas para cada um durante o atendimento. Caso não tenha 
prescrições, o campo de medicamento deve ser deixado em 
branco ou mostrar "Sem prescrição". */


SELECT 
    p.nome AS nome_paciente,
    IFNULL(pr.medicamento, 'Sem prescrição') AS medicamento,
    IFNULL(pr.dosagem, '') AS dosagem
FROM 
    atendimentos a
JOIN 
    pacientes p ON a.id_paciente = p.id_paciente
LEFT JOIN 
    prescricoes pr ON a.id_atendimento = pr.id_atendimento;



/*. Especialidades e Médicos: 
o Objetivo: Mostrar quais médicos estão alocados em quais 
especialidades médicas. 
o Resultado Esperado: Nome das especialidades com os médicos 
que estão alocados nelas. Caso alguma especialidade não tenha 
médicos alocados, isso deve ser evidenciado.*/




SELECT 
    e.nome_especialidade,
    IFNULL(m.nome_medico, 'Nenhum médico alocado') AS nome_medico
FROM 
    especialidades e
LEFT JOIN 
    medicos m ON e.id_especialidade = m.id_especialidade;





























































