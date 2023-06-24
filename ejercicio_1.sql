/*Como es una relación de dos entidades con carnalidad de muchos a muchos debo partir la relación(agregando otra tabla además de la tabla 'curso' y la tabla 'estudiante')*/

/*Creo tabla 'curso'*/ 
CREATE TABLE curso(
    id CHAR(4) PRIMARY KEY,
    nombre CHAR(100)
);

/*Ingreso valores en la tabla 'curso'*/

INSERT INTO curso VALUES ('1001', 'Base de Datos I');
INSERT INTO curso VALUES ('1002', 'Algoritmos y Programación ');
INSERT INTO curso VALUES ('1003', 'Organización y Arquitectura de Computadoras');
INSERT INTO curso VALUES ('1004', 'Sistemas Operativos I');
INSERT INTO curso VALUES ('1005', 'Redes de Computadoras I');



/*Creo tabla 'estudiante'*/ 
CREATE TABLE estudiante(
    legajo CHAR(4) PRIMARY KEY,
    nombre CHAR(100)
); 

/*Ingreso valores en la tabla 'estudiante'*/

INSERT INTO estudiante VALUES ('1', 'Claudio');
INSERT INTO estudiante VALUES ('2', 'Pablo');
INSERT INTO estudiante VALUES ('3', 'Patricia');
INSERT INTO estudiante VALUES ('4', 'Valentin');
INSERT INTO estudiante VALUES ('5', 'Dorotea');



/*Creo tabla 'curso_estudiante'*/ 
CREATE TABLE curso_estudiante(
    id CHAR(4),
    FOREIGN KEY (id) REFERENCES curso(id),
    legajo CHAR(4),
    FOREIGN KEY(legajo) REFERENCES estudiante(legajo)
);

/*Ingreso valores en la tabla 'curso_estudiante'*/

INSERT INTO curso_estudiante VALUES ('1001', '1');
INSERT INTO curso_estudiante VALUES ('1001', '2');
INSERT INTO curso_estudiante VALUES ('1001', '3');
INSERT INTO curso_estudiante VALUES ('1001', '4');
INSERT INTO curso_estudiante VALUES ('1001', '5');
INSERT INTO curso_estudiante VALUES ('1002', '5');
INSERT INTO curso_estudiante VALUES ('1002', '4');
INSERT INTO curso_estudiante VALUES ('1003', '3');
INSERT INTO curso_estudiante VALUES ('1004', '1');



/*Muestro por pantalla las tablas*/
SELECT * FROM curso;
SELECT * FROM estudiante;
SELECT * FROM curso_estudiante;