--t_address 테이블 생성
create table t_address(
    num number(4),
    username varchar2(20) not null,
    tel varchar2(20) not null,
    email varchar2(50) not null,
    gender varchar2(5),
    joinDate date default sysdate,
    primary key(num)
);

alter table t_address modify gender varchar(6);

--시퀀스(일련번호) 생성
create SEQUENCE abSeq
INCREMENT by 1
start with 1
MINVALUE  1
MAXVALUE 100
NOCYCLE
NOCACHE;

SELECT * FROM USER_SEQUENCES;

alter SEQUENCE abSeq increment by 1;

drop SEQUENCE abSeq;

select * from t_address order by num;