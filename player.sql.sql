use college;
create table player(
name varchar(100),
age int,
salary int);

insert into player values(
'virat kohli',22,4000);

insert into player values(
'rohit sharma',24,44000);

select * from player;
SELECT REPLACE ('player','e','a');
SELECT
REPLACE (name,'e','o') as name FROM player;