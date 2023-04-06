CREATE DATABASE db_cosmeticos;

USE db_cosmeticos;

CREATE TABLE tb_cosmeticos(
id bigint auto_increment, 
nome varchar(255) not null, 
recomendacao varchar(255) not null,
valor decimal(6,2) not null, 
estoque int, 
quantidade varchar (255),
primary key(id)
);

INSERT INTO tb_cosmeticos(nome, recomendacao , valor, estoque, quantidade)
values ("Primer", "Pele", 5.00, 15, "50 ml"); 

INSERT INTO tb_cosmeticos(nome, recomendacao , valor, estoque, quantidade)
values ("Batom", "Pele", 8.00, 10, "10 G"); 

INSERT INTO tb_cosmeticos(nome, recomendacao , valor, estoque, quantidade)
values ("Demaquilante", "Pele", 6.00, 50, "300 ml"); 

INSERT INTO tb_cosmeticos(nome, recomendacao , valor, estoque, quantidade)
values ("Boddy Splash", "Corpo", 10.00, 20, "150 ml"); 

INSERT INTO tb_cosmeticos(nome, recomendacao , valor, estoque, quantidade)
values ("Creme", "Cabelo", 15.00, 300, "100 ml"); 

INSERT INTO tb_cosmeticos(nome, recomendacao , valor, estoque, quantidade)
values ("Laquê", "Cabelo", 400.00, 58, "70 ml"); 

INSERT INTO tb_cosmeticos(nome, recomendacao , valor, estoque, quantidade)
values ("Glitter", "Corpo", 650.00, 45, "5g"); 

INSERT INTO tb_cosmeticos(nome, recomendacao , valor, estoque, quantidade)
values ("Chapinha", "Cabelo", 500.00, 15, "50 ml"); 

SELECT * FROM tb_cosmeticos;

UPDATE tb_cosmeticos SET quantidade = "1 UN" where id = 8;

SELECT * FROM tb_cosmeticos WHERE valor > 500.00;

SELECT * FROM tb_cosmeticos WHERE valor < 500.00;



