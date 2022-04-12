-- REQUERIMIENTO 1: CREANDO BASE DE DATOS "BLOG"
CREATE DATABASE blog;
\c blog

-- REQUERIMIENTO 2: CREANDO LAS TABLAS
CREATE TABLE usuario (id_usuario SERIAL, mail VARCHAR(30), PRIMARY KEY (id_usuario));

CREATE TABLE post (id_post SERIAL, id_usuario INT, titulo VARCHAR(30), fecha DATE, PRIMARY KEY (id_post), FOREIGN KEY(id_usuario) REFERENCES usuario(id_usuario));
    
CREATE TABLE comentario (id_comentario SERIAL, id_usuario INT, id_post INT, texto VARCHAR, fecha DATE, PRIMARY KEY (id_comentario), FOREIGN KEY(id_post) REFERENCES post(id_post), FOREIGN KEY(id_usuario) REFERENCES usuario(id_usuario));

-- REQUERIMIENTO 3: INSERTANDO VALORES
-- TABLA USUARIOS

INSERT INTO usuario (id_usuario, mail) VALUES (DEFAULT, 'usuario01@hotmail.com');

INSERT INTO usuario (id_usuario, mail) VALUES (DEFAULT, 'usuario02@gmail.com');

INSERT INTO usuario (id_usuario, mail) VALUES (DEFAULT, 'usuario03@gmail.com');

INSERT INTO usuario (id_usuario, mail) VALUES (DEFAULT, 'usuario04@hotmail.com');

INSERT INTO usuario (id_usuario, mail) VALUES (DEFAULT, 'usuario05@yahoo.com');

INSERT INTO usuario (id_usuario, mail) VALUES (DEFAULT, 'usuario06@hotmail.com');

INSERT INTO usuario (id_usuario, mail) VALUES (DEFAULT, 'usuario07@yahoo.com');

INSERT INTO usuario (id_usuario, mail) VALUES (DEFAULT, 'usuario08@yahoo.com');

INSERT INTO usuario (id_usuario, mail) VALUES (DEFAULT, 'usuario09@yahoo.com');

-- TABLA POST

INSERT INTO post (id_post, id_usuario, titulo, fecha) VALUES (DEFAULT, 1, 'Post 1: Esto es malo', '2020-06-29');

INSERT INTO post (id_post, id_usuario, titulo, fecha) VALUES (DEFAULT, 5, 'Post 2: Esto es malo', '2020-06-20');

INSERT INTO post (id_post, id_usuario, titulo, fecha) VALUES (DEFAULT, 1, 'Post 3: Esto es excelente', '2020-05-30');

INSERT INTO post (id_post, id_usuario, titulo, fecha) VALUES (DEFAULT, 9, 'Post 4: Esto es bueno', '2020-05-09');

INSERT INTO post (id_post, id_usuario, titulo, fecha) VALUES (DEFAULT, 7, 'Post 5: Esto es bueno', '2020-07-10');

INSERT INTO post (id_post, id_usuario, titulo, fecha) VALUES (DEFAULT, 5, 'Post 6: Esto es excelente', '2020-07-18');

INSERT INTO post (id_post, id_usuario, titulo, fecha) VALUES (DEFAULT, 8, 'Post 7: Esto es excelente', '2020-07-07');

INSERT INTO post (id_post, id_usuario, titulo, fecha) VALUES (DEFAULT, 5, 'Post 8: Esto es excelente', '2020-05-14');

INSERT INTO post (id_post, id_usuario, titulo, fecha) VALUES (DEFAULT, 2, 'Post 9: Esto es bueno', '2020-05-08');

INSERT INTO post (id_post, id_usuario, titulo, fecha) VALUES (DEFAULT, 6, 'Post 10: Esto es bueno', '2020-06-02');

INSERT INTO post (id_post, id_usuario, titulo, fecha) VALUES (DEFAULT, 4, 'Post 11: Esto es bueno', '2020-05-05');

INSERT INTO post (id_post, id_usuario, titulo, fecha) VALUES (DEFAULT, 9, 'Post 12: Esto es malo', '2020-07-23');

INSERT INTO post (id_post, id_usuario, titulo, fecha) VALUES (DEFAULT, 5, 'Post 13: Esto es excelente', '2020-05-30');

INSERT INTO post (id_post, id_usuario, titulo, fecha) VALUES (DEFAULT, 8, 'Post 14: Esto es excelente', '2020-05-01');

