<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html">
<html>
<head>
<meta charset="UTF-8">
<title>Register.jsp</title>

<c:if test="${false}">
	<link rel="stylesheet" href="../../css/bootstrap.css">
	<link rel="stylesheet" href="../../css/animate.css">
</c:if>

</head>
<body>

	<div class="panel-heading">Register Page</div>
	<div class="panel-body">

		<form action="/emp/empregister" method="post">
		
			<div class="form-group">
				<label>EMPNO</label> 
				<input class="form-control" name="empno" value="${vo.empno}" />
				<p class="help-block"></p>
			</div>

			<div class="form-group">
				<label>ENAME</label>
				<textarea class="form-control" name='ename'>${vo.ename}</textarea>
			</div>

			<div class="form-group">
				<label>GENDER</label> 
				<select class="form-control" name="gender" id="genderSelect">
					<option>SELECT GENDER</option>
					<option value='F' ${vo.gender} == 'F' ? 'selected' : ''>여자</option>
					<option value='M' ${vo.gender} == 'M' ? 'selected' : ''>남자</option>
				</select>
			</div>
			
			<div class="form-group">
				<label>JOB</label>
				<input class="form-control" name="job" value="${vo.job}" />
			</div>
			
			<div class="form-group">
				<label>MGR</label> 
				<input class="form-control" name="mgr" value="${vo.mgr}"/>
			</div>

			<div class="form-group">
				<label>HIREDATE</label> 
				<fmt:formatDate var="hiredate" value="${vo.hiredate}" pattern="yyyy-MM-dd"/>
				<input class="form-control" name="hiredate" value="${hiredate}" />
			</div>

			<div class="form-group">
				<label>SAL</label> 
				<input class="form-control" name="sal" value="${vo.sal}" />
			</div>
			
			<div class="form-group">
				<label>COMM</label> 
				<input class="form-control" name="comm" value="${vo.comm}" />
			</div>
			
			<div class="form-group">
				<label>DEPT</label> 
				<select class="form-control" name="deptno" id="deptnoSelect">
					<option>DEPTNO</option>
					<option value=10 ${vo1.deptno} == 10 ? 'selected' : ''>10</option>
					<option value=20 ${vo1.deptno} == 20 ? 'selected' : ''>20</option>
					<option value=30 ${vo1.deptno} == 30 ? 'selected' : ''>30</option>
					<option value=40 ${vo1.deptno} == 40 ? 'selected' : ''>40</option>
				</select>
				<select class="form-control" name="dname" id="dnameSelect">
					<option>DNAME</option>
					<option value='경리부' ${vo1.dname} == '경리부' ? 'selected' : ''>경리부</option>
					<option value='인사부' ${vo1.dname} == '인사부' ? 'selected' : ''>인사부</option>
					<option value='영업부' ${vo1.dname} == '영업부' ? 'selected' : ''>영업부</option>
					<option value='전산부' ${vo1.dname} == '전산부' ? 'selected' : ''>전산부</option>
				</select>
				<select class="form-control" name="loc" id="locSelect">
					<option>LOC</option>
					<option value='서울' ${vo1.loc} == '서울' ? 'selected' : ''>서울</option>
					<option value='인천' ${vo1.loc} == '인천' ? 'selected' : ''>인천</option>
					<option value='용인' ${vo1.loc} == '용인' ? 'selected' : ''>용인</option>
					<option value='수원' ${vo1.loc} == '수원' ? 'selected' : ''>수원</option>
				</select>
			</div>	
			
			<button type="submit" class="btn btn-default">Submit Button</button>
			<button type="reset" class="btn btn-primary">Reset Button</button>
		</form>

	</div>

</body>
</html>