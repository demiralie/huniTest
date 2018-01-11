<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>City Modify</title>

<c:if test="${false}">
	<link rel="stylesheet" href="../../css/bootstrap.css">
	<link rel="stylesheet" href="../../css/animate.css">
</c:if>
</head>
<body>
	<div class="panel-heading"></div>
	<div class="panel-body">

    <form id='f1'>

		<div class="form-group">
			<label>CODE</label> <input class="form-control" name="code" value="${vo.code}" readonly="readonly"/>
		</div>

		<div class="form-group">
			<label>DESCRIPTION</label> <input class="form-control" name="description" value="${vo.description}" />
		</div>
		
		<input type='hidden' name="page" value="${pageVO.page}">
		<input type='hidden' name="size" value="${pageVO.size}">
		<input type='hidden' name="type" value="${pageVO.type}">
		<input type='hidden' name="keyword" value="${pageVO.keyword}">
		
	</form>

		<div class="pull-right">
		
		  <a href="#" class="btn btn-warning modbtn">Modify</a>
		
		  <a href="#" class="btn btn-danger delbtn">Delete</a>

		  <a href="/carrier/carrierlist?page=${pageVO.page}&size=${pageVO.size}&type=${pageVO.type}&keyword=${pageVO.keyword}&code=${vo.code}"
			  class="btn btn-primary">Cancel & Go List</a>	<!-- 줄 정렬 하지말자 띄어쓰기 하나만 들어가도 에러남 --> 
		</div>

	</div>

	<script type="text/javascript">
	
	$(document).ready(function(){
	
		var formObj = $("#f1");
		
		$(".delbtn").click(function(){
			
			formObj.attr("action","carrierdelete");
			formObj.attr("method", "post");
			
			formObj.submit();
			
		});
		
		$(".modbtn").click(function(){
			
			formObj.attr("action","carriermodify");
			formObj.attr("method", "post");
			
			formObj.submit();
			
		});
		
		
	});	
	</script>

</body>
</html>