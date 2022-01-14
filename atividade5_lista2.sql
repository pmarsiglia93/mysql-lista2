CREATE DATABASE db_construindo_a_nossa_vida;

USE db_construindo_a_nossa_vida;

CREATE TABLE tb_categoria (
	id_categoria INT NOT NULL AUTO_INCREMENT,   
    departamento VARCHAR(45),
	produto VARCHAR(45),
    comodo VARCHAR(45),
	PRIMARY KEY (id_categoria)
);

INSERT INTO tb_categoria (departamento, produto, comodo)
VALUES
("Hidraulica","Chuveiro","Banheiro"),
("Hidraulica","Ducha","Ducha de Privada"),
("Decoração","Cortinas","Quarto"),
("Iluminação","Lampada","Cozinha"),
("Moveis","Armário","Quarto"),
("Móveis", "Cadeira", "Sala de Estar");

CREATE TABLE tb_produto (
	id_produto INT NOT NULL AUTO_INCREMENT,
    nome_produto VARCHAR(45),
    preco_produto FLOAT,
    marca_produto VARCHAR(45),
    qtd_produto INT,    
    fk_produto INT,
    PRIMARY KEY (id_produto),
    FOREIGN KEY (fk_produto) REFERENCES tb_categoria (id_categoria)    
);

INSERT INTO tb_produto (nome_produto, preco_produto, marca_produto, qtd_produto, fk_produto)
VALUES
("Chuveiro Gold", "78.99", "Lorenzetti", "15", 1),
("Chuveiro Style", "59.99", "Campeão", "25", 1),
("Ducha Gold", "39.99", "Chuveiros Rei", "13", 2),
("Ducha Praiana", "35.99", "Duchazada", "11", 2),
("Cortinazadas", "19.99", "Cortinaz", "14", 3),
("Cortinas Lux", "29.99", "Lux", "17", 3),
("Luzes Gold", "49.99", "Gold Luz", "19", 4),
("Armário Marabraz", "59.99", "Marabraz", "12", 5),
("Cadeira Premiada", "23.99", "Premiadas", "15", 6);

SELECT * FROM tb_produto
	WHERE preco_produto > 50.00;
    
SELECT * FROM tb_produto
	WHERE preco_produto BETWEEN 3.0 AND 60.0;

SELECT * FROM tb_produto
	WHERE tb_produto.nome_produto LIKE "%C%";
    
SELECT * FROM tb_categoria
	inner join tb_produto on tb_produto.fk_produto = tb_categoria.id_categoria;
    
SELECT * FROM tb_categoria
	WHERE departamento = "hidraulica";

