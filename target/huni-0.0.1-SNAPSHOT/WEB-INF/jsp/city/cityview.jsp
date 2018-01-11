<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>City View</title>

<c:if test="${false}">
	<link rel="stylesheet" href="../../css/bootstrap.css">
	<link rel="stylesheet" href="../../css/animate.css">
</c:if>
</head>
<body>
	<div class="panel-heading">City View Page</div>
	<div class="panel-body">


			<div class="form-group">
				<label>Id</label> <input class="form-control" name="id" value="${vo.id}" readonly="readonly"/>
			</div>

			<div class="form-group">
				<label>name</label> <input class="form-control" name="name" value="${vo.name}" readonly="readonly"/>
				<p class="help-block">Name text here.</p>
			</div>

			<div class="form-group">
				<label>CountryCode</label> <input class="form-control" name="countrycode" value="${vo.countrycode}" readonly="readonly"/>
			</div>

			<div class="form-group">
				<label>District</label> <input class="form-control" name="district" value="${vo.district}" readonly="readonly"/>
			</div>

			<div class="form-group">
				<label>Population</label> <input class="form-control" name="population" value="${vo.population}" readonly="readonly"/>
			</div>

		<div class="pull-right">
			<a href="/city/modify?page=${pageVO.page}&size=${pageVO.size}&type=${pageVO.type}&keyword=${pageVO.keyword}&id=${vo.id}" 
				class="btn btn-default">Modify/Delete</a> 
			             
			<a href="/city/list?page=${pageVO.page}&size=${pageVO.size}&type=${pageVO.type}&keyword=${pageVO.keyword}&id=${vo.id}" 
				class="btn btn-primary">Go List</a> 
		</div>

	</div>

</body>
</html>