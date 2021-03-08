--동등 조인. 조건에 맞는 값만 출력
--employees 테이블과 departments 테이블을 department_id로 연결 가능

select * from departments;
select * from employees;

--직원 ID와 이름과 부서ID와 부서 이름 전체 검색
select a.employee_id, a.first_name, b.department_id, b.department_name
from employees a, departments b
where a.department_id = b.department_id;

select * from departments;
select * from locations;

--직원이 어느 부서에 속하는지, 소재지가 어디인지 조회하기
select a.employee_id, a.department_id, b.department_name, c.location_id, c.city
from employees a, departments b, locations c
where a.department_id = b.department_id and b.location_id = c.location_id;