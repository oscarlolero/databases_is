DROP DATABASE IF EXISTS Movies;
CREATE DATABASE Movies;
USE Movies;
CREATE TABLE Directors (
	Director_id VARCHAR(15) NOT NULL,
	Nom VARCHAR(255),
	Edad INT,
	Nacionalidad VARCHAR(255),
	PRIMARY KEY (Director_id)
);
CREATE TABLE Movie (
	Movie_id VARCHAR(15) NOT NULL,
	Nombre VARCHAR(255),
	Año INT,
	Director_id VARCHAR(15) NOT NULL,
	Siopsis VARCHAR(50),
	Campo VARCHAR(255),
    PRIMARY KEY (Movie_id),
    FOREIGN KEY (Director_id) REFERENCES Directors(director_id)
);
CREATE TABLE Actors (
	Actor_id VARCHAR(15) NOT NULL,
	Nombre VARCHAR(255),
	Edad INT,
	Nacionalidad VARCHAR(15),
    PRIMARY KEY (Actor_id)
);
CREATE TABLE Actors_peliculas (
	Movie_id VARCHAR(15) NOT NULL,
	Actor_id VARCHAR(15) NOT NULL,
    PRIMARY KEY (Movie_id),
    FOREIGN KEY (Actor_id) REFERENCES Actors(Actor_id)
);
CREATE TABLE Genres (
	Genre_id VARCHAR(15) NOT NULL,
	Nombre VARCHAR(255),
	PRIMARY KEY (Genre_id)
);
CREATE TABLE Entidad (
	Movie_id VARCHAR(15) NOT NULL,
	Genre_id VARCHAR(15) NOT NULL,
    PRIMARY KEY (Genre_id),
    FOREIGN KEY (Movie_id) REFERENCES Actors_peliculas(Movie_id)
);

