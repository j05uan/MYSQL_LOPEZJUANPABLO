-- ###################################
-- ######### EJERCICIO DIA 4 #########
-- ###################################


-- Creacion y uso de la BBDD paises

CREATE TABLE paises (
    paisID int PRIMARY KEY,
    nomnbre VARCHAR(20),
    continente VARCHAR(50),
    poblacion int
);

CREATE TABLE idioma (
    idiomaId int PRIMARY KEY,
    idiomaNombre VARCHAR(50)
);

CREATE TABLE ciudad (
    ciudadId int PRIMARY KEY,
    nombre VARCHAR(20),
    paisId int,
    FOREIGN KEY (paisId) REFERENCES paises(paisID)
);

CREATE TABLE idiomaPais(
    idiomaId int,
    paisId int,
    esOficial tinyint(1),
    PRIMARY KEY (idiomaId, paisId),
    FOREIGN KEY (idiomaId) REFERENCES idioma(idiomaId),
    FOREIGN KEY (paisId) REFERENCES paises(paisID)
);

-- Insertar datos en la tabla de paises
INSERT INTO paises (paisID, nomnbre, continente, poblacion)
VALUES 
(01, 'Colombia', 'America', 51609000),
(02, 'Portugal', 'Europa', 10467366), 
(03, 'Estados Unidos', 'America', 333530000),
(04, 'Japón', 'Asia', 125171000),
(05, 'China', 'Asia', 1411750000),
(06, 'España', 'Europa', 48592909),
(07, 'Alemania', 'Europa', 84358845),
(08, 'Francia', 'Europa', 68172977),
(09, 'Andorra', 'Europa', 85101),
(10, 'Afganistán', 'Asia', 34263000);

-- Insertar datos en la tabla de idioma
INSERT INTO idioma (idiomaId, idiomaNombre)
VALUES 
(1, 'Español'),
(2, 'Portugués'),
(3, 'Inglés'),
(4, 'Japonés'),
(5, 'Chino'),
(6, 'Francés'),
(7, 'Alemán'),
(8, 'Catalán'),
(9, 'Euskera'),
(10, 'Árabe');

-- Insertar datos en la tabla de ciudad
INSERT INTO ciudad (ciudadId, nombre, paisId)
VALUES 
(1, 'Bogotá', 1),
(2, 'Lisboa', 2),
(3, 'New York', 3),
(4, 'Tokyo', 4),
(5, 'Beijing', 5),
(6, 'Madrid', 6),
(7, 'Berlín', 7),
(8, 'París', 8),
(9, 'Andorra la Vella', 9),
(10, 'Kabul', 10);

-- Insertar datos eb la tabla de IdiomaPais
show tables;

--Desarrollado por Juan Pablo López Amaya C.C: 1.005.***.***
