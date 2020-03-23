DROP DATABASE IF EXISTS agenda;
CREATE DATABASE agenda;
USE agenda;
CREATE TABLE Contacts (
    client_id VARCHAR(15) NOT NULL,
    phone VARCHAR(30),
    email VARCHAR(100),
    address VARCHAR(255),
    PRIMARY KEY (client_id)
);
CREATE TABLE Date_details (
	date_id VARCHAR(15) NOT NULL,
	subject VARCHAR(255),
    place VARCHAR(255),
	date DATE,
    time TIME,
    PRIMARY KEY (date_id)
);

CREATE TABLE Date (
	date_id VARCHAR(15) NOT NULL,
    client_id VARCHAR(15) NOT NULL,
    PRIMARY KEY (date_id),
    FOREIGN KEY (client_id) REFERENCES Contacts(client_id)
)
