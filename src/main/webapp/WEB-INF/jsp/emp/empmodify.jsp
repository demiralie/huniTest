<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html">
<html>
<head>
<meta charset="UTF-8">
<title>modify.jsp</title>

<c:if test="${false}">
	<link rel="stylesheet" href="../../css/bootstrap.css">
	<link rel="stylesheet" href="../../css/animate.css">
</c:if>

</head>
<body>
	<div class="panel-heading"></div>
	<div class="panel-body">

    <form id='f1' >

		<div class="form-group">
			<label>EMPNO</label> 
			<input class="form-control" name="empno" value="${vo.empno}" readonly="readonly" />
		</div>

		<div class="form-group">
			<label>ENAME</label> 
			<input class="form-control" name="ename" value="${vo.ename}" />
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
			<input class="form-control" name="job"	value="${vo.job}" />
		</div>
		
		<div class="form-group">
			<label>MGR</label> 
			<input class="form-control" name="mgr" value="${vo.mgr.empno}"/>
		</div>				
		
		<div class="form-group">
			<label>HIREDATE</label> 
			<fmt:formatDate var="hiredate" value="${vo.hiredate}" pattern="yyyy-MM-dd"/>
			<input class="form-control" name="hiredate" value="${hiredate}" />
		</div>
		
		<div class="form-group">
			<label>SAL</label> 
			<input class="form-control" name="sal"	value="${vo.sal}" />
		</div>
		
		<div class="form-group">
			<label>COMM</label> 
			<input class="form-control" name="comm" value="${vo.comm}" />
		</div>
		
		<div class="form-group">
			<label>DEPTNO</label> 
			<input class="form-control" name="deptno"	value="${vo.dept.deptno}" readonly="readonly" />
		</div>
		
		<div class="form-group">
			<label>DNAME</label> 
			<input class="form-control" name="dname"	value="${vo.dept.dname}" readonly="readonly" />
		</div>
		
		<div class="form-group">
			<label>LOC</label> 
			<input class="form-control" name="loc"	value="${vo.dept.loc}" readonly="readonly" />
		</div>
						
		
		<input type='hidden' name="page" value="${pageVO.page}">
		<input type='hidden' name="size" value="${pageVO.size}">
		<input type='hidden' name="type" value="${pageVO.type}">
		<input type='hidden' name="keyword" value="${pageVO.keyword}">
		
		</form>

		<div class="pull-right">
		
		  <a href="#" class="btn btn-warning modbtn">Modify</a>
		
		  <a href="#" class="btn btn-danger delbtn">Delete</a>

			<a href="/emp/emplist?page=${pageVO.page}&size=${pageVO.size}&type=${pageVO.type}&keyword=${pageVO.keyword}&empno=${vo.empno}" class="btn btn-primary">Cancel & Go List</a>
			
			<div class="pull-right">
         
        
      </div> 
		</div>

</div>
	<script type="text/javascript">
		$(document).ready(function() {

			var formObj = $("#f1");

			$(".delbtn").click(function() {

				formObj.attr("action", "empdelete");
				formObj.attr("method", "post");

				formObj.submit();

			});

			$(".modbtn").click(function() {

				formObj.attr("action", "empmodify");
				formObj.attr("method", "post");

				formObj.submit();

			});
		});
	</script>

	
</body>
</html>