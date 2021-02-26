create table t_student(
    studentId number(3) primary key,
    studentName varchar2(10)
);

select * from t_student;
ROLLBACK;

insert into t_student VALUES (101, '이강');
COMMIT;