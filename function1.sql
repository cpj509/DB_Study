--use dual table
select * from dual;

select sysdate from dual;

--자동 형변환
select 1 + '2' 더하기결과
from dual;

--타입 변환 함수
select to_number('123')
from dual;

--날짜 형식 변환
select to_char(sysdate, 'yy') 년도,
       to_char(sysdate, 'yyyy') "년도 4",
       to_char(sysdate, 'mm') 월,
       to_char(sysdate, 'dd') 일,
       to_char(sysdate, 'yy/mm/dd') 날짜
from dual;

--시간 형식 변환
select to_char(sysdate, 'hh:mi:ss') 시간,
       to_char(sysdate, 'yyyy/mm/dd hh:mi:ss pm/am') "날짜와 시간"
from dual;

--날짜 형식(to_date)
select to_date('20190509', 'yymmdd')
from dual;

--그룹 함수 : 여러 행의 데이터 처리
select * from employees;
--employees 테이블을 t_employee2로 복사
create table t_employee2 as
select * from employees;

--개수 세기
select count(salary) 급여행수
from t_employee2;

select count(*) 급여행수
from t_employee2;

--합계, 평균
select sum(salary) 합계, avg(salary) 평균
from t_employee2;

--최대값, 최소값
select max(salary) 최대값, min(salary) 최소값
from t_employee2;

select max(first_name) 최대문자값, min(first_name) 최소문자값
from t_employee2;