SELECT * FROM dept;
SELECT * FROM emp;
SELECT * FROM city;
SELECT * FROM country;
SELECT * FROM ontime;

select * from tbl_dept;
select * from tbl_emp;
select * from tbl_city;
select * from tbl_country;
select * from tbl_ontime;

select * from tbl_member;

--TBL_DEPT--
insert into tbl_dept
select * from dept;

--TBL_EMP--
insert into tbl_emp
(comm, deptno, empno, ename, gender, hiredate, job, mgr, sal)
select comm, deptno, empno, ename, gender, hiredate, job, mgr, sal from emp;

--TBL_CITY--
insert into tbl_city
(countrycode, district, id, name, population)
select countrycode, district, id, name, population from city;

--TBL_COUNTRY--
insert into tbl_country
(code, name, continent, region, surfaceArea, indepYear, population, lifeExpectancy, 
 GNP, GNPOld, localName, governmentForm, headOfState, capital, code2)
select code, name, continent, region, surfaceArea, indepYear, population, lifeExpectancy, 
 GNP, GNPOld, localName, governmentForm, headOfState, capital, code2 from country;

 drop table from tbl_ontime ;
 
--TBL_ONTIME--
ALTER TABLE tbl_ontime MODIFY COLUMN num INT auto_increment;
insert into tbl_ontime
(year, month, dayofmonth, dayofweek, deptime, CRSdeptime, arrtime, CRSarrtime, uniquecarrier, 
 flightnum, tailnum, actualelapsedtime, CRSelapsedtime, airtime, arrdelay, depdelay, origin, 
 dest, distance, taxiin, taxiout, cancelled, cancellationcode, diverted, carrierdelay, 
 weatherdelay, NASdelay, securitydelay, lateaircraftdelay)
select * from ontime where year = 1987;

--TBL_AIRPORT--
insert into tbl_airport
(iata, airport, city, state, country, lat, lng)
select iata, airport, city, state, country, lat, lng  from airport;

--TBL_CARRIER--
insert into tbl_carrier
select * from carrier;


-- AIRPORTS CREATE--

drop table from airports;


CREATE TABLE tbl_airport (
	iata char(10) primary key,
  	airport char(100),
  	city char(100),
  	state char(50),
  	country char(50),
  	lat numeric(11,8),
  	lng numeric(11,8)
  	) ;
  	
  
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;




insert into tbl_profile 
(fname, curr)
values
("user01_profile", 1);

select * from tbl_profile;

UPDATE emp
   SET gender = 'M'
 WHERE gender = 'm';
 
 UPDATE emp
   SET gender = 'F'
 WHERE gender = 'f';

COMMIT;

-- SELECT e FROM Emp e INNER JOIN e.dept d WHERE d.deptno = :deptno

/*
SELECT emp0_.empno AS empno1_2_,
       emp0_.comm AS comm2_2_,
       emp0_.deptno AS deptno9_2_,
       emp0_.ename AS ename3_2_,
       emp0_.gender AS gender4_2_,
       emp0_.hiredate AS hiredate5_2_,
       emp0_.job AS job6_2_,
       emp0_.mgr AS mgr7_2_,
       emp0_.sal AS sal8_2_
  FROM emp emp0_ INNER JOIN dept dept1_ ON emp0_.deptno = dept1_.deptno
 WHERE dept1_.deptno = ?;
 */

select * from tbl_webboard limit 0, 10;

select count(*) from tbl_webboard;

select * from id_gen;
