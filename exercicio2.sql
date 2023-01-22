create database db_pizzaria_legal;

use db_pizzaria_legal;

CREATE TABLE tb_categorias(
id bigint AUTO_INCREMENT,
nome_categorias varchar(255) NOT NULL,
descricao varchar(200),
PRIMARY KEY (id)
);

CREATE TABLE tb_pizzas(
id bigint AUTO_INCREMENT,
nome_pizzas varchar(100) NOT NULL,
ingrediente_principal varchar(200), 
peso varchar(20),
preco decimal(10,2),
categorias_id bigint, 
PRIMARY KEY (id),
FOREIGN KEY (categorias_id) REFERENCES tb_categorias(id)
);

insert into tb_categorias(nome_categorias, descricao) values ("Doce","Pizzas doces");
insert into tb_categorias(nome_categorias, descricao) values ("Salgada", "Pizzas salgadas");
insert into tb_categorias(nome_categorias, descricao) values ("Especiais", "Pizzas diferentes das tradicionais");
insert into tb_categorias(nome_categorias, descricao) values ("Vegetariana", "Pizzas para veganos");
insert into tb_categorias(nome_categorias, descricao) values ("Sem Gluten", "Pizzas com massas sem gluten");

select * from tb_categorias;

insert into tb_pizzas(nome_pizzas, ingrediente_principal, peso, preco, categorias_id) values ("Calabresa", "Calabresa", "2kg", 49.90, 2);
insert into tb_pizzas(nome_pizzas, ingrediente_principal, peso, preco, categorias_id) values ("Portuguesa", "Ovos/cebola/azeitona/ervilha/queijo e presunto", "1.5kg", 31.90, 2);
insert into tb_pizzas(nome_pizzas, ingrediente_principal, peso, preco, categorias_id) values ("Banana com Canela", "Banana e Canela", "2.5kg",54.50, 1);
insert into tb_pizzas(nome_pizzas, ingrediente_principal, peso, preco, categorias_id) values ("Chocolate", "Chocolate meio amargo", "1.8kg", 43.99, 1);
insert into tb_pizzas(nome_pizzas, ingrediente_principal, peso, preco, categorias_id) values ("Amatriciana", "bacon/tomate cereja/azeite oliva/pimenta do reino", "2.1kg", 52.90, 3);
insert into tb_pizzas(nome_pizzas, ingrediente_principal, peso, preco, categorias_id) values ("Camarão c/palmito", "Camarão e palmito", "1.9kg", 47.5, 3);
insert into tb_pizzas(nome_pizzas, ingrediente_principal, peso, preco, categorias_id) values ("Cogumelos c/queijo", "Cogumelo e queijo", "1.5kg", 41.90, 4);
insert into tb_pizzas(nome_pizzas, ingrediente_principal, peso, preco, categorias_id) values ("Massa de couve flor", "Couve flor e massa sem gluten", "2.1kg", 54.99, 5);

select * from tb_pizzas;

select * from tb_pizzas where preco > 45.0;
SELECT * FROM tb_pizzas WHERE preco BETWEEN 50 AND 100 ORDER BY nome_pizzas;
select * from tb_pizzas where nome_pizzas like "%m%";

select * from tb_pizzas inner join tb_categorias
on tb_pizzas.categorias_id = tb_categorias.id;

select * from tb_pizzas inner join tb_categorias
on tb_pizzas.categorias_id = tb_categorias.id where tb_categorias.nome_categorias  = "Salgada";