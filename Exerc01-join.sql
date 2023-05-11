CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;

CREATE TABLE tb_classes(

id INT PRIMARY KEY,
nome VARCHAR(255),
descricao VARCHAR(255)

);

INSERT INTO tb_classes (id, nome, descricao) VALUES
(1, "Guerreiro", "Especializado em combate corpo a corpo." ),
(2, "Mago","Especializado em magias."),
(3, "Arqueiro", "Especializado em ataques a longa distância."),
(4, "Ladrão", "Especializado em ataques furtivos."),
(5, "Necromante", "Especializado em manipular das forças da morte, capaz de controlar os mortos-vivos e lançar maldições sombrias.");

CREATE TABLE TB_PErsonagens (
  id INT PRIMARY KEY,
  NOMe VARCHAR(50),
  PODer_ataque INT,
  PODer_defesa INT,
  ID_classe INT,
  FOREIGN KEY (iD_ClAsse) REFERENCES TB_CLasses(id)
);

INSERT INTO tb_personagens (id, nome, poder_ataque, poder_defesa, id_classe) VALUES
  (1, 'Herói', 3000, 2500, 1),
  (2, 'Feiticeiro', 2500, 1800, 2),
  (3, 'Arqueiro élfo', 2100, 1500, 3),
  (4, 'Ladra lunari', 1800, 1300, 4),
  (5, 'Mago sombrio', 1000, 3000, 5),
  (6, 'Guerreiro solari', 2800, 2200, 1),
  (7, 'Mago das Sombras', 2300, 1600, 2),
  (8, 'Arqueira caçadora', 2200, 1800, 3);
  
  SELECT * FROM tb_personagens WHERE poder_ataque > 2000;
  
  SELECT * FROM tb_personagens WHERE poder_defesa BETWEEN 1000 AND 2000;

SELECT * FROM tb_personagens WHERE nome LIKE '%C%';

SELECT p.*, c.nome AS classe_nome
FROM tb_personagens AS p
INNER JOIN tb_classes AS c ON p.id_classe = c.id;

SELECT p.*, c.nome AS classe_nome
FROM tb_personagens AS p
INNER JOIN tb_classes AS c ON p.id_classe = c.id
WHERE c.nome = 'Mago';
