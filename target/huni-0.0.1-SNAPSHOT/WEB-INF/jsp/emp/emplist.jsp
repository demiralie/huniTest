<%@ page language="java" contentType="text/html; charset=UTF-8"
 	pageEncoding="UTF-8"%> 
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
 <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%> 

<!-- <!DOCTYPE html"> -->
<html>
<head>
<meta charset="UTF-8">
<title>EMP LIST</title>
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
				<a class="label label-danger " href="/emp/empregister">Register</a>
			</h4>
</div>

	<div class="panel-body">
		<c:set var="result" value="${pageMaker.result}" />
		<div>
			<table class="table table-striped table-bordered table-hover"
				id="dataTables-example" align="center">
				<thead>
					<tr align="center">
						<th style="text-align: center;">EMPNO</th>
						<th style="text-align: center;">ENAME</th>
						<th style="text-align: center;">GENDER</th>
						<th style="text-align: center;">JOB</th>
						<th style="text-align: center;">MRG</th>
						<th style="text-align: center;">HIREDATE</th>
						<th style="text-align: center;">SAL</th>
						<th style="text-align: center;">COMM</th>
						<th style="text-align: center;">DEPT</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="emp" items="${result.content}">
						<tr class="odd gradeX">
							<td>${emp.empno}</td>
							<td><a href="${emp.empno}" class="empLink"> ${emp.ename}</a></td>
							<td><c:choose>
									<c:when test="${emp.gender == 'M'}">남자</c:when>
									<c:when test="${emp.gender == 'F'}">여자</c:when>
								</c:choose></td>
							<td>${emp.job}</td>
							<td>${emp.mgr.ename != null ? emp.mgr.ename : '없음'}</td>
							<td>${emp.hiredate}</td>
							<td>${emp.sal}</td>
							<td>${emp.comm != null ? emp.comm : " "}</td>
							<td><a href="http://localhost:8080/dept/deptlist?page=1&size=10&type=d&keyword=${emp.dept.deptno}">${emp.dept.deptno} : ${emp.dept.dname} : ${emp.dept.loc}</a></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</div>
	<nav>

		<div class="panel panel-footer">
			<div>
				<select id='searchType'>
					<option>--</option>
					<option value='e' ${pageVO.type =='e' ? 'selected' : ''}>Ename</option>
					<option value='d' ${pageVO.type =='d' ? 'selected' : ''}>Deptno</option>
					<option value='dn' ${pageVO.type =='dn' ? 'selected' : ''}>Dname</option>
					<option value='l' ${pageVO.type =='dl' ? 'selected' : ''}>Loc</option>
				</select>
			  <input type='text' id='searchKeyword' value="${pageVO.keyword}">
			  <button id='searchBtn'>Search</button> 
			</div>
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

	<form id='f1' action="/emp/emplist" method="get">
		<input type='hidden' name='page' value="${pageMaker.currentPageNum}">
		<input type='hidden' name='size' value="${pageMaker.currentPage.pageSize}"> 
		<input type='hidden' name='type' value="${pageVO.type}"> 
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
         
         $(".empLink").click(function(e){
            
            e.preventDefault(); 
            
            var emp = $(this).attr("href");
            
            formObj.attr("action","/emp/empview");
            formObj.append("<input type='hidden' name='empno' value='" + emp +"'>" );
            
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