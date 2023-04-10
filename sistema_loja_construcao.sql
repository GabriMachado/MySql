CREATE DATABASE db_construindo_vidas;
USE db_construindo_vidas;

CREATE TABLE tb_categorias (
Id bigint auto_increment, 
Funcao varchar (255) not null,
Tipo varchar (255) not null, 
primary key (Id)
); 
SELECT * FROM tb_categorias; 

INSERT INTO tb_categorias (Funcao , Tipo )
VALUE ("Decoracao" , "Interno");

INSERT INTO tb_categorias (Funcao , Tipo )
VALUE ("Acabamento" ,"Interno");

INSERT INTO tb_categorias (Funcao , Tipo )
VALUE ("Construcao" , "Externo");

INSERT INTO tb_categorias (Funcao , Tipo )
VALUE ("Reforma" , "Externa"); 



-- Nova Tabela

CREATE TABLE  tb_produtos ( 
Id bigint auto_increment, 
Nome varchar (255) not null,
Valor decimal (6,2) not null,
Qualidade varchar (255) not null,
Peso varchar (255) not null,
categoria_id bigint, 
primary key (id),
FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
);

SELECT * FROM tb_produtos; 

INSERT INTO tb_produtos (Nome , Valor, Qualidade, Peso, categoria_id )
VALUE ("Viga Ferro" , "56.00", "ALTO", "20Kg", 3); 

INSERT INTO tb_produtos (Nome , Valor, Qualidade, Peso, categoria_id )
VALUE ("Vaso" , "6.00", "BAIXA", "1g", 1); 

INSERT INTO tb_produtos (Nome , Valor, Qualidade, Peso, categoria_id )
VALUE ("Massa corrida" , "106.00", "ALTO", "5Kg", 2); 

INSERT INTO tb_produtos (Nome , Valor, Qualidade, Peso, categoria_id )
VALUE ("Revestimento" , "300.00", "MÉDIO", "12Kg", 1); 

INSERT INTO tb_produtos (Nome , Valor, Qualidade, Peso, categoria_id )
VALUE ("Tijolo" , "15.00", "BAIXO", "2Kg", 4); 

INSERT INTO tb_produtos (Nome , Valor, Qualidade, Peso, categoria_id )
VALUE ("Bocal" , "5.00", "ALTO", "200g", 2); 

INSERT INTO tb_produtos (Nome , Valor, Qualidade, Peso, categoria_id )
VALUE ("Telha" , "7.00", "MÉDIO", "8Kg", 3); 

INSERT INTO tb_produtos (Nome , Valor, Qualidade, Peso, categoria_id )
VALUE ("Piso" , "13.00", "ALTO", "900g", 4); 

SELECT * FROM tb_produtos WHERE Valor > 100.00;
SELECT * FROM tb_produtos WHERE Valor BETWEEN 70.00 AND 150.00;
SELECT * FROM tb_produtos WHERE Nome LIKE "%C%";

 SELECT * FROM tb_produtos INNER JOIN tb_categorias
ON tb_produtos.categoria_id = tb_categorias.id;

SELECT * FROM tb_produtos RIGHT JOIN tb_categorias
ON tb_produtos.categoria_id = tb_categorias.id
WHERE tb_categorias.tipo = "interno"


