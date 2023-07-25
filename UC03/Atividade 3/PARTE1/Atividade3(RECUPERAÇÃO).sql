USE atv2;

INSERT INTO medicos(nome) VALUES('Júlia Camarinho');
INSERT INTO medicos(nome) VALUES('Alisson Sacramento');
INSERT INTO medicos(nome) VALUES('Alberto Veríssimo');
INSERT INTO medicos(nome) VALUES('Suéli Simão Pegado');
INSERT INTO medicos(nome) VALUES('Gael Milheiro Lemes');
INSERT INTO medicos(nome) VALUES('Tito Carqueijeiro');
INSERT INTO medicos(nome) VALUES('Ezequiel Pestana Henriques');
INSERT INTO medicos(nome) VALUES('Anny Quintanilha');
INSERT INTO medicos(nome) VALUES('Lívia Veloso');
INSERT INTO medicos(nome) VALUES('Fabiano Gomide');

SELECT * FROM medicos;
SELECT id_medicos FROM medicos;

INSERT INTO especialidade_medica (area_medica) VALUES ('Pediatria');
INSERT INTO especialidade_medica (area_medica) VALUES ('Clínico geral');
INSERT INTO especialidade_medica (area_medica) VALUES ('Gastroenterologia');
INSERT INTO especialidade_medica (area_medica) VALUES ('Dermatologia');
INSERT INTO especialidade_medica (area_medica) VALUES ('Ginecologista');
INSERT INTO especialidade_medica (area_medica) VALUES ('Cardiologista');
INSERT INTO especialidade_medica (area_medica) VALUES ('Oftalmologista');
INSERT INTO especialidade_medica (area_medica) VALUES ('Ortopedia');
INSERT INTO especialidade_medica (area_medica) VALUES ('Otorrinolaringologia');
INSERT INTO especialidade_medica (area_medica) VALUES ('Psiquiatria');

SELECT * FROM especialidade_medica;

INSERT INTO pacientes (nome, data_nascimento, endereco, telefone, email, numero_convenio, CPF, RG, fk_pacientes_convenio) 
VALUES ('Zilda Gomide Osório', '1999-12-20', '', '51998583423', 'guaximiguar@gmail.com', 'EF543210', '5234567849', '987654301', 1);

INSERT INTO pacientes (nome, data_nascimento, endereco, telefone, email, numero_convenio, CPF, RG, fk_pacientes_convenio) 
VALUES ('Fabrício Norões Xavier', '1998-12-30', 'Rua Rosa', '51998583424', 'gatomiguar@gmail.com', 'EF543218', '5334567860', '977654310', 2);

INSERT INTO pacientes (nome, data_nascimento, endereco, telefone, email, numero_convenio, CPF, RG, fk_pacientes_convenio) 
VALUES ('César Sítima Faria', '1997-12-30', '', '51998583425', 'ratomiguar@gmail.com', 'EF543217', '3334567893', '567654329', 3);

INSERT INTO pacientes (nome, data_nascimento, endereco, telefone, email, numero_convenio, CPF, RG, fk_pacientes_convenio) 
VALUES ('Silvana Fartaria Nazário', '1996-12-30', 'Rua Padre Atílio Rosa', '51998583426', 'jaguamiguar@gmail.com', 'EF543216', '7894567234', '789654328', 4);

INSERT INTO pacientes (nome, data_nascimento, endereco, telefone, email, numero_convenio, CPF, RG, fk_pacientes_convenio) 
VALUES ('Evandro Trindade Bouça', '1995-12-25', '', '51998583427', 'cachomiguar@gmail.com', 'EF543215', '4321567541', '145754327', 5);

INSERT INTO pacientes (nome, data_nascimento, endereco, telefone, email, numero_convenio, CPF, RG, fk_pacientes_convenio) 
VALUES ('Ivo Brandão Palos', '1967-12-30', '', '51998583428', 'capimiguar@gmail.com', 'EF543214', '02347890', '087654126', 6);

INSERT INTO pacientes (nome, data_nascimento, endereco, telefone, email, numero_convenio, CPF, RG, fk_pacientes_convenio) 
VALUES ('Armindo Moreira Azeredo', '2000-04-30', '', '51998583429', 'preamiguar@gmail.com', 'EF543213', '1234564756', '987564325', 7);

