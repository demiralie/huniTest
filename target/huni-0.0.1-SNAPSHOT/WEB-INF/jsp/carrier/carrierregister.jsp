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

		<form action="/carrier/carrierregister" method="post">

			<div class="form-group">
				<label>CODE</label> 
				<input class="form-control" name="code" value="${vo.code}" readonly="readonly"/>
			</div>

			<div class="form-group">
				<label>DESCRIPTION</label> 
				<input class="form-control" name="description" value="${vo.description}"/>
				<p class="help-block">Name text here.</p>
			</div>

			<button type="submit" class="btn btn-default">Submit Button</button>
			<button type="reset" class="btn btn-primary">Reset Button</button>
		</form>

	</div>

</body>
</html>