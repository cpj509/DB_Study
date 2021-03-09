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

--직원 id가 101인 직원의 업무 경력(job_history)
select a.first_name, a.last_name, b.*
from employees a ,job_history b
where a.employee_id = b.employee_id and a.employee_id = 101;

--직원이 어느 부서에 속하는지, 소재지가 어디인지 조회하기
select a.employee_id, a.department_id, b.department_name, c.location_id, c.city
from employees a, departments b, locations c
where a.department_id = b.department_id and b.location_id = c.location_id;

--department_id가 null인 직원 검색
select employee_id, first_name, department_id
from employees
where department_id is null;

--직원 id와 이름과 부서id와 부서 이름 전체 검색
select *
from employees a, departments b
where a.department_id = b.department_id(+);

select * from departments;
select * from locations;

--부서 테이블에 자료 추가: location 테이블의 (location_id)를 참조
--location_id가 부모 테이블에 없으면 추가 안됨. - 외래키 제약조건 위배.
insert into departments(department_id, department_name, location_id)
VALUES (273, 'Sample Dept', 1000);

ROLLBACK;

--locations 테이블에서 id기 1000인 자료 삭제
--자식테이블(departments)에서 사용(참조)하고 있어서 삭제 불가.
delete from locations where location_id = 1700;