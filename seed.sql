DROP DATABASE IF EXISTS employee_db;

CREATE DATABASE employee_db;

USE employee_db;

CREATE TABLE employee (
  id INT NOT NULL AUTO_INCREMENT,
  first_name VARCHAR(30) NOT NULL,
  last_name VARCHAR(30) NOT NULL,
  role_id INT NOT NULL,
  manager_id INT,
  PRIMARY KEY (id)
);

INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES ("John", "Wick", 1, NULL), ("Jackie", "Chan", 2, 1), ("Ashley", "Greene", 3, NULL), ("Sarah", "Sanderson", 4, 3), ("Tim", "Allen", 5), ("John", "Frisk", 6, 5);

INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES ("Jeff", "Smith", 2, 1), ("Christina", "Bale", 4, 3), ("Patrick", "Ramirez", 6, 5);

CREATE TABLE role (
  id INT NOT NULL AUTO_INCREMENT,
  title VARCHAR(30) NOT NULL,
  salary DECIMAL(10,2) NOT NULL,
  department_id INT,
  PRIMARY KEY (id)
);

INSERT INTO role (title, salary, department_id)
VALUES ("Sales Lead", 80000, 1), ("Salesperson", 65000, 1), ("Legal Team Lead", 120000, 2), ("Lawyer", 105000, 2), ("Lead Engineer", 111000, 3), ("Engineer", 95000, 3);

CREATE TABLE department (
  id INT NOT NULL AUTO_INCREMENT,
  name VARCHAR(30),
  PRIMARY KEY (id)
);

INSERT INTO department (name)
VALUES ("Sales"), ("Legal"), ("Engineering");