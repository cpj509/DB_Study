-- 시퀀스 생성시에 일반적으로 seq_로 시작함.
create SEQUENCE seq_board;

-- 테이블 생성시에 일반적으로 tbl_나 t_로 시작함.
create table tbl_board(
    bno number(10, 0),
    title VARCHAR2(200) not null,
    content varchar2(2000) not null,
    writer varchar2(50) not null,
    regdate date default sysdate,
    updatedate date default sysdate
);

-- bno를 PK로 지정.
alter table tbl_board add constraint pk_board
primary key (bno);

-- 더미 데이터 추가.
insert into tbl_board (bno, title, content, writer)
values (seq_board.nextval, '테스트 제목', '테스트 내용', 'user00');

select * from tbl_board;

select * from tbl_board where bno > 0