set autocommit=0;

-- 부서 테이블 제거하기
drop table emp;
-- 사원 테이블 제거하기
drop table  dept;
-- 급여 테이블 제거하기
drop table salgrade;

-- 부서 테이블 생성하기
create table dept(
	 deptno numeric(2) primary key,
	 dname char(35) not null,
	 loc   char(13) default '서울'
);

-- 사원 테이블 생성하기
create table emp( 
  	 empno 	numeric(4) primary key,
	 ename 	char(10) not null,
	 gender	char(1),
 	 job   	char(9),
	 mgr  		numeric(4),
	 hiredate 	date,
	 sal 		numeric(7,2),
	 comm 		numeric(7,2),
	 deptno 	numeric(2),
	 constraint emp_deptno_fk foreign key (deptno) references dept (deptno)
);
-- 	 constraint emp_deptno_fk foreign key (deptno) references dept(detpno)

 -- 급여 테이블 생성하기
create table salgrade(
	 grade		numeric primary key,
	 losal		numeric,
	 hisal		numeric 
);

-- 부서 테이블에 샘플 데이터 추가하기
insert into dept values(10, '경리부', '서울');
insert into dept values(20, '인사부', '인천');
insert into dept values(30, '영업부', '용인'); 
insert into dept values(40, '전산부', '수원');

-- 사원 테이블에 샘플 데이터 추가하기
insert into emp values(1001, '김사랑', 'F', '사원', 1013, '2007-03-01', 300, null, 20);
insert into emp values(1002, '한예슬', 'F', '대리', 1005, '2007-04-02', 250,   80, 30);
insert into emp values(1003, '오지호', 'M', '과장', 1005, '2005-02-10', 500,  100, 30);
insert into emp values(1004, '이병헌', 'M', '부장', 1008, '2003-09-02', 600, null, 20);
insert into emp values(1005, '신동협', 'M', '과장', 1005, '2005-04-07', 450,  200, 30);
insert into emp values(1006, '장동건', 'M', '부장', 1008, '2003-10-09', 480, null, 30);
insert into emp values(1007, '이문세', 'M', '부장', 1008, '2004-01-08', 520, null, 10);
insert into emp values(1008, '감우성', 'M', '차장', 1003, '2004-03-08', 500,    0, 30);
insert into emp values(1009, '안성기', 'M', '사장', null,'1996-10-04',1000, null, 20);
insert into emp values(1010, '이병헌', 'M', '과장', 1003, '2005-04-07', 500, null, 10);
insert into emp values(1011, '조향기', 'F', '사원', 1007, '2007-03-01', 280, null, 30);
insert into emp values(1012, '강혜정', 'F', '사원', 1006, '2007-08-09', 300, null, 20);
insert into emp values(1013, '박중훈', 'M', '부장', 1003, '2002-10-09', 560, null, 20);
insert into emp values(1014, '조인성', 'M', '사원', 1006, '2007-11-09', 250, null, 10);

-- 급여 테이블에 샘플 데이터 추가하기
insert into salgrade values (1, 100, 199);
insert into salgrade values (2, 200, 399);
insert into salgrade values (3, 400, 599);
insert into salgrade values (4, 600, 799);
insert into salgrade values (5, 800,9999);
commit;

