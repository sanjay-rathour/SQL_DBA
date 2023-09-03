USE college;
CREATE TABLE table3(
rollno INT PRIMARY KEY,
name VARCHAR(50),
marks INT NOT NULL,
grade VARCHAR(1),
city CHAR(20)
);
INSERT INTO table3 VALUES
(101, 'anil', 78, 'C', 'pune'),
(102, 'bhumika', 88, 'B', 'delhi'),
(103, 'vinay', 98, 'A', 'pune'),
(104, 'chetan', 48, 'D', 'delhi'),
(105, 'farah', 68, 'C', 'gzb'),
(106, 'sujit', 18, 'F', 'pune');

create table table4(
name varchar(100),
age int,
salary int);

insert into table4 values(
'virat kohli',18,4000);

insert into table4 values(
'rohit sharma',48,44000);

SELECT * FROM table3;

SELECT  *
FROM table3
INNER JOIN table4
ON table3.marks = table4.age;

SELECT marks,rollno,grade,city,age,salary
FROM table3 AS s 
INNER JOIN table4 AS t
ON s.marks = t.age;


SELECT *
FROM table3 AS s 
LEFT JOIN table4 AS t
ON s.marks = t.age;

SELECT *
FROM table3 AS s 
RIGHT JOIN table4 AS t
ON s.marks = t.age;

SELECT *
FROM table3 AS s 
LEFT JOIN table4 AS t
ON s.marks = t.age
UNION
SELECT *
FROM table3 AS s 
RIGHT JOIN table4 AS t
ON s.marks = t.age;

SELECT *
FROM table3 AS s 
LEFT JOIN table4 AS t
ON s.marks = t.age
WHERE t.age IS NULL;
