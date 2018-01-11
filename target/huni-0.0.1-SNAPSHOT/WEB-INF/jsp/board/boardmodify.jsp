<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html">
<html>
<head>
<meta charset="UTF-8">
<title>modify.jsp</title>

<c:if test="${false}">
	<link rel="stylesheet" href="../../css/bootstrap.css">
	<link rel="stylesheet" href="../../css/animate.css">
</c:if>

</head>
<body>
	<div class="panel-heading">Modify Page</div>
	<div class="panel-body">

    <form id='f1' >

		<div class="form-group">
			<label>BNO</label> 
			<input class="form-control" name="bno" value="${vo.bno}" readonly="readonly" />
		</div>

		<div class="form-group">
			<label>Title</label> 
			<input class="form-control" name="title" value="${vo.title}" />
			<p class="help-block">Title text here.</p>
		</div>

		<div class="form-group">
			<label>Content</label>
			<textarea class="form-control" rows="3" name='content' >${vo.content}</textarea>
		</div>

		<div class="form-group">
			<label>Writer</label> 
			<input class="form-control" name="writer"	value="${vo.writer}" readonly="readonly" />
		</div>
		
		<input type='hidden' name="page" value="${pageVO.page}">
		<input type='hidden' name="size" value="${pageVO.size}">
		<input type='hidden' name="type" value="${pageVO.type}">
		<input type='hidden' name="keyword" value="${pageVO.keyword}">
		
		</form>

		<div class="form-group">
			<label>RegDate</label> 
			<fmt:formatDate var= "regdate" value="${vo.regdate}" pattern="yyyy-MM-dd"/>
			<input class="form-control" name="regDate" value="${regdate}" readonly="readonly" />
		</div>

		<div class="pull-right">
		
		  <a href="#" class="btn btn-warning modbtn">Modify</a>
		
		  <a href="#" class="btn btn-danger delbtn">Delete</a>

			<a href="/board/boardlist?page=${pageVO.page}&size=${pageVO.size}&type=${pageVO.type}&keyword=${pageVO.keyword}&bno=${vo.bno}" class="btn btn-primary">Cancel & Go List</a>
			
			<div class="pull-right">
         
        
      </div> 
		</div>

</div>
	<script type="text/javascript">
		$(document).ready(function() {

			var formObj = $("#f1");

			$(".delbtn").click(function() {

				formObj.attr("action", "boarddelete");
				formObj.attr("method", "post");

				formObj.submit();

			});

			$(".modbtn").click(function() {

				formObj.attr("action", "boardmodify");
				formObj.attr("method", "post");

				formObj.submit();

			});
		});
	</script>

	
</body>
</html>