INSERT INTO pacientes (nome, data_nascimento, endereco, telefone, email, numero_convenio, CPF, RG, fk_pacientes_convenio) 
VALUES ('Mark Festas Santana', '1999-03-30', 'Rua Júlio de Castilhos', '51998583430', 'furaomiguar@gmail.com', 'EF543212', '2354567890', '987654924', 8);

INSERT INTO pacientes (nome, data_nascimento, endereco, telefone, email, numero_convenio, CPF, RG, fk_pacientes_convenio) 
VALUES ('Helton Espinosa', '1999-05-30', 'PIO X', '51998583431', 'focamiguar@gmail.com', 'EF543211', '0034876890', '980654323', 9);

INSERT INTO pacientes (nome, data_nascimento, endereco, telefone, email, numero_convenio, CPF, RG, fk_pacientes_convenio) 
VALUES ('Giovanni Arouca Mata', '1999-08-30', 'Moreira Cézer', '51998583432', 'fomigamiguar@gmail.com', 'EF543200', '1234567222', '987654333', 10);
SELECT * FROM pacientes;
SELECT id_pacientes FROM pacientes;

INSERT INTO convenio (nome, CNPJ, tempo_carencia)
VALUES ('MedMais','23456789000111', '2019-03-12');

INSERT INTO convenio (nome, CNPJ, tempo_carencia)
VALUES ('UniSaude','12345678000100', '2019-03-12');

INSERT INTO convenio (nome, CNPJ, tempo_carencia)
VALUES ('Pro Health','34567890000122', '2019-03-12');

INSERT INTO convenio (nome, CNPJ, tempo_carencia)
VALUES ('Unimed','45678901000133', '2019-03-12');

INSERT INTO convenio (nome, CNPJ, tempo_carencia)
VALUES ('MedMais2','56789010000144', '2019-03-12');

INSERT INTO convenio (nome, CNPJ, tempo_carencia)
VALUES ('Pro Health2','56789010000244', '2019-03-12');

INSERT INTO convenio (nome, CNPJ, tempo_carencia)
VALUES ('Unimed2','56789010000344', '2019-03-12');

INSERT INTO convenio (nome, CNPJ, tempo_carencia)
VALUES ('MedMais3','56789010000890', '2019-03-12');

INSERT INTO convenio (nome, CNPJ, tempo_carencia)
VALUES ('Unimed3','56789010000520', '2019-03-12');

INSERT INTO convenio (nome, CNPJ, tempo_carencia)
VALUES ('Pro Health3','56789010000360', '2019-03-12');

SELECT * FROM convenio;

INSERT INTO consultas (data_hora_realizacao, paciente, valor_consulta, nome_convenio, fk_resp, fk_consultas_especialidade_medica, fk_consultas_convenio)
VALUES ('2017-01-01 10:23:00', 'Zilda Gomide Osório', 110.90, 'MedMais', 5, 5, 5);

INSERT INTO consultas (data_hora_realizacao, paciente, valor_consulta, nome_convenio, fk_resp, fk_consultas_especialidade_medica, fk_consultas_convenio)
VALUES ('2017-01-01 09:23:00', 'Fabrício Norões Xavier', 180.00, 'UniSaude', 2, 2, 2);

INSERT INTO consultas (data_hora_realizacao, paciente, valor_consulta, nome_convenio, fk_resp, fk_consultas_especialidade_medica, fk_consultas_convenio)
VALUES ('2017-01-01 17:23:00', 'César Sítima Faria', 150.00, 'Pro Health', 3, 3, 3);

INSERT INTO consultas (data_hora_realizacao, paciente, valor_consulta, nome_convenio, fk_resp, fk_consultas_especialidade_medica, fk_consultas_convenio)
VALUES ('2017-01-01 18:23:00', 'Silvana Fartaria Nazário', 90.00, 'Unimed', 4, 4, 4);

INSERT INTO consultas (data_hora_realizacao, paciente, valor_consulta, nome_convenio, fk_resp, fk_consultas_especialidade_medica, fk_consultas_convenio)
VALUES ('2017-01-01 16:23:00', 'Evandro Trindade Bouça', 180.00, 'MedMais2', 5, 5, 5);

