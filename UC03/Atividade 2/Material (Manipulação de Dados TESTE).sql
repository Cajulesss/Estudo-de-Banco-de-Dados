DROP DATABASE IF EXISTS senac_ead;

CREATE DATABASE senac_ead;
USE senac_ead;

CREATE TABLE curso (
id int AUTO_INCREMENT,
nome varchar(150),
descricao text,
PRIMARY KEY (id)
);

CREATE TABLE aluno (
id int AUTO_INCREMENT,
nome varchar(30),
sobrenome varchar(30),
data_nascimento date,
curso_id int,
PRIMARY KEY (id),
FOREIGN KEY (curso_id) REFERENCES curso(id)
);

SELECT * FROM senac_ead;
INSERT INTO curso VALUES (
1,
'Técnico em Desenvolvimento de Sistemas',
'Prepara o aluno para exercer funções técnicas, como: administração do sistema de banco de dados, desenvolver software, programar rotinas de sistema utilizando linguagens e técnicas de programação, programação de sistemas para desktop e para web, entre outras atividades.'
);
SELECT * FROM curso;

/*Inserindo dados na tabela curso*/ 
INSERT INTO curso(nome) VALUES ('Técnico em Informática para Internet'); 
SELECT * FROM curso;

INSERT INTO curso (nome) VALUES
('Técnico em Administração'),
('Técnico em Contabilidade'),
('Técnico em Design de Interiores');
SELECT * FROM curso;

/*Inserindo dados na tabela aluno*/
INSERT INTO aluno (nome, sobrenome, data_nascimento) VALUES ('Alice', 'Gonçalves', '1998-10-18');
SELECT * FROM aluno;

INSERT INTO aluno (nome, sobrenome, data_nascimento) VALUES ('Eduardo', 'Machado', '98-07-16');
SELECT * FROM aluno;

INSERT INTO aluno (nome, sobrenome, data_nascimento) VALUES ('Vitória', 'Prestes', '1997-2-15');
SELECT * FROM aluno;

/*Inserção de registros com chave estrangeira*/
INSERT INTO aluno (nome, curso_id) VALUES ('Alex', 1); 
SELECT * FROM aluno;

/*Atualizar uma única coluna*/
UPDATE aluno SET curso_id = 2 WHERE id = 2;
SELECT * FROM aluno;

/*solicitar alteração em todos os registros cujo nome iniciem com a letra “A”, ou em todos os alunos nascidos após 1998. As cláusulas ficariam como a seguir, respectivamente:
UPDATE aluno SET curso_id = 2 WHERE nome LIKE 'A%';
UPDATE aluno SET curso_id = 2 WHERE data_nascimento >= '1998-01-01';
*/

/*Atualizar várias colunas*/
UPDATE aluno SET sobrenome = 'Ferreira', data_nascimento = '1983-09-15' WHERE id = 4;
SELECT * FROM aluno;

/*Atualizar todos os registros*/
UPDATE curso SET descricao = 'Em breve...' WHERE id = 2 OR id = 3 OR id = 4;
SELECT * FROM curso;

/*Exclusão simples*/
DELETE FROM curso WHERE id = 5;
SELECT * FROM curso;

/*Exclusão utilizando duas condições:

Este é um exemplo que utiliza duas condições na cláusula WHERE com a cláusula AND.
DELETE FROM aluno WHERE nome = 'Alice' AND id = 1; SELECT * FROM aluno;

Este é um exemplo que usa duas condições na cláusula WHERE com a cláusula OR.
DELETE FROM aluno WHERE nome = 'Alice' OR id = 1;
SELECT * FROM aluno;
*/

/*Preservando registro no banco de dados (CHAR(1))*/
UPDATE aluno SET status = 'I' WHERE id = 3;
SELECT * FROM aluno;