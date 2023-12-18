CREATE DATABASE db_ecommerce;

USE db_ecommerce;

CREATE TABLE tb_produtos (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100),
    descricao TEXT,
    preco DECIMAL(10, 2),
    estoque INT,
    categoria VARCHAR(50)
);

INSERT INTO tb_produtos (nome, descricao, preco, estoque, categoria) VALUES
('Produto A', 'Descrição do Produto A', 599.99, 10, 'Eletrônicos'),
('Produto B', 'Descrição do Produto B', 299.99, 20, 'Roupas'),
('Produto C', 'Descrição do Produto C', 799.99, 5, 'Eletrônicos'),
('Produto D', 'Descrição do Produto D', 499.99, 15, 'Acessórios'),
('Produto E', 'Descrição do Produto E', 899.99, 8, 'Eletrônicos'),
('Produto F', 'Descrição do Produto F', 399.99, 25, 'Roupas'),
('Produto G', 'Descrição do Produto G', 599.99, 12, 'Acessórios'),
('Produto H', 'Descrição do Produto H', 699.99, 18, 'Eletrônicos');

-- SELECT para retornar produtos com valor maior do que 500
SELECT * FROM tb_produtos WHERE preco > 500;

-- SELECT para retornar produtos com valor menor do que 500
SELECT * FROM tb_produtos WHERE preco < 500;

-- Atualizar o preço do Produto A para 549.99
UPDATE tb_produtos
SET preco = 549.99
WHERE id = 1;

SELECT * FROM tb_produtos
