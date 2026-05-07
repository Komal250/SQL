-- Create Database
CREATE DATABASE college;

-- Use Database
USE college;

-- Create Table
CREATE TABLE students (
    id INT,
    name VARCHAR(50),
    age INT
);

-- Insert Values
INSERT INTO students (id, name, age)
VALUES
(1, 'Rahul', 18),
(2, 'Sneha', 20),
(3, 'Amit', 19);

-- Display Table
SELECT * FROM students