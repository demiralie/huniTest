<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<style>
table.txc-table {
	width: 100%;
	table-layout: fixed;
}

table thead tr {
	width: 100%;
}
</style>
<html>
<head>
<meta charset="UTF-8">
<title>Ontime Page</title>

<c:if test="${false}">
	<link rel="stylesheet" href="../../css/bootstrap.css">
	<link rel="stylesheet" href="../../css/animate.css">
</c:if>


</head>
<body>
	<div class="panel-heading"></div>

	<div class="panel-body pull-left">
		<h4>
			<a class="label label-info " href="">HOME</a>
		</h4>
	</div>
	<div class="panel-body pull-left">
		<h4>
			<a class="label label-info " href="">END</a>
		</h4>
	</div>
	<div class="panel-body pull-right">
		<h4>
			<a class="label label-danger " href="/ontime/ontimeregister">Register</a>
		</h4>
	</div>

	<div class="panel-body">
		<c:set var="result" value="${pageMaker.result}" />
		<table class="table table-striped table-bordered table-hover"
				id="dataTables-example">
				<thead>
					<tr>
						<th style="text-align: center;">NUMBER</th>
						<th style="text-align: center;">YEAR</th>
						<th style="text-align: center;">MONTH</th>
						<th style="text-align: center;">DAY</th>
						<th style="text-align: center;">DEPTIME</th>
						<th style="text-align: center;">ARRTIME</th>
						<th style="text-align: center;">UNIQUECARRIER</th>
						<th style="text-align: center;">FLIGHTNUM</th>
						<th style="text-align: center;">TAILNUM</th>
						<th style="text-align: center;">AIRTIME</th>
						<th style="text-align: center;">ORIGIN</th>
						<th style="text-align: center;">DEST</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="ontime" items="${result.content}">
						<tr class="odd gradeX">
							<td><a href='${ontime.num}' class='ontimeLink'>${ontime.num}</a></td>
							<td>${ontime.year}</td>
							<td>${ontime.month}</td>
							<td>${ontime.dayofmonth}</td>
							<td>${ontime.deptime}</td>
							<td>${ontime.arrtime}</td>
							<td><a
								href="../carrier/carrierlist?page=1&size=10&type=c&keyword=${ontime.uniquecarrier}">${ontime.uniquecarrier}</a></td>
							<td>${ontime.flightnum}</td>
							<td>${ontime.tailnum}</td>
							<td>${ontime.airtime}</td>
							<td><a
								href="../airport/airportlist?page=1&size=10&type=i&keyword=${ontime.origin}">${ontime.origin}</a></td>
							<td>${ontime.dest}</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
	
	<div class="panel panel-footer">
		<div class="panel-body">
			<select id='searchType'>
				<option>--</option>
				<option value='n' ${pageVO.type =='n' ? 'selected' : ''}>Num</option>
				<option value='y' ${pageVO.type =='y' ? 'selected' : ''}>Year</option>
				<option value='m' ${pageVO.type =='m' ? 'selected' : ''}>Month</option>
				<option value='d' ${pageVO.type =='d' ? 'selected' : ''}>DayOfMonth</option>
				<option value='u' ${pageVO.type =='u' ? 'selected' : ''}>UniqueCarrier</option>
				<option value='o' ${pageVO.type =='o' ? 'selected' : ''}>Origin</option>
			</select> <input type='text' id='searchKeyword' value="${pageVO.keyword}">
			<button id='searchBtn'>Search</button>
		</div>
	<nav>
		<div class="panel-body ">
			<ul class="pagination">
				<c:if test="${pageMaker.prevPage != null}">
					<li class="page-item"><a
						href="${pageMaker.prevPage.pageNumber + 1}"> PREV
							${pageMaker.prevPage.pageNumber + 1} </a></li>
				</c:if>

				<c:forEach var="p" items="${pageMaker.pageList}">
					<li
						class="page-item${p.pageNumber == pageMaker.currentPageNum -1 ? 'active' : ''}">
						<a href="${p.pageNumber +1}">${p.pageNumber +1}</a>
					</li>
				</c:forEach>

				<c:if test="${pageMaker.nextPage != null}">
					<li class="page-item"><a
						href="${pageMaker.nextPage.pageNumber + 1}"> NEXT
							${pageMaker.nextPage.pageNumber + 1} </a></li>
				</c:if>
			</ul>
		</div>
	</nav>
</div>
	

	<form id='f1' action="/ontime/ontimelist" method="get">
		<input type='hidden' name='page' value="${pageMaker.currentPageNum}">
		<input type='hidden' name='size'
			value="${pageMaker.currentPage.pageSize}"> <input
			type='hidden' name='type' value="${pageVO.type}"> <input
			type='hidden' name='keyword' value="${pageVO.keyword}">
	</form>

	<script type="text/javascript">
	
		$(window).load(function(){
			
			var msg = "${msg}";
			
			if(msg =='success') {
				alert("정상적으로 처리되었습니다.");
				var stateObj = { msg: "" };
			}

		});
	
		$(document).ready(function() {
			var formObj = $("#f1");

			$(".pagination a").click(function(e) {

				e.preventDefault();

				formObj.find('[name="page"]').val($(this).attr('href'));

				formObj.submit();
			});
			
			
			$(".ontimeLink").click(function(e){
				
				e.preventDefault(); 
				
				var ontime = $(this).attr("href");
				
				formObj.attr("action","/ontime/ontimeview");
				formObj.append("<input type='hidden' name='num' value='" + ontime +"'>" );
				
				formObj.submit();
				
			});
			
			
			$("#searchBtn").click(function(e){
				
				var typeStr = $("#searchType").find(":selected").val();
				var keywordStr = $("#searchKeyword").val();
				
				console.log(typeStr, "" , keywordStr);
				
				formObj.find("[name='type']").val(typeStr);
				formObj.find("[name='keyword']").val(keywordStr);
				formObj.find("[name='page']").val("1");
				formObj.submit();
			});

		});
	</script>
</body>
</html>