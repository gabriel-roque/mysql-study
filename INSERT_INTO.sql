CREATE DATABASE insert_into;
use insert_into;

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

INSERT INTO pessoas (nome, idade, sexo, peso, altura, nascionalidade)
VALUES ('Gabriel', '1999-04-12', 'M', '60.5', '1.74', 'Brasil');

# se for inserir na mesma ordem do banco nao tem necessidade de esclarecer os mesmos
INSERT INTO pessoas VALUES (DEFAULT , 'Lucas', '1998-01-11', 'M', '80.5', '1.84', 'Brasil');

# para quando for inserir varios registros de uma vez.
INSERT INTO pessoas VALUES
(DEFAULT , 'Camila', '2002-12-23', 'F', '60.9', '1.65', DEFAULT),
(DEFAULT , 'Brian', '2000-02-15', 'M', '75.5', '1.90', DEFAULT),
(DEFAULT , 'Marcos', '2002-04-23', 'M', '67.2', '1.70', DEFAULT);

SELECT * FROM pessoas;
