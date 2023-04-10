CREATE DATABASE db_cidade_das_carnes; 
USE db_cidade_das_carnes;

CREATE TABLE tb_categorias (
Id bigint auto_increment, 
Tipo varchar (255) not null,
Classificacao varchar (255) not null, 
primary key (Id)
); 

SELECT * FROM tb_categorias; 

INSERT INTO tb_categorias (Classificacao, Tipo)
VALUES ("Bovina","Vermelha");

INSERT INTO tb_categorias (Classificacao, Tipo)
VALUES ("Suína","Braca");

INSERT INTO tb_categorias (Classificacao, Tipo)
VALUES ("Aves","Branca");

INSERT INTO tb_categorias (Classificacao, Tipo)
VALUES ("Embutidos","Frios");


UPDATE tb_categorias  SET Tipo = "Branca" WHERE id = 2; 

SELECT * FROM tb_categorias; 

-- Nova Tabela
CREATE TABLE  tb_produtos ( 
Id bigint auto_increment, 
Nome varchar (255) not null,
Valor decimal (6,2) not null,
Peso varchar (255) not null,
Estado varchar (255) not null,
categoria_id bigint, 
primary key (id),
FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
);

INSERT INTO tb_produtos (Nome, Valor, Peso, Estado, categoria_id)
VALUES ("Peito de Frango", 12.50, "1KG", "Congelado", 3);

INSERT INTO tb_produtos (Nome, Valor, Peso, Estado, categoria_id)
VALUES ("Alcatra", 35.00, "1KG", "Fresco", 1);

INSERT INTO tb_produtos (Nome, Valor, Peso, Estado, categoria_id)
VALUES ("Salsicha", 18.90, "1KG", "Fresco", 4);

INSERT INTO tb_produtos (Nome, Valor, Peso, Estado, categoria_id)
VALUES ("Pernil", 9.89, "1KG", "Congelado", 2);

INSERT INTO tb_produtos (Nome, Valor, Peso, Estado, categoria_id)
VALUES ("Linguiça", 15.90, "1KG", "Fresco", 4);

INSERT INTO tb_produtos (Nome, Valor, Peso, Estado, categoria_id)
VALUES ("Picanha", 60.00, "1KG", "Fresco", 1);

INSERT INTO tb_produtos (Nome, Valor, Peso, Estado, categoria_id)
VALUES ("Bisteca", 10.90, "1KG", "Congelado", 2);

INSERT INTO tb_produtos (Nome, Valor, Peso, Estado, categoria_id)
VALUES ("Músculo", 70.90, "1KG", "Fresco", 1); 

SELECT * FROM tb_produtos; 


SELECT * FROM tb_produtos WHERE Valor > 50.00;
SELECT * FROM tb_produtos WHERE Valor BETWEEN 50.00 AND 150.00;
SELECT * FROM tb_produtos WHERE Nome LIKE "%C%";

 SELECT * FROM tb_produtos INNER JOIN tb_categorias
ON tb_produtos.categoria_id = tb_categorias.id;

SELECT * FROM tb_produtos INNER JOIN tb_categorias
ON tb_produtos.categoria_id = tb_categorias.id
WHERE tb_categorias.tipo = "interno"

