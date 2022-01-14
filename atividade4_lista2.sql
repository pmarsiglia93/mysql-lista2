CREATE DATABASE db_cidades_das_carnes;

USE db_cidades_das_carnes;

CREATE TABLE tb_categoria (
	id_categoria INT NOT NULL AUTO_INCREMENT,   
    tipo_carne VARCHAR(45),
    peca_carne VARCHAR(45),
    corte_carne VARCHAR(45),
	PRIMARY KEY (id_categoria)
);

INSERT INTO tb_categoria (tipo_carne, peca_carne, corte_carne)
VALUES
("Bovina","Alcatra","Bife"),
("Suina","Bisteca","Bife"),
("Aves","Frango","Bife"),
("Bovina","Acem","Moido"),
("Suina","Costela","Cubos"),
("Legumes", "Berinjela", "Inteira");

CREATE TABLE tb_produto (
	id_produto INT NOT NULL AUTO_INCREMENT,
    nome_produto VARCHAR(45),
    preco_produto FLOAT,
    marca_produto VARCHAR(45),
    validade_produto DATE,
    qtd_produto INT,    
    fk_produto INT,
    PRIMARY KEY (id_produto),
    FOREIGN KEY (fk_produto) REFERENCES tb_categoria (id_categoria)    
);

INSERT INTO tb_produto (nome_produto, preco_produto, marca_produto, validade_produto, qtd_produto, fk_produto)
VALUES
("Alcatra Ancho", "78.99", "Swift", "2023-05-04", "15", 1),
("Alcatra Argentina", "59.99", "Friboi", "2023-07-20", "25", 1),
("Bisteca Gold", "39.99", "Seara", "2024-08-18", "13", 2),
("Bisteca Gorda", "35.99", "Friboi", "2024-07-14", "11", 2),
("Frango Resfriado", "19.99", "Swift", "2023-04-13", "14", 3),
("Frango Temperado", "29.99", "Friboi", "2024-08-23", "17", 3),
("Carne Moida Premium", "49.99", "Sadia", "2023-07-20", "19", 4),
("Pescada Branca", "59.99", "Mister Mar", "2024-08-20", "12", 5),
("Berinjela Gold", "3.99", "Legumes Gold", "2022-02-25", "15", 6);

SELECT * FROM tb_produto
	WHERE preco_produto > 50.00;
    
SELECT * FROM tb_produto
	WHERE preco_produto BETWEEN 3.0 AND 60.0;

SELECT * FROM tb_produto
	WHERE tb_produto.nome_produto LIKE "%C%";
    
SELECT * FROM tb_categoria
	inner join tb_produto on tb_produto.fk_produto = tb_categoria.id_categoria;
    
SELECT * FROM tb_categoria
	WHERE tipo_carne = "Aves" OR tipo_carne = "legumes";
    



