create database db_generation_game_online;

use db_generation_game_online;

CREATE TABLE tb_classes(
id bigint AUTO_INCREMENT,
nome_classes varchar(255) NOT NULL,
PRIMARY KEY (id)
);

CREATE TABLE tb_personagem(
id bigint AUTO_INCREMENT,
nome_personagem varchar(100) NOT NULL,
ataque int(10), 
defesa int(10),
vitalidade int(10),
classes_id bigint, 
PRIMARY KEY (id),
FOREIGN KEY (classes_id) REFERENCES tb_classes(id)
);

insert into tb_classes(nome_classes) values ("Warrior");
insert into tb_classes(nome_classes) values ("Mage");
insert into tb_classes(nome_classes) values ("Assassin");
insert into tb_classes(nome_classes) values ("Archer");
insert into tb_classes(nome_classes) values ("Druid");

select * from tb_classes;

insert into tb_personagem(nome_personagem, ataque, defesa, vitalidade, classes_id) values ("Maguila", 2500, 3000, 2500, 1);
insert into tb_personagem(nome_personagem, ataque, defesa, vitalidade, classes_id) values ("Iracema", 3000, 8000, 7000, 2);
insert into tb_personagem(nome_personagem, ataque, defesa, vitalidade, classes_id) values ("Popo", 2300, 2800, 2000, 3);
insert into tb_personagem(nome_personagem, ataque, defesa, vitalidade, classes_id) values ("Borabil", 1000, 500, 1100, 4);
insert into tb_personagem(nome_personagem, ataque, defesa, vitalidade, classes_id) values ("Patolino", 1800, 2000, 1900, 5);
insert into tb_personagem(nome_personagem, ataque, defesa, vitalidade, classes_id) values ("AntonioNunes", 4000, 500, 3000, 1);
insert into tb_personagem(nome_personagem, ataque, defesa, vitalidade, classes_id) values ("Marcio", 6000, 2000, 500, 2);
insert into tb_personagem(nome_personagem, ataque, defesa, vitalidade, classes_id) values ("MatoMorreu", 1000, 5000, 1000, 3);
insert into tb_personagem(nome_personagem, ataque, defesa, vitalidade, classes_id) values ("XXX", 1000, 5000, 1000, 4);

select * from tb_personagem;

select * from tb_personagem where ataque > 2000;
SELECT * FROM tb_personagem WHERE defesa BETWEEN 1000 AND 2000 ORDER BY nome_personagem;
select * from tb_personagem where nome_personagem like "%c%";

select * from tb_personagem inner join tb_classes
on tb_personagem.classes_id = tb_classes.id;

select * from tb_personagem inner join tb_classes
on tb_personagem.classes_id = tb_classes.id where tb_classes.nome_classes  = "Warrior";
