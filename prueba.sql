CREATE TABLE club(
    codigo INT PRIMARY KEY,
    nombre CHAR(100) NOT NULL, 
    UNIQUE(nombre)
);

INSERT INTO club VALUES('1', 'river');
INSERT INTO club VALUES('2', 'independiente');
INSERT INTO club VALUES('3', 'boca');

/*#######################################################*/

CREATE TABLE estudiante(
    legajo CHAR(4) PRIMARY KEY,
    nombre CHAR(100) NOT NULL,
    apellido CHAR(100),
    club INT, 
    FOREIGN KEY (club) REFERENCES club(codigo)
);

INSERT INTO estudiante VALUES('1', 'pablo', NULL, 1);
INSERT INTO estudiante VALUES('2', 'patricia', NULL, 2);
INSERT INTO estudiante VALUES('3', 'claudio', NULL, 2);
INSERT INTO estudiante VALUES('4', 'valentin', NULL, 3);

SELECT * FROM estudiante;





