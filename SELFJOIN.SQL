USE college;
CREATE TABLE table6(
id INT ,
name VARCHAR(50),
e_id int,
PRIMARY KEY (id)
);


TRUNCATE TABLE table6;

INSERT INTO table6
VALUES 
(101,'adam',103),
(102,'bob',104),
(103,'casey',NULL),
(104,'donald',103);

SELECT * FROM table6;

SELECT * 
FROM table6 AS a 
JOIN table6 AS b
ON a.id = b.e_id;


SELECT a.name,b.name 
FROM table6 AS a 
JOIN table6 AS b
ON a.id = b.e_id;

SELECT a.name AS manager_name, b.name 
FROM table6 AS a 
JOIN table6 AS b
ON a.id = b.e_id;

SELECT  name FROM table6
UNION
SELECT name FROM table6;

SELECT  name FROM table6
UNION ALL
SELECT name FROM table6;
