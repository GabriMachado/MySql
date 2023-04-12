-- Query para criação de banco de dados
CREATE DATABASE db_quitandinha; 

-- Começar utilizar banco
USE db_quitandinha; 

-- Criar tabela e popular 
CREATE TABLE tb_produtos(
id bigint auto_increment, 
nome varchar(255) not null, 
quantidade int,
preco decimal(6,2) not null, 
primary key(id)
);

-- Visualizar tabela
SELECT * FROM tb_produtos;

-- Popular tabela
INSERT INTO tb_produtos(nome, quantidade , preco)
values ("Tomate", 100, 8.80);

-- Popular tabela
INSERT INTO tb_produtos(nome, quantidade , preco)
values ("Laranja", 1200, 5);
INSERT INTO tb_produtos(nome, quantidade , preco)
values ("Pêra", 800, 11);
INSERT INTO tb_produtos(nome, quantidade , preco)
values ("Uva", 600, 10);
INSERT INTO tb_produtos(nome, quantidade , preco)
values ("Maçã", 1600, 7);
INSERT INTO tb_produtos(nome, quantidade , preco)
values ("Pitaya", 14, 9.90);

-- Buscas especificas
SELECT nome, quantidade from tb_produtos;

-- Buscas diretas por PARÊMTROS
SELECT * FROM tb_produtos WHERE id = 1; 

SELECT * FROM tb_produtos WHERE PRECO > 5.00;

-- Desabilitar segurança do SQL 
SET SQL_SAFE_UPDATE = 0;

-- Atualizar colunas da tabela 
UPDATE tb_produtos SET preco = 5.00 WHERE id = 3; 

-- Deletar itens 
DELETE FROM tb_produtos WHERE id = 3;

-- Atualizar coluna
ALTER TABLE tb_produtos MODIFY preco DECIMAL(6,2);

ALTER TABLE tb_produtos ADD descricao varchar(255);

ALTER TABLE tb_produtos DROP descricao;

ALTER TABLE tb_produtos CHANGE nome Produto varchar(255);

















