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
    (2, 'Christia', 'Doe', 'Smith', 20, 'New York'),
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

--JOINS ACTIVITY
CREATE TABLE classrooms
(
    id INT PRIMARY KEY,
    student_id INT,
    section VARCHAR(255)
);

INSERT INTO classrooms
    (id, student_id, section)
VALUES
    (1, 2, 'A'),
    (2, 1, 'B'),
    (3,4, 'A'),
    (4, 3, 'C');

--INNER JOIN
SELECT *
FROM students
    INNER JOIN classrooms ON students.id = classrooms.student_id;

--LEFT JOIN
SELECT *
FROM students
    LEFT JOIN classrooms ON students.id = classrooms.student_id;

--RIGHT JOIN
SELECT *
FROM students
    RIGHT JOIN classrooms ON students.id = classrooms.student_id;

--FULL JOIN 
SELECT *
FROM students
    FULL JOIN classrooms ON students.id = classrooms.student_id;

-- JOINS WITH ENUM activity

CREATE TYPE grades AS ENUM
('A', 'B', 'C', 'D', 'E', 'F');

CREATE TABLE research_papers
(
    id SERIAL PRIMARY KEY,
    student_id INTEGER NOT NULL,
    grade grades,
    CONSTRAINT student_table FOREIGN KEY (student_id) REFERENCES students(id),
    CONSTRAINT check_grades CHECK(grade in ('A', 'B', 'C', 'D', 'E', 'F') OR grade IS NULL)
);

INSERT INTO research_papers
    (student_id, grade)
VALUES
    (1, 'A'),
    (1, 'B'),
    (2, 'A'),
    (3, NULL),
    (4, 'C'),
    (5, 'D'),
    (5, 'E'),
    (6, NULL),
    (7, 'A'),
    (8, 'B');

-- Query all students with multiple research papers (select first_name, last_name, and number_of_research_papers only)
SELECT students.first_name, students.last_name, COUNT(*) AS number_of_research_papers
FROM students
    INNER JOIN research_papers ON students.id = research_papers.student_id
GROUP BY students.id
HAVING COUNT(*) > 1;


-- Query all students with ungraded research papers (select first_name, last_name, research_paper_id, and grade only)
SELECT students.first_name, students.last_name, research_papers.id AS research_paper_id, research_papers.grade
FROM students
    JOIN research_papers ON students.id = research_papers.student_id
WHERE research_papers.grade IS NULL;


