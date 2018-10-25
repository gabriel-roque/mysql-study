CREATE TABLE gafanhotos_assite_curso (
    id INT NOT NULL AUTO_INCREMENT,
    data DATE,
    idcurso INT,
    idgafanhoto INT,
    PRIMARY KEY (id),
    FOREIGN KEY (idgafanhoto) REFERENCES gafanhotos(id),
    FOREIGN KEY (idcurso) REFERENCES cursos(id)
)DEFAULT CHARSET UTF8;

DESCRIBE gafanhotos_assite_curso;

SELECT gafanhotos.nome, cursos.nome FROM gafanhotos
JOIN gafanhotos_assite_curso a
    ON gafanhotos.id = a.idgafanhoto
JOIN cursos
    ON cursos.id = a.idcurso;