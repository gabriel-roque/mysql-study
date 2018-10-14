CREATE DATABASE aula04;
default character set utf8;
default collate utf8_gerenal_ci;

use aula04;

CREATE TABLE pessoas(
  id int NOT NULL AUTO_INCREMENT,
  nome varchar(30) NOT NULL ,
  idade date,
  sexo enum ('F','M'),
  peso decimal (5,2),
  altura decimal (3,2),
  nascionalidade varchar(20) DEFAULT 'Brasil',
  PRIMARY KEY (id)
) DEFAULT CHARSET = utf8;
