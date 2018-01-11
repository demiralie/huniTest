<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html">
<html>
<head>
<meta charset="UTF-8">
<title>deptview.jsp</title>

<c:if test="${false}">
	<link rel="stylesheet" href="../../css/bootstrap.css">
	<link rel="stylesheet" href="../../css/animate.css">
</c:if>

</head>
<body>
	<div class="panel-heading">DEPT View Page</div>
	<div class="panel-body">
	
		<div class="form-group">
			<label>deptno</label>
			<input class="form-control" name="deptno" value="${vo.deptno}" readonly="readonly">
		</div>

		<div class="form-group">
			<label>dname</label> 
			<input class="form-control" name="dname" value="${vo.dname}" readonly="readonly" />
		</div>

		<div class="form-group">
			<label>loc</label>
			<input class="form-control" name="loc" value="${vo.loc}" readonly="readonly" />
		</div>

		<div class="pull-right">
			<a href="/dept/deptmodify?page=${pageVO.page}&size=${pageVO.size}&type=${pageVO.type}&keyword=${pageVO.keyword}&deptno=${vo.deptno}" class="btn btn-default">Modify / Delete</a> 
			
			<a href="/dept/deptlist?page=${pageVO.page}&size=${pageVO.size}&type=${pageVO.type}&keyword=${pageVO.keyword}&deptno=${vo.deptno}" class="btn btn-primary">Go List</a> 
		</div>
	</div>
</body>
</html>