<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html">
<html>
<head>
<meta charset="UTF-8">
<title>view.jsp</title>

<c:if test="${false}">
	<link rel="stylesheet" href="../../css/bootstrap.css">
	<link rel="stylesheet" href="../../css/animate.css">
</c:if>

</head>
<body>
	<div class="panel-heading">View Page</div>
	<div class="panel-body">
	
		<div class="form-group">
			<label>EMPNO</label>
			<input class="form-control" name="empno" value="${vo.empno}" readonly="readonly"/>
		</div>

		<div class="form-group">
			<label>ENAME</label> 
			<input class="form-control" name="ename" value="${vo.ename}" readonly="readonly" />
		</div>

		<div class="form-group">
			<label>GENDER</label>
			<textarea class="form-control" rows="3" name='gender' readonly="readonly">${vo.gender}</textarea>
		</div>

		<div class="form-group">
			<label>JOB</label>
			<input class="form-control" name="job"	value="${vo.job}" readonly="readonly" />
		</div>
		
		<div class="form-group">
			<label>MGR</label>
			<input class="form-control" name="mgr"	value="${vo.mgr.ename}" readonly="readonly" />
		</div>
		
		<div class="form-group">
			<label>HIREDATE</label> 
			<fmt:formatDate var="hiredate" value="${vo.hiredate}" pattern="yyyy-MM-dd"/>
			<input class="form-control" name="hiredate" value="${hiredate}" readonly="readonly" />
		</div>
		
		<div class="form-group">
			<label>SAL</label>
			<input class="form-control" name="sal"	value="${vo.sal}" readonly="readonly" />
		</div>
		
		<div class="form-group">
			<label>COMM</label>
			<input class="form-control" name="comm"	value="${vo.comm}" readonly="readonly" />
		</div>
		
		<div class="form-group">
			<label>DEPTNO</label>
			<input class="form-control" name="deptno"	value="${emp.dept.deptno}" readonly="readonly" />
		</div>
		
		<div class="form-group">
			<label>DNAME</label>
			<input class="form-control" name="dname"	value="${emp.dept.dname}" readonly="readonly" />
		</div>
		
		<div class="form-group">
			<label>LOC</label>
			<input class="form-control" name="loc"	value="${emp.dept.loc}" readonly="readonly" />
		</div>

		<div class="pull-right">
			<a href="/emp/empmodify?page=${pageVO.page}&size=${pageVO.size}&type=${pageVO.type}&keyword=${pageVO.keyword}&empno=${vo.empno}" class="btn btn-default">Modify / Delete</a> 
			
			<a href="/emp/emplist?page=${pageVO.page}&size=${pageVO.size}&type=${pageVO.type}&keyword=${pageVO.keyword}&empno=${vo.empno}" class="btn btn-primary">Go List</a> 
		</div>

	</div>

</div>
</body>
</html>