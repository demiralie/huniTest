<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Country register</title>

<c:if test="${false}">
	<link rel="stylesheet" href="../../css/bootstrap.css">
	<link rel="stylesheet" href="../../css/animate.css">
</c:if>
</head>
<body>
	<div class="panel-heading">Country Register Page</div>
	<div class="panel-body">

		<form action="/country/register" method="post">

		<div class="form-group">
			<label>Code</label> 
			<input class="form-control" name="code" value="${vo.code}"/>
		</div>
		
		<div class="form-group">
			<label>Name</label> 
			<input class="form-control" name="name" value="${vo.name}" />
		</div>
		
		<div class="form-group">
			<label>Continent</label> 
			<input class="form-control" name="continent" 	value="${vo.continent}" />
		</div>
		
		<div class="form-group">
			<label>Region</label> 
			<input class="form-control" name="region" value="${vo.region}" />
		</div>
		
		<div class="form-group">
			<label>SurfaceArea</label> 
			<input class="form-control" name="surfacearea" value="${vo.surfacearea}" />
		</div>
		
		<div class="form-group">
			<label>Indepyear</label> 
			<input class="form-control" name="indepyear" value="${vo.indepyear}" />
		</div>		
		
		<div class="form-group">
			<label>Population</label> 
			<input class="form-control" name="population" value="${vo.population}" />
		</div>		
		
		<div class="form-group">
			<label>LifeExpectancy</label> 
			<input class="form-control" name="lifeexpectancy" value="${vo.lifeexpectancy}" />
		</div>	
		
		<div class="form-group">
			<label>GNP</label> 
			<input class="form-control" name="GNP" value="${vo.GNP}" />
		</div>
		
		<div class="form-group">
			<label>GNPOld</label> 
			<input class="form-control" name="GNPOld" value="${vo.GNPOld}" />
		</div>
		
		<div class="form-group">
			<label>LocalName</label> 
			<input class="form-control" name="localname" value="${vo.localname}" />
		</div>
		
		<div class="form-group">
			<label>GovernmentForm</label> 
			<input class="form-control" name="governmentform" value="${vo.governmentform}" />
		</div>							
		
		<div class="form-group">
			<label>HeadOfState</label> 
			<input class="form-control" name="headofstate" value="${vo.headofstate}" />
		</div>
		
		<div class="form-group">
			<label>Capital</label> 
			<input class="form-control" name="capital" value="${vo.capital}" />
		</div>					
				
		<div class="form-group">
			<label>Code2</label> 
			<input class="form-control" name="code2" value="${vo.code2}" />
		</div>
			
			<button type="submit" class="btn btn-default">Submit Button</button>
			<button type="reset" class="btn btn-primary">Reset Button</button>
		</form>

	</div>

</body>
</html>