INSERT INTO post (id_post, id_usuario, titulo, fecha) VALUES (DEFAULT, 7, 'Post 15: Esto es malo', '2020-06-17');

-- TABLA COMENTARIO

INSERT INTO comentario (id_comentario, id_usuario, id_post, texto, fecha) VALUES (DEFAULT, 3, 6, 'Este es el comentario 1', '2020-07-08');

INSERT INTO comentario (id_comentario, id_usuario, id_post, texto, fecha) VALUES (DEFAULT, 4, 2, 'Este es el comentario 2', '2020-06-07');

INSERT INTO comentario (id_comentario, id_usuario, id_post, texto, fecha) VALUES (DEFAULT, 6, 4, 'Este es el comentario 3', '2020-06-16');

INSERT INTO comentario (id_comentario, id_usuario, id_post, texto, fecha) VALUES (DEFAULT, 2, 13, 'Este es el comentario 4', '2020-06-15');

INSERT INTO comentario (id_comentario, id_usuario, id_post, texto, fecha) VALUES (DEFAULT, 6, 6, 'Este es el comentario 5', '2020-05-14');

INSERT INTO comentario (id_comentario, id_usuario, id_post, texto, fecha) VALUES (DEFAULT, 3, 3, 'Este es el comentario 6', '2020-07-08');

INSERT INTO comentario (id_comentario, id_usuario, id_post, texto, fecha) VALUES (DEFAULT, 6, 1, 'Este es el comentario 7', '2020-05-22');

INSERT INTO comentario (id_comentario, id_usuario, id_post, texto, fecha) VALUES (DEFAULT, 6, 7, 'Este es el comentario 8', '2020-07-09');

INSERT INTO comentario (id_comentario, id_usuario, id_post, texto, fecha) VALUES (DEFAULT, 8, 13, 'Este es el comentario 9', '2020-06-30');

INSERT INTO comentario (id_comentario, id_usuario, id_post, texto, fecha) VALUES (DEFAULT, 8, 6, 'Este es el comentario 10', '2020-06-19');

INSERT INTO comentario (id_comentario, id_usuario, id_post, texto, fecha) VALUES (DEFAULT, 5, 1, 'Este es el comentario 11', '2020-05-09');

INSERT INTO comentario (id_comentario, id_usuario, id_post, texto, fecha) VALUES (DEFAULT, 8, 15, 'Este es el comentario 12', '2020-06-17');

INSERT INTO comentario (id_comentario, id_usuario, id_post, texto, fecha) VALUES (DEFAULT, 1, 9, 'Este es el comentario 13', '2020-05-01');

INSERT INTO comentario (id_comentario, id_usuario, id_post, texto, fecha) VALUES (DEFAULT, 2, 5, 'Este es el comentario 14', '2020-05-31');

INSERT INTO comentario (id_comentario, id_usuario, id_post, texto, fecha) VALUES (DEFAULT, 4, 3, 'Este es el comentario 15', '2020-06-28');

-- REQUERIMIENTO 4: SELECCIONAR CORREO, ID Y TITULO  DE LOS POSTS DE USUARIO ID 5
SELECT usuario.id_usuario, mail, id_post, titulo FROM usuario LEFT JOIN post ON usuario.id_usuario = post.id_usuario WHERE post.id_usuario = '5';

-- REQUERIMIENTO 5: LISTAR CORREO, ID Y DETALLES DE TODOS LOS COMENTARIOS NO HECHOS POR USUARIO ID 6
SELECT mail, id_comentario, comentario.id_usuario, id_post, texto, fecha FROM usuario JOIN comentario ON usuario.id_usuario = comentario.id_usuario WHERE usuario.mail != 'usuario06@hotmail.com' ORDER BY id_usuario;

-- REQUERIMIENTO 6: LISTAR LOS USUARIOS QUE NO HAN PUBLICADO NINGÚN POST
SELECT * FROM usuario WHERE usuario.id_usuario NOT IN (SELECT post.id_usuario FROM post); 

-- REQUERIMIENTO 7: LISTAR TODOS LOS POST CON SUS COMENTARIOS
SELECT * FROM post FULL OUTER JOIN comentario ON post.id_post = comentario.id_post ORDER BY post;

-- REQUERIMIENTO 8: LISTAR TODOS LOS USUARIOS QUE HAYAN PUBLICADO UN POST EN JUNIO
SELECT * FROM usuario JOIN post ON usuario.id_usuario = post.id_usuario WHERE fecha BETWEEN '2020-06-01' AND '2020-06-30' ORDER BY post;