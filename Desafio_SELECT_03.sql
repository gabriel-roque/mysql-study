/* 1-uma lista com as profissoes dos gafanhatos e seus respectivos quantitativos. */

SELECT profissao, count(nome) FROM gafanhotos
GROUP BY profissao;

/* 2- Quantos gafanhotos homens e mulheres nasceram após 01/jan/2005 ? */

SELECT sexo, count(nome)FROM gafanhotos WHERE nascimento > '2005-01-01'
GROUP BY sexo;

/* 3-Lista com gafanhotos que nasceram fora do BRASIL, mostrando o país de origem
e o total de pessoas nascidas lá. Só nos interessam os países que tiveram mais de 3
gafanhotos com essa nacionalidade. */

SELECT nacionalidade, count(nome) FROM gafanhotos WHERE nacionalidade != 'Brasil'
GROUP BY nacionalidade
HAVING count(nome) > 3;


