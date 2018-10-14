CREATE DATABASE alter_drop_table;
USE alter_drop_table;

CREATE TABLE IF NOT EXISTS cursos(
  nome varchar(30) NOT NULL UNIQUE,
  descicao text,
  carga int UNSIGNED,
  totaulas int,
  ano year DEFAULT '2018'
)DEFAULT CHARSET = utf8;

ALTER TABLE cursos
    ADD COLUMN id int FIRST;

ALTER TABLE cursos
    ADD PRIMARY KEY (id);

DESCRIBE cursos;
