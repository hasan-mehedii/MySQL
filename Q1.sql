/*
	Q. Create a database for your company named XYZ.
		step-1: Create a table inside this DB to store employee info(id, name and salary).
		step-2: Add following information in the database:
			1, "adam", 25000
            		2, "bob", 30000
            		3, "casey", 40000
		step-3: select and view all your table data
*/

CREATE DATABASE XYZ;
USE XYZ;
CREATE TABLE datatable(
	id INT PRIMARY KEY,
    name VARCHAR(50),
    salary DOUBLE
);

INSERT INTO datatable
(id, name, salary)
VALUES
(1, "adam", 25000),
(2, "bob", 30000),
(3, "casey", 40000);

SELECT * FROM datatable;
