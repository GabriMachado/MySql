CREATE DATABASE db_rh;

USE db_rh;

CREATE TABLE tb_rh(
id bigint auto_increment, 
nome varchar(255) not null, 
cargo varchar(255) not null,
salario decimal(6,2) not null, 
idade int, 
email varchar (255),
primary key(id)
);

SELECT * FROM tb_rh;

INSERT INTO tb_rh(nome, cargo , salario, idade, email)
values ("Gabriel", "CEO", 100.00, 23, "gabriel.mach@hotmail.com");

INSERT INTO tb_rh(nome, cargo , salario, idade, email)
values ("Daisy", "Gerente PL", 1.500, 30, "daisy.cristina@hotmail.com");

INSERT INTO tb_rh(nome, cargo , salario, idade, email)
values ("Beatriz", "Gerente PL", 1.000, 22, "beatraz.seraphim@hotmail.com");

INSERT INTO tb_rh(nome, cargo , salario, idade, email)
values ("Carolina", "Supervisor", 2.000, 30, "carol.arau@hotmail.com");

INSERT INTO tb_rh(nome, cargo , salario, idade, email)
values ("Elaine", "Gerente SR", 90.000, 40, "elaine.sy@bol.com.br");

UPDATE tb_rh SET salario = 6000.00 where id = 1;

SELECT * FROM tb_rh WHERE salario > 2000.00;
SELECT * FROM tb_rh WHERE salario < 2000.00;


