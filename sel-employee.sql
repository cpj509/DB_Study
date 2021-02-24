--employees 테이블 조회
DESC employees;

--전체 조회
SELECT * FROM employees;

--특정 칼럼 조회
SELECT employee_id, first_name, last_name
FROM employees;

--별칭(닉네임 주기)
SELECT employee_id "사원 번호", first_name "이름", last_name "성"
FROM employees;

--오름차순, 내림차순 정렬 : ORDER BY
SELECT *
FROM employees
ORDER BY employee_id DESC;

--급여로 정리하기
SELECT first_name, last_name, salary
FROM employees
ORDER BY salary;

--문제1. 급여가 10000 이상인 이름과 성 출력하기.
SELECT last_name, first_name
FROM employees
WHERE salary >= 10000;
  
--WHERE은 조건절(비교 연산, 논리 연산)
--문제2. 사원 번호가 100인 사원을 검색하세요.
SELECT last_name, first_name
FROM employees
WHERE EMPLOYEE_ID = '100';
  
--문제3. salary가 15000이상 이고, 20000이하인 성과 이름 검색.
SELECT last_name, first_name, salary
FROM employees
WHERE salary >= 15000 AND salary <= 20000;

--산술 연산
SELECT employee_id, salary AS 급여, salary + 500 AS "추가 급여"
FROM employees;

--이름과 성을 연결하기 : 연결 연산자 '||'
SELECT employee_id, first_name || ' ' || last_name AS name
FROM employees;

--Email(아이디)에 gmail.com을 연결하기
SELECT EMAIL || '@gmail.com' AS 이메일
FROM employees;