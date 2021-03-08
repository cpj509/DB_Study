create table t_student(
    studentId number(3) primary key,
    studentName varchar2(10)
);

select * from t_student;
ROLLBACK;

insert into t_student VALUES (101, '이강');
COMMIT;

create table t_student2 as
select * from t_student;

select * from t_student2;
desc t_student2;

--age 칼럼 추가하기
alter table t_student2 add (age number(3));

--null 값에 나이 입력하기
update t_student2 set age = 25 where studentid = 102;

--자료형의 크기 변경(studentName 10b -> 20b)
alter TABLE t_student2 modify(studentName varchar2(20));

insert into t_student2 VALUES (308, 'good day', 42);

select studentName, length(studentName) len from t_student2;

--칼럼 이름 변경
alter table t_student2 rename column age to studentage;

--특정 칼럼 삭제
alter table t_student2 drop column studentage;

--테이블 삭제
--drop table t_student2;
select * from t_student2;