USE college;
SET SQL_SAFE_UPDATES = 0;
CREATE TABLE teacher(
id INT PRIMARY KEY,
name VARCHAR(50)
);

INSERT INTO teacher VALUES
(101, 'suraj'),
(102, 'amit');

UPDATE teacher SET id = 103 WHERE id = 102;

CREATE TABLE deptt(
id INT PRIMARY KEY,
name VARCHAR(50),
deptt_id INT ,
FOREIGN KEY (deptt_id) REFERENCES teacher(id)
ON UPDATE CASCADE
ON DELETE CASCADE
);

INSERT INTO deptt VALUES
(1, 'CS',101),
(2, 'EC', 102);

SELECT * FROM teacher;
SELECT * FROM deptt;