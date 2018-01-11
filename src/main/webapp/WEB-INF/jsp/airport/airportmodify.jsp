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
			<label>IATA</label> <input class="form-control" name="iata" value="${vo.iata}" readonly="readonly"/>
		</div>

		<div class="form-group">
			<label>AIRPORT</label> <input class="form-control" name="airport" value="${vo.airport}" />
		</div>

		<div class="form-group">
			<label>CITY</label> <input class="form-control" name="city" value="${vo.city}" />
		</div>
		
		<div class="form-group">
			<label>STATE</label> <input class="form-control" name="state" value="${vo.state}" />
		</div>
		
		<div class="form-group">
			<label>COUNTRY</label> <input class="form-control" name="country" value="${vo.country}" />
		</div>
		
			<div class="form-group">
			<label>LAT</label> <input class="form-control" name="lat" value="${vo.lat}" />
		</div>
		
			<div class="form-group">
			<label>LNG</label> <input class="form-control" name="lng" value="${vo.lng}" />
		</div>
		
		<input type='hidden' name="page" value="${pageVO.page}">
		<input type='hidden' name="size" value="${pageVO.size}">
		<input type='hidden' name="type" value="${pageVO.type}">
		<input type='hidden' name="keyword" value="${pageVO.keyword}">
		
	</form>

		<div class="pull-right">
		
		  <a href="#" class="btn btn-warning modbtn">Modify</a>
		
		  <a href="#" class="btn btn-danger delbtn">Delete</a>

		  <a href="/airport/airportlist?page=${pageVO.page}&size=${pageVO.size}&type=${pageVO.type}&keyword=${pageVO.keyword}&iata=${vo.iata}"
			  class="btn btn-primary">Cancel & Go List</a>	<!-- 줄 정렬 하지말자 띄어쓰기 하나만 들어가도 에러남 --> 
		</div>

	</div>

	<script type="text/javascript">
	
	$(document).ready(function(){
	
		var formObj = $("#f1");
		
		$(".delbtn").click(function(){
			
			formObj.attr("action","airportdelete");
			formObj.attr("method", "post");
			
			formObj.submit();
			
		});
		
		$(".modbtn").click(function(){
			
			formObj.attr("action","airportmodify");
			formObj.attr("method", "post");
			
			formObj.submit();
			
		});
		
		
	});	
	</script>

</body>
</html>