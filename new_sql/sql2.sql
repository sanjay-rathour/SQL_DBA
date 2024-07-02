use db;

create database if not exists db1;

show databases;

rename table db.course to db1.course;    (changing the name of database in every table).

set sql_safe_updates = 0;

create table student(
roll_no int primary key,
name varchar(255),
address varchar(30)
); 

insert into student(
roll_no,name,address)
values
(1,'a','p'),
(2,'b','q'),
(3,'c','r');

truncate table student;

update student set roll_no = 4 where roll_no = 3;

delete from student where roll_no = 2;

create table course(
course_id int primary key,
course_name varchar(30),
roll int ,
foreign key(roll)
references student(roll_no) on update set null on delete set null
);

create table course(
course_id int primary key,
course_name varchar(30),
roll int
);

alter table course 
add constraint fk_course foreign key(roll)
references student(roll_no) 
on update set null
on delete set null;

alter table student
add constraint 
primary key(roll_no);

drop table course;

alter table course drop foreign key course_ibfk_1;

alter table course drop column roll;

desc course;

desc student;

alter table student drop primary key;

drop table student;

insert into course(course_id,course_name,roll)
values
(1, 'a', 1),
(2, 'b', 2),
(3, 'a', 3),
(4, 'd', 3);

delete from student;

delete from course;

drop table course;

select * from student;

select * from course;

update student set roll_no = 4 where roll_no = 3;




