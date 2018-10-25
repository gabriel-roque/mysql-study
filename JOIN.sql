USE cadastro;

ALTER TABLE gafanhotos
    add column cursopreferido int;

/* add a FK e logo referencio a tabela*/

ALTER TABLE gafanhotos
    add FOREIGN KEY (cursopreferido) references cursos(idcurso);

SELECT nome, cursopreferido FROM gafanhotos;

UPDATE gafanhotos SET gafanhotos.cursopreferido = 6 WHERE id = 1;

---> JUNCOES SQL

SELECT nome, cursopreferido from gafanhotos;
SELECT nome, ano from cursos;

-- >>>>>> Sempre que usar JOIN usar o ON
SELECT gafanhotos.nome, cursos.nome, cursos.ano from gafanhotos JOIN cursos
ON cursos.idcurso = gafanhotos.cursopreferido;

-- >>>> USANDO Alias na tabela
SELECT g.nome, c.nome, c.ano FROM gafanhotos AS g JOIN cursos AS c
ON c.idcurso = g.cursopreferido;

-- Mostrar alunos mesmo aquele que nao preferem nada
SELECT g.nome, c.nome, c.ano FROM gafanhotos AS g LEFT JOIN cursos AS c
ON c.idcurso = g.cursopreferido;

-- Mostrar todos os cursos mesmo aqueles que ninguem prefere
SELECT g.nome, c.nome, c.ano FROM gafanhotos as g RIGHT JOIN cursos AS c
ON c.idcurso = g.cursopreferido;

