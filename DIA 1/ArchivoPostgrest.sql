-- Database: claset2

-- DROP DATABASE IF EXISTS claset2;

CREATE DATABASE claset2
    WITH
    OWNER = postgres
    ENCODING = 'UTF8'
    LC_COLLATE = 'es-CO'
    LC_CTYPE = 'es-CO'
    LOCALE_PROVIDER = 'libc'
    TABLESPACE = pg_default
    CONNECTION LIMIT = -1
    IS_TEMPLATE = False;

CREATE TABLE fabricante (
	serial
	codigo INT(10),
    nombre VARCHAR(100)
);
	
CREATE TABLE producto (
	codigo INT,
	nombre VARCHAR(100),
	precio DOUBLE PRECISION,
	codigo_fabricante INT,
    FOREIGN KEY (codigo_fabricante) REFERENCES fabricante(codigo)
);