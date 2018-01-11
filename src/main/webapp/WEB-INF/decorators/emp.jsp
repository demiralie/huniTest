<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="sitemesh" tagdir="/WEB-INF/tags/sitemesh"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<style>
#div_root {
	margin: auto;
}

#div_top {
	width: 100%;
	height: 100px;
	text-align: center;
}

#div_menu {
	width: 10%;
	height: auto;
	float: left;
	text-align: left;
}

#div_con {
	width: 90%;
	height: auto;
	float: left;
	text-align: center;
}

#div_bottom {
	width: 100%;
	height: 100px;
	clear: both;
	text-align: center;
}

.P1 {
	font-size: 50px;
	color: black;
}

.P2 {
	font-size: 80px;
	color: red;
}
</style>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<link rel="stylesheet" href="/webjars/bootstrap/3.3.7/css/bootstrap.css">
<link rel="stylesheet"
	href="/webjars/bootstrap/3.3.7/css/bootstrap-theme.css">
<link rel="stylesheet" href="/webjars/animate.css/3.5.2/animate.css">
<link rel="stylesheet" type="text/css" href="style.css" />

<script type="text/javascript" src="/webjars/jquery/1.11.1/jquery.js"></script>
<script type="text/javascript"
	src="/webjars/bootstrap/3.3.7/js/bootstrap.js"></script>

<script type="text/javascript"
	src="/webjars/chartjs/2.6.0/Chart.bundle.js"></script>
<sitemesh:write property="head" />

<c:if test="${false}">
	<link rel="stylesheet" href="../css/animate.css">
	<link rel="stylesheet" href="../css/bootstrap.css">
</c:if>

<title><sitemesh:write property="title" /></title>

</head>

<body class="container">
	<div id="div_root" class="" >
		<div id="div_top" style="border: 0">
			<header class="page-header">
				<table class="" align="center" border="1" style="border-color:blue; " >
					<tr>
						<td align="center" width="100" height="30"><a
							href="/main/list">MAIN</a></td>
						<td align="center" width="100" height="30"><a
							href="/dept/deptlist">DEPT</a></td>
						<td align="center" width="100" height="30"><a
							href="/emp/emplist">EMP</a></td>
						<td align="center" width="100" height="30"><a
							href="/board/boardlist">BOARD</a></td>
						<td align="center" width="100" height="30"><a
							href="/city/citylist">CITY</a></td>
						<td align="center" width="100" height="30"><a
							href="/country/countrylist">COUNTRY</a></td>
						<td align="center" width="100" height="30"><a
							href="/ontime/ontimelist">ONTIME</a></td>
						<td align="center" width="100" height="30"><a
							href="/carrier/carrierlist">CARRIER</a></td>
						<td align="center" width="100" height="30"><a
							href="/airport/airportlist">AIRPORT</a></td>
					</tr>
				</table>
		</div>
		</header>
	</div>

	<section class="panel panel-default">
		<div id="div_menu">
			<table class="" align="center" >
				<tr>
					<td align="center" width="100" height="30"><a	href="/main/list">MAIN</a></td>
				</tr>
				<tr>
					<td align="center" width="100" height="30"><a	href="/dept/deptlist">DEPT</a></td>
						</tr>
				<tr>
					<td align="center" width="100" height="30"><a	href="/emp/emplist">EMP</a></td>
						</tr>
				<tr>
					<td align="center" width="100" height="30"><a
						href="/board/boardlist">BOARD</a></td>
						</tr>
				<tr>
					<td align="center" width="100" height="30"><a
						href="/city/citylist">CITY</a></td>
						</tr>
				<tr>
					<td align="center" width="100" height="30"><a
						href="/country/countrylist">COUNTRY</a></td>
						</tr>
				<tr>
					<td align="center" width="100" height="30"><a
						href="/ontime/ontimelist">ONTIME</a></td>
						</tr>
				<tr>
					<td align="center" width="100" height="30"><a
						href="/carrier/carrierlist">CARRIER</a></td>
						</tr>
				<tr>
					<td align="center" width="100" height="30"><a
						href="/airport/airportlist">AIRPORT</a></td>
						</tr>
				<tr>
				</tr>
			</table>
		</div>
		
		<div id="div_con">
			<div class="panel panel-body ">
				<sitemesh:write property="body" />
			</div>
		</div>
		
		<div id="div_bottom">
			과      정 : BIGDATA<br> 강      사 : 서현섭 강사님 <br> 강 의 실 : 501호 <br>
			[e-mail] demiralie4@naver.com
			</p>
		</div>
	</section>

</body>
</html>