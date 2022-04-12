-- REQUERIMIENTO 1: CARGAR RESPALDO
psql -U aiem2 -d conociendo_clientes -f 'D:\Emprendiendo\Capacitaciones\Desafio_Latam\Ruby_On_Rails\Bootcamp\Desafios\2022.03.31_entendiendo_comportamiento_clientes\desafío\unidad2.sql' -h localhost

-- REQUERIMIENTO 2: COMPRAS USUARIO01   
DO $$
BEGIN
    INSERT INTO compra (id, cliente_id, fecha) VALUES (DEFAULT, 01, CURRENT_DATE);
    INSERT INTO detalle_compra (id, producto_id, compra_id, cantidad) VALUES (DEFAULT, 9, (SELECT max(id) FROM compra), 5);
    UPDATE producto SET stock = stock - 5 WHERE producto.id = 9;
    EXCEPTION
        WHEN OTHERS THEN
        ROLLBACK;
        RETURN;
    COMMIT;
END $$;

--- CONFIRMAR QUE SE HIZO LA COMPRA
SELECT * FROM compra ORDER BY id DESC;

-- REQUERIMIENTO 3: COMPRAS USUARIO02
DO $$
BEGIN
    INSERT INTO compra (id, cliente_id, fecha) VALUES (DEFAULT, 02, CURRENT_DATE);
    INSERT INTO detalle_compra (id, producto_id, compra_id, cantidad) VALUES (DEFAULT, 1, (SELECT max(id) FROM compra), 3);
    INSERT INTO detalle_compra (id, producto_id, compra_id, cantidad) VALUES (DEFAULT, 2, (SELECT max(id) FROM compra), 3);
    INSERT INTO detalle_compra (id, producto_id, compra_id, cantidad) VALUES (DEFAULT, 8, (SELECT max(id) FROM compra), 3);
    UPDATE producto SET stock = stock - 3 WHERE producto.id = 1;
    UPDATE producto SET stock = stock - 3 WHERE producto.id = 2;
    UPDATE producto SET stock = stock - 3 WHERE producto.id = 8;
    EXCEPTION
        WHEN OTHERS THEN
        ROLLBACK;
        RETURN;
    COMMIT;
END $$;

--- COMPROBAR QUE NO SE HIZO LA COMPRA
SELECT * FROM compra ORDER BY id DESC;

-- REQUERIMIENTO 4: DIVERSAS CONSULTAS
--- Deshabilitar el Autocommit:
\set AUTOCOMMIT off

--- Insertar un nuevo cliente, confirmar si fue agregado y realizar un ROLLBACK;
BEGIN;
    SAVEPOINT checkpoint;
    INSERT INTO cliente (id, nombre, email) VALUES (11, 'usuario011', 'usuario011@gmail.com');
    SELECT * FROM cliente ORDER BY id; 
    ROLLBACK TO checkpoint; 
COMMIT;

--- Confirmar si se restauró la información.
SELECT * FROM cliente ORDER BY id;

--- Habilitar de nuevo el AUTOCOMMIT;
\set AUTOCOMMIT on