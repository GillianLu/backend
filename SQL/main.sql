ACTIVITY_1
CREATE DATABASE avionschool_development;

CREATE TABLE students
(
    id integer PRIMARY KEY,
    first_name varchar(255) NOT NULL,
    middle_name varchar(255) NULL,
    last_name varchar(255) NOT NULL,
    age integer,
    location varchar(255)
);

INSERT INTO students
    (id, first_name, middle_name, last_name, age, location)
VALUES
    (1, 'Gillian Nicole', 'Gonzales', 'Lu', 22, 'Philippines'),
    (2, 'Christia', 'Calayag', 'Akut', 22, 'Philippines'),
    (3, 'Don', 'Alexander', 'Lim', 20, 'Philippines');

UPDATE students
SET first_name = 'Monica Gomos', City= 'Cebu'
WHERE CustomerID = 3;

DELETE FROM students WHERE first_name='Christia';




