CREATE DATABASE Atv2;
DROP DATABASE Atv2;
USE Atv2;
SHOW TABLES;
DESCRIBE pacientes;

drop table medicos;
CREATE TABLE medicos (
  id_medicos INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  nome VARCHAR(90) NOT NULL,
  em_atividade BIT(1) NOT NULL
);


drop table especialidades;
CREATE TABLE especialidades (
  id_especialidades INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  fk_especialidades_medicos INT,
  FOREIGN KEY(fk_especialidades_medicos) REFERENCES medicos(id_medicos),
  fk_especialidades_especialidade_medica INT,
  FOREIGN KEY(fk_especialidades_especialidade_medica) REFERENCES especialidade_medica(id_especialidade_medica)
);

CREATE TABLE especialidade_medica (
  id_especialidade_medica INT AUTO_INCREMENT PRIMARY KEY,
  area_medica VARCHAR(90) NOT NULL
);


drop table consultas;
CREATE TABLE consultas (
  id_consultas INT AUTO_INCREMENT PRIMARY KEY,
  data_hora_realizacao DATETIME NOT NULL,
  paciente VARCHAR(90) NOT NULL,
  valor_consulta DECIMAL(7,2) NOT NULL,
  nome_convenio VARCHAR(45) NOT NULL,
  fk_resp INT,
  FOREIGN KEY(fk_resp) REFERENCES medicos(id_medicos),
  fk_consultas_especialidade_medica INT,
  FOREIGN KEY(fk_consultas_especialidade_medica) REFERENCES especialidade_medica(id_especialidade_medica),
  fk_consultas_convenio INT,
  FOREIGN KEY(fk_consultas_convenio) REFERENCES convenio(id_convenio)
);



drop table convenio;
CREATE TABLE convenio (
  id_convenio INT AUTO_INCREMENT PRIMARY KEY,
  nome VARCHAR(90) NOT NULL,
  CNPJ VARCHAR(45) NOT NULL,
  tempo_carencia DATETIME NOT NULL
);


drop table pacientes;
CREATE TABLE pacientes (
  id_pacientes INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  nome VARCHAR(90) NOT NULL,
  data_nascimento DATE,
  endereco VARCHAR(90),
  telefone BIGINT,
  email VARCHAR(90),
  numero_convenio VARCHAR(8) NOT NULL,
  CPF VARCHAR(11) NOT NULL,
  UNIQUE (CPF),
  RG INT NOT NULL,
  UNIQUE (RG),
  fk_pacientes_convenio INT,
  FOREIGN KEY (fk_pacientes_convenio) REFERENCES convenio(id_convenio)
);


drop table receita;
CREATE TABLE receita (
  id_receita INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  medicacao LONGTEXT,
  fk_receita_consultas INT,
  FOREIGN KEY(fk_receita_consultas) REFERENCES consultas(id_consultas)
  
);

CREATE TABLE quarto (
  id_quarto INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  numero INT NOT NULL
);

drop table tipo_quarto;
CREATE TABLE tipo_quarto (
  id_tipo_quarto INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  Descricao VARCHAR(1000) NOT NULL,
  valor_diaria DECIMAL(5,2) NOT NULL,
  fk_tipo_quarto_quarto INT,
  FOREIGN KEY(fk_tipo_quarto_quarto) REFERENCES quarto(id_quarto),
  tipo_de_quarto VARCHAR(90) NOT NULL
);

drop table internacao;
CREATE TABLE internacao (
    id_internacao INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    data_entrada TIMESTAMP NOT NULL,
    data_prev_alta TIMESTAMP NOT NULL,
    data_alta TIMESTAMP NOT NULL,
    procedimento MEDIUMTEXT NOT NULL,
    fk_internacao_pacientes INT,
    FOREIGN KEY (fk_internacao_pacientes) REFERENCES pacientes (id_pacientes),
    fk_internacao_medicos INT,
    FOREIGN KEY (fk_internacao_medicos) REFERENCES medicos (id_medicos),
    fk_internacao_quarto INT,
    FOREIGN KEY (fk_internacao_quarto) REFERENCES quarto (id_quarto)
);

CREATE TABLE enfermeiro (
  id_enfermeiro INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  nome VARCHAR(90) NOT NULL,
  CPF VARCHAR(11) NOT NULL,
  UNIQUE (CPF)
);

CREATE TABLE requer(
fk_requer_internacao INT,
FOREIGN KEY(fk_requer_internacao) REFERENCES internacao(id_internacao),
fk_requer_enfermeiro INT,
FOREIGN KEY(fk_requer_enfermeiro) REFERENCES enfermeiro(id_enfermeiro)
);

CREATE TABLE internacao_enfermeiro (
  id INT AUTO_INCREMENT PRIMARY KEY,
  fk_internacao INT,
  fk_enfermeiro INT,
  FOREIGN KEY (fk_internacao) REFERENCES internacao(id_internacao),
  FOREIGN KEY (fk_enfermeiro) REFERENCES enfermeiro(id_enfermeiro)
);

 

