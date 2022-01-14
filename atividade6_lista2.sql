CREATE DATABASE db_curso_da_minha_vida;

use db_curso_da_minha_vida;

CREATE TABLE tb_categoria (
	id_categoria INT NOT NULL AUTO_INCREMENT,   
    plataforma VARCHAR(45),
	linguagem VARCHAR(45),
    PRIMARY KEY (id_categoria)
);

INSERT INTO tb_categoria (plataforma, linguagem)
VALUES
("Alura","Java"),
("Danki Code","Front-end"),
("Trybe","Java"),
("Coursera","JavaScript"),
("Curso em Vídeo","Hardware"),
("Udemy", "Python");

CREATE TABLE tb_produto (
	id_produto INT NOT NULL AUTO_INCREMENT,
    preco_produto FLOAT,
    mensalidade_produto BOOLEAN,
    anuidade_produto BOOLEAN,    
    fk_produto INT,
    PRIMARY KEY (id_produto),
    FOREIGN KEY (fk_produto) REFERENCES tb_categoria (id_categoria)    
);

INSERT INTO tb_produto (preco_produto, mensalidade_produto, anuidade_produto, fk_produto)
VALUES
("78.99", TRUE, TRUE, 1),
("559.99", FALSE, TRUE, 1),
("39.99", TRUE, FALSE, 2),
("435.99", FALSE, TRUE, 2),
("59.99", TRUE, FALSE, 3),
("429.99", FALSE, TRUE, 3),
("0.00", FALSE, FALSE, 4),
("59.99", TRUE, FALSE, 5);

SELECT * FROM tb_produto
	WHERE preco_produto > 50.00;
    
SELECT * FROM tb_produto
	WHERE preco_produto BETWEEN 3.0 AND 60.0;

SELECT * FROM tb_categoria
	WHERE tb_categoria.linguagem LIKE "%J%";
    
SELECT * FROM tb_categoria
	inner join tb_produto on tb_produto.fk_produto = tb_categoria.id_categoria;
    
SELECT * FROM tb_categoria
	WHERE linguagem = "Java";

