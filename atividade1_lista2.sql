CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;

CREATE TABLE tb_classe(
	id_classe INT NOT NULL AUTO_INCREMENT,
    classe VARCHAR(45),
    local VARCHAR(45),
    idade INT,
    PRIMARY KEY (id_classe)
);

CREATE TABLE tb_personagem(
	id_personagem INT NOT NULL AUTO_INCREMENT,
    nome VARCHAR(45),
    ataque INT,
    defesa INT,
    vitalidade INT,
    inteligencia INT,
    fk_personagem INT,
    PRIMARY KEY (id_personagem),
    FOREIGN KEY (fk_personagem) REFERENCES tb_classe (id_classe)
);

INSERT INTO tb_classe (classe, local, idade)
VALUES
("Arqueiro", "Itália", "25"),
("Mago", "Brasil", "32"),
("Cavaleiro", "Espanha", "21"),
("Mercenario", "Argentina", "33"),
("Ferreiro", "Japão", "45");

INSERT INTO tb_personagem (nome, ataque, defesa, vitalidade, inteligencia, fk_personagem)
VALUES 
("Cadmastor","2900","3000","1000","2500", 1),
("Ragnar","2500","3500","2100","1700", 2),
("Cratos","1700","2800","1400","1500", 3),
("Shelby","1400","1300","1900","1500", 4),
("Hagrid","1500","1300","1900","1500", 5),
("Gandalf","2500","1300","1800","2500", 2),
("Frodo","3500","2300","1900","3500", 3),
("Bilbo","2500","1350","2900","1500", 2);

SELECT * FROM tb_personagem
	WHERE ataque > 2000;
    
SELECT * FROM tb_personagem
	WHERE defesa BETWEEN 1000 AND 2000;
    
SELECT * FROM tb_personagem
	WHERE tb_personagem.nome LIKE "%C%";
    
SELECT * FROM tb_classe
	inner join tb_personagem on tb_personagem.fk_personagem = tb_classe.id_classe;
    
SELECT * FROM tb_classe
	where classe = "arqueiro";
    





