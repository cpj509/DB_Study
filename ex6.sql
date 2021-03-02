--시퀀스: 일련번호 만들기
create sequence mySeq
INCREMENT BY 1
START WITH 1
minvalue 1
maxvalue 1000
nocycle
nocache;

create table ex6(
    num number(2) PRIMARY KEY,
    name varchar2(10)
);

select * from ex6;
COMMIT;

DROP SEQUENCE mySeq;
drop table ex6;

insert into ex6 values(MYSEQ.nextval, 'dog');
insert into ex6 values(MYSEQ.nextval, 'cat');
insert into ex6 values(MYSEQ.nextval, 'tiger');
insert into ex6 values(MYSEQ.nextval, 'tiger2');