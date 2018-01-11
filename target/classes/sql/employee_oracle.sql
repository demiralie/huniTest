-- 부서 테이블 제거하기
DROP TABLE EMP;
-- 사원 테이블 제거하기
DROP TABLE DEPT;
-- 급여 테이블 제거하기
DROP TABLE SALGRADE;
-- 부서 테이블 제거하기
-- DROP TABLE EMPLOYEE;
-- 사원 테이블 제거하기
-- DROP TABLE DEPARTMENT;
-- 급여 테이블 제거하기
-- DROP TABLE SALGRADE;

-- 부서 테이블 생성하기
CREATE TABLE DEPT(
	 DEPTNO NUMBER(2) CONSTRAINT DEPT_DEPTNO_PK PRIMARY KEY,
	 DNAME VARCHAR2(14 char) NOT NULL,
	 LOC   VARCHAR2(13 char) DEFAULT '서울' 
);

-- 사원 테이블 생성하기
CREATE TABLE EMP( 
  	 EMPNO 	NUMBER(4) 			CONSTRAINT EMP_EMPNO_PK PRIMARY KEY,
	 ENAME 	VARCHAR2(10 char) not null,
	 GENDER	CHAR(1 char) 		CONSTRAINT EMP_GENDER_CK CHECK (GENDER IN ('M', 'F')),
 	 JOB   	VARCHAR2(9 char),
	 MGR  		NUMBER(4),
	 HIREDATE 	DATE,
	 SAL 		NUMBER(7,2),
	 COMM 		NUMBER(7,2),
	 DEPTNO 	NUMBER(2) 			CONSTRAINT EMP_DEPTNO_FK REFERENCES DEPT
);

 -- 급여 테이블 생성하기
CREATE TABLE SALGRADE(
	 GRADE		NUMBER CONSTRAINT SALGRADE_GRADE_PK PRIMARY KEY,
	 LOSAL		NUMBER,
	 HISAL		NUMBER 
);

-- 부서 테이블에 샘플 데이터 추가하기
INSERT INTO DEPT VALUES(10, '경리부', '서울');
INSERT INTO DEPT VALUES(20, '인사부', '인천');
INSERT INTO DEPT VALUES(30, '영업부', '용인'); 
INSERT INTO DEPT VALUES(40, '전산부', '수원');

-- 사원 테이블에 샘플 데이터 추가하기
INSERT INTO EMP VALUES(1001, '김사랑', 'F', '사원', 1013, to_date('2007-03-01','yyyy-mm-dd'), 300, NULL, 20);
INSERT INTO EMP VALUES(1002, '한예슬', 'F', '대리', 1005, to_date('2007-04-02','yyyy-mm-dd'), 250,   80, 30);
INSERT INTO EMP VALUES(1003, '오지호', 'M', '과장', 1005, to_date('2005-02-10','yyyy-mm-dd'), 500,  100, 30);
INSERT INTO EMP VALUES(1004, '이병헌', 'M', '부장', 1008, to_date('2003-09-02','yyyy-mm-dd'), 600, NULL, 20);
INSERT INTO EMP VALUES(1005, '신동협', 'M', '과장', 1005, to_date('2005-04-07','yyyy-mm-dd'), 450,  200, 30);
INSERT INTO EMP VALUES(1006, '장동건', 'M', '부장', 1008, to_date('2003-10-09','yyyy-mm-dd'), 480, NULL, 30);
INSERT INTO EMP VALUES(1007, '이문세', 'M', '부장', 1008, to_date('2004-01-08','yyyy-mm-dd'), 520, NULL, 10);
INSERT INTO EMP VALUES(1008, '감우성', 'M', '차장', 1003, to_date('2004-03-08','yyyy-mm-dd'), 500,    0, 30);
INSERT INTO EMP VALUES(1009, '안성기', 'M', '사장', NULL, to_date('1996-10-04','yyyy-mm-dd'),1000, NULL, 20);
INSERT INTO EMP VALUES(1010, '이병헌', 'M', '과장', 1003, to_date('2005-04-07','yyyy-mm-dd'), 500, NULL, 10);
INSERT INTO EMP VALUES(1011, '조향기', 'F', '사원', 1007, to_date('2007-03-01','yyyy-mm-dd'), 280, NULL, 30);
INSERT INTO EMP VALUES(1012, '강혜정', 'F', '사원', 1006, to_date('2007-08-09','yyyy-mm-dd'), 300, NULL, 20);
INSERT INTO EMP VALUES(1013, '박중훈', 'M', '부장', 1003, to_date('2002-10-09','yyyy-mm-dd'), 560, NULL, 20);
INSERT INTO EMP VALUES(1014, '조인성', 'M', '사원', 1006, to_date('2007-11-09','yyyy-mm-dd'), 250, NULL, 10);

-- 급여 테이블에 샘플 데이터 추가하기
INSERT INTO SALGRADE VALUES (1, 100, 199);
INSERT INTO SALGRADE VALUES (2, 200, 399);
INSERT INTO SALGRADE VALUES (3, 400, 599);
INSERT INTO SALGRADE VALUES (4, 600, 799);
INSERT INTO SALGRADE VALUES (5, 800,9999);
COMMIT;

