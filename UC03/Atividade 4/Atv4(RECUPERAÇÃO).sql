use Atv2;
-- TESTANDO PARA CONSULTAS SEM CONVÊNIO DIFERENTES DO ANO DE 2020--
SELECT * FROM consultas WHERE nome_convenio IS NOT NULL AND fk_consultas_convenio IS NOT NULL AND YEAR(data_hora_realizacao) = 2020;
ALTER TABLE consultas MODIFY fk_consultas_convenio INT NULL;

-- ALTERAÇÃO PARA QUE O CONVÊNIO SEJA NULO ISSO SIGNIFICA (CONSULTAS REALIZADAS SEM )--
ALTER TABLE consultas MODIFY nome_convenio VARCHAR(45) NULL;

-- CRIAÇÃO DE CONSULTAS SEM CONVÊNIO--
INSERT INTO consultas (data_hora_realizacao, paciente, valor_consulta, nome_convenio, fk_resp, fk_consultas_especialidade_medica,fk_consultas_convenio)
VALUES ('2020-01-01 13:23:00', 'Júlio Algust', 200.0, null, 5, 7,null);

INSERT INTO consultas (data_hora_realizacao, paciente, valor_consulta, nome_convenio, fk_resp, fk_consultas_especialidade_medica,fk_consultas_convenio)
VALUES ('2020-02-01 13:23:00', 'Júlia Fontana', 145.65, null, 6, 2,null);

INSERT INTO consultas (data_hora_realizacao, paciente, valor_consulta, nome_convenio, fk_resp, fk_consultas_especialidade_medica,fk_consultas_convenio)
VALUES ('2020-03-01 12:34:00', 'Julieta Rosa', 129.90, null, 8, 4,null);

INSERT INTO consultas (data_hora_realizacao, paciente, valor_consulta, nome_convenio, fk_resp, fk_consultas_especialidade_medica,fk_consultas_convenio)
VALUES ('2019-03-01 12:34:00', 'Julieta Rosa', 129.90, null, 8, 4,null);
SELECT * FROM consultas;

-- CRIAR CONSULTAS QUE POSSUEM CONVÊNIO EM 2020--
INSERT INTO consultas(data_hora_realizacao, paciente, valor_consulta, nome_convenio, fk_resp, fk_consultas_especialidade_medica,fk_consultas_convenio)
VALUES ('2020-04-05 18:43:00', 'Emílio Fernandez', 480.0, 'MedMais', 5, 7,4);

INSERT INTO consultas(data_hora_realizacao, paciente, valor_consulta, nome_convenio, fk_resp, fk_consultas_especialidade_medica,fk_consultas_convenio)
VALUES ('2020-04-06 15:42:00', 'Felipe Gonzales', 230.34, 'Pro Heatlh', 1, 8,12);

INSERT INTO consultas(data_hora_realizacao, paciente, valor_consulta, nome_convenio, fk_resp, fk_consultas_especialidade_medica,fk_consultas_convenio)
VALUES ('2020-07-08 16:49:00', 'Xavier Mendes', 124.89, 'Unimed', 10, 5,1);

-- PRA CONFERIR O ID DA PRIMEIRA RECEITA--
SELECT id_receita FROM receita ORDER BY id_receita LIMIT 1;

-- DELETANDO OS IDS QUE DIAS DE INTERNAÇÃO OBTIVERAM NÚMEROS NEGATIVOS POR INFORMAÇÕES ERRONÊAS--
DELETE FROM internacao WHERE id_internacao = 17;
DELETE FROM internacao WHERE id_internacao = 18;

-- DEPOIS DE DESCOBRIR QUE NA TABELA DE INTERNAÇÃO NÃO HÁ NEM UM REGISTRO DE TIPO_DE_QUARTO (EU TERIA QUE APAGAR OS QUARTOS ANTERIORES PQ AGORA SERÃO COLOCADOS COMO NULOS)--
ALTER TABLE internacao ADD COLUMN fk_internacao_tipo_quarto INT;

DELETE FROM internacao WHERE id_internacao IN (7,8,14,15,16,19,20,21,22);

-- INFORMAÇOES PACIENTES MENORES DE 18 (EXCETO PEDIATRIA)-- 
ALTER TABLE pacientes ADD COLUMN idade INT;

UPDATE pacientes SET idade = TIMESTAMPDIFF(YEAR, data_nascimento, CURDATE());

INSERT INTO pacientes (nome, data_nascimento, endereco, telefone, email, numero_convenio, CPF, RG, fk_pacientes_convenio) 
VALUES ('Jullyene', '2005-10-08', 'Rua Júlio de Castilhos', '51997446068', 'foomi@gmail.com', 'EF533221', '235450987', '987654978', 1);
SELECT * FROM pacientes WHERE TIMESTAMPDIFF(YEAR, data_nascimento, CURDATE()) < 18;


