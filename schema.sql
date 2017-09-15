DROP DATABASE IF EXISTS bamazon_db;

CREATE DATABASE bamazon_db;

USE bamazon_db;

CREATE TABLE products (
  id INTEGER AUTO_INCREMENT NOT NULL,
  product_name VARCHAR(64) NOT NULL,
  department_name VARCHAR(64) NOT NULL,
  price DECIMAL(10,2) NOT NULL,
  stock_quantity INTEGER NOT NULL,
  PRIMARY KEY(id)
);


SELECT * FROM products;

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ('Overwatch', 'Video Games', 29.99, 40);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ('Rocket League', 'Video Games', 19.99, 10);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("PlayerUnknown's Battlegrounds", 'Video Games', 29.99, 100);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ('World of Warcraft', 'Video Games', 29.99, 60);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ('Grand Theft Auto IV', 'Video Games', 59.99, 20);
