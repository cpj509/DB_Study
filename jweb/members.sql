--t_member 테이블 생성
create table t_member(
    memberId varchar2(20),
    passwd varchar2(20) not null,
    name varchar2(30) not null,
    gender varchar2(10),
    joinDate date default sysdate,
    primary key(memberId)
);

select * from t_member;

rollback;

commit;