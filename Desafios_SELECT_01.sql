-- lista de todas as pessoas do sexo feminino
SELECT nome, sexo FROM gafanhotos WHERE sexo = 'F';

-- lista com todos os dados de todos aqueles que nasceram entre 1/Jan/2000 e 31/Dez/2015
SELECT nascimento FROM gafanhotos WHERE nascimento BETWEEN '2000-01-01' AND '2015-12-31';

-- lista com o nome de todos os homens que trabalham como Programados
SELECT nome, sexo, profissao FROM gafanhotos WHERE profissao = 'Programador' AND  sexo = 'M';

-- uma lista com os dados de todos as mulheres que nasceram no brasil e que tem seu nome iniciado com a Letra J
SELECT nome, sexo, peso FROM gafanhotos WHERE sexo = 'F' AND nacionalidade = 'Brasil' AND nome LIKE 'J%';

/* uma lista com o nome e nascionalidade de todos os homens que tem Silva no nome, nao nasceram no brasil
  e pesam menos de 100kg
*/
SELECT nome, nacionalidade FROM gafanhotos
WHERE nome LIKE '%silva%' AND nacionalidade != 'Brasil' AND  peso < 100;

-- Qual e a maior altura entre gafanhotos homens que moram Brasil?
SELECT max(altura) FROM gafanhotos
WHERE sexo = 'M' AND nacionalidade = 'Brasil';

-- Qual a media de peso das pessoas cadastradas
SELECT avg(peso) FROM gafanhotos;

-- Qual e o menor peso entre as mulheres que nasceram fora do Brasil e entre 01-01-1990 e 31-12-2000?
SELECT min(peso) FROM gafanhotos
WHERE nacionalidade != 'Brasil' AND nascimento BETWEEN '1990-01-01' and '2000-12-31';

-- Quantas mulehres tem mais de 1.90m de altura?
SELECT count(altura) FROM gafanhotos WHERE altura > 1.90;






