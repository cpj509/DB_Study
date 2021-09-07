select * from tbl_board where bno > 0;

select * from tbl_board where bno = 100;

-- PK를 이용한 힌트 학습.
select * from tbl_board order by bno desc;
select /*+INDEX_DESC (tbl_board pk_board) */* from tbl_board;

insert into tbl_board(bno, title, content, writer)
(select seq_board.nextval, title, content, writer from tbl_board);