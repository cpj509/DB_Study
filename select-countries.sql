--COUNTRIES 테이블 사용하기
--검색 SQL 명령어 : SELECT 열이름(*) FROM 테이블 이름
DESC countries;

SELECT * FROM countries;

--특정 열(칼럼) 검색
SELECT country_name, region_id
FROM countries;

--지역 id가 3인 데이터 검색
SELECT COUNTRY_NAME
FROM countries
WHERE region_id = 3;

--일본 데이터 검색
SELECT * FROM countries WHERE country_id = 'JP';

--한국 데이터 추가
--추가(삽입) 명령어 INSERT INTO 테이블 이름 VALUES (column 데이터 값)
INSERT INTO countries 
VALUES ('KO', 'Korea', '3');
