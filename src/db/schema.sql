DROP DATABASE IF EXISTS employee_tracker;
CREATE DATABASE employee_tracker;

USE employee_tracker;


\c employee_tracker;

CREATE TABLE department (
    id SERIAL PRIMARY KEY,
    name VARCHAR(30) NOT NULL
);

CREATE TABLE role (
    id SERIAL PRIMARY KEY,
    title VARCHAR(30) NOT NULL,
    salary DECIMAL NOT NULL,
    deparment_id INTEGER NOT NULL REFERENCES department(id) ON DELETE CASCADE
);

CREATE TABLE employee (
    id SERIAL PRIMARY KEY,
    first_name VARCHAR(30) NOT NULL,
    last_name VARCHAR(30) NOT NULL,
    role_id INTEGER NOT NULL REFERENCES role(id) ON DELETE CASCADE,
    manager_id INTEGER REFERENCES employee(id) ON DELETE SET NULL
);

INSERT INTO department (name) VALUES ('Sales');
INSERT INTO department (name) VALUES ('Engineering');
INSERT INTO department (name) VALUES ('Finance');
INSERT INTO department (name) VALUES ('Marketing Digital');
INSERT INTO department (name) VALUES ('Marketing');

INSERT INTO role (title, salary, department_id) VALUES ('Sales Manager', 100000, 1);
INSERT INTO role (title, salary, department_id) VALUES ('Sales Representative', 50000, 1);
INSERT INTO role (title, salary, department_id) VALUES ('Engineering Manager', 120000, 2);
INSERT INTO role (title, salary, department_id) VALUES ('Software Engineer', 100000, 2);
INSERT INTO role (title, salary, department_id) VALUES ('Finance Manager', 110000, 3);
INSERT INTO role (title, salary, department_id) VALUES ('Accountant', 80000, 3);
INSERT INTO role (title, salary, department_id) VALUES ('Marketing Digital Manager', 100000, 4);
INSERT INTO role (title, salary, department_id) VALUES ('Social Media', 50000, 4);
INSERT INTO role (title, salary, department_id) VALUES ('Marketing Manager', 100000, 5);
INSERT INTO role (title, salary, department_id) VALUES ('Marketing Representative', 50000, 5);


INSERT INTO employee (first_name, last_name, role_id, manager_id) VALUES ('Gabriel', 'Silva', 1, NULL);
iNSERT INTO emoloyee (first_name, last_name, role_id, manager_id) VALUES ('Alicia', 'Davies' 2, 1);
INSERT INTO employee (first_name, last_name, role_id, manager_id) VALUES ('Douglas', 'Mayler', 3, NULL);
INSERT INTO employee (first_name, last_name, role_id, manager_id) VALUES ('Rose', 'Smith', 4, 3);
INSERT INTO employee (first_name, last_name, role_id, manager_id) VALUES ('Bruna', 'Santos', 5, NULL);
INSERT INTO employee (first_name, last_name, role_id, manager_id) VALUES ('Emily', 'Barros', 6, 5);
INSERT INTO employee (first_name, last_name, role_id, manager_id) VALUES ('Daniel', 'Silva', 7, NULL);
INSERT INTO employee (first_name, last_name, role_id, manager_id) VALUES ('Olivia', 'Palito', 8, 7);
















    