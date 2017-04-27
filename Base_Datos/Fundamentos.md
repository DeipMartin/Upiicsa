# Base de datos SQL 

## Comandos

SELECT lo usamos cuando necesitamos leer ó seleccionar nuestros datos .
INSERT lo usamos para añadir nuevos datos .
UPDATE lo usamos cuando requerimos cambiar datos .
DELETE lo usamos cuando necesitamos eliminar datos existentes .
REPLACE lo usamos para reemplazar o cambiar datos nuevos o existentes.
TRUNCATE lo usamos cuando requerimos baciar los datos de un template .

## Un ejemplo simple de los comandos :

CREATE DATABASE students;
USE students;

CREATE TABLE alum ( id INT PRIMARY KEY, name VARCHAR(20) );
INSERT INTO alum VALUES ( 1, 'Will' );
INSERT INTO alum VALUES ( 2, 'Marry' );
INSERT INTO alum VALUES ( 3, 'Dean' );

SELECT id, name FROM mytable WHERE id = 1;
UPDATE alum SET name = 'Willy' WHERE id = 1;

SELECT id, name FROM alum;
DELETE FROM alum WHERE id = 1;

SELECT id, name FROM alum;
DROP DATABASE students;

SELECT count(1) from mytable; 