INSERT INTO consultas (data_hora_realizacao, paciente, valor_consulta, nome_convenio, fk_resp, fk_consultas_especialidade_medica, fk_consultas_convenio)
VALUES ('2017-01-01 15:23:00', 'Ivo Brandão Palos', 110.00, 'Pro Health2', 6, 6, 6);

INSERT INTO consultas (data_hora_realizacao, paciente, valor_consulta, nome_convenio, fk_resp, fk_consultas_especialidade_medica, fk_consultas_convenio)
VALUES ('2017-01-01 14:23:00', 'Armindo Moreira Azeredo', 100.00, 'Unimed2', 7, 7, 7);

INSERT INTO consultas (data_hora_realizacao, paciente, valor_consulta, nome_convenio, fk_resp, fk_consultas_especialidade_medica, fk_consultas_convenio)
VALUES ('2017-01-01 13:23:00', 'Mark Festas Santana', 185.00, 'MedMais3', 8, 8, 8);

INSERT INTO consultas (data_hora_realizacao, paciente, valor_consulta, nome_convenio, fk_resp, fk_consultas_especialidade_medica, fk_consultas_convenio)
VALUES ('2017-01-01 12:23:00', 'Helton Espinosa', 195.00, 'UniSaude3', 9, 9, 9);

INSERT INTO consultas (data_hora_realizacao, paciente, valor_consulta, nome_convenio, fk_resp, fk_consultas_especialidade_medica, fk_consultas_convenio)
VALUES ('2017-01-01 11:23:00', 'Giovanni Arouca Mata', 176.48, 'Pro Health3', 10, 10, 10);

SELECT * FROM consultas;

INSERT INTO quarto(numero) VALUES(1);
SELECT * FROM quarto;
INSERT INTO quarto(numero) VALUES(1);
INSERT INTO quarto(numero) VALUES(2);
INSERT INTO quarto(numero) VALUES(3);
INSERT INTO quarto(numero) VALUES(4);
INSERT INTO quarto(numero) VALUES(5);
INSERT INTO quarto(numero) VALUES(6);

SELECT * FROM quarto;
SELECT numero FROM quarto;
DELETE FROM quarto WHERE numero = 250;

INSERT INTO tipo_quarto(Descricao, valor_diaria, fk_tipo_quarto_quarto) 
VALUES('É um quarto destinado a acomodar apenas um paciente. Geralmente possui uma cama, banheiro privativo e espaço para visitantes.', 125.89, 6);

INSERT INTO tipo_quarto(Descricao, valor_diaria, fk_tipo_quarto_quarto) 
VALUES('É um quarto onde dois ou mais pacientes são acomodados. Cada paciente tem sua própria cama e há uma área compartilhada para visitantes e banheiro', 189.90, 5);

INSERT INTO tipo_quarto(Descricao, valor_diaria, fk_tipo_quarto_quarto) 
VALUES('É um ambiente de espaço compartilhado com várias camas, uma solução econômica em relação aos espaços individuais', 90.00, 4);

SELECT * FROM tipo_quarto;

INSERT INTO receita(medicacao,fk_receita_consultas)
VALUES('Levonorgestrel 0,15mg etinilestradiol 0,03mg CICLO21',1);

INSERT INTO receita(medicacao,fk_receita_consultas)
VALUES('Colírio Drusolol 1gt um em cada olho 12/12h/Contínuo (TRATAMENTO GLAUCOMA)',2);

INSERT INTO receita(medicacao,fk_receita_consultas)
VALUES('Sulfadiazina de Prata,Lidocaína (TRATAMENTO DE QUEIMADURA)-Avaliar gravidade',3);

INSERT INTO receita(medicacao,fk_receita_consultas)
VALUES('Dieta, evitar comidas picantes e ácidas, beber bastante água, acompanhado de um antiácido Alu-Cap e acetaminofeno-Tylenol(TRATAMENTO DE QUEIMADURA ESTOMACAL)',4);

INSERT INTO receita(medicacao,fk_receita_consultas)
VALUES('Amoxicilina,acompanhada de ventilação mecânica,paracetamol,(TRATAMENTO DE INFECÇÃO RESPIRATÓRIA)',5);

