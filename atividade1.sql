tb_colaboradoresUSE db_rh;

tb_colaboradorestb_colaboradoresCREATE TABLE tb_colaboradores(
    id BIGINT AUTO_INCREMENT,
	nome VARCHAR(255) NOT NULL,
	telefone  VARCHAR(11) NOT NULL,
    email VARCHAR(50) NOT NULL,
    CPF VARCHAR(11) NOT NULL,
	salario DECIMAL(6,2) NOT NULL,
    PRIMARY KEY (id)
);

ALTER TABLE tb_colaboradores
ADD COLUMN CPF VARCHAR(11) NOT NULL;

INSERT INTO tb_colaboradores(nome, telefone, email, CPF, salario) 
VALUES ("Joao da silva", "12345678912", "joaodasiva@gmail.com", "78945612303", 3000.00);

SELECT * FROM tb_colaboradores;

INSERT INTO tb_colaboradores(nome, telefone, email, CPF, salario) 
VALUES ("Victor Yazigi", "11922222222", "victoryazigi@gmail.com", "96385274114", 3500.00);
INSERT INTO tb_colaboradores(nome, telefone, email, CPF, salario) 
VALUES ("Sabrina Leonel", "11914785296", "sabrinaleonel@gmail.com", "98745632125", 3000.00);
INSERT INTO tb_colaboradores(nome, telefone, email, CPF, salario) 
VALUES ("Aurora Leonel", "11974185321", "auroraa@gmail.com", "36925814798", 2500.00);
INSERT INTO tb_colaboradores(nome, telefone, email, CPF, salario) 
VALUES ("Giroflex Correia", "11965478932", "girocorreia@gmail.com", "36925814852", 2000.00);

SELECT * FROM tb_colaboradores WHERE salario > 2000.00;

SELECT * FROM tb_colaboradores WHERE salario < 2000.00;

UPDATE tb_colaboradores SET salario = 1500.00 WHERE Id = 5;