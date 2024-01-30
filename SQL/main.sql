ACTIVITY_1
CREATE DATABASE avionschool_development;

CREATE TABLE students (
    id integer PRIMARY KEY,
    first_name varchar(255) NOT NULL,
    middle_name varchar(255) NULL,
    last_name varchar(255) NOT NULL,
    age integer,
    location varchar(255)
);

INSERT INTO students (id, first_name, middle_name, last_name, age, location)
VALUES (1, 'Gillian Nicole', 'Gonzales', 'Lu', 22, 'Philippines');
VALUES (1, 'Gillian', 'Calayag', 'Akut', 22, 'Philippines');



