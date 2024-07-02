set sql_safe_updates = 0;
show databases;

select now();

select 2+1*3;

select ucase('abcd');

desc customer;
desc account;

create table account(
id int primary key,
name varchar(255) unique,
balance int not null default 0 check (balance < 10000));

drop table account;

select * from customer;

select * from account_details;

insert into account(id,name,balance)
values
(1,'a',45),
(2,'b',46),
(3,'c',47),
(4,'d',48),
(5,'e',49);

alter table account add column interest float default 10;

alter table account modify column interest double not null default 0;

alter table account change column interest new_interest float default 10;

alter table account rename to account_details;

alter table customer add column pincode int;

update customer set name = 'sanjay', roll_no = 45 where id in(4);

update customer set id = 8 where id = 4;

update customer set pincode = 247876;

update customer set pincode = pincode + 1;







