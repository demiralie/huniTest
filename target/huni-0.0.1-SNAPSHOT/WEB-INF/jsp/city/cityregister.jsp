<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>City register</title>

<c:if test="${false}">
	<link rel="stylesheet" href="../../css/bootstrap.css">
	<link rel="stylesheet" href="../../css/animate.css">
</c:if>
</head>
<body>
	<div class="panel-heading">City Register Page</div>
	<div class="panel-body">

		<form action="/city/register" method="post">

			<div class="form-group">
				<label>Id</label> 
				<input class="form-control" name="id" value="${vo.id}"/>
			</div>

			<div class="form-group">
				<label>name</label> 
				<input class="form-control" name="name" value="${vo.name}"/>
				<p class="help-block">Name text here.</p>
			</div>

			<div class="form-group">
				<label>CountryCode</label> 
				<input class="form-control" name="countrycode" value="${vo.countrycode}"/>
			</div>

			<div class="form-group">
				<label>District</label> 
				<input class="form-control" name="district" value="${vo.district}"/>
			</div>

			<div class="form-group">
				<label>Population</label> 
				<input class="form-control" name="population" value="${vo.population}"/>
			</div>
			
			<button type="submit" class="btn btn-default">Submit Button</button>
			<button type="reset" class="btn btn-primary">Reset Button</button>
		</form>

	</div>

</body>
</html>