DROP DATABASE IF EXISTS employerDB;

CREATE DATABASE employerDB;

USE employerDB;

CREATE TABLE department(

   id INTEGER(11) AUTO_INCREMENT NOT NULL,
   name VARCHAR(30) NULL,
   PRIMARY KEY (id)
);

CREATE TABLE role(

    id INTEGER(11) AUTO_INCREMENT NOT NULL,
    title VARCHAR(30) NOT NULL,
    salary DECIMAL(6,2),
    department_id INTEGER NULL
    PRIMARY KEY (id)
);

CREATE TABLE employee (
   
    id INTEGER(11) AUTO_INCREMENT NOT NULL,
    first_name VARCHAR(30) NOT NULL,
    last_name VARCHAR(30) NOT NULL,
    role_id INTEGER NULL,
    manager_id INTEGER NOT NULL,
    PRIMARY KEY (id) 
);

VALUES ('Sales');
INSERT INTO department (name)
VALUES ('Engineer');
INSERT INTO department (name)
VALUES ('Finanace');
INSERT INTO department (name)
VALUES ('Law');

INSERT INTO role (title, salary, department_id)
VALUES ('Sales Lead', 100000, 1);
INSERT INTO role (title, salary, department_id)
VALUES ('Salesperson', 80000, 1);
INSERT INTO role (title, salary, department_id)
VALUES ('Lead Engineer', 150000, 2);
INSERT INTO role (title, salary, department_id)
VALUES ('Software Engineer', 150000, 2);
INSERT INTO role (title, salary, department_id)
VALUES ('Accountant', 100000, 3);
INSERT INTO role (title, salary, department_id)
VALUES ('Lawyer', 190000, 4);
INSERT INTO role (title, salary, department_id)
VALUES ('Legal Team Lead', 250000, 4);

INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES ('John', 'Doe', 1, 1);
INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES ('Kiara', 'Ortiz', 2, 1);
INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES ('Rorth', 'Cheth', 3, 2);
INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES ('Christine', 'Dorhman', 4, 2);
INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES ('Erika', 'Cereceres', 5, 3);
INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES ('Noel', 'Parades', 6, 4);
INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES ('Emad', 'Nazier', 7, 4);