-- JOINS COM AS INFORMAÇÕES SEPARADAS -- 
-- OBS: Como eu montei minhas tabelas nesse formato lá no início com os Diagramas e depois criar o SQL dele na atv2 tive que pesquisar mais sobre: (Para relacionar os resultados de duas junções diferentes, você pode usar uma subconsulta ou uma tabela derivada)  --
SELECT * FROM internacao
JOIN pacientes ON internacao.fk_internacao_pacientes = pacientes.id_pacientes
JOIN medicos ON internacao.fk_internacao_medicos = medicos.id_medicos
JOIN tipo_quarto ON internacao.fk_internacao_tipo_quarto = tipo_quarto.id_tipo_quarto

;

SELECT * FROM especialidades
JOIN especialidade_medica ON especialidades.fk_especialidades_especialidade_medica = especialidade_medica.id_especialidade_medica
JOIN internacao ON especialidades.fk_especialidades_especialidade_medica = especialidade_medica.id_especialidade_medica;

SELECT *FROM especialidades; --  Não existe nada relacionado a ela no arquivo de inserção (Atividade3(RECUPERAÇÃO)) deve ser por esse motivo, não tem id, não vai funcionar o join com outras tabelas (Já fiz algo a respeito)-- 

-- Adicionar a coluna CRMs na tabela médicos --
ALTER TABLE medicos ADD CRMs VARCHAR(50) NOT NULL;

ALTER TABLE medicos
ADD CONSTRAINT uc_CRMs UNIQUE (CRMs);

SELECT CRMs, COUNT(*)
FROM medicos
GROUP BY CRMs
HAVING COUNT(*) > 1;

DELETE FROM medicos WHERE id_medicos IN (11,12,13,14,15,16,17,18,19,20);
SELECT * FROM medicos;

-- ALTERAR ELES LÁ NO ARQUIVO Atividade3 RECUPERAÇÃO PARTE 2 --
/* INSERT INTO medicos (nome, em_atividade) VALUES ('Júlia Camarinho', 1);
INSERT INTO medicos (nome, em_atividade) VALUES ('Alisson Sacramento', 0);
INSERT INTO medicos (nome, em_atividade) VALUES ('Alberto Veríssimo', 0);
INSERT INTO medicos (nome, em_atividade) VALUES ('Suéli Simão Pegado', 1);
INSERT INTO medicos (nome, em_atividade) VALUES ('Gael Milheiro Lemes', 1);
INSERT INTO medicos (nome, em_atividade) VALUES ('Tito Carqueijeiro', 1);
INSERT INTO medicos (nome, em_atividade) VALUES ('Ezequiel Pestana Henriques', 1);
INSERT INTO medicos (nome, em_atividade) VALUES ('Anny Quintanilha', 1);
INSERT INTO medicos (nome, em_atividade) VALUES ('Lívia Veloso', 1);
INSERT INTO medicos (nome, em_atividade) VALUES ('Fabiano Gomide', 1);*/

DELETE FROM receita WHERE fk_receita_consultas IN (1,2,3,4,5,6,7,8,9,10);
DELETE FROM medicos WHERE id_medicos IN (1,2,3,4,5,6,7,8,9,10);
DELETE FROM consultas WHERE fk_resp IN (1, 2, 3, 4, 5, 6, 7, 8, 9, 10);
DELETE FROM receita WHERE fk_receita_consultas IN (SELECT id_consultas FROM consultas WHERE fk_resp IN (1, 2, 3, 4, 5, 6, 7, 8, 9, 10));
DELETE FROM especialidades WHERE fk_especialidades_medicos IN (1, 2, 3, 4, 5, 6, 7, 8, 9, 10);
DELETE FROM internacao WHERE fk_internacao_medicos IN (1, 2, 3, 4, 5, 6, 7, 8, 9, 10);

SELECT id_medicos FROM medicos;

SELECT * FROM internacao;
SELECT * FROM pacientes;
SELECT * FROM medicos;
SELECT * FROM tipo_quarto;
SELECT * FROM especialidades;
SELECT * FROM especialidade_medica;
SELECT * FROM consultas;

-- Pesquisar como relacionar essas duas -- 
SELECT  nome, CRMs FROM medicos
JOIN especialidades ON medicos.id_medicos = fk_especialidades_medicos;

SELECT fk_resp, fk_consultas_especialidade_medica,paciente FROM consultas;

SELECT * FROM especialidades
JOIN especialidade_medica ON especialidades.fk_especialidades_especialidade_medica = especialidade_medica.id_especialidade_medica;

-- CRIAR UMA NOVA COLUNA EM ENFERMEIROS PARA CREs --
ALTER TABLE enfermeiro ADD CREs_Coren VARCHAR(100)NOT NULL;

