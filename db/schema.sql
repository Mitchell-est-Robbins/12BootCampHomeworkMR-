
-- DROP DATABASE IF EXISTS merc_db;
-- Creates the "books_db" database --
CREATE DATABASE merc_db;
USE merc_db;

-- create department
-- create roles
-- create employees

CREATE TABLE department (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    dept VARCHAR (50)
);


-- * `role`

--     * `id`: `INT PRIMARY KEY`

--     * `title`: `VARCHAR(30)` to hold role title

--     * `salary`: `DECIMAL` to hold role salary

--     * `department_id`: `INT` to hold reference to department role belongs to
CREATE TABLE roles (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR (50) NOT NULL,
    salary DECIMAL,
    department_id INT,
    FOREIGN KEY (dept_id)
    REFERENCES department(id)
    ON DELETE SET NULL

);



-- * `employee`

--     * `id`: `INT PRIMARY KEY`

--     * `first_name`: `VARCHAR(30)` to hold employee first name

--     * `last_name`: `VARCHAR(30)` to hold employee last name

--     * `role_id`: `INT` to hold reference to employee role

--     * `manager_id`: `INT` to hold reference to another employee that is the manager of the current employee (`null` if the employee has no manager)
CREATE TABLE employee (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(30) NOT NULL,
    last_name VARCHAR(30) NOT NULL,
    role_id INT,
    manager_id INT,
    FOREIGN KEY (roles_id)
    REFERENCES roles(id)
    ON DELETE SET NULL
    FOREIGN KEY (manager_id)
    REFERENCES employee(id)
    ON DELETE SET NULL
    
);