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
VALUES(1, 'Gillian', 'Gonzales', 'Lu', 22, 'Manila'),
    (2, 'John', 'Doe', 'Smith', 20, 'New York'),
    (3, 'Jane', 'Alice', 'Brown', 19, 'Los Angeles'),
    (4, 'Mike', 'Andrew', 'Johnson', 21, 'Chicago');

UPDATE students
SET first_name = 'Monica Gomos', City= 'Cebu'
WHERE id = 3;

DELETE FROM students WHERE first_name='Christia';

-- Activity 2 

SELECT COUNT(first_name)
FROM students
WHERE location = 'Manila';

-- • Select all students with location is Manila
SELECT *
FROM students
WHERE location = 'Manila';

-- • Display the average age of all students
SELECT AVG(age)
FROM students;

-- • Display all students by age descending order
SELECT *
FROM students
ORDER BY age DESC;



