DROP DATABASE IF EXISTS store;
CREATE DATABASE store;
USE store;
CREATE TABLE Products (
	product_id VARCHAR(15) NOT NULL,
	price INT,
	descr VARCHAR(255),
    image VARCHAR(255),
    PRIMARY KEY (product_id)
);
CREATE TABLE Clients (
	client_id VARCHAR(15) NOT NULL,
	username VARCHAR(255),
	password VARCHAR(255),
	email VARCHAR(255),
    phone VARCHAR(50),
    address VARCHAR(255)
);

CREATE TABLE Orders (
	order_id VARCHAR(15) NOT NULL,
	product_id VARCHAR(15) NOT NULL,
    total INT,
    ship_address VARCHAR(255),
    shipping_date DATE,
    delivery_date DATE,
	PRIMARY KEY (order_id),
	FOREIGN KEY (product_id) REFERENCES Products(product_id)
)