INSERT INTO receita(medicacao,fk_receita_consultas)
VALUES('Imunoterapia intravesical, medicamento, Bacillus Calmette-Guérin (BCG) (TRATAMENTO DE TUMOR NÃO MALÉFICO NA BEXIGA)',6);

INSERT INTO receita(medicacao,fk_receita_consultas)
VALUES('Glaucotrat 0,5% 1 gota  nos dois olhos de 12/12h, óculos de descanso,colírio lubrificante Refresh Tears (TRATAMENTO DE GLAUCOMA)',7);

INSERT INTO receita(medicacao,fk_receita_consultas)
VALUES('Fluoxetina (Prozac), tofranil (TRATAMENTO DE DEPRESSÃO)',8);

SELECT *FROM receita;

DELETE FROM quarto
WHERE numero IN (
  SELECT numero FROM (SELECT numero FROM quarto ORDER BY numero DESC LIMIT 3) AS subquery
);

INSERT INTO internacao (data_entrada, data_prev_alta, data_alta, procedimento, fk_internacao_pacientes, fk_internacao_medicos, fk_internacao_quarto)
VALUES ('2018-02-04 10:00:00', '2018-02-11 10:00:00', '2018-02-11 10:00:00', 'Uso dos medicamentos para não agravamento da doença (TRATAMENTO DE INFECÇÃO RESPIRATÓRIA)',
        (SELECT id_pacientes FROM pacientes ORDER BY RAND() LIMIT 1),
        (SELECT id_medicos FROM medicos ORDER BY RAND() LIMIT 1),
        (SELECT id_quarto FROM quarto ORDER BY RAND() LIMIT 1));

INSERT INTO internacao (data_entrada, data_prev_alta, data_alta, procedimento, fk_internacao_pacientes, fk_internacao_medicos, fk_internacao_quarto)
VALUES ('2018-03-04 10:00:00', '2018-3-11 10:00:00', '2018-03-11 10:00:00', 'Uso dos medicamentos para não agravamento da doença (TRATAMENTO DE INFECÇÃO RESPIRATÓRIA)',
        (SELECT id_pacientes FROM pacientes ORDER BY RAND() LIMIT 1),
        (SELECT id_medicos FROM medicos ORDER BY RAND() LIMIT 1),
        (SELECT id_quarto FROM quarto ORDER BY RAND() LIMIT 1));

INSERT INTO internacao (data_entrada, data_prev_alta, data_alta, procedimento, fk_internacao_pacientes, fk_internacao_medicos, fk_internacao_quarto)
VALUES ('2017-02-02 12:00:00', '2017-02-02 14:00:00', '2017-02-02 15:00:00', 'Uso dos medicamentos analségicos para amenizar a dor local, paciente deve evitar o contato, exposição prolongada ao sol, receitado o uso de pomadas para cicatrização(TRATAMENTO DE QUEIMADURA LEVE)',
        (SELECT id_pacientes FROM pacientes ORDER BY RAND() LIMIT 1),
        (SELECT id_medicos FROM medicos ORDER BY RAND() LIMIT 1),
        (SELECT id_quarto FROM quarto ORDER BY RAND() LIMIT 1));

INSERT INTO internacao (data_entrada, data_prev_alta, data_alta, procedimento, fk_internacao_pacientes, fk_internacao_medicos, fk_internacao_quarto)
VALUES ('2020-02-02 09:00:00', '2020-02-02 13:00:00', '2020-02-02 14:00:00', 'Cuidado ao consumo de comidas que podem causar irritação, comidas, bebidas ácidas e gordurosas(PÓS CIRURGIA DE REMOÇÃO DE VESÍCULA)',
        (SELECT id_pacientes FROM pacientes ORDER BY RAND() LIMIT 1),
        (SELECT id_medicos FROM medicos ORDER BY RAND() LIMIT 1),
        (SELECT id_quarto FROM quarto ORDER BY RAND() LIMIT 1));

