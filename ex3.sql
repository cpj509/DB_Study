create table ex3(
    col1 DATE,
    col2 TIMESTAMP
);

--날짜 데이터 추가 후 비교
insert INTO ex3 VALUES (sysdate, systimestamp);
insert into ex3 (col1) values (sysdate);
insert into ex3 (col2) values (sysdate);

select * from ex3;

drop table ex3;