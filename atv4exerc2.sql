CREATE DATABASE db_pizzaria_legal; 

USE db_pizzaria_legal;

CREATE TABLE tb_categorias (
    id_categoria BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome_categoria VARCHAR(50) NOT NULL,
    descricao_categoria VARCHAR(100)
);

INSERT INTO tb_categorias (nome_categoria, descricao_categoria) VALUES
('Salgada', 'Pizzas com sabores salgados'),
('Doce', 'Pizzas com sabores doces'),
('Vegetariana', 'Pizzas vegetarianas'),
('Especial', 'Pizzas especiais'),
('Tradicional', 'Pizzas tradicionais');

CREATE TABLE tb_pizzas (
    id_pizza BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome_pizza VARCHAR(100) NOT NULL,
    preco DECIMAL(10, 2) NOT NULL,
    tamanho VARCHAR(20) NOT NULL,
    id_categoria BIGINT,
    FOREIGN KEY (id_categoria) REFERENCES tb_categorias(id_categoria)
);

INSERT INTO tb_pizzas (nome_pizza, preco, tamanho, id_categoria) VALUES
('Margherita', 35.00, 'Média', 1),
('Quatro Queijos', 40.00, 'Grande', 1),
('Calabresa', 50.00, 'Família', 5),
('Chocolate com Morango', 60.00, 'Média', 2),
('Frango com Catupiry', 55.00, 'Grande', 4),
('Vegetariana Especial', 70.00, 'Família', 3),
('Brigadeiro', 25.00, 'Média', 2),
('Portuguesa', 48.00, 'Grande', 5);

SELECT * FROM tb_pizzas WHERE preco > 45.00;

-- SELECT que retorna todas as pizzas cujo valor esteja no intervalo R$ 50,00 e R$ 100,00
SELECT * FROM tb_pizzas WHERE preco BETWEEN 50.00 AND 100.00;

-- SELECT utilizando o operador LIKE, buscando todas as pizzas que possuam a letra M no atributo nome
SELECT * FROM tb_pizzas WHERE nome_pizza LIKE '%M%';

-- SELECT utilizando INNER JOIN, unindo os dados da tabela tb_pizzas com os dados da tabela tb_categorias
SELECT * FROM tb_pizzas INNER JOIN tb_categorias ON tb_pizzas.id_categoria = tb_categorias.id_categoria;

-- trazendo apenas as pizzas que pertençam a uma categoria específica (Exemplo: Todas as pizzas que são doce)
SELECT * FROM tb_pizzas
INNER JOIN tb_categorias ON tb_pizzas.id_categoria = tb_categorias.id_categoria
WHERE tb_categorias.nome_categoria = 'Doce';
