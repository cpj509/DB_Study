--create ex5 table.
create table ex5(
    userId varchar2(20) primary key,
    age number(3)
);

select * from ex5;

insert into ex5 values ('', 25); --primary key는 null값을 가질 수 없음.
insert into ex5 VALUES('abc123', 31);
insert into ex5 values ('abc123', 45);  --primary key는 unique 해야 함.

drop table ex5;