CREATE DATABASE inventory;
USE inventory;

CREATE TABLE stores (
    store_id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    address VARCHAR(255) NULL,
    PRIMARY KEY (store_id)
);

CREATE TABLE employees (
    employee_id INT NOT NULL AUTO_INCREMENT,
    store_id INT NOT NULL,
    name VARCHAR(255) NOT NULL,
    address VARCHAR(255) NULL,
    phone VARCHAR(10) NULL,
    email VARCHAR(255) NOT NULL,
    password VARCHAR(255) NOT NULL,
    genre BOOLEAN NOT NULL,
    FOREIGN KEY (store_id)
      REFERENCES stores(store_id)
      ON DELETE CASCADE,
    PRIMARY KEY (employee_id)
);

CREATE TABLE departments (
    department_id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    PRIMARY KEY (department_id)
);

CREATE TABLE products (
    product_id INT NOT NULL AUTO_INCREMENT,
    store_id INT NOT NULL,
    department_id INT NOT NULL,
    name VARCHAR(255) NOT NULL,
    brand VARCHAR(255) NOT NULL,
    description TEXT NULL,
    stock INT NOT NULL,
    FOREIGN KEY (store_id)
      REFERENCES stores(store_id)
      ON DELETE CASCADE,
    FOREIGN KEY (department_id)
      REFERENCES departments(department_id)
      ON DELETE CASCADE,
    PRIMARY KEY (product_id)
);

/*
  Empleados por tienda
  Productos por departamento
  Productos de dos departamentos
  Productos por departamento y tienda
*/
