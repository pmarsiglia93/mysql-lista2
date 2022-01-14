CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;

CREATE TABLE tb_categoria(
	id_categoria INT NOT NULL AUTO_INCREMENT,
    tamanho_pizza VARCHAR(45),
    qtd_pedacos INT,
    preco FLOAT,
    PRIMARY KEY (id_categoria)
);

INSERT INTO tb_categoria (tamanho_pizza, qtd_pedacos, preco)
VALUES
("Broto", "4", "18.99"),
("Media", "6", "28.99"),
("Grande", "8", "36.99"),
("Gigante", "10", "48.99"),
("Brutal", "12", "67.99");


CREATE TABLE tb_pizza(
	id_pizza INT NOT NULL AUTO_INCREMENT,
    sabor_pizza VARCHAR(45),
    recheio_pizza VARCHAR(45),
    qtd_pizza INT,
    borda_recheada BOOLEAN,
	azeitona BOOLEAN,
    fk_pizza INT,
    PRIMARY KEY (id_pizza),
	FOREIGN KEY (fk_pizza) REFERENCES tb_categoria (id_categoria)
);

INSERT INTO tb_pizza (sabor_pizza, recheio_pizza, qtd_pizza, borda_recheada, azeitona, fk_pizza)
VALUES
("Doce", "Brigadeiro", "1", TRUE, FALSE, 1),
("Doce", "Banana", "1", TRUE, FALSE, 2),
("Doce", "Doce de Leite", "1", FALSE, FALSE, 3),
("Doce", "Chocolate", "1", TRUE, FALSE, 4),
("Salgado", "Mussarela", "2", TRUE, TRUE, 5),
("Salgado", "Calabresa", "1", TRUE, TRUE, 2),
("Salgado", "Portuguesa", "1", TRUE, TRUE, 4),
("Salgado", "Palmito", "1", TRUE, TRUE, 3);

SELECT * FROM tb_categoria
	WHERE preco > 45.00;
    
SELECT * FROM tb_categoria
	WHERE preco BETWEEN 29.0 AND 60.0;

SELECT * FROM tb_pizza
	WHERE tb_pizza.recheio_pizza LIKE "%C%";
    
SELECT * FROM tb_categoria
	inner join tb_pizza on tb_pizza.fk_pizza = tb_categoria.id_categoria;
    
SELECT * FROM tb_pizza
	WHERE sabor_pizza = "Doce";
