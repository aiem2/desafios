--PARTE 1:

--CREAR BASE DE DATOS
CREATE DATABASE Posts;

--CREAR TABLA POST
CREATE TABLE post
(id_post SERIAL, nombre_usuario VARCHAR(25), fecha_creacion DATE, contenido VARCHAR, descripcion VARCHAR, PRIMARY KEY (id_post) );

-- INSERTAR POST PAMELA (2)
INSERT INTO post (id_post, nombre_usuario, fecha_creacion, contenido, descripcion)
VALUES (DEFAULT, 'Pamela', '2022-03-28', 'Primer post de prueba', 'Estamos comenzando el ejercicio');

INSERT INTO post (id_post, nombre_usuario, fecha_creacion, contenido, descripcion)
VALUES (DEFAULT, 'Pamela', '2022-03-28', 'Segundo post de prueba', 'Seguimos avanzando con el ejercicio');

-- INSERTAR POST CARLOS 
INSERT INTO post (id_post, nombre_usuario, fecha_creacion, contenido, descripcion)
VALUES (DEFAULT, 'Carlos', '2022-03-28', 'Tercer post de prueba', 'Tercer post que se sube');

-- AGREGAR COLUMNA TÍTULO
ALTER TABLE post ADD titulo VARCHAR(50);

-- AGREGAR TÍTULOS A LOS POSTS SUBIDOS
UPDATE post SET titulo = 'Post 1' WHERE id_post = '1';
UPDATE post SET titulo = 'Post 2' WHERE id_post = '2';
UPDATE post SET titulo = 'Post 3' WHERE id_post = '3';

-- INSERTAR POSTS PEDRO (2)
INSERT INTO post (id_post, nombre_usuario, fecha_creacion, contenido, descripcion, titulo) 
VALUES (DEFAULT, 'Pedro', '2022-03-28', 'Pedro se suma al ejercicio', 'Primer post que sube Pedro', 'Post 4');

INSERT INTO post (id_post, nombre_usuario, fecha_creacion, contenido, descripcion, titulo) 
VALUES (DEFAULT, 'Pedro', '2022-03-28', 'Pedro sigue participando', 'Segundo post de Pedro', 'Post 5');

-- ELIMINAR POST DE CARLOS
DELETE FROM post WHERE nombre_usuario = 'Carlos';

-- AGREGAR NUEVO POST DE CARLOS
INSERT INTO post (id_post, nombre_usuario, fecha_creacion, contenido, descripcion, titulo) 
VALUES (DEFAULT, 'Carlos', '2022-03-28', 'Nuevo post de Carlos', 'Se genera un nuevo post para Carlos', 'Post 6');


--PARTE 2

--NUEVA TABLA "COMENTARIOS"
CREATE TABLE comentarios (id_comentario SERIAL, id_post SMALLINT, fecha_creacion DATE, hora_creacion TIME, contenido VARCHAR, FOREIGN KEY (id_post) REFERENCES post(id_post) );

--2 COMENTARIOS PARA PAMELA Y 4 PARA CARLOS
INSERT INTO comentarios (id_comentario, id_post, fecha_creacion, hora_creacion, contenido) 
VALUES (DEFAULT, 001, '2022-03-28','16:57:00', 'Comentario al primer post');

INSERT INTO comentarios (id_comentario, id_post, fecha_creacion, hora_creacion, contenido) 
VALUES (DEFAULT, 002,  '2022-03-28','16:57:30', 'Comentario al segundo post');

INSERT INTO comentarios (id_comentario, id_post, fecha_creacion, hora_creacion, contenido) 
VALUES (DEFAULT, 006, '2022-03-28','16:58:00', 'Primer comentario al post de Carlos');

INSERT INTO comentarios (id_comentario, id_post, fecha_creacion, hora_creacion, contenido) 
VALUES (DEFAULT, 006, '2022-03-28','16:58:30', 'Segundo comentario al post de Carlos');

INSERT INTO comentarios (id_comentario, id_post, fecha_creacion, hora_creacion, contenido) 
VALUES (DEFAULT, 006, '2022-03-28','16:59:00', 'Tercer comentario al post de Carlos');

INSERT INTO comentarios (id_comentario, id_post, fecha_creacion, hora_creacion, contenido) 
VALUES (DEFAULT, 006, '2022-03-28','16:59:30', 'Cuarto comentario al post de Carlos');

--CREAR POST PARA MARGARITA
INSERT INTO post (id_post, nombre_usuario, fecha_creacion, contenido, descripcion, titulo) 
VALUES (DEFAULT, 'Margarita', '2022-03-28', 'Primer post de Margarita', 'Se genera el primer post de esta usuario', 'Post 7');

--COMENTARIOS AL POST DE MARGARITA
INSERT INTO comentarios (id_post, fecha_creacion, hora_creacion, contenido) 
VALUES (007, '2022-03-28','17:03:00', 'Primer comentario al post de Margarita');

INSERT INTO comentarios (id_post, fecha_creacion, hora_creacion, contenido) 
VALUES (007, '2022-03-28','17:03:30', 'Segundo comentario al post de Margarita');

INSERT INTO comentarios (id_post, fecha_creacion, hora_creacion, contenido) 
VALUES (007, '2022-03-28','17:04:00', 'Tercero comentario al post de Margarita');
INSERT INTO comentarios (id_post, fecha_creacion, hora_creacion, contenido) 
VALUES (007, '2022-03-28','17:04:30', 'Cuarto comentario al post de Margarita');

INSERT INTO comentarios (id_post, fecha_creacion, hora_creacion, contenido) 
VALUES (007, '2022-03-28','17:05:00', 'Quinto comentario al post de Margarita');

