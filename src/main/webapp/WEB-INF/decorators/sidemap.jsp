<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="sitemesh" tagdir="/WEB-INF/tags/sitemesh"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<style>
#root {
	margin: auto;
	width: 100%;
	height: 100%;
}
#top {
	width: 100%;
	height: 50px;
	text-align: center;
	float: center;
}
#menu {
	width: 15%;
	height: 100%;
	float: left;
	text-align: center;
	border-bottom-color: black;
	border: 5px;
}
#con {
	width: 85%;
	height: 100%;
	float: left;
	text-align: center;
}
#bottom {
	width: 100%;
	height: 100px;
	clear: both;
	margin: 0px auto;
	text-align: center;
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
	<div id="root"></div>
	
	<div id="top">
		<div style="border: 1 solid gold;">1</div>
		<div>1</div>
	</div>
	
	<div id="menu">1</div>
	<div id="con">
		<div class="panel panel-body">
			<sitemesh:write property="body" />
		</div>
	</div>
	<div id="bottom">1</div>


</body>
</html>