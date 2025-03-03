CREATE DATABASE college;

USE college;

CREATE TABLE student(
	id INT PRIMARY KEY,
    name VARCHAR(50),
    age INT NOT NULL
); 

INSERT INTO student VALUES(1, "Mehedi", 21);  
INSERT INTO student VALUES(2, "Messi", 34);  

SELECT * FROM student;