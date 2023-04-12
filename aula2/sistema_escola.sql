CREATE DATABASE db_escola;
USE db_escola;

CREATE TABLE tb_estudantes(
id bigint auto_increment, 
nome varchar(255) not null, 
serie varchar(255) not null,
nota decimal(6,2) not null, 
idade int, 
periodo varchar (255),
primary key(id)
);

INSERT INTO  tb_estudantes(nome, serie, nota, idade, periodo)
values ("Gabriel", "8 ANO", 10.0, 16, "Manhã"); 

INSERT INTO tb_estudantes(nome, serie, nota, idade, periodo)
values ("Ryan", "8 ANO",10.0, 15, "Tarde"); 

INSERT INTO  tb_estudantes(nome, serie, nota, idade, periodo)
values ("Beatriz", "9 ANO", 10.0, 17, "Manhã"); 

INSERT INTO tb_estudantes(nome, serie, nota, idade, periodo)
values ("Geovanny", "6 ANO", 8.00, 16, "Tarde"); 

INSERT INTO  tb_estudantes(nome, serie, nota, idade, periodo)
values ("Daisy", "8 ANO", 5.00, 16, "Tarde"); 

INSERT INTO tb_estudantes(nome, serie, nota, idade, periodo)
values ("Vinicius", "5 ANO", 8.00, 12, "Manhã"); 

INSERT INTO  tb_estudantes(nome, serie, nota, idade, periodo)
values ("Primer", "9 Ano", 7.5, 15, "Tarde"); 

INSERT INTO tb_estudantes(nome, serie, nota, idade, periodo)
values ("Luma", "5 Ano", 6.5, 15, "Tarde"); 



SELECT * FROM tb_estudantes;


SELECT * FROM tb_estudantes WHERE nota > 7.0;

SELECT * FROM tb_estudantes WHERE nota < 7.0;

UPDATE tb_estudantes SET periodo = "Noite" where id =8;

UPDATE tb_estudantes SET nome = "Luan" where id = 7;

