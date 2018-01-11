<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html">
<html>
<head>
<meta charset="UTF-8">
<title>detail.jsp</title>

<c:if test="${false}">
	<link rel="stylesheet" href="../../css/bootstrap.css">
	<link rel="stylesheet" href="../../css/animate.css">
</c:if>

</head>
<body>
	<div class="panel-heading"></div>
	<div class="panel-body">
		<c:set var="result" value="${pageMaker.result}" />
		<div>
			<table class="table table-striped table-bordered table-hover" id="dataTables-example" align="center">
				<thead>
					<tr align="center">
						<th align="center">EMPNO</th>
						<th align="center">ENAME</th>
						<th align="center">GENDER</th>
						<th align="center">JOB</th>
						<th align="center">MRG</th>
						<th align="center">HIREDATE</th>
						<th align="center">SAL</th>
						<th align="center">COMM</th>
						<th align="center">DEPT</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="deptno" items="${result.content}" >
						<tr class="odd gradeX">
 							<td>${dept.emps.empno }</td>
							<td><a href="${dept.emp.empno}" class="empLink"> ${dept.emp.ename}</a></td>
							<td><c:choose>
									<c:when test="${dept.emp.gender == 'M'}">남자</c:when>
									<c:when test="${dept.emp.gender == 'F'}">여자</c:when>
								</c:choose></td>
							<td>${dept.emp.job}</td>
							<td>${dept.emp.mgr.ename != null ? emp.mgr.ename : '없음'}</td>
							<td>${dept.emp.hiredate}</td>
							<td>${dept.emp.sal}</td>
							<td>${dept.emp.comm != null ? dept.emp.comm : " "}</td>
						</tr>
						
					</c:forEach>
				</tbody>
			</table>
		</div>
	</div>
			
		<div class="pull-right">
			<a href="/dept/deptlist?page=${pageVO.page}&size=${pageVO.size}&type=${pageVO.type}&keyword=${pageVO.keyword}&deptno=${vo.deptno}" class="btn btn-primary">Go List</a> 
		</div>

	</div>

</div>
</body>
</html>