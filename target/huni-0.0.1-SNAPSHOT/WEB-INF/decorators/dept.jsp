<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="sitemesh" tagdir="/WEB-INF/tags/sitemesh"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<style>
  table {
    width: 100%;
    border: 3px solid rightblue;
  }
  th, td {
    border: 1px solid blue;
  }
</style>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title><sitemesh:write property="title" /></title>
<link rel="stylesheet" href="/webjars/bootstrap/3.3.7/css/bootstrap.css">
<link rel="stylesheet" href="/webjars/bootstrap/3.3.7/css/bootstrap-theme.css">
<link rel="stylesheet" href="/webjars/animate.css/3.5.2/animate.css">
<link rel="stylesheet" type="text/css" href="style.css" />


<script type="text/javascript" src="/webjars/jquery/1.11.1/jquery.js"></script>
<script type="text/javascript" src="/webjars/bootstrap/3.3.7/js/bootstrap.js"></script>

<script type="text/javascript"	src="/webjars/chartjs/2.6.0/Chart.bundle.js"></script>
<sitemesh:write property="head" />

<c:if test="${false}">
	<link rel="stylesheet" href="../css/animate.css">
	<link rel="stylesheet" href="../css/bootstrap.css">
</c:if>
</head>

<body class="container">
	<header class="page-header" >
	<div> 
	<table class="" >
		<tr>
		<td align="center" width="100" height="30"><a href="/main/list">MAIN</a>
		</td>
		<td align="center" width="100" height="30"><a href="/dept/ldeptist">DEPT</a>
		</td>
		<td align="center" width="100" height="30"><a href="/emp/emplist">EMP</a>
		</td>
		<td align="center" width="100" height="30"><a href="/board/boardlist">BOARD</a>
		</td>
		<td align="center" width="100" height="30"><a href="/city/citylist">CITY</a>
		</td>
		<td align="center" width="100" height="30"><a href="/country/countrylist">COUNTRY</a>
		</td>
		<td align="center" width="100" height="30"><a href="/ontime/ontimelist">ONTIME</a>
		</td>
		<td align="center" width="100" height="30"><a href="/carrier/carrierlist">CARRIER</a>
		</td>
		<td align="center" width="100" height="30"><a href="/airport/airportlist">AIRPORT</a>
		</td>
	</tr>
	</table>
	</div>
 </header>

	<section class="panel panel-default">
		<sitemesh:write property="body" />
	</section>

</body>
</html>