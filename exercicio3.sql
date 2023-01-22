create database db_farmacia_bem_estar;

use db_farmacia_bem_estar;

CREATE TABLE tb_categorias(
id bigint AUTO_INCREMENT,
nome_categorias varchar(255) NOT NULL,
descricao varchar(200),
PRIMARY KEY (id)
);

CREATE TABLE tb_produtos(
id bigint AUTO_INCREMENT,
nome_produtos varchar(100) NOT NULL,
validade date, 
fabricante varchar(255),
valor decimal(10,2),
categorias_id bigint,
PRIMARY KEY (id),
FOREIGN KEY (categorias_id) REFERENCES tb_categorias(id)
);

insert into tb_categorias(nome_categorias, descricao) values ("Remédio", "Medicamentos de variadas marcas");
insert into tb_categorias(nome_categorias, descricao) values ("Limpeza bocal", "Para limpeza da boca");
insert into tb_categorias(nome_categorias, descricao) values ("Mamãe/bebê", "Itens para mamães e bebês");
insert into tb_categorias(nome_categorias, descricao) values ("Anticoncepcionais", "Para evitar uma supresa");
insert into tb_categorias(nome_categorias, descricao) values ("Medicamentos Alto Custo", "Medicamentos esperciais");

select * from tb_categorias;

insert into tb_produtos(nome_produtos, validade, fabricante, valor, categorias_id) values ("Dorflex", "2024-05-07", "Sanofi", 12.50, 1);
insert into tb_produtos(nome_produtos, validade, fabricante, valor, categorias_id) values ("Creme dental", "2028-01-01", "Colgate", 12.95, 2);
insert into tb_produtos(nome_produtos, validade, fabricante, valor, categorias_id) values ("Fralda", "2023-12-28", "Pampers", 32.99, 3);
insert into tb_produtos(nome_produtos, validade, fabricante, valor, categorias_id) values ("Microvlar", "2025-11-04", "Bayer", 7.91, 4);
insert into tb_produtos(nome_produtos, validade, fabricante, valor, categorias_id) values ("Acitretina", "2023-07-08", "AMIGOS COM", 150.00, 5);
insert into tb_produtos(nome_produtos, validade, fabricante, valor, categorias_id) values ("Creme dental Luminous", "2025-02-24", "Colgate", 19.84, 2);
insert into tb_produtos(nome_produtos, validade, fabricante, valor, categorias_id) values ("Epidac", "2028-01-12", "Mantecorp", 149.90, 1);
insert into tb_produtos(nome_produtos, validade, fabricante, valor, categorias_id) values ("Bepantol Baby Creme", "2027-06-18", "Ache", 21.59, 3);

select * from tb_produtos;

select * from tb_produtos where valor > 50.00;
select * from tb_produtos where valor between 5.00 AND 60.00 ORDER BY nome_produtos;
select * from tb_produtos where nome_produtos like "%c%";

select * from tb_produtos inner join tb_categorias
on tb_produtos.categorias_id = tb_categorias.id;

select * from tb_produtos inner join tb_categorias
on tb_produtos.categorias_id = tb_categorias.id where tb_categorias.nome_categorias  = "Remédio";
