CREATE DATABASE super;

USE super;
CREATE TABLE Produtos(
idProduto INT NOT NULL AUTO_INCREMENT,
nomeProduto VARCHAR(200),
categoriaProduto VARCHAR(200),
valorVendaProduto DOUBLE(9,2),
quantidadeProduto INT,
PRIMARY KEY (idProduto)
);

INSERT into Produtos
(nomeProduto,categoriaProduto,valorVendaProduto,quantidadeProduto) values
('Refrigerante','Bebidas','5.50',300),
('Arroz 5kg','Mercearia','8.50',100),
('Feijão','Mercearia','6.50',800),
('Detergente','Limpeza','2.10',100),
('Leite','Laticínios','2.70',600),
('Bolacha recheada',NULL,'1.50',200),
('Leite condensado','Mercearia','4.50',500);




SELECT * FROM Produtos;

/*OBS:
Existem, porém, situações em que são necessárias 
apenas colunas específicas da(s) tabela(s) pesquisada(s) e,
para isso, você deverá substituir o caractere asterisco pelo
 nome das colunas que deseja.
*/

SELECT nomeProduto,valorVendaProduto FROM Produtos; /*De qual tabela*/

/*COMO ENCONTRAR PRODUTOS DENTRO DA TABELA PRODUTOS:*/
SELECT *FROM Produtos WHERE nomeProduto = 'Arroz 5Kg';

/*COMPARAR DIFERENÇAS (Se eles pertencem a uma tal categoria)*/
SELECT nomeProduto, categoriaProduto,valorVendaProduto FROM Produtos WHERE categoriaProduto <> 'Mercearia';

/*Para consultar produtos em que o valor de venda (valorVendaProduto) seja, 
por exemplo, 1.50 e a quantidade (quantidadeProduto)
seja 200, pode-se usar o operador AND na cláusula WHERE.*/

SELECT * FROM Produtos WHERE valorVendaProduto = 1.50 AND quantidadeProduto = 200;

/*Para encontrar produtos em que a categoria (categoriaProduto)
seja “limpeza”, por exemplo, ou o valor de venda
(valorVendaProduto) seja 5.50, pode-se usar o operador OR.*/

SELECT * FROM Produtos WHERE categoriaProduto = 'Limpeza' OR valorVendaProduto = 5.50;

SELECT * FROM Produtos WHERE NOT categoriaProduto = 'Mercearia';

/*Cláusula BETWEEN para retornar os registros cujos preços estejam entre 5 e 10 reais:*/

SELECT * FROM Produtos WHERE valorVendaProduto BETWEEN 5 AND 10;

