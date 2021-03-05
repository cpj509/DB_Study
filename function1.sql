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

--직무별 총 급여와 평균 출력하기
select job_id, sum(salary) "직무 별 총 급여", avg(salary) "직무 별 평균 급여"
from t_employee2
group by job_id
order by "직무 별 평균 급여" desc;

--그룹 된 상태에서 조건을 처리 : HAVING절 
select job_id, sum(salary) "직무 별 총 급여", avg(salary) "직무 별 평균 급여"
from t_employee2
group by job_id
having sum(salary) >= 10000
order by avg(salary) desc;

--NVL 함수 : NULL 값을 처리
select last_name, employee_id, NVL(manager_id, 0)
from t_employee2;

--실제 데이터 변경
update t_employee2 set manager_id = 777
where manager_id is null;

commit;

select first_name, salary * commission_pct
from t_employee2;

--commission_pct는 NULL인데 1을 대입해서 곱해줌.
select first_name, salary * nvl(commission_pct, 1)
from t_employee2
order by salary * nvl(commission_pct, 1) desc;

--DECODE(열이름, 조건, 변경값, 기본값) 함수
--부서 아이디가 60이면 급여 10% 인상, 아니면 그대로.
select last_name, department_id, salary "원래 급여", DECODE(department_id, 60, salary*1.1, salary) "인상 적용", decode(department_id, 60, '10% 인상', '미 인상') "인상 여부"
from t_employee2;

--CASE WHEN ~ THEN
--조건1 then 변경값 else 기본값
select last_name, department_id, salary 원래급여,
    case
        when department_id = 60 then salary*1.1
        else salary
    end 조정급여,
    case
        when department_id = 60 then '10% 인상'
        else '미 인상'
    end 인상여부
from t_employee2;