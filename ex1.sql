--ex1 테이블 생성
CREATE TABLE ex1(
    column1 CHAR(10),       --고정 길이 자료형
    column2 VARCHAR2(10),   --가변 길이 자료형
    column3 NUMBER          --숫자
);

--테이블 검색(조회)
SELECT * FROM ex1;

--자료 추가(삽입)
INSERT INTO ex1 VALUES ('abc', 'abc', 100);
INSERT INTO ex1(column1, column2) VALUES ('kim', 'park');
INSERT INTO ex1(column1, column2, column3) VALUES ('choi', '', 10);

--CHAR와 VARCHAR2의 크기 비교
SELECT column1, LENGTH(column1), column2, LENGTH(column2)
FROM ex1;

--column1이 'choi'인 자료 삭제(WHERE 조건절)
DELETE FROM ex1 WHERE column1 = 'choi';