UPDATE enfermeiro SET CREs_Coren = 'COREN-RJ 123.456-AE' WHERE id_enfermeiro = 1;
UPDATE enfermeiro SET CREs_Coren = 'COREN-RJ 234.567-BF' WHERE id_enfermeiro = 2;
UPDATE enfermeiro SET CREs_Coren = 'COREN-RJ 345.678-CG' WHERE id_enfermeiro = 3;
UPDATE enfermeiro SET CREs_Coren = 'COREN-RJ 456.789-DH' WHERE id_enfermeiro = 4;
UPDATE enfermeiro SET CREs_Coren = 'COREN-RJ 567.890-EI' WHERE id_enfermeiro = 5;
UPDATE enfermeiro SET CREs_Coren = 'COREN-RJ 678.901-FJ' WHERE id_enfermeiro = 6;
















-- 1- Todos os dados e o valor médio das consultas do ano de 2020 realizadas SEM convênio:--
SELECT c.data_hora_realizacao, c.paciente, c.valor_consulta, c.nome_convenio, c.fk_resp, c.fk_consultas_especialidade_medica, c.fk_consultas_convenio, media.valor_medio
FROM consultas c
CROSS JOIN (
  SELECT AVG(valor_consulta) AS valor_medio
  FROM consultas
  WHERE nome_convenio IS NULL AND fk_consultas_convenio IS NULL AND YEAR(data_hora_realizacao) = 2020
) media
WHERE c.nome_convenio IS NULL AND c.fk_consultas_convenio IS NULL AND YEAR(c.data_hora_realizacao) = 2020;

-- 2- Todos os dados e o valor médio das consultas do ano de 2020 realizados por convênio--
SELECT c.data_hora_realizacao, c.paciente, c.valor_consulta, c.nome_convenio, c.fk_resp, c.fk_consultas_especialidade_medica, c.fk_consultas_convenio, media.valor_medio
FROM consultas c
CROSS JOIN (
  SELECT AVG(valor_consulta) AS valor_medio
  FROM consultas
  WHERE nome_convenio IS NOT NULL AND fk_consultas_convenio IS NOT NULL AND YEAR(data_hora_realizacao) = 2020
) media
WHERE c.nome_convenio IS NOT NULL AND c.fk_consultas_convenio IS NOT NULL AND YEAR(c.data_hora_realizacao) = 2020;

-- 3- Todos os dados das internações que tiveram data de alta maior que a data prevista de alta:--
-- DATAS DE DE ALTA MAIORES QUE A DATA PREVISTA DE ENTRADA --
SELECT * FROM internacao;
SELECT * FROM internacao WHERE data_prev_alta > data_alta;



-- 4- Receituário completo da primeira consulta registrada com receituário associado: --
-- RECEITUÁRIO DA PRIMEIRA CONSULTA REALIZADA-- 
SELECT medicacao FROM receita WHERE fk_receita_consultas = (SELECT MIN(id_consultas) FROM consultas);

-- 5- Todos os dados da consulta de maior valor e também as de menor valor (ambas as consultas não foram realizadas sob convênio): --
-- CONSULTAS DE MAIORES VALORES SEM CONVÊNIO--
SELECT * FROM consultas WHERE nome_convenio IS NULL AND fk_consultas_convenio IS NULL AND valor_consulta = (SELECT MAX(valor_consulta) FROM consultas WHERE nome_convenio IS NULL AND fk_consultas_convenio IS NULL);

-- CONSULTAS DE MENORES VALORES SEM CONVÊNIO--
SELECT * FROM consultas WHERE nome_convenio IS NULL AND fk_consultas_convenio IS NULL AND valor_consulta = (SELECT MIN(valor_consulta) FROM consultas WHERE nome_convenio IS NULL AND fk_consultas_convenio IS NULL);


-- 6- Todos os dados das internações em seus respectivos quartos, calculando o total de internações a partir de diária do quarto eo número de dias entre a entrada e a alta: --
-- TODAS AS INTERNAÇÕES E SEUS DADOS --
SELECT i.*, t.valor_diaria, DATEDIFF(i.data_alta, i.data_entrada) AS dias_internacao, (t.valor_diaria * DATEDIFF(i.data_alta, i.data_entrada)) AS valor_total_internacao FROM internacao i JOIN tipo_quarto t ON i.fk_internacao_quarto = t.id_tipo_quarto WHERE i.data_alta > i.data_prev_alta;

