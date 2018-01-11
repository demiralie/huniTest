<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">


<title> <sitemesh:write property="title"/></title> 
<sitemesh:write property="head"/>
</head>
<body>
<h1>Decorator default - jsp START</h1>
<hr>

<!-- 합쳐지는 코딩 : sitemesh:write -->
<sitemesh:write property="body"/>
<hr>
<h1>Decorator default - jsp END</h1>
</body>
</html>