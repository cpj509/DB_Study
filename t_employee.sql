--employee 테이블 복사
create table t_employee as
select employee_id, first_name, job_id, salary
from employees;

select * from t_employee;
select * from t_employee where salary >= 5000;
select * from t_employee where job_id = 'IT_PROG';
select * from t_employee where salary >= 7000 and job_id = 'FI_ACCOUNT';
select * from t_employee where job_id LIKE 'IT%';

select * from t_employee where salary >= 7000 and (job_id LIKE 'IT%' or job_id like 'FI%');
select * from t_employee where salary >= 7000 and REGEXP_LIKE(job_id, 'IT|FI');