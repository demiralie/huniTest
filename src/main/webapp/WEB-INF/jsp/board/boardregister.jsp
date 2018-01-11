<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html">
<html>
<head>
<meta charset="UTF-8">
<title>Register.jsp</title>

<c:if test="${false}">
	<link rel="stylesheet" href="../../css/bootstrap.css">
	<link rel="stylesheet" href="../../css/animate.css">
</c:if>

</head>
<body>

	<div class="panel-heading"></div>
	<div class="panel-body">

		<form action="/board/boardregister" method="post">

			<div class="form-group">
				<label>TITLE</label> 
				<input class="form-control" name="title" value="${vo.title}" />
				<p class="help-block">Title text here.</p>
			</div>

			<div class="form-group">
				<label>CONTENT</label>
				<textarea class="form-control" rows="3" name='content'>${vo.content}</textarea>
			</div>

			<div class="form-group">
				<label>WRITER</label>
				<input class="form-control" name="writer" value="${vo.writer}" />
			</div>
			<button type="submit" class="btn btn-default">Submit Button</button>
			<button type="reset" class="btn btn-primary">Reset Button</button>
		</form>

	</div>
</body>
</html>