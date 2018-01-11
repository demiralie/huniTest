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
	<div class="panel-heading"></div>
	<div class="panel-body">


			<div class="form-group">
				<label>CODE</label> <input class="form-control" name="code" value="${vo.code}" readonly="readonly"/>
			</div>

			<div class="form-group">
				<label>DESCRIPTION</label> <input class="form-control" name="description" value="${vo.description}" readonly="readonly"/>
			</div>

		<div class="pull-right">
			<a href="/carrier/carriermodify?page=${pageVO.page}&size=${pageVO.size}&type=${pageVO.type}&keyword=${pageVO.keyword}&code=${vo.code}" 
				class="btn btn-default">Modify/Delete</a> 
			             
			<a href="/carrier/carrierlist?page=${pageVO.page}&size=${pageVO.size}&type=${pageVO.type}&keyword=${pageVO.keyword}&code=${vo.code}" 
				class="btn btn-primary">Go List</a> 
		</div>

	</div>

</body>
</html>