INSERT INTO internacao (data_entrada, data_prev_alta, data_alta, procedimento, fk_internacao_pacientes, fk_internacao_medicos, fk_internacao_quarto)
VALUES ('2021-04-02 09:00:00', '2020-05-02 13:00:00', '2020-05-02 13:00:00', 'fratura da costela, perfuração do pulmão devido queda do telhado, retirada de sangue do pulmão, paciente deve se encostar e ter o devido tratamento e medicamento receitado(TRATAMENTO DE PERFURAÇÃO DO PULMÃO,RETIRADA DE LÍQUIDOS)',
        (SELECT id_pacientes FROM pacientes ORDER BY RAND() LIMIT 1),
        (SELECT id_medicos FROM medicos ORDER BY RAND() LIMIT 1),
        (SELECT id_quarto FROM quarto ORDER BY RAND() LIMIT 1));

INSERT INTO internacao (data_entrada, data_prev_alta, data_alta, procedimento, fk_internacao_pacientes, fk_internacao_medicos, fk_internacao_quarto)
VALUES ('2022-11-04 23:00:00', '2022-11-06 15:45:00', '2022-11-06 15:45:00', 'Falta de ar, verificação de enfraquecimento no coração, identificação de infarto, paciente está em oxigênio (IDENTIFICAÇÃO E ANÁLISE DE INFARTO)',
        (SELECT id_pacientes FROM pacientes ORDER BY RAND() LIMIT 1),
        (SELECT id_medicos FROM medicos ORDER BY RAND() LIMIT 1),
        (SELECT id_quarto FROM quarto ORDER BY RAND() LIMIT 1));

INSERT INTO internacao (data_entrada, data_prev_alta, data_alta, procedimento, fk_internacao_pacientes, fk_internacao_medicos, fk_internacao_quarto)
VALUES ('2021-03-04 22:34:00', '2021-03-05 10:34:00', '2021-03-05 10:34:00', 'Paciente necessita de acompanhamento psicológico, corte no pulso esquerdo, utilização de bolsa de sangue O+(PERDA DE SANGUE)',
        (SELECT id_pacientes FROM pacientes ORDER BY RAND() LIMIT 1),
        (SELECT id_medicos FROM medicos ORDER BY RAND() LIMIT 1),
        (SELECT id_quarto FROM quarto ORDER BY RAND() LIMIT 1));

INSERT INTO internacao (data_entrada, data_prev_alta, data_alta, procedimento, fk_internacao_pacientes, fk_internacao_medicos, fk_internacao_quarto)
VALUES ('2021-03-05 22:34:00', '2021-03-07 10:34:00', '2021-03-05 10:34:00', 'Paciente necessita de acompanhamento psicológico, corte no pulso direito, utilização de bolsa de sangue O+, nova entrada(PERDA DE SANGUE)',
        (SELECT id_pacientes FROM pacientes ORDER BY RAND() LIMIT 1),
        (SELECT id_medicos FROM medicos ORDER BY RAND() LIMIT 1),
        (SELECT id_quarto FROM quarto ORDER BY RAND() LIMIT 1));

SELECT  * FROM internacao;

INSERT INTO enfermeiro(nome,CPF)
VALUES('Valdemir','82388324033');

INSERT INTO enfermeiro(nome,CPF)
VALUES('Camila','46562961041');

INSERT INTO enfermeiro(nome,CPF)
VALUES('Júlio','66735936019');

INSERT INTO enfermeiro(nome,CPF)
VALUES('Danilo','67280624081');

INSERT INTO enfermeiro(nome,CPF)
VALUES('Fernando','34815033005');

INSERT INTO enfermeiro(nome,CPF)
VALUES('Sandrina','24611334090');

SELECT  * FROM enfermeiro;

INSERT INTO internacao_enfermeiro (fk_internacao, fk_enfermeiro)
VALUES (1, 1), (1, 2);

INSERT INTO internacao_enfermeiro (fk_internacao, fk_enfermeiro)
VALUES (2, 3), (2, 4);

SELECT  * FROM internacao_enfermeiro;

/*Tive que pesquisar no google pra conseguir resolver o problema 1452 para fazer a associação:*/
INSERT INTO internacao_enfermeiro (fk_internacao, fk_enfermeiro)
SELECT i.id_internacao, e.id_enfermeiro
FROM internacao i
CROSS JOIN (SELECT id_enfermeiro FROM enfermeiro ORDER BY RAND()LIMIT 2
) e;
