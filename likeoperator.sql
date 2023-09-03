CREATE TABLE table8(
id INT ,
city VARCHAR(50),
distance INT 
);
DROP TABLE table7;
SET SQL_SAFE_UPDATES = 0;

INSERT INTO table8  VALUES
(11, 'delhi', 400),
(11, 'delhi', 400),
(12, 'gzb', 500),
(13,'lck',300);

ALTER TABLE table8
ADD COLUMN auto_id INT PRIMARY KEY AUTO_INCREMENT;

DELETE FROM table8
WHERE auto_id NOT IN 
(SELECT * FROM (SELECT MIN(auto_id)
FROM table8 GROUP BY id) AS t);

SELECT * FROM table8
WHERE city
LIKE '%k';

SELECT * FROM table8
WHERE city
LIKE 'D%';

SELECT * FROM table8
WHERE city
LIKE '_%c';

SELECT * FROM table8
WHERE city
LIKE '%k';

SELECT * FROM table8
WHERE city
NOT LIKE '%k';

SELECT * FROM table8
WHERE city
NOT LIKE 'd%';