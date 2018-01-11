<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Dept Page</title>

<c:if test="${false}">
	<link rel="stylesheet" href="../../css/bootstrap.css">
	<link rel="stylesheet" href="../../css/animate.css">
</c:if>


</head>
<body class="container">
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
				<a class="label label-danger " href="/dept/deptregister">Register</a>
			</h4>
		</div>
	<div class="panel-body">
		<c:set var="result" value="${pageMaker.result}" />
		<div>
			<table class="table table-striped table-bordered table-hover" >
				<thead >
					<tr >
						<th style="text-align: center;">DEPTNO</th>
						<th style="text-align: center;">DNAME</th>
						<th style="text-align: center;">LOC</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="dept" items="${result.content}">
						<tr class="odd gradeX">
							<td><a href='${dept.deptno}' class='deptnoLink'>${dept.deptno}</a></td>
							<td><a href='${dept.deptno}' class='deptLink'>${dept.dname}</a></td>
							<td>${dept.loc}</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>

			<div class="panel panel-footer ">
			<div>
				<select id='searchType'>
					<option></option>
					<option value='d' ${pageVO.type =='d' ? 'selected' : ''}>Deptno</option>
					<option value='n' ${pageVO.type =='n' ? 'selected' : ''}>Dname</option>
					<option value='l' ${pageVO.type =='l' ? 'selected' : ''}>Loc</option>
				</select> <input type='text' id='searchKeyword' value="${pageVO.keyword}">
				<button id='searchBtn'>Search</button>
			</div>

		</div>
		

		<nav>

			<div >
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
</div>
	<form id='f1' action="/dept/deptlist" method="get">
		<input type='hidden' name='page' value="${pageMaker.currentPageNum}">
		<input type='hidden' name='size' value="${pageMaker.currentPage.pageSize}"> 
		<input	type='hidden' name='type' value="${pageVO.type}"> 
		<input	type='hidden' name='keyword' value="${pageVO.keyword}">
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
         $(".deptnoLink").click(function(e){
             
             e.preventDefault(); 
             
             var dept = $(this).attr("href");
             
             formObj.attr("action","/dept/deptdetail");
             formObj.append("<input type='hidden' name='deptno' value='" + dept +"'>" );
             
             formObj.submit();
             
          });
         
         $(".deptLink").click(function(e){
            
            e.preventDefault(); 
            
            var dept = $(this).attr("href");
            
            formObj.attr("action","/dept/deptview");
            formObj.append("<input type='hidden' name='deptno' value='" + dept +"'>" );
            
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