use college;
CREATE TABLE emp(
id INT PRIMARY KEY,
salary INT DEFAULT 23000);
INSERT INTO emp(id) VALUES(11);
SELECT * FROM emp;

CREATE TABLE city (
id INT PRIMARY KEY,
city VARCHAR(50),
distance INT CHECK (distance <=500)
);
INSERT INTO city(id, city, distance) VALUES
(11, 'delhi', 400),
(12, 'gzb', 500);




