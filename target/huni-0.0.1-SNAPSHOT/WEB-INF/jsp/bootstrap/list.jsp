<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>List.jsp</title>

<c:if test="${false}">
	<link rel="stylesheet" href="../../css/bootstrap.css">
	<link rel="stylesheet" href="../../css/animate.css">
</c:if>

</head>
<body>
	<div class="panel-heading">
		<h1 class="animated fadeInRight"  style="color: blue" align="center">BootStrap List Page</h1>
	</div>
	<div class="panel-body pull-right">
		<h3><a href="/bootstrap/register"></a></h3>
	</div>
	<div class="panel-body">
		<table class="table table-bordered">
			<tr>
				<th>bno</th>
				<th>Title</th>
				<th>Writer</th>
			</tr>
			<c:forEach var="bno" begin="100" end="110">
				<tr>
					<td>${bno}</td>
					<td><a href="${bno}">XXXXX ${bno}</a></td>
					<td>user01</td>
				</tr>
			</c:forEach>
		</table>
			<div>
			<select id="typeSelect">
				<option value='t' ${pageVO.type =='t' ? 'selected' : ''}>Title</option>
				<option value='c' ${pageVO.type =='c' ? 'selected' : ''}>Content</option>
				<option value='w' ${pageVO.type =='w' ? 'selected' : ''}>Writer</option>
			</select> 
			<input id="xxx" type="text"  value="${pageVO.keyword}">
				<button id="btnSearch">Search</button>
			</div>
			<nav>
				<ul class="pagination">
				<li><a href="10">Prev 10</a></li>
				<li class="">			<a href="11" >11</a></li>
				<li class="">			<a href="12" >12</a></li>
				<li class="">			<a href="13" >13</a></li>
				<li class="">			<a href="14" >14</a></li>
				<li class="active">	<a href="15" >15</a></li>
				<li class="">			<a href="16" >16</a></li>
				<li class="">			<a href="17" >17</a></li>
				<li class="">			<a href="18" >18</a></li>
				<li class="">			<a href="19" >19</a></li>
				<li class="">			<a href="20" >20</a></li>
				<li>					<a href="21" >Next 21</a></li>
				</ul>
			</nav>
			
			<form id ="f1" action="/bootstrap/list" method="get" >
				<input type="hidden" name="page" value="${pageVO.page}">
				<input type="hidden" name="size" value="${pageVO.size}">
				<input type="hidden" name="type" value="${pageVO.type}">
				<input type="hidden" name="keyword" value="${pageVO.keyword}">
			</form>
			
	</div>
	<script type="text/javascript">
		var formObj = $("#f1");
	
		$(".pagination a").click(function(e) {
			e.preventDefault();
			var page = $(this).attr("href");
			alert("page=" + page);
			
			formObj.find("[name='page']").val(page);
		
			formObj.submit();
		} );
		
		$("#btnSearch").click(function(e) {
			var type = $("#typeSelect").find(":selected").val();
			var keyword = $("#xxx").val();
			
			alert("type=" + type + ", keyword" + keyword);
			
			formObj.find("[name='type']").val(type);
			formObj.find("[name='keyword']").val(keyword);
			
			formObj.submit();
			
		} );
		
	</script>
</body>
</html>