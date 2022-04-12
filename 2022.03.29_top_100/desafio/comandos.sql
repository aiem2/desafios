-- REQUERIMIENTO 1: CREAR BBDD PELÍCULA
CREATE DATABASE peliculas;
\c peliculas;

-- REQUERIMIENTO 2:

-- CREAR TABLAS
CREATE TABLE peli_info (id VARCHAR, nombre VARCHAR, estreno VARCHAR(4), director VARCHAR, PRIMARY KEY (id));
CREATE TABLE peli_cast (id VARCHAR, actor VARCHAR, FOREIGN KEY (id) REFERENCES peli_info (id));

-- CARGANDO ARCHIVOS CSV

\copy peli_info FROM 'D:\Emprendiendo\Capacitaciones\Desafio_Latam\Ruby_On_Rails\Bootcamp\Desafios\2022.03.29_top_100\desafio\peliculas.csv' csv header;

\copy peli_cast FROM 'D:\Emprendiendo\Capacitaciones\Desafio_Latam\Ruby_On_Rails\Bootcamp\Desafios\2022.03.29_top_100\desafio\reparto.csv' csv header;

-- REQUERIMIENTO 3: OBTENER EL ID DE TITANIC
SELECT id, nombre FROM peli_info WHERE nombre = 'Titanic';

--  REQUERIMIENTO 4: LISTAR A TODOS LOS ACTORES QUE APARECEN EN TITANIC
SELECT actor FROM peli_cast WHERE id = '2';

-- REQUERIMIENTO 5: PELÍCULAS TOP 100 DE HARRISON FORD
SELECT count(id) FROM peli_cast WHERE actor = 'Harrison Ford';

-- REQUERIMIENTO 6: PELÍCULAS ENTRE 1990 Y 1999 CON ORDEN ASCENDIENTE
SELECT * FROM peli_info WHERE estreno BETWEEN '1990' AND '1999' ORDER BY estreno ASC;

-- REQUERIMIENTO 7: CONSULTA DE LONGITUD DE LOS TÍTULOS
SELECT nombre, LENGTH(nombre) AS longitud_titulo FROM peli_info;

-- REQUERIMIENTO 8: LONGITUD MAYOR ENTRE LOS TÍTULOS
SELECT nombre, LENGTH(nombre) AS longitud_titulo FROM peli_info ORDER BY length(nombre) DESC LIMIT 1;
