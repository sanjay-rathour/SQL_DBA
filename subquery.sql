CREATE TABLE students1(
rollno INT PRIMARY KEY,
name VARCHAR(50),
marks INT NOT NULL
);

ALTER TABLE students1
ADD COLUMN city VARCHAR(50) NOT NULL;

INSERT INTO students1 VALUES
(101, 'anil', 78, 'agra'),
(102, 'bhumika',48, 'ncr'),
(103, 'vinay', 98, 'delhi'),
(104, 'chetan', 48, 'gzb');

INSERT INTO students1 VALUES
(105, 'anjali', 70, 'agra');

SELECT MAX(marks)
FROM 
(SELECT * 
 FROM 
 students1 
  WHERE city ='agra' ) AS alias ;
  
CREATE VIEW view1 
AS SELECT name, marks 
FROM students1;

SELECT * FROM view1; 
