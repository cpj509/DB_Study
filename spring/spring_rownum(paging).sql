create table test (no number(3));

insert into test values(1);
insert into test values(2);
insert into test values(3);
insert into test values(4);
insert into test values(5);
insert into test values(6);

select * from test;

select rownum ,no from test
--where rownum<5
order by no desc;

select rownum, no from
(   select no
from test
order by no desc)
where rownum < 5;

select * from(
    select row_number() OVER (order by bno desc) row_num, tbl.*
    from tbl_board tbl
)
where row_num BETWEEN 1 and 10;
--where row_num BETWEEN 페이지 번호 * 페이지 당 게시물 수 - 9 and 페이지번호 * 페이지 당 게시물 수;

select count(*) from tbl_board;

insert into tbl_board
select SEQ_TBL_BOARD.nextval, title, content, writer, regdate, updatedate
from tbl_board;