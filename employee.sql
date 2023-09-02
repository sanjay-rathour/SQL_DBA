USE college;
SET SQL_SAFE_UPDATES = 0;
UPDATE employee SET name = 'vishal' WHERE name = 'vicky';
UPDATE employee SET name = 'ankit' WHERE age = 23; 
UPDATE employee SET age = age+1;

ALTER TABLE employee DROP COLUMN id;
ALTER TABLE employee ADD COLUMN id INT PRIMARY KEY FIRST;
INSERT INTO employee VALUES
(101,'sanjay',25 , 32000),
(102,'ajay' ,23, 35000),
(103,'vijay' ,22, 30000),
(104,'sachin', 43, 30104);

CREATE TABLE dept(
id INT PRIMARY KEY,
name VARCHAR(20),
e_id INT,
FOREIGN KEY (e_id) REFERENCES employee(id)
);


SELECT * FROM dept;

SELECT * FROM employee;

