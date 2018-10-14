use cadastro;
# filtra tudo
SELECT * FROM gafanhotos;
SELECT * FROM cursos;

# filtrar ordenando por um parametro
SELECT * FROM cursos
ORDER BY nome;

# filtrar por colunas
SELECT ano, nome FROM cursos;

#filtrar e ordenando
SELECT ano, nome FROM cursos
ORDER BY nome, ano; #dentro da selecao ordeno eles por nome a ano

# Filtrar linhas por parametros
SELECT * FROM cursos WHERE ano = 2016;
SELECT nome, descricao FROM cursos WHERE ano = 2016;

SELECT * FROM cursos WHERE ano <= 2015
ORDER BY ano;

# operador BETWEEN = a entre
SELECT nome, carga FROM cursos WHERE carga BETWEEN 20 AND 50;

# Operador IN = somentes estes
SELECT nome, ano FROM cursos WHERE ano IN (2014, 2016);

SELECT nome, sexo, profissao FROM gafanhotos WHERE sexo IN ('M')
ORDER BY profissao;

#filtro por operadores logicos
SELECT nome, carga, totaulas FROM cursos
WHERE carga > 20 AND totaulas < 30;

SELECT nome, carga, totaulas FROM cursos
WHERE carga > 20 OR totaulas < 30;