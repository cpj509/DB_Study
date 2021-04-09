-- 테이블 생성
create table tbl_board(
    bno NUMBER(10) PRIMARY KEY,
    title varchar2(200) not null,
    content varchar2(2000) not null,
    writer varchar2(50) not null,
    regdate date default sysdate,
    updatedate date
);

DESC tbl_board;

select * from tbl_board;

-- comment on table 스키마명.테이블명 is '테이블설명'
-- comment on column 스키마명.테이블명.컬럼명 is '컬럼설명'

comment on table spring.tbl_board is '게시판';
comment on column spring.tbl_board.bno is '번호';
comment on column spring.tbl_board.title is '제목';
comment on column spring.tbl_board.content is '내용';
comment on column spring.tbl_board.writer is '작성자';
comment on column spring.tbl_board.regdate is '작성일';
comment on column spring.tbl_board.updatedate is '수정일';


-- 시퀀스 생성
-- 시퀀스 명 : seq_tbl_board
create SEQUENCE seq_tbl_board
  INCREMENT BY 1 MAXVALUE 5000 nocache nocycle;

select seq_tbl_board.nextval from dual;  
select seq_tbl_board.currval from dual;

insert into tbl_board
values(seq_tbl_board.nextval, '제목', '내용', '작성자', sysdate, sysdate);

-- insert into에 서브쿼리 사용 예제.
insert into tbl_board
select SEQ_TBL_BOARD.nextval, title, content, writer, regdate, updatedate
from tbl_board;