--t_member 테이블 검색
select * from t_member;

--전체 인원수
select count(*) "전체 인원 수"
from t_member;

--아이디가 mount인 개수 세기
select count(*) "아이디 개수"
from t_member
where memberId = 'aaaa';

--decode(column, column value, true value, false value) 함수 -> 조건문
--memberId가 column value이면 'true', 아니면 'false' 출력
select memberId, passwd, decode(memberId, 'aaaa', 'true', 'false') as result
from t_member;

--특정 memberId의 개수가 1이면 'true', 아니면 'false'
select decode(count(*), 1, 'true', 'false') result
from t_member
where memberId = 'aaaa';