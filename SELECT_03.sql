# agrupando registros

SELECT carga FROM cursos
GROUP BY carga;

SELECT carga, count(nome) FROM cursos
GROUP BY carga;

# organinza em agrupamento e conta quantos registros sao referentes aquele parametro
SELECT profissao, count(*) FROM gafanhotos
GROUP BY profissao;

SELECT carga, count(nome) FROM cursos WHERE totaulas = 30
GROUP BY carga;


# alem de agrupar ele so exibe quem dentre o grupo atende ao HAVING
SELECT carga, count(nome) FROM cursos WHERE totaulas = 30
GROUP BY carga
HAVING count(nome) > 3;

SELECT carga, count(nome) FROM cursos
WHERE totaulas >= 30
GROUP BY carga
HAVING carga > 30
ORDER BY carga desc;