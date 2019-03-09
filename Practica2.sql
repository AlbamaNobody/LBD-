CREATE TABLE Prueba1(
    id int NOT NULL UNIQUE primary key,
    nombre varchar(50) NOT NULL,
    apellidos varchar(50),
    fecha_nacimiento date NOT NULL,
    edad INT generated always AS (datediff(fecha_nacimiento, CURDATE()))
); 

CREATE TABLE Prueba2(
    id int NOT NULL UNIQUE primary key,
    triangulo_tipo varchar(50) NOT NULL,
    lado1 int,
    lado2 int, 
    lado3 int,
    perimetro INT generated always AS (lado1 + lado2 + lado3)
);

CREATE TABLE Prueba3(
    id int NOT NULL UNIQUE primary key,
    nombre_producto varchar(50) NOT NULL,
    precio_unit long,
    lado2 int, 
    lado3 int,
    perimetro INT generated always AS (lado1 + lado2 + lado3)
);

CREATE TABLE Prueba4(
    id int NOT NULL UNIQUE primary key,
    precio_unitario double,
    modelo_procesador varchar(25), 
    modelo_tarjeta_video varchar(25),
    capacidad_ram int,
    clave_pc varchar(100) generated always AS (modelo_tarjeta_video + modelo_procesador + modelo_tarjeta_video),
    precio_iva double generated always AS (precio_unitario * 1.16)
);

CREATE TABLE Prueba5(
    id int NOT NULL UNIQUE primary key,
    nombre_consola varchar(50) NOT NULL,
    modelo varchar(25),
	capacidad int, 
    numero_serie int,
    clave varchar(50) generated always AS (numero_serie + capacidad)
);

CREATE TABLE Prueba6(
    id int NOT NULL UNIQUE primary key,
    marca varchar(15) NOT NULL,
    modelo varchar(25) NOT NULL,
	capacidad varchar(25), 
    procesador varchar(25),
    precio double NOT NULL,
    clave double generated always AS (precio * 1.16)
);

CREATE TABLE Prueba7(
    id int NOT NULL UNIQUE primary key,
    nombre_consola varchar(50) NOT NULL,
    modelo varchar(25),
	capacidad int, 
    numero_serie int,
    clave varchar(50) generated always AS (numero_serie + capacidad)
);

CREATE TABLE Prueba8(
    id int NOT NULL UNIQUE primary key,
    nombre_serie varchar(50) NOT NULL,
    temporadas varchar(25),
	año_estreno int
);

CREATE TABLE Prueba9(
    id int NOT NULL UNIQUE primary key,
    artista varchar(50) NOT NULL,
    año_inicio date,
	genero int,
    vive boolean
);

CREATE TABLE Prueba10(
    id int NOT NULL UNIQUE primary key,
    idArtista int,
    nombre varchar(50),
	año_lanzamiento date
);