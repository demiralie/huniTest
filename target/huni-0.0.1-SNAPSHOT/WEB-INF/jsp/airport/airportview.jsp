<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>

<c:if test="${false}">
	<link rel="stylesheet" href="../../css/bootstrap.css">
	<link rel="stylesheet" href="../../css/animate.css">
</c:if>
</head>
<body>
	<div class="panel-heading"></div>
	<div class="panel-body">


			<div class="form-group">
				<label>IATA</label> <input class="form-control" name="iata" value="${vo.iata}" readonly="readonly"/>
			</div>

			<div class="form-group">
				<label>AIRPORT</label> <input class="form-control" name="airport" value="${vo.airport}" readonly="readonly"/>
			</div>

			<div class="form-group">
				<label>CITY</label> <input class="form-control" name="city" value="${vo.city}" readonly="readonly"/>
			</div>

			<div class="form-group">
				<label>STATE</label> <input class="form-control" name="state" value="${vo.state}" readonly="readonly"/>
			</div>

			<div class="form-group">
				<label>COUNTRY</label> <input class="form-control" name="country" value="${vo.country}" readonly="readonly"/>
			</div>

			<div class="form-group">
				<label>LAT</label> <input class="form-control" name="lat" value="${vo.lat}" readonly="readonly"/>
			</div>

			<div class="form-group">
				<label>LNG</label> <input class="form-control" name="lng" value="${vo.lng}" readonly="readonly"/>
			</div>

		<div class="pull-right">
			<a href="/airport/airportmodify?page=${pageVO.page}&size=${pageVO.size}&type=${pageVO.type}&keyword=${pageVO.keyword}&iata=${vo.iata}" 
				class="btn btn-default">Modify/Delete</a> 
			             
			<a href="/airport/airportlist?page=${pageVO.page}&size=${pageVO.size}&type=${pageVO.type}&keyword=${pageVO.keyword}&iata=${vo.iata}" 
				class="btn btn-primary">Go List</a> 
		</div>

	</div>

</body>
</html>