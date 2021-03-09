--학과 테이블 생성
create table department(
    dname varchar2(30),
    dtel varchar2(20),
    location varchar2(20),
    primary key(dname)
);

select * from department;
desc department;

--학생 테이블 생성
create table student(
    snumber number(10),
    sname varchar2(20),
    age number(3),
    gender varchar2(4),
    address varchar2(50),
    dname varchar2(30),
    primary key(snumber),
    CONSTRAINT fk_dept_std foreign key(dname)
    REFERENCES department(dname)
);

select * from student;
desc student;

--학과 추가(삽입)
insert into department VALUES ('소프트웨어학과', '02-1234-1234', 'B동 3층');
insert into department VALUES ('전기전자공학과', '02-1234-4567', 'B동 4층');
insert into department VALUES ('화학공학과', '02-1234-5678', 'B동 5층');

--학생 추가(삽입)
insert into student values (20211234, '이강', '22', '여', '서울시 구로구', '소프트웨어학과');
insert into student values (20211235, '박대양', '25', '남', '서울시 마포구', '전기전자공학과');