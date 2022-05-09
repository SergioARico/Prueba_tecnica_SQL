create database vuelos_mexico; -- Creacion de base de datos vuelos_mexico 
show databases;
use vuelos_mexico; -- Seleccion para trabajar con vuelos_mexico 

-- Creacion de tabla aerolineas 
CREATE TABLE aerolineas(
	id_aerolinea int NOT NULL AUTO_INCREMENT,
    nombre_aerolinea varchar (50),
    PRIMARY KEY (id_aerolinea)
);
-- Datos de tabla de aerolineas
INSERT INTO aerolineas(nombre_aerolinea) VALUES ('Volaris');
INSERT INTO aerolineas(nombre_aerolinea) VALUES ('Aeromar');
INSERT INTO aerolineas(nombre_aerolinea) VALUES ('Interjet');
INSERT INTO aerolineas(nombre_aerolinea) VALUES ('Aeromexico');

-- SELECT * FROM aerolineas; -- Tabla de aerolineas

-- Creacion de tabla de aeropuertos 
CREATE TABLE aeropuertos(
	id_aeropuerto int NOT NULL AUTO_INCREMENT,
    nombre_aeropuerto varchar (50),
    PRIMARY KEY (id_aeropuerto)
);


-- Datos de tabla de aeropuertos
INSERT INTO aeropuertos(nombre_aeropuerto) VALUES ('Benito Juarez');
INSERT INTO aeropuertos(nombre_aeropuerto) VALUES ('Guanajuato');
INSERT INTO aeropuertos(nombre_aeropuerto) VALUES ('La paz');
INSERT INTO aeropuertos(nombre_aeropuerto) VALUES ('Oaxaca');

-- SELECT * FROM aeropuertos; -- Tabla de aeropuertos

-- Creacion de tabla de movimientos 
CREATE TABLE movimientos(
	id_movimiento int NOT NULL AUTO_INCREMENT,
    descripcion varchar (50),
    PRIMARY KEY (id_movimiento)
);
-- Datos de tabla de movimientos
INSERT INTO movimientos(descripcion) VALUES ('Salida');
INSERT INTO movimientos(descripcion) VALUES ('Llegada');

-- SELECT * FROM movimientos; -- Tabla de movimientos

-- Creacion de tabla de vuelos 
CREATE TABLE vuelos(
	id_aerolinea int NOT NULL,
    id_aeropueto int NOT NULL,
	id_movimiento int NOT NULL,
    dia date NOT NULL
);

-- modificando nombre de columna erroneo
ALTER TABLE vuelos CHANGE id_aeropueto id_aeropuerto int NOT NULL;
DESCRIBE vuelos; -- revisando campos 

-- Datos de tabla de vuelos
INSERT INTO vuelos(id_aerolinea, id_aeropuerto, id_movimiento, dia) 
	VALUES (1, 1, 1, '2021-05-02');
INSERT INTO vuelos(id_aerolinea, id_aeropuerto, id_movimiento, dia) 
	VALUES (2, 1, 1, '2021-05-02');  
INSERT INTO vuelos(id_aerolinea, id_aeropuerto, id_movimiento, dia) 
	VALUES (3, 2, 2, '2021-05-02');
INSERT INTO vuelos(id_aerolinea, id_aeropuerto, id_movimiento, dia) 
	VALUES (4, 3, 2, '2021-05-02');
INSERT INTO vuelos(id_aerolinea, id_aeropuerto, id_movimiento, dia) 
	VALUES (1, 3, 2, '2021-05-02');
INSERT INTO vuelos(id_aerolinea, id_aeropuerto, id_movimiento, dia) 
	VALUES (2, 1, 1, '2021-05-02');
INSERT INTO vuelos(id_aerolinea, id_aeropuerto, id_movimiento, dia) 
	VALUES (2, 3, 1, '2021-05-04');
INSERT INTO vuelos(id_aerolinea, id_aeropuerto, id_movimiento, dia) 
	VALUES (3, 4, 1, '2021-05-04');
INSERT INTO vuelos(id_aerolinea, id_aeropuerto, id_movimiento, dia) 
	VALUES (3, 4, 1, '2021-05-04');

-- SELECT * FROM vuelos; -- tabla de vuelos
