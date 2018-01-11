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
	<div class="panel-heading">Modify Page</div>
	<div class="panel-body">

    <form id='f1' >

		<div class="form-group">
			<label>deptno</label> 
			<input class="form-control" name="depno" value="${vo.deptno}" readonly="readonly" />
		</div>

		<div class="form-group">
			<label>Title</label> 
			<input class="form-control" name="dname" value="${vo.dname}" />
			<p class="help-block">Title text here.</p>
		</div>

		<div class="form-group">
			<label>Content</label>
			<textarea class="form-control" name='loc' >${vo.loc}</textarea>
		</div>
		
		<input type='hidden' name="page" value="${pageVO.page}">
		<input type='hidden' name="size" value="${pageVO.size}">
		<input type='hidden' name="type" value="${pageVO.type}">
		<input type='hidden' name="keyword" value="${pageVO.keyword}">
		
		</form>


		<div class="pull-right">
		
		  <a href="#" class="btn btn-warning modbtn">Modify</a>
		
		  <a href="#" class="btn btn-danger delbtn">Delete</a>

			<a href="/dept/deptlist?page=${pageVO.page}&size=${pageVO.size}&type=${pageVO.type}&keyword=${pageVO.keyword}&deptno=${vo.deptno}" class="btn btn-primary">Cancel & Go List</a>
			
			<div class="pull-right">
         
        
      </div> 
		</div>

</div>
	<script type="text/javascript">
		$(document).ready(function() {

			var formObj = $("#f1");

			$(".delbtn").click(function() {

				formObj.attr("action", "deptdelete");
				formObj.attr("method", "post");

				formObj.submit();

			});

			$(".modbtn").click(function() {

				formObj.attr("action", "deptmodify");
				formObj.attr("method", "post");

				formObj.submit();

			});
		});
	</script>

	
</body>
</html>