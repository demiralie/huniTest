<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="sitemesh" tagdir="/WEB-INF/tags/sitemesh"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<style>
#root {
	margin: auto;
	width: 90%;
	height: 100%;
	background-color: silver;
}

#top {
	width: 100%;
	height: 60px;
	text-align: center;
	padding: 5px;
}

#menu {
	width: 10%;
	height: 100%;
	float: left;
	text-align: center;
	padding: 5px;
	overflow: auto;
	margin-left: 5%;
}

#con {
	width: 80%;
	height: 100%;
	float: right;
	text-align: center;
	padding: 5px;
	overflow: auto;
	margin-right: 5%
}

#bottom {
	width: 90%; 
	height: 100%;
	clear: both;
	margin: 0px auto;
	text-align: center;
	padding: px;
	
}

#1 {
	border: none;
	border: 5px;
	border: double;
	border: outset;
}

#2 {
	border: none;
	border: 5px double outset;
}
</style>
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

<body>
	<div id="root" align="center">
		<font
			style="font-size: 40px; color: graytext; font-style: italic; font-family: serif;">Huni
			Project</font>
	</div>

	<hr style="width: 90%; border: double; border-color: gray; border: outset;">

	<div id="top" align="center">
		<table class="panel panel-body" align="center" border="1px"
			bordercolor="gray"
			style="border-top-width: 5px; border-top-color: gray; border-bottom-color: gray; width: 90%;">
			<tr>
				<td align="center" width="120" height="30"><a href="/main/list">MAIN</a></td>
				<td align="center" width="120" height="40"><a
					href="/dept/deptlist">DEPT</a></td>
				<td align="center" width="120" height="40"><a
					href="/emp/emplist">EMP</a></td>
				<td align="center" width="120" height="40"><a
					href="/board/boardlist">BOARD</a></td>
				<td align="center" width="120" height="40"><a
					href="/city/citylist">CITY</a></td>
				<td align="center" width="120" height="40"><a
					href="/country/countrylist">COUNTRY</a></td>
				<td align="center" width="120" height="40"><a
					href="/ontime/ontimelist">ONTIME</a></td>
				<td align="center" width="120" height="40"><a
					href="/carrier/carrierlist">CARRIER</a></td>
				<td align="center" width="120" height="40"><a
					href="/airport/airportlist">AIRPORT</a></td>
			</tr>
		</table>
	</div>

	<div id="menu" align="center">
		<table class="panel panel-body" align="center" border="1px"
			bordercolor="gray"
			style="border-top-width: 1px; border-top-color: gray; border-bottom-color: gray;">
			<tr>
				<td align="center" width="100" height="20"
					style="font-size: 17px; font-family: fantasy; color: white; background-color: gray;">PORTFOLIO</td>
			</tr>
			<tr>
				<td align="center" width="100" height="20"><a href="/main/list">
						제 목 </a></td>
			</tr>
			<tr>
				<td align="center" width="100" height="20"><a href=""> 개 요
				</a></td>
			</tr>
			<tr>
				<td align="center" width="100" height="20"><a
					href="/emp/emplist">목차</a></td>
			</tr>
			<tr>
				<td align="center" width="100" height="20"><a
					href="/board/boardlist">프로그램</a></td>
			</tr>
			<tr>
				<td align="center" width="100" height="20"><a
					href="/country/countrylist">다이어그램</a></td>
			</tr>
			<tr>
				<td align="center" width="100" height="20"><a
					href="/city/citylist">포토폴리오</a></td>
			</tr>
			<tr>
				<td align="center" width="100" height="20"><a
					href="/ontime/ontimelist">작성자</a></td>
			</tr>
			<tr>
				<td align="center" width="100" height="10"></td>
			</tr>
			<tr>
				<td align="center" width="100" height="20"
					style="font-size: 17px; font-family: fantasy; color: white; background-color: gray;">
					Cloud & OS</td>
			</tr>
			<tr>
				<td align="center" width="100" height="20"><a
					href="/carrier/carrierlist">VM Ware</a></td>
			</tr>
			<tr>
				<td align="center" width="100" height="20"><a
					href="/airport/airportlist">Linux [Ubuntu]</a></td>
			</tr>
			<tr>
				<td align="center" width="100" height="20"><a
					href="/airport/airportlist">Windows</a></td>
			</tr>
			<tr>
				<td align="center" width="100" height="10"></td>
			</tr>
			<tr>
				<td align="center" width="100" height="20"
					style="font-size: 17px; font-family: fantasy; color: white; background-color: gray;">
					Language</td>
			</tr>
			<tr>
				<td align="center" width="100" height="20"><a
					href="/airport/airportlist">JAVA</a></td>
			</tr>
			<tr>
				<td align="center" width="100" height="20"><a
					href="/airport/airportlist">JSP</a></td>
			</tr>
			<tr>
				<td align="center" width="100" height="20"><a
					href="/airport/airportlist">HTML5</a></td>
			</tr>
			<tr>
				<td align="center" width="100" height="20"><a
					href="/airport/airportlist">CSS3</a></td>
			</tr>
			<tr>
				<td align="center" width="100" height="20"><a
					href="/airport/airportlist">JavaScript</a></td>
			</tr>
			<tr>
				<td align="center" width="100" height="10"></td>
			</tr>
			<tr>
				<td align="center" width="100" height="20"
					style="font-size: 17px; font-family: fantasy; color: white; background-color: gray;">
					DATABASE</a>
				</td>
			</tr>
			<tr>
				<td align="center" width="100" height="20"><a
					href="/airport/airportlist">Oracle</a></td>
			</tr>
			<tr>
				<td align="center" width="100" height="20"><a
					href="/airport/airportlist">MySQL</a></td>
			</tr>
			<tr>
				<td align="center" width="100" height="20"><a
					href="/airport/airportlist">NoSQL</a></td>
			</tr>
			<tr>
				<td align="center" width="100" height="20"><a
					href="/airport/airportlist">MongoDB</a></td>
			</tr>
			<tr>
				<td align="center" width="100" height="10"></td>
			</tr>
			<tr>
				<td align="center" width="100" height="20"
					style="font-size: 17px; font-family: fantasy; color: white; background-color: gray;">
					FrameWork</a>
				</td>
			</tr>
			<tr>
				<td align="center" width="100" height="20"><a
					href="/airport/airportlist">Spring Boot</a></td>
			</tr>
			<tr>
				<td align="center" width="100" height="20"><a
					href="/airport/airportlist">HADOOP</a></td>
			</tr>
			<tr>
				<td align="center" width="100" height="10"></td>
			</tr>
			<tr>
				<td align="center" width="100" height="20"
					style="font-size: 17px; font-family: fantasy; color: white; background-color: gray;">
					형상관리</a>
				</td>
			</tr>
			<tr>
				<td align="center" width="100" height="20"><a
					href="/airport/airportlist">GIT</a></td>
			</tr>
			<tr>
				<td align="center" width="100" height="20"><a
					href="/airport/airportlist">Toad</a></td>
			</tr>
		</table>
	</div>

	<div id="con" align="center">
		<div class="panel panel-body">
			<sitemesh:write property="body" />
		</div>
	</div>


	<div id="bottom" align="center">
		<hr align="center" style="border: double; border-color: gray; border: outset;">
		<div align="center" style="background-color: silver;">
			<font style="font-size: 15px; color: white; font-style: italic; font-family: serif;">
				과 정 : BIGDATA<br> 강 사 : 서현섭 강사님 <br> 강 의 실 : 501호 <br>
				[e-mail] demiralie4@naver.com
			</font>
		</div>

	</div>

</body>
</html>