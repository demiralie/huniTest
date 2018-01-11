<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Country View</title>

<c:if test="${false}">
	<link rel="stylesheet" href="../../css/bootstrap.css">
	<link rel="stylesheet" href="../../css/animate.css">
</c:if>
</head>
<body>
	<div class="panel-heading">Country View Page</div>
	<div class="panel-body">

		<div class="form-group">
			<label>Code</label> <input class="form-control" name="code" value="${vo.code}" readonly="readonly"/>
		</div>
		
		<div class="form-group">
			<label>Name</label> <input class="form-control" name="name" value="${vo.name}" readonly="readonly"/>
		</div>
		
		<div class="form-group">
			<label>Continent</label> <input class="form-control" name="continent" 	value="${vo.continent}" readonly="readonly"/>
		</div>
		
		<div class="form-group">
			<label>Region</label> <input class="form-control" name="region" value="${vo.region}" readonly="readonly"/>
		</div>
		
		<div class="form-group">
			<label>SurfaceArea</label> <input class="form-control" name="surfacearea" value="${vo.surfacearea}" readonly="readonly"/>
		</div>
		
		<div class="form-group">
			<label>Indepyear</label> <input class="form-control" name="indepyear" value="${vo.indepyear}" readonly="readonly"/>
		</div>		
		
		<div class="form-group">
			<label>Population</label> <input class="form-control" name="population" value="${vo.population}" readonly="readonly"/>
		</div>		
		
		<div class="form-group">
			<label>LifeExpectancy</label> <input class="form-control" name="lifeexpectancy" value="${vo.lifeexpectancy}" readonly="readonly"/>
		</div>	
		
		<div class="form-group">
			<label>GNP</label> <input class="form-control" name="GNP" value="${vo.GNP}" readonly="readonly"/>
		</div>
		
		<div class="form-group">
			<label>GNPOld</label> <input class="form-control" name="GNPOld" value="${vo.GNPOld}" readonly="readonly"/>
		</div>
		
		<div class="form-group">
			<label>LocalName</label> <input class="form-control" name="localname" value="${vo.localname}" readonly="readonly"/>
		</div>
		
		<div class="form-group">
			<label>GovernmentForm</label> <input class="form-control" name="governmentform" value="${vo.governmentform}" readonly="readonly"/>
		</div>					
				
		<div class="form-group">
			<label>HeadOfState</label> <input class="form-control" name="headofstate" value="${vo.headofstate}" readonly="readonly"/>
		</div>
		
		<div class="form-group">
			<label>Capital</label> <input class="form-control" name="capital" value="${vo.capital}" readonly="readonly"/>
		</div>						
			
		<div class="form-group">
			<label>Code2</label> <input class="form-control" name="code2" value="${vo.code2}" readonly="readonly"/>
		</div>

		<div class="pull-right">
			<a href="/country/modify?page=${pageVO.page}&size=${pageVO.size}&type=${pageVO.type}&keyword=${pageVO.keyword}&code=${vo.code}" 
				class="btn btn-default">Modify/Delete</a> 
			             
			<a href="/country/list?page=${pageVO.page}&size=${pageVO.size}&type=${pageVO.type}&keyword=${pageVO.keyword}&code=${vo.code}" 
				class="btn btn-primary">Go List</a> 
		</div>

	</div>

</body>
</html>