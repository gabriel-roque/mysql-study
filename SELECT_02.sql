SELECT * FROM cursos
WHERE nome = 'PHP';

# Busca apenas dados que comecem com o parametro informado
# LIKE operador de parecido / semelhante, o % substitui por caracteres corringa

SELECT nome FROM cursos
WHERE nome LIKE 'P%';

SELECT nome FROM cursos
WHERE nome LIKE '%a';

SELECT nome FROM cursos
WHERE nome LIKE  '%a%';

SELECT nome FROM cursos
WHERE nome NOT LIKE '%a%';

#quero somente nomes que tenham silva
SELECT nome FROM gafanhotos
WHERE nome LIKE '%silva%';

# quero qualquer coisa silva um espaco qualquer coisa
SELECT nome FROM gafanhotos
WHERE nome LIKE '%silva_%';

# DISTINTIC SERVE PARA ME MOSTRAR ITENS DA TABELA SEM REPETILOS
# EX: QUERO SABER SOMENTE AS NACIONALIDADES SEM REPETIR
SELECT DISTINCT nacionalidade FROM gafanhotos;
SELECT DISTINCT carga FROM cursos;

# Funcao Count
# Quantos cursos tem mais de 40 horas
SELECT count(*) FROM cursos WHERE carga > 40;

# Qual a maior carga entre os cursos?
SELECT max(carga) FROM cursos;

SELECT max(totaulas) FROM cursos WHERE ano = 2016;
SELECT min(totaulas) FROM cursos WHERE ano = 2016;

# Soma
SELECT sum(totaulas) from cursos WHERE ano = 2016;

# Media
SELECT avg(totaulas) FROM cursos WHERE ano = 2018;









