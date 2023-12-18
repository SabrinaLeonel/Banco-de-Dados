CREATE DATABASE db_escola;

USE db_escola;

CREATE TABLE tb_estudantes (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100),
    idade INT,
    curso VARCHAR(50),
    nota FLOAT,
    endereco VARCHAR(150)
);

INSERT INTO tb_estudantes (nome, idade, curso, nota, endereco) VALUES
('João Silva', 22, 'Engenharia', 8.5, 'Rua A, 123'),
('Maria Oliveira', 20, 'Medicina', 7.2, 'Avenida B, 456'),
('Carlos Santos', 21, 'Administração', 6.8, 'Rua C, 789'),
('Ana Pereira', 23, 'Psicologia', 9.3, 'Avenida D, 101'),
('Pedro Rocha', 19, 'Direito', 5.5, 'Rua E, 202'),
('Camila Lima', 24, 'Arquitetura', 8.0, 'Avenida F, 303'),
('Rafael Costa', 20, 'Ciência da Computação', 6.0, 'Rua G, 404'),
('Isabela Martins', 22, 'Biologia', 9.8, 'Avenida H, 505');

-- SELECT para retornar estudantes com nota maior do que 7.0
SELECT * FROM tb_estudantes WHERE nota > 7.0;

-- SELECT para retornar estudantes com nota menor do que 7.0
SELECT * FROM tb_estudantes WHERE nota < 7.0;

-- Atualizar a nota do estudante João Silva para 9.0
UPDATE tb_estudantes
SET nota = 9.0
WHERE id = 1;

SELECT * FROM tb_estudantes;