CREATE DATABASE db_farmacia_do_bem;

USE db_farmacia_do_bem;

CREATE TABLE tb_categoria (
	id_categoria INT NOT NULL AUTO_INCREMENT,   
    departamento_categoria VARCHAR(45),
    descricao_categoria VARCHAR(45),
    receita_categoria BOOLEAN,
	PRIMARY KEY (id_categoria)
);

INSERT INTO tb_categoria(departamento_categoria, descricao_categoria, receita_categoria)
VALUES
("Cosmético", "Para sua pele", False),
("Cosmético", "Para sua boca", False),
("Medicamento","Para dor no corpo", TRUE),
("Medicamento","Medicamento de tratamento", TRUE),
("Higiene","Para cuidados dentários", FALSE);

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

INSERT INTO tb_produto(nome_produto, preco_produto, marca_produto, validade_produto, qtd_produto, fk_produto)
VALUES
("Hidratante", "29.99", "Nivea", '2024-06-20', "50", 1),
("Batom", "34.99", "Avon", '2024-08-22', "20", 2),
("Dipirona", "3.99", "Medley", '2023-04-12', "30", 3),
("Dorflex", "12.99", "NeoQuimica", '2023-03-10', "15", 3),
("Valsartana", "79.99", "EMS", '2024-04-20', "10", 4),
("Ursacol", "210.99", "Medley", '2023-03-15', "8", 4),
("Escova de dente", "15.99", "Colgate", '2023-08-03', "50", 5),
("Pasta de dente", "12.99", "Colgate", '2023-09-05', "45", 5);

SELECT * FROM tb_produto
	WHERE preco_produto > 50.00;
    
SELECT * FROM tb_produto
	WHERE preco_produto BETWEEN 3.0 AND 60.0;

SELECT * FROM tb_produto
	WHERE tb_produto.nome_produto LIKE "%B%";
    
SELECT * FROM tb_categoria
	inner join tb_produto on tb_produto.fk_produto = tb_categoria.id_categoria;
    
SELECT * FROM tb_categoria
	WHERE departamento_categoria = "Cosmético";
    

