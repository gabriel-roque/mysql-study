create database aula03;

use aula03;

create table pessoas(
  nome varchar(30),
  idade tinyint,
  sexo char(1),
  peso float,
  altura float,
  nascionalidade varchar(20)
);

#descreve uma tabela
describe pessoas;
