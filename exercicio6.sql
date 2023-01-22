create database db_curso_da_minha_vida;

use db_curso_da_minha_vida;

CREATE TABLE tb_categorias(
id bigint AUTO_INCREMENT,
nome_categorias varchar(255) NOT NULL,
descricao varchar(200),
PRIMARY KEY (id)
);

CREATE TABLE tb_cursos(
id bigint AUTO_INCREMENT,
nome_cursos varchar(100) NOT NULL,
valor decimal(10,2), 
carga_horaria varchar(10),
descricao varchar(200),
categorias_id bigint, 
PRIMARY KEY (id),
FOREIGN KEY (categorias_id) REFERENCES tb_categorias(id)
);

insert into tb_categorias(nome_categorias, descricao) values ("Curso de JAVA", "Curso de formação de progrmador BackEnd");
insert into tb_categorias(nome_categorias, descricao) values ("Curso de Inglês", "Curdo de inglês basico");
insert into tb_categorias(nome_categorias, descricao) values ("Curso Tec. Logística", "Curso de formação de losgítica");
insert into tb_categorias(nome_categorias, descricao) values ("Curso Superior Tec ADS", "Formação superior para TI");
insert into tb_categorias(nome_categorias, descricao) values ("Curso Tec em Farmácia", "Curso de Tecnico de farmácia");

select * from tb_categorias;

insert into tb_cursos(nome_cursos, valor, carga_horaria, descricao, categorias_id) values ("Orientação a objeto", 350.00, "86h", "Aula de programação em java", 1);
insert into tb_cursos(nome_cursos, valor, carga_horaria, descricao, categorias_id) values ("Inglês Básico", 450.85, "120h", "Aula de inglês básico", 2);
insert into tb_cursos(nome_cursos, valor, carga_horaria, descricao, categorias_id) values ("Projetos logísticos", 680.10, "230h", "Aula de Projetos logísticos", 3);
insert into tb_cursos(nome_cursos, valor, carga_horaria, descricao, categorias_id) values ("Gerenciamentos de cadeia de suprimentos", 1200.00, "350h", "Aula de gerenciamento de suprimentos", 3);
insert into tb_cursos(nome_cursos, valor, carga_horaria, descricao, categorias_id) values ("Fundamento de Rede de Computadores", 800.00, "300h", "Aula de rede de computadores", 4);
insert into tb_cursos(nome_cursos, valor, carga_horaria, descricao, categorias_id) values ("Programação Cliente Servidor", 760.99, "290h", "Aula de servidores", 4);
insert into tb_cursos(nome_cursos, valor, carga_horaria, descricao, categorias_id) values ("Atendimento ao cliente, promoção e vendas", 930.00, "1200h", "Aula de iniciação ao curso de farmácia", 5);
insert into tb_cursos(nome_cursos, valor, carga_horaria, descricao, categorias_id) values ("Farmacologia", 200.00, "100h", "Aula de interações dos organismos vivos e drogas", 5);

select * from tb_cursos;

select * from tb_cursos where valor > 500.00;
SELECT * FROM tb_cursos WHERE valor BETWEEN 600 AND 1000 ORDER BY categorias_id;
select * from tb_cursos where nome_cursos like "%j%";

select * from tb_cursos inner join tb_categorias
on tb_cursos.categorias_id = tb_categorias.id;

select * from tb_cursos inner join tb_categorias
on tb_cursos.categorias_id = tb_categorias.id where tb_categorias.nome_categorias  = "Curso Tec. Logística";