-- 7- Data,procedimento e número de quarto de internações em quartos do tipo "apartamento:" --
-- INFORMAÇÕES DOS QUARTOS DE INTERNAÇÃO NÚMERO DE QUARTOS DO TIPO APARTAMENTO--
SELECT q.id_tipo_quarto, q.descricao AS tipo_quarto FROM tipo_quarto q WHERE q.tipo_de_quarto = 'Quartos duplos';
SELECT i.*, t.valor_diaria, IFNULL(qtd_quartos_duplos.total_quartos_duplos, 0) AS total_quartos_duplos FROM internacao i JOIN tipo_quarto t ON i.fk_internacao_tipo_quarto = t.id_tipo_quarto LEFT JOIN (
SELECT fk_internacao_tipo_quarto, COUNT(*) AS total_quartos_duplos FROM internacao WHERE fk_internacao_tipo_quarto = 3
GROUP BY fk_internacao_tipo_quarto
) qtd_quartos_duplos ON i.fk_internacao_tipo_quarto = qtd_quartos_duplos.fk_internacao_tipo_quarto;

-- 8- Nome do paciente, data da consulta e especialidade de todas as consultas em que os pacientes eram menores de 18 anos na data da consulta e cuja especialidade não seja "pediatria",ordenado por data de realização da consulta. --
SELECT P.nome, P.data_nascimento, P.endereco, P.telefone, P.email, P.numero_convenio, P.CPF, P.RG, P.fk_pacientes_convenio, E.area_medica,
TIMESTAMPDIFF(YEAR, P.data_nascimento, CURDATE()) < 18 AS filtrando_registros
FROM pacientes P
JOIN especialidade_medica E ON P.fk_pacientes_convenio = E.id_especialidade_medica
WHERE E.area_medica != 'Pediatria';

-- 9- Nome do paciente, nome do médico, data de internação e procedimentos das internações realizadas por médicos da especialidade "gastroentreologia",que tenham acontecido em "enfermaria:" --

SELECT juncao1.id_internacao, juncao1.nome AS nome_paciente, juncao1.data_entrada, juncao1.procedimento,
       juncao2.nome AS nome_medico, juncao2.area_medica
FROM (
  SELECT internacao.id_internacao, pacientes.nome, internacao.data_entrada, internacao.procedimento
  FROM internacao
  JOIN pacientes ON internacao.fk_internacao_pacientes = pacientes.id_pacientes
  JOIN medicos ON internacao.fk_internacao_medicos = medicos.id_medicos
  JOIN tipo_quarto ON internacao.fk_internacao_tipo_quarto = tipo_quarto.id_tipo_quarto
) AS juncao1
JOIN (
  SELECT internacao.id_internacao, medicos.nome, especialidade_medica.area_medica
  FROM especialidades
  JOIN especialidade_medica ON especialidades.fk_especialidades_especialidade_medica = especialidade_medica.id_especialidade_medica
  JOIN medicos ON especialidades.fk_especialidades_medicos = medicos.id_medicos
  JOIN internacao ON internacao.fk_internacao_medicos = medicos.id_medicos
) AS juncao2 ON juncao1.id_internacao = juncao2.id_internacao
LIMIT 0, 1000;

-- 10- Os nomes dos médicos, seus CRMs e a quantidade de consultas que cada um realizou: --
SELECT m.nome AS nome_medico, m.CRMs, p.nome AS nome_paciente, e.area_medica, COUNT(*) AS total_consultas
FROM internacao AS i
JOIN medicos AS m ON i.fk_internacao_medicos = m.id_medicos
JOIN pacientes AS p ON i.fk_internacao_pacientes = p.id_pacientes
JOIN especialidades AS esp ON esp.fk_especialidades_medicos = m.id_medicos
JOIN especialidade_medica AS e ON esp.fk_especialidades_especialidade_medica = e.id_especialidade_medica
GROUP BY m.id_medicos, m.nome, m.CRMs, p.nome, e.area_medica;

-- 11- Os nomes, CREs e números de internações de enfermeiros que participaram de mais de uma internação--
SELECT e.nome AS nome_enfermeiro, e.CREs_Coren, COUNT(ie.fk_enfermeiro) AS numero_internacoes
FROM enfermeiro AS e
JOIN internacao_enfermeiro AS ie ON e.id_enfermeiro = ie.fk_enfermeiro
GROUP BY e.id_enfermeiro
HAVING COUNT(ie.fk_enfermeiro) > 1;

-- 12- Inclua ainda uma consulta extra idealizada por você.No script, em bloco de comentário, escreva o que a consulta deve trazer como resultado e, em seguida, escreva em SQL essa consulta.É necessário que essa consulta envolva múltiplas tabelas:--
-- Os nomes, CREs e números de internações de enfermeiros que não participaram de mais de uma internação--
SELECT e.nome AS nome_enfermeiro, e.CREs_Coren, COUNT(ie.fk_enfermeiro) AS numero_internacoes
FROM enfermeiro AS e
LEFT JOIN internacao_enfermeiro AS ie ON e.id_enfermeiro = ie.fk_enfermeiro
GROUP BY e.id_enfermeiro
HAVING COUNT(ie.fk_enfermeiro) <= 1;