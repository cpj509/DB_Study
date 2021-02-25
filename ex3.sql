create table ex3(
    col1 DATE,
    col2 TIMESTAMP
);

--날짜 데이터 추가 후 비교
insert INTO ex3 VALUES (sysdate, systimestamp);

select * from ex3;