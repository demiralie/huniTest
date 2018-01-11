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
	<div class="panel-heading">City Modify Page</div>
	<div class="panel-body">

    <form id='f1'>

		<div class="form-group">
			<label>Id</label> <input class="form-control" name="id" value="${vo.id}" readonly="readonly"/>
		</div>

		<div class="form-group">
			<label>Name</label> <input class="form-control" name="name" value="${vo.name}" />
		</div>

		<div class="form-group">
			<label>CountryCode</label> <input class="form-control" name="countrycode" 	value="${vo.countrycode}" />
		</div>
		
		<div class="form-group">
			<label>District</label> <input class="form-control" name="district" value="${vo.district}" />
		</div>
		
		<div class="form-group">
			<label>Population</label> <input class="form-control" name="population" value="${vo.population}" />
		</div>
		
		<input type='hidden' name="page" value="${pageVO.page}">
		<input type='hidden' name="size" value="${pageVO.size}">
		<input type='hidden' name="type" value="${pageVO.type}">
		<input type='hidden' name="keyword" value="${pageVO.keyword}">
		
	</form>

		<div class="pull-right">
		
		  <a href="#" class="btn btn-warning modbtn">Modify</a>
		
		  <a href="#" class="btn btn-danger delbtn">Delete</a>

		  <a href="/city/list?page=${pageVO.page}&size=${pageVO.size}&type=${pageVO.type}&keyword=${pageVO.keyword}&id=${vo.id}"
			  class="btn btn-primary">Cancel & Go List</a>	<!-- 줄 정렬 하지말자 띄어쓰기 하나만 들어가도 에러남 --> 
		</div>

	</div>

	<script type="text/javascript">
	
	$(document).ready(function(){
	
		var formObj = $("#f1");
		
		$(".delbtn").click(function(){
			
			formObj.attr("action","delete");
			formObj.attr("method", "post");
			
			formObj.submit();
			
		});
		
		$(".modbtn").click(function(){
			
			formObj.attr("action","modify");
			formObj.attr("method", "post");
			
			formObj.submit();
			
		});
		
		
	});	
	</script>

</body>
</html>