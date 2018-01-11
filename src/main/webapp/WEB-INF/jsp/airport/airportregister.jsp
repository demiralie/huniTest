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
	<div class="panel-heading"></div>
	<div class="panel-body">

		<form action="/airport/airportregister" method="post">

			<div class="form-group">
				<label>IATA</label> 
				<input class="form-control" name="iata" value="${vo.iata}"/>
			</div>

			<div class="form-group">
				<label>AIRPORT</label> 
				<input class="form-control" name="airport" value="${vo.airport}"/>
			</div>

			<div class="form-group">
				<label>CITY</label> 
				<input class="form-control" name="city" value="${vo.city}"/>
			</div>

			<div class="form-group">
				<label>STATE</label> 
				<input class="form-control" name="state" value="${vo.state}"/>
			</div>

			<div class="form-group">
				<label>COUNTRY</label> 
				<input class="form-control" name="country" value="${vo.country}"/>
			</div>

			<div class="form-group">
				<label>LAT</label> 
				<input class="form-control" name="lat" value="${vo.lat}"/>
			</div>
			
				<div class="form-group">
				<label>LNG</label> 
				<input class="form-control" name="lng" value="${vo.lng}"/>
			</div>
			
			<button type="submit" class="btn btn-default">Submit Button</button>
			<button type="reset" class="btn btn-primary">Reset Button</button>
		</form>

	</div>

</body>
</html>