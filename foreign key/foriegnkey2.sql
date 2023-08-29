USE college;
CREATE TABLE table1 (
id INT PRIMARY KEY,
name VARCHAR(50),
age INT NOT NULL
);
INSERT INTO table1 VALUES(1,'ayush',24);
INSERT INTO table1 VALUES(2,'sumit',23);
INSERT INTO table1 VALUES(3,'rajan',22);
INSERT INTO table1 VALUES(4,'rohit',26);

UPDATE table1
SET id = 2
WHERE id =10 ;

DROP TABLE table2;

CREATE TABLE table2 (
id VARCHAR(20) PRIMARY KEY,
name VARCHAR(20),
rollno INT
);

ALTER TABLE table2
ADD CONSTRAINT fk
FOREIGN KEY(rollno)
REFERENCES table1(id)
ON UPDATE CASCADE
ON DELETE CASCADE;


INSERT INTO table2
VALUES
(103,'ayush',1),
(104,'ankit',2);

select * from table2;