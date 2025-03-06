CREATE DATABASE college;
USE college;

CREATE TABLE student(
	roll INT PRIMARY KEY,
    name VARCHAR(50),
    marks INT NOT NULL,
    grade VARCHAR(2),
    city VARCHAR(20)
);

INSERT INTO student
(roll, name, marks, grade, city)
VALUES
(101, "Messi", 78, "A", "Barcelona"),
(102, "Kaka", 23, "F", "Uganda"),
(103, "Mehedi", 98, "A+", "Gazipur"),
(104, "Nana", 63, "A-", "Moscow"),
(105, "Dada", 51, "B", "USA");

UPDATE student
SET city = "Barcelona"
WHERE roll = 105;

SELECT * FROM student;

SELECT * 
FROM student 
WHERE marks > 70;

SELECT city, roll FROM student;
SELECT DISTINCT city FROM student;
SELECT roll, name, marks 
FROM student
WHERE marks > 45 AND marks < 90;

SELECT roll, name, marks 
FROM student
WHERE marks BETWEEN 70 AND 80;

SELECT roll, name, marks, city 
FROM student
WHERE city IN("Barcelona", "Moscow");

SELECT roll, name, marks, city 
FROM student
WHERE city NOT IN("Barcelona", "Moscow");

SELECT * FROM student
WHERE marks > 30
LIMIT 2;
