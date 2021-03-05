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
--age 칼럼 추가하기
alter table t_student2 add (age number(3));

--null 값에 나이 입력하기
update t_student2 set age = 25 where studentid = 101;