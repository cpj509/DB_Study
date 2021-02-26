--create ex4 table.
create table ex4(
    name varchar2(10) not null,
    address varchar2(50)
);

--insert data. null != empty space.
insert into ex4 VALUES('kim', '');
insert into ex4 VALUES('', 'seoul');
insert into ex4 VALUES(' ', 'newyork');

select * from ex4;