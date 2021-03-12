--t_member 테이블 생성
create table t_member(
    memberId varchar2(20),
    passwd varchar2(20) not null,
    name varchar2(30) not null,
    gender varchar2(10),
    joinDate date default sysdate,
    primary key(memberId)
);

--t_boadrd 게시판 테이블 생성
create table t_board(
    bnum number(4),
    title varchar2(100) not null,
    content varchar2(2000) not null,
    regDate date default sysdate,
    memberId varchar2(20),
    primary key(bnum),
    constraint FK_MemberBoard foreign key(memberId)
    references t_member(memberId)
);

--시퀀스 생성 : 게시판 번호(bnum)
create sequence bSeq
increment by 1
start with 1
minvalue 1
maxvalue 1000
nocycle
nocache;

select * from t_member;
select * from t_board;

rollback;

commit;