CREATE DATABASE alter_drop_table;
USE alter_drop_table;

-- add coluna
ALTER TABLE pessoas
    ADD COLUMN profissao varchar(10);

-- deruba coluna
ALTER TABLE pessoas
    DROP COLUMN profissao;

-- add em um posicao especifica na coluna
ALTER TABLE pessoas
    ADD COLUMN profissao varchar(10) AFTER nome;

-- colocar uma coluna em primeiro
ALTER TABLE pessoas
    ADD COLUMN profissao varchar(10) FIRST;

-- modificar definicoes da tabela
ALTER table pessoas
    MODIFY COLUMN  profissao varchar(30);


-- renomear uma coluna
ALTER TABLE pessoas
    CHANGE COLUMN profissao prof varchar(20);

-- renomear a tabela
ALTER TABLE pessoas
    RENAME TO nomedatabela;

describe pessoas;
SELECT * FROM pessoas;
