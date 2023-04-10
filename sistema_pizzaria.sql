CREATE DATABASE db_pizzaria_legal;
USE db_pizzaria_legal; 

CREATE TABLE  tb_categorias ( 
Id bigint auto_increment,
Descricao varchar (255) not null, 
Tipo varchar (255) not null, 
primary key (id)
);

SELECT * FROM tb_categorias; 
 
INSERT INTO tb_categorias (Descricao, Tipo)
values ("Salgada","Vegana");
INSERT INTO tb_categorias (Descricao, Tipo)
values ("Salgada","Comum");
INSERT INTO tb_categorias (Descricao, Tipo)
values ("Doce","Vegana");
INSERT INTO tb_categorias (Descricao, Tipo)
values ("Doce","Comum");
INSERT INTO tb_categorias (Descricao, Tipo)
values ("Broto","Vegana");
INSERT INTO tb_categorias (Descricao, Tipo)
values ("Broto","Comum"); 


-- Nova Tabela
CREATE TABLE  tb_pizzas ( 
Id bigint auto_increment, 
Sabor varchar (255) not null,
Valor decimal (6,2) not null,
Quantidade int,
Borda varchar (255) not null,
Entrega varchar (255) not null,
categoria_id bigint, 
primary key (id),
FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
);

INSERT INTO tb_pizzas (Sabor, Valor, Quantidade, Borda, Entrega, categoria_id)
VALUES ("Mussarela", 50.00, 1, "Cheddar", "Retirada", 2);
INSERT INTO tb_pizzas (Sabor, Valor, Quantidade, Borda, Entrega, categoria_id)
VALUES ("Calamussa", 42.00, 2, "S/B", "Retirada", 2);
INSERT INTO tb_pizzas (Sabor, Valor, Quantidade, Borda, Entrega, categoria_id)
VALUES ("Tofu", 60.00, 1, "S/B", "Entrega", 1);
INSERT INTO tb_pizzas (Sabor, Valor, Quantidade, Borda, Entrega, categoria_id)
VALUES ("Banana", 42.00, 1, "S/B", "Entrega", 3);
INSERT INTO tb_pizzas (Sabor, Valor, Quantidade, Borda, Entrega, categoria_id)
VALUES ("Doce de Leite", 38.00, 2, "S/B", "Retirada", 4);
INSERT INTO tb_pizzas (Sabor, Valor, Quantidade, Borda, Entrega, categoria_id)
VALUES ("Filé Mignon", 70.00, 2, "S/B", "Entrega", 6);
INSERT INTO tb_pizzas (Sabor, Valor, Quantidade, Borda, Entrega, categoria_id)
VALUES ("Brocolis", 45.00, 1, "S/B", "Retirada", 5);
INSERT INTO tb_pizzas (Sabor, Valor, Quantidade, Borda, Entrega, categoria_id)
VALUES ("Portuguesa", 45.00, 1, "Catupiry", "Entrega", "2");

SELECT * FROM tb_pizzas; 

SELECT * FROM tb_pizzas WHERE Valor > 45.00;

SELECT * FROM tb_pizzas WHERE Valor BETWEEN 50.00 AND 100.00;

SELECT * FROM tb_pizzas WHERE Sabor LIKE "%m%";

SELECT * FROM tb_pizzas INNER JOIN tb_categorias
ON tb_pizzas.categoria_id = tb_categorias.id;

SELECT * FROM tb_pizzas RIGHT JOIN tb_categorias
ON tb_pizzas.categoria_id = tb_categorias.id
WHERE tb_categorias.descricao = "Salgada"






