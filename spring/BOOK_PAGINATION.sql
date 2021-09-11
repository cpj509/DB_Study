select * from tbl_board where bno > 0;

select * from tbl_board where bno = 100;

-- PK를 이용한 힌트 학습.
select * from tbl_board order by bno desc;
select /*+INDEX_DESC (tbl_board pk_board) */* from tbl_board;

insert into tbl_board(bno, title, content, writer)
(select seq_board.nextval, title, content, writer from tbl_board);

-- 페이징
select /*+INDEX_ASC(tbl_board pk_board)*/ rownum rn, bno, title, content
from tbl_board
where rownum <= 120 and rownum < 12;

-- 인라인뷰
select bno, title, content, writer, regdate, updatedate
	from(
		select /*+INDEX_DESC(tbl_board pk_board) */
			rownum rn, bno, title, content, writer, regdate, updatedate
		from
			tbl_board
		where rownum <= 20
	)
	where rn > 10