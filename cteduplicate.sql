CREATE TABLE table7(
id INT ,
city VARCHAR(50),
distance INT 
);
DROP TABLE table7;
SET SQL_SAFE_UPDATES = 0;

INSERT INTO table7(id, city, distance) VALUES
(11, 'delhi', 400),
(11, 'delhi', 400),
(12, 'gzb', 500),
(13,'lck',300);


WITH table7 AS
(
SELECT * , ROW_NUMBER() OVER (PARTITION BY id ORDER BY id) AS rownumber
FROM table7
)
DELETE 

SELECT * FROM table7 ;



