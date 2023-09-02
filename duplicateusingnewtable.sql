CREATE TABLE table7(
id INT ,
city VARCHAR(50),
distance INT CHECK (distance <= 500)
);
DROP TABLE table7;

INSERT INTO table7(id, city, distance) VALUES
(11, 'delhi', 400),
(11, 'delhi', 400),
(12, 'gzb', 500),
(13,'lck',300);

INSERT INTO table8 
SELECT DISTINCT * FROM table7 ;

TRUNCATE TABLE table7;

INSERT INTO table7
SELECT  * FROM table8 ;

DROP TABLE table8;

SELECT * FROM table7 ;


