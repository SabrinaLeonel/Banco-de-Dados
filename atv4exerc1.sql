CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;

CREATE TABLE tb_classes (
    id_classe BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome_classe VARCHAR(50) NOT NULL,
    tipo_atributo VARCHAR(50) NOT NULL
);

INSERT INTO tb_classes (nome_classe, tipo_atributo) VALUES
('Warrior', 'Força'),
('Wizard', 'Inteligência'),
('Archer', 'Destreza'),
('Cleric', 'Sabedoria'),
('Rogue', 'Agilidade');

CREATE TABLE tb_personagens (
    id_personagem BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome_personagem VARCHAR(100) NOT NULL,
    poder_ataque INT NOT NULL,
    poder_defesa INT NOT NULL,
    id_classe BIGINT,
    FOREIGN KEY (id_classe) REFERENCES tb_classes(id_classe)
);

INSERT INTO tb_personagens (nome_personagem, poder_ataque, poder_defesa, id_classe) VALUES
('Herói1', 2500, 1800, 1),
('Feiticeiro1', 1800, 1200, 2),
('Arqueiro1', 2100, 1500, 3),
('Curandeiro1', 1600, 2000, 4),
('Ladrão1', 1900, 1700, 5),
('Herói2', 2800, 2000, 1),
('Feiticeiro2', 2000, 1500, 2),
('Arqueiro2', 2300, 1600, 3);

-- SELECT que retorna todos os personagens cujo poder de ataque seja maior do que 2000
SELECT * FROM tb_personagens WHERE poder_ataque > 2000;

-- SELECT que retorna todos os personagens cujo poder de defesa esteja no intervalo 1000 e 2000
SELECT * FROM tb_personagens WHERE poder_defesa BETWEEN 1000 AND 2000;

-- SELECT utilizando o operador LIKE, buscando todos os personagens que possuam a letra C no atributo nome
SELECT * FROM tb_personagens WHERE nome_personagem LIKE '%C%';

-- SELECT utilizando INNER JOIN, unindo os dados da tabela tb_personagens com os dados da tabela tb_classes
SELECT * FROM tb_personagens INNER JOIN tb_classes ON tb_personagens.id_classe = tb_classes.id_classe;

-- trazendo apenas os personagens que pertencem a uma classe específica 
SELECT * FROM tb_personagens
INNER JOIN tb_classes ON tb_personagens.id_classe = tb_classes.id_classe
WHERE tb_classes.nome_classe = 'Archer';
