CREATE DATABASE cadastro;
USE cadastro;

INSERT INTO cursos VALUES
('1', 'HTML4', 'Curso de HTML5', '40', '37', '2014'),
('2', 'Algoritmos', 'Lógica de Progamação', '20', '15', '2014'),
('3', 'Photoshop', 'Dicas de Photoshop CC', '10', '8', '2014'),
('4', 'PGP', 'Curso de PHP para iniciantes', '40', '20', '2010'),
('5', 'Jarva', 'Introdução à Linguagem Java', '10', '29', '2000'),
('6', 'MySQL', 'Banco de Dados MySQL', '30', '15', '2016'),
('7', 'Word', 'Curso completo de Word', '40', '30', '2016'),
('8', 'Sapateado', 'Danças Rítmicas', '40', '37', '2018'),
('9', 'Cozinha Árabe', 'Aprender a fazer Kibe', '40', '30', '2018'),
('10', 'YouTuber', 'Gerar polêmica e ganhar inscritos', '5', '2', '2018');﻿

SELECT * FROM cursos;

# atualize tabela cursos onde o id = 1
UPDATE cursos
set nome = 'HTML5' WHERE id = 1;

# usa o where para apontar em qual linha quero alterar
UPDATE cursos
set nome = 'PHP', ano = 2015 WHERE id = 4;

UPDATE cursos
set nome = 'Java', ano = 2015, carga = 40 WHERE id = 5
limit 1;

#alterar varias linhas ao mesmo tempo
UPDATE cursos
set ano = 2050, carga = 450 WHERE ano = 2018;

# Deleta um registro
DELETE FROM cursos WHERE id = 8;

# Deleta varios regisros
DELETE FROM cursos where ano = 2050;

# apaga todos os registros
TRUNCATE cursos;
ALTER TABLE cursos AUTO_INCREMENT = 1;