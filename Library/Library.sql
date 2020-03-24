DROP DATABASE IF EXISTS Library;
CREATE DATABASE Library;
USE Library;
CREATE TABLE Usuario (
	user_id VARCHAR(15) NOT NULL,
	Nom VARCHAR(100),
    Ape_pat VARCHAR(100),
    Ape_mat VARCHAR(100),
    Email VARCHAR(80),
    Phone INT,
    Address VARCHAR(255),
	PRIMARY KEY (user_id)
);
CREATE TABLE Libros (
	libro_id VARCHAR(15) NOT NULL,
	Titulo VARCHAR(200),
	Editorial VARCHAR(255),
	Categoria VARCHAR(15) NOT NULL,
	Edicion VARCHAR(50),
	Autor VARCHAR(255),
    PRIMARY KEY (libro_id)
);
CREATE TABLE Seccion (
	seccion_id VARCHAR(15) NOT NULL,
	Nombre VARCHAR(255),
	Descripcion VARCHAR(255),
    PRIMARY KEY (seccion_id)
);
CREATE TABLE Prestamos (
	prest_id VARCHAR(15) NOT NULL,
	user_id VARCHAR(15) NOT NULL,
    libro_id VARCHAR(15) NOT NULL,
    Fecha_prest DATE,
    Fecha_entrega DATE,
    PRIMARY KEY (prest_id),
    #FOREIGN KEY (usr_id) REFERENCES Usuarios(usr_id),
    FOREIGN KEY (libro_id) REFERENCES Libros(libro_id)
);
CREATE TABLE Relacion (
	seccion_id VARCHAR(15) NOT NULL,
	libro_id VARCHAR(255),
	PRIMARY KEY (seccion_id),
	FOREIGN KEY (libro_id) REFERENCES Libros(libro_id)
);

