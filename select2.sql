--중복 제거 : distinct
select * from employees;

select job_id, department_id from employees;

select DISTINCT job_id, department_id from employees;

--문자 타입 함수
select last_name, lower(last_name), upper(last_name), email, initcap(email)
from employees;

--첫 번째 자리부터 2개의 문자 출력 - substr()
select job_id, substr(job_id, 1, 2) 직무코드
from employees;

--job_id 문자열 값이 'ACCOUNT'면 'accnt'로 출력하기 - replace()
select job_id, replace(job_id, 'ACCOUNT', 'accnt')
from employees;

--12자리 크기를 지정하고 빈 공간에 '*'을 채워서 출력.(lpad 왼쪽, rpad 오른쪽)
select first_name, lpad(first_name, 12, '*')
from employees;

select first_name, rpad(first_name, 12, '*')
from employees;


--숫자 타입 함수
--round 반올림
select salary, salary/30 일급, 
        round(salary/30, 1),    --소수 1번째 자리 미만 반올림
        round(salary/30, 0),    --정수 표기
        round(salary/30, -1)    --일의 자리에서 반올림
from employees;

--trunc버림
select salary,
        salary/30 일급,
        trunc(salary/30, 1),
        trunc(salary/30, 0),
        trunc(salary/30, -1)
from employees;


--날짜 타입 함수
--department_id가 100인 직원의 입사 후 총 개월 수 출력
select department_id, sysdate, hire_date,
        trunc(MONTHS_BETWEEN(SYSDATE,hire_date), 0) as "총 개월수"
from employees;

--employee_id가 100에서 106번 사이인 직원의 hire_date에 3개월을 더하고 뺀 결과
select first_name, hire_date,
        add_months(hire_date, 3),
        add_months(hire_date, -3)
from employees;