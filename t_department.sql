--departments 테이블 복사하기
CREATE TABLE t_department AS
SELECT * FROM departments;

--테이블 구조 보기
DESC t_department;

SELECT * FROM t_department ORDER BY department_id DESC;

--자료 삽입
INSERT INTO t_department VALUES (271, 'WORLD_JOB', 300, 1800);

--취소하기
ROLLBACK;

--수행 완료(트랜잭션 완성)
COMMIT;

--자료 삭제
DELETE FROM t_department WHERE department_id = '271';

--자료 변경(수정)
UPDATE t_department SET manager_id = 300 WHERE department_id = 270;