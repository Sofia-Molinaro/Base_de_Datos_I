/*
Crear la base de datos
Comenzar a usarla
Introducir datos de ejemplo
Mostrar todos los datos
Mostrar los datos que tienen un cierto nombre
Mostrar los datos que comienzan por una cierta inicial
Ver sólo el nombre y el precio de los que cumplen una condición (precio > 22000)
Modificar la estructura de la tabla para añadir un nuevo campo: "categoría"
Modificar los productos que comienza por la palabra "silla", para que su categoría sea "Silla"
Ver la lista categorías (sin que aparezcan datos duplicados)
Ver la cantidad de productos que tenemos en cada categoría
*/

CREATE database inventario;

use inventario; 

CREATE TABLE productos(
    codigo CHAR(4) PRIMARY KEY,
    nombre CHAR(100), 
    precio FLOAT
);

INSERT INTO productos VALUES('A10', 'silla algarrobo', 5278);
INSERT INTO productos VALUES('A11', 'silla pino', 1087);
INSERT INTO productos VALUES('B11', 'ropero', 50256);
INSERT INTO productos VALUES('C12', 'cama', 15506);
INSERT INTO productos VALUES('D13', 'mesa', 12589);
INSERT INTO productos VALUES('E10', 'escritorio', 85421);
INSERT INTO productos VALUES('F10', 'alacena', 16520);
INSERT INTO productos VALUES('G10', 'bar', 87241);

SELECT * FROM productos;

SELECT * FROM productos WHERE nombre = 'ropero';
SELECT * FROM productos WHERE nombre = 'alacena'; 

SELECT * FROM productos WHERE nombre like 's%';

SELECT * FROM productos WHERE precio > 22000; 

ALTER TABLE productos ADD categoria CHAR(10);    /*agrego una columna a la tabla*/

update productos set categoria='silla' where nombre like 'silla%';

update productos set categoria='silla' where left(nombre,5) = 'Silla';