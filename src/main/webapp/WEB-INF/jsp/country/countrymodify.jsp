<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Country Modify</title>

<c:if test="${false}">
	<link rel="stylesheet" href="../../css/bootstrap.css">
	<link rel="stylesheet" href="../../css/animate.css">
</c:if>
</head>
<body>
	<div class="panel-heading">Country Modify Page</div>
	<div class="panel-body">

    <form id='f1'>

		<div class="form-group">
			<label>Code</label>
<!-- 			<select class="form-control" name="code" id="codeSelect"> -->
<!-- 				<option>--</option> -->
<%-- 				<option value='${vo.code}' ${vo.code} == '${vo.code}' ? 'selected' : ''>${vo.code}</option> --%>
<!-- 			</select> -->
			<input class="form-control" name="code" value="${vo.code}"/>
		</div>
		
		<div class="form-group">
			<label>Name</label> <input class="form-control" name="name" value="${vo.name}" />
		</div>
		
		<div class="form-group">
			<label>Continent</label> <input class="form-control" name="continent" 	value="${vo.continent}" />
		</div>
		
		<div class="form-group">
			<label>Region</label> <input class="form-control" name="region" value="${vo.region}" />
		</div>
		
		<div class="form-group">
			<label>SurfaceArea</label> <input class="form-control" name="surfacearea" value="${vo.surfacearea}" />
		</div>
		
		<div class="form-group">
			<label>Indepyear</label> <input class="form-control" name="indepyear" value="${vo.indepyear}" />
		</div>		
		
		<div class="form-group">
			<label>Population</label> <input class="form-control" name="population" value="${vo.population}" />
		</div>		
		
		<div class="form-group">
			<label>LifeExpectancy</label> <input class="form-control" name="lifeexpectancy" value="${vo.lifeexpectancy}" />
		</div>	
		
		<div class="form-group">
			<label>GNP</label> <input class="form-control" name="GNP" value="${vo.GNP}" />
		</div>
		
		<div class="form-group">
			<label>GNPOld</label> <input class="form-control" name="GNPOld" value="${vo.GNPOld}" />
		</div>
		
		<div class="form-group">
			<label>LocalName</label> <input class="form-control" name="localname" value="${vo.localname}" />
		</div>
		
		<div class="form-group">
			<label>GovernmentForm</label> <input class="form-control" name="governmentform" value="${vo.governmentform}" />
		</div>			
						
		<div class="form-group">
			<label>HeadOfState</label> <input class="form-control" name="headofstate" value="${vo.headofstate}" />
		</div>
		
		<div class="form-group">
			<label>Capital</label> <input class="form-control" name="capital" value="${vo.capital}" />
		</div>					
				
		<div class="form-group">
			<label>Code2</label> <input class="form-control" name="code2" value="${vo.code2}" />
		</div>
		
		<input type='hidden' name="page" value="${pageVO.page}">
		<input type='hidden' name="size" value="${pageVO.size}">
		<input type='hidden' name="type" value="${pageVO.type}">
		<input type='hidden' name="keyword" value="${pageVO.keyword}">
		
	</form>

		<div class="pull-right">
		
		  <a href="#" class="btn btn-warning modbtn">Modify</a>
		
		  <a href="#" class="btn btn-danger delbtn">Delete</a>

		  <a href="/country/list?page=${pageVO.page}&size=${pageVO.size}&type=${pageVO.type}&keyword=${pageVO.keyword}&code=${vo.code}"
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