use Atv2;

INSERT INTO medicos (nome, em_atividade,CRMs) VALUES ('Júlia Camarinho', 1,'CRM001');
INSERT INTO medicos (nome, em_atividade,CRMs) VALUES ('Alisson Sacramento', 0,'CRM002');
INSERT INTO medicos (nome, em_atividade,CRMs) VALUES ('Alberto Veríssimo', 1,'CRM003');
INSERT INTO medicos (nome, em_atividade,CRMs) VALUES ('Suéli Simão Pegado', 1,'1311');
INSERT INTO medicos (nome, em_atividade,CRMs) VALUES ('Gael Milheiro Lemes', 1,'3812');
INSERT INTO medicos (nome, em_atividade,CRMs) VALUES ('Tito Carqueijeiro', 1,'4060X');
INSERT INTO medicos (nome, em_atividade,CRMs) VALUES ('Ezequiel Pestana Henriques', 1,'2314EF');
INSERT INTO medicos (nome, em_atividade,CRMs) VALUES ('Anny Quintanilha', 1,'0923PL');
INSERT INTO medicos (nome, em_atividade,CRMs) VALUES ('Lívia Veloso', 1,'1712CA');
INSERT INTO medicos (nome, em_atividade,CRMs) VALUES ('Fabiano Gomide', 1,'1278AB');

SELECT * FROM medicos;

/*Em atividade: (SÓ PARA CONFERIR)*/
SELECT id_medicos FROM medicos WHERE em_atividade = 1 AND nome = 'Fabiano Gomide';

/*Não estão em atividade:(SÓ PARA CONFERIR) */
SELECT id_medicos FROM medicos WHERE em_atividade NOT IN (1) AND nome = 'Fabiano Gomide';

ALTER TABLE medicos
ADD em_atividade INT DEFAULT 1;

UPDATE medicos SET em_atividade = 0 WHERE nome = 'Júlia Camarinho';

UPDATE medicos SET em_atividade = 0 WHERE nome = 'Gael Milheiro Lemes';

UPDATE medicos SET em_atividade = 0 WHERE nome = 'Alisson Sacramento';

UPDATE medicos SET em_atividade = 1 WHERE nome = 'Suéli Simão Pegado';

UPDATE medicos SET em_atividade = 1 WHERE nome = 'Alberto Veríssimo';

UPDATE medicos SET em_atividade = 1 WHERE nome = 'Tito Carqueijeiro';

UPDATE medicos SET em_atividade = 1 WHERE nome = 'Ezequiel Pestana Henriques';

UPDATE medicos SET em_atividade = 1 WHERE nome = 'Anny Quintanilha';

UPDATE medicos SET em_atividade = 1 WHERE nome = 'Lívia Veloso';

UPDATE medicos SET em_atividade = 1 WHERE nome = 'Fabiano Gomide';

UPDATE internacao SET data_alta = DATE_ADD(data_entrada, INTERVAL 3 DAY) WHERE fk_internacao_quarto = 4 ;
SELECT * FROM internacao;
/*TESTANDO (FUNCIONANDO)
22	2022-11-04 23:00:00	2022-11-06 15:45:00	2022-11-07 23:00:00	Falta de ar, verificação de enfraquecimento no coração, identificação de infarto, paciente está em oxigênio (IDENTIFICAÇÃO E ANÁLISE DE INFARTO)	29	4	4*/

 DELETE FROM convenio WHERE id_convenio = (SELECT max_id FROM (SELECT MAX(id_convenio) as max_id FROM convenio) as subquery);
 ALTER TABLE pacientes DROP FOREIGN KEY fk_pacientes_convenio;
 ALTER TABLE pacientes ADD CONSTRAINT fk_pacientes_convenio FOREIGN KEY (fk_pacientes_convenio) REFERENCES convenio (id_convenio) ON DELETE SET NULL;

UPDATE pacientes SET fk_pacientes_convenio = NULL WHERE fk_pacientes_convenio = (SELECT id_convenio FROM convenio WHERE nome = 'Pro Health3');
UPDATE consultas SET fk_consultas_convenio = NULL WHERE fk_consultas_convenio = (SELECT id_convenio FROM convenio WHERE nome = 'Pro Health3' LIMIT 1);

SELECT * FROM consultas WHERE nome_convenio = 'Pro Health3';
DELETE FROM consultas WHERE fk_consultas_convenio IN (SELECT id_convenio FROM convenio WHERE nome_convenio = 'Pro Health3');
UPDATE pacientes SET fk_pacientes_convenio = NULL WHERE fk_pacientes_convenio IN (SELECT id_convenio FROM convenio WHERE nome = 'Pro Health3');
DELETE FROM convenio WHERE nome_convenio = 'Pro Health3';

UPDATE consultas
SET fk_consultas_convenio = NULL
WHERE fk_consultas_convenio IN (SELECT id_convenio FROM convenio WHERE nome_convenio = 'Pro Health3');

UPDATE consultas c
JOIN convenio cv ON c.fk_consultas_convenio = cv.id_convenio
SET c.fk_consultas_convenio = NULL
WHERE cv.nome = 'Pro Health3';

UPDATE consultas
SET fk_consultas_convenio = NULL
WHERE fk_consultas_convenio IN (
    SELECT id_convenio
    FROM convenio
    WHERE nome = 'Pro Health3'
);

ALTER TABLE consultas
ADD CONSTRAINT fk_consultas_convenio
FOREIGN KEY (fk_consultas_convenio)
REFERENCES convenio (id_convenio)
ON DELETE SET NULL
ON UPDATE CASCADE;

DELETE FROM consultas WHERE nome_convenio = 'Pro Health3';
UPDATE consultas SET fk_consultas_convenio = NULL WHERE nome_convenio = 'Pro Health3';