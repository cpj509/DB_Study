--부서 테이블 검색
SELECT * FROM departments;

SELECT department_id, department_name
FROM departments;

--조건을 사용한 검색 : WHERE 조건절(비교, 논리연산)
SELECT department_name, location_id
FROM departments WHERE location_id <> 1700;
--1700을 제외(아니다)

--정렬 : ORDER BY 사용
SELECT * FROM departments ORDER BY department_id DESC;

--특정 문자가 포함된 데이터 검색 : LIKE 연산자
SELECT * FROM departments WHERE department_name LIKE 'IT%';

--NULL(데이터가 없음) 검색
SELECT * FROM departments WHERE manager_id IS NULL;

--NULL이 없는 값 검색
SELECT * FROM departments WHERE manager_id IS NOT NULL;

--BETWEEN A AND B
SELECT * FROM departments 
WHERE manager_id BETWEEN 100 AND 120;

--IN 연산자(OR)
SELECT * FROM departments 
WHERE manager_id IN (100, 103);