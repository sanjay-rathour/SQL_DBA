CREATE TABLE table7(
id INT ,
city VARCHAR(50)
distance INT 
);
DROP TABLE table7;
SET SQL_SAFE_UPDATES = 0;

INSERT INTO table7(id, city, distance) VALUES
(11, 'delhi', 400),
(11, 'delhi', 400),
(12, 'gzb', 500),
(13,'lck',300);

ALTER TABLE table7
ADD COLUMN  auto_id INT PRIMARY KEY AUTO_INCREMENT ;

DELETE FROM table7
WHERE auto_id NOT IN 
(SELECT * FROM
(SELECT MIN(auto_id) FROM table7  GROUP BY id) AS X);

SELECT * FROM table7 ;
