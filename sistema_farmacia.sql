CREATE DATABASE db_farmacia_bem_estar; 
USE db_farmacia_bem_estar; 

CREATE TABLE tb_categorias (
Id bigint auto_increment, 
Cosmeticos varchar (255) not null,
Medicamentos varchar (255) not null, 
primary key (Id)
);

select * FROM tb_categorias; 

ALTER TABLE tb_categorias CHANGE Cosmeticos Nome varchar(255) not null;

ALTER TABLE tb_categorias CHANGE Medicamentos Tipo varchar(255) not null;

ALTER TABLE tb_categorias CHANGE Nome Recomendacao varchar(255) not null;

ALTER TABLE tb_categorias CHANGE Recomendacao Classificacao varchar(255) not null;


INSERT INTO tb_categorias (Classificacao, Tipo)
Values ("Anti-Alérgico", "Medicamento");

INSERT INTO tb_categorias (Classificacao, Tipo)
Values ("Anti-Bióticoo", "Medicamento");

INSERT INTO tb_categorias (Classificacao, Tipo)
Values ("Anti-Inflamatório", "Medicamento");

INSERT INTO tb_categorias (Classificacao, Tipo)
Values ("Band-Aid", "Cosmeticos");

INSERT INTO tb_categorias (Classificacao, Tipo)
Values ("Creme Corporal", "Cosmeticos");


CREATE TABLE  tb_produtos ( 
Id bigint auto_increment, 
Nome varchar (255) not null,
Valor decimal (6,2) not null,
Quantidade int,
Recomendacao varchar (255) not null,
categoria_id bigint, 
primary key (id),
FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
);
SELECT * FROM tb_produtos;

INSERT INTO tb_produtos (Nome, Valor, Quantidade, Recomendacao, categoria_id)
VALUES ("Nimesulida", 17.00, 1,"Uso Adulto", 3);

INSERT INTO tb_produtos (Nome, Valor, Quantidade, Recomendacao, categoria_id)
VALUES ("Amoxilina", 51.00, 5,"Uso Infantil", 2);

INSERT INTO tb_produtos (Nome, Valor, Quantidade, Recomendacao, categoria_id)
VALUES ("Decongex", 60.00, 3, "Uso Geral", 1);

INSERT INTO tb_produtos (Nome, Valor, Quantidade, Recomendacao, categoria_id)
VALUES ("Cetaphill", 90.00, 10,"Uso Geral", 4);

INSERT INTO tb_produtos (Nome, Valor, Quantidade, Recomendacao, categoria_id)
VALUES ("Diclofenaco", 6.00, 15,"Uso Geral", 3);

INSERT INTO tb_produtos (Nome, Valor, Quantidade, Recomendacao, categoria_id)
VALUES ("Polaramine", 25.00, 12,"Uso Geral", 1);

INSERT INTO tb_produtos (Nome, Valor, Quantidade, Recomendacao, categoria_id)
VALUES ("Cetoprofeno", 5.00, 20,"Uso Geral", 3);

INSERT INTO tb_produtos (Nome, Valor, Quantidade, Recomendacao, categoria_id)
VALUES ("Oxacilina", 95.00, 15,"Uso Infantil", 2); 

INSERT INTO tb_produtos (Nome, Valor, Quantidade, Recomendacao, categoria_id)
VALUES ("Curtativo Johnson", 15.00, 13,"Uso Infantil", 5); 


SELECT * FROM tb_produtos WHERE Valor > 50.00;
SELECT * FROM tb_produtos WHERE Valor BETWEEN 5.00 AND 60.00;
SELECT * FROM tb_produtos WHERE Nome LIKE "%C%";

 SELECT * FROM tb_produtos INNER JOIN tb_categorias
ON tb_produtos.categoria_id = tb_categorias.id;

SELECT * FROM tb_produtos INNER JOIN tb_categorias
ON tb_produtos.categoria_id = tb_categorias.id
WHERE tb_categorias.tipo = "Medicamento";


