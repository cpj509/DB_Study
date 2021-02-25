--ex2 테이블 생성하기
CREATE TABLE ex2(
    name VARCHAR2(20) NOT NULL,
    age NUMBER,
    joinDate DATE
);
--검색
SELECT * FROM ex2;

--사람 추가
INSERT INTO ex2(name, age, joinDate) VALUES ('추신수', 39, SYSDATE);
INSERT INTO ex2 VALUES ('오상식', 35, SYSDATE);
INSERT INTO ex2(name, age) VALUES ('십상시', 44);

COMMIT;

--NULL 값에 데이터 수정하기
UPDATE ex2 SET joindate = SYSDATE WHERE joindate is NULL;